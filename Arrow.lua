--[[
    ForeverGuide - Arrow.lua
    On-screen direction arrow. Points at Navigation's active point (path point,
    cave entrance, quest location or step target) relative to where the player
    is facing, with distance, ETA and a label for what it's pointing at.
]]

local _, ns = ...
local FG = ns.FG
local Arrow = {}
ns.Arrow = Arrow

local ARROW_TEX = "Interface\\AddOns\\ForeverGuide\\Media\\Arrow"
local CHECK_TEX = "Interface\\RaidFrame\\ReadyCheck-Ready"
local THROTTLE = 0.03
local KIND_PREFIX = { entrance = "|cffffd100", path = "|cffb388ff", quest = "|cff4fc3f7" }

local function Lerp(a, b, t) return a + (b - a) * t end

-- Green when on course, through yellow, to red when facing away.
local function HeadingColor(offset)
    local t = math.min(1, math.abs(offset) / math.pi)
    if t < 0.5 then
        return Lerp(0.3, 1, t * 2), 1, Lerp(0.3, 0.1, t * 2)
    end
    return 1, Lerp(1, 0.25, (t - 0.5) * 2), 0.1
end

local function FormatDistance(yards)
    if yards >= 1000 then return ("%.1fk yd"):format(yards / 1000) end
    return ("%d yd"):format(yards)
end

local function FormatETA(yards)
    local speed = GetUnitSpeed("player")
    if not speed or speed <= 0 then return "" end
    local s = math.floor(yards / speed + 0.5)
    if s >= 60 then return (" - %d:%02d"):format(math.floor(s / 60), s % 60) end
    return (" - %ds"):format(s)
end

function Arrow:Create()
    if self.f then return end
    local f = CreateFrame("Button", "ForeverGuideArrow", UIParent)
    self.f = f
    f:SetSize(64, 90)
    f:SetFrameStrata("MEDIUM")
    f:SetClampedToScreen(true)
    f:SetMovable(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    -- Read settings fresh each time: "Reset position" replaces the table.
    f:SetScript("OnDragStart", function() if not FG.db.profile.arrow.locked then f:StartMoving() end end)
    f:SetScript("OnDragStop", function()
        f:StopMovingOrSizing()
        local c = FG.db.profile.arrow
        local point, _, relPoint, x, y = f:GetPoint(1)
        c.point, c.relPoint, c.x, c.y = point, relPoint, x, y
    end)

    self.tex = f:CreateTexture(nil, "ARTWORK")
    self.tex:SetSize(48, 48)
    self.tex:SetPoint("TOP", 0, -2)
    self.tex:SetTexture(ARROW_TEX)

    self.dist = f:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    self.dist:SetPoint("TOP", self.tex, "BOTTOM", 0, -2)

    self.label = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    self.label:SetPoint("TOP", self.dist, "BOTTOM", 0, -1)
    self.label:SetWidth(200)
    self.label:SetWordWrap(true)

    f:SetScript("OnEnter", function()
        local a = ns.Navigation:GetActive()
        if not a then return end
        GameTooltip:SetOwner(f, "ANCHOR_BOTTOM")
        local p = a.point
        GameTooltip:AddLine(p.label or "Next location", 1, 0.82, 0)
        GameTooltip:AddLine(("%.1f, %.1f"):format(p.x, p.y), 1, 1, 1)
        if a.kind == "entrance" then GameTooltip:AddLine("Heading to the entrance first", 0.8, 0.8, 0.8) end
        if p.routed then GameTooltip:AddLine("Route from the game's quest navigation", 0.6, 0.6, 0.6) end
        if p.placeholder then GameTooltip:AddLine("Location not verified yet", 0.6, 0.6, 0.6) end
        GameTooltip:AddLine("Drag to move. Turn off in the guide's gear menu.", 0.5, 0.5, 0.5)
        GameTooltip:Show()
    end)
    f:SetScript("OnLeave", GameTooltip_Hide)

    local elapsed = 0
    f:SetScript("OnUpdate", function(_, dt)
        elapsed = elapsed + dt
        if elapsed < THROTTLE then return end
        elapsed = 0
        self:Render()
    end)

    self:ApplySettings()
end

function Arrow:ApplySettings()
    local cfg = FG.db.profile.arrow
    local f = self.f
    f:ClearAllPoints()
    f:SetPoint(cfg.point, UIParent, cfg.relPoint, cfg.x, cfg.y)
    f:SetScale(cfg.scale)
    f:SetShown(cfg.enabled)
end

function Arrow:Render()
    local active = ns.Navigation:GetActive()
    local angle, dist
    if active then angle, dist = ns.Navigation:VectorTo(active.point) end

    local facing = GetPlayerFacing()
    -- Never go fully invisible: show a dim arrow and say why there's no direction.
    if not active or not angle or not facing or (issecretvalue and issecretvalue(facing)) then
        self.tex:SetTexture(ARROW_TEX)
        self.tex:SetRotation(0)
        self.tex:SetVertexColor(0.5, 0.5, 0.5)
        self.tex:SetAlpha(0.35)
        self.dist:SetText("")
        local why
        if not active then why = "No location for this step"
        elseif IsInInstance() then why = "No direction inside instances"
        elseif not angle then why = "Target is in another zone/continent"
        else why = "Facing unavailable here" end
        self.label:SetText("|cff999999" .. why .. "|r")
        return
    end
    self.tex:SetAlpha(1)

    if dist <= FG.db.profile.arrivalYards then
        self.tex:SetTexture(CHECK_TEX)
        self.tex:SetRotation(0)
        self.tex:SetVertexColor(1, 1, 1)
    else
        local offset = angle - facing
        if offset > math.pi then offset = offset - 2 * math.pi elseif offset < -math.pi then offset = offset + 2 * math.pi end
        self.tex:SetTexture(ARROW_TEX)
        self.tex:SetRotation(offset)
        self.tex:SetVertexColor(HeadingColor(offset))
    end

    self.dist:SetText(FormatDistance(dist) .. FormatETA(dist))
    local label = active.point.label or ""
    local prefix = KIND_PREFIX[active.kind]
    self.label:SetText(prefix and (prefix .. label .. "|r") or label)
end

function Arrow:SetEnabled(on)
    FG.db.profile.arrow.enabled = on
    if self.f then self.f:SetShown(on) end
end
