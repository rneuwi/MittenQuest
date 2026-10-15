--[[
    ForeverGuide - Navigation.lua
    Decides WHERE the player should head next; Arrow.lua draws it.

    Target priority for the current step:
      1. Guide-authored path points   via=x,y,map>x,y,map  (walked in order)
      2. The step's own coordinates   at=... / [G ...]
      3. Quest giver from QuestDB     (accept steps)
      4. The client's quest routing   C_QuestLog.GetNextWaypoint (handles cave
         mouths, zone exits) -> quest POI on the map
    Any resulting point inside a known cave (Data/Entrances.lua) is redirected
    to the cave entrance until the player is inside.

    Also: map waypoint (TomTom or built-in user waypoint) and GOTO arrival.
]]

local _, ns = ...
local FG = ns.FG
local HBD = LibStub("HereBeDragons-2.0")
local Nav = {}
ns.Navigation = Nav

local TICK = 0.25
local QUEST_RECHECK = 1.0 -- seconds between client quest-routing lookups

---------------------------------------------------------------------------
-- Geometry helpers (points use 0-100 map coords)
---------------------------------------------------------------------------
-- Returns angle (radians, CCW from north, same convention as GetPlayerFacing)
-- and distance in yards from the player to a point, or nil if not comparable.
function Nav:VectorTo(point)
    if not point then return nil end
    local px, py, pInstance = HBD:GetPlayerWorldPosition()
    if not px then return nil end
    local wx, wy, wInstance = HBD:GetWorldCoordinatesFromZone(point.x / 100, point.y / 100, point.mapID)
    if not wx or wInstance ~= pInstance then return nil end
    return HBD:GetWorldVector(pInstance, px, py, wx, wy)
end

function Nav:DistanceTo(point)
    local _, dist = self:VectorTo(point)
    return dist
end

-- Player position on a specific map in 0-100 coords (nil if not on that map's continent).
local function PlayerPosOn(mapID)
    local pos = C_Map.GetPlayerMapPosition(mapID, "player")
    if not pos then return nil end
    local x, y = pos:GetXY()
    return x * 100, y * 100
end

local function MapDist(x1, y1, x2, y2)
    local dx, dy = x1 - x2, y1 - y2
    return math.sqrt(dx * dx + dy * dy)
end

---------------------------------------------------------------------------
-- Caves
---------------------------------------------------------------------------
local function FindCaveByName(name)
    local want = (name or ""):lower()
    for _, cave in ipairs(ns.Entrances or {}) do
        if cave.name:lower() == want then return cave end
    end
end

local function CaveContaining(point)
    for _, cave in ipairs(ns.Entrances or {}) do
        local a = cave.area
        if cave.map == point.mapID and MapDist(point.x, point.y, a[1], a[2]) <= a[3] then
            return cave
        end
    end
end

local function PlayerInsideCave(cave)
    local x, y = PlayerPosOn(cave.map)
    if not x then return false end
    local a = cave.area
    -- Inside = within the interior radius AND the client reports indoors.
    return MapDist(x, y, a[1], a[2]) <= a[3] and IsIndoors()
end

-- If the point is inside a cave and we're not, return the next point toward its mouth.
function Nav:ResolveCave(point, forcedCave)
    local cave = forcedCave or CaveContaining(point)
    if not cave or PlayerInsideCave(cave) then return point, nil end

    -- Optional approach path to the mouth, skipping points already reached.
    local reach = FG.db.profile.arrivalYards * 2
    for _, v in ipairs(cave.via or {}) do
        local p = { mapID = cave.map, x = v[1], y = v[2] }
        local d = self:DistanceTo(p)
        if d and d > reach then
            p.label = "Path to " .. cave.name
            return p, cave
        end
    end
    return { mapID = cave.map, x = cave.entrance[1], y = cave.entrance[2],
             label = "Entrance: " .. cave.name, placeholder = cave.placeholder }, cave
end

---------------------------------------------------------------------------
-- Quest-driven targets (from the client's own routing / POIs)
---------------------------------------------------------------------------
local function ClientQuestPoint(questID)
    if not (questID and C_QuestLog.GetLogIndexForQuestID(questID)) then return nil end

    -- Blizzard's routing: already accounts for cave mouths, zone exits, portals.
    if C_QuestLog.GetNextWaypoint then
        local mapID, x, y = C_QuestLog.GetNextWaypoint(questID)
        if mapID and x and y then
            local text = C_QuestLog.GetNextWaypointText and C_QuestLog.GetNextWaypointText(questID)
            return { mapID = mapID, x = x * 100, y = y * 100, label = text, routed = true }
        end
    end

    -- Otherwise the quest's POI on the player's current map.
    local mapID = C_Map.GetBestMapForUnit("player")
    if mapID and C_QuestLog.GetQuestsOnMap then
        for _, info in ipairs(C_QuestLog.GetQuestsOnMap(mapID) or {}) do
            if info.questID == questID and info.x and info.y then
                return { mapID = mapID, x = info.x * 100, y = info.y * 100 }
            end
        end
    end
end

---------------------------------------------------------------------------
-- Step -> target
---------------------------------------------------------------------------
function Nav:Clear()
    if self.tomtomUID and TomTom and TomTom.RemoveWaypoint then
        TomTom:RemoveWaypoint(self.tomtomUID)
    end
    self.tomtomUID = nil
    if C_Map.HasUserWaypoint() then C_Map.ClearUserWaypoint() end
    if self.ticker then FG:CancelTimer(self.ticker); self.ticker = nil end
    self.step, self.final, self.legs, self.active = nil, nil, nil, nil
end

-- Map pin for the final destination (the arrow handles the intermediate points).
function Nav:SetMapWaypoint(p, title)
    if TomTom and TomTom.AddWaypoint then
        self.tomtomUID = TomTom:AddWaypoint(p.mapID, p.x / 100, p.y / 100, {
            title = title, persistent = false, minimap = true, world = true,
            crazy = not FG.db.profile.arrow.enabled, -- avoid two arrows
            from = "ForeverGuide",
        })
    elseif C_Map.CanSetUserWaypointOnMap(p.mapID) then
        C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(p.mapID, p.x / 100, p.y / 100))
        if not FG.db.profile.arrow.enabled then C_SuperTrack.SetSuperTrackedUserWaypoint(true) end
    end
end

function Nav:SetFromStep(step)
    self:Clear()
    if not step then return end
    self.step = step

    -- Static destination for this step, if any.
    local final
    if step.coords and step.coords.mapID then
        final = { mapID = step.coords.mapID, x = step.coords.x, y = step.coords.y }
    elseif step.type == "ACCEPT" and step.questID then
        local q = ns.QuestPins:GetQuestEntry(step.questID)
        if q and q.map and q.x then final = { mapID = q.map, x = q.x, y = q.y, placeholder = q.placeholder } end
    elseif step.type == "TURNIN" and step.questID then
        local t = FG.db.global.learnedTurnins[step.questID]
        local q = ns.QuestDB and ns.QuestDB[step.questID]
        if t then final = { mapID = t.map, x = t.x, y = t.y }
        elseif q and q.turnin then final = { mapID = q.turnin[1], x = q.turnin[2], y = q.turnin[3] } end
    end
    if final then
        final.label = step.text
        if FG.db.profile.autoWaypoint then self:SetMapWaypoint(final, step.text) end
    end
    self.final = final

    -- Guide-authored path points, walked in order.
    self.legs = {}
    for _, v in ipairs(step.via or {}) do
        self.legs[#self.legs + 1] = { mapID = v.mapID, x = v.x, y = v.y, label = "Path: " .. (step.text or "") }
    end

    self.forcedCave = step.cave and FindCaveByName(step.cave)
    self.lastQuestCheck = 0
    self.ticker = FG:ScheduleRepeatingTimer(function() self:Update() end, TICK)
    self:Update()
end

-- Recomputes self.active = { point, kind } each tick.
function Nav:Update()
    local step = self.step
    if not step then self.active = nil return end
    local reach = FG.db.profile.arrivalYards

    -- 1. Authored path points: drop the ones we've reached.
    while self.legs[1] do
        local d = self:DistanceTo(self.legs[1])
        if d and d <= reach * 2 then table.remove(self.legs, 1) else break end
    end
    local point, kind = self.legs[1], "path"

    -- 2/3. Static destination.
    if not point and self.final then point, kind = self.final, "target" end

    -- 4. Client quest routing for objectives / turn-ins without coordinates.
    if not point and step.questID and (step.type == "COMPLETE" or step.type == "TURNIN") then
        local now = GetTime()
        if now - self.lastQuestCheck >= QUEST_RECHECK then
            self.lastQuestCheck = now
            self.questPoint = ClientQuestPoint(step.questID)
        end
        if self.questPoint then
            point, kind = self.questPoint, "quest"
            if not self.questPoint.label then self.questPoint.label = step.text end
        end
    end

    -- Cave redirection (unless the client already routed us).
    if point and not point.routed then
        local resolved, cave = self:ResolveCave(point, self.forcedCave)
        if cave then point, kind = resolved, "entrance" end
    end

    self.active = point and { point = point, kind = kind } or nil

    -- GOTO completes on arrival at the real destination.
    if step.type == "GOTO" and kind == "target" then
        local d = self:DistanceTo(point)
        if d and d <= reach then FG:CompleteCurrent("GOTO") end
    end
end

function Nav:GetActive()
    return self.active
end
