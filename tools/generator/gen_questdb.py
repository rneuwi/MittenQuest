"""Writes MittenQuest/Data/Quests.lua (map pins / quest names / levels) for both factions.

Builds the generator's quest model once per faction and merges them:
  - quests available to one faction only get `faction = "Horde"` / `"Alliance"`, so the
    other faction never sees their pins;
  - quests both factions can take from the same giver are neutral;
  - if the factions take a quest from different givers, it gets the Horde location plus an
    `alliance = { map, x, y, giver }` override (MittenQuest picks by the player's faction).
"""
import sys, os

SP, OUT = sys.argv[1], sys.argv[2]
route_py = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'gen_route.py')
src = open(route_py).read().replace("if __name__ == '__main__':\n    main()", "")


def load(faction):
    os.environ['MQ_FACTION'] = faction
    sys.argv = ['gen_route.py', SP, os.path.join(SP, 'gen', faction)]
    g = {'__file__': route_py}
    exec(compile(src, 'gen_route.py', 'exec'), g)
    return g


H, A = load('Horde'), load('Alliance')
HQ, AQ = H['QUESTS'], A['QUESTS']
RACE_BITS, CLASS_BITS = H['RACE_BITS'], H['CLASS_BITS']
HORDE, ALLIANCE = H['HORDE'], H['ALLIANCE']


def luastr(s):
    return '"' + (s or '').replace('\\', '\\\\').replace('"', '\\"') + '"'


def giver_of(q):
    return q.startName or (('Drop: ' + q.startItem) if q.startItem else None)


def same_place(a, b):
    return a[0] == b[0] and abs(a[1] - b[1]) < 2 and abs(a[2] - b[2]) < 2


lines, counts = [], {'Horde': 0, 'Alliance': 0, 'both': 0, 'split': 0}
for qid in sorted(set(HQ) | set(AQ)):
    h = HQ.get(qid) if qid in HQ and HQ[qid].start else None
    a = AQ.get(qid) if qid in AQ and AQ[qid].start else None
    if not h and not a:
        continue
    q = h or a
    f = [f'name = {luastr(q.name)}', f'level = {q.level}', f'minLevel = {q.minLevel}',
         f'map = {q.start[0]}', f'x = {q.start[1]}', f'y = {q.start[2]}']
    if giver_of(q):
        f.append(f'giver = {luastr(giver_of(q))}')

    if h and a:
        mask = HORDE | ALLIANCE
        if same_place(h.start, a.start):
            counts['both'] += 1
        else:
            alt = f'alliance = {{ map = {a.start[0]}, x = {a.start[1]}, y = {a.start[2]}'
            if giver_of(a):
                alt += f', giver = {luastr(giver_of(a))}'
            f.append(alt + ' }')
            counts['split'] += 1
    else:
        faction = 'Horde' if h else 'Alliance'
        mask = HORDE if h else ALLIANCE
        f.append(f'faction = "{faction}"')
        counts[faction] += 1

    pre = list(q.preAll) + (q.preAny if len(q.preAny) == 1 else [])
    if pre:
        f.append('pre = { ' + ', '.join(map(str, pre)) + ' }')
    if q.races and (q.races & mask) != mask:
        rs = [r for r, b in RACE_BITS.items() if q.races & b and b & mask]
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

header = '''--[[
    MittenQuest - Data/Quests.lua  (GENERATED - do not hand-edit; see tools/generator/)

    Horde and Alliance quests from the QuestieDB Forever dataset (Classic base + Forever
    corrections + in-game Forever traces). QuestieDB derives from Questie (GPL-3.0);
    see CREDITS.md. Fields: name, level, minLevel, map/x/y (giver), giver, faction (only
    set for one-faction quests), alliance (Alliance-side giver when it differs), pre (must
    be turned in first), race/class (file-name sets), dungeon, group (elite), turnin {map,x,y}.
]]

local _, ns = ...
ns.QuestDB = ns.QuestDB or {}
local Q = ns.QuestDB

'''
open(OUT, 'w', encoding='utf-8').write(header + '\n'.join(lines) + '\n')
print(len(lines), 'quests written', counts, os.path.getsize(OUT), 'bytes')
