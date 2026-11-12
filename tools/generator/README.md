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

## Dungeons are bonus XP

The simulated level (and so every `xl=`) comes from solo questing only: dungeon quest rewards
and the runs themselves don't raise it (`DUNGEON_XP_COUNTS = False` in `gen_route.py`). Players
who skip a run aren't left behind the quests that follow, and players who run them get ahead.
Where solo questing runs out, the route grinds (`[L n]` steps, which complete on their own once
you're that level). Before 2026-11-08 every run counted half a level plus its quest rewards,
about 12 levels over 12-60, and players who ran nearly all of them still fell two levels behind.

## Time model

The simulator keeps a clock (`seconds_per_kill`, travel from map distance, flights, boats,
dungeon runs, respawn waits; constants near the top of `gen_route.py`). It's used to:
- skip quests whose XP per hour (reward + kills on the way + part of what they unlock, over
  objective time + detour) is below `WORTH_RATIO` of a typical quest at that level, so the
  route spends the time on better quests;
- set the hearthstone at the inn of the hub being worked from and hearth back when that beats
  travelling (respecting the cooldown);
- estimate /played per level (printed when generating: currently about 140 hours for Horde
  12-60, since dungeons don't count; see below).

`calibrate.py` also lists the slowest steps from real players' timestamps, the way to find
crowded or badly placed steps that the data alone can't predict.

## Class training

Trainer locations come from the data (subName "<Class> Trainer", friendly to the faction),
so Forever's new class/race combinations are covered automatically. The simulator tracks the
last training level per class: `R` steps (with `class=`) are emitted when the route passes a
trainer and the class is `TRAIN_EVERY` levels behind, or as a trip to the nearest trainer
before changing zones once it's `TRAIN_TRIP_AFTER` levels behind. Starting-area trainers
(near each starter's first quest) are only used up to level 6, since many stop teaching there.

### Class quests

Class quests (`requiredClasses` naming one to three classes) are emitted right after a
training step as `A`/`C`/`T` steps with `class=`, so only that class sees them. A wider mask
("everyone but Warlocks", like Durotar's Vile Familiars) is an ordinary quest on the main
route with a `class=` list instead. Training trips come early when a class quest is ready.

Forever's data often gives every race's copy of a class quest the faction-wide race mask, so
the zone decides which copy you get: a chain may only *start* in the trainer's zone, its
capital (Durotar/Orgrimmar, Mulgore/Thunder Bluff, Tirisfal/Undercity, Elwynn/Stormwind,
Dun Morogh/Ironforge, Teldrassil/Darnassus), the zone the route is in, or a zone an earlier
quest in the same block led to. Follow-ups may go elsewhere only when the previous quest ended
there (Moonglade for Bear Form). Copies with the same name and level count once. Steps
whose objectives have no map point (summons, items handed over by an NPC) point at the giver.
Group (elite) quests, breadcrumbs, and quests whose chain started in an earlier guide are `opt`.

## How the route is built

`gen_route.py` simulates a character: on each map it picks the nearest worthwhile action
(pick up, do objectives at the densest spawn area, hand in), follows quest chains, learns
flight paths it passes, carries dungeon quests and schedules one run per dungeon. It
leaves a zone when nothing worthwhile remains and picks the next zone by available quest
XP minus a travel cost. Level is tracked with QuestieDB's per-quest XP (plus an estimate
for kills). Quests it would have to abandon are banned and the route is re-simulated, and
anything never handed in is pruned, so every pickup in the guide gets turned in.

### Faction territory

`TERRITORY` lists each faction's home zones (starting zones, their follow-up zones and
capitals; The Barrens and Silverpine are Horde, Westfall, Darkshore and Wetlands are
Alliance). A route never takes a quest that starts, ends or is done in the other faction's
territory, even from a neutral giver (Ratchet's quests are the Horde's Barrens content).
Dungeon runs there still happen for your own side's quests: Alliance does Scarlet Monastery
in Tirisfal with quests from Ironforge and Southshore. Class quests are exempt (the Alliance
Warlock chain really does visit the Barrens).

### Dungeons first

Dungeon quests, and the chain steps that lead to them (`DUNGEON_FEEDERS`: the Defias
Brotherhood chain into The Deadmines), are a priority:
- they skip the worth-the-time check, and dungeon quests skip the "turn-in zone has other
  quests" check (the run takes you there anyway);
- their pickups count `DUNGEON_WEIGHT` times when choosing the next zone;
- **errands**: on each level-up and before leaving a zone, the route checks for dungeon
  quests to pick up (valued as the whole dungeon's bundle, since e.g. Ragefire Chasm's are
  spread over three capitals) and for dungeon-chain hand-ins elsewhere, and goes there when
  that's worth more than `ERRAND_MIN` of a level after travel. A town with quests for several
  dungeons adds up every bundle it serves (Thunder Bluff: Ragefire Chasm and Wailing Caverns);
  valued one dungeon at a time, neither paid for the trip;
- a run waits while more of the same dungeon's quests can still be picked up on the current
  map (or nearby on the same continent, for up to two levels), so it's one run for all of them;
- **fetch**: when a run is ready but the dungeon's continent has another map with quests for
  it to pick up now, the route goes there first (`dungeon_fetch`, once per dungeon, map and
  level), then runs. The audit's one-trip rule asks for exactly this; before it, Wailing
  Caverns ran without Serpentbloom from Thunder Bluff. With nothing left on the dungeon's
  continent, the dungeon's own quests on the other continent are fetched too (Necklace
  Recovery in Orgrimmar for Uldaman). The last four log slots, normally kept for quick
  quests, also take quests for a dungeon already in the log and chain steps toward one;
- a ready run also waits while the current map has pickups for any carried dungeon, so a
  fetch for one dungeon doesn't pull the route away before another's quests here are taken;
- **full log**: when a dungeon's pickups (or a fetch for them, or a quest started inside a
  run) meet a full log, `make_room` drops the unfinished quest carried longest that leads
  to no dungeon (or, failing that, the cheapest finished one). It's banned for the rest of
  the pass and the next ones, so the final route simply never takes it;
- after reaching 60, finished dungeon quests are still handed in (a Blackrock Depths run
  at 58 left Hurley Blackbreath for Kharanos);
- runs happen on the dungeon's continent (unless the quests are long overdue) and move the
  player to the entrance;
- after a run, finished quests handed in on the entrance's map are handed in right away, with
  whatever that opens in the same town (`handin_at`). Unending Torment starts inside Ruins of
  Lordaeron and goes to Master Apothecary Faranell next to the entrance; carried back to the
  previous zone, it went grey before its follow-ups were taken.

A quest filed under a dungeon whose objectives are all inside a capital is done in the city,
not on a run (Unending Torment's later steps are Undercity vendors and Othmar's body). Single
spawn NPCs and objects inside a capital aren't treated as contested either: they're scripted
(Sylvanas, Othmar's body), not farmed, so the time model adds no respawn wait.

#### The dungeon rule (enforced)

Every generated route must put dungeons first. After building a faction, `gen_route.py`
audits the finished guides (`audit_dungeons`) and exits with code 1 on any violation, which
stops `build.sh` and the weekly workflow:
1. **Coverage:** every dungeon quest the whole faction can take (giver and turn-in known,
   level 58 or lower, outside the other faction's zones) is turned in somewhere on the
   route, starters included. Either/or quests count once.
2. **One trip per dungeon, quests first:** a second run of a dungeon may only carry quests
   that weren't available at the earlier run (level too low, or prerequisites not done yet).

The build prints `dungeon rule: N dungeon quests in scope, N runs, N exempt, backlog N,
N violation(s)`. To clear a violation, fix the simulator. If a quest really can't be done
(started by an item that drops inside the dungeon, removed in game), add it to
`dungeon_exempt` in `corrections.json` with that reason.

`dungeon_backlog` in `corrections.json` lists, per faction, the gaps the routes had when the
rule was introduced (2026-11-05). They don't fail the build, but the list only shrinks: work it
down by fixing the simulator, and remove an entry when the build reports it as fixed. The
simulator is chaotic, so a fix elsewhere can swap which dungeon quests get dropped. Only
re-baseline (add the swapped-in quests, marked with the date and cause) when the number of
dungeon quests done per faction goes up (quests in scope minus gaps; the scope itself grows
when the generator learns to place more quests), and say so in the commit.

Quests whose giver, start item or turn-in is inside a dungeon (no outdoor position) are placed
at the dungeon's entrance and handled during a run of it (`inside_run`): turn-ins inside, then
pick-ups inside, repeated while that opens more (Necklace Recovery, Take 2 into Translating the
Journal in Uldaman; the Small Scroll from Charlga Razorflank in Razorfen Kraul starting An
Unholy Alliance). A finished quest handed in inside counts toward that dungeon's next run.
A quest picked up inside for the same dungeon is finished in that run, like any quest the run
does (Willix the Importer's escort in Razorfen Kraul; its objective point is a placeholder).
The Deeprun Tram is instanced but not a group run, so the rule leaves its quests out.

Finished dungeon quests whose turn-in is far away (A Vengeful Fate in Thunder Bluff, Seed of
Life in Moonglade) used to ride in the log for 20 levels: one old quest's XP never paid for the
trip, and errands were off while the log was nearly full, which is exactly when they're needed.
Now hand-in errands still run with a full log (pick-up errands don't), and each finished dungeon
quest handed in on a map adds `HANDIN_SLOT` of a level to the trip's value when the log is nearly
full or it's been carried `HANDIN_STALE` levels. Values from 0.35 to 0.45 all did about equally
well; 0.4 is the middle.

Chain steps toward a dungeon quest that have been carried `FEEDER_ERRAND_AGE` levels get an
errand to their objectives on another map, so they're done instead of carried until the log
drops them. Earlier errands pulled the route around too much and lost more dungeon quests than
they saved.

A chain step toward a dungeon quest that a pass drops is banned like any other quest, which also
bars every dungeon quest after it. Once the passes settle, each such step gets a retry: the step is
unbanned but only taken from its own level (or `RETRY_LATE` levels later), and the passes run
again. A retry is kept when the route then does more dungeon quests and is at most `RETRY_SLOWER`
slower; otherwise it's thrown away. Because the simulator is chaotic, a kept retry can help through
the reshuffle rather than by finishing that step ("Ironband Wants You!" for Alliance), so the build
log prints each kept retry with its before and after counts.

A dungeon run also waits while a quest in the log leads, through its chain, to another quest
for the same dungeon that isn't picked up yet (`dungeon_chain_active`; the Defias
Brotherhood into The Deadmines), up to five levels past the easiest quest carried.

### Danger and grey mobs

- **Area danger** (`area_danger`): the median level of the hostile normal mob types within
  `DANGER_RADIUS` map units of a quest's pickup, objective area and turn-in. A quest isn't
  taken until you're within `DANGER_MARGIN` levels of it (not counted below `DANGER_FLOOR`,
  since starting areas mix level 1 quests with level 5 mobs). Without it, talk-only quests,
  which have no objective level, sent level 13 characters into Fenris Keep's level 16-19 Rot
  Hides for the Talking Head.
- **Grey mobs:** a quest whose objective mobs are grey at your level is skipped as not
  worth the time (dungeon work excepted).
- Steps carry `ml=` (C steps: the highest objective mob level) and `danger=` (when the spot's
  danger is above the route's level there). The addon uses them for players ahead of or
  behind the route's pace: unstarted quests with grey mobs are skipped, dangerous steps get a
  warning, and the nearest-step arrow avoids them.

Each faction's shape (race starters and their zones, hand-over level and flight path,
boat/zeppelin directions) is in `FACTION_CFG` in `gen_route.py`. Quests a starter already
covered are never repeated in the shared route; follow-ups that depend on them are marked
optional so races that never had them aren't blocked.

Tunables are at the top of `gen_route.py` (`kill_xp_factor`, `LOG_LIMIT`, `travel_cost`,
`worthwhile`).
