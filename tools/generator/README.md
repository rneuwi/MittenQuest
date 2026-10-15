# Route generator

Rebuilds `Guides/Horde/*.lua` and `Data/Quests.lua` from the latest QuestieDB data.
These scripts are development tools only; the addon never loads them.

## Steps

```sh
# 1. Get QuestieDB (data + support tables)
git clone --depth 1 https://github.com/Questie/QuestieDB.git

# 2. Python 3 with lupa (provides the Lua 5.1 runtime QuestieDB's loader needs)
pip install lupa

mkdir -p work/out work/gen/Horde work/tools && cp *.py work/tools/
# 3. Load the Forever dataset with all corrections applied -> JSON
python3 work/tools/extract.py QuestieDB work/out
python3 work/tools/support.py QuestieDB/support/Forever work/out/support.json

# 4. Simulate a Horde character 1-60 and write the guides + quest database
python3 work/tools/gen_route.py work work/gen/Horde
python3 work/tools/gen_questdb.py work work/gen/Quests.lua

# 5. Copy into the addon and check the whole route
cp work/gen/Horde/*.lua ../../Guides/Horde/
cp work/gen/Quests.lua ../../Data/Quests.lua
lua ../lint.lua ../../Guides/Horde/*.lua
```

## How the route is built

`gen_route.py` simulates a character: on each map it picks the nearest worthwhile action
(pick up, do objectives at the densest spawn area, hand in), follows quest chains, learns
flight paths it passes, carries dungeon quests and schedules one run per dungeon. It
leaves a zone when nothing worthwhile remains and picks the next zone by available quest
XP minus a travel cost. Level is tracked with QuestieDB's per-quest XP (plus an estimate
for kills). Quests it would have to abandon are banned and the route is re-simulated, and
anything never handed in is pruned, so every pickup in the guide gets turned in.

Tunables are at the top of `gen_route.py` (`kill_xp_factor`, `LOG_LIMIT`, `travel_cost`,
`worthwhile`).
