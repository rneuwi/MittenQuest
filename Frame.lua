--[[
    MittenQuest - Frame.lua
    Draggable, resizable, semi-transparent step list.
    Uses BackdropTemplate + SetResizeBounds (SetMinResize/SetMaxResize are gone).
]]

local _, ns = ...
local FG = ns.FG

local Frame = {}
ns.Frame = Frame

-- Title bar is two lines: guide name + buttons on top, pace + step count below.
local PAD, ROW_GAP, TITLE_H, FOOTER_H = 8, 4, 38, 24
local LINE1_Y, LINE2_Y = -11, -28   -- vertical centres of the two title lines

local WHY_TEXT = {
    game    = "Done in-game. Undo it in-game (e.g. abandon the quest) and the guide steps back.",
    arrived = "You got there. Click to undo.",
    implied = "Done because the next quest step is already done.",
    chain   = "Done because you're already further along this quest chain.",
    exclusive = "Done: you have another version of this quest (or took the other choice), so this one can't be taken.",
    notoffered = "Skipped: its quest giver didn't offer it when you talked to them (moved or removed in Forever), or it needs a quest that wasn't offered. Click to bring it back.",
    notinlog = "Skipped: this quest isn't in your quest log. Pick it up and this step comes back.",
    outleveled = "Skipped automatically: this quest (or the mobs it has you kill) is grey for your level and you never started it. Click to do it anyway.",
    underleveled = "Held for now: this dungeon run is planned for a higher level than you are (you're behind the route's pace). It comes back once you catch up. Click the dungeon step to do the run now anyway.",
    skipped = "Skipped manually. Click to un-skip.",
    none    = "Completes automatically. Click only to skip it.",
}
local MIN_W, MIN_H, MAX_W, MAX_H = 240, 150, 700, 900

---------------------------------------------------------------------------
-- Construction
---------------------------------------------------------------------------
function Frame:Create(cfg)
    if self.f then return end
    local f = CreateFrame("Frame", "MittenQuestFrame", UIParent, "BackdropTemplate")
    self.f = f
    f:SetFrameStrata("MEDIUM")
    f:SetClampedToScreen(true)
    f:SetMovable(true)
    f:SetResizable(true)
    f:SetResizeBounds(MIN_W, MIN_H, MAX_W, MAX_H)
    f:SetBackdrop({
        bgFile   = "Interface\\Buttons\\WHITE8X8",
        edgeFile = "Interface\\Buttons\\WHITE8X8",
        edgeSize = 1,
    })
    f:SetBackdropBorderColor(0, 0, 0, 0.9)

    -- Title bar doubles as the drag handle.
    local title = CreateFrame("Frame", nil, f)
    title:SetPoint("TOPLEFT"); title:SetPoint("TOPRIGHT")
    title:SetHeight(TITLE_H)
    title:EnableMouse(true)
    title:RegisterForDrag("LeftButton")
    title:SetScript("OnDragStart", function() if not FG.db.profile.frame.locked then f:StartMoving() end end)
    title:SetScript("OnDragStop", function() f:StopMovingOrSizing(); self:SavePosition() end)

    local titleBg = title:CreateTexture(nil, "BACKGROUND")
    titleBg:SetAllPoints()
    titleBg:SetColorTexture(0, 0, 0, 0.6)

    -- Line 2: pace tag on the left, "Step 12/141" on the right.
    self.stepText = title:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    self.stepText:SetPoint("RIGHT", title, "TOPRIGHT", -PAD, LINE2_Y)
    self.stepText:SetJustifyH("RIGHT")
    self.stepText:SetWordWrap(false)

    self.paceText = title:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    self.paceText:SetPoint("LEFT", title, "TOPLEFT", PAD, LINE2_Y)
    self.paceText:SetPoint("RIGHT", self.stepText, "LEFT", -6, 0)
    self.paceText:SetJustifyH("LEFT")
    self.paceText:SetWordWrap(false)

    -- Line 1: the guide name gets the bar up to the buttons and is cut with "..." when too long.
    self.titleText = title:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    self.titleText:SetPoint("LEFT", title, "TOPLEFT", PAD, LINE1_Y)
    self.titleText:SetJustifyH("LEFT")
    self.titleText:SetWordWrap(false)

    -- Full guide name on hover (the bar cuts long ones).
    title:SetScript("OnEnter", function()
        local name = FG.db.char.activeGuide
        if not name then return end
        GameTooltip:SetOwner(title, "ANCHOR_TOP")
        GameTooltip:AddLine(name, 1, 0.82, 0, true)
        local steps, p = FG:GetActiveSteps()
        if steps and p then
            GameTooltip:AddLine(("Step %d of %d"):format(math.min(p.index, #steps), #steps), 1, 1, 1)
        end
        GameTooltip:Show()
    end)
    title:SetScript("OnLeave", GameTooltip_Hide)

    local close = CreateFrame("Button", nil, title, "UIPanelCloseButtonNoScripts")
    close:SetSize(20, 20)
    close:SetPoint("RIGHT", title, "TOPRIGHT", -1, LINE1_Y)
    close:SetScript("OnClick", function() self:SetShown(false) end)

    -- Minimize: collapse to just the title bar (pace + step count stay visible).
    local minimize = CreateFrame("Button", nil, title)
    minimize:SetSize(14, 14)
    minimize:SetPoint("RIGHT", close, "LEFT", -2, 0)
    minimize:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
    minimize:SetScript("OnClick", function() self:SetMinimized(not FG.db.profile.frame.minimized) end)
    minimize:SetScript("OnEnter", function(btn)
        GameTooltip:SetOwner(btn, "ANCHOR_TOP")
        GameTooltip:AddLine(FG.db.profile.frame.minimized and "Expand" or "Minimize")
        GameTooltip:Show()
    end)
    minimize:SetScript("OnLeave", GameTooltip_Hide)
    self.minimizeBtn = minimize

    -- Gear: every setting that used to need a slash command.
    local gear = CreateFrame("Button", nil, title)
    gear:SetSize(16, 16)
    gear:SetPoint("RIGHT", minimize, "LEFT", -2, 0)
    gear:SetNormalTexture("Interface\\Buttons\\UI-OptionsButton")
    gear:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
    gear:SetScript("OnClick", function(btn) self:ShowSettingsMenu(btn) end)
    gear:SetScript("OnEnter", function(btn)
        GameTooltip:SetOwner(btn, "ANCHOR_TOP")
        GameTooltip:AddLine("Settings & guides")
        GameTooltip:Show()
    end)
    gear:SetScript("OnLeave", GameTooltip_Hide)
    self.titleText:SetPoint("RIGHT", gear, "LEFT", -6, 0)

    -- Content area holding step rows.
    self.content = CreateFrame("Frame", nil, f)
    self.content:SetPoint("TOPLEFT", PAD, -(TITLE_H + PAD))
    self.content:SetPoint("BOTTOMRIGHT", -PAD, FOOTER_H + PAD)

    -- Status banner (outleveled guide, wrong faction, guide complete).
    self.banner = self.content:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    self.banner:SetPoint("TOPLEFT")
    self.banner:SetPoint("TOPRIGHT")
    self.banner:SetJustifyH("LEFT")
    self.banner:SetWordWrap(true)
    self.banner:SetTextColor(1, 0.67, 0.25)

    -- Footer button bar: Skip step / Skip quest / Undo.
    local footer = CreateFrame("Frame", nil, f)
    footer:SetPoint("BOTTOMLEFT", PAD - 2, 4)
    footer:SetPoint("BOTTOMRIGHT", -18, 4) -- leave room for the resize grip
    footer:SetHeight(FOOTER_H - 4)
    self.footer = footer

    local function MakeButton(text, tooltipFn, onClick)
        local b = CreateFrame("Button", nil, footer, "UIPanelButtonTemplate")
        b:SetHeight(FOOTER_H - 4)
        b:SetText(text)
        b:GetFontString():SetTextScale(0.85)
        b:SetScript("OnClick", onClick)
        b:SetScript("OnEnter", function()
            GameTooltip:SetOwner(b, "ANCHOR_TOP")
            GameTooltip:AddLine(tooltipFn(), 1, 1, 1, true)
            GameTooltip:Show()
        end)
        b:SetScript("OnLeave", GameTooltip_Hide)
        return b
    end

    -- Both act on the step the arrow points at (FG:GetTargetStep), which can be a nearer
    -- upcoming step rather than the current one.
    self.btnSkip = MakeButton("Skip step", function()
        local step = FG:GetTargetStep()
        return step and ("Skip: " .. (step.text or step.type)) or "Nothing to skip"
    end, function() FG:SkipCurrentStep() end)

    self.btnSkipQuest = MakeButton("Skip quest", function()
        local step = FG:GetTargetStep()
        if step and step.questID then
            return "Skip every step of \"" .. ns.Steps:QuestName(step.questID) .. "\" (accept, objectives, turn-in)."
        end
        return "The step the arrow points at isn't a quest step."
    end, function()
        local step = FG:GetTargetStep()
        if step and step.questID then FG:RequestSkipQuest(step.questID) end
    end)

    self.btnUndo = MakeButton("Undo skip", function()
        local last = FG:CanUndo()
        return last and ("Undo skip of " .. last.label) or "Nothing to undo"
    end, function() FG:UndoSkip() end)

    self.btnSkip:SetPoint("LEFT", footer, "LEFT", 0, 0)
    self.btnSkipQuest:SetPoint("LEFT", self.btnSkip, "RIGHT", 4, 0)
    self.btnUndo:SetPoint("LEFT", self.btnSkipQuest, "RIGHT", 4, 0)
    self.btnUndo:SetPoint("RIGHT", footer, "RIGHT", 0, 0)
    footer:SetScript("OnSizeChanged", function(_, w)
        local each = (w - 8) / 3
        self.btnSkip:SetWidth(each)
        self.btnSkipQuest:SetWidth(each)
    end)

    -- Bottom-right resize grip.
    local grip = CreateFrame("Button", nil, f)
    grip:SetSize(14, 14)
    grip:SetPoint("BOTTOMRIGHT", -2, 2)
    grip:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
    grip:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
    grip:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
    grip:SetScript("OnMouseDown", function() if not FG.db.profile.frame.locked then f:StartSizing("BOTTOMRIGHT") end end)
    grip:SetScript("OnMouseUp", function() f:StopMovingOrSizing(); self:SavePosition() end)
    self.grip = grip

    f:SetScript("OnSizeChanged", function() self:Layout() end)

    self.rows = {}
    self:ApplySettings(cfg)
end

---------------------------------------------------------------------------
-- Rows (pooled)
---------------------------------------------------------------------------
local function CreateRow(parent)
    local row = CreateFrame("Frame", nil, parent)

    row.check = CreateFrame("CheckButton", nil, row, "UICheckButtonTemplate")
    row.check:SetSize(18, 18)
    row.check:SetPoint("TOPLEFT", 0, 1)
    row.check:SetScript("OnClick", function(btn)
        if row.stepIndex then FG:ToggleStep(row.stepIndex) end
    end)
    row.check:SetScript("OnEnter", function(btn)
        local why = row.doneReason
        GameTooltip:SetOwner(btn, "ANCHOR_LEFT")
        GameTooltip:AddLine(WHY_TEXT[why or "none"], 1, 1, 1, true)
        GameTooltip:Show()
    end)
    row.check:SetScript("OnLeave", GameTooltip_Hide)

    -- Right-click any step for skip / un-skip options.
    row:EnableMouse(true)
    row:SetScript("OnMouseUp", function(_, button)
        if button == "RightButton" and row.stepIndex then Frame:ShowStepMenu(row) end
    end)

    row.text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    row.text:SetPoint("TOPLEFT", row.check, "TOPRIGHT", 2, -3)
    row.text:SetJustifyH("LEFT")
    row.text:SetJustifyV("TOP")
    row.text:SetWordWrap(true)

    -- Detail line: prereqs, drop progress, dungeon checklist, FP warnings.
    row.sub = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    row.sub:SetPoint("TOPLEFT", row.text, "BOTTOMLEFT", 6, -2)
    row.sub:SetJustifyH("LEFT")
    row.sub:SetJustifyV("TOP")
    row.sub:SetWordWrap(true)
    row.sub:SetTextScale(0.9)

    -- Fade-out animation for completed steps.
    row.fade = row:CreateAnimationGroup()
    local a = row.fade:CreateAnimation("Alpha")
    a:SetFromAlpha(1); a:SetToAlpha(0.35); a:SetDuration(0.6); a:SetSmoothing("OUT")
    row.fade:SetScript("OnFinished", function() row:SetAlpha(0.35) end)

    return row
end

function Frame:GetRow(i)
    local row = self.rows[i]
    if not row then
        row = CreateRow(self.content)
        self.rows[i] = row
    end
    return row
end

---------------------------------------------------------------------------
-- Right-click menu (modern MenuUtil)
---------------------------------------------------------------------------
function Frame:ShowStepMenu(row)
    if not (MenuUtil and MenuUtil.CreateContextMenu) then return end
    local steps, p = FG:GetActiveSteps()
    local index = row.stepIndex
    local step = steps and steps[index]
    if not step then return end
    local why = p.done[index]

    MenuUtil.CreateContextMenu(row, function(_, root)
        root:CreateTitle(step.text ~= "" and step.text or step.type)
        if why == "skipped" or why == "arrived" then
            root:CreateButton("Un-skip this step", function() FG:ToggleStep(index) end)
        elseif not why then
            root:CreateButton("Skip this step", function() FG:SkipSteps({ index }, "step: " .. (step.text or step.type)) end)
        end
        if step.questID then
            root:CreateButton("Skip whole quest", function() FG:RequestSkipQuest(step.questID) end)
        end
        if FG:CanUndo() then
            root:CreateButton("Undo last skip", function() FG:UndoSkip() end)
        end
    end)
end

function Frame:ShowSettingsMenu(owner)
    if not (MenuUtil and MenuUtil.CreateContextMenu) then return end
    local prof = FG.db.profile
    local function toggle(tbl, key, after)
        return function() return tbl[key] end, function()
            tbl[key] = not tbl[key]
            if after then after() end
        end
    end

    MenuUtil.CreateContextMenu(owner, function(_, root)
        local guides = root:CreateButton("Guide")
        for _, name in ipairs(FG.guideOrder) do
            guides:CreateRadio(name, function() return FG.db.char.activeGuide == name end,
                function() FG:ChooseGuide(name) end)
        end

        guides:CreateDivider()
        guides:CreateButton("Start this guide over", function() FG:RestartGuide() end)
        guides:CreateCheckbox("Pick automatically for my level", function() return not FG.db.char.guidePinned end,
            function()
                FG.db.char.guidePinned = not FG.db.char.guidePinned
                if not FG.db.char.guidePinned then FG:CheckGuideFit() end
            end)
        root:CreateCheckbox("Skip grey quests I never started", toggle(prof, "skipGrey", function() FG:Advance(true) end))

        root:CreateDivider()
        root:CreateTitle("Window")
        root:CreateCheckbox("Lock position & size", toggle(prof.frame, "locked", function()
            prof.arrow.locked = prof.frame.locked
            self:ApplyLock()
        end))
        root:CreateCheckbox("Fade completed steps", toggle(prof, "fadeCompleted", function() self:Update() end))
        root:CreateButton("Reset position", function() FG:ResetFrame() end)

        root:CreateDivider()
        root:CreateTitle("Navigation")
        root:CreateCheckbox("Direction arrow", function() return prof.arrow.enabled end, function()
            ns.Arrow:SetEnabled(not prof.arrow.enabled)
            ns.Navigation:SetFromStep(FG:GetCurrentStep())
        end)
        root:CreateCheckbox("Map waypoint for each step", toggle(prof, "autoWaypoint", function()
            ns.Navigation:SetFromStep(FG:GetCurrentStep())
        end))
        root:CreateCheckbox("Arrow goes to the nearest step I can do", toggle(prof, "nearestFirst", function()
            ns.Navigation:SetFromStep(FG:GetCurrentStep())
        end))

        root:CreateDivider()
        root:CreateTitle("Quests (hold Shift to do it by hand)")
        root:CreateCheckbox("Say if a quest is on my route", toggle(prof, "routeNote"))
        root:CreateCheckbox("Auto pick up quests on my route", toggle(prof.auto, "accept"))
        root:CreateCheckbox("Auto turn in completed quests", toggle(prof.auto, "turnin"))
        root:CreateCheckbox("Auto accept party-shared and escort quests", toggle(prof.auto, "shared"))

        root:CreateDivider()
        root:CreateTitle("Quest pins")
        local refresh = function() ns.QuestPins:Refresh() end
        root:CreateCheckbox("Show \"!\" on world map", toggle(prof.pins, "enabled", refresh))
        root:CreateCheckbox("Show on minimap", toggle(prof.pins, "minimap", refresh))
        root:CreateCheckbox("Show quests I'm too low for (greyed)", toggle(prof.pins, "showUnavailable", refresh))
        root:CreateCheckbox("Show low-level (grey) quests", toggle(prof.pins, "showLowLevel", refresh))
        root:CreateCheckbox("Show routes of quest givers who walk around", toggle(prof.pins, "paths", refresh))

        root:CreateDivider()
        root:CreateTitle("World map")
        local layers = function() ns.MapLayers:Refresh() end
        root:CreateCheckbox("Show my flight points", toggle(prof.pins, "flightPoints", layers))
        root:CreateCheckbox("Show zone level ranges", toggle(prof.pins, "zoneLevels", layers))

        root:CreateDivider()
        root:CreateTitle("Pace")
        root:CreateCheckbox("Show pace and grind warnings", toggle(prof.pace, "show", function() self:Update() end))
        root:CreateTitle(("Pace log: %d steps recorded"):format(ns.Pace:Count()))
        root:CreateButton("Clear pace log", function() ns.Pace:Clear() end)

        root:CreateDivider()
        root:CreateButton("Check this route for problems", function() FG:CheckRoute() end)
        root:CreateButton("Clear all skips", function() FG:ClearSkips() end)
    end)
end

---------------------------------------------------------------------------
-- Rendering
---------------------------------------------------------------------------
function Frame:Update()
    if not self.f then return end
    local steps, p = FG:GetActiveSteps()

    if not steps or #steps == 0 then
        self.titleText:SetText("MittenQuest - no guide loaded")
        self.stepText:SetText("")
        self.paceText:SetText("")
        for _, row in ipairs(self.rows) do row:Hide() end
        self.shownRows = 0
        self:UpdateButtons()
        self:Layout()   -- shows the banner (e.g. no starter guide for this race yet)
        return
    end

    local total = #steps
    self.titleText:SetText(FG.db.char.activeGuide)
    self.paceText:SetText(ns.Pace:Tag() or "")
    self.stepText:SetText(("Step %d/%d"):format(math.min(p.index, total), total))

    -- Show the previous step (faded) for context, then current + upcoming.
    local first = math.max(1, p.index - 1)
    local count = FG.db.profile.visibleSteps
    local shown = 0
    for i = first, math.min(total, first + count - 1) do
        shown = shown + 1
        local row = self:GetRow(shown)
        local step, done = steps[i], p.done[i] and true or false
        row.doneReason = p.done[i]
        local wasDone = row.stepIndex == i and row.wasDone

        row.stepIndex = i
        row.wasDone = done
        local main, sub = ns.Steps:Describe(step)
        row.text:SetText(main)
        row.sub:SetText(sub or "")
        row.sub:SetShown(sub ~= nil)
        row.check:SetChecked(done)

        row.fade:Stop()
        if done and FG.db.profile.fadeCompleted then
            if wasDone then row:SetAlpha(0.35) else row:SetAlpha(1); row.fade:Play() end
        else
            row:SetAlpha(i == p.index and 1 or 0.85)
        end
        row:Show()
    end
    for i = shown + 1, #self.rows do
        self.rows[i]:Hide(); self.rows[i].stepIndex = nil
    end
    self.shownRows = shown
    self:UpdateButtons()
    self:Layout()
end

-- Stack rows top-down; each row's height follows its wrapped text.
function Frame:Layout()
    if not self.content then return end
    local width = self.content:GetWidth()
    if width <= 0 then return end
    local y, maxY = 0, self.content:GetHeight()
    local bannerText = FG:GuideBanner()
    self.banner:SetText(bannerText or "")
    self.banner:SetShown(bannerText ~= nil)
    if bannerText then y = self.banner:GetStringHeight() + 6 end
    for i = 1, (self.shownRows or 0) do
        local row = self.rows[i]
        row.text:SetWidth(width - 22)
        row.sub:SetWidth(width - 28)
        local h = row.text:GetStringHeight() + 4
        if row.sub:IsShown() then h = h + row.sub:GetStringHeight() + 2 end
        h = math.max(18, h)
        row:ClearAllPoints()
        row:SetPoint("TOPLEFT", 0, -y)
        row:SetPoint("RIGHT")
        row:SetHeight(h)
        row:SetShown(y + h <= maxY or i == 1) -- clip rows that don't fit
        y = y + h + ROW_GAP
    end
end

function Frame:UpdateButtons()
    if not self.btnSkip then return end
    local step = FG:GetTargetStep()
    self.btnSkip:SetEnabled(step ~= nil)
    self.btnSkipQuest:SetEnabled(step ~= nil and step.questID ~= nil)
    self.btnUndo:SetEnabled(FG:CanUndo() ~= nil)
end

---------------------------------------------------------------------------
-- Settings / persistence
---------------------------------------------------------------------------
function Frame:ApplySettings(cfg)
    local f = self.f
    f:ClearAllPoints()
    f:SetPoint(cfg.point, UIParent, cfg.relPoint, cfg.x, cfg.y)
    f:SetSize(cfg.width, cfg.height)
    f:SetScale(cfg.scale)
    f:SetBackdropColor(0.05, 0.05, 0.08, cfg.alpha)
    self:ApplyMinimized()
    f:SetShown(cfg.shown)
    self:Update()
end

function Frame:ApplyLock()
    local cfg = FG.db.profile.frame
    self.grip:SetShown(not cfg.locked and not cfg.minimized)
end

-- Collapse to the title bar or restore the full window. The saved height is kept so
-- expanding brings back the size you had.
function Frame:SetMinimized(minimized)
    if not self.f then return end
    local f = self.f
    -- Pin the top-left corner first so the title bar stays put while the height changes
    -- (the default anchor is RIGHT, which would make the bar jump to the middle).
    local left, top = f:GetLeft(), f:GetTop()
    if left and top then
        f:ClearAllPoints()
        f:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", left, top)
    end
    FG.db.profile.frame.minimized = minimized and true or false
    self:ApplyMinimized()
    self:SavePosition()
end

function Frame:ApplyMinimized()
    local cfg = FG.db.profile.frame
    local f, minimized = self.f, cfg.minimized
    self.content:SetShown(not minimized)
    self.footer:SetShown(not minimized)
    if minimized then
        f:SetResizeBounds(MIN_W, TITLE_H, MAX_W, MAX_H)
        f:SetHeight(TITLE_H)
        self.minimizeBtn:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up")
        self.minimizeBtn:SetPushedTexture("Interface\\Buttons\\UI-PlusButton-Down")
    else
        f:SetResizeBounds(MIN_W, MIN_H, MAX_W, MAX_H)
        f:SetHeight(math.max(MIN_H, cfg.height or MIN_H))
        self.minimizeBtn:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up")
        self.minimizeBtn:SetPushedTexture("Interface\\Buttons\\UI-MinusButton-Down")
    end
    self:ApplyLock()
end

function Frame:SavePosition()
    local cfg = FG.db.profile.frame
    local point, _, relPoint, x, y = self.f:GetPoint(1)
    cfg.point, cfg.relPoint, cfg.x, cfg.y = point, relPoint, x, y
    cfg.width = self.f:GetWidth()
    -- While minimized the frame is only the title bar; keep the full height for expanding.
    if not cfg.minimized then
        cfg.height = self.f:GetHeight()
    end
end

function Frame:SetShown(shown)
    if not self.f then return end
    self.f:SetShown(shown)
    FG.db.profile.frame.shown = shown
end

function Frame:IsShown()
    return self.f and self.f:IsShown()
end
