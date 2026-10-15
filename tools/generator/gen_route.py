"""
Horde 1-60 route generator for ForeverGuide.

Input : QuestieDB Forever data (corrected), dumped to JSON by extract.py / support.py
Output: ForeverGuide/Guides/Horde/*.lua  and  ForeverGuide/Data/Quests.lua

Method: simulate a Horde character. At each point pick the cheapest next action on
the current map (accept / complete objectives / turn in), weighted by distance; leave
a zone when it has nothing worthwhile left for the current level and pick the zone
with the most available quest XP next. Quest XP comes from QuestieDB's XP table
(x1.5 for kill XP while questing). Flight paths are learned when passed.
"""
import json, math, re, sys, os, collections

SP, OUTDIR = sys.argv[1], sys.argv[2]

# Hand-made fixes that survive every regeneration (see corrections.json).
_corr_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'corrections.json')
CORR = json.load(open(_corr_path, encoding='utf-8')) if os.path.exists(_corr_path) else {}
CORR_SKIP = {int(q) for q in CORR.get('skip', {})}
CORR_NOTES = {int(q): t for q, t in CORR.get('notes', {}).items()}
Q = json.load(open(os.path.join(SP, 'out/Quest.json')))
N = json.load(open(os.path.join(SP, 'out/Npc.json')))
O = json.load(open(os.path.join(SP, 'out/Object.json')))
I = json.load(open(os.path.join(SP, 'out/Item.json')))
S = json.load(open(os.path.join(SP, 'out/support.json')))

# ---------------------------------------------------------------- constants
RACE_BITS = {'HUMAN': 1, 'ORC': 2, 'DWARF': 4, 'NIGHTELF': 8, 'SCOURGE': 16, 'TAUREN': 32, 'GNOME': 64, 'TROLL': 128}
RACE_NAME = {'ORC': 'Orc', 'SCOURGE': 'Scourge', 'TAUREN': 'Tauren', 'TROLL': 'Troll'}
HORDE = 2 | 16 | 32 | 128
ALLIANCE = 1 | 4 | 8 | 64
CLASS_BITS = {'WARRIOR': 1, 'PALADIN': 2, 'HUNTER': 4, 'ROGUE': 8, 'PRIEST': 16, 'SHAMAN': 64,
              'MAGE': 128, 'WARLOCK': 256, 'DRUID': 1024}
XP_TO_LEVEL = [400, 900, 1400, 2100, 2800, 3600, 4500, 5400, 6500, 7600, 8800, 10100, 11400, 12900, 14400,
               16000, 17700, 19400, 21300, 23200, 25200, 27300, 29400, 31700, 34000, 36400, 38900, 41400,
               44300, 47400, 50800, 54500, 58600, 62800, 67100, 71600, 76100, 80800, 85700, 90700, 95800,
               101000, 106300, 111800, 117500, 123200, 129100, 135100, 141200, 147500, 153900, 160400,
               167100, 173900, 180800, 187900, 195000, 202300, 209800]
def kill_xp_factor(L):
    """Quest XP x this ~= total XP while questing (mob kills on the way)."""
    return 2.3 if L < 6 else 2.0 if L < 20 else 2.2
LOG_LIMIT = 20

ZONE_NAMES = {
    14: 'Durotar', 363: 'Valley of Trials', 215: 'Mulgore', 220: 'Red Cloud Mesa', 85: 'Tirisfal Glades',
    154: 'Deathknell', 130: 'Silverpine Forest', 17: 'The Barrens', 406: 'Stonetalon Mountains',
    331: 'Ashenvale', 267: 'Hillsbrad Foothills', 400: 'Thousand Needles', 405: 'Desolace', 45: 'Arathi Highlands',
    33: 'Stranglethorn Vale', 15: 'Dustwallow Marsh', 3: 'Badlands', 8: 'Swamp of Sorrows', 357: 'Feralas',
    47: 'The Hinterlands', 440: 'Tanaris', 51: 'Searing Gorge', 16: 'Azshara', 490: "Un'Goro Crater",
    361: 'Felwood', 46: 'Burning Steppes', 28: 'Western Plaguelands', 139: 'Eastern Plaguelands',
    618: 'Winterspring', 1377: 'Silithus', 4: 'Blasted Lands', 36: 'Alterac Mountains', 1497: 'Undercity',
    1637: 'Orgrimmar', 1638: 'Thunder Bluff', 493: 'Moonglade', 16593: 'Zephras Isle', 16651: 'Desolace',
    16611: 'Ruins of Lordaeron', 11: 'Wetlands', 10: 'Duskwood', 44: 'Redridge Mountains', 40: 'Westfall',
    38: 'Loch Modan', 1: 'Dun Morogh', 12: 'Elwynn Forest', 148: 'Darkshore', 141: 'Teldrassil', 25: 'Blackrock Mountain',
}
KALIMDOR = {14, 363, 215, 220, 17, 406, 331, 400, 405, 15, 357, 440, 16, 490, 361, 618, 1377, 1637, 1638, 493,
            16651, 148, 141}
EASTERN = {85, 154, 130, 267, 45, 33, 8, 3, 47, 51, 46, 28, 139, 4, 36, 1497, 16611, 11, 10, 44, 40, 38, 1, 12, 25}

# Flight master NPC -> taxi node town (prefix of the in-game node name)
FP_NODES = {
    2861: 'Kargath', 6026: 'Stonard', 11899: 'Brackenwall Village', 8610: 'Valormok', 3615: 'Crossroads',
    10378: 'Camp Taurajo', 16227: 'Ratchet', 2858: 'Booty Bay', 1387: "Grom'gol", 2851: 'Hammerfall',
    13177: 'Flame Crest', 4314: 'Revantusk Village', 3305: 'Thorium Point', 2226: 'The Sepulcher',
    12636: "Light's Hope Chapel", 2389: 'Tarren Mill', 11901: "Zoram'gar Outpost", 12616: 'Splintertree Post',
    8020: 'Camp Mojache', 11900: 'Bloodvenom Post', 4317: 'Freewind Post', 6726: 'Shadowprey Village',
    4312: 'Sun Rock Retreat', 7824: 'Gadgetzan', 10583: "Marshal's Refuge", 12740: 'Moonglade',
    11139: 'Everlook', 15178: 'Cenarion Hold', 4551: 'Undercity', 3310: 'Orgrimmar', 2995: 'Thunder Bluff',
}
# Zones/sorts never routed: battlegrounds, raids, PvP island, profession writs, holiday sorts (<0)
SKIP_SORTS = {3277, 3358, 2597, 2717, 3428, 3456, 2677, 3429, 2159, 1977, 16941, 16606, 1583}
MAX_DUNGEON_QUEST_LEVEL = 58


def idx(v, i):
    """QuestieDB sparse arrays arrive as lists or {"i": ...} dicts."""
    if isinstance(v, list):
        return v[i - 1] if len(v) >= i else None
    if isinstance(v, dict):
        return v.get(str(i))
    return None


def area_map(area):
    a = str(area)
    m = S['area2mapOverride'].get(a)
    if m is None:
        m = S['area2map'].get(a)
    return m if m else None


def dungeon_name(sort):
    d = S['dungeons'].get(str(sort))
    if d is None:
        for k, v in S['dungeons'].items():
            alts = idx(v, 2) or []
            if sort in alts:
                d = v
                break
    return idx(d, 1) if d else None


def dungeon_entrance(sort):
    d = S['dungeons'].get(str(sort))
    if not d:
        for v in S['dungeons'].values():
            if sort in (idx(v, 2) or []):
                d = v
                break
    if not d:
        return None
    locs = idx(d, 4) or []
    if isinstance(locs, dict):
        locs = list(locs.values())
    for loc in locs:
        area, x, y = loc[0], loc[1], loc[2]
        m = area_map(area)
        if m:
            return (m, x, y, area)
    return None


def area_items(v):
    """Area-keyed tables: dicts, or lists when the area IDs happened to be 1..n."""
    if isinstance(v, dict):
        return v.items()
    if isinstance(v, list):
        return [(str(i + 1), x) for i, x in enumerate(v)]
    return []


def spawns_of(entity):
    """[(map, x, y, area)] for an NPC/object record (outdoor maps only)."""
    out = []
    for area, pts in area_items(entity.get('spawns')):
        m = area_map(area)
        if not m or not isinstance(pts, list):
            continue
        for p in pts:
            if isinstance(p, list) and len(p) >= 2 and p[0] is not None and p[0] >= 0:
                out.append((m, p[0], p[1], int(area)))
    return out


def densest(points):
    """Centre of the densest cluster: best 6x6 map-unit cell, then its mean."""
    if not points:
        return None
    by_map = collections.Counter(p[0] for p in points)
    best_map = by_map.most_common(1)[0][0]
    pts = [p for p in points if p[0] == best_map]
    cells = collections.Counter((int(p[1] // 6), int(p[2] // 6)) for p in pts)
    (cx, cy), _ = cells.most_common(1)[0]
    near = [p for p in pts if abs(p[1] - (cx * 6 + 3)) <= 6 and abs(p[2] - (cy * 6 + 3)) <= 6]
    x = sum(p[1] for p in near) / len(near)
    y = sum(p[2] for p in near) / len(near)
    # snap to the nearest real spawn so the arrow never points at empty ground
    p = min(near, key=lambda p: (p[1] - x) ** 2 + (p[2] - y) ** 2)
    return (p[0], round(p[1], 1), round(p[2], 1), p[3])


def clean(s):
    return (s or '').replace(']', ')').replace('[', '(').replace('|', '/').replace(';', ',').strip()


# ---------------------------------------------------------------- quest model
class Quest:
    pass


def build_quests():
    quests = {}
    for qid_s, q in Q.items():
        qid = int(qid_s)
        races = q.get('requiredRaces') or 0
        if races and not (races & HORDE):
            continue
        sort = q.get('zoneOrSort') or 0
        if sort <= 0 or sort in SKIP_SORTS:
            continue
        if q.get('requiredSkill') or (q.get('specialFlags') or 0) & 1:
            continue
        lvl = q.get('questLevel')
        if not lvl or lvl <= 0:
            continue
        if lvl - (q.get('requiredLevel') or 1) > 12:
            continue  # war-effort donations, faire turn-ins and similar non-leveling quests
        x = Quest()
        x.id, x.name, x.level = qid, clean(q.get('name')), lvl
        x.minLevel = q.get('requiredLevel') or 1
        x.maxLevel = q.get('requiredMaxLevel')
        x.races = races
        x.classes = q.get('requiredClasses') or 0
        x.sort = sort
        x.dungeon = dungeon_name(sort)
        x.text = ' '.join(q.get('objectivesText') or [])
        sb, fb = q.get('startedBy') or {}, q.get('finishedBy') or {}
        # start / finish: creature, else object
        x.start = x.startName = None
        for kind, src in ((1, N), (2, O)):
            for eid in idx(sb, kind) or []:
                e = src.get(str(eid))
                if kind == 1 and e and e.get('friendlyToFaction') == 'A':
                    continue  # Alliance-only giver: not a Horde quest in practice
                sp = spawns_of(e) if e else []
                if sp:
                    x.start, x.startName = densest(sp), clean(e.get('name'))
                    break
            if x.start:
                break
        x.itemStart = bool(idx(sb, 3))
        x.startItem = None
        if not x.start and x.itemStart:
            for iid in idx(sb, 3) or []:
                it = I.get(str(iid))
                if not it:
                    continue
                pts = []
                for nid in it.get('npcDrops') or []:
                    e = N.get(str(nid))
                    if e and (e.get('rank') or 0) == 0:
                        pts += spawns_of(e)
                for oid in it.get('objectDrops') or []:
                    e = O.get(str(oid))
                    if e:
                        pts += spawns_of(e)
                if pts:
                    x.start = densest(pts)
                    x.startItem = clean(it.get('name'))
                    break
        x.finish = x.finishName = None
        for kind, src in ((1, N), (2, O)):
            for eid in idx(fb, kind) or []:
                e = src.get(str(eid))
                if kind == 1 and e and e.get('friendlyToFaction') == 'A':
                    continue
                sp = spawns_of(e) if e else []
                if sp:
                    x.finish, x.finishName = densest(sp), clean(e.get('name'))
                    break
            if x.finish:
                break
        x.preAll = list(q.get('preQuestGroup') or [])
        x.preAny = list(q.get('preQuestSingle') or []) if isinstance(q.get('preQuestSingle'), list) else []
        x.exclusive = list(q.get('exclusiveTo') or []) if isinstance(q.get('exclusiveTo'), list) else []
        x.breadcrumbFor = q.get('breadcrumbForQuestId')
        x.xp = (S['xp'].get(qid_s) or [None, 0])[1] or 0
        # objectives
        obj = q.get('objectives') or {}
        pts, mobs, items, elite = [], [], [], False
        for o in idx(obj, 1) or []:
            nid = o[0] if isinstance(o, list) else o
            e = N.get(str(nid))
            if e:
                pts += spawns_of(e)
                mobs.append(clean(e.get('name')))
                if (e.get('rank') or 0) in (1, 2, 3):
                    elite = True
        for kc in idx(obj, 5) or []:
            ids = kc[0] if isinstance(kc, list) and kc and isinstance(kc[0], list) else []
            for nid in ids:
                e = N.get(str(nid))
                if e:
                    pts += spawns_of(e)
                    if (e.get('rank') or 0) in (1, 2, 3):
                        elite = True
            base = N.get(str(kc[1])) if isinstance(kc, list) and len(kc) > 1 else None
            if base:
                mobs.append(clean(base.get('name')))
        for o in idx(obj, 2) or []:
            oid = o[0] if isinstance(o, list) else o
            e = O.get(str(oid))
            if e:
                pts += spawns_of(e)
        best_drop = None
        for o in idx(obj, 3) or []:
            iid = o[0] if isinstance(o, list) else o
            it = I.get(str(iid))
            if not it:
                continue
            iname = clean(it.get('name'))
            m = re.search(r'(\d+)\s+(?:\w+\s+){0,3}?' + re.escape(iname.split(' ')[-1]), x.text, re.I)
            count = int(m.group(1)) if m else None
            rates = S['drops'].get(str(iid)) or {}
            srcs = []
            for nid in it.get('npcDrops') or []:
                e = N.get(str(nid))
                if e:
                    sp = spawns_of(e)
                    srcs.append((rates.get(str(nid), 0) or 0, len(sp), e, sp))
                    if (e.get('rank') or 0) in (1, 2, 3):
                        elite = True
            for oid in it.get('objectDrops') or []:
                e = O.get(str(oid))
                if e:
                    pts += spawns_of(e)
            if srcs:
                srcs.sort(key=lambda s: (s[0], s[1]), reverse=True)
                rate, _, e, sp = srcs[0]
                pts += sp
                mobs.append(clean(e.get('name')))
                if rate and (best_drop is None or rate < best_drop):
                    best_drop = rate
            items.append((iid, count))
        te = q.get('triggerEnd')
        if te and isinstance(te, list) and len(te) > 1:
            for area, coords in area_items(te[1]):
                m = area_map(area)
                for c in coords or []:
                    if m and isinstance(c, list):
                        pts.append((m, c[0], c[1], int(area)))
        x.objPoints = pts
        x.target = densest(pts) if pts else None
        x.mobs = list(dict.fromkeys(mobs))[:2]
        x.items = [(i, c) for i, c in items if c]
        x.drop = round(best_drop) if best_drop else None
        x.elite = elite and not x.dungeon
        x.group = x.elite
        x.hasObjectives = bool(pts) or bool(items) or bool(idx(obj, 1)) or bool(idx(obj, 2))
        quests[qid] = x
    return quests


QUESTS = build_quests()

# ---------------------------------------------------------------- flight masters
FMS = []
for nid, name in FP_NODES.items():
    e = N.get(str(nid))
    if e:
        sp = spawns_of(e)
        if sp:
            FMS.append({'id': nid, 'node': name, 'loc': sp[0]})


def continent(area):
    if area in KALIMDOR:
        return 'K'
    if area in EASTERN:
        return 'E'
    return '?'


def dist(a, b):
    if a is None or b is None:
        return 1e9
    if a[0] != b[0]:
        return 400 if continent(a[3]) == continent(b[3]) else 900
    return math.hypot(a[1] - b[1], a[2] - b[2])


# ---------------------------------------------------------------- simulation
def grey_gap(L):
    return 5 if L < 10 else 6 if L < 20 else 7 if L < 30 else 8 if L < 40 else 9


class Sim:
    def __init__(self, race_mask, level=1, pos=None, done=None, learned=None, banned=None):
        self.race_mask = race_mask
        self.banned = set(banned or ())   # quests a previous pass had to drop
        self._dest_cache = {}
        self.dropped = set()
        self.L, self.xp = level, 0
        self.pos = pos
        self.done = set(done or ())
        self.active = {}          # qid -> {'complete': bool}
        self.learned = set(learned or ())
        self.steps = []           # (line, level) tuples
        self.carried_dungeon = collections.defaultdict(set)
        self.maps_visited = set()

    # -- rules
    def race_ok(self, q):
        return not q.races or (q.races & self.race_mask)

    def eligible(self, q, for_route=True):
        if q.id in self.done or q.id in self.active or q.id in self.banned or not self.race_ok(q) or q.classes:
            return False
        if not q.start or not q.finish:
            return False
        if q.elite and q.level > self.L:
            return False        # group quests only once you're at their level
        if q.dungeon and q.level > MAX_DUNGEON_QUEST_LEVEL:
            return False
        if q.minLevel > self.L or (q.maxLevel and self.L > q.maxLevel):
            return False
        if q.level < self.L - grey_gap(self.L):
            return False
        if any(p not in self.done for p in q.preAll):
            return False
        if q.preAny and not any(p in self.done for p in q.preAny):
            return False
        if any(e in self.done or e in self.active for e in q.exclusive):
            return False
        if q.breadcrumbFor and (q.breadcrumbFor in self.done or q.breadcrumbFor in self.active):
            return False
        if q.hasObjectives and not q.target and not q.dungeon:
            return False
        return True

    def worthwhile(self, q):
        """New pickups should still be worth the time at this level."""
        if not (q.level >= self.L - 5 or any(p in self.done for p in q.preAll + q.preAny)):
            return False
        if q.dungeon and q.level > self.L + 5:
            return False            # don't carry dungeon quests for ages
        if not q.dungeon and q.level > self.L + 4:
            return False
        # Quests that send you to other maps (objectives or turn-in) are only taken when
        # those maps are places we'd go anyway: they have a few quests for our level.
        for m in {q.finish[0], q.target[0] if q.target else q.start[0]}:
            if m != q.start[0] and not self.destination_ok(m, q.id):
                return False
        return True

    def destination_ok(self, mapID, exclude=None):
        key = (mapID, self.L)
        if key not in self._dest_cache:
            self._dest_cache[key] = sum(
                1 for o in self.map_quests.get(mapID, ())
                if o.id != exclude and self.L - 2 <= o.level <= self.L + 5 and self.race_ok(o)
                and not o.classes and not o.elite and o.start) >= 4
        return self._dest_cache[key]

    def can_do_objectives(self, q):
        return q.level <= self.L + (3 if self.L < 10 else 2)

    def quick(self, q, mapID):
        """Can be finished right here, right now (used when the log is nearly full)."""
        return not q.hasObjectives or (q.target and q.target[0] == mapID and self.can_do_objectives(q))

    # -- emit
    def emit(self, line):
        self.steps.append((line, self.L))

    def at(self, loc):
        return f"at={loc[1]},{loc[2]},{loc[0]}"

    def add_xp(self, amount):
        self.xp += amount
        while self.L < 60 and self.xp >= XP_TO_LEVEL[self.L - 1]:
            self.xp -= XP_TO_LEVEL[self.L - 1]
            self.L += 1

    def race_key(self, q):
        if not q.races or (q.races & HORDE) == HORDE:
            return ''
        names = [RACE_NAME[r] for r, b in RACE_BITS.items() if (q.races & b) and r in RACE_NAME]
        return '; race=' + ','.join(names)

    # -- actions
    def accept(self, q):
        opts = [self.at(q.start)]
        pre = [p for p in q.preAll if p in self.done] + [p for p in q.preAny if p in self.done][:1]
        if pre:
            opts.append('pre=' + ','.join(map(str, pre)))
        if q.breadcrumbFor or q.group:
            opts.append('opt')
        extra = self.race_key(q)
        self.emit(f"[A {q.id} {q.name} | {'; '.join(opts)}{extra}]")
        if q.id in CORR_NOTES:
            self.emit(clean(CORR_NOTES[q.id]))
        if q.startItem:
            self.emit(f"Starts from {q.startItem}, which drops in this area.")
        if q.group:
            self.emit("Group quest (elite enemies) - optional; the guide skips it if you don't take it.")
        self.active[q.id] = {'complete': not q.hasObjectives, 'acceptL': self.L}
        self.pos = q.start
        if q.dungeon:
            self.carried_dungeon[q.dungeon].add(q.id)

    def complete(self, q):
        opts = [self.at(q.target)]
        if q.mobs:
            opts.append('mob=' + ' / '.join(q.mobs))
        if q.items:
            opts.append('item=' + ','.join(f"{i}:{c}" for i, c in q.items))
            if q.drop and q.drop < 100:
                opts.append(f'drop={q.drop}')
        if q.group:
            opts.append('opt')
        self.emit(f"[C {q.id} {q.name} | {'; '.join(opts)}{self.race_key(q)}]")
        self.active[q.id]['complete'] = True
        self.pos = q.target

    def turnin(self, q):
        self.emit(f"[T {q.id} {q.name} | {self.at(q.finish)}{'; opt' if q.group else ''}{self.race_key(q)}]")
        del self.active[q.id]
        self.done.add(q.id)
        gap = self.L - q.level
        mult = 1 if gap < 6 else 0.2 if gap >= 10 else 1 - (gap - 5) * 0.2
        self.add_xp(q.xp * kill_xp_factor(self.L) * mult * (0.5 if q.group else 1))
        self.pos = q.finish

    def maybe_learn_fp(self, radius=12):
        for fm in FMS:
            if fm['node'] not in self.learned and self.pos and dist(self.pos, fm['loc']) <= radius:
                self.emit(f"[P {fm['node']} | {self.at(fm['loc'])}]")
                self.learned.add(fm['node'])
                self.pos = fm['loc']

    def fm_on_map(self, mapID):
        return [fm for fm in FMS if fm['loc'][0] == mapID]

    # -- candidate actions on a map (shared by routing and zone scoring)
    def candidates(self, mapID):
        for qid, st in self.active.items():
            q = QUESTS[qid]
            if st['complete']:
                if q.finish[0] == mapID:
                    yield 'T', q, q.finish
            elif q.target and q.target[0] == mapID and not q.dungeon and self.can_do_objectives(q):
                yield 'C', q, q.target
        n = len(self.active)
        if n < LOG_LIMIT:
            for q in self.map_quests.get(mapID, ()):
                if self.eligible(q) and self.worthwhile(q) and (n < LOG_LIMIT - 4 or self.quick(q, mapID)):
                    yield 'A', q, q.start

    def next_action(self, mapID):
        best, best_cost = None, 1e18
        for kind, q, loc in self.candidates(mapID):
            d = dist(self.pos, loc)
            c = d * (0.85 if kind == 'T' else 0.6 if kind == 'A' and d < 4 else 1.0)
            if c < best_cost:
                best, best_cost = (kind, q), c
        return best

    def run_map(self, mapID, area):
        """Quest on one map until nothing worthwhile is left."""
        self.maps_visited.add(mapID)
        guard = 0
        while guard < 2000:
            guard += 1
            act = self.next_action(mapID)
            if not act:
                break
            kind, q = act
            getattr(self, {'A': 'accept', 'C': 'complete', 'T': 'turnin'}[kind])(q)
            self.maybe_learn_fp()
            self.check_dungeons(area)
        # learn this zone's flight path before leaving if we never walked past it
        for fm in self.fm_on_map(mapID):
            if fm['node'] not in self.learned:
                self.emit(f"[P {fm['node']} | {self.at(fm['loc'])}]")
                self.learned.add(fm['node'])
                self.pos = fm['loc']

    def check_dungeons(self, area, force=False):
        for dname, qids in list(self.carried_dungeon.items()):
            qids = {q for q in qids if q in self.active and not self.active[q]['complete']}
            if not qids:
                continue
            levels = [QUESTS[q].level for q in qids]
            # One trip per dungeon: go once you can handle the hardest quest you carry,
            # but don't sit on the easiest one for more than ~5 levels.
            ready = min(max(levels) - 1, min(levels) + 5)
            if force or self.L >= ready:
                q0 = QUESTS[next(iter(qids))]
                ent = dungeon_entrance(q0.sort)
                at = f"; at={ent[1]},{ent[2]},{ent[0]}" if ent else ''
                self.emit(f"[D {dname} | quests={','.join(map(str, sorted(qids)))}{at}]")
                self.emit(f"Find a group for {dname}. Quests you skip there are dropped automatically.")
                for q in qids:
                    self.active[q]['complete'] = True
                del self.carried_dungeon[dname]
                self.add_xp(XP_TO_LEVEL[min(self.L, 59) - 1] * 0.5)  # XP from the run itself

    # -- zone choice
    def zone_score(self, mapID):
        w = {'A': 1.0, 'T': 1.0, 'C': 0.5}
        return sum(q.xp * w[k] for k, q, _ in self.candidates(mapID))

    def tidy_log(self):
        """Drop quests carried 6+ levels without progress (recorded so the next pass never takes them)."""
        if len(self.active) < LOG_LIMIT - 4:
            return
        stale = [(st['acceptL'], qid) for qid, st in self.active.items()
                 if self.L - st['acceptL'] >= 6 and not QUESTS[qid].dungeon]
        for _, qid in sorted(stale)[:max(1, len(self.active) - (LOG_LIMIT - 6))]:
            del self.active[qid]
            self.dropped.add(qid)

    def travel_cost(self, mapID):
        """Rough XP-equivalent of the time spent getting somewhere."""
        per_level = XP_TO_LEVEL[min(self.L, 59) - 1]
        area = self.map_area[mapID]
        if self.pos and continent(area) != continent(self.pos[3]):
            return per_level * 0.35
        if any(fm['node'] in self.learned for fm in self.fm_on_map(mapID)):
            return per_level * 0.12
        return per_level * 0.2

    def future_quests(self, maps):
        """Quests on these maps that will open up later (level or chain gated)."""
        for m in maps:
            for q in self.map_quests.get(m, ()):
                if q.id in self.done or q.id in self.active or not self.race_ok(q) or q.classes:
                    continue
                if not q.start or not q.finish:
                    continue
                if q.minLevel > self.L or q.level > self.L + 2:
                    return True
        return False

    def travel_to(self, mapID):
        area = self.map_area[mapID]
        name = ZONE_NAMES.get(area, f'zone {area}')
        dest_fms = [fm for fm in self.fm_on_map(mapID) if fm['node'] in self.learned]
        here_fms = [fm for fm in FMS if self.pos and fm['loc'][0] == self.pos[0] and fm['node'] in self.learned]
        same_cont = self.pos and continent(self.pos[3]) == continent(area)
        if dest_fms and here_fms:
            fm = dest_fms[0]
            self.emit(f"[F {fm['node']}]")
            self.pos = fm['loc']
        else:
            # head for the zone's busiest quest hub
            starts = [q.start for q in self.map_quests.get(mapID, ()) if self.eligible(q)]
            hub = densest([(s[0], s[1], s[2], s[3]) for s in starts]) if starts else None
            if hub:
                how = '' if same_cont else (' - take the zeppelin (Orgrimmar <-> Undercity / Grom\'gol)')
                self.emit(f"[G {hub[1]},{hub[2]} {mapID} Travel to {name}{how}]")
                self.pos = hub
        return area

    def choose_next_map(self):
        best, best_score = None, 0
        for mapID in self.map_quests:
            sc = self.zone_score(mapID)
            if sc <= 0:
                continue
            # prefer staying on the same continent
            area = self.map_area[mapID]
            if self.pos and continent(area) != continent(self.pos[3]):
                sc *= 0.7
            if sc > best_score:
                best, best_score = mapID, sc
        return best

    def run(self, until_level=60, allowed_maps=None):
        segments = []
        current = self.pos[0] if self.pos else None
        grinds = 0
        while self.L < until_level and grinds < 25:
            if current is not None and (not allowed_maps or current in allowed_maps) and self.next_action(current):
                start_idx, start_level = len(self.steps), self.L
                self.run_map(current, self.map_area[current])
                segments.append((current, start_idx, len(self.steps), start_level, self.L))
                grinds = 0
                continue
            self.tidy_log()
            maps = allowed_maps or list(self.map_quests)
            scored = []
            for m in maps:
                if m == current:
                    continue
                sc = self.zone_score(m)
                if sc > 0:
                    scored.append((sc - self.travel_cost(m), sc, m))
            # Only travel when the trip pays for itself; otherwise grind a bit and let
            # small errands (single turn-ins, courier hops) pile up into one worthwhile trip.
            per_level = XP_TO_LEVEL[min(self.L, 59) - 1]
            worth = [x for x in scored if x[0] > 0]
            if not worth:
                # Least-bad trip beats grinding unless it's a trivial errand.
                worth = [x for x in scored if x[1] >= per_level * 0.08]
            if worth:
                nxt = max(worth)[2]
                self.travel_to(nxt)
                current = nxt
                continue
            if self.future_quests(maps):
                # Nothing open yet: grind one level (counts as XP).
                target = min(60, self.L + 1)
                self.emit(f"[L {target}]")
                self.emit("Grind mobs around your level here; more quests open at the next level.")
                self.add_xp(XP_TO_LEVEL[self.L - 1] - self.xp)
                grinds += 1
                continue
            break
        # Wrap up anything finished but not handed in on maps we can reach.
        return segments


def index_maps(sim):
    sim.map_quests = collections.defaultdict(list)
    sim.map_area = {}
    for q in QUESTS.values():
        if q.start:
            sim.map_quests[q.start[0]].append(q)
            sim.map_area.setdefault(q.start[0], q.start[3])
    # normalise area per map to the parent zone where possible
    for m in list(sim.map_area):
        areas = collections.Counter(q.start[3] for q in sim.map_quests[m])
        sim.map_area[m] = areas.most_common(1)[0][0]


# ---------------------------------------------------------------- clean-up
STEP_RE = re.compile(r'^\[([ACT]) (\d+) ')


def prune_unfinished(sim):
    """Drop pickups/objectives for quests this route never hands in (and duplicate pickups),
    plus the note lines attached to them, so the guide never has you carry dead quests.
    Returns a map old step index -> new step index (for segment boundaries)."""
    turned, last_accept = set(), {}
    for i, (line, _) in enumerate(sim.steps):
        m = STEP_RE.match(line)
        if m and m.group(1) == 'T':
            turned.add(int(m.group(2)))
        if m and m.group(1) == 'A':
            last_accept[int(m.group(2))] = i
    keep, remap, dropping = [], {}, False
    for i, (line, lvl) in enumerate(sim.steps):
        remap[i] = len(keep)
        if line.startswith('['):
            dropping = False
            m = STEP_RE.match(line)
            if m and m.group(1) in 'AC':
                qid = int(m.group(2))
                if qid not in turned or (m.group(1) == 'A' and last_accept.get(qid) != i):
                    dropping = True
                    continue
            if line.startswith('[D '):
                dm = re.search(r'quests=([\d,]+)', line)
                ids = [x for x in (dm.group(1).split(',') if dm else []) if int(x) in turned]
                if not ids:
                    dropping = True
                    continue
                line = line.replace(dm.group(0), 'quests=' + ','.join(ids))
        elif dropping:
            continue  # note belonging to a removed step
        keep.append((line, lvl))
    remap[len(sim.steps)] = len(keep)
    sim.removed = len(sim.steps) - len(keep)
    sim.steps[:] = keep
    return remap


# ---------------------------------------------------------------- guide writer
def write_guide(path, name, steps, lo, hi, races=None, next_name=None, knownfp=None):
    head = [f'#levels {lo}-{hi}', '#faction Horde']
    if races:
        head.append('#race ' + ', '.join(races))
    if knownfp:
        head.append('#knownfp ' + ', '.join(sorted(knownfp)))
    if next_name:
        head.append('#next ' + next_name)
    body = '\n'.join(head + [''] + steps)
    with open(path, 'w', encoding='utf-8') as f:
        f.write('-- Generated by tools/gen_route.py from QuestieDB Forever data (GPL-3.0). Do not hand-edit;\n')
        f.write('-- fix the generator or add corrections instead.\n')
        f.write(f'ForeverGuide:RegisterGuide([==[{name}]==], [==[\n{body}\n]==])\n')


def split_guides(prefix, sim, segments, start_learned, min_levels=4, max_steps=320):
    """Group zone passes into guides of a few levels each."""
    guides, cur = [], None
    for (mapID, a, b, l0, l1) in segments:
        if a == b:
            continue
        if cur is None:
            cur = {'a': a, 'b': b, 'l0': l0, 'l1': l1, 'zones': [mapID]}
        else:
            cur['b'], cur['l1'] = b, l1
            if mapID not in cur['zones']:
                cur['zones'].append(mapID)
        if (cur['l1'] - cur['l0'] >= min_levels) or (cur['b'] - cur['a'] >= max_steps):
            guides.append(cur)
            cur = None
    if cur:
        if guides and cur['b'] - cur['a'] < 60:
            guides[-1]['b'], guides[-1]['l1'] = cur['b'], cur['l1']
            guides[-1]['zones'] += [z for z in cur['zones'] if z not in guides[-1]['zones']]
        else:
            guides.append(cur)
    # include any trailing steps (e.g. travel) between groups
    for i in range(len(guides) - 1):
        guides[i]['b'] = guides[i + 1]['a']
    if guides:
        guides[0]['a'] = 0
        guides[-1]['b'] = len(sim.steps)
    for g in guides:
        zn = [ZONE_NAMES.get(sim.map_area[z], '?') for z in g['zones']]
        zn = list(dict.fromkeys(zn))
        g['title'] = f"{prefix} {g['l0']}-{max(g['l1'], g['l0'] + 1)} {', '.join(zn[:3])}"
    return guides


def main():
    os.makedirs(OUTDIR, exist_ok=True)
    out_files = []
    starts = [
        # (title prefix, races, race mask, start zone areas, start pos)
        ('Horde', ['Orc', 'Troll'], 2 | 128, {14, 363}, None),
        ('Horde', ['Tauren'], 32, {215, 220}, None),
        ('Horde', ['Scourge'], 16, {85, 154, 130}, None),
    ]
    shared_learned = None
    def run_starter(mask, start_areas, banned):
        sim = Sim(mask, banned=banned)
        index_maps(sim)
        maps = {m for m, a in sim.map_area.items() if a in start_areas}
        first = min((q for m in maps for q in sim.map_quests[m] if sim.eligible(q)), key=lambda q: (q.level, q.id))
        sim.pos = first.start
        segs = sim.run(until_level=13, allowed_maps=maps)
        return sim, segs

    for prefix, races, mask, start_areas, _ in starts:
        banned = set(CORR_SKIP)
        for _ in range(6):
            sim, segs = run_starter(mask, start_areas, banned)
            if not sim.dropped - banned:
                break
            banned |= sim.dropped
        prune_unfinished(sim)
        print('  pruned', sim.removed, 'steps for quests not finished in the starter')
        lo, hi = 1, max(sim.L, 2)
        title = f"Horde 1-{hi} {ZONE_NAMES[min(start_areas)] if min(start_areas) in ZONE_NAMES else ''} ({'/'.join('Undead' if r == 'Scourge' else r for r in races)})"
        steps = [s for s, _ in sim.steps]
        out_files.append((f'Start_{races[0]}.lua', title, steps, lo, hi, races, None, None))
        shared_learned = (shared_learned or set(sim.learned)) & set(sim.learned)
        print(f'{title}: {len(steps)} steps, ends level {sim.L}, learned {sorted(sim.learned)}')

    # Shared route from level 12 at the Crossroads
    banned = set()
    for it in range(10):
        sim = Sim(HORDE, level=12, banned=banned)
        index_maps(sim)
        sim.pos = next(fm for fm in FMS if fm['node'] == 'Crossroads')['loc']
        segs = sim.run(until_level=60)
        new = sim.dropped - banned
        print(f'  pass {it + 1}: level {sim.L}, {len(sim.steps)} steps, dropped {len(new)} new')
        if not new:
            break
        banned |= new
    remap = prune_unfinished(sim)
    segs = [(m, remap[a], remap[b], l0, l1) for m, a, b, l0, l1 in segs]
    print('  pruned', sim.removed, 'steps for quests the route never finishes')
    guides = split_guides('Horde', sim, segs, set())
    learned_so_far = set()
    names = [g['title'] for g in guides]
    for i, g in enumerate(guides):
        steps = [s for s, _ in sim.steps[g['a']:g['b']]]
        nxt = names[i + 1] if i + 1 < len(names) else None
        hi = 60 if nxt is None else max(g['l1'], g['l0'] + 1)   # last guide carries you to 60
        if nxt is None:
            g['title'] = re.sub(r' \d+-\d+ ', f" {g['l0']}-60 ", g['title'], count=1)
            if i > 0:
                prev = out_files[-1]
                out_files[-1] = prev[:6] + (g['title'],) + prev[7:]
        out_files.append((f'Horde_{i + 1:02d}.lua', g['title'], steps, g['l0'], hi, None, nxt, set(learned_so_far)))
        for s in steps:
            m = re.match(r'\[P ([^|\]]+)', s)
            if m:
                learned_so_far.add(m.group(1).strip())
    # starters chain into the first shared guide
    first_shared = names[0] if names else None
    for f in os.listdir(OUTDIR):
        if f.endswith('.lua'):
            os.remove(os.path.join(OUTDIR, f))
    for fname, title, steps, lo, hi, races, nxt, known in out_files:
        if races and first_shared:
            nxt = first_shared
        write_guide(os.path.join(OUTDIR, fname), title, steps, lo, hi, races, nxt, known)
    print(f'shared: {len(sim.steps)} steps in {len(guides)} guides, ends level {sim.L}')
    for g in guides:
        print('  ', g['title'], g['b'] - g['a'], 'steps')
    json.dump({'files': [f[0] for f in out_files], 'titles': [f[1] for f in out_files]},
              open(os.path.join(SP, 'out', 'Horde_index.json'), 'w'))


if __name__ == '__main__':
    main()
