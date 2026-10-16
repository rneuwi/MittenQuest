# Route generator

Rebuilds `Guides/Horde/*.lua`, `Guides/Alliance/*.lua` and `Data/Quests.lua` from the latest QuestieDB data.
These scripts are development tools only; the addon never loads them.

## Steps

```sh
pip install lupa                       # Lua 5.1 runtime for QuestieDB's own loader
tools/generator/build.sh               # clones QuestieDB, rebuilds both factions + Data/Quests.lua
lua5.1 tools/lint.lua Guides/*/*.lua   # check every race's chain 1-60
```

`build.sh` runs, in order: `extract.py` (Forever dataset with all corrections -> JSON),
`support.py` (zones, dungeons, drop rates, quest XP), `gen_route.py <work> <out> Horde|Alliance`
for each faction, and `gen_questdb.py` (merged quest database for map pins).

## Recalibrating from real play

Players' SavedVariables files (`MittenQuest.lua`, see the main README) contain a pace log.

```sh
python3 tools/generator/calibrate.py path/to/MittenQuest.lua [more files ...]
tools/generator/build.sh
```

`calibrate.py` measures, per level band, total XP (minus rested bonus) divided by quest XP,
which is exactly the generator's `kill_xp_factor`, and writes `calibration.json`. It also
prints how far players were from each guide's expected levels. `gen_route.py` uses the
measured factor for any band with enough data and its built-in estimate elsewhere. Commit
`calibration.json` so the weekly regeneration keeps using it. The SavedVariables file is run
in an empty Lua environment, so it can't execute anything.

Every step in the generated guides carries `xl=` (the simulated level when you reach it),
which the addon compares with the player's real level for the pace display. Quests without an
XP value in the data (mostly new Forever quests) get the median XP of quests within two levels.

## Time model

The simulator keeps a clock (`seconds_per_kill`, travel from map distance, flights, boats,
dungeon runs, respawn waits; constants near the top of `gen_route.py`). It's used to:
- skip quests whose XP per hour (reward + kills on the way + part of what they unlock, over
  objective time + detour) is below `WORTH_RATIO` of a typical quest at that level, so the
  route spends the time on better quests;
- set the hearthstone at the inn of the hub being worked from and hearth back when that beats
  travelling (respecting the cooldown);
- estimate /played per level (printed when generating: currently about 95-100 hours for 1-60).

`calibrate.py` also lists the slowest steps from real players' timestamps, the way to find
crowded or badly placed steps that the data alone can't predict.

## How the route is built

`gen_route.py` simulates a character: on each map it picks the nearest worthwhile action
(pick up, do objectives at the densest spawn area, hand in), follows quest chains, learns
flight paths it passes, carries dungeon quests and schedules one run per dungeon. It
leaves a zone when nothing worthwhile remains and picks the next zone by available quest
XP minus a travel cost. Level is tracked with QuestieDB's per-quest XP (plus an estimate
for kills). Quests it would have to abandon are banned and the route is re-simulated, and
anything never handed in is pruned, so every pickup in the guide gets turned in.

Each faction's shape (race starters and their zones, hand-over level and flight path,
boat/zeppelin directions) is in `FACTION_CFG` in `gen_route.py`. Quests a starter already
covered are never repeated in the shared route; follow-ups that depend on them are marked
optional so races that never had them aren't blocked.

Tunables are at the top of `gen_route.py` (`kill_xp_factor`, `LOG_LIMIT`, `travel_cost`,
`worthwhile`).
