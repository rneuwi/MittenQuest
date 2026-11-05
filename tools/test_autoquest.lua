--[[
    Offline check of RouteCheck (is this quest on my route?) and AutoQuest (what gets accepted
    and turned in automatically) with a stubbed game API:
        luajit tools/test_autoquest.lua .
    Exit code 1 on the first failed check.
]]
local root = arg[1] or "."

-- Game state the stubs read
local W = { npcIsPlayer = false, shift = false, questID = 0, title = "", completable = false,
            choices = 0, gossipActive = {}, gossipAvail = {} }
local calls = {}
local function call(name) return function(...) calls[#calls + 1] = { name, ... } end end
local function called(name)
    for _, c in ipairs(calls) do if c[1] == name then return c end end
end

GetTime = function() return W.now or 100 end
IsShiftKeyDown = function() return W.shift end
UnitExists = function(u) return u == "npc" end
UnitIsPlayer = function(u) return u == "npc" and W.npcIsPlayer end
UnitIsUnit = function() return false end
UnitName = function() return "Partymate" end
UnitFactionGroup = function() return "Horde" end
UnitRace = function() return "Orc", "Orc" end
GetQuestID = function() return W.questID end
GetTitleText = function() return W.title end
AcceptQuest, ConfirmAcceptQuest, CompleteQuest = call("AcceptQuest"), call("ConfirmAcceptQuest"), call("CompleteQuest")
GetQuestReward = call("GetQuestReward")
StaticPopup_Hide = function() end
IsQuestCompletable = function() return W.completable end
GetNumQuestChoices = function() return W.choices end
GetNumActiveQuests, GetNumAvailableQuests = function() return 0 end, function() return 0 end
C_GossipInfo = {
    GetActiveQuests = function() return W.gossipActive end,
    GetAvailableQuests = function() return W.gossipAvail end,
    SelectActiveQuest = call("SelectActiveQuest"),
    SelectAvailableQuest = call("SelectAvailableQuest"),
}
CreateFrame = function()
    return { RegisterEvent = function() end, SetScript = function(self, _, fn) self.onEvent = fn end }
end

-- A two-guide Orc chain: starter -> shared. Quest 10 in the starter, 20/21 in the shared one.
local guides = {
    ["Start"] = { header = { faction = "HORDE", raceSet = { ORC = true }, next = "Shared" },
                  steps = { { type = "ACCEPT", questID = 10 } } },
    ["Shared"] = { header = { faction = "HORDE" },
                   steps = { { type = "ACCEPT", questID = 20 }, { type = "ACCEPT", questID = 21 },
                             { type = "ACCEPT", questID = 22, optional = true } } },
    ["Other race"] = { header = { faction = "HORDE", raceSet = { SCOURGE = true }, next = "Shared" },
                       steps = { { type = "ACCEPT", questID = 30 } } },
}
local progress = { done = {} }
local printed = {}
local ns = { Steps = { QuestName = function(_, id) return "Quest " .. id end } }
ns.FG = {
    guides = guides, guideOrder = { "Start", "Shared", "Other race" },
    db = { char = { activeGuide = "Shared" },
           profile = { routeNote = true, auto = { accept = true, turnin = true, shared = true } } },
    GetGuide = function(_, name) return guides[name] end,
    GetProgress = function() return progress end,
    MissingStarterGuide = function() return false end,
    Print = function(_, m) printed[#printed + 1] = m end,
}
assert(loadfile(root .. "/RouteCheck.lua"))("MittenQuest", ns)
assert(loadfile(root .. "/AutoQuest.lua"))("MittenQuest", ns)
local RC, Auto = ns.RouteCheck, ns.AutoQuest

local failed = false
local function check(name, ok, detail)
    print(("%-4s %s%s"):format(ok and "ok" or "FAIL", name, detail and ("  (" .. detail .. ")") or ""))
    if not ok then failed = true end
end
local function strip(s) return (s or ""):gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "") end
local function describe(id) local t, on = RC:Describe(id); return strip(t), on end

-- RouteCheck
local t, on = describe(20)
check("quest in this guide", on and t:find("step 1 of this guide") ~= nil, t)
t, on = describe(10)
check("quest from the race starter", on and t:find("earlier guide") ~= nil, t)
t, on = describe(30)
check("other race's starter is not your route", not on, t)
t, on = describe(99)
check("side quest", not on and t:find("Not on your route") ~= nil, t)
t = describe(22)
check("optional route quest says so", t:find("optional") ~= nil, t)
progress.done[2] = "outleveled"
t, on = describe(21)
check("grey route quest is flagged as skipped", on and t:find("grey") ~= nil, t)

-- AutoQuest
Auto:Init()
local function fire(event, ...) calls = {}; Auto.frame = nil; Auto[event](Auto, event, ...) end
W.questID, W.title = 20, "Route quest"
fire("QUEST_DETAIL")
check("route quest is auto-accepted", called("AcceptQuest") ~= nil)
W.questID = 99
fire("QUEST_DETAIL")
check("side quest is not auto-accepted", called("AcceptQuest") == nil)
W.questID = 21
fire("QUEST_DETAIL")
check("grey (auto-skipped) route quest is not auto-accepted", called("AcceptQuest") == nil)
W.questID, W.npcIsPlayer = 99, true
fire("QUEST_DETAIL")
check("party-shared side quest is accepted", called("AcceptQuest") ~= nil)
ns.FG.db.profile.auto.shared = false
fire("QUEST_DETAIL")
check("shared quest left alone when that option is off", called("AcceptQuest") == nil)
ns.FG.db.profile.auto.shared, W.npcIsPlayer = true, false
fire("QUEST_ACCEPT_CONFIRM", "Partymate", "Escort")
check("escort started by party is joined", called("ConfirmAcceptQuest") ~= nil)
W.completable = true
fire("QUEST_PROGRESS")
check("completable quest is handed in", called("CompleteQuest") ~= nil)
W.choices = 3
fire("QUEST_COMPLETE")
check("reward choice is left to the player", called("GetQuestReward") == nil)
W.choices = 1
fire("QUEST_COMPLETE")
local c = called("GetQuestReward")
check("single reward is taken", c ~= nil and c[2] == 1)
W.gossipActive = { { questID = 50, isComplete = true } }
W.gossipAvail = { { questID = 99 }, { questID = 20 } }
fire("GOSSIP_SHOW")
c = called("SelectActiveQuest")
check("gossip: finished quest handed in first", c ~= nil and c[2] == 50)
W.gossipActive = {}
fire("GOSSIP_SHOW")
c = called("SelectAvailableQuest")
check("gossip: route quest opened, side quest skipped", c ~= nil and c[2] == 20)
fire("GOSSIP_SHOW")
check("gossip: no reopen loop within 2 seconds", called("SelectAvailableQuest") == nil)

-- Shift pauses everything (checked in the event frame wrapper)
W.shift, W.questID = true, 20
calls = {}
local frame
CreateFrame = function()
    frame = { RegisterEvent = function() end, SetScript = function(self, _, fn) self.onEvent = fn end }
    return frame
end
Auto:Init()
frame.onEvent(frame, "QUEST_DETAIL")
check("holding Shift pauses automation", called("AcceptQuest") == nil)

if failed then os.exit(1) end
print("all route check / auto quest checks passed")
