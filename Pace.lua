--[[
    MittenQuest - Pace.lua

    1. Pace display: every generated step carries xl= (the level the route expects you to
       be at when you reach it), so each step is worth the XP between its xl and the one
       before. Your expected level is the guide's start plus the XP of the steps you've
       done (in any order); comparing that with your real level gives "On pace",
       "1.4 levels behind" or "0.8 levels ahead".
    2. Warn before the wall: when an upcoming pick-up needs a level you don't have yet (or
       you've fallen a level behind), say so early and estimate how much to grind.
    3. Pace log: records your level and XP as steps complete, plus how much XP each level
       gave from quests vs everything else, so the route generator can be recalibrated
       against real play (tools/generator/calibrate.py reads the SavedVariables file).
       Nothing leaves your computer unless you send the file yourself.
]]

local _, ns = ...
local FG = ns.FG
local Pace = {}
ns.Pace = Pace

local LOG_CAP = 4000          -- most recent step records kept
local LOOKAHEAD_STEPS = 30    -- how far ahead to look for a quest you're too low for
local ON_PACE = 0.5           -- within this many levels counts as on pace
local BEHIND_WARN = 1.0       -- warn when this far behind

-- XP to go from level N to N+1 (Classic values; the client reports the current level's
-- real requirement via UnitXPMax, so this table only matters for levels after that).
local XP_TO_LEVEL = {
    400, 900, 1400, 2100, 2800, 3600, 4500, 5400, 6500, 7600, 8800, 10100, 11400, 12900, 14400,
    16000, 17700, 19400, 21300, 23200, 25200, 27300, 29400, 31700, 34000, 36400, 38900, 41400,
    44300, 47400, 50800, 54500, 58600, 62800, 67100, 71600, 76100, 80800, 85700, 90700, 95800,
    101000, 106300, 111800, 117500, 123200, 129100, 135100, 141200, 147500, 153900, 160400,
    167100, 173900, 180800, 187900, 195000, 202300, 209800,
}
local MAX_LEVEL = 60

local function secret(v)
    return issecretvalue and issecretvalue(v)
end

---------------------------------------------------------------------------
-- Player level with fraction (12.4 = level 12, 40% of the way to 13)
---------------------------------------------------------------------------
function Pace:XPState()
    local level, cur, max = UnitLevel("player"), UnitXP("player"), UnitXPMax("player")
    if secret(level) or secret(cur) or secret(max) then return nil end
    return level, cur or 0, max or 0
end

function Pace:PlayerLevel()
    local level, cur, max = self:XPState()
    if not level then return nil end
    if level >= MAX_LEVEL or max <= 0 then return level end
    return level + cur / max
end

-- XP still needed to go from your current position to fractional level `target`.
function Pace:XPTo(target)
    local level, cur, max = self:XPState()
    if not level or level >= MAX_LEVEL then return 0 end
    local targetLevel = math.floor(target)
    local targetFrac = target - targetLevel
    if targetLevel < level or (targetLevel == level and targetFrac * max <= cur) then return 0 end
    if targetLevel == level then return targetFrac * max - cur end
    local need = max - cur
    for L = level + 1, math.min(targetLevel, MAX_LEVEL) - 1 do need = need + (XP_TO_LEVEL[L] or 0) end
    if targetLevel < MAX_LEVEL then need = need + targetFrac * (XP_TO_LEVEL[targetLevel] or 0) end
    return need
end

-- XP between two fractional levels using the level table (for projections ahead).
function Pace:XPBetween(a, b)
    if b <= a then return 0 end
    local total, L = 0, math.floor(a)
    local pos = a
    while pos < b and L < MAX_LEVEL do
        local stop = math.min(b, L + 1)
        total = total + (stop - pos) * (XP_TO_LEVEL[L] or 0)
        pos, L = stop, L + 1
    end
    return total
end

-- XP for killing a mob of your own level (same formula as Classic; Forever only changed
-- lower-level mobs).
local function KillXP(level)
    return 45 + 5 * level
end

function Pace:KillsFor(xp)
    local level = UnitLevel("player")
    if secret(level) then return nil end
    return math.max(1, math.ceil(xp / KillXP(level)))
end

-- Fractional level reached by gaining `xp` from fractional level `start`.
function Pace:LevelAfter(start, xp)
    local L, pos = math.floor(start), start
    while xp > 0 and L < MAX_LEVEL do
        local need = XP_TO_LEVEL[L]
        if not need then break end
        local room = (L + 1 - pos) * need
        if xp < room then return pos + xp / need end
        xp = xp - room
        L = L + 1
        pos = L
    end
    return pos
end

---------------------------------------------------------------------------
-- Expected level and pace
--
-- The route's xl= values say what level you should be at each step if you follow it in
-- order. Reading the xl of the current step breaks as soon as you don't: routes get
-- regenerated in a new order, so a block you did earlier (on an older route) is already
-- done and the cursor leaps past it, and the "expected" level leaps with it although you
-- gained nothing. So instead each step is worth the XP the route expects it to give
-- (the rise in xl from the step before), and the expected level is the guide's starting
-- level plus the XP of the steps you've actually done, in whatever order.
---------------------------------------------------------------------------
local deltaCache = setmetatable({}, { __mode = "k" })

-- Per-step XP the route expects ([index] = xp) and the guide's starting level.
function Pace:Deltas(steps)
    local cached = deltaCache[steps]
    if cached then return cached.deltas, cached.base end
    local deltas, base, prev = {}, nil, nil
    for i, s in ipairs(steps) do
        if s.xl then
            if not base then base = s.xl end
            deltas[i] = (prev and s.xl > prev) and self:XPBetween(prev, s.xl) or 0
            prev = s.xl
        end
    end
    deltaCache[steps] = { deltas = deltas, base = base }
    return deltas, base
end

-- Done reasons that mean you did the step yourself (not skipped, never had the quest,
-- outleveled, took the other version...).
local CREDIT = { game = true, arrived = true, implied = true }

-- True when a done step actually earned its XP.
function Pace:Credited(step, why)
    if not step or not why or not CREDIT[why] then return false end
    local q = step.questID
    if q and (step.type == "COMPLETE" or step.type == "TURNIN") then
        -- Optional objectives/turn-ins count as done when the quest isn't in your log;
        -- only a real turn-in (or finished objectives) earned anything.
        if C_QuestLog.IsQuestFlaggedCompleted(q) then return true end
        return step.type == "COMPLETE" and C_QuestLog.GetLogIndexForQuestID(q) ~= nil
    end
    return true
end

-- Expected level for what you've done in the active guide (nil without xl= data).
function Pace:Expected()
    local steps, p = FG:GetActiveSteps()
    if not steps or not p then return nil end
    local deltas, base = self:Deltas(steps)
    if not base then return nil end
    local xp = 0
    for i, d in pairs(deltas) do
        if d > 0 and self:Credited(steps[i], p.done[i]) then xp = xp + d end
    end
    return self:LevelAfter(base, xp)
end

-- XP the route expects from the steps still to do in [from, to].
function Pace:XPAhead(steps, p, from, to)
    local deltas = self:Deltas(steps)
    local xp = 0
    for i = from, to do
        if deltas[i] and not p.done[i] then xp = xp + deltas[i] end
    end
    return xp
end

-- Returns expected, actual, diff (actual - expected) or nil when there's nothing to compare.
function Pace:Info()
    local expected, actual = self:Expected(), self:PlayerLevel()
    if not expected or not actual or UnitLevel("player") >= MAX_LEVEL then return nil end
    return expected, actual, actual - expected
end

-- Short colored tag for the title bar.
function Pace:Tag()
    if not FG.db.profile.pace.show then return nil end
    local _, _, diff = self:Info()
    if not diff then return nil end
    if math.abs(diff) < ON_PACE then return "|cff66ff66On pace|r" end
    if diff > 0 then return ("|cff66ff66%.1f ahead|r"):format(diff) end
    local color = diff <= -BEHIND_WARN and "ffff5555" or "ffffd100"
    return ("|c%s%.1f behind|r"):format(color, -diff)
end

-- First upcoming pick-up you'll still be too low for when you get there.
-- Your level at that step is projected as: your level now + the XP the route expects from
-- the steps still to do between here and there (steps already done give nothing more).
-- Returns step, required level, steps away, XP short.
function Pace:NextWall()
    local steps, p = FG:GetActiveSteps()
    if not steps or not p then return nil end
    local level, actual = UnitLevel("player"), self:PlayerLevel()
    if secret(level) or not actual then return nil end
    for i = p.index, math.min(#steps, p.index + LOOKAHEAD_STEPS) do
        local s = steps[i]
        if s and not p.done[i] and s.type == "ACCEPT" and s.questID then
            local need = s.minLevel
            local q = ns.QuestDB and ns.QuestDB[s.questID]
            if not need and q then need = q.minLevel end
            if need and need > level then
                local projected = self:LevelAfter(actual, self:XPAhead(steps, p, p.index, i - 1))
                if projected < need then
                    local short = (i == p.index) and self:XPTo(need) or self:XPBetween(projected, need)
                    return s, need, i - p.index, short
                end
            end
        end
    end
end

-- Banner text when you need to grind (nil when you're fine).
function Pace:Banner()
    if not FG.db.profile.pace.show then return nil end
    local wall, need, stepsAway, short = self:NextWall()
    if wall then
        local kills = self:KillsFor(short)
        local xp = math.floor(short)
        if BreakUpLargeNumbers then xp = BreakUpLargeNumbers(xp) end
        if stepsAway == 0 then
            return ("Next: \"%s\" needs level %d. Grind about %s XP here first (~%d kills of mobs your level; fewer while rested)."):format(
                wall.text or "quest", need, xp, kills or 0)
        end
        return ("In %d steps, \"%s\" needs level %d and you'll likely be short. Grinding about %s XP along the way (~%d kills) avoids waiting there."):format(
            stepsAway, wall.text or "quest", need, xp, kills or 0)
    end
    local expected, _, diff = self:Info()
    if diff and diff <= -BEHIND_WARN then
        local xp = self:XPTo(expected)
        return ("You're %.1f levels behind the route. About %d kills of mobs your level nearby catches you up."):format(
            -diff, self:KillsFor(xp) or 0)
    end
end

---------------------------------------------------------------------------
-- Pace log (SavedVariables: MittenQuestDB.global.paceLog)
---------------------------------------------------------------------------
local RECORDED = { game = true, arrived = true }

function Pace:Log()
    local g = FG.db.global
    g.paceLog = g.paceLog or { version = 1, entries = {}, levels = {} }
    return g.paceLog
end

-- Called by Core after each evaluation with the steps that just became done.
function Pace:RecordSteps(guideName, steps, indices, reasons)
    local actual = self:PlayerLevel()
    if not actual then return end
    local log = self:Log()
    local _, classFile = UnitClass("player")
    local _, raceFile = UnitRace("player")
    local rested = GetXPExhaustion and GetXPExhaustion() or 0
    if secret(rested) then rested = 0 end
    for _, i in ipairs(indices) do
        local s = steps[i]
        if s and RECORDED[reasons[i]] then
            log.entries[#log.entries + 1] = {
                g = guideName, i = i, line = s.line, t = s.type, q = s.questID,
                xl = s.xl, lv = math.floor(actual * 100 + 0.5) / 100,
                rest = rested or 0, c = classFile, r = raceFile,
                ts = GetServerTime and GetServerTime() or time(),
            }
        end
    end
    while #log.entries > LOG_CAP do table.remove(log.entries, 1) end
end

-- XP bookkeeping per level: total gained, from quests, and rested bonus consumed.
function Pace:LevelBucket(level)
    local levels = self:Log().levels
    levels[level] = levels[level] or { total = 0, quest = 0, rested = 0 }
    return levels[level]
end

function Pace:OnXPUpdate()
    local level, cur, max = self:XPState()
    if not level then return end
    local rest = GetXPExhaustion and GetXPExhaustion() or 0
    if secret(rest) then rest = nil end
    local last = self.last
    if last and level >= last.level then
        -- XP earned at the old level, and (after a level-up) at the new one.
        local oldPart, newPart = 0, 0
        if level == last.level then
            oldPart = cur - last.cur
        else
            oldPart, newPart = last.max - last.cur, cur
        end
        if oldPart > 0 and oldPart < 1e6 then
            local b = self:LevelBucket(last.level)
            b.total = b.total + oldPart
            if rest and last.rest and last.rest > rest then
                b.rested = b.rested + (last.rest - rest)
            end
        end
        if newPart > 0 and newPart < 1e6 then
            local b = self:LevelBucket(level)
            b.total = b.total + newPart
        end
    end
    self.last = { level = level, cur = cur, max = max, rest = rest }
end

function Pace:OnQuestTurnedIn(xpReward)
    local level = UnitLevel("player")
    if secret(level) or secret(xpReward) or not xpReward or xpReward <= 0 then return end
    local b = self:LevelBucket(level)
    b.quest = b.quest + xpReward
end

function Pace:Count()
    local log = FG.db.global.paceLog
    return log and #log.entries or 0
end

function Pace:Clear()
    FG.db.global.paceLog = nil
end

function Pace:Enable()
    FG:RegisterEvent("PLAYER_XP_UPDATE", function()
        self:OnXPUpdate()
        FG:RequestRefresh()
    end)
    self:OnXPUpdate() -- baseline
end
