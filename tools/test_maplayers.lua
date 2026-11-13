--[[
    Offline check of the world map extras (MapLayers.lua): flight point icons only for the
    player's faction (neutral flight masters for both), and the zone level label, with a
    stubbed game API and the real Data/FlightPoints.lua and Data/ZoneLevels.lua:
        luajit tools/test_maplayers.lua .
    Exit code 1 on any failure.
]]
local root = arg[1] or "."
local stub = { __index = function() return function() end end }
_G.C_AddOns = setmetatable({ GetAddOnMetadata = function() return "test" end }, stub)
_G.C_QuestLog = setmetatable({}, stub)
_G.C_TaxiMap, _G.C_Item = setmetatable({}, stub), setmetatable({}, stub)
local MAP_NAMES = { [1424] = "Hillsbrad Foothills", [1415] = "Eastern Kingdoms", [2548] = "Riverglades" }
local atCursor = nil   -- the zone C_Map.GetMapInfoAtPosition returns on a continent map
_G.C_Map = setmetatable({
    GetBestMapForUnit = function() return 1424 end,
    GetMapInfo = function(id) return MAP_NAMES[id] and { mapID = id, name = MAP_NAMES[id] } end,
    GetMapInfoAtPosition = function() return atCursor and { mapID = atCursor } end,
}, stub)
local faction = "Horde"
function UnitFactionGroup() return faction end
function UnitClass() return "Warrior", "WARRIOR" end
function UnitRace() return "Orc", "ORC" end
function UnitLevel() return 20 end
-- Quest difficulty colours by level gap, enough to tell red, yellow and grey apart.
function GetQuestDifficultyColor(level)
    local gap = level - 20
    if gap >= 5 then return { r = 1, g = 0.1, b = 0.1 } end
    if gap >= -2 then return { r = 1, g = 1, b = 0 } end
    return { r = 0.5, g = 0.5, b = 0.5 }
end

local function Widget()
    return setmetatable({}, { __index = function(_, k)
        if k == "CreateTexture" or k == "CreateFontString" then
            return function() return Widget() end
        elseif k:match("^%u") then
            return function() end
        end
        return nil
    end })
end
function CreateFrame() return Widget() end
_G.UIParent = Widget()
_G.GameTooltip = setmetatable({}, stub)

local world = {}
local hbdPins = setmetatable({
    AddWorldMapIconMap = function(_, _, icon, map, x, y, flag)
        world[#world + 1] = { icon = icon, map = map, x = x, y = y, flag = flag }
    end,
    RemoveAllWorldMapIcons = function() world = {} end,
}, stub)
local addon = setmetatable({}, stub)
_G.LibStub = setmetatable({}, { __call = function(_, name)
    if name == "HereBeDragons-Pins-2.0" then return hbdPins end
    return setmetatable({ NewAddon = function() return addon end }, stub)
end })

local ns = {}
local function load(path) assert(loadfile(root .. "/" .. path))("MittenQuest", ns) end
load("Core.lua")
local FG = ns.FG
ns.PlayerLevel = function() return 20 end
FG.db = { profile = { pins = { flightPoints = true, zoneLevels = true } } }
local printed = {}
FG.Print = function(_, msg) printed[#printed + 1] = msg end
load("Data/FlightPoints.lua")
load("Data/ZoneLevels.lua")
load("MapLayers.lua")
local Layers = ns.MapLayers

local failed = 0
local function check(name, ok, detail)
    print((ok and "ok   " or "FAIL ") .. name .. (ok and "" or ("  -> " .. tostring(detail))))
    if not ok then failed = failed + 1 end
end

local function Shown()
    local names = {}
    for _, p in ipairs(world) do names[p.icon.fm[1]] = p end
    return names
end

Layers:RefreshFlightPoints()
local horde = Shown()
check("Horde: one icon per Horde flight master", #world == #ns.FlightMasters.Horde, #world)
check("Horde: Orgrimmar's wind rider master", horde["Doras"] ~= nil)
check("Horde: Riverglades' Grakna", horde["Grakna"] ~= nil)
check("Horde: no Alliance gryphon masters", horde["Gretchen Mayberry"] == nil and horde["Dungar Longdrink"] == nil)
check("Horde: neutral Mount Hyjal flight master", horde["Bluebell"] ~= nil)
check("icons on zone and continent maps", horde["Grakna"] and horde["Grakna"].flag == 2, horde["Grakna"] and horde["Grakna"].flag)
check("coordinates scaled to 0-1", horde["Grakna"] and horde["Grakna"].x > 0 and horde["Grakna"].x < 1)

faction = "Alliance"
Layers:RefreshFlightPoints()
local alliance = Shown()
check("Alliance: one icon per Alliance flight master", #world == #ns.FlightMasters.Alliance, #world)
check("Alliance: Stormwind's gryphon master", alliance["Dungar Longdrink"] ~= nil)
check("Alliance: Riverglades' Gretchen Mayberry", alliance["Gretchen Mayberry"] ~= nil)
check("Alliance: no Horde wind rider masters", alliance["Grakna"] == nil and alliance["Doras"] == nil)
check("Alliance: neutral Mount Hyjal flight master", alliance["Bluebell"] ~= nil)

faction = nil
Layers:RefreshFlightPoints()
check("no faction yet: no icons", #world == 0, #world)

faction = "Horde"
FG.db.profile.pins.flightPoints = false
Layers:RefreshFlightPoints()
check("flight points off: no icons", #world == 0, #world)
check("no errors printed", #printed == 0, printed[1])

local text, r, g = Layers:ZoneText(1424)
check("zone map: name and range", text == "Hillsbrad Foothills  20-30", text)
check("zone map at your level: yellow", r == 1 and g == 1, ("%s,%s"):format(tostring(r), tostring(g)))
text, r, g = Layers:ZoneText(2548)
check("Forever zone above you: red", text == "Riverglades  38-44" and r == 1 and g < 0.5, text)

atCursor = 1424
text = Layers:ZoneText(1415, 0.4, 0.3)
check("continent map: zone under the cursor", text == "Hillsbrad Foothills  20-30", text)
atCursor = nil
check("continent map, no zone under the cursor: nothing", Layers:ZoneText(1415, 0.4, 0.3) == nil)
check("continent map, cursor off the map: nothing", Layers:ZoneText(1415) == nil)
check("capital with no range: nothing", Layers:ZoneText(1454) == nil)

if failed > 0 then
    print(failed .. " map layer check(s) failed")
    os.exit(1)
end
print("all map layer checks passed")
