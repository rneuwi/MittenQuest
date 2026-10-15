--[[
    Offline route checker - run outside the game with any Lua 5.1+:
        lua tools/lint.lua Guides/Horde/*.lua

    Loads the real Parser.lua and every guide registered by the given files, then
    validates each #next chain in order (state carries across guides): prereq order,
    flight paths flown before learned, dungeon quests carried, heavy drops.
    Exit code 1 if anything was flagged - suitable for a pre-commit hook.
]]

local root = (arg[0]:match("^(.*)[/\\]tools[/\\]") or ".") .. "/"
local ns = {}
assert(loadfile(root .. "Parser.lua"))("MittenQuest", ns)

local guides, byName = {}, {}
MittenQuest = {
    RegisterGuide = function(_, name, raw)
        local g = { name = name, raw = raw }
        guides[#guides + 1] = g
        byName[name] = g
    end,
}

if #arg == 0 then
    print("usage: lua tools/lint.lua <guide file> [...]")
    os.exit(2)
end
for _, path in ipairs(arg) do assert(loadfile(path))() end

for _, g in ipairs(guides) do
    g.steps, g.header, g.warnings = ns.Parser:Parse(g.raw, g.name)
end

-- Chains start at guides nobody points to with #next.
local pointed = {}
for _, g in ipairs(guides) do if g.header.next then pointed[g.header.next] = true end end

local problems, seen = 0, {}
for _, start in ipairs(guides) do
    if not pointed[start.name] then
        local prior = {}
        local g = start
        print("## chain from " .. start.name)
        while g do
            local issues = ns.Parser:Validate(g.steps, g.header, g.name, prior)
            if not seen[g.name] then
                for _, w in ipairs(g.warnings) do print("  parse  " .. w) end
                problems = problems + #g.warnings
            end
            print(("== %s (%d steps)"):format(g.name, #g.steps))
            for _, w in ipairs(issues) do print("  route  " .. w) end
            problems = problems + #issues
            seen[g.name] = true
            g = g.header.next and byName[g.header.next]
        end
    end
end
print(problems == 0 and "OK" or (problems .. " issue(s)"))
os.exit(problems == 0 and 0 or 1)
