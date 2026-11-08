--[[
    Offline check of the arrow's nearest-step pick (Navigation.lua) with a stubbed game API:
        luajit tools/test_navigation.lua .
    Exit code 1 on the first failed check.
]]
local root = arg[1] or "."
local inlog, complete, turned, player = {}, {}, {}, { x = 50, y = 50 }
local now = 0
GetTime = function() return now end
UnitPosition = function() return 0, 0, 0, 0 end
IsIndoors = function() return false end
C_QuestLog = {
    GetLogIndexForQuestID = function(q) return inlog[q] and 1 or nil end,
    IsComplete = function(q) return complete[q] or false end,
    IsQuestFlaggedCompleted = function(q) return turned[q] or false end,
}
C_Map = {
    HasUserWaypoint = function() return false end, ClearUserWaypoint = function() end,
    GetPlayerMapPosition = function() return nil end, GetBestMapForUnit = function() return 1 end,
    CanSetUserWaypointOnMap = function() return false end,
}
LibStub = function() return {
    GetPlayerWorldPosition = function() return player.x * 10, player.y * 10, 0 end,
    GetWorldCoordinatesFromZone = function(_, x, y) return x * 1000, y * 1000, 0 end,
    GetWorldVector = function(_, _, px, py, wx, wy)
        local dx, dy = wx - px, wy - py
        return 0, math.sqrt(dx * dx + dy * dy)
    end,
} end

local steps = {
    { type = "ACCEPT", questID = 1, text = "Far quest", coords = { mapID = 1, x = 80, y = 50 } },     -- 300 yd
    { type = "ACCEPT", questID = 2, text = "Near quest", coords = { mapID = 1, x = 52, y = 50 } },    -- 20 yd
    { type = "ACCEPT", questID = 3, text = "Locked", pre = { 99 }, coords = { mapID = 1, x = 50, y = 50 } },
    { type = "TURNIN", questID = 4, text = "Ready turn-in", coords = { mapID = 1, x = 55, y = 50 } }, -- 50 yd
    { type = "GOTO", text = "Leave", coords = { mapID = 1, x = 51, y = 50 } },
    { type = "ACCEPT", questID = 5, text = "Past barrier", coords = { mapID = 1, x = 50, y = 50 } },
}
local prog = { index = 1, done = {} }
local ns = {
    IsSecret = function() return false end,
    PlayerLevel = function() return 10 end,
    QuestPins = { GetQuestEntry = function() return nil end },
    QuestDB = {},
}
ns.FG = {
    db = { profile = { arrivalYards = 10, nearestFirst = true, autoWaypoint = false, arrow = { enabled = true } },
           global = { learnedTurnins = {} } },
    GetActiveSteps = function() return steps, prog end,
    ScheduleRepeatingTimer = function() return 1 end, CancelTimer = function() end,
    Print = function(_, m) print(m) end, CompleteCurrent = function() end,
}
assert(loadfile(root .. "/Steps.lua"))("MittenQuest", ns)
assert(loadfile(root .. "/Navigation.lua"))("MittenQuest", ns)
local Nav = ns.Navigation
local function label() return Nav.active and Nav.active.point.label end
local function check(name, want)
    now = now + 2; Nav:Update()
    print(("%-4s %-45s -> %s"):format(label() == want and "ok" or "FAIL", name, tostring(label())))
    if label() ~= want then os.exit(1) end
end

inlog[4], complete[4] = true, true
Nav:SetFromStep(steps[1])
check("nearest doable (skips locked, sees turn-in)", "Accept: Near quest")
inlog[2] = true; prog.done[2] = "game"
check("next nearest once accepted", "Turn in: Ready turn-in")
turned[4], inlog[4] = true, nil; prog.done[4] = "game"
check("back to the current step", "Far quest")
player.x = 50.5
check("barrier: nothing after GOTO competes", "Far quest")
ns.FG.db.profile.nearestFirst = false
prog.done = {}; inlog = {}; turned = {}
Nav:SetFromStep(steps[1])
check("setting off: guide order", "Far quest")
Nav:SetFromStep(steps[5])
check("current GOTO keeps its own target", "Leave")
ns.FG.db.profile.nearestFirst = true
prog.done = {}; inlog = {}; turned = {}; player.x = 50
steps[2].danger = 20   -- player is level 10: Fenris Keep style
Nav:SetFromStep(steps[1])
check("nearby step in a dangerous area is avoided", "Far quest")
steps[2].danger = 11
Nav:SetFromStep(steps[1])
check("mild danger still counts as doable", "Accept: Near quest")

-- Travel hints ("Travel to" steps): the known flight point nearest the destination.
-- Test world: 10 yd per map unit (GetWorldCoordinatesFromZone above), player at 50,50.
UnitFactionGroup = function() return "Horde" end
ns.FG.db.char = { knownFP = {} }
ns.FG.GetActiveGuide = function() return { header = { knownFP = { "Crossroads" } } } end
ns.FlightPoints = { Horde = {
    { "Crossroads", 1, 50, 52 },       -- next to the player
    { "Freewind Post", 1, 10, 90 },    -- next to the destination, known once the taxi map shows it
    { "Far Outpost", 1, 95, 5 },
} }
local dest = { mapID = 1, x = 30, y = 99 } -- ~220 yd from Freewind Post, ~530 from the player
local function hint(name, want)
    local got = Nav:TravelHint(dest)
    local ok = (got or ""):find(want, 1, true) ~= nil
    print(("%-4s %-45s -> %s"):format(ok and "ok" or "FAIL", name, tostring(got)))
    if not ok then os.exit(1) end
end
hint("unknown flight point by the destination: learn it", "Learn the Freewind Post flight path there")
ns.Steps:RecordFlightNode("Freewind Post, Thousand Needles")
hint("known flight point by the destination: fly there", "Fly to Freewind Post, then head")
dest = { mapID = 1, x = 10, y = 90 }
hint("landing right at the destination", "Fly to Freewind Post; it's right there")
dest = { mapID = 1, x = 52, y = 52 }
local got = Nav:TravelHint(dest)
print(("%-4s %-45s -> %s"):format(got == nil and "ok" or "FAIL", "destination close by: no hint", tostring(got)))
if got ~= nil then os.exit(1) end
print("all navigation checks passed")
