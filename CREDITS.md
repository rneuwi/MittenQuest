# Credits & license

MittenQuest is free software released under the **GNU General Public License v3.0**
(see `LICENSE`).

## Quest data

The leveling route (`Guides/Horde/*.lua`) and the quest database (`Data/Quests.lua`) are
generated from **QuestieDB** — https://github.com/Questie/QuestieDB — using its Forever
dataset (Classic base data + Forever corrections + quest traces recorded in the Forever
client), plus its drop-rate and quest-XP support tables.

QuestieDB's data originates from **Questie** — https://github.com/Questie/Questie —
which is licensed under GPL-3.0. Because this addon redistributes data derived from it,
MittenQuest is GPL-3.0 as well. Huge thanks to the Questie and QuestieDB maintainers
and contributors.

Zone names for Forever-only areas (e.g. Zephras Isle) were cross-checked against
ForeverDB (https://foreverdb.net).

## Libraries

- Ace3 (AceAddon, AceEvent, AceConsole, AceDB, AceTimer), CallbackHandler, LibStub — see `Libs/Ace3-LICENSE.txt`
- HereBeDragons by Nevcairiel (BSD)
