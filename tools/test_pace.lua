--[[
    Offline check of the pace math (Pace.lua): the expected level comes from the steps you
    did, in any order, not from where the cursor sits.
        luajit tools/test_pace.lua .
    Exit code 1 on any failure.
]]
local root = arg[1] or "."
local inlog, turned = {}, {}
local level, cur, max = 32, 0, 54500
_G.C_QuestLog = {
    IsQuestFlaggedCompleted = function(q) return turned[q] or false end,
    GetLogIndexForQuestID = function(q) return inlog[q] and 1 or nil end,
}
function UnitLevel() return level end
function UnitXP() return cur end
function UnitXPMax() return max end

local steps, prog
local ns = { FG = {
    db = { profile = { pace = { show = true } } },
    GetActiveSteps = function() return steps, prog end,
} }
assert(loadfile(root .. "/Pace.lua"))("MittenQuest", ns)
local Pace = ns.Pace

local failures = 0
local function check(label, ok, detail)
    print(("%s  %s%s"):format(ok and "ok  " or "FAIL", label, detail and ("  -> " .. detail) or ""))
    if not ok then failures = failures + 1 end
end
local function near(a, b) return a and math.abs(a - b) < 0.01 end

-- A route block: Mulgore first (32.0 -> 33.0), then Desolace (33.0 -> 34.0).
steps = {
    { type = "ACCEPT", questID = 1, xl = 32.0 },
    { type = "TURNIN", questID = 1, xl = 33.0 },
    { type = "ACCEPT", questID = 2, xl = 33.0 },
    { type = "TURNIN", questID = 2, xl = 34.0 },
    { type = "ACCEPT", questID = 3, xl = 34.0 },
}
prog = { index = 1, done = {} }
-- Desolace's XP (33 -> 34) earned from 32 lands a bit past 33: XP is converted at each
-- level's own rate.
local desolaceOnly = Pace:LevelAfter(32.0, Pace:XPBetween(33.0, 34.0))
check("nothing done: expected is the guide's start", near(Pace:Expected(), 32.0), tostring(Pace:Expected()))

-- Did Desolace first (older route order): cursor is still on step 1, Desolace counts.
turned[2] = true
prog.done = { [3] = "game", [4] = "game" }
check("out of order: Desolace's level counts", near(Pace:Expected(), desolaceOnly), tostring(Pace:Expected()))

-- Then Mulgore: the cursor leaps to step 5 (xl 34.0) and the expected level is 34.0,
-- because both blocks are really done.
turned[1] = true
prog.done = { [1] = "game", [2] = "game", [3] = "game", [4] = "game" }
prog.index = 5
check("both done: route level", near(Pace:Expected(), 34.0), tostring(Pace:Expected()))

-- Mulgore never picked up (turn-in done only because the quest isn't in the log): no credit.
turned[1] = nil
prog.done = { [1] = "skipped", [2] = "notinlog", [3] = "game", [4] = "game" }
check("skipped / never had: no credit", near(Pace:Expected(), desolaceOnly), tostring(Pace:Expected()))

-- An optional turn-in counts as done by the game when the quest isn't in the log.
prog.done = { [1] = "game", [2] = "game", [3] = "game", [4] = "game" }
check("optional turn-in without the quest: no credit", near(Pace:Expected(), desolaceOnly), tostring(Pace:Expected()))

-- Pace tag compares your real level with the done work.
level, cur = 32, 54500 / 2
local _, actual, diff = Pace:Info()
check("player level fraction", near(actual, 32.5), tostring(actual))
check("diff against done work", near(diff, 32.5 - desolaceOnly), tostring(diff))

-- LevelAfter / XPBetween round-trip across a level boundary.
local xp = Pace:XPBetween(32.4, 34.2)
check("LevelAfter inverts XPBetween", near(Pace:LevelAfter(32.4, xp), 34.2), tostring(Pace:LevelAfter(32.4, xp)))

-- Wall projection only counts steps still to do between here and the wall.
ns.QuestDB = { [3] = { minLevel = 34 } }
turned = { [2] = true }
prog.done = { [3] = "game", [4] = "game" }
prog.index = 1
level, cur, max = 33, 5860, 58600   -- 33.1
local wall, need = Pace:NextWall()
check("wall: Mulgore's 1.0 level gets you to 34", wall == nil, wall and ("needs " .. need) or nil)
level, cur, max = 32, 54500 / 2, 54500
wall, need = Pace:NextWall()
check("wall: from 32.5 you're short", wall == steps[5] and need == 34, wall and ("needs " .. need) or "nil")

-- Carry-over: finishing this guide with Mulgore skipped (expected 33.x, route end 34.0)
-- starts the next guide that far below its own start, instead of at the route's 34.0.
local nextSteps = {
    { type = "ACCEPT", questID = 10, xl = 34.0 },
    { type = "TURNIN", questID = 10, xl = 35.0 },
}
ns.FG.db.char = { activeGuide = "A" }
ns.FG.GetGuide = function(_, name) return name == "B" and { steps = nextSteps } or nil end
ns.FG.Print = function() end
turned = { [2] = true }
prog.done = { [1] = "skipped", [2] = "notinlog", [3] = "game", [4] = "game" }
local finishedAt = Pace:Expected()
Pace:CarryInto("B")
check("carry: saved below the next guide's start", near(ns.FG.db.char.paceStart.B, 34.0 - (34.0 - finishedAt)),
    tostring(ns.FG.db.char.paceStart.B))
steps, prog = nextSteps, { index = 1, done = {} }
ns.FG.db.char.activeGuide = "B"
check("carry: next guide starts where you left off", near(Pace:Expected(), finishedAt), tostring(Pace:Expected()))
ns.FG.db.char.activeGuide = "C"
check("carry: other guides keep the route's start", near(Pace:Expected(), 34.0), tostring(Pace:Expected()))
ns.FG.db.char.paceStart.C = 36.0
check("carry: never above the route's start", near(Pace:Expected(), 34.0), tostring(Pace:Expected()))

if failures > 0 then
    print(("%d failure(s)"):format(failures))
    os.exit(1)
end
print("all pace checks passed")
