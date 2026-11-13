# MittenQuest

A free, lightweight 1–60 leveling guide addon for **WoW: Forever** — step-by-step quest
instructions, a direction arrow, map pins for available quests, and automatic progress
tracking from what you do in game.

## Install

Download the latest zip from the **Releases** page (not GitHub's green "Code → Download ZIP",
whose folder name WoW won't load) and extract it into your WoW: Forever client's
`Interface/AddOns` folder, so the path ends in `AddOns/MittenQuest/MittenQuest.toc`. Open the guide from the addon list button
by the minimap; everything else is in the guide window's gear menu.

## What's in it

- Horde and Alliance 1–60 routes: race starters (Orc/Troll, Tauren, Undead; Human,
  Dwarf/Gnome, Night Elf; Skyborne on Zephras Isle for both factions) into a shared route per
  faction, picked automatically for your level, race and faction.
- Steps complete themselves from game events and step back if you undo them in game
  (abandon a quest and the guide returns to it). Skip / skip quest / undo buttons.
- Arrow and map waypoint for every step, with cave-entrance routing. In a quest hub the arrow
  points at the nearest step you can do right now, not just the next one in the list.
- Quest pins with level, requirements and giver for 3,200+ quests (each faction sees its own).
- World map extras: your faction's flight points (Forever's new zones included), and each
  zone's level range at the top of the map (hover a zone on a continent map to see its range).
- Quest windows say whether a quest is on your route. Route quests are picked up and finished
  quests handed in automatically (side quests are left to you; hold Shift to do it by hand),
  and party-shared and escort quests are accepted.
- Expected kill counts from real drop rates; flight paths learned and used along the way;
  dungeon quests batched into one run per dungeon.
- Routes planned on time, not just distance: slow quests (bad drop rates, long detours) are
  swapped for better ones, with hearthstone steps and notes for contested spawns.
- Routes never send you among mobs well above your level, and skip quests whose mobs would be
  grey. If you get ahead of the route, unstarted quests with grey mobs are skipped for you.
- Class trainer visits and class quests (pet taming, Bear Form, totems, Warlock pets and
  more), shown only to your class.
- Pace display: on pace, ahead or behind the route, with warnings before a level wall.

## Help tune the pace

The route's expected levels come from a simulation, and real play is the best correction.
MittenQuest keeps a pace log as you play (level and XP per step, quest XP versus other XP per
level). It never leaves your computer unless you send it.

To contribute: after a play session, exit the game and open a new issue at
https://github.com/rneuwi/MittenQuest/issues with this file attached:

`World of Warcraft/<your Forever client folder>/WTF/Account/<ACCOUNT NAME>/SavedVariables/MittenQuest.lua`

Mention your class and roughly how you played (solo, grouped, dungeons). The file also holds
quest giver locations MittenQuest recorded, which help fix map pins. You can clear the log any
time from the gear menu.

## Where the route comes from

`Guides/Horde/`, `Guides/Alliance/` and `Data/Quests.lua` are **generated** from
[QuestieDB](https://github.com/Questie/QuestieDB)'s Forever dataset by simulating a
character leveling 1–60 (see `tools/generator/README.md`). Don't edit generated files by
hand — put fixes in `tools/generator/corrections.json` and rebuild:

```sh
tools/generator/build.sh          # needs python3 + `pip install lupa`
lua5.1 tools/lint.lua Guides/*/*.lua
```

## Automation

- **Check** (every push/PR): Lua syntax + full route validation.
- **Regenerate route** (weekly, or run it from the Actions tab): rebuilds from the latest
  QuestieDB and opens a pull request when the route changes.
- **Release** (push a `v*` tag): packages the addon and publishes a GitHub release
  (and CurseForge/Wago once their project IDs and API secrets are added).

## License

GPL-3.0 — see `LICENSE` and `CREDITS.md`. Quest data derives from Questie/QuestieDB.
