--[[
    MittenQuest - QuestPins.lua
    "!" pins for available quests and "?" pins for turning in quests in your log, on the
    world map and minimap, with a tooltip showing quest name, level, requirement, giver (or
    how it starts: an object, a dropped or looted item, inside a dungeon), and whether it's
    on the route. Quests at the same spot share one pin that lists them all; follow-ups
    waiting on an earlier quest in their chain aren't pinned until that one is turned in.

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
local ICON_TURNIN = "Interface\\GossipFrame\\ActiveQuestIcon"
-- Quests closer than this (map units, percent of the zone) share one pin: the same giver,
-- or a turn-in NPC standing next to them.
local GROUP_RADIUS = 0.6
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
function Pins:CheckRouteOffers(offered, npcName, silent)
    local npc = npcName or NPCName()
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
    if silent then
        FG:Print(("%s has nothing for you, so the guide skips %s. It may need an earlier quest "
            .. "from there first; click the step to bring it back.")
            :format(npc, table.concat(names, ", ")))
    else
        FG:Print(("%s doesn't offer %s here, so the guide skips it. Click the step to bring it back.")
            :format(npc, table.concat(names, ", ")))
    end
    FG:Advance(true)
    self:RequestRefresh()
end

-- A giver with nothing to offer you opens no window at all, so CheckRouteOffers never runs
-- and the guide waits at them for good (Forever quests whose prerequisites the data doesn't
-- know: Clugfist and Hamur in Riverglades). Stand next to a giver the guide sends you to,
-- with them targeted, and if no quest or gossip window opens in SILENT_SECONDS, that counts
-- as an empty list. A wrong call fixes itself: accepting the quest clears the record.
local SILENT_SECONDS = 3
local SILENT_POLL = 0.5
local SILENT_GIVE_UP = 30        -- stop watching a target after this long
local SILENT_RANGE = 3           -- CheckInteractDistance index: about 10 yards

function Pins:NoteWindow()
    self.lastWindow = GetTime()
end

-- The target is a giver of an ACCEPT step the guide still has open.
function Pins:IsRouteGiver(name)
    local steps, p = FG:GetActiveSteps()
    for i, s in ipairs(steps or {}) do
        if s.type == "ACCEPT" and s.questID and not (p and p.done and p.done[i]) then
            local e = self:GetQuestEntry(s.questID)
            if e and e.giver == name then return true end
        end
    end
    return false
end

function Pins:OnTargetChanged()
    if self.silentTimer then
        FG:CancelTimer(self.silentTimer)
        self.silentTimer = nil
    end
    if not UnitExists("target") or UnitIsPlayer("target") or UnitIsDead("target") then return end
    local name, guid = UnitName("target"), UnitGUID("target")
    if not name or not guid or (issecretvalue and (issecretvalue(name) or issecretvalue(guid))) then
        return
    end
    if not FG:GetActiveGuide() or not self:IsRouteGiver(name) then return end
    local watch = { name = name, guid = guid, started = GetTime() }
    self.silentTimer = FG:ScheduleRepeatingTimer(function() self:WatchSilentGiver(watch) end, SILENT_POLL)
end

function Pins:WatchSilentGiver(watch)
    local now = GetTime()
    local stop = UnitGUID("target") ~= watch.guid or now - watch.started > SILENT_GIVE_UP
    if not stop then
        local close = CheckInteractDistance("target", SILENT_RANGE)
            and not UnitAffectingCombat("player")
            and not (IsPlayerMoving and IsPlayerMoving())
        if not close then
            watch.still = nil
        elseif not watch.still then
            watch.still = now
        elseif (self.lastWindow or 0) >= watch.still then
            stop = true      -- a window opened: the list check (or auto-accept) handled it
        elseif now - watch.still >= SILENT_SECONDS then
            stop = true
            self:CheckRouteOffers({}, watch.name, true)
        end
    end
    if stop and self.silentTimer then
        FG:CancelTimer(self.silentTimer)
        self.silentTimer = nil
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
        if not e.race[(raceFile or ""):upper()] and not ns.Steps:FallbackRaceMatches(e.race) then
            return false
        end
    end
    return true
end

-- Returns status: "available" | "locked" | nil (don't show), plus reason text.
-- A quest still waiting on an earlier quest in its chain isn't pinned at all: it usually
-- stands at the same giver as the quest before it, so a hub where you'd picked up
-- everything still showed a stack of grey "!" for every later part. It appears once the
-- quest before it is turned in. "Locked" is only for quests you're too low for.
function Pins:Status(id, e)
    if IsTurnedIn(id) or InLog(id) or not PassesFilters(e) then return nil end
    local cfg = FG.db.profile.pins
    local level = ns.PlayerLevel()

    -- Grey (trivial) for your level, by the client's own range: no pin, route quest or not.
    -- Entries from guide steps or the client's quest lines carry no level: ask the client.
    local qlevel = e.level
    if not qlevel and C_QuestLog.GetQuestDifficultyLevel then
        qlevel = C_QuestLog.GetQuestDifficultyLevel(id)
    end
    if qlevel and qlevel > 0 and not cfg.showLowLevel and qlevel <= level - ns.Steps:TrivialGap() then
        return nil
    end
    for _, p in ipairs(e.pre or {}) do
        if not IsTurnedIn(p) then return nil end
    end
    if e.minLevel and level < e.minLevel then
        if not cfg.showUnavailable then return nil end
        return "locked", ("Requires level %d"):format(e.minLevel)
    end
    return "available"
end

-- Where a quest in your log is turned in: { map, x, y, npc } or nil.
function Pins:TurninSpot(id, e)
    local t = e and e.turnin
    if t then return { map = t[1], x = t[2], y = t[3] } end
    local l = FG.db.global.learnedTurnins[id]
    if l and l.map then return { map = l.map, x = l.x, y = l.y, npc = l.npc } end
    return nil
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

-- What a pin stands for, in the order the game ranks quest icons: a gold "?" (ready to
-- turn in) beats a gold "!" (available), then a grey "?" (in your log, not done yet) and a
-- grey "!" (too low for it).
local KIND_RANK = { complete = 1, available = 2, progress = 3, locked = 4 }
local KIND_TITLE = {
    complete = { "Ready to turn in", 1, 0.82, 0 },
    available = { "Available", 1, 0.82, 0 },
    progress = { "In your log", 0.75, 0.75, 0.75 },
    locked = { "Too low for now", 0.6, 0.6, 0.6 },
}
local TURNIN_KIND = { complete = true, progress = true }

local function SingleTooltip(item)
    local e = item.entry
    GameTooltip:AddLine(e.name or ("Quest " .. item.id), DifficultyColor(e.level))
    local lvl = e.level and ("Level " .. e.level) or "Level ?"
    if e.minLevel and not TURNIN_KIND[item.kind] then lvl = lvl .. ("  (requires %d)"):format(e.minLevel) end
    GameTooltip:AddLine(lvl, 1, 1, 1)
    if item.kind == "complete" then
        GameTooltip:AddLine("Ready to turn in" .. (item.npc and (" to " .. item.npc) or ""), 1, 0.82, 0)
        return
    elseif item.kind == "progress" then
        GameTooltip:AddLine("In your log: turn it in here" .. (item.npc and (" to " .. item.npc) or "")
            .. " once it's done", 0.75, 0.75, 0.75, true)
        return
    end
    AddStartLines(e)
    if e.dungeon then GameTooltip:AddLine("Dungeon quest: " .. e.dungeon, 1, 0.44, 0.26) end
    local routeText = ns.RouteCheck and ns.RouteCheck:Describe(item.id)
    if routeText then
        GameTooltip:AddLine(routeText, 1, 1, 1, true)
    elseif item.routeStep then
        GameTooltip:AddLine(("On your route (step %d)"):format(item.routeStep), 0.4, 1, 0.4)
    else
        GameTooltip:AddLine("Side quest (not in current guide)", 0.6, 0.6, 0.6)
    end
    if item.reason then GameTooltip:AddLine(item.reason, 1, 0.33, 0.33, true) end
    if e.placeholder then GameTooltip:AddLine("Location not verified yet", 0.6, 0.6, 0.6) end
    if Pins:PathFor(e) then
        GameTooltip:AddLine("Walks around: the dotted line shows their route", 0.6, 0.8, 1, true)
    end
end

-- Several quests at one spot: one line each, under a heading per kind.
local function GroupTooltip(items)
    local giver
    for _, item in ipairs(items) do
        local name
        if TURNIN_KIND[item.kind] then
            name = item.npc
        else
            name = item.entry.giver
        end
        if giver == nil then giver = name or false
        elseif giver ~= name then giver = false end
    end
    GameTooltip:AddLine(giver or (#items .. " quests here"), 1, 1, 1)
    local lastKind
    for _, item in ipairs(items) do
        if item.kind ~= lastKind then
            local t = KIND_TITLE[item.kind]
            GameTooltip:AddLine(t[1], t[2], t[3], t[4])
            lastKind = item.kind
        end
        local e = item.entry
        local text = "  " .. (e.name or ("Quest " .. item.id)) .. (e.level and (" (" .. e.level .. ")") or "")
        if item.kind == "available" or item.kind == "locked" then
            if item.routeStep then
                text = text .. " |cff66ff66on route|r"
            end
            if item.reason then text = text .. " |cffff5555" .. item.reason .. "|r" end
        end
        GameTooltip:AddLine(text, DifficultyColor(e.level))
    end
end

local function Pin_OnEnter(self)
    local items = self.data.items
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    if #items == 1 then
        SingleTooltip(items[1])
    else
        GroupTooltip(items)
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

-- data.items is sorted by KIND_RANK, so items[1] decides the icon.
local function StylePin(pin, data)
    pin.data = data
    local top = data.items[1]
    local grey = top.kind == "locked" or top.kind == "progress"
    local onRoute = false
    for _, item in ipairs(data.items) do
        if item.routeStep or TURNIN_KIND[item.kind] then onRoute = true end
    end
    pin.icon:SetTexture(TURNIN_KIND[top.kind] and ICON_TURNIN or ICON)
    pin.icon:SetDesaturated(grey)
    pin.icon:SetAlpha(grey and 0.6 or 1)
    -- Route quests and turn-ins full size; side quests slightly smaller and tinted.
    pin:SetScale(onRoute and 1 or 0.8)
    if not grey and not onRoute then pin.icon:SetVertexColor(0.85, 0.85, 1) else pin.icon:SetVertexColor(1, 1, 1) end
    local badge = not TURNIN_KIND[top.kind] and BADGE[top.entry.start or ""] or nil
    pin.badge:SetTexture(badge)
    pin.badge:SetDesaturated(grey)
    pin.badge:SetAlpha(grey and 0.6 or 1)
    pin.badge:SetShown(badge ~= nil)
    if pin.label then
        local level = top.entry.level
        local text = level and tostring(level) or ""
        if #data.items > 1 then text = text .. " +" .. (#data.items - 1) end
        pin.label:SetText(text)
        pin.label:SetTextColor(DifficultyColor(level))
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

    for _, group in ipairs(self:BuildGroups(route, playerMap, self.viewMap)) do
        if cfg.worldMap then
            nWorld = nWorld + 1
            local pin = Acquire(self.worldPool, nWorld, PIN_SIZE_WORLD, true)
            StylePin(pin, group)
            -- showFlag 0: only on the zone map itself (no continent clutter)
            HBDPins:AddWorldMapIconMap(self, pin, group.map, group.x / 100, group.y / 100, 0)
            for _, item in ipairs(group.items) do
                if not TURNIN_KIND[item.kind] and self:PathFor(item.entry) then
                    local path = item.entry.path
                    worldPaths[path] = worldPaths[path] or item.kind == "available"
                end
            end
        end
        -- The minimap only shows what you can act on now: gold "?" and gold "!".
        if cfg.minimap and group.map == playerMap then
            local live = {}
            for _, item in ipairs(group.items) do
                if item.kind == "complete" or item.kind == "available" then live[#live + 1] = item end
            end
            if #live > 0 then
                nMini = nMini + 1
                local pin = Acquire(self.miniPool, nMini, PIN_SIZE_MINI, false)
                StylePin(pin, { items = live, map = group.map, x = group.x, y = group.y })
                HBDPins:AddMinimapIconMap(self, pin, group.map, group.x / 100, group.y / 100, false, false)
                for _, item in ipairs(live) do
                    if item.kind == "available" and self:PathFor(item.entry) then
                        miniPaths[item.entry.path] = true
                    end
                end
            end
        end
    end
    self:DrawPaths(worldPaths, miniPaths)
end

-- Everything to pin on the maps you can see, merged into one group per spot:
-- { map, x, y, items = { { kind, id, entry, reason, routeStep, npc }, ... } }, items sorted
-- gold "?" first, then gold "!", grey "?", grey "!".
-- Only the zone you're in and the zone open on the world map are built: the database has
-- ~1,500 quests and pins for all of them would be wasted frames.
function Pins:BuildGroups(route, playerMap, viewMap)
    local items = {}
    local function Add(map, x, y, item)
        if map and x and y and (map == playerMap or map == viewMap) then
            item.map, item.x, item.y = map, x, y
            items[#items + 1] = item
        end
    end
    for id, e in pairs(self:CollectEntries()) do
        if InLog(id) then
            local spot = self:TurninSpot(id, e)
            if spot then
                Add(spot.map, spot.x, spot.y, {
                    kind = C_QuestLog.IsComplete(id) and "complete" or "progress",
                    id = id, entry = e, npc = spot.npc,
                })
            end
        else
            local status, reason = self:Status(id, e)
            if status then
                Add(e.map, e.x, e.y, { kind = status, id = id, entry = e, reason = reason, routeStep = route[id] })
            end
        end
    end
    -- Gold before grey, route before side quests, then by level, so the first item in a
    -- group decides its icon and grouping is the same every refresh.
    table.sort(items, function(a, b)
        if a.kind ~= b.kind then return KIND_RANK[a.kind] < KIND_RANK[b.kind] end
        if (a.routeStep ~= nil) ~= (b.routeStep ~= nil) then return a.routeStep ~= nil end
        local la, lb = a.entry.level or 0, b.entry.level or 0
        if la ~= lb then return la < lb end
        return a.id < b.id
    end)
    local groups = {}
    for _, item in ipairs(items) do
        local home
        for _, g in ipairs(groups) do
            if g.map == item.map and (g.x - item.x) ^ 2 + (g.y - item.y) ^ 2 <= GROUP_RADIUS ^ 2 then
                home = g
                break
            end
        end
        if not home then
            home = { map = item.map, x = item.x, y = item.y, items = {} }
            groups[#groups + 1] = home
        end
        home.items[#home.items + 1] = item
    end
    return groups
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

    FG:RegisterEvent("GOSSIP_SHOW", function() self:NoteWindow(); self:OnGossipShow() end)
    FG:RegisterEvent("QUEST_GREETING", function() self:NoteWindow(); self:OnQuestGreeting() end)
    FG:RegisterEvent("QUEST_DETAIL", function() self:NoteWindow(); self:LearnOffer(GetQuestID(), GetTitleText()) end)
    FG:RegisterEvent("QUEST_PROGRESS", function() self:NoteWindow(); self:LearnTurnin(GetQuestID()) end)
    FG:RegisterEvent("QUEST_COMPLETE", function() self:NoteWindow(); self:LearnTurnin(GetQuestID()) end)
    FG:RegisterEvent("PLAYER_TARGET_CHANGED", function() self:OnTargetChanged() end)

    self:OnZoneChanged()
end
