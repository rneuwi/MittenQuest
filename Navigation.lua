--[[
    MittenQuest - Navigation.lua
    Decides WHERE the player should head next; Arrow.lua draws it.

    Which step: the current one, or a nearer upcoming step you can do right now (see
    "Nearest step first"). Target priority for that step:
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
    -- HereBeDragons does math on UnitPosition; skip while the client keeps it secret (combat).
    local ry, rx, _, rInstance = UnitPosition("player")
    if ns.IsSecret(rx) or ns.IsSecret(ry) or ns.IsSecret(rInstance) then
        self.positionHidden = true
        return nil
    end
    self.positionHidden = false
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

---------------------------------------------------------------------------
-- Travel hints: which flight point to take for "Travel to <zone>" steps
---------------------------------------------------------------------------
local COMPASS = { "north", "northwest", "west", "southwest", "south", "southeast", "east", "northeast" }
local FLY_SAVES_YARDS = 300  -- only suggest flying when it cuts the run by at least this much
local RIGHT_THERE_YARDS = 150
local LEARN_NEAR_YARDS = 1000 -- an unknown flight point this close to the destination is worth learning

local function Compass(angle)
    local i = math.floor((angle + math.pi / 8) / (math.pi / 4)) % 8
    return COMPASS[i + 1]
end

-- "Fly to Freewind Post, then head south ~600 yd" for a destination point
-- ({ mapID, x, y } in 0-100 coords), or nil when flying doesn't help or the data is missing.
-- Known flight points: what the taxi maps showed this character, else the guide's #knownfp.
function Nav:TravelHint(dest)
    local fps = ns.FlightPoints and ns.FlightPoints[UnitFactionGroup("player") or ""]
    if not (dest and dest.mapID and fps) then
        return nil
    end
    local wx, wy, wInstance = HBD:GetWorldCoordinatesFromZone(dest.x / 100, dest.y / 100, dest.mapID)
    if not wx then
        return nil
    end
    local known, unknown -- nearest { name, dist, angle } of each
    for _, fp in ipairs(fps) do
        local name, mapID, x, y = fp[1], fp[2], fp[3], fp[4]
        local fx, fy, fInstance = HBD:GetWorldCoordinatesFromZone(x / 100, y / 100, mapID)
        if fx and fInstance == wInstance then
            local angle, dist = HBD:GetWorldVector(wInstance, fx, fy, wx, wy)
            if dist then
                local isKnown = ns.Steps:IsFlightKnown(name)
                local best = isKnown and known or unknown
                if not best or dist < best.dist then
                    best = { name = name, dist = dist, angle = angle }
                    if isKnown then known = best else unknown = best end
                end
            end
        end
    end
    local parts = {}
    local playerDist = self:DistanceTo(dest) -- nil on another continent or while hidden
    if known and (not playerDist or known.dist + FLY_SAVES_YARDS < playerDist) then
        if known.dist <= RIGHT_THERE_YARDS then
            parts[#parts + 1] = ("Fly to %s; it's right there"):format(known.name)
        else
            parts[#parts + 1] = ("Fly to %s, then head %s ~%d yd"):format(
                known.name, Compass(known.angle), math.floor(known.dist / 50 + 0.5) * 50)
        end
    end
    if unknown and unknown.dist <= LEARN_NEAR_YARDS and (not known or unknown.dist * 2 < known.dist) then
        parts[#parts + 1] = ("Learn the %s flight path there"):format(unknown.name)
    end
    return #parts > 0 and table.concat(parts, ". ") or nil
end

-- Player position on a specific map in 0-100 coords (nil if not on that map's continent).
local function PlayerPosOn(mapID)
    local pos = C_Map.GetPlayerMapPosition(mapID, "player")
    if not pos then return nil end
    local x, y = pos:GetXY()
    if x == nil or y == nil or ns.IsSecret(x) or ns.IsSecret(y) then
        return nil
    end
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
-- Nearest step first
---------------------------------------------------------------------------
-- The guide's order is the plan, but in a quest hub several upcoming steps can be done
-- right now (three pickups, a turn-in, objectives you're standing in). The arrow points at
-- the nearest of those instead of walking you past one to reach the next in the list.
-- The window ends at anything that moves you on (travel, flights, hearth, training,
-- grinding, dungeons, notes), so the arrow never jumps ahead of a planned trip.
local LOOKAHEAD = 8        -- undone steps after the current one that may compete with it
local NEARBY_YARDS = 500   -- an upcoming step only competes when it's this close
local SWITCH_MARGIN = 0.8  -- a new pick must be this much closer than the kept one (no flicker)
local BARRIER = {
    GOTO = true, FLY = true, HEARTH = true, SETHEARTH = true, TRAIN = true,
    LEVEL = true, DUNGEON = true, TEXT = true,
}
local VERB = { ACCEPT = "Accept: ", COMPLETE = "Do: ", TURNIN = "Turn in: ", GETFP = "Flight path: " }

local function InLog(q) return q and C_QuestLog.GetLogIndexForQuestID(q) ~= nil end

local function ReadyToTurnIn(q)
    if C_QuestLog.ReadyForTurnIn and C_QuestLog.ReadyForTurnIn(q) then return true end
    return C_QuestLog.IsComplete(q) == true
end

-- Static destination for a step (coordinates, quest giver, known turn-in), or nil.
local function StepDestination(step)
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
    if final then final.label = step.text end
    return final
end

-- Can this upcoming step be done right now, out of guide order?
local function DoableNow(step)
    local t, q = step.type, step.questID
    if ns.Steps:TooDangerous(step) then return false end
    if t == "ACCEPT" then
        if not q or InLog(q) then return false end
        if ns.Steps:MissingPrereqs(step) then return false end
        return not step.minLevel or ns.PlayerLevel() >= step.minLevel
    elseif t == "COMPLETE" then
        return InLog(q) and not ReadyToTurnIn(q)
    elseif t == "TURNIN" then
        return InLog(q) and ReadyToTurnIn(q)
    elseif t == "GETFP" then
        return true
    end
    return false
end

-- Where a step sends you right now: its static destination, else the client's quest point.
local function StepPoint(step)
    local p = StepDestination(step)
    if not p and step.questID and (step.type == "COMPLETE" or step.type == "TURNIN") then
        p = ClientQuestPoint(step.questID)
        if p and not p.label then p.label = step.text end
    end
    return p
end

-- Index of `step` in the active guide (it's normally the cursor step).
local function StepIndex(step)
    local steps, p = FG:GetActiveSteps()
    if not steps then return nil end
    if p and steps[p.index] == step then return p.index end
    for i, s in ipairs(steps) do
        if s == step then return i end
    end
end

-- Candidates: the current step, plus undone upcoming steps doable now, up to a barrier.
function Nav:Candidates()
    local cur = self.step
    local list = { { step = cur, index = self.index } }
    if not FG.db.profile.nearestFirst or not self.index or BARRIER[cur.type] then return list end
    local steps, p = FG:GetActiveSteps()
    if not steps or not p then return list end
    local done, seen = p.done or {}, 0
    for i = self.index + 1, #steps do
        local s = steps[i]
        if not done[i] then
            if BARRIER[s.type] then break end
            seen = seen + 1
            if seen > LOOKAHEAD then break end
            if DoableNow(s) then list[#list + 1] = { step = s, index = i } end
        end
    end
    return list
end

-- Choose the step the arrow follows: the nearest candidate, sticky within SWITCH_MARGIN.
function Nav:Pick()
    local best, bestDist, keptDist
    for _, c in ipairs(self:Candidates()) do
        local pt = StepPoint(c.step)
        local d = pt and self:DistanceTo(pt)
        local isCur = c.step == self.step
        if d and (isCur or d <= NEARBY_YARDS) then
            if c.step == self.pickStep then keptDist = d end
            if not bestDist or d < bestDist then best, bestDist = c.step, d end
        end
    end
    if not best then return self.step end   -- nothing measurable: follow the guide order
    if keptDist and self.pickStep and best ~= self.pickStep and bestDist > keptDist * SWITCH_MARGIN then
        return self.pickStep
    end
    return best
end

-- Follow `step`: its destination, authored path points, cave and map waypoint.
function Nav:Follow(step)
    if self.pickStep == step then return end
    self.pickStep = step
    if self.tomtomUID and TomTom and TomTom.RemoveWaypoint then TomTom:RemoveWaypoint(self.tomtomUID) end
    self.tomtomUID = nil
    if C_Map.HasUserWaypoint() then C_Map.ClearUserWaypoint() end

    local final = StepDestination(step)
    if final and step ~= self.step then
        final.label = (VERB[step.type] or "") .. (step.text or "")
        final.nearby = true
    end
    if final and FG.db.profile.autoWaypoint then self:SetMapWaypoint(final, final.label) end
    self.final = final

    -- Guide-authored path points, walked in order.
    self.legs = {}
    for _, v in ipairs(step.via or {}) do
        self.legs[#self.legs + 1] = { mapID = v.mapID, x = v.x, y = v.y, label = "Path: " .. (step.text or "") }
    end
    self.forcedCave = step.cave and FindCaveByName(step.cave)
    self.questPoint = nil
    self.lastQuestCheck = 0
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
    self.step, self.index, self.pickStep, self.final, self.legs, self.active = nil, nil, nil, nil, nil, nil
end

-- Map pin for the final destination (the arrow handles the intermediate points).
function Nav:SetMapWaypoint(p, title)
    if TomTom and TomTom.AddWaypoint then
        self.tomtomUID = TomTom:AddWaypoint(p.mapID, p.x / 100, p.y / 100, {
            title = title, persistent = false, minimap = true, world = true,
            crazy = not FG.db.profile.arrow.enabled, -- avoid two arrows
            from = "MittenQuest",
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
    self.index = StepIndex(step)
    self:Follow(step)
    self.lastPick = 0
    self.ticker = FG:ScheduleRepeatingTimer(function() self:Update() end, TICK)
    self:Update()
end

-- Recomputes self.active = { point, kind } each tick.
function Nav:Update()
    local cur = self.step
    if not cur then self.active = nil return end
    local reach = FG.db.profile.arrivalYards

    -- Re-pick the nearest doable step about once a second (quest state, position).
    local now = GetTime()
    if now - (self.lastPick or 0) >= QUEST_RECHECK then
        self.lastPick = now
        local ok, picked = pcall(self.Pick, self)
        if ok then
            self:Follow(picked or cur)
        else
            FG:Print(("|cffff5555Navigation@Pick failed:|r %s (step=%s line=%s index=%s)"):format(
                tostring(picked), tostring(cur.type), tostring(cur.line), tostring(self.index)))
            self:Follow(cur)
        end
    end
    local step = self.pickStep or cur

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
        if now - self.lastQuestCheck >= QUEST_RECHECK then
            self.lastQuestCheck = now
            self.questPoint = ClientQuestPoint(step.questID)
        end
        if self.questPoint then
            point, kind = self.questPoint, "quest"
            if not self.questPoint.label then
                self.questPoint.label = (step ~= cur and VERB[step.type] or "") .. (step.text or "")
            end
        end
    end

    -- Cave redirection (unless the client already routed us).
    if point and not point.routed then
        local resolved, cave = self:ResolveCave(point, self.forcedCave)
        if cave then point, kind = resolved, "entrance" end
    end

    self.active = point and { point = point, kind = kind, nearby = step ~= cur, step = step } or nil

    -- GOTO completes on arrival at the real destination.
    if cur.type == "GOTO" and step == cur and kind == "target" then
        local d = self:DistanceTo(point)
        if d and d <= reach then FG:CompleteCurrent("GOTO") end
    end
end

function Nav:GetActive()
    return self.active
end
