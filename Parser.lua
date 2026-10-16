--[[
    MittenQuest - Parser.lua
    Turns plain-text guide strings into step tables, and validates routing.

    ── LINE FORMAT ────────────────────────────────────────────────────────
    One step per line. Blank lines and "--" comments are ignored.
    Untagged lines (and [N ...]) are NOTES attached to the step above them -
    they never block progress, so every step completes from in-game actions.

        [TAG args | key=value; key=value; ...]

    TAGS
        A <questID> <Name>          accept quest
        C <questID> <Name>          complete objectives
        T <questID> <Name>          turn in quest
        G <x>,<y> <uiMapID> <Label> go to coordinates
        P <Flight node>             learn flight path (talk to flight master)
        F <Flight node>             fly to node
        H [Destination]             use hearthstone
        S <Inn location>            set hearthstone
        L <level>                   grind until level
        R <Class - Town>            visit your class trainer (use with class=)
        D <Dungeon name>            dungeon run (pair with quests=...)
        N <text>                    note (same as an untagged line)

    KEYS (all optional, after "|", separated by ";")
        at=x,y,uiMapID       waypoint for any step
        pre=id,id            quests that must be TURNED IN first (prerequisite chain)
        item=id:count,...    items to collect (progress shown from bags)
        drop=35              drop chance % for item= (shows expected kills)
        mob=Name             what to kill/loot
        lvl=12               minimum level to accept
        class=Warrior,Mage   only for these classes   (class file names, any case)
        race=Orc,Troll       only for these races     (race file names)
        faction=Horde        only for this faction
        quests=id,id         (D steps) dungeon quests to carry in
        alt=text             fallback shown if a flight path isn't known
        xl=12.4              level the route expects you to be at this step (pace display)
        via=x,y,map>x,y,map  path points the arrow walks first (ramps, cave mouths, bridges)
        cave=Name            target is inside this cave (Data/Entrances.lua); arrow goes to its mouth
        opt                  optional step (auto-skipped if prereqs are missing)

    GUIDE HEADER DIRECTIVES (lines starting with #)
        #knownfp Orgrimmar, Crossroads    flight paths assumed known at guide start
        #next <Guide name>                guide to load when this one finishes
        #levels 1-12                      level range (guide auto-selection, outleveled detection)
        #faction Horde                    guide only offered to this faction
        #race Orc, Troll                  guide only offered to these races (race file names)
]]

local _, ns = ...
local Parser = {}
ns.Parser = Parser

local TAGS = {
    A = "ACCEPT", C = "COMPLETE", T = "TURNIN", G = "GOTO",
    P = "GETFP", F = "FLY", H = "HEARTH", S = "SETHEARTH",
    L = "LEVEL", D = "DUNGEON", N = "TEXT", R = "TRAIN",
}

local function trim(s) return (s:match("^%s*(.-)%s*$")) end

local function splitList(s, fn)
    local out = {}
    for rawPart in s:gmatch("[^,]+") do
        local part = trim(rawPart)
        if part ~= "" then out[#out + 1] = fn and fn(part) or part end
    end
    return out
end

local function toSet(list)
    local set = {}
    for _, v in ipairs(list) do set[v:upper()] = true end
    return set
end

local function parseCoords(s)
    local x, y, m = s:match("^([%d%.]+)%s*,%s*([%d%.]+)%s*,%s*(%d+)$")
    if x then return { x = tonumber(x), y = tonumber(y), mapID = tonumber(m) } end
end

-- Key/value options after the "|" separator.
local function parseOptions(step, optText, warn)
    for rawChunk in optText:gmatch("[^;]+") do
        local chunk = trim(rawChunk)
        local key, val = chunk:match("^(%w+)%s*=%s*(.+)$")
        key = (key or chunk):lower()
        if key == "opt" then
            step.optional = true
        elseif not val then
            warn(("unknown flag '%s'"):format(chunk))
        elseif key == "at" then
            step.coords = parseCoords(val) or warn("bad at= coords: " .. val)
        elseif key == "pre" then
            step.pre = splitList(val, tonumber)
        elseif key == "item" then
            step.items = {}
            for _, pair in ipairs(splitList(val)) do
                local id, n = pair:match("^(%d+):?(%d*)$")
                if id then
                    step.items[#step.items + 1] = { id = tonumber(id), count = tonumber(n) or 1 }
                else
                    warn("bad item= entry: " .. pair)
                end
            end
        elseif key == "drop" then
            step.drop = tonumber((val:gsub("%%", "")))
        elseif key == "mob" then
            step.mob = val
        elseif key == "lvl" then
            step.minLevel = tonumber(val)
        elseif key == "class" then
            step.class = toSet(splitList(val))
        elseif key == "race" then
            step.race = toSet(splitList(val))
        elseif key == "faction" then
            step.faction = val:upper()
        elseif key == "quests" then
            step.quests = splitList(val, tonumber)
        elseif key == "via" then
            step.via = {}
            for pt in val:gmatch("[^>]+") do
                local c = parseCoords(trim(pt))
                if c then step.via[#step.via + 1] = c else warn("bad via= point: " .. pt) end
            end
        elseif key == "cave" then
            step.cave = val
        elseif key == "xl" then
            step.xl = tonumber(val)
        elseif key == "alt" then
            step.alt = val
        else
            warn(("unknown key '%s'"):format(key))
        end
    end
end

local function parseStep(line, lineNo, warn)
    local inner = line:match("^%[(.-)%]$")
    if not inner then
        return { type = "TEXT", text = line }
    end

    local head, opts = inner:match("^(.-)%s*|%s*(.*)$")
    head = head or inner
    local tag, body = head:match("^(%a)%s*(.*)$")
    local stepType = tag and TAGS[tag:upper()]
    if not stepType then
        warn("unknown tag: " .. head)
        return { type = "TEXT", text = line }
    end

    local step = { type = stepType }
    body = trim(body or "")

    if stepType == "ACCEPT" or stepType == "COMPLETE" or stepType == "TURNIN" then
        local qid, name = body:match("^(%d+)%s*(.*)$")
        if not qid then warn("missing quest ID: " .. body) end
        step.questID, step.text = tonumber(qid), (name ~= "" and name) or body
    elseif stepType == "GOTO" then
        local x, y, m, label = body:match("^([%d%.]+)%s*,%s*([%d%.]+)%s+(%d+)%s*(.*)$")
        if x then
            step.coords = { x = tonumber(x), y = tonumber(y), mapID = tonumber(m) }
            step.text = label ~= "" and label or (x .. ", " .. y)
        else
            warn("bad GOTO: " .. body)
            step.text = body
        end
    elseif stepType == "LEVEL" then
        step.level = tonumber(body)
        step.text = "Grind to level " .. body
    else -- GETFP, FLY, HEARTH, SETHEARTH, DUNGEON, TEXT
        step.text = body
        step.node = body ~= "" and body or nil
    end

    if opts and opts ~= "" then parseOptions(step, opts, warn) end
    return step
end

-- Returns steps, header, warnings
function Parser:Parse(raw, guideName)
    local steps, header, warnings = {}, { knownFP = {} }, {}
    local pendingNotes = {}
    local lineNo = 0
    for rawLine in (raw or ""):gmatch("[^\r\n]*") do
        lineNo = lineNo + 1
        local line = trim((rawLine:gsub("%s%-%-.*$", ""):gsub("^%-%-.*$", "")))
        local function warn(msg)
            warnings[#warnings + 1] = ("%s:%d %s"):format(guideName or "?", lineNo, msg)
        end
        if line == "" then
            -- skip
        elseif line:sub(1, 1) == "#" then
            local dir, val = line:match("^#(%a+)%s*(.*)$")
            dir = dir and dir:lower()
            if dir == "knownfp" then
                for _, n in ipairs(splitList(val)) do header.knownFP[#header.knownFP + 1] = n end
            elseif dir then
                header[dir] = trim(val)
                if dir == "levels" then
                    local lo, hi = val:match("(%d+)%s*%-%s*(%d+)")
                    header.levelMin, header.levelMax = tonumber(lo), tonumber(hi)
                elseif dir == "race" then
                    header.raceSet = toSet(splitList(val))
                end
            end
        else
            local step = parseStep(line, lineNo, warn)
            step.line = lineNo
            if step.type == "TEXT" then
                -- Notes ride on the previous step (or the first step, if at the top).
                local host = steps[#steps]
                if host then
                    host.notes = host.notes or {}
                    host.notes[#host.notes + 1] = step.text
                else
                    pendingNotes[#pendingNotes + 1] = step.text
                end
            else
                if #pendingNotes > 0 then step.notes, pendingNotes = pendingNotes, {} end
                steps[#steps + 1] = step
            end
        end
    end
    return steps, header, warnings
end

---------------------------------------------------------------------------
-- Route validation (runs in-game via /mq check, or offline via tools/lint.lua)
-- Catches pathing mistakes: prereqs out of order, flying to unlearned nodes,
-- dungeon quests not picked up before the dungeon, drops with huge kill counts.
---------------------------------------------------------------------------
local function norm(s) return (s or ""):lower():gsub("[^%w]", "") end

-- prior (optional): state carried over from earlier guides in a #next chain:
--   { turnedIn = {[id]=true}, accepted = {[id]=true}, knownFP = {[norm]=true} }
-- It is updated in place, so validating a chain in order just passes the same table.
function Parser:Validate(steps, header, guideName, prior)
    local out = {}
    local function warn(step, msg)
        out[#out + 1] = { line = step.line or 0, msg = msg }
    end

    prior = prior or {}
    prior.turnedIn, prior.accepted, prior.knownFP = prior.turnedIn or {}, prior.accepted or {}, prior.knownFP or {}
    local accepted, turnedIn, knownFP = prior.accepted, prior.turnedIn, prior.knownFP
    local function hearthNorm(s) return (s or ""):lower():gsub("[^%w]", "") end
    prior.open = prior.open or {} -- [questID] = "guide:line" of a pickup not yet turned in
    local acceptLine = prior.open
    for _, n in ipairs(header and header.knownFP or {}) do knownFP[norm(n)] = true end

    -- Quests turned in anywhere in the guide (to distinguish "late" vs "never").
    local turnedInAnywhere = {}
    for _, s in ipairs(steps) do
        if s.type == "TURNIN" and s.questID then turnedInAnywhere[s.questID] = true end
    end

    for _, s in ipairs(steps) do
        local q = s.questID
        if s.type == "ACCEPT" and q then
            for _, p in ipairs(s.pre or {}) do
                if not turnedIn[p] then
                    if turnedInAnywhere[p] then
                        warn(s, ("accepts %d before its prereq %d is turned in"):format(q, p))
                    elseif not s.optional then
                        warn(s, ("prereq %d for %d never turned in by this guide (mark opt or add chain)"):format(p, q))
                    end
                end
            end
            if accepted[q] then warn(s, ("quest %d accepted twice"):format(q)) end
            accepted[q], acceptLine[q] = true, ("%s:%d"):format(guideName or "?", s.line or 0)
        elseif s.type == "COMPLETE" and q and not accepted[q] then
            warn(s, ("completes %d before accepting it"):format(q))
        elseif s.type == "TURNIN" and q then
            if not accepted[q] then warn(s, ("turns in %d without accepting it"):format(q)) end
            turnedIn[q] = true
            acceptLine[q] = nil
        elseif s.type == "GETFP" and s.node then
            knownFP[norm(s.node)] = true
        elseif s.type == "FLY" and s.node then
            if not knownFP[norm(s.node)] and not s.alt then
                warn(s, ("flies to '%s' before learning it (add P step, #knownfp, or alt=)"):format(s.node))
            end
        elseif s.type == "SETHEARTH" and s.node then
            prior.bind = s.node
        elseif s.type == "HEARTH" then
            if not prior.bind then
                warn(s, "uses the hearthstone before any 'set hearth' step")
            elseif s.node and hearthNorm(s.node) ~= hearthNorm(prior.bind) then
                warn(s, ("hearths to '%s' but the hearthstone is set to '%s'"):format(s.node, prior.bind))
            end
        elseif s.type == "DUNGEON" then
            if not s.quests or #s.quests == 0 then
                warn(s, "dungeon step has no quests= list")
            end
            for _, dq in ipairs(s.quests or {}) do
                if not accepted[dq] then
                    warn(s, ("dungeon quest %d not picked up before entering"):format(dq))
                elseif turnedIn[dq] then
                    warn(s, ("dungeon quest %d already turned in before the run"):format(dq))
                end
            end
        end

        if s.items and s.drop and s.drop > 0 then
            for _, it in ipairs(s.items) do
                local kills = math.ceil(it.count / (s.drop / 100))
                if kills >= 30 and prior.notes then
                    warn(s, ("note: item %d x%d at %g%% ~ %d kills"):format(it.id, it.count, s.drop, kills))
                end
            end
        end
    end

    -- Quests accepted but never turned in (wasted pickups / abandoned chains),
    -- judged at the end of a #next chain since turn-ins can happen in later guides.
    if not (header and header.next) then
        for q, where in pairs(acceptLine) do
            out[#out + 1] = { line = 0, msg = ("quest %d accepted at %s but never turned in"):format(q, where) }
        end
    end
    table.sort(out, function(a, b) return a.line < b.line end)
    for i, w in ipairs(out) do
        out[i] = ("%s:%d %s"):format(guideName or "?", w.line, w.msg)
    end
    return out
end
