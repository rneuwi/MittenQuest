-- Guide selection test: loads the real Core/Parser/Steps and every guide in the .toc with
-- stubbed WoW API, then checks which guide each kind of character gets.
-- Usage: lua5.1 tools/test_selection.lua [addon dir]   (exits 1 on any failure)
local root = arg[1] or "."
local PLAYER = {}
local stub = { __index = function() return function() end end }
_G.C_AddOns = setmetatable({ GetAddOnMetadata = function() return "test" end }, stub)
_G.C_QuestLog = setmetatable({
    IsQuestFlaggedCompleted = function() return false end,
    GetLogIndexForQuestID = function() return nil end,
}, stub)
_G.C_Map, _G.C_TaxiMap, _G.C_Item = setmetatable({}, stub), setmetatable({}, stub), setmetatable({}, stub)
function UnitRace() return PLAYER.raceFile, PLAYER.raceFile end
function UnitFactionGroup() return PLAYER.faction end
function UnitLevel() return PLAYER.level end
function UnitClass() return "Warrior", "WARRIOR" end
local addon = setmetatable({}, stub)
_G.LibStub = setmetatable({}, { __call = function()
    return { NewAddon = function() return addon end }
end })

local ns = {}
local function load(path)
    local f = assert(loadfile(root .. "/" .. path))
    f("MittenQuest", ns)
end
load("Core.lua"); load("Parser.lua"); load("Steps.lua")
local FG = ns.FG
_G.MittenQuest = FG
for line in io.lines(root .. "/MittenQuest.toc") do
    local g = line:match("^(Guides.-%.lua)")
    if g then load((g:gsub("%\\", "/"))) end
end

local failures = 0
local function check(label, ok, detail)
    print(("%s  %s%s"):format(ok and "ok  " or "FAIL", label, detail and ("  -> " .. detail) or ""))
    if not ok then failures = failures + 1 end
end

-- {label, faction, race file name, level, pattern the chosen guide's title must match}
local cases = {
    { "Orc level 1",       "Horde",    "ORC",           1,  "%(Orc/Troll%)" },
    { "Undead level 1",    "Horde",    "SCOURGE",       1,  "%(Undead%)" },
    { "Tauren level 1",    "Horde",    "TAUREN",        1,  "%(Tauren%)" },
    { "Human level 1",     "Alliance", "HUMAN",         1,  "%(Human%)" },
    { "Gnome level 1",     "Alliance", "GNOME",         1,  "%(Dwarf/Gnome%)" },
    { "Night Elf level 1", "Alliance", "NIGHTELF",      1,  "%(Night Elf%)" },
    -- Skyborne: the guessed file name and an unknown one both reach the Zephras Isle starter.
    { "Skyborne H, guessed name", "Horde",    "SKYBORNE",      1, "Zephras Isle.*%(Skyborne%)" },
    { "Skyborne H, other name",   "Horde",    "SKYBORNEHORDE", 1, "Zephras Isle.*%(Skyborne%)" },
    { "Skyborne A, other name",   "Alliance", "ZEPHRAN",       1, "Zephras Isle.*%(Skyborne%)" },
    { "Skyborne A level 25",      "Alliance", "ZEPHRAN",      25, "^Alliance 2%d%-" },
    { "Orc level 30",             "Horde",    "ORC",          30, "^Horde %d+%-%d+" },
}
for _, c in ipairs(cases) do
    PLAYER.faction, PLAYER.raceFile, PLAYER.level = c[2], c[3], c[4]
    local best = FG:BestGuideForPlayer()
    check(c[1], best ~= nil and best:match(c[5]) ~= nil, tostring(best))
end

-- Race-limited steps: Skyborne-only steps reach a Skyborne whatever its file name, not others.
PLAYER.faction, PLAYER.level = "Horde", 2
PLAYER.raceFile = "SKYBORNEHORDE"
check("race=Skyborne step, Skyborne (other name)", ns.Steps:Applies({ race = { SKYBORNE = true } }))
PLAYER.raceFile = "ORC"
check("race=Skyborne step, Orc", not ns.Steps:Applies({ race = { SKYBORNE = true } }))
check("race=Orc step, Orc", ns.Steps:Applies({ race = { ORC = true } }))

if failures > 0 then
    print(failures .. " failure(s)")
    os.exit(1)
end
print("all guide selection checks passed")
