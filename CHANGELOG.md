# MittenQuest

## Unreleased

**Routes**
- The Alliance route does 7 more dungeon quests, among them quests in Blackrock Depths, Dire
  Maul, Scholomance and Zul'Farrak, and is about 2.5 hours shorter to 60.
- The last Alliance guide is now "Alliance 54-60 Eastern Plaguelands, Western Plaguelands,
  Searing Gorge". If you're partway through it, it starts over at the top, but steps you've
  already done in the game are checked off automatically.

## 1.1.1

**Guide window**
- The step you're on ("Step 45/141") and your pace now always show in the title bar. Long
  guide names used to push them out of sight; the name is now shortened instead, and the
  full name shows when you hover the title.

**More dungeon quests**
- Quests you pick up or hand in inside a dungeon are now part of the route: the guide lists
  them right after the dungeon step, with a note saying who or what inside gives or takes
  them. That opens chains the routes used to skip, like An Unholy Alliance (a scroll that
  drops in Razorfen Kraul), Returning the Lost Satchel in Ragefire Chasm, The Glowing Shard
  in Wailing Caverns, The Platinum Discs in Uldaman and The Scepter of Celebras in Maraudon.
- Routes go back for the next step of a dungeon quest chain before it would be dropped.
- Overall the routes now do 9 more dungeon quests for Horde and 4 more for Alliance, and the
  Horde route is about 5 hours shorter to 60.

**Routes**
- Most guides from level 16 (Horde) and 23 (Alliance) on were rebuilt and renamed. If you're
  partway through one, it starts over at the top, but steps you've already done in the game
  are checked off automatically.

## 1.1.0

**Is this quest on my route?**
- When an NPC offers quests, a small banner above the window says for each one whether it's
  on your route (and at which step), in a later or earlier guide of your route, on the route
  but skipped, or not on your route at all. Map pin tooltips say the same.

**Auto pick-up and turn-in** (gear menu, each can be turned off; hold Shift to do it by hand)
- Quests on your route are picked up automatically. Side quests never are.
- Completed quests are handed in automatically. When there's a choice of rewards, you pick.
- Quests a party member shares with you are accepted, and you join escort quests your
  group starts.

**The arrow goes to the nearest thing you can do**
- In a quest hub the arrow now points at the closest step you can do right now (a pickup, a
  ready turn-in, objectives you're standing in) instead of walking you past it to reach the
  next one in the list. It never jumps past a flight, hearth, trip or dungeon in the guide.
  Hover the arrow to see when it picked a nearer step. Turn it off in the gear menu
  ("Arrow goes to the nearest step I can do").

**No more suicide runs or grey mobs**
- Routes no longer send you into areas whose mobs are well above your level just to talk to
  someone. The Talking Head in Fenris Keep (Resting in Pieces) was the worst case: level 13
  characters were sent through level 16 to 19 Rot Hides.
- Routes skip quests whose mobs would be grey (no XP) by the time you get there.
- If you're ahead of the route's pace, quests you haven't started whose mobs are grey for
  you are now skipped automatically, like grey quests already were.
- Steps in an area that's too dangerous for your level show a warning.

**Dungeons**
- Routes wait for a quest chain that leads to more of a dungeon's quests before sending you
  in. Alliance gets The Defias Brotherhood back into its Deadmines run, and both factions
  pick up more dungeon quests overall (Horde 6 more, Alliance 9 more).

**Route updates**
- Most level 12 to 60 guides were rebuilt and renamed (the Horde route is now 10 guides,
  Alliance 9). If you're partway through one, it starts over at the top, but steps you've
  already done in the game are checked off automatically.
- Undead start (Tirisfal Glades): "A Light in the Darkness" now comes after you turn in
  "The Damned", since the game only offers it once that quest is done. Quest data updated to
  the latest Questie.

## 1.0.1

**Fixes**
- Entering combat no longer floods the screen with Lua errors. The arrow dims and shows
  "Position hidden in combat" while the game hides your position, then picks up again
  after the fight.

## 1.0.0

**Dungeons first**
- Routes now go out of their way for dungeon quests: about half again as many are on each
  route (Horde 48, Alliance 45, up from 32 and 33).
- Alliance gets The Deadmines back, including the Defias Brotherhood chain into it. Horde now
  picks up all of Ragefire Chasm's quests from the three capitals.
- Each dungeon is one run for all its quests where possible (no more running Wailing Caverns
  four times), and the guide sends you to the entrance on the right continent.

**Each faction keeps to its own zones**
- The Alliance route no longer levels in the Barrens, and neither faction takes quests in the
  other faction's home zones. Dungeons there are still run for your own side's quests
  (Scarlet Monastery for Alliance).

**Skyborne starter (new)**
- New Zephras Isle guides for Forever's Skyborne, Horde and Alliance: the island's quests and
  class trainers to about level 12, then through the portal to Orgrimmar and Durotar (Horde)
  or Stormwind and the Westfall/Redridge zones (Alliance), and on into the shared route.
- Skyborne-only quests now have map pins.
- Built from early data: about a third of the island's quests have no objective locations
  yet, so the guide only shows where to pick them up and hand them in. Please report anything
  that's off.

**Group quests marked correctly**
- About 80 solo quests were shown and routed as group quests because one elite rare shares the
  loot table with ordinary mobs (Kobold Candles, Redridge Goulash, Raptor Horns, Chen's Empty
  Keg and more). They're solo quests again.
- Quests that only ask you to talk to an elite-ranked friendly NPC are no longer group quests.
- Quests started by an item that only an elite drops (Croaky's Head, The Shattered Necklace)
  have their map pins back, marked as group quests.
- New elite named mobs from Forever's data (Ukorsbane, Halikor, Elmpaw, Baron Marinous and
  others) are now treated as group content, so solo routes no longer send you to fight them.

**Updated quest data**
- Rebuilt from the latest QuestieDB data for WoW: Forever. Most shared guides have new level
  ranges and names, so if you were partway through one, it starts from the beginning.

## 0.9.1 (beta)

**Pace tracking**
- The guide window now shows whether you're **on pace** with the route, or how many levels
  **ahead** or **behind** you are.
- **Warnings before a level wall:** if a quest coming up needs a level you won't have by the
  time you get there, the guide tells you early and estimates how much XP (and roughly how
  many kills) to grind first. Same if you fall a level or more behind.
- Turn this off in the gear menu under **Pace**.

**Smarter routes**
- Routes now account for time, not just distance: how many mobs you'll need to kill (using
  real drop rates), travel, flights, boats and dungeon runs.
- Quests that take too long for what they give (very low drop rates, long detours, single
  rare spawns) are dropped, and the route uses better quests instead.
- **Hearthstone steps:** the guide tells you when to make an inn your home at the hub you're
  working from, and when to hearth back instead of running.
- Quest targets with only one or two spawn points now carry a note, so you know to group up
  or come back if others are waiting for them.
- Fixed a quest that asked for 6,000 items ("Super Reaper 6000").

**Class training**
- The guide now tells you when to visit your class trainer, for your class only: every couple
  of levels while you pass a trainer early on, and a trip to the nearest trainer (usually a
  capital) when it's been about four levels.
- Includes WoW: Forever's new class trainers (e.g. Undead Paladins, Dwarf Shamans).
- Notes when talent points start (level 10) and when Dual Specialization becomes available
  from your trainer (level 40).
- Training steps complete when you open your trainer, and never hold you up if you'd rather
  keep questing.

**Class quests**
- Your class quests are now part of the route, shown only to your class (and race, where the
  quest is race-specific), right after the training visit where they become available:
  - Hunters: Taming the Beast at 10.
  - Druids: Bear Form (Moonglade), Aquatic Form and Cat Form.
  - Shamans: the Earth, Fire, Water and Air totem quests, including Forever's Dwarf Shaman
    versions.
  - Warlocks: Voidwalker and Succubus summoning, the level 40 Felsteed, and the robe and orb
    chains.
  - Warriors: the Defensive Stance and Brutal Armor/Whirlwind weapon chains.
  - Priests: race spell quests.
  - Paladins: Forever's new Undead Paladin quests in Tirisfal, Tome of Divinity, Tome of
    Nobility.
  - Rogues and Mages: their class chains.
- Each race's copy of a quest is picked by where you are, so you aren't sent across the world
  for another race's version.
- Elite (group) class quests and breadcrumbs are optional and skip themselves if you don't
  take them.
- Quests that every class but one can do (like Durotar's "Vile Familiars", which Warlocks
  get a separate version of) now show for the right classes instead of being left out.

**Fixes**
- If an old test version (ForeverGuide) is still installed next to MittenQuest, you'd see two
  guide windows and two arrows. MittenQuest now notices and offers to turn the old one off.

**Better level estimates**
- Quests new to WoW: Forever now count toward the route's level estimates (they were counted
  as giving no XP), so expected levels are more accurate.

**Help tune the route**
- MittenQuest now keeps a small pace log as you play: your level when you reach each step, and
  how much XP each level took from quests versus everything else. It stays on your computer.
  If you'd like to help make the leveling pace more accurate, see "Help tune the pace" on the
  project's GitHub page.

## 0.9.0 (beta)

**New: Alliance 1–60 route**
- Starting guides for Human (Elwynn Forest), Dwarf/Gnome (Dun Morogh) and Night Elf
  (Teldrassil), each running to level 20 through the classic Alliance zones.
- A shared Alliance route from 19 to 60, starting at Menethil Harbor.
- The right guide is picked automatically for your race and level, just like Horde.
- Quest map pins now cover both factions (2,600+ quests). You only see your own faction's
  quests and neutral ones.

**Improvements for everyone**
- Starting guides now finish with a step that sends you to where the next guide begins
  (with boat or zeppelin directions when you need to change continents).
- Joining a guide partway through no longer gets stuck on a "complete" or "turn in" step
  for a quest you don't have. Those steps are skipped until you pick the quest up.
- "Get flight path" steps now also complete as soon as you open that flight master.
- The shared routes no longer repeat quests your starting guide already covered.

## 0.8.0 (beta)

- First release: Horde 1–60 route (Orc/Troll, Tauren and Undead starts), direction arrow,
  quest map pins, automatic step tracking, skip/undo buttons.
