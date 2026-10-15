--[[
    MittenQuest - Steps.lua
    Per-step-type rules: who a step applies to, when it's satisfied, and how it reads.
    Everything here reads live game state through modern C_* APIs.
]]

local _, ns = ...
local FG = ns.FG
local Steps = {}
ns.Steps = Steps

local IsTurnedIn = C_QuestLog.IsQuestFlaggedCompleted
local function InLog(q) return C_QuestLog.GetLogIndexForQuestID(q) ~= nil end

---------------------------------------------------------------------------
-- Player filters (class / race / faction) - evaluated once per guide load
---------------------------------------------------------------------------
function Steps:Applies(step)
    if step.class then
        local _, classFile = UnitClass("player")
        if not step.class[classFile] then return false end
    end
    if step.race then
        local _, raceFile = UnitRace("player")
        if not step.race[(raceFile or ""):upper()] then return false end
    end
    if step.faction then
        local faction = UnitFactionGroup("player")
        if (faction or ""):upper() ~= step.faction then return false end
    end
    return true
end

---------------------------------------------------------------------------
-- Helpers
---------------------------------------------------------------------------
function Steps:MissingPrereqs(step)
    local missing
    for _, p in ipairs(step.pre or {}) do
        if not IsTurnedIn(p) then
            missing = missing or {}
            missing[#missing + 1] = p
        end
    end
    return missing
end

function Steps:QuestName(questID)
    return C_QuestLog.GetTitleForQuestID(questID)
        or (ns.QuestDB and ns.QuestDB[questID] and ns.QuestDB[questID].name)
        or (FG.questNames and FG.questNames[questID])
        or ("Quest " .. questID)
end

-- Bag progress for item= steps. Returns have, need, expectedKillsRemaining
function Steps:ItemProgress(step)
    local have, need = 0, 0
    for _, it in ipairs(step.items or {}) do
        have = have + math.min(C_Item.GetItemCount(it.id), it.count)
        need = need + it.count
    end
    local kills
    if step.drop and step.drop > 0 and need > have then
        kills = math.ceil((need - have) / (step.drop / 100))
    end
    return have, need, kills
end

local function NormName(s) return (s or ""):lower():gsub("[^%w]", "") end

-- Flight node names from the taxi map are like "Crossroads, The Barrens".
-- Guide names can be the short form ("Crossroads"); match on prefix.
function Steps:IsFlightKnown(node)
    local want = NormName(node)
    if want == "" then return true end
    for name in pairs(FG.db.char.knownFP) do
        if name:sub(1, #want) == want then return true end
    end
    local g = FG:GetActiveGuide()
    for _, n in ipairs(g and g.header.knownFP or {}) do
        if NormName(n) == want then return true end
    end
    return false
end

function Steps:RecordFlightNode(fullName)
    FG.db.char.knownFP[NormName(fullName)] = true
end

---------------------------------------------------------------------------
-- Edge cases for characters that start mid-guide (or past it)
---------------------------------------------------------------------------
-- Best-known level of a quest: curated/learned data, then the client,
-- then the guide's own upper level (a conservative "no higher than" guess).
function Steps:QuestLevel(questID, guide)
    local e = ns.QuestPins and ns.QuestPins:GetQuestEntry(questID)
    if e and e.level then return e.level end
    if C_QuestLog.GetQuestDifficultyLevel then
        local lvl = C_QuestLog.GetQuestDifficultyLevel(questID)
        if lvl and lvl > 0 then return lvl end
    end
    return guide and guide.header and guide.header.levelMax
end

-- How many levels below you a quest turns grey (trivial).
function Steps:TrivialGap()
    local r = UnitQuestTrivialLevelRange and UnitQuestTrivialLevelRange("player")
    if r and (not issecretvalue or not issecretvalue(r)) and r > 0 then return r end
    -- Fallback approximating the classic grey-quest rule if the client lacks the API.
    local level = UnitLevel("player")
    if level < 10 then return 5 elseif level < 20 then return 6 elseif level < 30 then return 7
    elseif level < 40 then return 8 else return 9 end
end

function Steps:IsGrey(questID, guide)
    local lvl = self:QuestLevel(questID, guide)
    return lvl ~= nil and lvl <= UnitLevel("player") - self:TrivialGap()
end

-- A quest step you never started and that is now grey for your level.
-- Quests already in your log are never outleveled - you still turn them in.
function Steps:IsOutleveled(step, guide)
    local q = step.questID
    if step.type == "DUNGEON" then
        if not step.quests or #step.quests == 0 then return false end
        for _, dq in ipairs(step.quests) do
            if InLog(dq) then return false end
            if not IsTurnedIn(dq) and not self:IsGrey(dq, guide) then return false end
        end
        return true
    end
    if not q or InLog(q) or IsTurnedIn(q) then return false end
    return self:IsGrey(q, guide)
end

-- Quests you've clearly moved past: a later quest that requires them is in
-- your log or turned in (covers breadcrumbs the game doesn't flag completed).
function Steps:ChainPassed(guide)
    local passed = {}
    for _, s in ipairs(guide.allSteps or {}) do
        if s.type == "ACCEPT" and s.questID and s.pre and (InLog(s.questID) or IsTurnedIn(s.questID)) then
            for _, p in ipairs(s.pre) do passed[p] = true end
        end
    end
    -- Propagate down the chain (A -> B -> C: having C means A was done too).
    local changed = true
    while changed do
        changed = false
        for _, s in ipairs(guide.allSteps or {}) do
            if s.type == "ACCEPT" and s.questID and passed[s.questID] then
                for _, p in ipairs(s.pre or {}) do
                    if not passed[p] then passed[p] = true; changed = true end
                end
            end
        end
    end
    return passed
end

---------------------------------------------------------------------------
-- Satisfaction (auto-completion)
---------------------------------------------------------------------------
function Steps:IsSatisfied(step)
    local t, q = step.type, step.questID

    if t == "ACCEPT" then
        if q and (InLog(q) or IsTurnedIn(q)) then return true end
        -- Optional steps whose chain the player skipped are dropped silently.
        if step.optional and self:MissingPrereqs(step) then return true end
        return false
    elseif t == "COMPLETE" then
        if not q then return false end
        if IsTurnedIn(q) or C_QuestLog.IsComplete(q) then return true end
        if step.optional and not InLog(q) then return true end
        if step.items then
            local have, need = self:ItemProgress(step)
            return need > 0 and have >= need
        end
        return false
    elseif t == "TURNIN" then
        if not q then return false end
        if IsTurnedIn(q) then return true end
        -- Can't turn in what we don't have: skip if quest was never picked up.
        return step.optional and not InLog(q)
    elseif t == "GETFP" then
        return self:IsFlightKnown(step.node)
    elseif t == "SETHEARTH" then
        local bind = GetBindLocation()
        return bind and step.node and NormName(bind):find(NormName(step.node), 1, true) ~= nil
    elseif t == "LEVEL" then
        return step.level and UnitLevel("player") >= step.level
    elseif t == "DUNGEON" then
        -- Done once every carried dungeon quest is turned in.
        if not step.quests or #step.quests == 0 then return false end
        for _, dq in ipairs(step.quests) do
            if not IsTurnedIn(dq) then return false end
        end
        return true
    end
    -- GOTO (Navigation arrival), FLY (taxi landing), HEARTH (cast), TEXT: event/manual driven
    return false
end

---------------------------------------------------------------------------
-- Display
---------------------------------------------------------------------------
local COLOR = {
    ACCEPT = "ffffd100", COMPLETE = "ff4fc3f7", TURNIN = "ff66ff66",
    GOTO = "ffffffff", GETFP = "ffb388ff", FLY = "ffb388ff",
    HEARTH = "ff80deea", SETHEARTH = "ff80deea", LEVEL = "ffffab40",
    DUNGEON = "ffff7043", TEXT = "ffcccccc",
}
local LABEL = {
    ACCEPT = "Accept", COMPLETE = "Complete", TURNIN = "Turn in", GOTO = "Go to",
    GETFP = "Get flight path", FLY = "Fly to", HEARTH = "Hearth", SETHEARTH = "Set hearth",
    LEVEL = nil, DUNGEON = "Dungeon", TEXT = nil,
}
local WARN, DIM = "|cffff5555", "|cff999999"

-- Returns mainLine, subLine (subLine may be nil)
function Steps:Describe(step)
    local color = COLOR[step.type] or COLOR.TEXT
    local label = LABEL[step.type]
    local body = step.text or ""
    if step.type == "HEARTH" and body == "" then body = "Hearthstone" end
    local main = label and ("|c%s%s:|r %s"):format(color, label, body) or ("|c%s%s|r"):format(color, body)

    local sub = {}
    local level = UnitLevel("player")

    if step.type == "ACCEPT" then
        local missing = self:MissingPrereqs(step)
        if missing then
            local names = {}
            for _, p in ipairs(missing) do names[#names + 1] = self:QuestName(p) end
            sub[#sub + 1] = WARN .. "Needs first: " .. table.concat(names, ", ") .. "|r"
        end
        if step.minLevel and level < step.minLevel then
            sub[#sub + 1] = WARN .. ("Requires level %d (you are %d)"):format(step.minLevel, level) .. "|r"
        end
    elseif step.type == "COMPLETE" and step.items then
        local have, need, kills = self:ItemProgress(step)
        local line = ("%d/%d"):format(have, need)
        if step.mob then line = line .. " from " .. step.mob end
        if kills then line = line .. (" - %g%% drop, ~%d more kills"):format(step.drop, kills) end
        sub[#sub + 1] = DIM .. line .. "|r"
    elseif step.type == "COMPLETE" and step.mob then
        sub[#sub + 1] = DIM .. step.mob .. "|r"
    elseif step.type == "FLY" and not self:IsFlightKnown(step.node) then
        sub[#sub + 1] = WARN .. "Flight path not learned" .. (step.alt and (" - " .. step.alt) or "") .. "|r"
    elseif step.type == "LEVEL" and step.level then
        local cur, max = UnitXP("player"), UnitXPMax("player")
        if level < step.level and max and max > 0 then
            sub[#sub + 1] = DIM .. ("Level %d, %d%% - %d XP to %d"):format(
                level, math.floor(cur / max * 100), max - cur, level + 1) .. "|r"
        end
    elseif step.type == "DUNGEON" and step.quests then
        local carried, lines = 0, {}
        for _, dq in ipairs(step.quests) do
            local name = self:QuestName(dq)
            if IsTurnedIn(dq) then
                lines[#lines + 1] = DIM .. "  |TInterface\\RaidFrame\\ReadyCheck-Ready:12|t " .. name .. "|r"
                carried = carried + 1
            elseif InLog(dq) then
                lines[#lines + 1] = "  - " .. name
                carried = carried + 1
            else
                lines[#lines + 1] = WARN .. "  |TInterface\\RaidFrame\\ReadyCheck-NotReady:12|t " .. name .. " (not in log)|r"
            end
        end
        table.insert(lines, 1, DIM .. ("Quests: %d/%d carried"):format(carried, #step.quests) .. "|r")
        sub[#sub + 1] = table.concat(lines, "\n")
    end

    for _, note in ipairs(step.notes or {}) do
        sub[#sub + 1] = "|cffcccccc" .. note .. "|r"
    end

    return main, (#sub > 0) and table.concat(sub, "\n") or nil
end
