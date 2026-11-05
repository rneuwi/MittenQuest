--[[
    MittenQuest - RouteCheck.lua
    When an NPC offers quests (the accept window, a gossip list or a quest greeting), a small
    banner above the window says whether each quest is on your route: in this guide (and which
    step), in a later or earlier guide of your chain, on the route but skipped, or not on it.
    Map pin tooltips use the same lookup.
]]

local _, ns = ...
local FG = ns.FG
local RouteCheck = {}
ns.RouteCheck = RouteCheck

local GREEN, YELLOW, GREY = "|cff66ff66", "|cffffd100", "|cffaaaaaa"
local READY = "|TInterface\\RaidFrame\\ReadyCheck-Ready:12|t "
local NOT_READY = "|TInterface\\RaidFrame\\ReadyCheck-NotReady:12|t "

---------------------------------------------------------------------------
-- Route index: questID -> where the active guide chain accepts it
---------------------------------------------------------------------------
-- A guide that belongs to this character's chain before the active one (its race starter).
local function IsOwnEarlierGuide(g)
    local h = g.header or {}
    local faction = (UnitFactionGroup("player") or ""):upper()
    if h.faction and h.faction:upper() ~= faction then return false end
    if not h.raceSet then return true end
    local _, raceFile = UnitRace("player")
    if h.raceSet[(raceFile or ""):upper()] then return true end
    return h.fallback ~= nil and FG:MissingStarterGuide(true)
end

-- Guides of the active chain in order, with the active guide's position in the list.
function RouteCheck:Chain()
    local active = FG.db.char.activeGuide
    if not active or not FG.guides[active] then return {}, nil end
    local pointsTo = {}
    for _, name in ipairs(FG.guideOrder) do
        local g = FG:GetGuide(name)
        if g.header and g.header.next then
            pointsTo[g.header.next] = pointsTo[g.header.next] or {}
            table.insert(pointsTo[g.header.next], name)
        end
    end
    -- Walk back to the start of the chain (only through guides meant for this character).
    local before, cur, seen = {}, active, { [active] = true }
    while true do
        local prev
        for _, name in ipairs(pointsTo[cur] or {}) do
            if not seen[name] and IsOwnEarlierGuide(FG:GetGuide(name)) then prev = name; break end
        end
        if not prev then break end
        table.insert(before, 1, prev)
        seen[prev], cur = true, prev
    end
    local chain = before
    chain[#chain + 1] = active
    local activePos = #chain
    local g = FG:GetGuide(active)
    while g and g.header and g.header.next and FG.guides[g.header.next] and not seen[g.header.next] do
        seen[g.header.next] = true
        chain[#chain + 1] = g.header.next
        g = FG:GetGuide(g.header.next)
    end
    return chain, activePos
end

function RouteCheck:Index()
    local active = FG.db.char.activeGuide
    if self.index and self.indexFor == active then return self.index end
    local index = {}
    local chain, activePos = self:Chain()
    for pos, name in ipairs(chain) do
        for i, step in ipairs(FG:GetGuide(name).steps or {}) do
            if step.type == "ACCEPT" and step.questID then
                local where = pos == activePos and "here" or (pos < activePos and "earlier" or "later")
                -- Prefer this guide's entry, then the nearest later one.
                local old = index[step.questID]
                if not old or (old.where ~= "here" and where == "here") then
                    index[step.questID] = { guide = name, index = i, where = where, optional = step.optional }
                end
            end
        end
    end
    self.index, self.indexFor = index, active
    return index
end

-- Guides are re-chosen on level-up and by hand: rebuild lazily on the next lookup.
function RouteCheck:Invalidate()
    self.index = nil
end

-- One line saying where a quest stands on your route (with color codes), and whether it's on it.
function RouteCheck:Describe(questID)
    local ok, info = pcall(function() return self:Index()[questID] end)
    if not ok then
        FG:Print(("|cffff5555RouteCheck@Describe failed:|r %s (quest=%s guide=%s)"):format(
            tostring(info), tostring(questID), tostring(FG.db.char.activeGuide)))
        return nil, false
    end
    if not info then
        return GREY .. "Not on your route: take it only if you want to|r", false
    end
    local opt = info.optional and " (optional)" or ""
    if info.where == "later" then
        return GREEN .. "On your route later|r, in " .. info.guide .. opt, true
    elseif info.where == "earlier" then
        return GREEN .. "On your route|r, from an earlier guide (" .. info.guide .. ")" .. opt, true
    end
    local p = FG:GetProgress()
    local why = p and p.done and p.done[info.index]
    if why == "outleveled" then
        return YELLOW .. ("On your route (step %d), but skipped: grey for your level|r"):format(info.index), true
    elseif why == "skipped" then
        return YELLOW .. ("On your route (step %d), but you skipped it|r"):format(info.index), true
    end
    return GREEN .. ("On your route|r: step %d of this guide"):format(info.index) .. opt, true
end

---------------------------------------------------------------------------
-- Banner above the quest / gossip window
---------------------------------------------------------------------------
local banners = {}

local function Banner(host)
    local b = banners[host]
    if b then return b end
    b = CreateFrame("Frame", nil, host, "BackdropTemplate")
    b:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8x8", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        edgeSize = 12, insets = { left = 3, right = 3, top = 3, bottom = 3 },
    })
    b:SetBackdropColor(0.05, 0.05, 0.08, 0.92)
    b:SetPoint("BOTTOMLEFT", host, "TOPLEFT", 4, 2)
    b:SetPoint("BOTTOMRIGHT", host, "TOPRIGHT", -4, 2)
    b:SetFrameStrata(host:GetFrameStrata())
    b.text = b:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    b.text:SetPoint("TOPLEFT", 8, -7)
    b.text:SetPoint("TOPRIGHT", -8, -7)
    b.text:SetJustifyH("LEFT")
    b.text:SetWordWrap(true)
    banners[host] = b
    return b
end

local function ShowBanner(host, lines)
    if not host then return end
    local b = Banner(host)
    if #lines == 0 then b:Hide() return end
    b.text:SetText("|cff33ccffMittenQuest|r\n" .. table.concat(lines, "\n"))
    b:SetHeight(b.text:GetStringHeight() + 14)
    b:Show()
end

local function HideBanner(host)
    if host and banners[host] then banners[host]:Hide() end
end

-- quests = { { id = questID, title = "..." }, ... }; a single quest gets no title line.
local function LinesFor(quests)
    local lines = {}
    for _, q in ipairs(quests) do
        local text, onRoute = RouteCheck:Describe(q.id)
        if text then
            if #quests == 1 then
                lines[#lines + 1] = text
            else
                lines[#lines + 1] = (onRoute and READY or NOT_READY) .. (q.title or ns.Steps:QuestName(q.id)) .. ": " .. text
            end
        end
    end
    return lines
end

function RouteCheck:OnEvent(event)
    if not FG.db or not FG.db.profile.routeNote then
        HideBanner(QuestFrame); HideBanner(GossipFrame)
        return
    end
    if event == "QUEST_DETAIL" then
        local id = GetQuestID()
        if id and id ~= 0 then
            ShowBanner(QuestFrame, LinesFor({ { id = id, title = GetTitleText() } }))
        else
            HideBanner(QuestFrame)
        end
    elseif event == "QUEST_GREETING" then
        local quests = {}
        for i = 1, GetNumAvailableQuests() do
            local id = select(5, GetAvailableQuestInfo(i))
            if id and id ~= 0 then quests[#quests + 1] = { id = id, title = GetAvailableTitle(i) } end
        end
        ShowBanner(QuestFrame, LinesFor(quests))
    elseif event == "GOSSIP_SHOW" then
        local quests = {}
        for _, q in ipairs(C_GossipInfo.GetAvailableQuests() or {}) do
            if q.questID then quests[#quests + 1] = { id = q.questID, title = q.title } end
        end
        ShowBanner(GossipFrame, LinesFor(quests))
    elseif event == "QUEST_PROGRESS" or event == "QUEST_COMPLETE" or event == "QUEST_FINISHED" then
        HideBanner(QuestFrame)
    elseif event == "GOSSIP_CLOSED" then
        HideBanner(GossipFrame)
    end
end

function RouteCheck:Init()
    local f = CreateFrame("Frame")
    for _, e in ipairs({ "QUEST_DETAIL", "QUEST_GREETING", "GOSSIP_SHOW", "QUEST_PROGRESS",
                         "QUEST_COMPLETE", "QUEST_FINISHED", "GOSSIP_CLOSED" }) do
        f:RegisterEvent(e)
    end
    f:SetScript("OnEvent", function(_, event)
        local ok, err = pcall(self.OnEvent, self, event)
        if not ok then
            FG:Print(("|cffff5555RouteCheck@OnEvent failed:|r %s (event=%s guide=%s)"):format(
                tostring(err), tostring(event), tostring(FG.db and FG.db.char.activeGuide)))
        end
    end)
end
