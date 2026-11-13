--[[
    MittenQuest - MapLayers.lua
    Extras on the world map:
      - Flight points: an icon at every flight master your faction can use (neutral ones,
        like Mount Hyjal's, for both), on zone and continent maps. Data/FlightPoints.lua
        (ns.FlightMasters), generated from QuestieDB.
      - Zone levels: the level range of the zone open on the map, or on a continent map of
        the zone under the cursor, at the top of the map. Coloured like quest difficulty for
        your level. Data/ZoneLevels.lua.
]]

local _, ns = ...
local FG = ns.FG
local HBDPins = LibStub("HereBeDragons-Pins-2.0")

local Layers = {}
ns.MapLayers = Layers

local FP_ICON = "Interface\\Minimap\\Tracking\\FlightMaster"
local FP_SIZE = 16
local LABEL_THROTTLE = 0.1   -- seconds between cursor checks on a continent map

Layers.fpPool = {}

---------------------------------------------------------------------------
-- Flight points
---------------------------------------------------------------------------
-- This faction's flight masters: { name, title, node, map, x, y } rows, or {} for a
-- character without a faction (or before it's known).
function Layers:FlightMasters()
    local faction = UnitFactionGroup("player")
    local all = ns.FlightMasters
    if not (faction and all and all[faction]) then
        return {}
    end
    return all[faction]
end

local function FP_OnEnter(self)
    local fm = self.fm
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:AddLine(fm[1], 1, 1, 1)
    GameTooltip:AddLine(fm[2], 1, 0.82, 0)
    if fm[3] then
        GameTooltip:AddLine("Flight point: " .. fm[3], 0.8, 0.8, 0.8)
    end
    GameTooltip:Show()
end

local function CreateFP()
    local pin = CreateFrame("Button", nil, UIParent)
    pin:SetSize(FP_SIZE, FP_SIZE)
    pin.icon = pin:CreateTexture(nil, "ARTWORK")
    pin.icon:SetAllPoints()
    pin.icon:SetTexture(FP_ICON)
    pin:SetScript("OnEnter", FP_OnEnter)
    pin:SetScript("OnLeave", GameTooltip_Hide)
    return pin
end

function Layers:RefreshFlightPoints()
    HBDPins:RemoveAllWorldMapIcons(self)
    for _, pin in ipairs(self.fpPool) do pin:Hide() end
    if not FG.db.profile.pins.flightPoints then
        return
    end
    local show = HBD_PINS_WORLDMAP_SHOW_CONTINENT or 2   -- zone and continent maps
    for i, fm in ipairs(self:FlightMasters()) do
        local map, x, y = fm[4], fm[5], fm[6]
        if map and x and y then
            local pin = self.fpPool[i] or CreateFP()
            self.fpPool[i] = pin
            pin.fm = fm
            HBDPins:AddWorldMapIconMap(self, pin, map, x / 100, y / 100, show)
        else
            FG:Print(("|cffff5555MapLayers@RefreshFlightPoints:|r flight master %s has no position (map %s, x %s, y %s)")
                :format(tostring(fm[1]), tostring(map), tostring(x), tostring(y)))
        end
    end
end

---------------------------------------------------------------------------
-- Zone levels
---------------------------------------------------------------------------
-- "Zone name  min-max" and its colour for the zone under the cursor (continent maps) or the
-- zone open on the map, or nil when it has no range.
function Layers:ZoneText(mapID, cursorX, cursorY)
    if not mapID then
        return nil
    end
    local levels = ns.ZoneLevels or {}
    local zone = mapID
    if not levels[zone] and cursorX and C_Map.GetMapInfoAtPosition then
        local info = C_Map.GetMapInfoAtPosition(mapID, cursorX, cursorY)
        zone = info and info.mapID
    end
    local range = zone and levels[zone]
    if not range then
        return nil
    end
    local info = C_Map.GetMapInfo(zone)
    local name = info and info.name or ""
    local lo, hi = range[1], range[2]
    -- Colour like a quest of your level clamped into the range: red/orange when the zone is
    -- above you, yellow while you're in it, green/grey once you're past it.
    local level = math.min(math.max(ns.PlayerLevel(), lo), hi)
    local r, g, b = 1, 0.82, 0
    if GetQuestDifficultyColor then
        local c = GetQuestDifficultyColor(level)
        if c then r, g, b = c.r, c.g, c.b end
    end
    return ("%s  %d-%d"):format(name, lo, hi), r, g, b
end

function Layers:UpdateZoneLabel()
    local label = self.zoneLabel
    if not label then
        return
    end
    if not FG.db.profile.pins.zoneLevels then
        label:Hide()
        return
    end
    local mapID = WorldMapFrame:GetMapID()
    local x, y
    if WorldMapFrame.ScrollContainer and WorldMapFrame.ScrollContainer:IsMouseOver()
            and WorldMapFrame.GetNormalizedCursorPosition then
        x, y = WorldMapFrame:GetNormalizedCursorPosition()
    end
    local text, r, g, b = self:ZoneText(mapID, x, y)
    if text then
        label:SetText(text)
        label:SetTextColor(r, g, b)
        label:Show()
    else
        label:Hide()
    end
end

function Layers:CreateZoneLabel()
    local parent = WorldMapFrame.ScrollContainer or WorldMapFrame
    local holder = CreateFrame("Frame", nil, parent)
    holder:SetAllPoints(parent)
    holder:SetFrameLevel(parent:GetFrameLevel() + 20)   -- above the map's own pins
    local label = holder:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    label:SetPoint("TOP", holder, "TOP", 0, -10)
    label:SetShadowOffset(1, -1)
    self.zoneLabel = label
    -- Continent maps: follow the cursor across zones.
    local elapsed = 0
    holder:SetScript("OnUpdate", function(_, dt)
        elapsed = elapsed + dt
        if elapsed >= LABEL_THROTTLE then
            elapsed = 0
            self:UpdateZoneLabel()
        end
    end)
end

---------------------------------------------------------------------------
-- Wiring (called from Core:OnEnable)
---------------------------------------------------------------------------
function Layers:Refresh()
    self:RefreshFlightPoints()
    self:UpdateZoneLabel()
end

function Layers:Enable()
    if WorldMapFrame then
        self:CreateZoneLabel()
    end
    self:RefreshFlightPoints()
end
