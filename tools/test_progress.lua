--[[
    Offline check of step state (Core.lua FG:Evaluate) and the skip target, with a stubbed
    game API:
        luajit tools/test_progress.lua .
    Exit code 1 on any failure.
]]
local root = arg[1] or "."
local inlog, turned = {}, {}
local stub = { __index = function() return function() end end }
_G.C_AddOns = setmetatable({ GetAddOnMetadata = function() return "test" end }, stub)
_G.C_QuestLog = setmetatable({
    IsQuestFlaggedCompleted = function(q) return turned[q] or false end,
    GetLogIndexForQuestID = function(q) return inlog[q] and 1 or nil end,
    IsComplete = function() return false end,
}, stub)
_G.C_Map, _G.C_TaxiMap, _G.C_Item = setmetatable({}, stub), setmetatable({}, stub), setmetatable({}, stub)
function UnitClass() return "Warrior", "WARRIOR" end
function UnitRace() return "Orc", "ORC" end
function UnitFactionGroup() return "Horde" end
function UnitLevel() return 20 end
local addon = setmetatable({}, stub)
_G.LibStub = setmetatable({}, { __call = function()
    return setmetatable({ NewAddon = function() return addon end }, stub)
end })

local ns = {}
local function load(path) assert(loadfile(root .. "/" .. path))("MittenQuest", ns) end
load("Core.lua"); load("Parser.lua"); load("Steps.lua")
local FG = ns.FG

-- Quest 10 is either/or with 11 (another giver's version); 12 follows 10; 13 is unrelated.
local raw = table.concat({
    "#levels 18-22",
    "#faction Horde",
    "",
    "[A 10 The Hunt | at=50,50,1; ex=11]",
    "[C 10 The Hunt | at=51,50,1]",
    "[T 10 The Hunt | at=50,50,1]",
    "[A 12 The Hunt Continues | at=50,50,1; pre=10]",
    "[A 13 Unrelated | at=52,50,1]",
    "[T 13 Unrelated | at=52,50,1]",
}, "\n")
local steps, header, warnings = ns.Parser:Parse(raw, "Test")
local guide = { steps = steps, allSteps = steps, header = header, warnings = warnings }
local prog = { index = 1, arrived = {}, skip = {}, done = {}, undo = {}, force = {} }
local realFG = { GetActiveGuide = FG.GetActiveGuide, GetActiveSteps = FG.GetActiveSteps, GetProgress = FG.GetProgress }
FG.db ={ profile = { skipGrey = false }, global = { notOffered = {} } }
FG.GetActiveGuide = function() return guide end
FG.GetActiveSteps = function() return steps, prog end
FG.GetProgress = function() return prog end

local failures = 0
local function check(label, ok, detail)
    print(("%s  %s%s"):format(ok and "ok  " or "FAIL", label, detail and ("  -> " .. detail) or ""))
    if not ok then failures = failures + 1 end
end

check("ex= parsed", #warnings == 0 and steps[1].exclusive and steps[1].exclusive[1] == 11,
      #warnings > 0 and warnings[1] or nil)

local r = FG:Evaluate(steps, prog)
check("nothing done before any quest", r[1] == nil and r[4] == nil)

turned[11] = true   -- did the other version of The Hunt
r = FG:Evaluate(steps, prog)
check("other version turned in: accept done", r[1] == "exclusive", tostring(r[1]))
check("other version turned in: objectives/turn-in done", r[2] ~= nil and r[3] ~= nil,
      tostring(r[2]) .. "/" .. tostring(r[3]))
check("follow-up that needs it: done", r[4] == "exclusive", tostring(r[4]))
check("unrelated quest untouched", r[5] == nil, tostring(r[5]))

turned[11] = nil; inlog[11] = true
r = FG:Evaluate(steps, prog)
check("other version in the log: accept done", r[1] == "exclusive", tostring(r[1]))

inlog[10] = true    -- has both somehow: game state wins, the guide's version is live
r = FG:Evaluate(steps, prog)
check("guide's version in the log: not exclusive", r[2] == nil and r[3] == nil,
      tostring(r[2]) .. "/" .. tostring(r[3]))
inlog = {}; turned = {}

-- Skip target: the step the arrow points at, when it's a nearer upcoming step.
prog.done = FG:Evaluate(steps, prog)
prog.index = 1
ns.Navigation = { pickStep = steps[5] }
local s, i = FG:GetTargetStep()
check("skip target follows the arrow's nearby step", s == steps[5] and i == 5, tostring(i))
ns.Navigation.pickStep = steps[1]
s, i = FG:GetTargetStep()
check("skip target is the current step when the arrow is on it", s == steps[1] and i == 1, tostring(i))
prog.done[5] = "skipped"; ns.Navigation.pickStep = steps[5]
s, i = FG:GetTargetStep()
check("arrow still on a done step: falls back to the current step", s == steps[1] and i == 1, tostring(i))

-- Not offered: talking to the guide's giver, who doesn't list quest 13.
local npcName, level = "Old Giver", 20
function UnitName(u) if u == "npc" then return npcName end end
function time() return 0 end
_G.wipe = function(t) for k in pairs(t) do t[k] = nil end return t end
ns.PlayerLevel = function() return level end
ns.Frame = { Update = function() end }
ns.Navigation.SetFromStep = function() end
ns.Pace = { RecordSteps = function() end }
FG.db.global = { notOffered = {}, learnedQuests = {}, learnedTurnins = {} }
FG.db.char = { activeGuide = "Test" }
FG.guideOrder = {}
FG.paceBaseline = {}
FG.guides = {}
ns.QuestDB = {
    [10] = { name = "The Hunt", level = 20, minLevel = 15, map = 1, x = 50, y = 50, giver = "Old Giver" },
    [13] = { name = "Unrelated", level = 20, minLevel = 15, map = 1, x = 52, y = 50, giver = "Old Giver" },
}
load("QuestPins.lua")
local Pins = ns.QuestPins
prog.skip, prog.done = {}, {}
prog.done = FG:Evaluate(steps, prog)

Pins:CheckRouteOffers({ [10] = true })
check("giver lists 10 but not 13: 13 recorded", FG.db.global.notOffered[13] ~= nil
      and FG.db.global.notOffered[10] == nil)
r = FG:Evaluate(steps, prog)
check("not-offered quest's steps are done", r[5] == "notoffered" and r[6] ~= nil,
      tostring(r[5]) .. "/" .. tostring(r[6]))
check("offered quest untouched", r[1] == nil, tostring(r[1]))
check("no map pin at the giver that didn't offer it", Pins:CollectEntries()[13] == nil)

FG.db.global.learnedQuests[13] = { name = "Unrelated", map = 2, x = 10, y = 20, giver = "New Giver" }
local e = Pins:CollectEntries()[13]
check("pin moves to where it was seen offered", e ~= nil and e.map == 2 and e.giver == "New Giver")

FG.db.global.notOffered = {}
level = 10   -- below minLevel 15: an empty list proves nothing
Pins:CheckRouteOffers({})
check("not recorded when you can't take it yet", next(FG.db.global.notOffered) == nil)
level = 20; npcName = "Someone Else"
Pins:CheckRouteOffers({})
check("not recorded when talking to a different NPC", next(FG.db.global.notOffered) == nil)
npcName = "Old Giver"
Pins:CheckRouteOffers({ [13] = true })
check("10 not offered: recorded", FG.db.global.notOffered[10] ~= nil)
r = FG:Evaluate(steps, prog)
check("follow-up of a not-offered quest is done", r[4] == "notoffered", tostring(r[4]))
FG:ToggleStep(4)
check("clicking the follow-up clears the chain's record", FG.db.global.notOffered[10] == nil)
FG.db.global.notOffered[10] = { npc = "Old Giver" }
FG:QUEST_ACCEPTED(nil, 10)
check("accepting it anywhere clears the record", FG.db.global.notOffered[10] == nil)

-- Undo across a guide chain: skipping the last step of "Prev" finishes it and auto-loads
-- "Next"; undo from "Next" (empty history) must reopen "Prev" with that step back.
for k, fn in pairs(realFG) do FG[k] = fn end
function FG:Print() end
ns.RouteCheck = nil
ns.QuestPins = { RequestRefresh = function() end }
FG.db.global.notOffered = {}
FG.db.char = { activeGuide = "Prev", progress = {} }
FG.paceBaseline = {}
FG.guides = {
    Prev = { name = "Prev", raw = "#next Next\n\n[A 20 First | at=50,50,1]\n[A 21 Last | at=50,50,1]" },
    Next = { name = "Next", raw = "[A 30 Later | at=50,50,1]" },
}
inlog = { [20] = true }
FG:Advance(true)
check("chain: starts on Prev's last step", FG.db.char.activeGuide == "Prev" and FG:GetProgress().index == 2)
FG:SkipCurrentStep()
check("chain: skipping the last step loads Next", FG.db.char.activeGuide == "Next")
local u = FG:CanUndo()
check("chain: undo offered from Next", u ~= nil and u.label:find("back to Prev", 1, true) ~= nil,
      u and u.label or "nil")
FG:UndoSkip()
check("chain: undo returns to Prev on that step", FG.db.char.activeGuide == "Prev"
      and FG:GetProgress().index == 2, FG.db.char.activeGuide)
check("chain: nothing left to undo", FG:CanUndo() == nil)

-- Picking a finished guide by hand opens it instead of chaining straight to its #next.
FG:SkipCurrentStep()
check("pick finished: precondition, on Next", FG.db.char.activeGuide == "Next")
FG:ChooseGuide("Prev")
check("pick finished: Prev stays loaded", FG.db.char.activeGuide == "Prev", FG.db.char.activeGuide)
FG:Advance()
check("pick finished: a later pass doesn't chain away", FG.db.char.activeGuide == "Prev")
FG:RestartGuide()
check("restart: skip cleared, back on the last step", FG.db.char.activeGuide == "Prev"
      and FG:GetProgress().index == 2, tostring(FG:GetProgress().index))
FG:SkipCurrentStep()
check("restart: finishing it again chains on", FG.db.char.activeGuide == "Next", FG.db.char.activeGuide)
inlog = {}

if failures > 0 then
    print(failures .. " failure(s)")
    os.exit(1)
end
print("all progress checks passed")
