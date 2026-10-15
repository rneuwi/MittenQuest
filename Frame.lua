--[[
    MittenQuest - Frame.lua
    Draggable, resizable, semi-transparent step list.
    Uses BackdropTemplate + SetResizeBounds (SetMinResize/SetMaxResize are gone).
]]

local _, ns = ...
local FG = ns.FG

local Frame = {}
ns.Frame = Frame

local PAD, ROW_GAP, TITLE_H, FOOTER_H = 8, 4, 22, 24

local WHY_TEXT = {
    game    = "Done in-game. Undo it in-game (e.g. abandon the quest) and the guide steps back.",
    arrived = "You got there. Click to undo.",
    implied = "Done because the next quest step is already done.",
    chain   = "Done because you're already further along this quest chain.",
    notinlog = "Skipped: this quest isn't in your quest log. Pick it up and this step comes back.",
    outleveled = "Skipped automatically: this quest is grey for your level and you never started it. Click to do it anyway.",
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

    self.titleText = title:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    self.titleText:SetPoint("LEFT", PAD, 0)
    self.titleText:SetPoint("RIGHT", -44, 0)
    self.titleText:SetJustifyH("LEFT")
    self.titleText:SetWordWrap(false)

    local close = CreateFrame("Button", nil, title, "UIPanelCloseButtonNoScripts")
    close:SetSize(20, 20)
    close:SetPoint("RIGHT", -1, 0)
    close:SetScript("OnClick", function() self:SetShown(false) end)

    -- Gear: every setting that used to need a slash command.
    local gear = CreateFrame("Button", nil, title)
    gear:SetSize(16, 16)
    gear:SetPoint("RIGHT", close, "LEFT", -2, 0)
    gear:SetNormalTexture("Interface\\Buttons\\UI-OptionsButton")
    gear:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
    gear:SetScript("OnClick", function(btn) self:ShowSettingsMenu(btn) end)
    gear:SetScript("OnEnter", function(btn)
        GameTooltip:SetOwner(btn, "ANCHOR_TOP")
        GameTooltip:AddLine("Settings & guides")
        GameTooltip:Show()
    end)
    gear:SetScript("OnLeave", GameTooltip_Hide)

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

    self.btnSkip = MakeButton("Skip step", function()
        local step = FG:GetCurrentStep()
        return step and ("Skip: " .. (step.text or step.type)) or "Nothing to skip"
    end, function() FG:SkipCurrentStep() end)

    self.btnSkipQuest = MakeButton("Skip quest", function()
        local step = FG:GetCurrentStep()
        if step and step.questID then
            return "Skip every step of \"" .. ns.Steps:QuestName(step.questID) .. "\" (accept, objectives, turn-in)."
        end
        return "The current step isn't a quest step."
    end, function()
        local step = FG:GetCurrentStep()
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

        root:CreateDivider()
        root:CreateTitle("Quest pins")
        local refresh = function() ns.QuestPins:Refresh() end
        root:CreateCheckbox("Show \"!\" on world map", toggle(prof.pins, "enabled", refresh))
        root:CreateCheckbox("Show on minimap", toggle(prof.pins, "minimap", refresh))
        root:CreateCheckbox("Show locked quests (greyed)", toggle(prof.pins, "showUnavailable", refresh))
        root:CreateCheckbox("Show low-level (grey) quests", toggle(prof.pins, "showLowLevel", refresh))

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
        for _, row in ipairs(self.rows) do row:Hide() end
        self:UpdateButtons()
        return
    end

    local total = #steps
    self.titleText:SetText(("%s  |cff999999%d/%d|r"):format(FG.db.char.activeGuide, math.min(p.index, total), total))

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
    local step = FG:GetCurrentStep()
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
    self:ApplyLock()
    f:SetShown(cfg.shown)
    self:Update()
end

function Frame:ApplyLock()
    self.grip:SetShown(not FG.db.profile.frame.locked)
end

function Frame:SavePosition()
    local cfg = FG.db.profile.frame
    local point, _, relPoint, x, y = self.f:GetPoint(1)
    cfg.point, cfg.relPoint, cfg.x, cfg.y = point, relPoint, x, y
    cfg.width, cfg.height = self.f:GetSize()
end

function Frame:SetShown(shown)
    if not self.f then return end
    self.f:SetShown(shown)
    FG.db.profile.frame.shown = shown
end

function Frame:IsShown()
    return self.f and self.f:IsShown()
end
