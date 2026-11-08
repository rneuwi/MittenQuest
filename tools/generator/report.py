#!/usr/bin/env python3
"""What changed between two QuestieDB extractions and the routes built from them.

Usage:
  python3 tools/generator/report.py OLD_WORK NEW_WORK OLD_GUIDES NEW_GUIDES QUESTIEDB

OLD_WORK / NEW_WORK are build work dirs (each with out/Quest.json, Npc.json, ...), the guides
dirs hold Horde/ and Alliance/ guide files, QUESTIEDB is the checkout NEW_WORK came from (for
zone names and the Classic quest list). Prints:
  1. entity changes (quests/NPCs/objects/items added, removed, which fields changed)
  2. NPCs that became elite/rare and the quests they touch
  3. Forever-added quests per zone and how complete their data is (new zones show up here)
  4. route changes per faction: titles, quests dropped/added
Read-only: writes nothing.
"""
import collections
import glob
import json
import os
import re
import sys

HORDE = 2 | 16 | 32 | 128 | 1 << 33
ALLIANCE = 1 | 4 | 8 | 64 | 1 << 32
# Forever's new outdoor zones (QuestieDB zone ids). Mount Hyjal keeps the classic id 616.
# Darkspear Islands (16606) is left out: it's the battleground, skipped by gen_route.py's SKIP_SORTS.
WATCH_ZONES = [16591, 16593, 16651, 616]   # Riverglades, Zephras Isle, Shen'dralas, Mount Hyjal


def load(work, name):
    path = os.path.join(work, 'out', name + '.json')
    with open(path, encoding='utf-8') as f:
        return json.load(f)


def idx(v, i):
    if isinstance(v, list):
        return v[i - 1] if len(v) >= i else None
    if isinstance(v, dict):
        return v.get(str(i))
    return None


def side(races):
    if not races or (races & HORDE and races & ALLIANCE):
        return 'B'
    return 'H' if races & HORDE else 'A'


def entity_changes(old, new):
    print('== 1. Entity changes')
    for name in ('Quest', 'Npc', 'Object', 'Item'):
        a, b = load(old, name), load(new, name)
        changed = [k for k in set(a) & set(b) if a[k] != b[k]]
        print(f'{name}: {len(set(b) - set(a))} added, {len(set(a) - set(b))} removed, {len(changed)} changed')
        fields = collections.defaultdict(list)
        for k in changed:
            for fk in set(a[k]) | set(b[k]):
                if a[k].get(fk) != b[k].get(fk):
                    fields[fk].append(k)
        for fk, ids in sorted(fields.items(), key=lambda x: -len(x[1])):
            print(f'    {fk:22} {len(ids):5}  e.g. {", ".join(sorted(ids, key=int)[:8])}')
        if name == 'Quest':
            for k in sorted(set(b) - set(a), key=int)[:40]:
                print(f'    + {k} {b[k].get("name")} (level {b[k].get("questLevel")})')


def quest_refs(q, items):
    """NPC ids a quest kills, loots from, or gets its starting item from."""
    o, ids = q.get('objectives') or {}, set()
    for x in idx(o, 1) or []:
        ids.add(str(x[0] if isinstance(x, list) else x))
    for x in idx(o, 5) or []:
        if isinstance(x, list) and x and isinstance(x[0], list):
            ids |= {str(n) for n in x[0]}
    item_ids = [x[0] if isinstance(x, list) else x for x in idx(o, 3) or []]
    item_ids += list(idx(q.get('startedBy') or {}, 3) or [])
    for iid in item_ids:
        ids |= {str(n) for n in (items.get(str(iid)) or {}).get('npcDrops') or []}
    return ids


def rank_changes(old, new):
    print('\n== 2. NPCs whose rank changed (1 elite, 2 rare elite, 3 boss, 4 rare)')
    a, b = load(old, 'Npc'), load(new, 'Npc')
    quests, items = load(new, 'Quest'), load(new, 'Item')
    refs = collections.defaultdict(list)
    for qid, q in quests.items():
        for n in quest_refs(q, items):
            refs[n].append(qid)
    rows = [(i, b[i]) for i in b if i in a and a[i].get('rank') != b[i].get('rank')]
    print(f'{len(rows)} NPCs; those that quests use:')
    for i, e in rows:
        if i in refs:
            qs = '; '.join(f'{q} {quests[q].get("name")}' for q in refs[i][:4])
            print(f'    {i} {e.get("name")} L{e.get("maxLevel")} rank {a[i].get("rank")} -> {e.get("rank")} | {qs}')


def zone_names(qdb):
    names = {}
    with open(os.path.join(qdb, 'src', 'corrections', 'enum', 'zones.lua'), encoding='utf-8') as f:
        for line in f:
            m = re.match(r'\s*([A-Z0-9_]+)\s*=\s*(\d+),', line)
            if m:
                names[int(m.group(2))] = m.group(1)
    return names


def forever_coverage(new, qdb, guides):
    print('\n== 3. Forever-added quests by zone (not in Classic Era)')
    with open(os.path.join(qdb, 'data', 'Classic', 'classicQuestDB.lua'), encoding='utf-8', errors='replace') as f:
        era = set(re.findall(r'^\s*\[(\d+)\]\s*=\s*\{', f.read(), re.M))
    quests, npcs, objs = load(new, 'Quest'), load(new, 'Npc'), load(new, 'Object')
    support = load(new, 'support')
    names = zone_names(qdb)
    routed = set()
    for f in glob.glob(os.path.join(guides, '*', '*.lua')):
        with open(f, encoding='utf-8') as fh:
            routed |= set(re.findall(r'^\[T (\d+)', fh.read(), re.M))

    def zone_of(e):
        if not e:
            return None
        s = e.get('spawns')
        if isinstance(s, dict) and s:
            return int(next(iter(s)))
        z = e.get('zoneID')
        return z if isinstance(z, int) and z > 0 else None

    by_zone = collections.defaultdict(list)
    for qid, q in quests.items():
        if qid in era:
            continue
        sb = q.get('startedBy') or {}
        z = next((zone_of(npcs.get(str(i))) for i in idx(sb, 1) or [] if zone_of(npcs.get(str(i)))), None) or \
            next((zone_of(objs.get(str(i))) for i in idx(sb, 2) or [] if zone_of(objs.get(str(i)))), None)
        if z is None and isinstance(q.get('zoneOrSort'), int) and q['zoneOrSort'] > 0:
            z = q['zoneOrSort']
        if z is not None:
            z = int(support['subzoneParent'].get(str(z), z))
        by_zone[z].append(qid)
    print(f'{sum(len(v) for v in by_zone.values())} quests. giver/turnin/objs = how many have that data; '
          f'xp = how many have an XP value; routed = turned in by a guide')
    print(f'{"zone":34}{"quests":>7}{"giver":>7}{"turnin":>7}{"objs":>6}{"xp":>5}{"levels":>9}{"H/A/B":>10}{"routed":>7}')
    for z, ids in sorted(by_zone.items(), key=lambda r: -len(r[1])):
        qs = [quests[k] for k in ids]
        giver = sum(1 for q in qs if any(idx(q.get('startedBy') or {}, k) for k in (1, 2, 3)))
        turnin = sum(1 for q in qs if any(idx(q.get('finishedBy') or {}, k) for k in (1, 2)))
        objs_n = sum(1 for q in qs if q.get('objectives'))
        xp = sum(1 for k in ids if (support['xp'].get(k) or [None, 0])[1])
        lv = [q['questLevel'] for q in qs if (q.get('questLevel') or 0) > 0]
        sides = collections.Counter(side(q.get('requiredRaces') or 0) for q in qs)
        label = (names.get(z) or str(z))[:33] if z else '(no location)'
        levels = f'{min(lv)}-{max(lv)}' if lv else '-'
        print(f'{label:34}{len(ids):>7}{giver:>7}{turnin:>7}{objs_n:>6}{xp:>5}{levels:>9}'
              f'{sides["H"]:>4}/{sides["A"]}/{sides["B"]:<3}{sum(1 for k in ids if k in routed):>5}')
    # Forever's new zones, printed even with no quests yet: the ones to wait on.
    print('\nNew Forever zones (quests in data / turned in by a guide):')
    for zid in WATCH_ZONES:
        ids = by_zone.get(zid, [])
        print(f'    {names.get(zid, zid):22} {len(ids):4} quests, {sum(1 for k in ids if k in routed):4} routed'
              + ('   <- no quest data yet' if not ids else ''))


def turnins(d):
    out, titles = {}, []
    for f in sorted(glob.glob(os.path.join(d, '*.lua'))):
        with open(f, encoding='utf-8') as fh:
            s = fh.read()
        m = re.search(r'RegisterGuide\(\[==\[(.*?)\]==\]', s)
        if m:
            titles.append(m.group(1))
        for m in re.finditer(r'^\[T (\d+) ([^|]*)\|', s, re.M):
            out[int(m.group(1))] = (m.group(2).strip(), os.path.basename(f))
    return out, titles


def route_changes(old_guides, new_guides):
    print('\n== 4. Route changes')
    for faction in ('Horde', 'Alliance'):
        o, ot = turnins(os.path.join(old_guides, faction))
        n, nt = turnins(os.path.join(new_guides, faction))
        print(f'{faction}: {len(o)} -> {len(n)} quests turned in')
        for t in sorted(set(ot) - set(nt)):
            print(f'    - guide {t}')
        for t in sorted(set(nt) - set(ot)):
            print(f'    + guide {t}')
        dropped, added = sorted(set(o) - set(n)), sorted(set(n) - set(o))
        print(f'    {len(dropped)} quests dropped, {len(added)} added')
        for q in dropped[:30]:
            print(f'      - {q} {o[q][0]} ({o[q][1]})')
        for q in added[:30]:
            print(f'      + {q} {n[q][0]} ({n[q][1]})')


def main():
    if len(sys.argv) != 6:
        print(__doc__)
        sys.exit(2)
    old, new, old_guides, new_guides, qdb = sys.argv[1:]
    entity_changes(old, new)
    rank_changes(old, new)
    forever_coverage(new, qdb, new_guides)
    route_changes(old_guides, new_guides)


if __name__ == '__main__':
    main()
