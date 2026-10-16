--[[
    MittenQuest - Core.lua
    Addon object, saved variables, event wiring, step cursor, slash commands.
    Step rules live in Steps.lua; parsing/validation in Parser.lua.

    Modern API only: C_QuestLog.*, C_AddOns.*, C_Map.*, C_TaxiMap.*, C_Item.* —
    no GetQuestLogTitle, no GetSpellInfo, no COMBAT_LOG_EVENT handlers.
]]

local ADDON_NAME, ns = ...

local FG = LibStub("AceAddon-3.0"):NewAddon(ADDON_NAME,
    "AceEvent-3.0", "AceConsole-3.0", "AceTimer-3.0")
ns.FG = FG
_G.MittenQuest = FG -- public handle for guide files and other addons

FG.version = C_AddOns.GetAddOnMetadata(ADDON_NAME, "Version") or "dev"

local HEARTH_SPELLS = { [8690] = true, [556] = true } -- Hearthstone, Astral Recall

---------------------------------------------------------------------------
-- Saved variables
---------------------------------------------------------------------------
local defaults = {
    profile = {
        frame = {
            point = "RIGHT", relPoint = "RIGHT", x = -60, y = 80,
            width = 320, height = 280,
            scale = 1.0, alpha = 0.80,
            locked = false, shown = true,
        },
        visibleSteps  = 6,
        fadeCompleted = true,
        skipGrey      = true,   -- auto-skip quests that are grey for your level
        autoWaypoint  = true,   -- also place a map pin (TomTom / built-in) for each step
        arrivalYards  = 10,
        pace = { show = true },   -- "On pace / behind" and grind warnings
        arrow = {
            enabled = true, locked = false, scale = 1.0,
            point = "TOP", relPoint = "TOP", x = 0, y = -120,
        },
        pins = {
            enabled = true,
            worldMap = true,
            minimap = true,
            showUnavailable = true, -- greyed pins for quests blocked by level/prereq
            showLowLevel = false,   -- hide trivial (grey) quests
            lowLevelGap = 8,        -- levels below player before a quest counts as trivial
        },
    },
    char = {
        activeGuide = nil,
        progress = {},  -- [guideName] = { index = n, done = { [stepIndex] = true } }
        knownFP = {},   -- [normalized taxi node name] = true (learned from taxi map)
    },
    global = {
        -- Quest givers / turn-in NPCs recorded while playing (shared by all characters).
        learnedQuests = {},   -- [questID] = { name, level, map, x, y, giver }
        learnedTurnins = {},  -- [questID] = { map, x, y, npc }
    },
}

---------------------------------------------------------------------------
-- Guide registry (guide files call MittenQuest:RegisterGuide at load time)
---------------------------------------------------------------------------
FG.guides, FG.guideOrder = {}, {}
FG.questNames = {} -- questID -> name, harvested from guide text (fallback for uncached titles)

function FG:RegisterGuide(name, rawText, meta)
    if self.guides[name] then return end
    self.guides[name] = { name = name, raw = rawText, meta = meta or {} }
    table.insert(self.guideOrder, name)
end

-- Parse lazily and keep only steps that apply to this character.
function FG:GetGuide(name)
    local g = self.guides[name]
    if g and not g.steps then
        local all, header, warnings = ns.Parser:Parse(g.raw, name)
        g.allSteps, g.header, g.warnings = all, header, warnings
        g.steps = {}
        for _, step in ipairs(all) do
            if step.questID and step.text and step.text ~= "" then
                self.questNames[step.questID] = self.questNames[step.questID] or step.text
            end
            if ns.Steps:Applies(step) then g.steps[#g.steps + 1] = step end
        end
    end
    return g
end

function FG:GetActiveGuide()
    local name = self.db.char.activeGuide
    return name and self:GetGuide(name)
end

---------------------------------------------------------------------------
-- Lifecycle
---------------------------------------------------------------------------
function FG:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("MittenQuestDB", defaults, true)
    self:RegisterChatCommand("mq", "HandleSlash")
    self:RegisterChatCommand("mittenquest", "HandleSlash")
end

function FG:OnEnable()
    -- Quest flow
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("QUEST_ACCEPTED")
    self:RegisterEvent("QUEST_TURNED_IN")
    self:RegisterEvent("QUEST_REMOVED", "OnQuestListChanged")
    self:RegisterEvent("QUEST_LOG_UPDATE", "RequestAdvance")
    -- Drops / leveling
    self:RegisterEvent("BAG_UPDATE_DELAYED", "RequestAdvance")
    self:RegisterEvent("PLAYER_LEVEL_UP", "OnQuestListChanged")
    -- Travel / pathing
    self:RegisterEvent("TAXIMAP_OPENED")
    self:RegisterEvent("PLAYER_CONTROL_LOST")
    self:RegisterEvent("PLAYER_CONTROL_GAINED")
    -- Making an inn your home completes the "set hearth" step even if the guide's town
    -- name differs from the game's inn name.
    self:RegisterEvent("HEARTHSTONE_BOUND", function()
        self:CompleteCurrent("SETHEARTH")
        self:RequestAdvance()
    end)
    self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
    -- Map pins
    self:RegisterEvent("ZONE_CHANGED_NEW_AREA", function() ns.QuestPins:OnZoneChanged() end)
    -- Registering an event the client doesn't know is an error, so check first.
    if C_EventUtils and C_EventUtils.IsEventValid and C_EventUtils.IsEventValid("QUESTLINE_UPDATE") then
        self:RegisterEvent("QUESTLINE_UPDATE", function() ns.QuestPins:OnQuestLinesUpdated() end)
    end

    -- Each module starts independently so one failure can't take the others down,
    -- and failures are reported in chat even with Lua errors hidden.
    self:SafeInit("window", function() ns.Frame:Create(self.db.profile.frame) end)
    self:SafeInit("arrow", function() ns.Arrow:Create() end)
    self:SafeInit("map pins", function() ns.QuestPins:Enable() end)
    self:SafeInit("pace", function() ns.Pace:Enable() end)  -- also refreshes the window on XP gain
end

function FG:SafeInit(name, fn)
    local ok, err = pcall(fn)
    if not ok then
        self:Print(("|cffff5555%s failed to start:|r %s"):format(name, tostring(err)))
    end
end

---------------------------------------------------------------------------
-- Step state
--
-- Completion is DERIVED from the game every pass, never stored as a one-way flag:
--   * Quest/state steps (accept, complete, turn in, flight path, level, dungeon)
--     are done exactly when the game says so. Abandon a quest and its accept
--     step un-completes; the cursor moves back on its own.
--   * Movement steps (go to, fly, hearth, set hearth) can't be read back from the
--     game, so they count as done when you arrived/landed/cast while they were
--     current ("arrived"), OR when the next quest step after them is already done
--     (you clearly got there). They un-complete with that quest step too.
--   * A manual skip (checkbox / /mq next) overrides any step and is reversible.
-- The current step is simply the first step that isn't done.
---------------------------------------------------------------------------
local MOVEMENT = { GOTO = true, FLY = true, HEARTH = true, SETHEARTH = true }
FG.MOVEMENT = MOVEMENT

function FG:GetProgress(guideName)
    guideName = guideName or self.db.char.activeGuide
    if not guideName then return nil end
    local p = self.db.char.progress[guideName]
    if not p or not p.arrived then
        -- (older saves stored one-way "done" flags; those are discarded)
        p = { index = 1, arrived = {}, skip = {} }
        self.db.char.progress[guideName] = p
    end
    p.done = p.done or {}
    p.undo = p.undo or {} -- stack of { indices = {...}, label = "..." } skip actions
    p.force = p.force or {} -- [index] = true: do this step even though it's grey
    return p
end

function FG:GetActiveSteps()
    local g = self:GetActiveGuide()
    return g and g.steps, self:GetProgress()
end

function FG:GetCurrentStep()
    local steps, p = self:GetActiveSteps()
    return steps and steps[p.index], p and p.index
end

function FG:ChooseGuide(name)
    self.db.char.guidePinned = true -- picked by hand: don't auto-switch away
    self:LoadGuide(name)
end

function FG:LoadGuide(name)
    if not self.guides[name] then
        self:Print(("Unknown guide: %s"):format(tostring(name)))
        return
    end
    self.db.char.activeGuide = name
    local g = self:GetGuide(name)
    if #g.warnings > 0 then
        self:Print(("%d parse warning(s) in '%s' - /mq check"):format(#g.warnings, name))
    end
    self:Advance(true)
    ns.QuestPins:RequestRefresh() -- route highlighting follows the active guide
end

-- Why a step counts as done: "game", "arrived", "implied", "skipped" or nil.
function FG:Evaluate(steps, p)
    local reason = {}
    local guide = self:GetActiveGuide()
    local S = ns.Steps
    local passed = S:ChainPassed(guide)
    local skipGrey = self.db.profile.skipGrey
    local nextQuestDone = false
    for i = #steps, 1, -1 do
        local s = steps[i]
        local r
        if p.skip[i] then
            r = "skipped"
        elseif MOVEMENT[s.type] then
            if s.type == "SETHEARTH" and S:IsSatisfied(s) then r = "game"
            elseif p.arrived[i] then r = "arrived"
            elseif nextQuestDone then r = "implied" end
        elseif S:IsSatisfied(s) then
            r = "game"
        elseif (s.type == "COMPLETE" or s.type == "TURNIN") and s.questID
            and not C_QuestLog.GetLogIndexForQuestID(s.questID) then
            -- You don't have this quest (picked up in an earlier guide you skipped, or
            -- abandoned). Nothing to do here; if its pick-up step is earlier and undone,
            -- the cursor stops there first anyway.
            r = "notinlog"
        elseif s.questID and passed[s.questID] then
            r = "chain"      -- a later quest in its chain is already started/done
        elseif skipGrey and not p.force[i] and S:IsOutleveled(s, guide) then
            r = "outleveled" -- never started and now grey for your level
        end
        reason[i] = r
        if not MOVEMENT[s.type] then nextQuestDone = (r ~= nil) end
    end
    return reason
end

-- Recompute every step's state and move the cursor (forward or back).
function FG:Advance(forceWaypoint)
    local steps, p = self:GetActiveSteps()
    if not steps then
        ns.Frame:Update()
        return ns.Navigation:SetFromStep(nil)
    end

    local before = p.done or {}
    p.done = self:Evaluate(steps, p)

    -- Pace log: record steps that just completed through play. The first evaluation of a
    -- guide in each session only sets the baseline, so steps already done when you log
    -- in (or when a guide loads) aren't recorded at your current level.
    local gname = self.db.char.activeGuide
    self.paceBaseline = self.paceBaseline or {}
    if self.paceBaseline[gname] then
        local newly = {}
        for idx, why in pairs(p.done) do
            if why and not before[idx] then newly[#newly + 1] = idx end
        end
        if #newly > 0 then
            table.sort(newly)
            ns.Pace:RecordSteps(gname, steps, newly, p.done)
        end
    else
        self.paceBaseline[gname] = true
    end

    local i = 1
    while steps[i] and p.done[i] do i = i + 1 end

    local changed = (p.index ~= i)
    p.index = i

    -- Chain into the next guide when this one is finished.
    local g = self:GetActiveGuide()
    if not steps[i] and g.header.next and self.guides[g.header.next] then
        self:Print("Guide complete - loading " .. g.header.next)
        return self:LoadGuide(g.header.next)
    end

    ns.Frame:Update()
    if changed or forceWaypoint then
        ns.Navigation:SetFromStep(steps[i])
    end
end

-- Several events fire in bursts (bags, quest log); coalesce into one pass.
function FG:RequestAdvance()
    if self.advanceTimer then return end
    self.advanceTimer = self:ScheduleTimer(function()
        self.advanceTimer = nil
        self:Advance()
    end, 0.3)
end

function FG:RequestRefresh()
    ns.Frame:Update()
end

-- Movement steps: the game event happened while this step was current.
function FG:CompleteCurrent(stepType)
    local step, index = self:GetCurrentStep()
    if step and step.type == stepType then
        self:GetProgress().arrived[index] = true
        self:Advance()
    end
end

---------------------------------------------------------------------------
-- Skipping (buttons, checkbox, right-click menu) with an undo history
---------------------------------------------------------------------------
local function StepLabel(step)
    return step and (step.text ~= "" and step.text or step.type) or "?"
end

-- Skip a set of steps as ONE undoable action.
function FG:SkipSteps(indices, label)
    local _, p = self:GetActiveSteps()
    if not p then return end
    local newly = {}
    for _, i in ipairs(indices) do
        if not p.done[i] and not p.skip[i] then
            p.skip[i] = true
            newly[#newly + 1] = i
        end
    end
    if #newly == 0 then return end
    table.insert(p.undo, { indices = newly, label = label })
    while #p.undo > 50 do table.remove(p.undo, 1) end
    self:Advance()
end

function FG:CanUndo()
    local _, p = self:GetActiveSteps()
    return p and p.undo[#p.undo]
end

function FG:UndoSkip()
    local _, p = self:GetActiveSteps()
    local action = p and table.remove(p.undo)
    if not action then return end
    for _, i in ipairs(action.indices) do p.skip[i] = nil end
    self:Advance(true)
end

-- Forget a step in any undo entries (it was un-skipped some other way).
local function DropFromUndo(p, index)
    for a = #p.undo, 1, -1 do
        local list = p.undo[a].indices
        for k = #list, 1, -1 do if list[k] == index then table.remove(list, k) end end
        if #list == 0 then table.remove(p.undo, a) end
    end
end

function FG:SkipCurrentStep()
    local step, index = self:GetCurrentStep()
    if step then self:SkipSteps({ index }, "step: " .. StepLabel(step)) end
end

-- All steps (any type) belonging to a quest.
function FG:QuestStepIndices(questID)
    local steps = self:GetActiveSteps()
    local out = {}
    for i, s in ipairs(steps or {}) do
        if s.questID == questID then out[#out + 1] = i end
    end
    return out
end

-- Quests later in the guide that need questID (directly or through a chain).
function FG:DependentQuests(questID)
    local steps = self:GetActiveSteps()
    local blocked, order = { [questID] = true }, {}
    local changed = true
    while changed do
        changed = false
        for _, s in ipairs(steps or {}) do
            if s.type == "ACCEPT" and s.questID and not blocked[s.questID] then
                for _, pre in ipairs(s.pre or {}) do
                    if blocked[pre] then
                        blocked[s.questID] = true
                        order[#order + 1] = s.questID
                        changed = true
                        break
                    end
                end
            end
        end
    end
    return order
end

function FG:SkipQuests(questIDs, label)
    local indices = {}
    for _, q in ipairs(questIDs) do
        for _, i in ipairs(self:QuestStepIndices(q)) do indices[#indices + 1] = i end
    end
    self:SkipSteps(indices, label)
end

-- Skip a whole quest; if other quests depend on it, ask whether to skip them too.
function FG:RequestSkipQuest(questID)
    if not questID then return end
    local name = ns.Steps:QuestName(questID)
    local deps = self:DependentQuests(questID)
    if #deps == 0 then
        return self:SkipQuests({ questID }, "quest: " .. name)
    end
    local depNames = {}
    for _, q in ipairs(deps) do depNames[#depNames + 1] = ns.Steps:QuestName(q) end
    StaticPopupDialogs.MITTENQUEST_SKIP_QUEST = {
        text = "Skip \"%s\"?\n\nThese later quests need it and can't be done without it:\n%s",
        -- Escape/Cancel must never skip anything, so "only this quest" is the alt button.
        button1 = "Skip all",
        button2 = CANCEL,
        button3 = "Only this quest",
        OnAccept = function()
            local all = { questID }
            for _, q in ipairs(deps) do all[#all + 1] = q end
            self:SkipQuests(all, ("quest: %s (+%d dependent)"):format(name, #deps))
        end,
        OnAlt = function()
            self:SkipQuests({ questID }, "quest: " .. name)
        end,
        timeout = 0, whileDead = true, hideOnEscape = true,
    }
    StaticPopup_Show("MITTENQUEST_SKIP_QUEST", name, table.concat(depNames, "\n"))
end

-- Checkbox: skip / un-skip / undo arrival. Game-completed steps can't be toggled
-- (they'd just re-complete) - undo those in game, e.g. by abandoning the quest.
function FG:ToggleStep(index)
    local steps, p = self:GetActiveSteps()
    if not steps or not steps[index] then return end
    local why = p.done[index]
    if why == "game" then
        self:Print("That step is done in-game; undo it in-game (e.g. abandon the quest).")
        ns.Frame:Update()
    elseif why == "implied" or why == "chain" then
        self:Print("That step counts as done because you're already past it in the quest chain.")
        ns.Frame:Update()
    elseif why == "outleveled" then
        p.force[index] = true          -- do it anyway; click again to go back to skipping
        self:Advance(true)
    elseif p.force[index] then
        p.force[index] = nil
        self:Advance(true)
    elseif why == "skipped" or why == "arrived" then
        p.skip[index], p.arrived[index] = nil, nil
        DropFromUndo(p, index)
        self:Advance(true)
    else
        self:SkipSteps({ index }, "step: " .. StepLabel(steps[index]))
    end
end

-- Quest events just trigger a re-evaluation; state comes from the quest log.
function FG:MarkQuest()
    self:Advance()
end

---------------------------------------------------------------------------
-- Events
---------------------------------------------------------------------------
function FG:PLAYER_ENTERING_WORLD(_, isInitialLogin, isReloadingUi)
    self:CheckGuideFit()
    -- Quest log data may not be ready immediately after load.
    self:ScheduleTimer("Advance", (isInitialLogin or isReloadingUi) and 1.0 or 0.2, true)
    ns.QuestPins:OnZoneChanged()
end

function FG:QUEST_ACCEPTED(_, questID)
    self:MarkQuest(questID, "ACCEPT")
    ns.QuestPins:RequestRefresh()
end

function FG:QUEST_TURNED_IN(_, questID, xpReward)
    ns.Pace:OnQuestTurnedIn(xpReward)
    self:MarkQuest(questID, "TURNIN")
    ns.QuestPins:RequestRefresh()
end

-- Abandons and level-ups change both the step cursor and which pins are available.
function FG:OnQuestListChanged(event)
    if event == "PLAYER_LEVEL_UP" then
        -- UnitLevel updates a moment after the event fires.
        self:ScheduleTimer(function() self:CheckGuideFit(); self:Advance() end, 0.5)
    end
    self:RequestAdvance()
    ns.QuestPins:RequestRefresh()
end

-- Record every flight path the character knows whenever a flight master is opened.
function FG:TAXIMAP_OPENED()
    local mapID = GetTaxiMapID and GetTaxiMapID()
    local nodes = mapID and C_TaxiMap.GetAllTaxiNodes(mapID) or {}
    for _, node in ipairs(nodes) do
        if node.state == Enum.FlightPathState.Current or node.state == Enum.FlightPathState.Reachable then
            ns.Steps:RecordFlightNode(node.name)
        end
    end
    -- Talking to the flight master the guide sent you to counts as learning that path,
    -- even if the guide's town name doesn't exactly match the game's node name.
    local step = self:GetCurrentStep()
    if step and step.type == "GETFP" and step.node then
        ns.Steps:RecordFlightNode(step.node)
    end
    self:Advance()
end

-- Flight completion: control is lost on takeoff and regained on landing.
function FG:PLAYER_CONTROL_LOST()
    self:ScheduleTimer(function() if UnitOnTaxi("player") then self.onTaxi = true end end, 0.5)
end

function FG:PLAYER_CONTROL_GAINED()
    if self.onTaxi then
        self.onTaxi = false
        self:CompleteCurrent("FLY")
    end
end

function FG:UNIT_SPELLCAST_SUCCEEDED(_, unit, _, spellID)
    if unit ~= "player" then return end
    -- Midnight-era APIs can return secret values; never compare those.
    if issecretvalue and issecretvalue(spellID) then return end
    if HEARTH_SPELLS[spellID] then self:CompleteCurrent("HEARTH") end
end

---------------------------------------------------------------------------
-- Slash commands
---------------------------------------------------------------------------
local HELP = {
    "|cff33ccff/mq|r show | hide | toggle",
    "|cff33ccff/mq|r lock | unlock | reset",
    "|cff33ccff/mq|r skip | back        - skip the current step / undo the last skip",
    "|cff33ccff/mq|r unskip             - clear all manual skips",
    "|cff33ccff/mq|r debug              - print step/arrow state (for bug reports)",
    "|cff33ccff/mq|r list               - list registered guides",
    "|cff33ccff/mq|r load <guide name>  - switch guide",
    "|cff33ccff/mq|r arrow              - toggle the direction arrow",
    "|cff33ccff/mq|r pins | minimap | lowlevel - toggle quest pins / minimap pins / trivial quests",
    "|cff33ccff/mq|r check              - validate route (prereqs, flight paths, dungeons, drops)",
}

function FG:HandleSlash(input)
    local cmd = self:GetArgs(input or "", 1)
    cmd = cmd and cmd:lower() or ""
    local F = ns.Frame
    local cfg = self.db.profile.frame

    if cmd == "" or cmd == "toggle" then F:SetShown(not F:IsShown())
    elseif cmd == "show" then F:SetShown(true)
    elseif cmd == "hide" then F:SetShown(false)
    elseif cmd == "lock" then cfg.locked = true;  self.db.profile.arrow.locked = true;  F:ApplyLock()
    elseif cmd == "unlock" then cfg.locked = false; self.db.profile.arrow.locked = false; F:ApplyLock()
    elseif cmd == "reset" then
        self:ResetFrame()
    elseif cmd == "next" or cmd == "skip" then
        self:SkipCurrentStep()
    elseif cmd == "skipquest" then
        local step = self:GetCurrentStep()
        if step and step.questID then self:RequestSkipQuest(step.questID) end
    elseif cmd == "prev" or cmd == "back" or cmd == "undo" then
        self:UndoSkip()
    elseif cmd == "unskip" then
        self:ClearSkips()
    elseif cmd == "debug" then
        self:PrintDebug()
    elseif cmd == "list" then
        for _, name in ipairs(self.guideOrder) do self:Print(name) end
    elseif cmd == "load" then
        self:ChooseGuide(input:match("^%s*%S+%s+(.-)%s*$"))
    elseif cmd == "arrow" then
        ns.Arrow:SetEnabled(not self.db.profile.arrow.enabled)
        ns.Navigation:SetFromStep(self:GetCurrentStep()) -- re-route TomTom/super-track handoff
    elseif cmd == "pins" or cmd == "minimap" or cmd == "lowlevel" then
        local pc = self.db.profile.pins
        local key = (cmd == "pins" and "enabled") or (cmd == "minimap" and "minimap") or "showLowLevel"
        pc[key] = not pc[key]
        self:Print(("%s %s"):format(cmd, pc[key] and "on" or "off"))
        ns.QuestPins:Refresh()
    elseif cmd == "check" then
        self:CheckRoute()
    else
        for _, line in ipairs(HELP) do self:Print(line) end
    end
end

---------------------------------------------------------------------------
-- Diagnostics
---------------------------------------------------------------------------
function FG:PrintDebug()
    local step, index = self:GetCurrentStep()
    local g = self:GetActiveGuide()
    self:Print(("guide=%s step=%s/%s"):format(tostring(g and g.name), tostring(index), tostring(g and #g.steps)))
    if step then
        self:Print(("  type=%s quest=%s text=%s coords=%s"):format(step.type, tostring(step.questID), tostring(step.text),
            step.coords and ("%.1f,%.1f map %d"):format(step.coords.x, step.coords.y, step.coords.mapID) or "none"))
    end
    local a = ns.Arrow.f
    self:Print(("  arrow: enabled=%s created=%s shown=%s visible=%s"):format(tostring(self.db.profile.arrow.enabled),
        tostring(a ~= nil), tostring(a and a:IsShown()), tostring(a and a:IsVisible())))
    local active = ns.Navigation:GetActive()
    if active then
        local angle, dist = ns.Navigation:VectorTo(active.point)
        self:Print(("  target(%s): %.1f,%.1f map %d  dist=%s"):format(active.kind, active.point.x, active.point.y,
            active.point.mapID, dist and ("%d yd"):format(dist) or "n/a (other continent/instance)"))
    else
        self:Print("  target: none - this step has no location")
    end
    local stats = ns.QuestPins:Stats()
    self:Print(("  pins: enabled=%s known quests=%d (learned %d) on this map=%d available=%d locked=%d"):format(
        tostring(self.db.profile.pins.enabled), stats.total, stats.learned, stats.onMap, stats.available, stats.locked))
    local mapID = C_Map.GetBestMapForUnit("player")
    self:Print(("  player map=%s facing=%s indoors=%s"):format(tostring(mapID), tostring(GetPlayerFacing()), tostring(IsIndoors())))
end

---------------------------------------------------------------------------
-- Actions shared by the gear menu, addon-compartment button and slash commands
---------------------------------------------------------------------------
function FG:ResetFrame()
    self.db.profile.frame = CopyTable(defaults.profile.frame)
    self.db.profile.arrow = CopyTable(defaults.profile.arrow)
    ns.Frame:ApplySettings(self.db.profile.frame)
    ns.Arrow:ApplySettings()
end

function FG:ClearSkips()
    local p = self:GetProgress()
    if p then wipe(p.skip); wipe(p.undo); self:Advance(true) end
end

function FG:CheckRoute()
    local g = self:GetActiveGuide()
    if not g then return self:Print("No guide loaded.") end
    local issues = ns.Parser:Validate(g.allSteps, g.header, g.name)
    for _, w in ipairs(g.warnings) do self:Print("|cffff5555parse|r " .. w) end
    for _, w in ipairs(issues) do self:Print("|cffffd100route|r " .. w) end
    if #issues + #g.warnings == 0 then self:Print("Route looks clean.") end
end

-- Addon compartment (the addon list button by the minimap): click to show/hide.
function MittenQuest_OnCompartmentClick()
    ns.Frame:SetShown(not ns.Frame:IsShown())
end

function MittenQuest_OnCompartmentEnter(_, button)
    GameTooltip:SetOwner(button, "ANCHOR_LEFT")
    GameTooltip:AddLine("MittenQuest")
    GameTooltip:AddLine("Click to show or hide the guide.", 1, 1, 1)
    GameTooltip:Show()
end

function MittenQuest_OnCompartmentLeave()
    GameTooltip:Hide()
end

---------------------------------------------------------------------------
-- Guide selection for the character's level / faction / race
---------------------------------------------------------------------------
function FG:GuideFitsPlayer(g)
    local h = g.header
    if h.faction and h.faction:upper() ~= (UnitFactionGroup("player") or ""):upper() then return false end
    if h.raceSet then
        local _, raceFile = UnitRace("player")
        if not h.raceSet[(raceFile or ""):upper()] then return false end
    end
    return true
end

-- "fits", "below" (you've outleveled it), "above" (too high) or "unknown"
function FG:GuideLevelState(g)
    local h, level = g.header, UnitLevel("player")
    if not h.levelMax then return "unknown" end
    if level > h.levelMax then return "below" end
    if h.levelMin and level < h.levelMin then return "above" end
    return "fits"
end

-- Best guide: matching faction/race, level range containing yours;
-- otherwise the next guide above your level.
function FG:BestGuideForPlayer()
    local best, bestMin, highest, highestMax
    for _, name in ipairs(self.guideOrder) do
        local g = self:GetGuide(name)
        if self:GuideFitsPlayer(g) then
            local state = self:GuideLevelState(g)
            if state == "fits" then return name end
            if state == "above" and (not bestMin or g.header.levelMin < bestMin) then
                best, bestMin = name, g.header.levelMin
            end
            if state == "below" and (not highestMax or g.header.levelMax > highestMax) then
                highest, highestMax = name, g.header.levelMax
            end
        end
    end
    -- Past every guide (e.g. level 60): stay on the last one rather than restarting at 1.
    return best or highest
end

-- On login / level-up: start the right guide, or move on from an outleveled one.
function FG:CheckGuideFit()
    local current = self:GetActiveGuide()
    local best = self:BestGuideForPlayer()
    if not current then
        if best then self:LoadGuide(best) elseif self.guideOrder[1] then self:LoadGuide(self.guideOrder[1]) end
        return
    end
    if self.db.char.guidePinned or not best or best == current.name then return end
    if self:GuideLevelState(current) == "below" or not self:GuideFitsPlayer(current) then
        self:Print(("Switched to |cffffd100%s|r for your level. Change guides in the gear menu."):format(best))
        self:LoadGuide(best)
    end
end

-- One-line status shown at the top of the guide window (nil when all is well).
function FG:GuideBanner()
    local g = self:GetActiveGuide()
    if not g then return "No guide for your character yet." end
    local steps, p = self:GetActiveSteps()
    local h = g.header
    if not self:GuideFitsPlayer(g) then
        return "This guide is for a different faction or race."
    end
    if self:GuideLevelState(g) == "below" then
        return ("You're level %d - this guide covers %d-%d. Grey quests are skipped; pick another guide in the gear menu.")
            :format(UnitLevel("player"), h.levelMin or 1, h.levelMax)
    end
    if steps and p.index > #steps then return "Guide complete!" end
    return ns.Pace:Banner()
end
