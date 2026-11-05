--[[
    MittenQuest - AutoQuest.lua
    Quest automation (each part has a toggle in the gear menu; hold Shift to do it by hand):
      - auto pick-up: only quests on your route (RouteCheck); side quests are left to you
      - auto turn-in: every completed quest; stops at a reward choice so you pick the item
      - quests a party member shares, and escort quests a party member starts: accepted
]]

local _, ns = ...
local FG = ns.FG
local Auto = {}
ns.AutoQuest = Auto

local RESELECT_SECONDS = 2   -- don't re-open the same quest from a gossip list in a loop
local recent = {}

local function Paused()
    return IsShiftKeyDown()
end

local function Opt(key)
    return FG.db and FG.db.profile.auto and FG.db.profile.auto[key]
end

local function Fresh(id)
    local t = recent[id]
    return not t or GetTime() - t > RESELECT_SECONDS
end

local function Mark(id)
    recent[id] = GetTime()
end

local function Say(msg)
    FG:Print("|cff999999" .. msg .. "|r")
end

-- On the route and not skipped/grey: RouteCheck says so in its second return value, but
-- skipped quests are on the route too, so check the step state here.
local function WantedOnRoute(questID)
    local info = ns.RouteCheck:Index()[questID]
    if not info then return false end
    if info.where ~= "here" then return true end
    local p = FG:GetProgress()
    local why = p and p.done and p.done[info.index]
    return why ~= "skipped" and why ~= "outleveled"
end

-- The quest window was opened by a party member sharing a quest (the "npc" unit is a player).
local function SharedByPlayer()
    return UnitExists("npc") and UnitIsPlayer("npc") and not UnitIsUnit("npc", "player")
end

---------------------------------------------------------------------------
-- Event handlers
---------------------------------------------------------------------------
function Auto:QUEST_DETAIL()
    local id = GetQuestID()
    if not id or id == 0 then return end
    local title = GetTitleText() or ns.Steps:QuestName(id)
    if SharedByPlayer() then
        if Opt("shared") then
            AcceptQuest()
            Say(("Accepted %s (shared by %s)"):format(title, UnitName("npc") or "your party"))
        end
        return
    end
    if Opt("accept") and WantedOnRoute(id) then
        AcceptQuest()
        Say(("Accepted %s (on your route)"):format(title))
    end
end

-- Escort quests: "<name> has started the quest <title>. Do you want to participate?"
function Auto:QUEST_ACCEPT_CONFIRM(_, who, title)
    if Opt("shared") then
        ConfirmAcceptQuest()
        StaticPopup_Hide("QUEST_ACCEPT")
        Say(("Joined %s (started by %s)"):format(tostring(title), tostring(who)))
    end
end

function Auto:QUEST_PROGRESS()
    if Opt("turnin") and IsQuestCompletable() then
        CompleteQuest()
    end
end

function Auto:QUEST_COMPLETE()
    if not Opt("turnin") then return end
    local choices = GetNumQuestChoices()
    if choices > 1 then
        Say("Pick your reward to turn in " .. (GetTitleText() or "this quest"))
        return
    end
    GetQuestReward(choices == 1 and 1 or 0)   -- 0 = no choice (what QuestFrame passes)
    Say("Turned in " .. (GetTitleText() or "quest"))
end

-- NPC with a gossip list: hand in a finished quest first, then open the next route quest.
function Auto:GOSSIP_SHOW()
    if Opt("turnin") then
        for _, q in ipairs(C_GossipInfo.GetActiveQuests() or {}) do
            if q.isComplete and q.questID and Fresh(q.questID) then
                Mark(q.questID)
                return C_GossipInfo.SelectActiveQuest(q.questID)
            end
        end
    end
    if Opt("accept") then
        for _, q in ipairs(C_GossipInfo.GetAvailableQuests() or {}) do
            if q.questID and Fresh(q.questID) and WantedOnRoute(q.questID) then
                Mark(q.questID)
                return C_GossipInfo.SelectAvailableQuest(q.questID)
            end
        end
    end
end

-- Older quest greeting window (several quests, no gossip).
function Auto:QUEST_GREETING()
    if Opt("turnin") then
        for i = 1, GetNumActiveQuests() do
            local title, isComplete = GetActiveTitle(i)
            local key = "active:" .. tostring(title)
            if isComplete and Fresh(key) then
                Mark(key)
                return SelectActiveQuest(i)
            end
        end
    end
    if Opt("accept") then
        for i = 1, GetNumAvailableQuests() do
            local id = select(5, GetAvailableQuestInfo(i))
            if id and id ~= 0 and Fresh(id) and WantedOnRoute(id) then
                Mark(id)
                return SelectAvailableQuest(i)
            end
        end
    end
end

function Auto:Init()
    local f = CreateFrame("Frame")
    for _, e in ipairs({ "QUEST_DETAIL", "QUEST_ACCEPT_CONFIRM", "QUEST_PROGRESS", "QUEST_COMPLETE",
                         "GOSSIP_SHOW", "QUEST_GREETING" }) do
        f:RegisterEvent(e)
    end
    f:SetScript("OnEvent", function(_, event, ...)
        if Paused() then return end
        local ok, err = pcall(self[event], self, event, ...)
        if not ok then
            FG:Print(("|cffff5555AutoQuest@%s failed:|r %s (quest=%s guide=%s)"):format(
                tostring(event), tostring(err), tostring(GetQuestID and GetQuestID()),
                tostring(FG.db and FG.db.char.activeGuide)))
        end
    end)
end
