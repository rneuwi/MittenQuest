--[[
    MittenQuest - QuestPins.lua
    "!" pins for available quests on the world map and minimap, with a tooltip
    showing quest name, level, requirement, giver (or how it starts: an object, a dropped
    or looted item, inside a dungeon), and whether it's on the route.

    Sources, merged by questID:
      1. ns.QuestDB (Data/Quests.lua)
      2. Guide ACCEPT steps that carry at= coordinates
      3. The client's own quest-line data (C_QuestLine), when the client provides it
    Rendering uses HereBeDragons-Pins-2.0 (shared with TomTom/Questie).
]]

local _, ns = ...
local FG = ns.FG
local HBDPins = LibStub("HereBeDragons-Pins-2.0")
local HBD = LibStub("HereBeDragons-2.0")

local Pins = {}
ns.QuestPins = Pins
ns.QuestDB = ns.QuestDB or {} -- filled by Data/Quests.lua
ns.QuestPaths = ns.QuestPaths or {} -- givers' walking routes, also from Data/Quests.lua

local ICON = "Interface\\GossipFrame\\AvailableQuestIcon"
local PIN_SIZE_WORLD, PIN_SIZE_MINI = 18, 14
-- Small badge on the "!" for quests that don't start at an NPC.
local BADGE = {
    drop = "Interface\\Icons\\INV_Misc_Bag_10",   -- item dropped by mobs
    loot = "Interface\\Icons\\INV_Box_01",        -- item found in a chest/crate/bottle
    object = "Interface\\Icons\\INV_Misc_Note_01", -- object you click (poster, book)
}
local BADGE_SCALE = 0.6
-- Walking routes of quest givers that patrol, drawn as dots.
local DOT = "Interface\\CHARACTERFRAME\\TempPortraitAlphaMask" -- white circle
local DOT_SIZE_WORLD, DOT_SIZE_MINI = 5, 3
local DOT_SPACING = 0.6 -- map units (percent of the zone) between dots
local MAX_DOTS = 150    -- per route; longer routes (couriers) space their dots out

local IsTurnedIn = C_QuestLog.IsQuestFlaggedCompleted
local function InLog(q) return C_QuestLog.GetLogIndexForQuestID(q) ~= nil end

Pins.clientQuests = {} -- questID -> entry learned from C_QuestLine (per session)

---------------------------------------------------------------------------
-- Data merge
---------------------------------------------------------------------------
-- Quest IDs the active guide accepts -> step index (for "on route" highlighting).
function Pins:RouteQuests()
    local route = {}
    local g = FG:GetActiveGuide()
    for i, step in ipairs(g and g.steps or {}) do
        if step.type == "ACCEPT" and step.questID then route[step.questID] = i end
    end
    return route
end

function Pins:CollectEntries()
    local all = {}
    local learned = FG.db.global.learnedQuests
    for id, e in pairs(Pins.clientQuests) do all[id] = e end
    for id, e in pairs(learned) do all[id] = e end
    local isAlliance = (UnitFactionGroup("player") or "") == "Alliance"
    -- Curated data wins, but a placeholder location is replaced by a learned one.
    for id, e in pairs(ns.QuestDB) do
        local l = learned[id]
        if isAlliance and e.alliance then
            -- Same quest, different giver on the Alliance side.
            local merged = {}
            for k, v in pairs(e) do merged[k] = v end
            merged.map, merged.x, merged.y = e.alliance.map, e.alliance.x, e.alliance.y
            merged.giver = e.alliance.giver or e.giver
            if e.alliance.start ~= nil then
                -- Started differently on this side (NPC vs dropped item).
                merged.start, merged.item, merged.from = e.alliance.start, e.alliance.item, e.alliance.from
            end
            if e.alliance.path ~= nil then merged.path = e.alliance.path end
            merged.alliance = nil
            all[id] = merged
        elseif l and e.placeholder then
            local merged = {}
            for k, v in pairs(e) do merged[k] = v end
            merged.map, merged.x, merged.y, merged.placeholder = l.map, l.x, l.y, nil
            merged.giver = l.giver or e.giver
            all[id] = merged
        else
            all[id] = e
        end
    end
    -- Guide steps fill remaining gaps (and inherit filters from the step).
    local myFaction = (UnitFactionGroup("player") or ""):upper()
    for _, name in ipairs(FG.guideOrder) do
        local g = FG:GetGuide(name)
        local gf = g.header.faction and g.header.faction:upper()
        for _, s in ipairs((gf == nil or gf == myFaction) and g.allSteps or {}) do
            if s.type == "ACCEPT" and s.questID and s.coords and not all[s.questID] then
                all[s.questID] = {
                    name = s.text, minLevel = s.minLevel, pre = s.pre,
                    map = s.coords.mapID, x = s.coords.x, y = s.coords.y,
                    faction = s.faction, class = s.class, race = s.race,
                }
            end
        end
    end
    -- Givers that didn't offer the quest when you talked to them (CheckRouteOffers): no pin
    -- there. A spot where you did see it offered (another NPC, inside a dungeon) is used
    -- instead when there is one.
    for id, rec in pairs(FG.db.global.notOffered or {}) do
        local e, l = all[id], learned[id]
        if e and l and l.map and l.giver and l.giver ~= rec.npc then
            local merged = {}
            for k, v in pairs(e) do merged[k] = v end
            merged.map, merged.x, merged.y, merged.giver = l.map, l.x, l.y, l.giver
            all[id] = merged
        else
            all[id] = nil
        end
    end
    self.lastEntries = all
    return all
end

function Pins:GetQuestEntry(questID)
    return (self.lastEntries or self:CollectEntries())[questID]
end

function Pins:Stats()
    local st = { total = 0, learned = 0, onMap = 0, available = 0, locked = 0 }
    for _ in pairs(FG.db.global.learnedQuests) do st.learned = st.learned + 1 end
    local mapID = C_Map.GetBestMapForUnit("player")
    for id, e in pairs(self:CollectEntries()) do
        st.total = st.total + 1
        if e.map == mapID then
            st.onMap = st.onMap + 1
            local status = self:Status(id, e)
            if status == "available" then st.available = st.available + 1
            elseif status == "locked" then st.locked = st.locked + 1 end
        end
    end
    return st
end

---------------------------------------------------------------------------
-- Learning: record quest givers and turn-in NPCs at the spot you talk to them.
-- Saved account-wide in MittenQuestDB.global (WTF\Account\<name>\SavedVariables\MittenQuest.lua),
-- which is also how real coordinates get back into Data/Quests.lua.
---------------------------------------------------------------------------
local function PlayerSpot()
    local x, y, mapID = HBD:GetPlayerZonePosition()
    if not x then return nil end
    return mapID, math.floor(x * 1000 + 0.5) / 10, math.floor(y * 1000 + 0.5) / 10
end

local function NPCName()
    local name = UnitName("npc")
    if issecretvalue and issecretvalue(name) then return nil end
    return name
end

function Pins:LearnOffer(questID, title, level)
    if not questID or questID == 0 then return end
    local mapID, x, y = PlayerSpot()
    if not mapID then return end
    local rec = FG.db.global.learnedQuests[questID] or {}
    rec.name = title or rec.name
    rec.level = (level and level > 0) and level or rec.level
    rec.map, rec.x, rec.y = mapID, x, y
    rec.giver = NPCName() or rec.giver
    FG.db.global.learnedQuests[questID] = rec
    self:RequestRefresh()
end

function Pins:LearnTurnin(questID)
    if not questID or questID == 0 then return end
    local mapID, x, y = PlayerSpot()
    if not mapID then return end
    FG.db.global.learnedTurnins[questID] = { map = mapID, x = x, y = y, npc = NPCName() }
end

function Pins:OnGossipShow()
    local offered = {}
    for _, q in ipairs(C_GossipInfo.GetAvailableQuests() or {}) do
        self:LearnOffer(q.questID, q.title, q.questLevel)
        if q.questID then offered[q.questID] = true end
    end
    for _, q in ipairs(C_GossipInfo.GetActiveQuests() or {}) do
        if q.isComplete then self:LearnTurnin(q.questID) end
    end
    self:CheckRouteOffers(offered)
end

-- Older-style quest greeting window (NPCs with several quests and no gossip).
function Pins:OnQuestGreeting()
    local offered = {}
    for i = 1, GetNumAvailableQuests() do
        local questID = select(5, GetAvailableQuestInfo(i))
        self:LearnOffer(questID, GetAvailableTitle(i), GetAvailableLevel and GetAvailableLevel(i))
        if questID and questID ~= 0 then offered[questID] = true end
    end
    self:CheckRouteOffers(offered)
end

-- You're talking to an NPC and `offered` is everything they offer you. A route quest the
-- data says this NPC gives, that you could take now (level, prerequisites, not grey) but
-- that isn't in the list, isn't given here in Forever: record it so the guide skips it and
-- the map stops pinning it here. Only full lists count (gossip / quest greeting), never a
-- single quest window.
function Pins:CheckRouteOffers(offered)
    local npc = NPCName()
    local guide = FG:GetActiveGuide()
    if not npc or not guide then return end
    local steps, p = FG:GetActiveSteps()
    local S, level = ns.Steps, ns.PlayerLevel()
    local rec, found = FG.db.global.notOffered, {}
    for i, s in ipairs(steps or {}) do
        local q = s.questID
        if s.type == "ACCEPT" and q and not offered[q] and not (p.done and p.done[i])
                and not InLog(q) and not IsTurnedIn(q) and not rec[q] then
            local e = self:GetQuestEntry(q)
            local ok = e and e.giver == npc
                and (not e.minLevel or level >= e.minLevel)
                and (not s.minLevel or level >= s.minLevel)
                and not S:MissingPrereqs(s) and not S:IsGrey(q, guide)
            for _, pre in ipairs(ok and e.pre or {}) do
                if not IsTurnedIn(pre) then ok = false end
            end
            if ok then found[#found + 1] = q end
        end
    end
    if #found == 0 then return end
    local mapID, x, y = PlayerSpot()
    local names = {}
    for _, q in ipairs(found) do
        rec[q] = { npc = npc, level = level, map = mapID, x = x, y = y,
                   guide = FG.db.char.activeGuide, t = time() }
        names[#names + 1] = S:QuestName(q)
    end
    FG:Print(("%s doesn't offer %s here, so the guide skips it. Click the step to bring it back.")
        :format(npc, table.concat(names, ", ")))
    FG:Advance(true)
    self:RequestRefresh()
end

---------------------------------------------------------------------------
-- Availability
---------------------------------------------------------------------------
local function PassesFilters(e)
    if e.faction and e.faction:upper() ~= (UnitFactionGroup("player") or ""):upper() then return false end
    if e.class then
        local _, classFile = UnitClass("player")
        if not e.class[classFile] then return false end
    end
    if e.race then
        local _, raceFile = UnitRace("player")
        if not e.race[(raceFile or ""):upper()] and not ns.Steps:FallbackRaceMatches(e.race) then
            return false
        end
    end
    return true
end

-- Returns status: "available" | "locked" | nil (don't show), plus reason text
function Pins:Status(id, e)
    if IsTurnedIn(id) or InLog(id) or not PassesFilters(e) then return nil end
    local cfg = FG.db.profile.pins
    local level = ns.PlayerLevel()

    if e.level and not cfg.showLowLevel and e.level < level - cfg.lowLevelGap then
        return nil -- grey/trivial quest
    end

    local reasons = {}
    for _, p in ipairs(e.pre or {}) do
        if not IsTurnedIn(p) then reasons[#reasons + 1] = "Needs: " .. ns.Steps:QuestName(p) end
    end
    if e.minLevel and level < e.minLevel then
        reasons[#reasons + 1] = ("Requires level %d"):format(e.minLevel)
    end
    if #reasons > 0 then
        if not cfg.showUnavailable then return nil end
        return "locked", table.concat(reasons, "\n")
    end
    return "available"
end

---------------------------------------------------------------------------
-- Pin frames
---------------------------------------------------------------------------
local function DifficultyColor(level)
    if level and GetQuestDifficultyColor then
        local c = GetQuestDifficultyColor(level)
        if c then return c.r, c.g, c.b end
    end
    return 1, 0.82, 0
end

-- How the quest starts, for quests not given by an NPC (Data/Quests.lua start/item/from).
local FROM_SEP = ", "
local function AddStartLines(e)
    local from = e.from and table.concat(e.from, FROM_SEP)
    if e.start == "object" then
        GameTooltip:AddLine("Starts from an object: " .. (e.giver or "?"), 1, 0.82, 0)
        GameTooltip:AddLine("Click it (no NPC, may not show a ! in game)", 0.6, 0.6, 0.6, true)
    elseif e.start == "drop" then
        GameTooltip:AddLine("Starts from a dropped item: " .. (e.item or "?"), 1, 0.82, 0)
        if from then GameTooltip:AddLine("Drops from: " .. from, 0.8, 0.8, 0.8, true) end
        GameTooltip:AddLine("Pin marks where they are; right-click the item to start", 0.6, 0.6, 0.6, true)
    elseif e.start == "loot" then
        GameTooltip:AddLine("Starts from an item: " .. (e.item or "?"), 1, 0.82, 0)
        if from then GameTooltip:AddLine("Found in: " .. from, 0.8, 0.8, 0.8, true) end
        GameTooltip:AddLine("Lying on the ground or hidden; right-click the item to start", 0.6, 0.6, 0.6, true)
    elseif e.start == "inside" then
        GameTooltip:AddLine("Starts inside the dungeon: " .. (e.giver or "?"), 1, 0.82, 0, true)
        GameTooltip:AddLine("Pin marks the entrance", 0.6, 0.6, 0.6)
    elseif e.giver then
        GameTooltip:AddLine("Giver: " .. e.giver, 0.8, 0.8, 0.8)
    end
end

local function Pin_OnEnter(self)
    local d = self.data
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:AddLine(d.entry.name or ("Quest " .. d.id), DifficultyColor(d.entry.level))
    local lvl = d.entry.level and ("Level " .. d.entry.level) or "Level ?"
    if d.entry.minLevel then lvl = lvl .. ("  (requires %d)"):format(d.entry.minLevel) end
    GameTooltip:AddLine(lvl, 1, 1, 1)
    AddStartLines(d.entry)
    if d.entry.dungeon then GameTooltip:AddLine("Dungeon quest: " .. d.entry.dungeon, 1, 0.44, 0.26) end
    local routeText = ns.RouteCheck and ns.RouteCheck:Describe(d.id)
    if routeText then
        GameTooltip:AddLine(routeText, 1, 1, 1, true)
    elseif d.routeStep then
        GameTooltip:AddLine(("On your route (step %d)"):format(d.routeStep), 0.4, 1, 0.4)
    else
        GameTooltip:AddLine("Side quest (not in current guide)", 0.6, 0.6, 0.6)
    end
    if d.reason then GameTooltip:AddLine(d.reason, 1, 0.33, 0.33, true) end
    if d.entry.placeholder then GameTooltip:AddLine("Location not verified yet", 0.6, 0.6, 0.6) end
    if Pins:PathFor(d.entry) then
        GameTooltip:AddLine("Walks around: the dotted line shows their route", 0.6, 0.8, 1, true)
    end
    GameTooltip:Show()
end

local function CreatePin(size, withLabel)
    local pin = CreateFrame("Button", nil, UIParent)
    pin:SetSize(size, size)
    pin.icon = pin:CreateTexture(nil, "ARTWORK")
    pin.icon:SetAllPoints()
    pin.icon:SetTexture(ICON)
    pin.badge = pin:CreateTexture(nil, "OVERLAY")
    pin.badge:SetSize(size * BADGE_SCALE, size * BADGE_SCALE)
    pin.badge:SetPoint("BOTTOMLEFT", pin, "BOTTOM", 1, 0)
    pin.badge:SetTexCoord(0.08, 0.92, 0.08, 0.92) -- trim the icon border
    pin.badge:Hide()
    -- Keep the "!" above route dots, which share its world map frame level.
    pin:SetScript("OnShow", function(self)
        local parent = self:GetParent()
        if parent and parent ~= UIParent then
            self:SetFrameLevel(parent:GetFrameLevel() + 5)
        end
    end)
    if withLabel then
        pin.label = pin:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        pin.label:SetPoint("TOP", pin, "BOTTOM", 0, 2)
        pin.label:SetTextScale(0.85)
    end
    pin:SetScript("OnEnter", Pin_OnEnter)
    pin:SetScript("OnLeave", GameTooltip_Hide)
    return pin
end

local function StylePin(pin, data)
    pin.data = data
    local locked = data.status == "locked"
    pin.icon:SetDesaturated(locked)
    pin.icon:SetAlpha(locked and 0.6 or 1)
    -- Route quests full size; side quests slightly smaller and dimmer.
    local scale = data.routeStep and 1 or 0.8
    pin:SetScale(scale)
    if not locked and not data.routeStep then pin.icon:SetVertexColor(0.85, 0.85, 1) else pin.icon:SetVertexColor(1, 1, 1) end
    local badge = BADGE[data.entry.start or ""]
    pin.badge:SetTexture(badge)
    pin.badge:SetDesaturated(locked)
    pin.badge:SetAlpha(locked and 0.6 or 1)
    pin.badge:SetShown(badge ~= nil)
    if pin.label then
        pin.label:SetText(data.entry.level and tostring(data.entry.level) or "")
        pin.label:SetTextColor(DifficultyColor(data.entry.level))
    end
end

Pins.worldPool, Pins.miniPool = {}, {}
Pins.worldDots, Pins.miniDots = {}, {}

local function Acquire(pool, i, size, withLabel)
    pool[i] = pool[i] or CreatePin(size, withLabel)
    return pool[i]
end

local function AcquireDot(pool, i, size)
    local dot = pool[i]
    if not dot then
        dot = CreateFrame("Frame", nil, UIParent) -- no mouse: hovering goes to the pins
        dot.tex = dot:CreateTexture(nil, "ARTWORK")
        dot.tex:SetAllPoints()
        dot.tex:SetTexture(DOT)
        pool[i] = dot
    end
    dot:SetSize(size, size)
    return dot
end

-- The walking route of an entry's giver ({ map = uiMapID, {x1, y1, x2, y2, ...}, ... }),
-- or nil when the giver stands still, the route is on another map, or routes are off.
function Pins:PathFor(e)
    local path = e and e.path and ns.QuestPaths[e.path]
    if path and path.map == e.map and FG.db.profile.pins.paths then
        return path
    end
    return nil
end

local function SegmentLength(line, i)
    return math.sqrt((line[i + 2] - line[i]) ^ 2 + (line[i + 3] - line[i + 1]) ^ 2)
end

-- Calls fn(x, y) (0-1 map coordinates) every DOT_SPACING along each route of the path,
-- or further apart when that would take more than MAX_DOTS dots.
local function EachDot(path, fn)
    local total = 0
    for _, line in ipairs(path) do
        for i = 1, #line - 3, 2 do
            total = total + SegmentLength(line, i)
        end
    end
    local spacing = math.max(DOT_SPACING, total / MAX_DOTS)
    for _, line in ipairs(path) do
        local carry = 0 -- distance into the next segment where the next dot goes
        for i = 1, #line - 3, 2 do
            local x1, y1, x2, y2 = line[i], line[i + 1], line[i + 2], line[i + 3]
            local len = SegmentLength(line, i)
            local d = carry
            while d < len do
                local t = d / len
                fn((x1 + (x2 - x1) * t) / 100, (y1 + (y2 - y1) * t) / 100)
                d = d + spacing
            end
            carry = d - len
        end
    end
end

---------------------------------------------------------------------------
-- Refresh
---------------------------------------------------------------------------
function Pins:Refresh()
    HBDPins:RemoveAllWorldMapIcons(self)
    HBDPins:RemoveAllMinimapIcons(self)
    for _, p in ipairs(self.worldPool) do p:Hide() end
    for _, p in ipairs(self.miniPool) do p:Hide() end
    for _, p in ipairs(self.worldDots) do p:Hide() end
    for _, p in ipairs(self.miniDots) do p:Hide() end

    local cfg = FG.db.profile.pins
    if not cfg.enabled then return end

    local route = self:RouteQuests()
    local playerMap = C_Map.GetBestMapForUnit("player")
    local nWorld, nMini = 0, 0
    -- Giver npc id -> true when one of their quests is available (gold route), false when
    -- all of them are locked (grey). Each route is drawn once.
    local worldPaths, miniPaths = {}, {}

    -- Only build pins for the zone you're in and the zone open on the world map:
    -- the database has ~1,500 quests and pins for all of them would be wasted frames.
    local viewMap = self.viewMap
    for id, e in pairs(self:CollectEntries()) do
        if e.map and e.x and e.y and (e.map == playerMap or e.map == viewMap) then
            local status, reason = self:Status(id, e)
            if status then
                local data = { id = id, entry = e, status = status, reason = reason, routeStep = route[id] }

                if cfg.worldMap then
                    nWorld = nWorld + 1
                    local pin = Acquire(self.worldPool, nWorld, PIN_SIZE_WORLD, true)
                    StylePin(pin, data)
                    -- showFlag 0: only on the zone map itself (no continent clutter)
                    HBDPins:AddWorldMapIconMap(self, pin, e.map, e.x / 100, e.y / 100, 0)
                    if self:PathFor(e) then
                        worldPaths[e.path] = worldPaths[e.path] or status == "available"
                    end
                end
                if cfg.minimap and e.map == playerMap and status == "available" then
                    nMini = nMini + 1
                    local pin = Acquire(self.miniPool, nMini, PIN_SIZE_MINI, false)
                    StylePin(pin, data)
                    HBDPins:AddMinimapIconMap(self, pin, e.map, e.x / 100, e.y / 100, false, false)
                    if self:PathFor(e) then
                        miniPaths[e.path] = true
                    end
                end
            end
        end
    end
    self:DrawPaths(worldPaths, miniPaths)
end

-- Dotted walking routes of the givers whose pins are showing.
function Pins:DrawPaths(worldPaths, miniPaths)
    local nWorld, nMini = 0, 0
    for npc, available in pairs(worldPaths) do
        local path = ns.QuestPaths[npc]
        local r, g, b = 1, 0.82, 0
        if not available then
            r, g, b = 0.6, 0.6, 0.6
        end
        EachDot(path, function(x, y)
            nWorld = nWorld + 1
            local dot = AcquireDot(self.worldDots, nWorld, DOT_SIZE_WORLD)
            dot.tex:SetVertexColor(r, g, b, 0.8)
            HBDPins:AddWorldMapIconMap(self, dot, path.map, x, y, 0)
        end)
    end
    for npc in pairs(miniPaths) do
        local path = ns.QuestPaths[npc]
        EachDot(path, function(x, y)
            nMini = nMini + 1
            local dot = AcquireDot(self.miniDots, nMini, DOT_SIZE_MINI)
            dot.tex:SetVertexColor(1, 0.82, 0, 0.8)
            HBDPins:AddMinimapIconMap(self, dot, path.map, x, y, false, false)
        end)
    end
end

function Pins:RequestRefresh()
    if self.timer then return end
    self.timer = FG:ScheduleTimer(function()
        self.timer = nil
        self:Refresh()
    end, 0.5)
end

---------------------------------------------------------------------------
-- Client quest-line data (used only if this client exposes it)
---------------------------------------------------------------------------
function Pins:RequestClientQuests(uiMapID)
    if not (uiMapID and C_QuestLine and C_QuestLine.RequestQuestLinesForMap) then return end
    self.lastRequestedMap = uiMapID
    C_QuestLine.RequestQuestLinesForMap(uiMapID)
end

function Pins:OnQuestLinesUpdated()
    local mapID = self.lastRequestedMap
    if not (mapID and C_QuestLine.GetAvailableQuestLines) then return end
    for _, info in ipairs(C_QuestLine.GetAvailableQuestLines(mapID) or {}) do
        if info.questID and info.x and info.y and not info.isHidden then
            self.clientQuests[info.questID] = {
                name = info.questName, map = mapID, x = info.x * 100, y = info.y * 100,
                -- the client only returns quests the player can take, so no level gate needed
            }
        end
    end
    self:RequestRefresh()
end

---------------------------------------------------------------------------
-- Wiring (called from Core:OnEnable)
---------------------------------------------------------------------------
function Pins:OnZoneChanged()
    self:RequestClientQuests(C_Map.GetBestMapForUnit("player"))
    self:RequestRefresh()
end

function Pins:Enable()
    -- Ask the client for quest lines whenever the world map shows a new zone.
    if WorldMapFrame and WorldMapFrame.OnMapChanged then
        hooksecurefunc(WorldMapFrame, "OnMapChanged", function(map)
            self.viewMap = map:GetMapID()
            self:RequestClientQuests(self.viewMap)
            self:RequestRefresh()
        end)
    end

    FG:RegisterEvent("GOSSIP_SHOW", function() self:OnGossipShow() end)
    FG:RegisterEvent("QUEST_GREETING", function() self:OnQuestGreeting() end)
    FG:RegisterEvent("QUEST_DETAIL", function() self:LearnOffer(GetQuestID(), GetTitleText()) end)
    FG:RegisterEvent("QUEST_PROGRESS", function() self:LearnTurnin(GetQuestID()) end)
    FG:RegisterEvent("QUEST_COMPLETE", function() self:LearnTurnin(GetQuestID()) end)

    self:OnZoneChanged()
end
