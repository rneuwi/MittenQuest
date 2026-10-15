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
