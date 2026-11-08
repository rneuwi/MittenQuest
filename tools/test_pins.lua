--[[
    Offline check of the quest map pins (QuestPins.lua): badges for quests that start from an
    object or a dropped item, and dotted walking routes for givers that patrol, with a
    stubbed game API:
        luajit tools/test_pins.lua .
    Exit code 1 on any failure.
]]
local root = arg[1] or "."
local stub = { __index = function() return function() end end }
_G.C_AddOns = setmetatable({ GetAddOnMetadata = function() return "test" end }, stub)
_G.C_QuestLog = setmetatable({
    IsQuestFlaggedCompleted = function() return false end,
    GetLogIndexForQuestID = function() return nil end,
}, stub)
_G.C_Map = setmetatable({ GetBestMapForUnit = function() return 1 end }, stub)
_G.C_TaxiMap, _G.C_Item = setmetatable({}, stub), setmetatable({}, stub)
function UnitClass() return "Warrior", "WARRIOR" end
function UnitRace() return "Orc", "ORC" end
function UnitFactionGroup() return "Horde" end
function UnitLevel() return 20 end

-- Widgets: just enough to record what the pins set on themselves.
local function Widget()
    local w = { shown = true }
    return setmetatable(w, { __index = function(_, k)
        if k == "CreateTexture" or k == "CreateFontString" then
            return function() return Widget() end
        elseif k == "SetTexture" then
            return function(self, t) self.texture = t end
        elseif k == "SetShown" then
            return function(self, v) self.shown = v and true or false end
        elseif k == "Hide" then
            return function(self) self.shown = false end
        elseif k == "Show" then
            return function(self) self.shown = true end
        elseif k == "SetVertexColor" then
            return function(self, r, g, b) self.color = { r, g, b } end
        elseif k:match("^%u") then
            return function() end -- any other widget method
        end
        return nil -- plain fields (pin.label on minimap pins) stay unset
    end })
end
function CreateFrame() return Widget() end
_G.UIParent = Widget()
_G.GameTooltip = setmetatable({}, stub)

local world, mini = {}, {}
local hbdPins = setmetatable({
    AddWorldMapIconMap = function(_, _, icon, map, x, y) world[#world + 1] = { icon = icon, map = map, x = x, y = y } end,
    AddMinimapIconMap = function(_, _, icon, map, x, y) mini[#mini + 1] = { icon = icon, map = map, x = x, y = y } end,
    RemoveAllWorldMapIcons = function() world = {} end,
    RemoveAllMinimapIcons = function() mini = {} end,
}, stub)
local addon = setmetatable({}, stub)
_G.LibStub = setmetatable({}, { __call = function(_, name)
    if name == "HereBeDragons-Pins-2.0" then return hbdPins end
    return setmetatable({ NewAddon = function() return addon end }, stub)
end })

local ns = {}
local function load(path) assert(loadfile(root .. "/" .. path))("MittenQuest", ns) end
load("Core.lua"); load("Parser.lua"); load("Steps.lua")
local FG = ns.FG
ns.PlayerLevel = function() return 20 end
FG.db = { global = { notOffered = {}, learnedQuests = {}, learnedTurnins = {} }, char = {} }
FG.db.profile = { pins = { enabled = true, worldMap = true, minimap = true, showUnavailable = true,
                           showLowLevel = false, lowLevelGap = 8, paths = true } }
FG.guideOrder = {}
FG.GetActiveGuide = function() return nil end

ns.QuestDB = {
    [1] = { name = "Plain", level = 20, map = 1, x = 10, y = 10, giver = "Bob" },
    [2] = { name = "Claw", level = 20, map = 1, x = 20, y = 20, giver = "Drop: Claw",
            start = "drop", item = "Claw", from = { "Wolf" } },
    [3] = { name = "Poster", level = 20, map = 1, x = 30, y = 30, giver = "Wanted Poster", start = "object" },
    [4] = { name = "Walker", level = 20, map = 1, x = 40, y = 40, giver = "Guard", path = 99 },
    [5] = { name = "Walker 2", level = 20, map = 1, x = 40, y = 40, giver = "Guard", path = 99 },
}
ns.QuestPaths = { [99] = { map = 1, { 40, 40, 43, 44 } } } -- 5 map units long

load("QuestPins.lua")
local Pins = ns.QuestPins

local failed = 0
local function check(name, ok, detail)
    print((ok and "ok   " or "FAIL ") .. name .. (ok and "" or ("  -> " .. tostring(detail))))
    if not ok then failed = failed + 1 end
end

local function Split(list)
    local pins, dots = {}, {}
    for _, p in ipairs(list) do
        if p.icon.data then pins[p.icon.data.id] = p.icon else dots[#dots + 1] = p end
    end
    return pins, dots
end

Pins:Refresh()
local pins, dots = Split(world)
check("all five quests pinned", pins[1] and pins[2] and pins[3] and pins[4] and pins[5])
check("plain NPC quest: no badge", pins[1].badge.shown == false)
check("drop quest: bag badge", pins[2].badge.shown and pins[2].badge.texture:find("Bag"), pins[2].badge.texture)
check("object quest: note badge", pins[3].badge.shown and pins[3].badge.texture:find("Note"), pins[3].badge.texture)
-- 5 units at 0.6 spacing: dots at 0, 0.6, ... 4.8 = 9; shared giver drawn once.
check("route drawn once as dots", #dots == 9, #dots)
check("dots follow the route", dots[1] and math.abs(dots[1].x - 0.40) < 1e-6 and math.abs(dots[#dots].y - (0.40 + 0.04 * 4.8 / 5)) < 1e-6,
      dots[#dots] and (dots[#dots].x .. "," .. dots[#dots].y))
local _, miniDots = Split(mini)
check("route on the minimap too", #miniDots == 9, #miniDots)

FG.db.profile.pins.paths = false
Pins:Refresh()
_, dots = Split(world)
check("routes off: no dots", #dots == 0, #dots)
check("routes off: pins still shown", Split(world)[4] ~= nil)

FG.db.profile.pins.paths = true
ns.QuestPaths[99].map = 2
Pins:Refresh()
_, dots = Split(world)
check("route on another map than the pin: not drawn", #dots == 0, #dots)

-- A courier's long road: capped at 150 dots, spread over the whole route.
ns.QuestPaths[99] = { map = 1, { 0, 50, 100, 50 } }
Pins:Refresh()
_, dots = Split(world)
check("long route capped at 150 dots", #dots == 150, #dots)
check("long route still reaches the far end", dots[#dots] and dots[#dots].x > 0.98, dots[#dots] and dots[#dots].x)

if failed > 0 then
    print(failed .. " pin check(s) failed")
    os.exit(1)
end
print("all pin checks passed")
