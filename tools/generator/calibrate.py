"""
Recalibrate the route generator from real play.

Usage:
    python3 calibrate.py MittenQuest.lua [more MittenQuest.lua files ...]

Each file is a player's SavedVariables file:
    World of Warcraft/<client>/WTF/Account/<ACCOUNT>/SavedVariables/MittenQuest.lua

The addon's pace log has, per character level, the XP gained in total, from quest rewards,
and from rested bonus. "Total minus rested, divided by quest XP" is exactly the multiplier
gen_route.py uses for XP earned while questing (kill_xp_factor), so this replaces the guess
with measured values per level band. It also reports how far real players were from the
route's expected level at each guide, which is the check that the new numbers worked.

Writes calibration.json next to this script; gen_route.py picks it up automatically.
Bands with too little data keep the built-in default.
"""
import json
import os
import sys
import collections

from lupa.lua51 import LuaRuntime

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, 'calibration.json')

# Level bands: (first level, last level). Match the default factor's breakpoints and add
# finer bands where data allows.
BANDS = [(1, 5), (6, 9), (10, 14), (15, 19), (20, 29), (30, 39), (40, 49), (50, 59)]
MIN_QUEST_XP_SHARE = 0.5   # need quest XP worth at least half a level of the band's first level
XP_TO_LEVEL = [400, 900, 1400, 2100, 2800, 3600, 4500, 5400, 6500, 7600, 8800, 10100, 11400, 12900, 14400,
               16000, 17700, 19400, 21300, 23200, 25200, 27300, 29400, 31700, 34000, 36400, 38900, 41400,
               44300, 47400, 50800, 54500, 58600, 62800, 67100, 71600, 76100, 80800, 85700, 90700, 95800,
               101000, 106300, 111800, 117500, 123200, 129100, 135100, 141200, 147500, 153900, 160400,
               167100, 173900, 180800, 187900, 195000, 202300, 209800]


def to_py(L, v):
    if L.eval('type')(v) == 'table':
        keys = list(v.keys())
        if keys and all(isinstance(k, int) for k in keys) and sorted(keys) == list(range(1, len(keys) + 1)):
            return [to_py(L, v[k]) for k in sorted(keys)]
        return {k: to_py(L, v[k]) for k in keys}
    return v


def load_pace_log(path):
    """Run the SavedVariables file in a sandboxed Lua and return MittenQuestDB.global.paceLog."""
    L = LuaRuntime(register_eval=False, unpack_returned_tuples=True)
    env = L.eval('{}')
    chunk = L.eval('function(src, env) local f, err = loadstring(src) if not f then error(err) end '
                   'setfenv(f, env) f() return env.MittenQuestDB end')
    db = chunk(open(path, encoding='utf-8', errors='replace').read(), env)
    if db is None:
        raise SystemExit(f'{path}: no MittenQuestDB in this file')
    db = to_py(L, db)
    log = (db.get('global') or {}).get('paceLog')
    if not log:
        raise SystemExit(f'{path}: no pace log yet (play with MittenQuest 0.9.1+ first)')
    return log


def main(paths):
    totals = collections.defaultdict(lambda: {'total': 0, 'quest': 0, 'rested': 0})
    deviations = collections.defaultdict(list)       # guide -> [actual - expected]
    seen = set()
    for path in paths:
        log = load_pace_log(path)
        levels = log.get('levels') or {}
        items = levels.items() if isinstance(levels, dict) else enumerate(levels, 1)
        for lvl, b in items:
            for k in ('total', 'quest', 'rested'):
                totals[int(lvl)][k] += (b or {}).get(k, 0) or 0
        entries = log.get('entries') or []
        for e in (entries.values() if isinstance(entries, dict) else entries):
            key = (path, e.get('g'), e.get('i'))
            if key in seen or e.get('xl') is None or e.get('lv') is None:
                continue
            seen.add(key)
            deviations[e['g']].append(e['lv'] - e['xl'])

    factors, report = {}, []
    for lo, hi in BANDS:
        t = sum(totals[l]['total'] for l in range(lo, hi + 1))
        q = sum(totals[l]['quest'] for l in range(lo, hi + 1))
        r = sum(totals[l]['rested'] for l in range(lo, hi + 1))
        enough = q >= XP_TO_LEVEL[lo - 1] * MIN_QUEST_XP_SHARE
        f = (t - r) / q if q else None
        if enough and f and 1.0 <= f <= 6.0:
            factors[str(lo)] = round(f, 2)
        report.append((lo, hi, t, q, r, f, enough))

    old = json.load(open(OUT)) if os.path.exists(OUT) else {}
    merged = dict(old.get('kill_xp_factor', {}))
    merged.update(factors)
    json.dump({'kill_xp_factor': merged, 'files': len(paths),
               'steps_recorded': len(seen)}, open(OUT, 'w'), indent=2)

    print('XP while questing, per level band (total excludes rested bonus):')
    for lo, hi, t, q, r, f, enough in report:
        status = f'factor {f:.2f}' if (enough and f) else 'not enough data - keeping default'
        print(f'  levels {lo:2}-{hi:2}: total {t:>8}  quests {q:>8}  rested {r:>7}  -> {status}')
    print('\nHow far players were from the route (positive = ahead):')
    for g, devs in sorted(deviations.items(), key=lambda kv: kv[0]):
        devs.sort()
        print(f'  {g[:60]:60} {len(devs):4} steps  median {devs[len(devs) // 2]:+.1f}  '
              f'worst {devs[0]:+.1f}')
    print(f'\nWrote {OUT}. Rebuild the guides (tools/generator/build.sh) to apply it.')


if __name__ == '__main__':
    if len(sys.argv) < 2:
        raise SystemExit(__doc__)
    main(sys.argv[1:])
