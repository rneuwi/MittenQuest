"""Writes ForeverGuide/Data/Quests.lua (map pins / quest names / levels) from the generator's quest model."""
import sys, os
SP, OUT = sys.argv[1], sys.argv[2]
sys.argv = ['gen_route.py', SP, os.path.join(SP, 'gen', 'Horde')]
route_py = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'gen_route.py')
src = open(route_py).read().replace("if __name__ == '__main__':\n    main()", "")
g = {'__file__': route_py}
exec(compile(src, 'gen_route.py', 'exec'), g)
QUESTS, HORDE, RACE_BITS, CLASS_BITS, N = g['QUESTS'], g['HORDE'], g['RACE_BITS'], g['CLASS_BITS'], g['N']
Q = g['Q']

def luastr(s):
    return '"' + (s or '').replace('\\', '\\\\').replace('"', '\\"') + '"'

lines, n = [], 0
for qid in sorted(QUESTS):
    q = QUESTS[qid]
    if not q.start:
        continue
    f = [f'name = {luastr(q.name)}', f'level = {q.level}', f'minLevel = {q.minLevel}',
         f'map = {q.start[0]}', f'x = {q.start[1]}', f'y = {q.start[2]}']
    giver = q.startName or (('Drop: ' + q.startItem) if q.startItem else None)
    if giver:
        f.append(f'giver = {luastr(giver)}')
    pre = list(q.preAll) + (q.preAny if len(q.preAny) == 1 else [])
    if pre:
        f.append('pre = { ' + ', '.join(map(str, pre)) + ' }')
    if q.races and (q.races & HORDE) != HORDE:
        rs = [r for r, b in RACE_BITS.items() if q.races & b and b & HORDE]
        f.append('race = { ' + ', '.join(f'{r} = true' for r in rs) + ' }')
    if q.classes:
        cs = [c for c, b in CLASS_BITS.items() if q.classes & b]
        f.append('class = { ' + ', '.join(f'{c} = true' for c in cs) + ' }')
    if q.dungeon:
        f.append(f'dungeon = {luastr(q.dungeon)}')
    if q.group:
        f.append('group = true')
    if q.finish:
        f.append(f'turnin = {{ {q.finish[0]}, {q.finish[1]}, {q.finish[2]} }}')
    lines.append(f'Q[{qid}] = {{ ' + ', '.join(f) + ' }')
    n += 1

header = '''--[[
    ForeverGuide - Data/Quests.lua  (GENERATED - do not hand-edit; see tools/generator/)

    Horde-available quests from the QuestieDB Forever dataset (Classic base + Forever
    corrections + in-game Forever traces). QuestieDB derives from Questie (GPL-3.0);
    see CREDITS.md. Fields: name, level, minLevel, map/x/y (giver), giver, pre (must be
    turned in first), race/class (file-name sets), dungeon, group (elite), turnin {map,x,y}.
]]

local _, ns = ...
ns.QuestDB = ns.QuestDB or {}
local Q = ns.QuestDB

'''
open(OUT, 'w', encoding='utf-8').write(header + '\n'.join(lines) + '\n')
print(n, 'quests written', os.path.getsize(OUT), 'bytes')
