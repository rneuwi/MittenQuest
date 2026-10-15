# ForeverGuide

A free, lightweight 1–60 leveling guide addon for **WoW: Forever** — step-by-step quest
instructions, a direction arrow, map pins for available quests, and automatic progress
tracking from what you do in game.

## Install

Download the latest release zip and extract it into your WoW: Forever client's
`Interface/AddOns` folder, so the path ends in `AddOns/ForeverGuide/ForeverGuide.toc`. Open the guide from the addon list button
by the minimap; everything else is in the guide window's gear menu.

## What's in it

- Horde 1–60 route: race starters (Orc/Troll, Tauren, Undead) into a shared route,
  picked automatically for your level, race and faction.
- Steps complete themselves from game events and step back if you undo them in game
  (abandon a quest and the guide returns to it). Skip / skip quest / undo buttons.
- Arrow and map waypoint for every step, with cave-entrance routing.
- Quest pins with level, requirements and giver for 1,500+ Horde quests.
- Expected kill counts from real drop rates; flight paths learned and used along the way;
  dungeon quests batched into one run per dungeon.

## Where the route comes from

`Guides/Horde/` and `Data/Quests.lua` are **generated** from
[QuestieDB](https://github.com/Questie/QuestieDB)'s Forever dataset by simulating a
character leveling 1–60 (see `tools/generator/README.md`). Don't edit generated files by
hand — put fixes in `tools/generator/corrections.json` and rebuild:

```sh
tools/generator/build.sh          # needs python3 + `pip install lupa`
lua5.1 tools/lint.lua Guides/Horde/*.lua
```

## Automation

- **Check** (every push/PR): Lua syntax + full route validation.
- **Regenerate route** (weekly, or run it from the Actions tab): rebuilds from the latest
  QuestieDB and opens a pull request when the route changes.
- **Release** (push a `v*` tag): packages the addon and publishes a GitHub release
  (and CurseForge/Wago once their project IDs and API secrets are added).

## License

GPL-3.0 — see `LICENSE` and `CREDITS.md`. Quest data derives from Questie/QuestieDB.
