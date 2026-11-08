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


MAX_FROM = 3   # mobs/objects named in a pin's "drops from" note; the rest become "+N more"


def start_fields(q):
    """How the quest starts, for the pin tooltip: start = "object" | "drop" | "loot" |
    "inside" (NPC givers, the usual case, are left out), plus the starting item and what
    gives it."""
    kind = getattr(q, 'startKind', None)
    if not kind or kind == 'npc':
        return []
    f = [f'start = "{kind}"']
    if q.startItem:
        f.append(f'item = {luastr(q.startItem)}')
    src = list(getattr(q, 'startFrom', None) or [])
    if src:
        names = src[:MAX_FROM] + ([f'+{len(src) - MAX_FROM} more'] if len(src) > MAX_FROM else [])
        f.append('from = { ' + ', '.join(map(luastr, names)) + ' }')
    return f


N, area_map, area_items = H['N'], H['area_map'], H['area_items']
PATH_STEP = 0.4      # map units: drop waypoints closer than this to the last one kept
PATH_MIN_SPAN = 1.5  # a "path" smaller than this is an NPC standing still
paths = {}           # npc id -> (map, [[x, y, x, y, ...], ...]) or None


def patrol_path(q):
    """NPC id of the giver when it walks a route (QuestieDB waypoints) on the map its pin is
    on, else None. The route itself goes into `paths`, written once per NPC."""
    npc = getattr(q, 'startNpc', None)
    e = N.get(str(npc)) if npc else None
    if not e or not e.get('waypoints') or not q.start:
        return None
    if npc in paths:
        return npc if paths[npc] else None
    out = []
    for area, routes in area_items(e['waypoints']):
        if area_map(area) != q.start[0] or not isinstance(routes, list):
            continue
        for route in routes:
            pts = [(p[0], p[1]) for p in (route or [])
                   if isinstance(p, list) and len(p) >= 2 and p[0] is not None]
            kept = []
            for x, y in pts:
                if not kept or abs(x - kept[-1][0]) + abs(y - kept[-1][1]) >= PATH_STEP:
                    kept.append((x, y))
            if pts and kept[-1] != pts[-1]:
                kept.append(pts[-1])
            xs, ys = [p[0] for p in kept], [p[1] for p in kept]
            if len(kept) >= 2 and max(max(xs) - min(xs), max(ys) - min(ys)) >= PATH_MIN_SPAN:
                out.append([round(v, 1) for p in kept for v in p])
    paths[npc] = (q.start[0], out) if out else None
    return npc if out else None


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
    f += start_fields(q)
    if patrol_path(q):
        f.append(f'path = {q.startNpc}')

    if h and a:
        mask = HORDE | ALLIANCE
        if same_place(h.start, a.start):
            counts['both'] += 1
        else:
            alt = f'alliance = {{ map = {a.start[0]}, x = {a.start[1]}, y = {a.start[2]}'
            if giver_of(a):
                alt += f', giver = {luastr(giver_of(a))}'
            if start_fields(a) != start_fields(h):
                # Started differently on the Alliance side (NPC vs dropped item): its own
                # note, or start = false for a plain NPC giver.
                alt += ', ' + ', '.join(start_fields(a) or ['start = false'])
            if patrol_path(a) != patrol_path(h):
                alt += f', path = {patrol_path(a) or "false"}'
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
    be turned in first), race/class (file-name sets), dungeon, group (elite), turnin {map,x,y},
    start (how a non-NPC quest starts: object | drop | loot | inside), item (the starting
    item), from (mobs or objects that give that item), path (the giver walks a route: its
    ns.QuestPaths key).
    ns.QuestPaths[npc] = { map = uiMapID, { x1, y1, x2, y2, ... }, ... } (one list per route).
]]

local _, ns = ...
ns.QuestDB = ns.QuestDB or {}
local Q = ns.QuestDB
ns.QuestPaths = ns.QuestPaths or {}
local P = ns.QuestPaths

'''
path_lines = [f'P[{npc}] = {{ map = {v[0]}, '
              + ', '.join('{ ' + ', '.join(f'{c:.1f}' for c in route) + ' }' for route in v[1]) + ' }'
              for npc, v in sorted(paths.items()) if v]
open(OUT, 'w', encoding='utf-8').write(header + '\n'.join(lines + [''] + path_lines) + '\n')
print(len(lines), 'quests written', counts, len(path_lines), 'giver paths',
      os.path.getsize(OUT), 'bytes')

# Flight points per faction (Data/FlightPoints.lua, next to OUT): "Travel to" steps name the
# known flight point that lands closest to where you're going.
fp_out = os.path.join(os.path.dirname(OUT), 'FlightPoints.lua')
fp_lines = ['''--[[
    MittenQuest - Data/FlightPoints.lua  (GENERATED by tools/generator/gen_questdb.py)

    Flight masters per faction: { node name (as the guides use it), uiMapID, x, y }.
    "Travel to" steps use them to suggest the known flight point nearest the destination.
]]

local _, ns = ...
ns.FlightPoints = {''']
for faction, g in (('Horde', H), ('Alliance', A)):
    fp_lines.append(f'    {faction} = {{')
    for fm in sorted(g['FMS'], key=lambda f: f['node']):
        m, x, y = fm['loc'][0], fm['loc'][1], fm['loc'][2]
        fp_lines.append(f'        {{ {luastr(fm["node"])}, {m}, {x:.1f}, {y:.1f} }},')
    fp_lines.append('    },')
fp_lines.append('}')
open(fp_out, 'w', encoding='utf-8').write('\n'.join(fp_lines) + '\n')
print(len(H['FMS']), 'Horde and', len(A['FMS']), 'Alliance flight points written to', fp_out)
