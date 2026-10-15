--[[
    ForeverGuide - QuestPins.lua
    "!" pins for available quests on the world map and minimap, with a tooltip
    showing quest name, level, requirement, giver, and whether it's on the route.

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

local ICON = "Interface\\GossipFrame\\AvailableQuestIcon"
local PIN_SIZE_WORLD, PIN_SIZE_MINI = 18, 14

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
    -- Curated data wins, but a placeholder location is replaced by a learned one.
    for id, e in pairs(ns.QuestDB) do
        local l = learned[id]
        if l and e.placeholder then
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
    for _, name in ipairs(FG.guideOrder) do
        local g = FG:GetGuide(name)
        for _, s in ipairs(g.allSteps) do
            if s.type == "ACCEPT" and s.questID and s.coords and not all[s.questID] then
                all[s.questID] = {
                    name = s.text, minLevel = s.minLevel, pre = s.pre,
                    map = s.coords.mapID, x = s.coords.x, y = s.coords.y,
                    faction = s.faction, class = s.class, race = s.race,
                }
            end
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
-- Saved account-wide in ForeverGuideDB.global (WTF\Account\<name>\SavedVariables\ForeverGuide.lua),
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
    for _, q in ipairs(C_GossipInfo.GetAvailableQuests() or {}) do
        self:LearnOffer(q.questID, q.title, q.questLevel)
    end
    for _, q in ipairs(C_GossipInfo.GetActiveQuests() or {}) do
        if q.isComplete then self:LearnTurnin(q.questID) end
    end
end

-- Older-style quest greeting window (NPCs with several quests and no gossip).
function Pins:OnQuestGreeting()
    for i = 1, GetNumAvailableQuests() do
        local questID = select(5, GetAvailableQuestInfo(i))
        self:LearnOffer(questID, GetAvailableTitle(i), GetAvailableLevel and GetAvailableLevel(i))
    end
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
        if not e.race[(raceFile or ""):upper()] then return false end
    end
    return true
end

-- Returns status: "available" | "locked" | nil (don't show), plus reason text
function Pins:Status(id, e)
    if IsTurnedIn(id) or InLog(id) or not PassesFilters(e) then return nil end
    local cfg = FG.db.profile.pins
    local level = UnitLevel("player")

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

local function Pin_OnEnter(self)
    local d = self.data
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:AddLine(d.entry.name or ("Quest " .. d.id), DifficultyColor(d.entry.level))
    local lvl = d.entry.level and ("Level " .. d.entry.level) or "Level ?"
    if d.entry.minLevel then lvl = lvl .. ("  (requires %d)"):format(d.entry.minLevel) end
    GameTooltip:AddLine(lvl, 1, 1, 1)
    if d.entry.giver then GameTooltip:AddLine("Giver: " .. d.entry.giver, 0.8, 0.8, 0.8) end
    if d.entry.dungeon then GameTooltip:AddLine("Dungeon quest: " .. d.entry.dungeon, 1, 0.44, 0.26) end
    if d.routeStep then
        GameTooltip:AddLine(("On your route (step %d)"):format(d.routeStep), 0.4, 1, 0.4)
    else
        GameTooltip:AddLine("Side quest (not in current guide)", 0.6, 0.6, 0.6)
    end
    if d.reason then GameTooltip:AddLine(d.reason, 1, 0.33, 0.33, true) end
    if d.entry.placeholder then GameTooltip:AddLine("Location not verified yet", 0.6, 0.6, 0.6) end
    GameTooltip:Show()
end

local function CreatePin(size, withLabel)
    local pin = CreateFrame("Button", nil, UIParent)
    pin:SetSize(size, size)
    pin.icon = pin:CreateTexture(nil, "ARTWORK")
    pin.icon:SetAllPoints()
    pin.icon:SetTexture(ICON)
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
    if pin.label then
        pin.label:SetText(data.entry.level and tostring(data.entry.level) or "")
        pin.label:SetTextColor(DifficultyColor(data.entry.level))
    end
end

Pins.worldPool, Pins.miniPool = {}, {}

local function Acquire(pool, i, size, withLabel)
    pool[i] = pool[i] or CreatePin(size, withLabel)
    return pool[i]
end

---------------------------------------------------------------------------
-- Refresh
---------------------------------------------------------------------------
function Pins:Refresh()
    HBDPins:RemoveAllWorldMapIcons(self)
    HBDPins:RemoveAllMinimapIcons(self)
    for _, p in ipairs(self.worldPool) do p:Hide() end
    for _, p in ipairs(self.miniPool) do p:Hide() end

    local cfg = FG.db.profile.pins
    if not cfg.enabled then return end

    local route = self:RouteQuests()
    local playerMap = C_Map.GetBestMapForUnit("player")
    local nWorld, nMini = 0, 0

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
                end
                if cfg.minimap and e.map == playerMap and status == "available" then
                    nMini = nMini + 1
                    local pin = Acquire(self.miniPool, nMini, PIN_SIZE_MINI, false)
                    StylePin(pin, data)
                    HBDPins:AddMinimapIconMap(self, pin, e.map, e.x / 100, e.y / 100, false, false)
                end
            end
        end
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
