--[[
    MittenQuest - Data/Quests.lua  (GENERATED - do not hand-edit; see tools/generator/)

    Horde and Alliance quests from the QuestieDB Forever dataset (Classic base + Forever
    corrections + in-game Forever traces). QuestieDB derives from Questie (GPL-3.0);
    see CREDITS.md. Fields: name, level, minLevel, map/x/y (giver), giver, faction (only
    set for one-faction quests), alliance (Alliance-side giver when it differs), pre (must
    be turned in first), race/class (file-name sets), dungeon, group (elite), turnin {map,x,y}.
]]

local _, ns = ...
ns.QuestDB = ns.QuestDB or {}
local Q = ns.QuestDB

Q[2] = { name = "Sharptalon's Claw", level = 30, minLevel = 20, map = 1440, x = 75.0, y = 70.1, giver = "Drop: Sharptalon's Claw", faction = "Horde", pre = { 6383 }, turnin = { 1440, 73.8, 61.5 } }
Q[5] = { name = "Jitters' Growling Gut", level = 20, minLevel = 17, map = 1431, x = 18.4, y = 56.4, giver = "Jitters", faction = "Alliance", turnin = { 1431, 73.8, 43.5 } }
Q[6] = { name = "Bounty on Garrick Padfoot", level = 5, minLevel = 2, map = 1429, x = 48.2, y = 42.9, giver = "Deputy Willem", faction = "Alliance", pre = { 18 }, turnin = { 1429, 48.2, 42.9 } }
Q[7] = { name = "Kobold Camp Cleanup", level = 2, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 783 }, turnin = { 1429, 48.9, 41.6 } }
Q[8] = { name = "A Rogue's Deal", level = 5, minLevel = 1, map = 1420, x = 38.2, y = 56.8, giver = "Calvin Montague", faction = "Horde", turnin = { 1420, 61.7, 52.0 } }
Q[9] = { name = "The Killing Fields", level = 15, minLevel = 8, map = 1436, x = 56.0, y = 31.2, giver = "Farmer Saldean", faction = "Alliance", turnin = { 1436, 56.0, 31.2 } }
Q[10] = { name = "The Scrimshank Redemption", level = 48, minLevel = 39, map = 1446, x = 50.2, y = 27.5, giver = "Senior Surveyor Fizzledowser", pre = { 82 }, turnin = { 1446, 50.2, 27.5 } }
Q[11] = { name = "Riverpaw Gnoll Bounty", level = 10, minLevel = 6, map = 1429, x = 24.2, y = 74.5, giver = "Deputy Rainer", faction = "Alliance", pre = { 76 }, turnin = { 1429, 24.2, 74.5 } }
Q[12] = { name = "The People's Militia", level = 12, minLevel = 9, map = 1436, x = 56.3, y = 47.5, giver = "Gryan Stoutmantle", faction = "Alliance", turnin = { 1436, 56.3, 47.5 } }
Q[13] = { name = "The People's Militia", level = 14, minLevel = 9, map = 1436, x = 56.3, y = 47.5, giver = "Gryan Stoutmantle", faction = "Alliance", pre = { 12 }, turnin = { 1436, 56.3, 47.5 } }
Q[14] = { name = "The People's Militia", level = 17, minLevel = 9, map = 1436, x = 56.3, y = 47.5, giver = "Gryan Stoutmantle", faction = "Alliance", pre = { 13 }, turnin = { 1436, 56.3, 47.5 } }
Q[15] = { name = "Investigate Echo Ridge", level = 3, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 7 }, turnin = { 1429, 48.9, 41.6 } }
Q[17] = { name = "Uldaman Reagent Run", level = 42, minLevel = 38, map = 1432, x = 37.1, y = 49.4, giver = "Ghak Healtouch", faction = "Alliance", pre = { 2500 }, dungeon = "Uldaman", turnin = { 1432, 37.1, 49.4 } }
Q[18] = { name = "Brotherhood of Thieves", level = 4, minLevel = 2, map = 1429, x = 48.2, y = 42.9, giver = "Deputy Willem", faction = "Alliance", pre = { 783 }, turnin = { 1429, 48.2, 42.9 } }
Q[19] = { name = "Tharil'zun", level = 25, minLevel = 18, map = 1433, x = 28.4, y = 49.0, giver = "Marshal Marris", faction = "Alliance", pre = { 20 }, group = true, turnin = { 1433, 28.4, 49.0 } }
Q[20] = { name = "Blackrock Menace", level = 21, minLevel = 18, map = 1433, x = 28.4, y = 49.0, giver = "Marshal Marris", faction = "Alliance", group = true, turnin = { 1433, 28.4, 49.0 } }
Q[21] = { name = "Skirmish at Echo Ridge", level = 5, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 15 }, turnin = { 1429, 48.9, 41.6 } }
Q[22] = { name = "Goretusk Liver Pie", level = 12, minLevel = 9, map = 1436, x = 56.4, y = 30.5, giver = "Salma Saldean", faction = "Alliance", turnin = { 1436, 56.4, 30.5 } }
Q[23] = { name = "Ursangous's Paw", level = 24, minLevel = 20, map = 1440, x = 39.8, y = 65.2, giver = "Drop: Ursangous's Paw", faction = "Horde", pre = { 6383 }, turnin = { 1440, 73.8, 61.5 } }
Q[24] = { name = "Shadumbra's Head", level = 27, minLevel = 20, map = 1440, x = 57.5, y = 56.0, giver = "Drop: Shadumbra's Head", faction = "Horde", pre = { 6383 }, turnin = { 1440, 73.8, 61.5 } }
Q[25] = { name = "Stonetalon Standstill", level = 25, minLevel = 23, map = 1440, x = 73.7, y = 60, giver = "Mastok Wrilehiss", faction = "Horde", turnin = { 1440, 73.7, 60 } }
Q[26] = { name = "A Lesson to Learn", level = 16, minLevel = 16, map = 1457, x = 35.4, y = 8.4, giver = "Mathrengyl Bearwalker", faction = "Alliance", race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[27] = { name = "A Lesson to Learn", level = 16, minLevel = 16, map = 1456, x = 76.5, y = 27.2, giver = "Turak Runetotem", faction = "Horde", race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[28] = { name = "Trial of the Lake", level = 16, minLevel = 16, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Horde", pre = { 27 }, race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1450, 36.5, 40.1 } }
Q[29] = { name = "Trial of the Lake", level = 16, minLevel = 16, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Alliance", pre = { 26 }, race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1450, 36.5, 40.1 } }
Q[30] = { name = "Trial of the Sea Lion", level = 16, minLevel = 16, map = 1450, x = 36.5, y = 40.1, giver = "Tajarri", faction = "Horde", pre = { 28 }, race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[31] = { name = "Aquatic Form", level = 16, minLevel = 16, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Horde", pre = { 30 }, race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1456, 76.5, 27.2 } }
Q[32] = { name = "Rise of the Silithid", level = 48, minLevel = 39, map = 1446, x = 50.2, y = 27.5, giver = "Senior Surveyor Fizzledowser", faction = "Horde", pre = { 113 }, turnin = { 1454, 56.3, 46.7 } }
Q[33] = { name = "Wolves Across the Border", level = 2, minLevel = 1, map = 1429, x = 48.9, y = 40.2, giver = "Eagan Peltskinner", faction = "Alliance", turnin = { 1429, 48.9, 40.2 } }
Q[34] = { name = "An Unwelcome Guest", level = 24, minLevel = 18, map = 1433, x = 16.8, y = 46.3, giver = "Martie Jainrose", faction = "Alliance", turnin = { 1433, 16.8, 46.3 } }
Q[35] = { name = "Further Concerns", level = 10, minLevel = 7, map = 1429, x = 42.1, y = 65.9, giver = "Marshal Dughan", faction = "Alliance", pre = { 40 }, turnin = { 1429, 74.0, 72.2 } }
Q[36] = { name = "Westfall Stew", level = 10, minLevel = 9, map = 1436, x = 59.9, y = 19.4, giver = "Verna Furlbrow", faction = "Alliance", turnin = { 1436, 56.4, 30.5 } }
Q[37] = { name = "Find the Lost Guards", level = 10, minLevel = 7, map = 1429, x = 74.0, y = 72.2, giver = "Guard Thomas", faction = "Alliance", pre = { 35 }, turnin = { 1429, 72.7, 60.3 } }
Q[38] = { name = "Westfall Stew", level = 13, minLevel = 9, map = 1436, x = 56.4, y = 30.5, giver = "Salma Saldean", faction = "Alliance", pre = { 36 }, turnin = { 1436, 56.4, 30.5 } }
Q[39] = { name = "Deliver Thomas' Report", level = 10, minLevel = 7, map = 1429, x = 74.0, y = 72.2, giver = "Guard Thomas", faction = "Alliance", pre = { 71 }, turnin = { 1429, 42.1, 65.9 } }
Q[40] = { name = "A Fishy Peril", level = 10, minLevel = 7, map = 1429, x = 42.1, y = 67.3, giver = "Remy \"Two Times\"", faction = "Alliance", turnin = { 1429, 42.1, 65.9 } }
Q[45] = { name = "Discover Rolf's Fate", level = 10, minLevel = 7, map = 1429, x = 72.7, y = 60.3, giver = "A half-eaten body", faction = "Alliance", pre = { 37 }, turnin = { 1429, 79.8, 55.5 } }
Q[46] = { name = "Bounty on Murlocs", level = 10, minLevel = 7, map = 1429, x = 74.0, y = 72.2, giver = "Guard Thomas", faction = "Alliance", pre = { 39 }, turnin = { 1429, 74.0, 72.2 } }
Q[47] = { name = "Gold Dust Exchange", level = 7, minLevel = 4, map = 1429, x = 42.1, y = 67.3, giver = "Remy \"Two Times\"", faction = "Alliance", turnin = { 1429, 42.1, 67.3 } }
Q[48] = { name = "Sweet Amber", level = 44, minLevel = 40, map = 1436, x = 44.6, y = 80.2, giver = "Grimbooze Thunderbrew", faction = "Alliance", turnin = { 1436, 44.6, 80.2 } }
Q[49] = { name = "Sweet Amber", level = 44, minLevel = 40, map = 1436, x = 44.6, y = 80.2, giver = "Grimbooze Thunderbrew", faction = "Alliance", pre = { 48 }, turnin = { 1436, 44.6, 80.2 } }
Q[50] = { name = "Sweet Amber", level = 44, minLevel = 40, map = 1436, x = 44.6, y = 80.2, giver = "Grimbooze Thunderbrew", faction = "Alliance", pre = { 49 }, turnin = { 1436, 44.6, 80.2 } }
Q[51] = { name = "Sweet Amber", level = 44, minLevel = 40, map = 1436, x = 44.6, y = 80.2, giver = "Grimbooze Thunderbrew", faction = "Alliance", pre = { 50 }, turnin = { 1436, 44.6, 80.2 } }
Q[52] = { name = "Protect the Frontier", level = 10, minLevel = 7, map = 1429, x = 74.0, y = 72.2, giver = "Guard Thomas", faction = "Alliance", turnin = { 1429, 74.0, 72.2 } }
Q[53] = { name = "Sweet Amber", level = 44, minLevel = 40, map = 1436, x = 44.6, y = 80.2, giver = "Grimbooze Thunderbrew", faction = "Alliance", pre = { 51 }, turnin = { 1436, 44.6, 80.2 } }
Q[54] = { name = "Report to Goldshire", level = 5, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 21 }, turnin = { 1429, 42.1, 65.9 } }
Q[55] = { name = "Morbent Fel", level = 32, minLevel = 20, map = 1431, x = 7.8, y = 34.1, giver = "Sven Yorgen", faction = "Alliance", pre = { 325 }, group = true, turnin = { 1431, 7.8, 34.1 } }
Q[56] = { name = "The Night Watch", level = 24, minLevel = 18, map = 1431, x = 73.5, y = 46.8, giver = "Commander Althea Ebonlocke", faction = "Alliance", turnin = { 1431, 73.5, 46.8 } }
Q[57] = { name = "The Night Watch", level = 26, minLevel = 18, map = 1431, x = 73.5, y = 46.8, giver = "Commander Althea Ebonlocke", faction = "Alliance", pre = { 56 }, turnin = { 1431, 73.5, 46.8 } }
Q[58] = { name = "The Night Watch", level = 30, minLevel = 18, map = 1431, x = 73.5, y = 46.8, giver = "Commander Althea Ebonlocke", faction = "Alliance", pre = { 57 }, turnin = { 1431, 73.5, 46.8 } }
Q[59] = { name = "Cloth and Leather Armor", level = 10, minLevel = 7, map = 1429, x = 42.1, y = 65.9, giver = "Marshal Dughan", faction = "Alliance", pre = { 39 }, turnin = { 1429, 79.5, 68.8 } }
Q[60] = { name = "Kobold Candles", level = 7, minLevel = 3, map = 1429, x = 43.3, y = 65.7, giver = "William Pestle", faction = "Alliance", turnin = { 1429, 43.3, 65.7 } }
Q[61] = { name = "Shipment to Stormwind", level = 7, minLevel = 3, map = 1429, x = 43.3, y = 65.7, giver = "William Pestle", faction = "Alliance", pre = { 60 }, turnin = { 1453, 63.2, 74.4 } }
Q[62] = { name = "The Fargodeep Mine", level = 7, minLevel = 4, map = 1429, x = 42.1, y = 65.9, giver = "Marshal Dughan", faction = "Alliance", turnin = { 1429, 42.1, 65.9 } }
Q[63] = { name = "Call of Water", level = 23, minLevel = 20, map = 1413, x = 65.8, y = 43.8, giver = "Islen Waterseer", faction = "Horde", pre = { 220 }, class = { SHAMAN = true }, turnin = { 1421, 38.3, 44.6 } }
Q[64] = { name = "The Forgotten Heirloom", level = 12, minLevel = 9, map = 1436, x = 60.0, y = 19.4, giver = "Farmer Furlbrow", faction = "Alliance", turnin = { 1436, 60.0, 19.4 } }
Q[65] = { name = "The Defias Brotherhood", level = 18, minLevel = 14, map = 1436, x = 56.3, y = 47.5, giver = "Gryan Stoutmantle", faction = "Alliance", turnin = { 1433, 21.4, 45.4 } }
Q[66] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1431, x = 75.8, y = 45.3, giver = "Madame Eva", faction = "Alliance", turnin = { 1431, 72.5, 46.9 } }
Q[67] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1431, x = 72.5, y = 46.9, giver = "Clerk Daltry", faction = "Alliance", pre = { 66 }, turnin = { 1436, 41.5, 66.7 } }
Q[68] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1436, x = 41.5, y = 66.7, giver = "Old Footlocker", faction = "Alliance", pre = { 67 }, turnin = { 1431, 72.5, 46.9 } }
Q[69] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1431, x = 72.5, y = 46.9, giver = "Clerk Daltry", faction = "Alliance", pre = { 68 }, turnin = { 1429, 43.8, 65.8 } }
Q[70] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1429, x = 43.8, y = 65.8, giver = "Innkeeper Farley", faction = "Alliance", pre = { 69 }, turnin = { 1453, 42.5, 72.4 } }
Q[71] = { name = "Report to Thomas", level = 10, minLevel = 7, map = 1429, x = 79.8, y = 55.5, giver = "Rolf's corpse", faction = "Alliance", pre = { 45 }, turnin = { 1429, 74.0, 72.2 } }
Q[72] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1453, x = 42.5, y = 72.4, giver = "Caretaker Folsom", faction = "Alliance", pre = { 70 }, turnin = { 1453, 42.5, 72.0 } }
Q[74] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1453, x = 42.5, y = 72.0, giver = "Sealed Crate", faction = "Alliance", pre = { 72 }, turnin = { 1429, 84.6, 69.4 } }
Q[75] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1429, x = 84.6, y = 69.4, giver = "Marshal Haggard", faction = "Alliance", pre = { 74 }, turnin = { 1429, 84.6, 69.4 } }
Q[76] = { name = "The Jasperlode Mine", level = 10, minLevel = 4, map = 1429, x = 42.1, y = 65.9, giver = "Marshal Dughan", faction = "Alliance", pre = { 62 }, turnin = { 1429, 42.1, 65.9 } }
Q[77] = { name = "A Sticky Situation", level = 48, minLevel = 42, map = 1425, x = 26.7, y = 48.6, giver = "Gilveradin Sunchaser", faction = "Horde", pre = { 650 }, turnin = { 1425, 26.7, 48.6 } }
Q[78] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1429, x = 84.6, y = 69.4, giver = "Marshal Haggard", faction = "Alliance", pre = { 75 }, turnin = { 1431, 73.8, 44.5 } }
Q[79] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1431, x = 73.8, y = 44.5, giver = "Tavernkeep Smitts", faction = "Alliance", pre = { 78 }, turnin = { 1431, 73.5, 46.8 } }
Q[80] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1431, x = 73.5, y = 46.8, giver = "Commander Althea Ebonlocke", faction = "Alliance", pre = { 79 }, turnin = { 1431, 72.5, 46.9 } }
Q[81] = { name = "Ripple Delivery", level = 48, minLevel = 42, map = 1425, x = 26.7, y = 48.6, giver = "Gilveradin Sunchaser", faction = "Horde", pre = { 77 }, turnin = { 1454, 59.5, 36.6 } }
Q[82] = { name = "Noxious Lair Investigation", level = 47, minLevel = 39, map = 1446, x = 50.2, y = 27.5, giver = "Senior Surveyor Fizzledowser", pre = { 992 }, turnin = { 1446, 50.9, 27.0 } }
Q[83] = { name = "Red Linen Goods", level = 9, minLevel = 4, map = 1429, x = 79.5, y = 68.8, giver = "Sara Timberlain", faction = "Alliance", turnin = { 1429, 79.5, 68.8 } }
Q[84] = { name = "Back to Billy", level = 6, minLevel = 5, map = 1429, x = 34.5, y = 84.2, giver = "\"Auntie\" Bernice Stonefield", faction = "Alliance", pre = { 86 }, turnin = { 1429, 43.1, 85.7 } }
Q[85] = { name = "Lost Necklace", level = 6, minLevel = 5, map = 1429, x = 34.5, y = 84.2, giver = "\"Auntie\" Bernice Stonefield", faction = "Alliance", turnin = { 1429, 43.1, 85.7 } }
Q[86] = { name = "Pie for Billy", level = 6, minLevel = 5, map = 1429, x = 43.1, y = 85.7, giver = "Billy Maclure", faction = "Alliance", pre = { 85 }, turnin = { 1429, 34.5, 84.2 } }
Q[87] = { name = "Goldtooth", level = 8, minLevel = 5, map = 1429, x = 43.1, y = 85.7, giver = "Billy Maclure", faction = "Alliance", pre = { 84 }, turnin = { 1429, 34.5, 84.2 } }
Q[88] = { name = "Princess Must Die!", level = 9, minLevel = 6, map = 1429, x = 34.7, y = 84.5, giver = "Ma Stonefield", faction = "Alliance", turnin = { 1429, 34.7, 84.5 } }
Q[89] = { name = "The Everstill Bridge", level = 20, minLevel = 15, map = 1433, x = 27.1, y = 48.6, giver = "Foreman Oslow", faction = "Alliance", pre = { 125 }, turnin = { 1433, 27.1, 48.6 } }
Q[91] = { name = "Solomon's Law", level = 23, minLevel = 17, map = 1433, x = 24.6, y = 44.3, giver = "Bailiff Conacher", faction = "Alliance", turnin = { 1433, 24.6, 44.3 } }
Q[92] = { name = "Redridge Goulash", level = 18, minLevel = 15, map = 1433, x = 17.6, y = 43.8, giver = "Chef Breanna", faction = "Alliance", group = true, turnin = { 1433, 17.6, 43.8 } }
Q[93] = { name = "Dusky Crab Cakes", level = 20, minLevel = 17, map = 1431, x = 73.8, y = 43.5, giver = "Chef Grual", faction = "Alliance", pre = { 5 }, turnin = { 1431, 73.8, 43.5 } }
Q[94] = { name = "A Watchful Eye", level = 21, minLevel = 20, map = 1429, x = 65.2, y = 69.7, giver = "Theocritus", faction = "Alliance", turnin = { 1433, 79.4, 46.8 } }
Q[95] = { name = "Sven's Revenge", level = 25, minLevel = 20, map = 1431, x = 7.8, y = 34.1, giver = "Sven Yorgen", faction = "Alliance", turnin = { 1431, 49.9, 77.7 } }
Q[96] = { name = "Call of Water", level = 23, minLevel = 20, map = 1421, x = 38.6, y = 44.6, giver = "Minor Manifestation of Water", faction = "Horde", pre = { 100 }, class = { SHAMAN = true }, turnin = { 1413, 65.8, 43.8 } }
Q[97] = { name = "The Legend of Stalvan", level = 28, minLevel = 22, map = 1431, x = 72.5, y = 46.9, giver = "Clerk Daltry", faction = "Alliance", pre = { 80 }, turnin = { 1431, 73.5, 46.8 } }
Q[99] = { name = "Arugal's Folly", level = 15, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", faction = "Horde", pre = { 424 }, group = true, turnin = { 1421, 44.2, 39.8 } }
Q[100] = { name = "Call of Water", level = 23, minLevel = 20, map = 1421, x = 38.3, y = 44.6, giver = "Brazier of Everfount", faction = "Horde", pre = { 63 }, class = { SHAMAN = true }, turnin = { 1421, 38.6, 44.6 } }
Q[101] = { name = "The Totem of Infliction", level = 25, minLevel = 18, map = 1431, x = 75.8, y = 45.3, giver = "Madame Eva", faction = "Alliance", turnin = { 1431, 75.8, 45.3 } }
Q[102] = { name = "Patrolling Westfall", level = 14, minLevel = 8, map = 1436, x = 56.4, y = 47.6, giver = "Captain Danuvin", faction = "Alliance", turnin = { 1436, 56.4, 47.6 } }
Q[103] = { name = "Keeper of the Flame", level = 16, minLevel = 10, map = 1436, x = 30.0, y = 86.0, giver = "Captain Grayson", group = true, turnin = { 1436, 30.0, 86.0 } }
Q[104] = { name = "The Coastal Menace", level = 20, minLevel = 15, map = 1436, x = 30.0, y = 86.0, giver = "Captain Grayson", turnin = { 1436, 30.0, 86.0 } }
Q[105] = { name = "Alas, Andorhal", level = 60, minLevel = 50, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", faction = "Horde", pre = { 5098 }, turnin = { 1420, 83.1, 68.9 } }
Q[106] = { name = "Young Lovers", level = 6, minLevel = 5, map = 1429, x = 43.1, y = 89.6, giver = "Maybell Maclure", faction = "Alliance", turnin = { 1429, 29.8, 86 } }
Q[107] = { name = "Note to William", level = 6, minLevel = 5, map = 1429, x = 34.9, y = 83.9, giver = "Gramma Stonefield", faction = "Alliance", pre = { 111 }, turnin = { 1429, 43.3, 65.7 } }
Q[109] = { name = "Report to Gryan Stoutmantle", level = 10, minLevel = 9, map = 1436, x = 56.0, y = 31.2, giver = "Farmer Saldean", faction = "Alliance", turnin = { 1436, 56.3, 47.5 } }
Q[110] = { name = "Insect Part Analysis", level = 48, minLevel = 39, map = 1446, x = 50.2, y = 27.5, giver = "Senior Surveyor Fizzledowser", pre = { 10 }, turnin = { 1446, 50.9, 27.0 } }
Q[111] = { name = "Speak with Gramma", level = 6, minLevel = 5, map = 1429, x = 29.8, y = 86, giver = "Tommy Joe Stonefield", faction = "Alliance", pre = { 106 }, turnin = { 1429, 34.9, 83.9 } }
Q[112] = { name = "Collecting Kelp", level = 7, minLevel = 5, map = 1429, x = 43.3, y = 65.7, giver = "William Pestle", faction = "Alliance", pre = { 107 }, turnin = { 1429, 43.3, 65.7 } }
Q[113] = { name = "Insect Part Analysis", level = 48, minLevel = 39, map = 1446, x = 50.9, y = 27.0, giver = "Alchemist Pestlezugg", pre = { 110 }, turnin = { 1446, 50.2, 27.5 } }
Q[114] = { name = "The Escape", level = 7, minLevel = 5, map = 1429, x = 43.3, y = 65.7, giver = "William Pestle", faction = "Alliance", pre = { 112 }, turnin = { 1429, 43.1, 89.6 } }
Q[115] = { name = "Shadow Magic", level = 23, minLevel = 18, map = 1433, x = 28.4, y = 49.0, giver = "Marshal Marris", faction = "Alliance", pre = { 20 }, group = true, turnin = { 1433, 28.4, 49.0 } }
Q[116] = { name = "Dry Times", level = 15, minLevel = 12, map = 1433, x = 21.4, y = 44.0, giver = "Barkeep Daniels", faction = "Alliance", turnin = { 1433, 21.4, 44.0 } }
Q[118] = { name = "The Price of Shoes", level = 18, minLevel = 14, map = 1433, x = 25.9, y = 47.3, giver = "Verner Osgood", faction = "Alliance", turnin = { 1429, 41.7, 65.5 } }
Q[119] = { name = "Return to Verner", level = 18, minLevel = 13, map = 1429, x = 41.7, y = 65.5, giver = "Smith Argus", faction = "Alliance", pre = { 118 }, turnin = { 1433, 25.9, 47.3 } }
Q[120] = { name = "Messenger to Stormwind", level = 14, minLevel = 14, map = 1433, x = 24.9, y = 44.5, giver = "Magistrate Solomon", faction = "Alliance", turnin = { 1453, 69.2, 82.7 } }
Q[121] = { name = "Messenger to Stormwind", level = 14, minLevel = 14, map = 1453, x = 69.2, y = 82.7, giver = "General Marcus Jonathan", faction = "Alliance", pre = { 120 }, turnin = { 1433, 24.9, 44.5 } }
Q[122] = { name = "Underbelly Scales", level = 18, minLevel = 14, map = 1433, x = 25.9, y = 47.3, giver = "Verner Osgood", faction = "Alliance", pre = { 119 }, turnin = { 1433, 25.9, 47.3 } }
Q[123] = { name = "The Collector", level = 10, minLevel = 7, map = 1429, x = 67.8, y = 40.2, giver = "Drop: Gold Pickup Schedule", faction = "Alliance", turnin = { 1429, 42.1, 65.9 } }
Q[124] = { name = "A Baying of Gnolls", level = 20, minLevel = 15, map = 1433, x = 25.9, y = 47.3, giver = "Verner Osgood", faction = "Alliance", pre = { 119 }, turnin = { 1433, 25.9, 47.3 } }
Q[125] = { name = "The Lost Tools", level = 16, minLevel = 15, map = 1433, x = 27.1, y = 48.6, giver = "Foreman Oslow", faction = "Alliance", turnin = { 1433, 27.1, 48.6 } }
Q[126] = { name = "Howling in the Hills", level = 25, minLevel = 15, map = 1433, x = 25.9, y = 47.3, giver = "Verner Osgood", faction = "Alliance", pre = { 124 }, turnin = { 1433, 25.9, 47.3 } }
Q[127] = { name = "Selling Fish", level = 21, minLevel = 16, map = 1433, x = 22.6, y = 47.4, giver = "Dockmaster Baren", faction = "Alliance", turnin = { 1433, 22.6, 47.4 } }
Q[128] = { name = "Blackrock Bounty", level = 25, minLevel = 20, map = 1433, x = 26.4, y = 57.9, giver = "Guard Howe", faction = "Alliance", turnin = { 1433, 26.4, 57.9 } }
Q[129] = { name = "A Free Lunch", level = 15, minLevel = 12, map = 1433, x = 21.5, y = 44.3, giver = "Darcy", faction = "Alliance", turnin = { 1433, 10.2, 71.5 } }
Q[130] = { name = "Visit the Herbalist", level = 15, minLevel = 12, map = 1433, x = 10.2, y = 71.5, giver = "Guard Parker", faction = "Alliance", pre = { 129 }, turnin = { 1433, 16.8, 46.3 } }
Q[131] = { name = "Delivering Daffodils", level = 15, minLevel = 12, map = 1433, x = 16.8, y = 46.3, giver = "Martie Jainrose", faction = "Alliance", pre = { 130 }, turnin = { 1433, 21.5, 44.3 } }
Q[132] = { name = "The Defias Brotherhood", level = 18, minLevel = 14, map = 1433, x = 21.4, y = 45.4, giver = "Wiley the Black", faction = "Alliance", pre = { 65 }, turnin = { 1436, 56.3, 47.5 } }
Q[133] = { name = "Ghoulish Effigy", level = 27, minLevel = 20, map = 1431, x = 28.1, y = 31.5, giver = "Abercrombie", faction = "Alliance", pre = { 159 }, turnin = { 1431, 28.1, 31.5 } }
Q[134] = { name = "Ogre Thieves", level = 30, minLevel = 20, map = 1431, x = 28.1, y = 31.5, giver = "Abercrombie", faction = "Alliance", pre = { 133 }, turnin = { 1431, 28.1, 31.5 } }
Q[135] = { name = "The Defias Brotherhood", level = 18, minLevel = 14, map = 1436, x = 56.3, y = 47.5, giver = "Gryan Stoutmantle", faction = "Alliance", pre = { 132 }, turnin = { 1453, 78.3, 70.7 } }
Q[136] = { name = "Captain Sander's Hidden Treasure", level = 16, minLevel = 10, map = 1436, x = 35.0, y = 16.9, giver = "Drop: Captain Sander's Treasure Map", turnin = { 1436, 25.9, 47.8 } }
Q[138] = { name = "Captain Sander's Hidden Treasure", level = 16, minLevel = 10, map = 1436, x = 25.9, y = 47.8, giver = "Captain's Footlocker", pre = { 136 }, turnin = { 1436, 40.5, 47.8 } }
Q[139] = { name = "Captain Sander's Hidden Treasure", level = 16, minLevel = 10, map = 1436, x = 40.5, y = 47.8, giver = "Broken Barrel", pre = { 138 }, turnin = { 1436, 40.6, 17.0 } }
Q[140] = { name = "Captain Sander's Hidden Treasure", level = 16, minLevel = 10, map = 1436, x = 40.6, y = 17.0, giver = "Old Jug", pre = { 139 }, turnin = { 1436, 26.0, 16.9 } }
Q[141] = { name = "The Defias Brotherhood", level = 18, minLevel = 14, map = 1453, x = 78.3, y = 70.7, giver = "Master Mathias Shaw", faction = "Alliance", pre = { 135 }, turnin = { 1436, 56.3, 47.5 } }
Q[142] = { name = "The Defias Brotherhood", level = 18, minLevel = 14, map = 1436, x = 56.3, y = 47.5, giver = "Gryan Stoutmantle", faction = "Alliance", pre = { 141 }, turnin = { 1436, 56.3, 47.5 } }
Q[143] = { name = "Messenger to Westfall", level = 14, minLevel = 14, map = 1433, x = 24.9, y = 44.5, giver = "Magistrate Solomon", faction = "Alliance", pre = { 121 }, turnin = { 1436, 56.3, 47.5 } }
Q[144] = { name = "Messenger to Westfall", level = 14, minLevel = 14, map = 1436, x = 56.3, y = 47.5, giver = "Gryan Stoutmantle", faction = "Alliance", pre = { 143 }, turnin = { 1433, 24.9, 44.5 } }
Q[145] = { name = "Messenger to Darkshire", level = 18, minLevel = 18, map = 1433, x = 24.9, y = 44.5, giver = "Magistrate Solomon", faction = "Alliance", pre = { 144 }, turnin = { 1431, 71.9, 46.4 } }
Q[146] = { name = "Messenger to Darkshire", level = 18, minLevel = 18, map = 1431, x = 71.9, y = 46.4, giver = "Lord Ello Ebonlocke", faction = "Alliance", pre = { 145 }, turnin = { 1433, 24.9, 44.5 } }
Q[147] = { name = "Manhunt", level = 10, minLevel = 7, map = 1429, x = 42.1, y = 65.9, giver = "Marshal Dughan", faction = "Alliance", pre = { 123 }, turnin = { 1429, 42.1, 65.9 } }
Q[148] = { name = "Supplies from Darkshire", level = 24, minLevel = 20, map = 1431, x = 28.1, y = 31.5, giver = "Abercrombie", faction = "Alliance", turnin = { 1431, 75.8, 45.3 } }
Q[149] = { name = "Ghost Hair Thread", level = 24, minLevel = 20, map = 1431, x = 75.8, y = 45.3, giver = "Madame Eva", faction = "Alliance", pre = { 148 }, turnin = { 1431, 82.0, 59.1 } }
Q[150] = { name = "Murloc Poachers", level = 20, minLevel = 20, map = 1433, x = 22.6, y = 47.4, giver = "Dockmaster Baren", faction = "Alliance", group = true, turnin = { 1433, 22.6, 47.4 } }
Q[151] = { name = "Poor Old Blanchy", level = 14, minLevel = 9, map = 1436, x = 59.9, y = 19.4, giver = "Verna Furlbrow", faction = "Alliance", turnin = { 1436, 59.9, 19.4 } }
Q[152] = { name = "The Coast Isn't Clear", level = 19, minLevel = 10, map = 1436, x = 30.0, y = 86.0, giver = "Captain Grayson", turnin = { 1436, 30.0, 86.0 } }
Q[153] = { name = "Red Leather Bandanas", level = 15, minLevel = 10, map = 1436, x = 54.0, y = 53.0, giver = "Scout Galiaan", faction = "Alliance", turnin = { 1436, 54.0, 53.0 } }
Q[154] = { name = "Return the Comb", level = 24, minLevel = 20, map = 1431, x = 82.0, y = 59.1, giver = "Blind Mary", faction = "Alliance", pre = { 149 }, turnin = { 1431, 75.8, 45.3 } }
Q[155] = { name = "The Defias Brotherhood", level = 18, minLevel = 14, map = 1436, x = 55.7, y = 47.5, giver = "The Defias Traitor", faction = "Alliance", pre = { 142 }, turnin = { 1436, 56.3, 47.5 } }
Q[156] = { name = "Gather Rot Blossoms", level = 24, minLevel = 20, map = 1431, x = 73.8, y = 44.5, giver = "Tavernkeep Smitts", faction = "Alliance", pre = { 158 }, turnin = { 1431, 73.8, 44.5 } }
Q[157] = { name = "Deliver the Thread", level = 24, minLevel = 20, map = 1431, x = 75.8, y = 45.3, giver = "Madame Eva", faction = "Alliance", pre = { 154 }, turnin = { 1431, 28.1, 31.5 } }
Q[158] = { name = "Zombie Juice", level = 24, minLevel = 20, map = 1431, x = 28.1, y = 31.5, giver = "Abercrombie", faction = "Alliance", pre = { 157 }, turnin = { 1431, 73.8, 44.5 } }
Q[159] = { name = "Juice Delivery", level = 24, minLevel = 20, map = 1431, x = 73.8, y = 44.5, giver = "Tavernkeep Smitts", faction = "Alliance", pre = { 156 }, turnin = { 1431, 28.1, 31.5 } }
Q[160] = { name = "Note to the Mayor", level = 30, minLevel = 20, map = 1431, x = 28.1, y = 31.5, giver = "Abercrombie", faction = "Alliance", pre = { 134 }, turnin = { 1431, 71.9, 46.4 } }
Q[161] = { name = "A Dark Threat Looms", level = 18, minLevel = 16, map = 1432, x = 46.0, y = 13.6, giver = "Chief Engineer Hinderweir VII", faction = "Alliance", pre = { 199 }, turnin = { 1437, 50.0, 18.2 } }
Q[162] = { name = "Rise of the Silithid", level = 49, minLevel = 39, map = 1446, x = 50.2, y = 27.5, giver = "Senior Surveyor Fizzledowser", faction = "Alliance", pre = { 113 }, turnin = { 1457, 41.8, 85.6 } }
Q[163] = { name = "Raven Hill", level = 20, minLevel = 17, map = 1431, x = 75.3, y = 48.8, giver = "Elaine Carevin", faction = "Alliance", turnin = { 1431, 18.4, 56.4 } }
Q[164] = { name = "Deliveries to Sven", level = 23, minLevel = 17, map = 1431, x = 75.3, y = 48.8, giver = "Elaine Carevin", faction = "Alliance", turnin = { 1431, 7.8, 34.1 } }
Q[165] = { name = "The Hermit", level = 25, minLevel = 17, map = 1431, x = 75.3, y = 48.8, giver = "Elaine Carevin", faction = "Alliance", turnin = { 1431, 28.1, 31.5 } }
Q[166] = { name = "The Defias Brotherhood", level = 22, minLevel = 14, map = 1436, x = 56.3, y = 47.5, giver = "Gryan Stoutmantle", faction = "Alliance", pre = { 155 }, dungeon = "The Deadmines", turnin = { 1436, 56.3, 47.5 } }
Q[167] = { name = "Oh Brother. . .", level = 20, minLevel = 15, map = 1453, x = 70.3, y = 40.8, giver = "Wilder Thistlenettle", faction = "Alliance", dungeon = "The Deadmines", turnin = { 1453, 70.3, 40.8 } }
Q[168] = { name = "Collecting Memories", level = 18, minLevel = 14, map = 1453, x = 70.3, y = 40.8, giver = "Wilder Thistlenettle", faction = "Alliance", dungeon = "The Deadmines", turnin = { 1453, 70.3, 40.8 } }
Q[169] = { name = "Wanted: Gath'Ilzogg", level = 26, minLevel = 15, map = 1433, x = 24.5, y = 46.2, giver = "Wanted: Gath'Ilzogg", faction = "Alliance", group = true, turnin = { 1433, 24.9, 44.5 } }
Q[170] = { name = "A New Threat", level = 2, minLevel = 1, map = 1426, x = 29.7, y = 71.2, giver = "Balir Frosthammer", faction = "Alliance", pre = { 179 }, turnin = { 1426, 29.7, 71.2 } }
Q[173] = { name = "Worgen in the Woods", level = 28, minLevel = 23, map = 1431, x = 75.8, y = 47.6, giver = "Calor", faction = "Alliance", turnin = { 1431, 75.8, 47.6 } }
Q[174] = { name = "Look To The Stars", level = 25, minLevel = 20, map = 1431, x = 79.8, y = 48.0, giver = "Viktori Prism'Antras", faction = "Alliance", turnin = { 1431, 79.8, 48.0 } }
Q[175] = { name = "Look To The Stars", level = 25, minLevel = 20, map = 1431, x = 79.8, y = 48.0, giver = "Viktori Prism'Antras", faction = "Alliance", pre = { 174 }, turnin = { 1431, 82.0, 59.1 } }
Q[176] = { name = "Wanted:  \"Hogger\"", level = 11, minLevel = 5, map = 1429, x = 24.6, y = 74.7, giver = "Wanted Poster", faction = "Alliance", group = true, turnin = { 1429, 42.1, 65.9 } }
Q[177] = { name = "Look To The Stars", level = 25, minLevel = 20, map = 1431, x = 82.0, y = 59.1, giver = "Blind Mary", faction = "Alliance", pre = { 175 }, turnin = { 1431, 79.8, 48.0 } }
Q[178] = { name = "Theocritus' Retrieval", level = 23, minLevel = 15, map = 1433, x = 73.9, y = 49.4, giver = "Drop: Glowing Shadowhide Pendant", faction = "Alliance", turnin = { 1429, 65.2, 69.7 } }
Q[179] = { name = "Dwarven Outfitters", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", turnin = { 1426, 29.9, 71.2 } }
Q[180] = { name = "Wanted: Lieutenant Fangore", level = 26, minLevel = 15, map = 1433, x = 21.7, y = 46.4, giver = "Wanted: Lieutenant Fangore", faction = "Alliance", turnin = { 1433, 24.9, 44.5 } }
Q[181] = { name = "Look To The Stars", level = 30, minLevel = 20, map = 1431, x = 79.8, y = 48.0, giver = "Viktori Prism'Antras", faction = "Alliance", pre = { 177 }, turnin = { 1431, 79.8, 48.0 } }
Q[182] = { name = "The Troll Cave", level = 4, minLevel = 1, map = 1426, x = 25.1, y = 75.7, giver = "Grelin Whitebeard", faction = "Alliance", turnin = { 1426, 25.1, 75.7 } }
Q[183] = { name = "The Boar Hunter", level = 3, minLevel = 1, map = 1426, x = 22.6, y = 71.4, giver = "Talin Keeneye", faction = "Alliance", turnin = { 1426, 22.6, 71.4 } }
Q[184] = { name = "Furlbrow's Deed", level = 9, minLevel = 8, map = 1429, x = 26.2, y = 58.7, giver = "Drop: Westfall Deed", faction = "Alliance", turnin = { 1436, 60.0, 19.4 } }
Q[185] = { name = "Tiger Mastery", level = 31, minLevel = 28, map = 1434, x = 35.6, y = 10.6, giver = "Ajeck Rouack", pre = { 583 }, turnin = { 1434, 35.6, 10.6 } }
Q[186] = { name = "Tiger Mastery", level = 33, minLevel = 28, map = 1434, x = 35.6, y = 10.6, giver = "Ajeck Rouack", pre = { 185 }, turnin = { 1434, 35.6, 10.6 } }
Q[187] = { name = "Tiger Mastery", level = 35, minLevel = 28, map = 1434, x = 35.6, y = 10.6, giver = "Ajeck Rouack", pre = { 186 }, turnin = { 1434, 35.6, 10.6 } }
Q[188] = { name = "Tiger Mastery", level = 37, minLevel = 28, map = 1434, x = 35.6, y = 10.6, giver = "Ajeck Rouack", pre = { 187 }, turnin = { 1434, 35.6, 10.6 } }
Q[189] = { name = "Bloodscalp Ears", level = 35, minLevel = 30, map = 1434, x = 27, y = 77.1, giver = "Kebok", turnin = { 1434, 27, 77.1 } }
Q[190] = { name = "Panther Mastery", level = 31, minLevel = 28, map = 1434, x = 35.5, y = 10.6, giver = "Sir S. J. Erlgadin", pre = { 583 }, turnin = { 1434, 35.5, 10.6 } }
Q[191] = { name = "Panther Mastery", level = 33, minLevel = 28, map = 1434, x = 35.5, y = 10.6, giver = "Sir S. J. Erlgadin", pre = { 190 }, turnin = { 1434, 35.5, 10.6 } }
Q[192] = { name = "Panther Mastery", level = 38, minLevel = 28, map = 1434, x = 35.5, y = 10.6, giver = "Sir S. J. Erlgadin", pre = { 191 }, turnin = { 1434, 35.5, 10.6 } }
Q[193] = { name = "Panther Mastery", level = 40, minLevel = 28, map = 1434, x = 35.5, y = 10.6, giver = "Sir S. J. Erlgadin", pre = { 192 }, group = true, turnin = { 1434, 35.5, 10.6 } }
Q[194] = { name = "Raptor Mastery", level = 34, minLevel = 28, map = 1434, x = 35.7, y = 10.8, giver = "Hemet Nesingwary", pre = { 583 }, turnin = { 1434, 35.7, 10.8 } }
Q[195] = { name = "Raptor Mastery", level = 36, minLevel = 28, map = 1434, x = 35.7, y = 10.8, giver = "Hemet Nesingwary", pre = { 194 }, turnin = { 1434, 35.7, 10.8 } }
Q[198] = { name = "Supplies to Private Thorsen", level = 32, minLevel = 30, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", faction = "Alliance", turnin = { 1434, 40.3, 8.4 } }
Q[199] = { name = "A Dark Threat Looms", level = 18, minLevel = 16, map = 1432, x = 56.0, y = 13.2, giver = "Suspicious Barrel", faction = "Alliance", pre = { 250 }, turnin = { 1432, 46.0, 13.6 } }
Q[200] = { name = "Bookie Herod", level = 35, minLevel = 30, map = 1434, x = 38.0, y = 3.0, giver = "Lieutenant Doren", faction = "Alliance", pre = { 215 }, turnin = { 1434, 43.7, 9.4 } }
Q[201] = { name = "Investigate the Camp", level = 32, minLevel = 28, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", turnin = { 1434, 26.9, 77.2 } }
Q[202] = { name = "Colonel Kurzen", level = 40, minLevel = 30, map = 1434, x = 38.0, y = 3.0, giver = "Lieutenant Doren", faction = "Alliance", pre = { 574 }, group = true, turnin = { 1434, 38.0, 3.0 } }
Q[203] = { name = "The Second Rebellion", level = 33, minLevel = 30, map = 1434, x = 38.0, y = 3.3, giver = "Sergeant Yohwa", faction = "Alliance", turnin = { 1434, 38.0, 3.3 } }
Q[204] = { name = "Bad Medicine", level = 34, minLevel = 30, map = 1434, x = 38.0, y = 3.3, giver = "Sergeant Yohwa", faction = "Alliance", turnin = { 1434, 38.0, 3.3 } }
Q[205] = { name = "Troll Witchery", level = 40, minLevel = 30, map = 1434, x = 37.8, y = 3.6, giver = "Brother Nimetz", faction = "Alliance", pre = { 207 }, turnin = { 1434, 37.8, 3.6 } }
Q[207] = { name = "Kurzen's Mystery", level = 38, minLevel = 30, map = 1434, x = 37.8, y = 3.6, giver = "Brother Nimetz", faction = "Alliance", pre = { 204, 203 }, turnin = { 1434, 37.8, 3.6 } }
Q[209] = { name = "Skullsplitter Tusks", level = 42, minLevel = 37, map = 1434, x = 27, y = 77.1, giver = "Kebok", pre = { 189 }, turnin = { 1434, 27, 77.1 } }
Q[210] = { name = "Krazek's Cookery", level = 37, minLevel = 32, map = 1434, x = 37.7, y = 3.3, giver = "Corporal Kaleb", faction = "Alliance", turnin = { 1434, 26.9, 77.2 } }
Q[211] = { name = "Alas, Andorhal", level = 60, minLevel = 50, map = 1422, x = 42.7, y = 84.0, giver = "Commander Ashlam Valorfist", faction = "Alliance", pre = { 5097 }, turnin = { 1422, 42.7, 84.0 } }
Q[212] = { name = "A Meal Served Cold", level = 40, minLevel = 35, map = 1453, x = 51.8, y = 93.6, giver = "Angus Stern", faction = "Alliance", turnin = { 1453, 51.8, 93.6 } }
Q[213] = { name = "Hostile Takeover", level = 36, minLevel = 31, map = 1434, x = 27, y = 77.1, giver = "Kebok", turnin = { 1434, 27, 77.1 } }
Q[214] = { name = "Red Silk Bandanas", level = 17, minLevel = 14, map = 1436, x = 56.7, y = 47.4, giver = "Scout Riell", faction = "Alliance", pre = { 155 }, dungeon = "The Deadmines", turnin = { 1436, 56.7, 47.4 } }
Q[215] = { name = "Jungle Secrets", level = 33, minLevel = 30, map = 1434, x = 40.3, y = 8.4, giver = "Private Thorsen", faction = "Alliance", turnin = { 1434, 38.0, 3.0 } }
Q[216] = { name = "Between a Rock and a Thistlefur", level = 24, minLevel = 21, map = 1440, x = 11.9, y = 34.5, giver = "Karang Amakkar", faction = "Horde", turnin = { 1440, 11.9, 34.5 } }
Q[217] = { name = "In Defense of the King's Lands", level = 17, minLevel = 10, map = 1432, x = 23.2, y = 73.7, giver = "Captain Rugelfuss", faction = "Alliance", pre = { 263, 267 }, turnin = { 1432, 23.2, 73.7 } }
Q[218] = { name = "The Stolen Journal", level = 5, minLevel = 1, map = 1426, x = 25.1, y = 75.7, giver = "Grelin Whitebeard", faction = "Alliance", pre = { 182 }, turnin = { 1426, 25.1, 75.7 } }
Q[219] = { name = "Missing In Action", level = 25, minLevel = 19, map = 1433, x = 23.3, y = 12.6, giver = "Corporal Keeshan", faction = "Alliance", turnin = { 1433, 28.4, 49.0 } }
Q[220] = { name = "Call of Water", level = 23, minLevel = 20, map = 1413, x = 43.4, y = 77.4, giver = "Brine", faction = "Horde", pre = { 1534 }, class = { SHAMAN = true }, turnin = { 1413, 65.8, 43.8 } }
Q[221] = { name = "Worgen in the Woods", level = 29, minLevel = 23, map = 1431, x = 75.8, y = 47.6, giver = "Calor", faction = "Alliance", pre = { 173 }, turnin = { 1431, 75.8, 47.6 } }
Q[222] = { name = "Worgen in the Woods", level = 31, minLevel = 23, map = 1431, x = 75.8, y = 47.6, giver = "Calor", faction = "Alliance", pre = { 221 }, turnin = { 1431, 75.8, 47.6 } }
Q[223] = { name = "Worgen in the Woods", level = 31, minLevel = 23, map = 1431, x = 75.8, y = 47.6, giver = "Calor", faction = "Alliance", pre = { 222 }, turnin = { 1431, 75.3, 49.0 } }
Q[224] = { name = "In Defense of the King's Lands", level = 12, minLevel = 10, map = 1432, x = 22.1, y = 73.1, giver = "Mountaineer Cobbleflint", faction = "Alliance", turnin = { 1432, 22.1, 73.1 } }
Q[225] = { name = "The Weathered Grave", level = 35, minLevel = 28, map = 1431, x = 17.7, y = 29.1, giver = "A Weathered Grave", faction = "Alliance", turnin = { 1431, 72.6, 47.6 } }
Q[226] = { name = "Wolves at Our Heels", level = 21, minLevel = 19, map = 1431, x = 7.7, y = 33.2, giver = "Lars", faction = "Alliance", turnin = { 1431, 7.7, 33.2 } }
Q[227] = { name = "Morgan Ladimore", level = 35, minLevel = 28, map = 1431, x = 72.6, y = 47.6, giver = "Sirra Von'Indi", faction = "Alliance", pre = { 225 }, turnin = { 1431, 73.5, 46.8 } }
Q[228] = { name = "Mor'Ladim", level = 35, minLevel = 28, map = 1431, x = 73.5, y = 46.8, giver = "Commander Althea Ebonlocke", faction = "Alliance", pre = { 227 }, group = true, turnin = { 1431, 73.5, 46.8 } }
Q[229] = { name = "The Daughter Who Lived", level = 35, minLevel = 28, map = 1431, x = 73.5, y = 46.8, giver = "Commander Althea Ebonlocke", faction = "Alliance", pre = { 228 }, turnin = { 1431, 74.0, 47.8 } }
Q[230] = { name = "Sven's Camp", level = 25, minLevel = 20, map = 1431, x = 49.9, y = 77.7, giver = "Mound of loose dirt", faction = "Alliance", pre = { 95 }, turnin = { 1431, 7.8, 34.1 } }
Q[231] = { name = "A Daughter's Love", level = 35, minLevel = 28, map = 1431, x = 74.0, y = 47.8, giver = "Watcher Ladimore", faction = "Alliance", pre = { 229 }, turnin = { 1431, 17.7, 29.1 } }
Q[232] = { name = "Errand for Apothecary Zinge", level = 45, minLevel = 38, map = 1458, x = 50.1, y = 68.0, giver = "Apothecary Zinge", faction = "Horde", turnin = { 1458, 58.6, 54.7 } }
Q[233] = { name = "Coldridge Valley Mail Delivery", level = 3, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, turnin = { 1426, 22.6, 71.4 } }
Q[234] = { name = "Coldridge Valley Mail Delivery", level = 4, minLevel = 1, map = 1426, x = 22.6, y = 71.4, giver = "Talin Keeneye", faction = "Alliance", pre = { 233 }, turnin = { 1426, 25.1, 75.7 } }
Q[235] = { name = "The Ashenvale Hunt", level = 20, minLevel = 20, map = 1454, x = 37.7, y = 75.2, giver = "Warcaller Gorlach", faction = "Horde", turnin = { 1440, 73.8, 61.5 } }
Q[237] = { name = "In Defense of the King's Lands", level = 15, minLevel = 10, map = 1432, x = 23.5, y = 76.4, giver = "Mountaineer Gravelgaw", faction = "Alliance", pre = { 224 }, turnin = { 1432, 23.5, 76.4 } }
Q[238] = { name = "Errand for Apothecary Zinge", level = 45, minLevel = 38, map = 1458, x = 58.6, y = 54.7, giver = "Alessandro Luca", faction = "Horde", pre = { 232 }, turnin = { 1458, 50.1, 68.0 } }
Q[239] = { name = "Westbrook Garrison Needs Help!", level = 10, minLevel = 6, map = 1429, x = 42.1, y = 65.9, giver = "Marshal Dughan", faction = "Alliance", pre = { 76 }, turnin = { 1429, 24.2, 74.5 } }
Q[240] = { name = "Return to Jitters", level = 20, minLevel = 17, map = 1431, x = 73.8, y = 43.5, giver = "Chef Grual", faction = "Alliance", pre = { 93 }, turnin = { 1431, 18.4, 56.4 } }
Q[243] = { name = "Into the Field", level = 46, minLevel = 38, map = 1458, x = 50.1, y = 68.0, giver = "Apothecary Zinge", faction = "Horde", pre = { 238 }, turnin = { 1446, 52.5, 28.5 } }
Q[244] = { name = "Encroaching Gnolls", level = 16, minLevel = 11, map = 1433, x = 10.2, y = 71.5, giver = "Guard Parker", faction = "Alliance", turnin = { 1433, 25.6, 60 } }
Q[245] = { name = "Eight-Legged Menaces", level = 21, minLevel = 17, map = 1431, x = 45.1, y = 67.0, giver = "Watcher Dodds", faction = "Alliance", turnin = { 1431, 45.1, 67.0 } }
Q[246] = { name = "Assessing the Threat", level = 17, minLevel = 11, map = 1433, x = 25.6, y = 60, giver = "Deputy Feldon", faction = "Alliance", pre = { 244 }, turnin = { 1433, 25.6, 60 } }
Q[247] = { name = "The Hunt Completed", level = 30, minLevel = 20, map = 1440, x = 73.8, y = 61.5, giver = "Senani Thunderheart", faction = "Horde", pre = { 2, 23, 24 }, turnin = { 1440, 73.8, 61.5 } }
Q[248] = { name = "Looking Further", level = 22, minLevel = 20, map = 1433, x = 79.4, y = 46.8, giver = "Old Lion Statue", faction = "Alliance", pre = { 94 }, turnin = { 1433, 58.2, 49.8 } }
Q[249] = { name = "Morganth", level = 27, minLevel = 20, map = 1429, x = 65.2, y = 69.7, giver = "Theocritus", faction = "Alliance", pre = { 248 }, group = true, turnin = { 1429, 65.2, 69.7 } }
Q[250] = { name = "A Dark Threat Looms", level = 18, minLevel = 16, map = 1432, x = 46.0, y = 13.6, giver = "Chief Engineer Hinderweir VII", faction = "Alliance", turnin = { 1432, 56.0, 13.2 } }
Q[251] = { name = "Translate Abercrombie's Note", level = 30, minLevel = 20, map = 1431, x = 71.9, y = 46.4, giver = "Lord Ello Ebonlocke", faction = "Alliance", pre = { 160 }, turnin = { 1431, 72.6, 47.6 } }
Q[252] = { name = "Translation to Ello", level = 30, minLevel = 20, map = 1431, x = 72.6, y = 47.6, giver = "Sirra Von'Indi", faction = "Alliance", pre = { 401 }, turnin = { 1431, 71.9, 46.4 } }
Q[253] = { name = "Bride of the Embalmer", level = 30, minLevel = 20, map = 1431, x = 71.9, y = 46.4, giver = "Lord Ello Ebonlocke", faction = "Alliance", pre = { 252 }, group = true, turnin = { 1431, 71.9, 46.4 } }
Q[255] = { name = "Mercenaries", level = 19, minLevel = 15, map = 1432, x = 34.6, y = 44.5, giver = "Magistrate Bluntnose", faction = "Alliance", group = true, turnin = { 1432, 34.6, 44.5 } }
Q[256] = { name = "WANTED: Chok'sul", level = 22, minLevel = 17, map = 1432, x = 37.3, y = 46.5, giver = "WANTED", faction = "Alliance", group = true, turnin = { 1432, 34.6, 44.5 } }
Q[257] = { name = "A Hunter's Boast", level = 16, minLevel = 11, map = 1432, x = 83.5, y = 65.5, giver = "Daryl the Youngling", faction = "Alliance", turnin = { 1432, 83.5, 65.5 } }
Q[258] = { name = "A Hunter's Challenge", level = 17, minLevel = 11, map = 1432, x = 83.5, y = 65.5, giver = "Daryl the Youngling", faction = "Alliance", pre = { 257 }, turnin = { 1432, 83.5, 65.5 } }
Q[261] = { name = "Down the Scarlet Path", level = 39, minLevel = 34, map = 1443, x = 66.5, y = 7.9, giver = "Brother Anton", faction = "Alliance", turnin = { 1443, 66.5, 7.9 } }
Q[262] = { name = "The Shadowy Figure", level = 25, minLevel = 20, map = 1431, x = 7.8, y = 34.1, giver = "Sven Yorgen", faction = "Alliance", pre = { 230 }, turnin = { 1431, 75.8, 45.3 } }
Q[263] = { name = "In Defense of the King's Lands", level = 15, minLevel = 10, map = 1432, x = 23.5, y = 74.5, giver = "Mountaineer Wallbang", faction = "Alliance", pre = { 237 }, turnin = { 1432, 23.5, 74.5 } }
Q[264] = { name = "Until Death Do Us Part", level = 15, minLevel = 12, map = 1456, x = 27.2, y = 24.4, giver = "Clarice Foster", faction = "Horde", turnin = { 1421, 44.2, 42.7 } }
Q[265] = { name = "The Shadowy Search Continues", level = 25, minLevel = 20, map = 1431, x = 75.8, y = 45.3, giver = "Madame Eva", faction = "Alliance", pre = { 262 }, turnin = { 1431, 72.5, 46.9 } }
Q[266] = { name = "Inquire at the Inn", level = 25, minLevel = 20, map = 1431, x = 72.5, y = 46.9, giver = "Clerk Daltry", faction = "Alliance", pre = { 265 }, turnin = { 1431, 73.8, 44.5 } }
Q[267] = { name = "The Trogg Threat", level = 12, minLevel = 10, map = 1432, x = 23.2, y = 73.7, giver = "Captain Rugelfuss", faction = "Alliance", turnin = { 1432, 23.2, 73.7 } }
Q[268] = { name = "Return to Sven", level = 25, minLevel = 20, map = 1431, x = 18.4, y = 56.4, giver = "Jitters", faction = "Alliance", pre = { 453 }, turnin = { 1431, 7.8, 34.1 } }
Q[269] = { name = "Seeking Wisdom", level = 29, minLevel = 20, map = 1431, x = 7.8, y = 34.1, giver = "Sven Yorgen", faction = "Alliance", pre = { 323 }, turnin = { 1453, 49.9, 46.0 } }
Q[270] = { name = "The Doomed Fleet", level = 29, minLevel = 20, map = 1453, x = 49.9, y = 46.0, giver = "Bishop Farthing", faction = "Alliance", pre = { 269 }, turnin = { 1437, 10.6, 60.6 } }
Q[271] = { name = "Vyrin's Revenge", level = 20, minLevel = 15, map = 1432, x = 81.7, y = 64.1, giver = "Vyrin Swiftwind", faction = "Alliance", pre = { 258 }, group = true, turnin = { 1432, 83.5, 65.5 } }
Q[272] = { name = "Trial of the Sea Lion", level = 16, minLevel = 16, map = 1450, x = 36.5, y = 40.1, giver = "Tajarri", faction = "Alliance", pre = { 29 }, race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[273] = { name = "Resupplying the Excavation", level = 15, minLevel = 10, map = 1432, x = 37.2, y = 47.4, giver = "Jern Hornhelm", faction = "Alliance", pre = { 302 }, turnin = { 1432, 52.2, 69.3 } }
Q[274] = { name = "A Dark Threat Looms", level = 18, minLevel = 16, map = 1437, x = 50.0, y = 18.2, giver = "Ashlan Stonesmirk", faction = "Alliance", pre = { 161 }, turnin = { 1432, 46.0, 13.6 } }
Q[275] = { name = "Blisters on The Land", level = 26, minLevel = 20, map = 1437, x = 56.4, y = 40.4, giver = "Rethiel the Greenwarden", faction = "Alliance", pre = { 277 }, turnin = { 1437, 56.4, 40.4 } }
Q[276] = { name = "Tramping Paws", level = 21, minLevel = 20, map = 1437, x = 56.4, y = 40.4, giver = "Rethiel the Greenwarden", faction = "Alliance", turnin = { 1437, 56.4, 40.4 } }
Q[277] = { name = "Fire Taboo", level = 23, minLevel = 20, map = 1437, x = 56.4, y = 40.4, giver = "Rethiel the Greenwarden", faction = "Alliance", pre = { 276 }, turnin = { 1437, 56.4, 40.4 } }
Q[278] = { name = "A Dark Threat Looms", level = 18, minLevel = 16, map = 1432, x = 46.0, y = 13.6, giver = "Chief Engineer Hinderweir VII", faction = "Alliance", pre = { 274 }, group = true, turnin = { 1432, 46.0, 13.6 } }
Q[279] = { name = "Claws from the Deep", level = 22, minLevel = 20, map = 1437, x = 8.3, y = 58.6, giver = "Karl Boran", faction = "Alliance", turnin = { 1437, 8.3, 58.6 } }
Q[280] = { name = "A Dark Threat Looms", level = 18, minLevel = 16, map = 1432, x = 46.0, y = 13.6, giver = "Chief Engineer Hinderweir VII", faction = "Alliance", pre = { 278 }, turnin = { 1432, 50.6, 14.3 } }
Q[281] = { name = "Reclaiming Goods", level = 25, minLevel = 20, map = 1437, x = 8.3, y = 58.6, giver = "Karl Boran", faction = "Alliance", pre = { 279 }, turnin = { 1437, 13.5, 41.4 } }
Q[282] = { name = "Senir's Observations", level = 5, minLevel = 1, map = 1426, x = 25.1, y = 75.7, giver = "Grelin Whitebeard", faction = "Alliance", pre = { 218 }, turnin = { 1426, 33.5, 71.8 } }
Q[283] = { name = "A Dark Threat Looms", level = 20, minLevel = 16, map = 1432, x = 50.6, y = 14.3, giver = "Explosive Charge", faction = "Alliance", pre = { 280 }, turnin = { 1432, 46.0, 13.6 } }
Q[284] = { name = "The Search Continues", level = 25, minLevel = 20, map = 1437, x = 13.5, y = 41.4, giver = "Damaged Crate", faction = "Alliance", pre = { 281 }, turnin = { 1437, 13.6, 38.2 } }
Q[285] = { name = "Search More Hovels", level = 25, minLevel = 20, map = 1437, x = 13.6, y = 38.2, giver = "Sealed Barrel", faction = "Alliance", pre = { 284 }, turnin = { 1437, 13.9, 34.8 } }
Q[286] = { name = "Return the Statuette", level = 25, minLevel = 20, map = 1437, x = 13.9, y = 34.8, giver = "Half-buried Barrel", faction = "Alliance", pre = { 285 }, turnin = { 1437, 8.3, 58.6 } }
Q[287] = { name = "Frostmane Hold", level = 9, minLevel = 7, map = 1426, x = 46.7, y = 53.8, giver = "Senir Whitebeard", faction = "Alliance", turnin = { 1426, 46.7, 53.8 } }
Q[288] = { name = "The Third Fleet", level = 27, minLevel = 22, map = 1437, x = 10.9, y = 59.6, giver = "First Mate Fitzsimmons", faction = "Alliance", turnin = { 1437, 10.9, 59.6 } }
Q[289] = { name = "The Cursed Crew", level = 29, minLevel = 22, map = 1437, x = 10.9, y = 59.6, giver = "First Mate Fitzsimmons", faction = "Alliance", pre = { 288 }, turnin = { 1437, 10.9, 59.6 } }
Q[290] = { name = "Lifting the Curse", level = 30, minLevel = 22, map = 1437, x = 10.9, y = 59.6, giver = "First Mate Fitzsimmons", faction = "Alliance", pre = { 289 }, turnin = { 1437, 14.4, 24.0 } }
Q[291] = { name = "The Reports", level = 10, minLevel = 1, map = 1426, x = 46.7, y = 53.8, giver = "Senir Whitebeard", faction = "Alliance", pre = { 287 }, turnin = { 1455, 39.5, 57.5 } }
Q[292] = { name = "The Eye of Paleth", level = 30, minLevel = 22, map = 1437, x = 14.4, y = 24.0, giver = "Intrepid's Locked Strongbox", faction = "Alliance", pre = { 290 }, turnin = { 1437, 10.6, 60.6 } }
Q[293] = { name = "Cleansing the Eye", level = 30, minLevel = 22, map = 1437, x = 10.6, y = 60.6, giver = "Glorin Steelbrow", faction = "Alliance", pre = { 292 }, turnin = { 1453, 50.3, 45.5 } }
Q[294] = { name = "Ormer's Revenge", level = 24, minLevel = 22, map = 1437, x = 38.2, y = 50.9, giver = "Ormer Ironbraid", faction = "Alliance", turnin = { 1437, 38.2, 50.9 } }
Q[295] = { name = "Ormer's Revenge", level = 27, minLevel = 22, map = 1437, x = 38.2, y = 50.9, giver = "Ormer Ironbraid", faction = "Alliance", pre = { 294 }, turnin = { 1437, 38.2, 50.9 } }
Q[296] = { name = "Ormer's Revenge", level = 29, minLevel = 22, map = 1437, x = 38.2, y = 50.9, giver = "Ormer Ironbraid", faction = "Alliance", pre = { 295 }, turnin = { 1437, 38.2, 50.9 } }
Q[297] = { name = "Gathering Idols", level = 18, minLevel = 13, map = 1432, x = 64.9, y = 66.7, giver = "Magmar Fellhew", faction = "Alliance", turnin = { 1432, 64.9, 66.7 } }
Q[298] = { name = "Excavation Progress Report", level = 15, minLevel = 10, map = 1432, x = 65.9, y = 65.6, giver = "Prospector Ironband", faction = "Alliance", turnin = { 1432, 37.2, 47.4 } }
Q[299] = { name = "Uncovering the Past", level = 27, minLevel = 22, map = 1437, x = 38.8, y = 52.4, giver = "Prospector Whelgar", faction = "Alliance", turnin = { 1437, 38.8, 52.4 } }
Q[301] = { name = "Report to Ironforge", level = 15, minLevel = 10, map = 1432, x = 37.2, y = 47.4, giver = "Jern Hornhelm", faction = "Alliance", pre = { 298 }, turnin = { 1455, 74.6, 11.7 } }
Q[302] = { name = "Powder to Ironband", level = 15, minLevel = 10, map = 1455, x = 74.6, y = 11.7, giver = "Prospector Stormpike", faction = "Alliance", pre = { 301 }, turnin = { 1432, 37.2, 47.4 } }
Q[303] = { name = "The Dark Iron War", level = 30, minLevel = 25, map = 1437, x = 49.7, y = 18.2, giver = "Motley Garmason", faction = "Alliance", group = true, turnin = { 1437, 49.7, 18.2 } }
Q[304] = { name = "A Grim Task", level = 34, minLevel = 26, map = 1437, x = 49.8, y = 18.3, giver = "Longbraid the Grim", faction = "Alliance", group = true, turnin = { 1437, 49.8, 18.3 } }
Q[305] = { name = "In Search of The Excavation Team", level = 24, minLevel = 21, map = 1437, x = 11.5, y = 52.2, giver = "Tarrel Rockweaver", faction = "Alliance", turnin = { 1437, 38.9, 52.3 } }
Q[306] = { name = "In Search of The Excavation Team", level = 24, minLevel = 21, map = 1437, x = 38.9, y = 52.3, giver = "Merrin Rockweaver", faction = "Alliance", pre = { 305 }, turnin = { 1437, 11.5, 52.2 } }
Q[307] = { name = "Filthy Paws", level = 15, minLevel = 9, map = 1432, x = 24.8, y = 18.4, giver = "Mountaineer Stormpike", faction = "Alliance", turnin = { 1432, 24.8, 18.4 } }
Q[309] = { name = "Protecting the Shipment", level = 15, minLevel = 10, map = 1432, x = 52.2, y = 69.4, giver = "Miran", faction = "Alliance", pre = { 454 }, turnin = { 1432, 65.9, 65.6 } }
Q[310] = { name = "Bitter Rivals", level = 6, minLevel = 2, map = 1426, x = 30.2, y = 45.5, giver = "Marleth Barleybrew", faction = "Alliance", turnin = { 1426, 47.7, 52.7 } }
Q[311] = { name = "Return to Marleth", level = 7, minLevel = 2, map = 1426, x = 47.7, y = 52.7, giver = "Unguarded Thunder Ale Barrel", faction = "Alliance", pre = { 310 }, turnin = { 1426, 30.2, 45.5 } }
Q[312] = { name = "Tundra MacGrann's Stolen Stash", level = 12, minLevel = 7, map = 1426, x = 34.6, y = 51.6, giver = "Tundra MacGrann", faction = "Alliance", turnin = { 1426, 34.6, 51.6 } }
Q[313] = { name = "The Grizzled Den", level = 7, minLevel = 4, map = 1426, x = 49.6, y = 48.6, giver = "Pilot Stonegear", faction = "Alliance", group = true, turnin = { 1426, 49.6, 48.6 } }
Q[314] = { name = "Protecting the Herd", level = 12, minLevel = 6, map = 1426, x = 63.1, y = 49.9, giver = "Rudra Amberstill", faction = "Alliance", group = true, turnin = { 1426, 63.1, 49.9 } }
Q[315] = { name = "The Perfect Stout", level = 9, minLevel = 5, map = 1426, x = 30.2, y = 45.7, giver = "Rejold Barleybrew", faction = "Alliance", turnin = { 1426, 30.2, 45.7 } }
Q[317] = { name = "Stocking Jetsteam", level = 6, minLevel = 2, map = 1426, x = 49.4, y = 48.4, giver = "Pilot Bellowfiz", faction = "Alliance", turnin = { 1426, 49.4, 48.4 } }
Q[318] = { name = "Evershine", level = 7, minLevel = 2, map = 1426, x = 49.4, y = 48.4, giver = "Pilot Bellowfiz", faction = "Alliance", pre = { 317 }, turnin = { 1426, 30.2, 45.7 } }
Q[319] = { name = "A Favor for Evershine", level = 8, minLevel = 2, map = 1426, x = 30.2, y = 45.7, giver = "Rejold Barleybrew", faction = "Alliance", pre = { 318 }, turnin = { 1426, 30.2, 45.7 } }
Q[320] = { name = "Return to Bellowfiz", level = 8, minLevel = 2, map = 1426, x = 30.2, y = 45.7, giver = "Rejold Barleybrew", faction = "Alliance", pre = { 319 }, turnin = { 1426, 49.4, 48.4 } }
Q[321] = { name = "Lightforge Iron", level = 29, minLevel = 20, map = 1437, x = 10.6, y = 60.6, giver = "Glorin Steelbrow", faction = "Alliance", pre = { 270 }, turnin = { 1437, 12.1, 64.2 } }
Q[322] = { name = "Blessed Arm", level = 29, minLevel = 20, map = 1437, x = 10.6, y = 60.6, giver = "Glorin Steelbrow", faction = "Alliance", pre = { 324 }, turnin = { 1453, 59.7, 33.8 } }
Q[323] = { name = "Proving Your Worth", level = 28, minLevel = 20, map = 1431, x = 7.8, y = 34.1, giver = "Sven Yorgen", faction = "Alliance", pre = { 268 }, turnin = { 1431, 7.8, 34.1 } }
Q[324] = { name = "The Lost Ingots", level = 29, minLevel = 20, map = 1437, x = 12.1, y = 64.2, giver = "Waterlogged Chest", faction = "Alliance", pre = { 321 }, turnin = { 1437, 10.6, 60.6 } }
Q[325] = { name = "Armed and Ready", level = 29, minLevel = 20, map = 1453, x = 59.7, y = 33.8, giver = "Grimand Elmore", faction = "Alliance", pre = { 322 }, turnin = { 1431, 7.8, 34.1 } }
Q[328] = { name = "The Hidden Key", level = 37, minLevel = 30, map = 1434, x = 43.7, y = 9.4, giver = "Bookie Herod's Records", faction = "Alliance", pre = { 200 }, turnin = { 1434, 49.6, 7.6 } }
Q[329] = { name = "The Spy Revealed!", level = 37, minLevel = 30, map = 1434, x = 49.6, y = 7.6, giver = "Bookie Herod's Strongbox", faction = "Alliance", pre = { 328 }, turnin = { 1434, 38.0, 3.0 } }
Q[330] = { name = "Patrol Schedules", level = 37, minLevel = 30, map = 1434, x = 38.0, y = 3.0, giver = "Lieutenant Doren", faction = "Alliance", pre = { 329 }, turnin = { 1434, 37.7, 3.4 } }
Q[331] = { name = "Report to Doren", level = 37, minLevel = 30, map = 1434, x = 37.7, y = 3.4, giver = "Corporal Sethman", faction = "Alliance", pre = { 330 }, turnin = { 1434, 38.0, 3.0 } }
Q[332] = { name = "Wine Shop Advert", level = 2, minLevel = 1, map = 1453, x = 63.8, y = 73.6, giver = "Renato Gallina", faction = "Alliance", turnin = { 1453, 60.3, 76.8 } }
Q[333] = { name = "Harlan Needs a Resupply", level = 2, minLevel = 1, map = 1453, x = 62.3, y = 68.0, giver = "Harlan Bagley", faction = "Alliance", turnin = { 1453, 58.1, 67.5 } }
Q[334] = { name = "Package for Thurman", level = 2, minLevel = 1, map = 1453, x = 58.1, y = 67.5, giver = "Rema Schneider", faction = "Alliance", turnin = { 1453, 52.6, 83.4 } }
Q[335] = { name = "A Noble Brew", level = 30, minLevel = 25, map = 1453, x = 40.1, y = 85.3, giver = "Zardeth of the Black Claw", faction = "Alliance", turnin = { 1453, 40.1, 85.3 } }
Q[336] = { name = "A Noble Brew", level = 30, minLevel = 25, map = 1453, x = 40.1, y = 85.3, giver = "Zardeth of the Black Claw", faction = "Alliance", pre = { 335 }, turnin = { 1453, 77.9, 49.0 } }
Q[337] = { name = "An Old History Book", level = 25, minLevel = 20, map = 1431, x = 16.4, y = 34.1, giver = "Drop: An Old History Book", faction = "Alliance", turnin = { 1453, 77.1, 30.2 } }
Q[338] = { name = "The Green Hills of Stranglethorn", level = 40, minLevel = 30, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", pre = { 583 }, turnin = { 1434, 35.7, 10.5 } }
Q[339] = { name = "Chapter I", level = 40, minLevel = 30, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", group = true, turnin = { 1434, 35.7, 10.5 } }
Q[340] = { name = "Chapter II", level = 40, minLevel = 30, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", group = true, turnin = { 1434, 35.7, 10.5 } }
Q[341] = { name = "Chapter III", level = 40, minLevel = 30, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", group = true, turnin = { 1434, 35.7, 10.5 } }
Q[342] = { name = "Chapter IV", level = 40, minLevel = 30, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", group = true, turnin = { 1434, 35.7, 10.5 } }
Q[343] = { name = "Speaking of Fortitude", level = 24, minLevel = 20, map = 1453, x = 55.0, y = 54.2, giver = "Brother Kristoff", faction = "Alliance", turnin = { 1453, 77.1, 30.2 } }
Q[344] = { name = "Brother Paxton", level = 24, minLevel = 20, map = 1453, x = 77.1, y = 30.2, giver = "Milton Sheaf", faction = "Alliance", pre = { 343 }, turnin = { 1429, 49.6, 40.4 } }
Q[345] = { name = "Ink Supplies", level = 24, minLevel = 20, map = 1429, x = 49.6, y = 40.4, giver = "Brother Paxton", faction = "Alliance", pre = { 344 }, turnin = { 1433, 27.1, 48.6 } }
Q[346] = { name = "Return to Kristoff", level = 24, minLevel = 20, map = 1429, x = 49.6, y = 40.4, giver = "Brother Paxton", faction = "Alliance", pre = { 347 }, turnin = { 1453, 55.0, 54.2 } }
Q[347] = { name = "Rethban Ore", level = 24, minLevel = 20, map = 1433, x = 27.1, y = 48.6, giver = "Foreman Oslow", faction = "Alliance", pre = { 345 }, turnin = { 1429, 49.6, 40.4 } }
Q[348] = { name = "Stranglethorn Fever", level = 45, minLevel = 40, map = 1434, x = 27.6, y = 76.7, giver = "Fin Fizracket", turnin = { 1434, 27.6, 76.7 } }
Q[351] = { name = "Find OOX-17/TN!", level = 48, minLevel = 43, map = 1446, x = 74.0, y = 46.6, giver = "Drop: OOX-17/TN Distress Beacon", turnin = { 1446, 60.2, 64.7 } }
Q[353] = { name = "Stormpike's Delivery", level = 15, minLevel = 9, map = 1453, x = 59.7, y = 33.8, giver = "Grimand Elmore", faction = "Alliance", turnin = { 1432, 24.8, 18.4 } }
Q[354] = { name = "Deaths in the Family", level = 11, minLevel = 7, map = 1420, x = 61.7, y = 52.3, giver = "Coleman Farthing", faction = "Horde", turnin = { 1420, 61.7, 52.3 } }
Q[355] = { name = "Speak with Sevren", level = 10, minLevel = 7, map = 1420, x = 61.7, y = 52.3, giver = "Coleman Farthing", faction = "Horde", pre = { 354, 362 }, turnin = { 1420, 61.3, 50.8 } }
Q[356] = { name = "Rear Guard Patrol", level = 11, minLevel = 6, map = 1420, x = 65.5, y = 60.2, giver = "Deathguard Linnea", faction = "Horde", turnin = { 1420, 65.5, 60.2 } }
Q[357] = { name = "The Lich's Identity", level = 8, minLevel = 5, map = 1458, x = 84.1, y = 17.4, giver = "Bethor Iceshard", faction = "Horde", pre = { 405 }, turnin = { 1458, 84.1, 17.4 } }
Q[358] = { name = "Graverobbers", level = 8, minLevel = 4, map = 1420, x = 61.3, y = 50.8, giver = "Magistrate Sevren", faction = "Horde", turnin = { 1420, 61.3, 50.8 } }
Q[359] = { name = "Forsaken Duties", level = 9, minLevel = 6, map = 1420, x = 61.3, y = 50.8, giver = "Magistrate Sevren", faction = "Horde", pre = { 358 }, turnin = { 1420, 65.5, 60.2 } }
Q[360] = { name = "Return to the Magistrate", level = 9, minLevel = 6, map = 1420, x = 65.5, y = 60.2, giver = "Deathguard Linnea", faction = "Horde", pre = { 359 }, turnin = { 1420, 61.3, 50.8 } }
Q[361] = { name = "A Letter Undelivered", level = 7, minLevel = 4, map = 1420, x = 9.2, y = 61.8, giver = "Drop: A Letter to Yvette", faction = "Horde", turnin = { 1420, 61.6, 52.6 } }
Q[362] = { name = "The Haunted Mills", level = 10, minLevel = 7, map = 1420, x = 61.7, y = 52.3, giver = "Coleman Farthing", faction = "Horde", turnin = { 1420, 61.7, 52.3 } }
Q[363] = { name = "Rude Awakening", level = 1, minLevel = 1, map = 1420, x = 30.2, y = 71.7, giver = "Undertaker Mordo", faction = "Horde", race = { SCOURGE = true }, turnin = { 1420, 30.8, 66.2 } }
Q[364] = { name = "The Mindless Ones", level = 2, minLevel = 1, map = 1420, x = 30.8, y = 66.2, giver = "Shadow Priest Sarvis", faction = "Horde", turnin = { 1420, 30.8, 66.2 } }
Q[365] = { name = "Fields of Grief", level = 7, minLevel = 4, map = 1420, x = 40.9, y = 54.2, giver = "Deathguard Simmer", faction = "Horde", turnin = { 1420, 59.5, 52.4 } }
Q[366] = { name = "Return the Book", level = 8, minLevel = 5, map = 1458, x = 84.1, y = 17.4, giver = "Bethor Iceshard", faction = "Horde", pre = { 357 }, turnin = { 1420, 68.2, 41.9 } }
Q[367] = { name = "A New Plague", level = 6, minLevel = 6, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", faction = "Horde", turnin = { 1420, 59.5, 52.4 } }
Q[368] = { name = "A New Plague", level = 9, minLevel = 6, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", faction = "Horde", pre = { 367 }, turnin = { 1420, 59.5, 52.4 } }
Q[369] = { name = "A New Plague", level = 11, minLevel = 6, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", faction = "Horde", pre = { 368 }, turnin = { 1420, 59.5, 52.4 } }
Q[370] = { name = "At War With The Scarlet Crusade", level = 9, minLevel = 5, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", faction = "Horde", pre = { 427 }, turnin = { 1420, 60.6, 51.8 } }
Q[371] = { name = "At War With The Scarlet Crusade", level = 10, minLevel = 5, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", faction = "Horde", pre = { 370 }, turnin = { 1420, 60.6, 51.8 } }
Q[372] = { name = "At War With The Scarlet Crusade", level = 12, minLevel = 5, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", faction = "Horde", pre = { 371 }, turnin = { 1420, 60.6, 51.8 } }
Q[374] = { name = "Proof of Demise", level = 7, minLevel = 5, map = 1420, x = 60.9, y = 52.0, giver = "Deathguard Burgess", faction = "Horde", pre = { 427 }, turnin = { 1420, 60.9, 52.0 } }
Q[375] = { name = "The Chill of Death", level = 8, minLevel = 7, map = 1420, x = 61.9, y = 52.7, giver = "Gretchen Dedmar", faction = "Horde", turnin = { 1420, 61.9, 52.7 } }
Q[376] = { name = "The Damned", level = 2, minLevel = 2, map = 1420, x = 30.9, y = 66.0, giver = "Novice Elreth", faction = "Horde", turnin = { 1420, 30.9, 66.0 } }
Q[377] = { name = "Crime and Punishment", level = 26, minLevel = 22, map = 1431, x = 71.9, y = 47.8, giver = "Councilman Millstipe", faction = "Alliance", dungeon = "The Stockade", turnin = { 1431, 71.9, 47.8 } }
Q[378] = { name = "The Fury Runs Deep", level = 27, minLevel = 22, map = 1437, x = 49.7, y = 18.2, giver = "Motley Garmason", faction = "Alliance", pre = { 303 }, dungeon = "The Stockade", turnin = { 1437, 49.7, 18.2 } }
Q[379] = { name = "Slake That Thirst", level = 46, minLevel = 38, map = 1446, x = 52.5, y = 28.5, giver = "Chief Engineer Bilgewhizzle", faction = "Horde", pre = { 243 }, turnin = { 1446, 52.5, 28.5 } }
Q[380] = { name = "Night Web's Hollow", level = 4, minLevel = 2, map = 1420, x = 32.1, y = 66.0, giver = "Executor Arren", faction = "Horde", pre = { 376 }, turnin = { 1420, 32.1, 66.0 } }
Q[381] = { name = "The Scarlet Crusade", level = 4, minLevel = 2, map = 1420, x = 32.1, y = 66.0, giver = "Executor Arren", faction = "Horde", pre = { 380 }, turnin = { 1420, 32.1, 66.0 } }
Q[382] = { name = "The Red Messenger", level = 5, minLevel = 2, map = 1420, x = 32.1, y = 66.0, giver = "Executor Arren", faction = "Horde", pre = { 381 }, turnin = { 1420, 32.1, 66.0 } }
Q[383] = { name = "Vital Intelligence", level = 5, minLevel = 2, map = 1420, x = 32.1, y = 66.0, giver = "Executor Arren", faction = "Horde", pre = { 382 }, turnin = { 1420, 60.6, 51.8 } }
Q[385] = { name = "Crocolisk Hunting", level = 15, minLevel = 10, map = 1432, x = 81.8, y = 61.7, giver = "Marek Ironheart", faction = "Alliance", group = true, turnin = { 1432, 81.8, 61.7 } }
Q[386] = { name = "What Comes Around...", level = 25, minLevel = 22, map = 1433, x = 21.2, y = 46.6, giver = "Guard Berton", faction = "Alliance", dungeon = "The Stockade", turnin = { 1433, 21.2, 46.6 } }
Q[387] = { name = "Quell The Uprising", level = 26, minLevel = 22, map = 1453, x = 51.5, y = 69.4, giver = "Warden Thelwater", faction = "Alliance", dungeon = "The Stockade", turnin = { 1453, 51.5, 69.4 } }
Q[388] = { name = "The Color of Blood", level = 26, minLevel = 22, map = 1453, x = 76.4, y = 63.7, giver = "Nikova Raskol", faction = "Alliance", dungeon = "The Stockade", turnin = { 1453, 76.4, 63.7 } }
Q[389] = { name = "Bazil Thredd", level = 22, minLevel = 16, map = 1453, x = 57.7, y = 47.9, giver = "Baros Alexston", faction = "Alliance", pre = { 373 }, turnin = { 1453, 51.5, 69.4 } }
Q[397] = { name = "You Have Served Us Well", level = 30, minLevel = 25, map = 1453, x = 40.1, y = 85.3, giver = "Zardeth of the Black Claw", faction = "Alliance", pre = { 336 }, race = { HUMAN = true, GNOME = true }, class = { WARLOCK = true }, turnin = { 1453, 40.2, 85.3 } }
Q[398] = { name = "Wanted: Maggot Eye", level = 10, minLevel = 6, map = 1420, x = 60.7, y = 51.5, giver = "Wanted!", faction = "Horde", turnin = { 1420, 60.6, 51.8 } }
Q[399] = { name = "Humble Beginnings", level = 15, minLevel = 10, map = 1453, x = 57.7, y = 47.9, giver = "Baros Alexston", faction = "Alliance", turnin = { 1453, 57.7, 47.9 } }
Q[400] = { name = "Tools for Steelgrill", level = 5, minLevel = 2, map = 1426, x = 46.0, y = 51.7, giver = "Tharek Blackstone", faction = "Alliance", turnin = { 1426, 50.4, 49.1 } }
Q[401] = { name = "Wait for Sirra to Finish", level = 30, minLevel = 20, map = 1431, x = 72.6, y = 47.6, giver = "Sirra Von'Indi", faction = "Alliance", pre = { 251 }, turnin = { 1431, 72.6, 47.6 } }
Q[404] = { name = "A Putrid Task", level = 6, minLevel = 4, map = 1420, x = 58.2, y = 51.5, giver = "Deathguard Dillinger", faction = "Horde", turnin = { 1420, 58.2, 51.5 } }
Q[405] = { name = "The Prodigal Lich", level = 8, minLevel = 5, map = 1420, x = 61.3, y = 50.8, giver = "Magistrate Sevren", faction = "Horde", pre = { 358 }, turnin = { 1458, 84.1, 17.4 } }
Q[407] = { name = "Fields of Grief", level = 7, minLevel = 4, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", faction = "Horde", pre = { 365 }, turnin = { 1420, 62.0, 51.3 } }
Q[408] = { name = "The Family Crypt", level = 13, minLevel = 7, map = 1420, x = 61.3, y = 50.8, giver = "Magistrate Sevren", faction = "Horde", pre = { 355 }, turnin = { 1420, 61.3, 50.8 } }
Q[409] = { name = "Proving Allegiance", level = 12, minLevel = 5, map = 1420, x = 68.2, y = 41.9, giver = "Gunther Arcanus", faction = "Horde", pre = { 366 }, turnin = { 1420, 68.2, 41.9 } }
Q[411] = { name = "The Prodigal Lich Returns", level = 12, minLevel = 5, map = 1420, x = 68.2, y = 41.9, giver = "Gunther Arcanus", faction = "Horde", pre = { 409 }, turnin = { 1458, 84.1, 17.4 } }
Q[412] = { name = "Operation Recombobulation", level = 10, minLevel = 7, map = 1426, x = 45.9, y = 49.4, giver = "Razzle Sprysprocket", faction = "Alliance", turnin = { 1426, 45.9, 49.4 } }
Q[413] = { name = "Shimmer Stout", level = 10, minLevel = 8, map = 1426, x = 30.2, y = 45.7, giver = "Rejold Barleybrew", faction = "Alliance", pre = { 315 }, turnin = { 1426, 86.3, 48.8 } }
Q[414] = { name = "Stout to Kadrell", level = 10, minLevel = 8, map = 1426, x = 86.3, y = 48.8, giver = "Mountaineer Barleybrew", faction = "Alliance", pre = { 413 }, turnin = { 1432, 32.6, 49.7 } }
Q[415] = { name = "Rejold's New Brew", level = 10, minLevel = 8, map = 1426, x = 49.4, y = 48.4, giver = "Pilot Bellowfiz", faction = "Alliance", pre = { 315 }, turnin = { 1426, 30.2, 45.7 } }
Q[416] = { name = "Rat Catching", level = 11, minLevel = 10, map = 1432, x = 32.6, y = 49.7, giver = "Mountaineer Kadrell", faction = "Alliance", turnin = { 1432, 32.6, 49.7 } }
Q[417] = { name = "A Pilot's Revenge", level = 11, minLevel = 8, map = 1426, x = 79.7, y = 36.2, giver = "A Dwarven Corpse", faction = "Alliance", pre = { 419 }, turnin = { 1426, 83.9, 39.2 } }
Q[418] = { name = "Thelsamar Blood Sausages", level = 11, minLevel = 7, map = 1432, x = 34.8, y = 49.3, giver = "Vidra Hearthstove", faction = "Alliance", group = true, turnin = { 1432, 34.8, 49.3 } }
Q[419] = { name = "The Lost Pilot", level = 10, minLevel = 8, map = 1426, x = 83.9, y = 39.2, giver = "Pilot Hammerfoot", faction = "Alliance", turnin = { 1426, 79.7, 36.2 } }
Q[420] = { name = "Senir's Observations", level = 5, minLevel = 1, map = 1426, x = 33.5, y = 71.8, giver = "Mountaineer Thalos", faction = "Alliance", pre = { 282 }, turnin = { 1426, 46.7, 53.8 } }
Q[421] = { name = "Prove Your Worth", level = 10, minLevel = 12, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", faction = "Horde", turnin = { 1421, 44.2, 39.8 } }
Q[422] = { name = "Arugal's Folly", level = 11, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", faction = "Horde", pre = { 421 }, turnin = { 1421, 44.2, 39.8 } }
Q[423] = { name = "Arugal's Folly", level = 14, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", faction = "Horde", pre = { 422 }, turnin = { 1421, 44.2, 39.8 } }
Q[424] = { name = "Arugal's Folly", level = 15, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", faction = "Horde", pre = { 423 }, turnin = { 1421, 44.2, 39.8 } }
Q[425] = { name = "Ivar the Foul", level = 12, minLevel = 10, map = 1421, x = 53.5, y = 13.4, giver = "Rane Yorick", faction = "Horde", pre = { 430 }, turnin = { 1421, 53.5, 13.4 } }
Q[426] = { name = "The Mills Overrun", level = 8, minLevel = 6, map = 1420, x = 58.2, y = 51.5, giver = "Deathguard Dillinger", faction = "Horde", pre = { 404 }, turnin = { 1420, 58.2, 51.5 } }
Q[427] = { name = "At War With The Scarlet Crusade", level = 8, minLevel = 5, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", faction = "Horde", turnin = { 1420, 60.6, 51.8 } }
Q[428] = { name = "Lost Deathstalkers", level = 12, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", faction = "Horde", turnin = { 1421, 53.5, 13.4 } }
Q[429] = { name = "Wild Hearts", level = 11, minLevel = 10, map = 1421, x = 53.5, y = 13.4, giver = "Rane Yorick", faction = "Horde", turnin = { 1421, 42.8, 40.9 } }
Q[430] = { name = "Return to Quinn", level = 11, minLevel = 10, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", faction = "Horde", pre = { 429 }, turnin = { 1421, 53.4, 12.6 } }
Q[432] = { name = "Those Blasted Troggs!", level = 9, minLevel = 5, map = 1426, x = 69.1, y = 56.3, giver = "Foreman Stonebrow", faction = "Alliance", turnin = { 1426, 69.1, 56.3 } }
Q[433] = { name = "The Public Servant", level = 11, minLevel = 6, map = 1426, x = 68.7, y = 56.0, giver = "Senator Mehr Stonehallow", faction = "Alliance", turnin = { 1426, 68.7, 56.0 } }
Q[435] = { name = "Escorting Erland", level = 11, minLevel = 10, map = 1421, x = 56.2, y = 9.2, giver = "Deathstalker Erland", faction = "Horde", turnin = { 1421, 53.5, 13.4 } }
Q[436] = { name = "Ironband's Excavation", level = 18, minLevel = 13, map = 1432, x = 37.2, y = 47.4, giver = "Jern Hornhelm", faction = "Alliance", turnin = { 1432, 64.9, 66.7 } }
Q[437] = { name = "The Dead Fields", level = 14, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", faction = "Horde", turnin = { 1421, 43.4, 40.9 } }
Q[438] = { name = "The Decrepit Ferry", level = 16, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", faction = "Horde", pre = { 437 }, turnin = { 1421, 58.4, 34.9 } }
Q[439] = { name = "Rot Hide Clues", level = 16, minLevel = 10, map = 1421, x = 58.4, y = 34.9, giver = "Corpse Laden Boat", faction = "Horde", pre = { 438 }, turnin = { 1421, 43.4, 40.9 } }
Q[440] = { name = "The Engraved Ring", level = 16, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", faction = "Horde", pre = { 439 }, turnin = { 1420, 61.3, 50.8 } }
Q[441] = { name = "Raleigh and the Undercity", level = 16, minLevel = 10, map = 1420, x = 61.3, y = 50.8, giver = "Magistrate Sevren", faction = "Horde", pre = { 440 }, turnin = { 1458, 62.0, 42.8 } }
Q[443] = { name = "Rot Hide Ichor", level = 17, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", faction = "Horde", pre = { 439 }, turnin = { 1421, 42.8, 40.9 } }
Q[444] = { name = "Rot Hide Origins", level = 17, minLevel = 10, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", faction = "Horde", pre = { 443 }, turnin = { 1458, 84.1, 17.4 } }
Q[445] = { name = "Delivery to Silverpine Forest", level = 10, minLevel = 9, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", faction = "Horde", turnin = { 1421, 42.8, 40.9 } }
Q[446] = { name = "Thule Ravenclaw", level = 16, minLevel = 10, map = 1458, x = 84.1, y = 17.4, giver = "Bethor Iceshard", faction = "Horde", pre = { 444 }, turnin = { 1421, 42.8, 40.9 } }
Q[447] = { name = "A Recipe For Death", level = 12, minLevel = 9, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", faction = "Horde", turnin = { 1458, 48.8, 69.3 } }
Q[448] = { name = "Report to Hadrec", level = 16, minLevel = 10, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", faction = "Horde", pre = { 446 }, turnin = { 1421, 43.4, 40.9 } }
Q[449] = { name = "The Deathstalkers' Report", level = 11, minLevel = 10, map = 1421, x = 53.5, y = 13.4, giver = "Rane Yorick", faction = "Horde", pre = { 435 }, turnin = { 1421, 43.4, 40.9 } }
Q[450] = { name = "A Recipe For Death", level = 15, minLevel = 9, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", faction = "Horde", pre = { 447 }, turnin = { 1421, 42.8, 40.9 } }
Q[451] = { name = "A Recipe For Death", level = 18, minLevel = 9, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", faction = "Horde", pre = { 450 }, turnin = { 1458, 48.8, 69.3 } }
Q[452] = { name = "Pyrewood Ambush", level = 15, minLevel = 12, map = 1421, x = 46.5, y = 74.4, giver = "Deathstalker Faerleia", faction = "Horde", group = true, turnin = { 1421, 46.5, 74.4 } }
Q[453] = { name = "Finding the Shadowy Figure", level = 25, minLevel = 20, map = 1431, x = 73.8, y = 44.5, giver = "Tavernkeep Smitts", faction = "Alliance", pre = { 266 }, turnin = { 1431, 18.4, 56.4 } }
Q[454] = { name = "After the Ambush", level = 15, minLevel = 10, map = 1432, x = 52.2, y = 69.3, giver = "Huldar", faction = "Alliance", pre = { 273 }, turnin = { 1432, 52.2, 69.4 } }
Q[455] = { name = "The Algaz Gauntlet", level = 21, minLevel = 19, map = 1432, x = 25.4, y = 10.4, giver = "Mountaineer Rockgar", faction = "Alliance", turnin = { 1437, 10.1, 56.9 } }
Q[456] = { name = "The Balance of Nature", level = 2, minLevel = 1, map = 1438, x = 58.7, y = 44.3, giver = "Conservator Ilthalaine", faction = "Alliance", turnin = { 1438, 58.7, 44.3 } }
Q[457] = { name = "The Balance of Nature", level = 3, minLevel = 1, map = 1438, x = 58.7, y = 44.3, giver = "Conservator Ilthalaine", faction = "Alliance", pre = { 456 }, turnin = { 1438, 58.7, 44.3 } }
Q[458] = { name = "The Woodland Protector", level = 1, minLevel = 1, map = 1438, x = 59.9, y = 42.5, giver = "Melithar Staghelm", faction = "Alliance", turnin = { 1438, 57.8, 45.2 } }
Q[459] = { name = "The Woodland Protector", level = 3, minLevel = 1, map = 1438, x = 57.8, y = 45.2, giver = "Tarindrella", faction = "Alliance", pre = { 458 }, turnin = { 1438, 57.8, 45.2 } }
Q[460] = { name = "Resting in Pieces", level = 17, minLevel = 12, map = 1421, x = 65.7, y = 24.0, giver = "Drop: A Talking Head", faction = "Horde", turnin = { 1421, 67.9, 24.9 } }
Q[461] = { name = "The Hidden Niche", level = 18, minLevel = 12, map = 1421, x = 67.9, y = 24.9, giver = "Shallow Grave", faction = "Horde", pre = { 460 }, turnin = { 1421, 65.4, 24.8 } }
Q[463] = { name = "The Greenwarden", level = 21, minLevel = 20, map = 1437, x = 10.9, y = 59.6, giver = "First Mate Fitzsimmons", faction = "Alliance", turnin = { 1437, 56.4, 40.4 } }
Q[464] = { name = "War Banners", level = 28, minLevel = 23, map = 1437, x = 9.9, y = 57.5, giver = "Captain Stoutfist", faction = "Alliance", group = true, turnin = { 1437, 9.9, 57.5 } }
Q[465] = { name = "Nek'rosh's Gambit", level = 31, minLevel = 23, map = 1437, x = 9.9, y = 57.5, giver = "Captain Stoutfist", faction = "Alliance", pre = { 464 }, turnin = { 1437, 47.5, 47.0 } }
Q[466] = { name = "Search for Incendicite", level = 22, minLevel = 20, map = 1426, x = 49.6, y = 48.6, giver = "Pilot Stonegear", faction = "Alliance", turnin = { 1426, 49.6, 48.6 } }
Q[467] = { name = "Stonegear's Search", level = 23, minLevel = 20, map = 1432, x = 32.6, y = 49.7, giver = "Mountaineer Kadrell", faction = "Alliance", turnin = { 1426, 49.6, 48.6 } }
Q[468] = { name = "Report to Mountaineer Rockgar", level = 21, minLevel = 19, map = 1432, x = 32.6, y = 49.7, giver = "Mountaineer Kadrell", faction = "Alliance", turnin = { 1432, 25.4, 10.4 } }
Q[469] = { name = "Daily Delivery", level = 21, minLevel = 18, map = 1437, x = 49.9, y = 39.4, giver = "Einar Stonegrip", faction = "Alliance", turnin = { 1437, 8.6, 55.7 } }
Q[470] = { name = "Digging Through the Ooze", level = 24, minLevel = 19, map = 1437, x = 11.8, y = 58.0, giver = "Sida", faction = "Alliance", turnin = { 1437, 11.8, 58.0 } }
Q[471] = { name = "Apprentice's Duties", level = 26, minLevel = 18, map = 1437, x = 8.6, y = 55.7, giver = "James Halloran", faction = "Alliance", pre = { 484 }, turnin = { 1437, 8.6, 55.7 } }
Q[472] = { name = "Fall of Dun Modr", level = 25, minLevel = 25, map = 1437, x = 10.8, y = 55.9, giver = "Harlo Barnaby", faction = "Alliance", turnin = { 1437, 49.8, 18.3 } }
Q[473] = { name = "Report to Captain Stoutfist", level = 28, minLevel = 23, map = 1437, x = 10.1, y = 56.9, giver = "Valstag Ironjaw", faction = "Alliance", pre = { 455 }, turnin = { 1437, 9.9, 57.5 } }
Q[474] = { name = "Defeat Nek'rosh", level = 32, minLevel = 23, map = 1437, x = 47.5, y = 47.0, giver = "Dragonmaw Catapult", faction = "Alliance", pre = { 465 }, group = true, turnin = { 1437, 9.9, 57.5 } }
Q[475] = { name = "A Troubling Breeze", level = 6, minLevel = 4, map = 1438, x = 56.0, y = 57.3, giver = "Athridas Bearmantle", faction = "Alliance", turnin = { 1438, 66.3, 58.5 } }
Q[476] = { name = "Gnarlpine Corruption", level = 6, minLevel = 4, map = 1438, x = 66.3, y = 58.5, giver = "Gaerolas Talvethren", faction = "Alliance", pre = { 475 }, turnin = { 1438, 56.0, 57.3 } }
Q[477] = { name = "Border Crossings", level = 14, minLevel = 10, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", faction = "Horde", turnin = { 1421, 49.9, 60.3 } }
Q[478] = { name = "Maps and Runes", level = 14, minLevel = 10, map = 1421, x = 49.9, y = 60.3, giver = "Dalaran Crate", faction = "Horde", pre = { 477 }, turnin = { 1421, 44.0, 40.9 } }
Q[479] = { name = "Ambermill Investigations", level = 16, minLevel = 10, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", faction = "Horde", pre = { 482 }, turnin = { 1421, 44.0, 40.9 } }
Q[480] = { name = "The Weaver", level = 22, minLevel = 10, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", faction = "Horde", pre = { 479 }, turnin = { 1421, 44.0, 40.9 } }
Q[481] = { name = "Dalar's Analysis", level = 14, minLevel = 10, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", faction = "Horde", pre = { 478 }, turnin = { 1421, 44.2, 39.8 } }
Q[482] = { name = "Dalaran's Intentions", level = 14, minLevel = 10, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", faction = "Horde", pre = { 481 }, turnin = { 1421, 44.0, 40.9 } }
Q[483] = { name = "The Relics of Wakening", level = 9, minLevel = 4, map = 1438, x = 56.0, y = 57.3, giver = "Athridas Bearmantle", faction = "Alliance", pre = { 476 }, turnin = { 1438, 56.0, 57.3 } }
Q[484] = { name = "Young Crocolisk Skins", level = 22, minLevel = 18, map = 1437, x = 8.6, y = 55.7, giver = "James Halloran", faction = "Alliance", turnin = { 1437, 8.6, 55.7 } }
Q[485] = { name = "Find OOX-09/HL!", level = 48, minLevel = 43, map = 1425, x = 56.8, y = 50.8, giver = "Drop: OOX-09/HL Distress Beacon", turnin = { 1425, 49.4, 37.7 } }
Q[486] = { name = "Ursal the Mauler", level = 12, minLevel = 4, map = 1438, x = 56.0, y = 57.3, giver = "Athridas Bearmantle", faction = "Alliance", pre = { 483 }, turnin = { 1438, 56.0, 57.3 } }
Q[487] = { name = "The Road to Darnassus", level = 8, minLevel = 5, map = 1438, x = 52.9, y = 57.2, giver = "Moon Priestess Amara", faction = "Alliance", turnin = { 1438, 52.9, 57.2 } }
Q[488] = { name = "Zenn's Bidding", level = 5, minLevel = 4, map = 1438, x = 60.4, y = 56.2, giver = "Zenn Foulhoof", faction = "Alliance", turnin = { 1438, 60.4, 56.2 } }
Q[489] = { name = "Seek Redemption!", level = 7, minLevel = 4, map = 1438, x = 56, y = 59.5, giver = "Sentinel Kyra Starsong", faction = "Alliance", pre = { 488 }, turnin = { 1438, 60.4, 56.2 } }
Q[490] = { name = "Bounty: Gnarlpine Furbolg", level = 8, minLevel = 5, map = 1438, x = 40.5, y = 50.7, giver = "Sentinel Shayla Nightbreeze", faction = "Alliance", turnin = { 1438, 40.5, 50.7 } }
Q[491] = { name = "Wand to Bethor", level = 18, minLevel = 12, map = 1421, x = 65.4, y = 24.8, giver = "Dusty Shelf", faction = "Horde", pre = { 461 }, turnin = { 1458, 84.1, 17.4 } }
Q[492] = { name = "A New Plague", level = 11, minLevel = 6, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", faction = "Horde", pre = { 369 }, turnin = { 1420, 61.9, 51.4 } }
Q[493] = { name = "Journey to Hillsbrad Foothills", level = 20, minLevel = 19, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", faction = "Horde", turnin = { 1424, 61.4, 19.1 } }
Q[494] = { name = "Time To Strike", level = 20, minLevel = 19, map = 1424, x = 20.8, y = 47.4, giver = "Deathstalker Lesh", faction = "Horde", turnin = { 1424, 62.3, 20.4 } }
Q[495] = { name = "The Crown of Will", level = 39, minLevel = 34, map = 1458, x = 57.6, y = 93.8, giver = "Sharlindra", faction = "Horde", turnin = { 1424, 62.6, 20.6 } }
Q[496] = { name = "Elixir of Suffering", level = 22, minLevel = 19, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", turnin = { 1424, 61.4, 19.1 } }
Q[498] = { name = "The Rescue", level = 22, minLevel = 17, map = 1424, x = 63.2, y = 20.7, giver = "Krusk", faction = "Horde", turnin = { 1424, 63.2, 20.7 } }
Q[499] = { name = "Elixir of Suffering", level = 22, minLevel = 19, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", pre = { 496 }, turnin = { 1424, 61.5, 19.1 } }
Q[500] = { name = "Crushridge Bounty", level = 36, minLevel = 30, map = 1424, x = 49.5, y = 58.7, giver = "Marshal Redpath", faction = "Alliance", group = true, turnin = { 1424, 49.5, 58.7 } }
Q[501] = { name = "Elixir of Pain", level = 24, minLevel = 21, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", turnin = { 1424, 61.4, 19.1 } }
Q[502] = { name = "Elixir of Pain", level = 24, minLevel = 21, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", pre = { 501 }, turnin = { 1424, 32.7, 35.3 } }
Q[503] = { name = "Gol'dir", level = 36, minLevel = 29, map = 1424, x = 63.2, y = 20.7, giver = "Krusk", faction = "Horde", pre = { 533 }, turnin = { 1416, 60.0, 43.7 } }
Q[504] = { name = "Crushridge Warmongers", level = 40, minLevel = 30, map = 1424, x = 49.5, y = 58.7, giver = "Marshal Redpath", faction = "Alliance", pre = { 500 }, group = true, turnin = { 1424, 49.5, 58.7 } }
Q[505] = { name = "Syndicate Assassins", level = 33, minLevel = 26, map = 1424, x = 48.1, y = 59.1, giver = "Magistrate Henry Maleb", faction = "Alliance", turnin = { 1424, 48.1, 59.1 } }
Q[506] = { name = "Blackmoore's Legacy", level = 36, minLevel = 29, map = 1416, x = 60.0, y = 43.7, giver = "Gol'dir", faction = "Horde", pre = { 503 }, turnin = { 1424, 63.2, 20.7 } }
Q[508] = { name = "Taretha's Gift", level = 40, minLevel = 29, map = 1416, x = 39.3, y = 14.3, giver = "Elysa", faction = "Horde", pre = { 507 }, turnin = { 1424, 63.2, 20.7 } }
Q[509] = { name = "Elixir of Agony", level = 28, minLevel = 24, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", turnin = { 1424, 61.4, 19.1 } }
Q[510] = { name = "Foreboding Plans", level = 34, minLevel = 26, map = 1416, x = 58.3, y = 67.9, giver = "Syndicate Documents", faction = "Alliance", turnin = { 1424, 48.1, 59.1 } }
Q[511] = { name = "Encrypted Letter", level = 34, minLevel = 30, map = 1416, x = 58.3, y = 67.9, giver = "Syndicate Documents", faction = "Alliance", turnin = { 1424, 50.6, 57.1 } }
Q[512] = { name = "Noble Deaths", level = 36, minLevel = 26, map = 1424, x = 48.1, y = 59.1, giver = "Magistrate Henry Maleb", faction = "Alliance", pre = { 510 }, turnin = { 1424, 48.1, 59.1 } }
Q[513] = { name = "Elixir of Agony", level = 28, minLevel = 24, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", pre = { 509 }, turnin = { 1458, 48.8, 69.3 } }
Q[514] = { name = "Letter to Stormpike", level = 34, minLevel = 30, map = 1424, x = 50.6, y = 57.1, giver = "Loremaster Dibbs", faction = "Alliance", pre = { 511 }, turnin = { 1455, 74.6, 11.7 } }
Q[515] = { name = "Elixir of Agony", level = 30, minLevel = 24, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", faction = "Horde", pre = { 513 }, turnin = { 1424, 61.4, 19.1 } }
Q[516] = { name = "Beren's Peril", level = 21, minLevel = 16, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", faction = "Horde", turnin = { 1421, 44.0, 40.9 } }
Q[517] = { name = "Elixir of Agony", level = 30, minLevel = 24, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", pre = { 515 }, turnin = { 1424, 61.4, 19.1 } }
Q[518] = { name = "The Crown of Will", level = 39, minLevel = 34, map = 1424, x = 62.6, y = 20.6, giver = "Melisara", faction = "Horde", group = true, turnin = { 1424, 62.6, 20.6 } }
Q[519] = { name = "The Crown of Will", level = 41, minLevel = 34, map = 1424, x = 62.6, y = 20.6, giver = "Melisara", faction = "Horde", pre = { 518 }, group = true, turnin = { 1424, 62.6, 20.6 } }
Q[520] = { name = "The Crown of Will", level = 43, minLevel = 34, map = 1424, x = 62.6, y = 20.6, giver = "Melisara", faction = "Horde", pre = { 519 }, group = true, turnin = { 1424, 62.6, 20.6 } }
Q[521] = { name = "The Crown of Will", level = 43, minLevel = 34, map = 1424, x = 62.6, y = 20.6, giver = "Melisara", faction = "Horde", pre = { 520 }, turnin = { 1458, 57.6, 93.8 } }
Q[522] = { name = "Assassin's Contract", level = 38, minLevel = 30, map = 1424, x = 50.1, y = 57.9, giver = "Drop: Assassin's Contract", faction = "Alliance", turnin = { 1424, 48.1, 59.1 } }
Q[523] = { name = "Baron's Demise", level = 40, minLevel = 30, map = 1424, x = 48.1, y = 59.1, giver = "Magistrate Henry Maleb", faction = "Alliance", pre = { 522 }, turnin = { 1424, 48.1, 59.1 } }
Q[524] = { name = "Elixir of Agony", level = 30, minLevel = 24, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", pre = { 517 }, turnin = { 1424, 62.8, 18.7 } }
Q[525] = { name = "Further Mysteries", level = 34, minLevel = 30, map = 1455, x = 74.6, y = 11.7, giver = "Prospector Stormpike", faction = "Alliance", pre = { 514 }, turnin = { 1424, 48.1, 59.1 } }
Q[526] = { name = "Lightforge Ingots", level = 29, minLevel = 20, map = 1437, x = 10.6, y = 60.6, giver = "Glorin Steelbrow", faction = "Alliance", pre = { 324 }, turnin = { 1437, 10.6, 60.6 } }
Q[527] = { name = "Battle of Hillsbrad", level = 24, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", faction = "Horde", turnin = { 1424, 62.3, 20.4 } }
Q[528] = { name = "Battle of Hillsbrad", level = 25, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", faction = "Horde", pre = { 527 }, turnin = { 1424, 62.3, 20.4 } }
Q[529] = { name = "Battle of Hillsbrad", level = 26, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", faction = "Horde", pre = { 528 }, turnin = { 1424, 62.3, 20.4 } }
Q[530] = { name = "A Husband's Revenge", level = 20, minLevel = 10, map = 1458, x = 62.0, y = 42.8, giver = "Raleigh Andrean", faction = "Horde", pre = { 441 }, turnin = { 1458, 62.0, 42.8 } }
Q[531] = { name = "Vyrin's Revenge", level = 20, minLevel = 15, map = 1432, x = 83.5, y = 65.5, giver = "Daryl the Youngling", faction = "Alliance", pre = { 271 }, turnin = { 1432, 81.7, 64.1 } }
Q[532] = { name = "Battle of Hillsbrad", level = 26, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", faction = "Horde", pre = { 529 }, turnin = { 1424, 62.3, 20.4 } }
Q[533] = { name = "Infiltration", level = 34, minLevel = 29, map = 1424, x = 63.2, y = 20.7, giver = "Krusk", faction = "Horde", pre = { 498 }, turnin = { 1424, 63.2, 20.7 } }
Q[535] = { name = "Valik", level = 34, minLevel = 29, map = 1416, x = 57.2, y = 69.5, giver = "Henchman Valik", faction = "Horde", turnin = { 1416, 57.2, 69.5 } }
Q[536] = { name = "Down the Coast", level = 30, minLevel = 25, map = 1424, x = 51.5, y = 58.4, giver = "Lieutenant Farren Orinelle", faction = "Alliance", turnin = { 1424, 51.5, 58.4 } }
Q[537] = { name = "Dark Council", level = 40, minLevel = 30, map = 1424, x = 48.1, y = 59.1, giver = "Magistrate Henry Maleb", faction = "Alliance", pre = { 525 }, turnin = { 1424, 48.1, 59.1 } }
Q[539] = { name = "Battle of Hillsbrad", level = 28, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", faction = "Horde", pre = { 532 }, turnin = { 1424, 62.3, 20.4 } }
Q[541] = { name = "Battle of Hillsbrad", level = 30, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", faction = "Horde", pre = { 539 }, group = true, turnin = { 1424, 62.3, 20.4 } }
Q[543] = { name = "The Perenolde Tiara", level = 40, minLevel = 30, map = 1453, x = 76.9, y = 47.8, giver = "Count Remington Ridgewell", faction = "Alliance", group = true, turnin = { 1453, 76.9, 47.8 } }
Q[544] = { name = "Prison Break In", level = 34, minLevel = 30, map = 1424, x = 61.6, y = 20.9, giver = "Magus Wordeen Voidglare", faction = "Horde", turnin = { 1424, 61.6, 20.9 } }
Q[545] = { name = "Dalaran Patrols", level = 35, minLevel = 30, map = 1424, x = 61.6, y = 20.9, giver = "Magus Wordeen Voidglare", faction = "Horde", pre = { 544 }, turnin = { 1424, 61.6, 20.9 } }
Q[546] = { name = "Souvenirs of Death", level = 25, minLevel = 20, map = 1424, x = 62.1, y = 19.7, giver = "Deathguard Samsa", faction = "Horde", pre = { 527 }, turnin = { 1424, 62.1, 19.7 } }
Q[547] = { name = "Humbert's Sword", level = 30, minLevel = 26, map = 1424, x = 62.8, y = 20.2, giver = "Deathguard Humbert", faction = "Horde", group = true, turnin = { 1424, 62.8, 20.2 } }
Q[549] = { name = "WANTED: Syndicate Personnel", level = 22, minLevel = 17, map = 1424, x = 62.6, y = 20.8, giver = "WANTED", faction = "Horde", turnin = { 1424, 62.3, 20.4 } }
Q[551] = { name = "The Ensorcelled Parchment", level = 40, minLevel = 30, map = 1416, x = 39.2, y = 14.7, giver = "Drop: Ensorcelled Parchment", faction = "Alliance", turnin = { 1424, 50.6, 57.1 } }
Q[552] = { name = "Helcular's Revenge", level = 33, minLevel = 29, map = 1424, x = 63.9, y = 19.7, giver = "Novice Thaivand", faction = "Horde", turnin = { 1424, 63.9, 19.7 } }
Q[553] = { name = "Helcular's Revenge", level = 33, minLevel = 29, map = 1424, x = 63.9, y = 19.7, giver = "Novice Thaivand", faction = "Horde", pre = { 552 }, turnin = { 1424, 52.8, 53.4 } }
Q[554] = { name = "Stormpike's Deciphering", level = 40, minLevel = 28, map = 1424, x = 50.6, y = 57.1, giver = "Loremaster Dibbs", faction = "Alliance", pre = { 551 }, turnin = { 1455, 74.6, 11.7 } }
Q[555] = { name = "Soothing Turtle Bisque", level = 31, minLevel = 28, map = 1424, x = 51.9, y = 58.7, giver = "Chef Jessen", faction = "Alliance", group = true, turnin = { 1424, 51.9, 58.7 } }
Q[556] = { name = "Stone Tokens", level = 32, minLevel = 30, map = 1424, x = 61.5, y = 20.9, giver = "Keeper Bel'varil", faction = "Horde", turnin = { 1424, 61.5, 20.9 } }
Q[557] = { name = "Bracers of Binding", level = 34, minLevel = 30, map = 1424, x = 61.5, y = 20.9, giver = "Keeper Bel'varil", faction = "Horde", pre = { 556 }, turnin = { 1424, 61.5, 20.9 } }
Q[559] = { name = "Farren's Proof", level = 32, minLevel = 25, map = 1424, x = 51.5, y = 58.4, giver = "Lieutenant Farren Orinelle", faction = "Alliance", pre = { 536 }, turnin = { 1424, 51.5, 58.4 } }
Q[560] = { name = "Farren's Proof", level = 32, minLevel = 25, map = 1424, x = 51.5, y = 58.4, giver = "Lieutenant Farren Orinelle", faction = "Alliance", pre = { 559 }, turnin = { 1424, 49.5, 58.7 } }
Q[561] = { name = "Farren's Proof", level = 32, minLevel = 25, map = 1424, x = 49.5, y = 58.7, giver = "Marshal Redpath", faction = "Alliance", pre = { 560 }, turnin = { 1424, 51.5, 58.4 } }
Q[562] = { name = "Stormwind Ho!", level = 32, minLevel = 25, map = 1424, x = 51.5, y = 58.4, giver = "Lieutenant Farren Orinelle", faction = "Alliance", pre = { 561 }, turnin = { 1424, 51.5, 58.4 } }
Q[563] = { name = "Reassignment", level = 32, minLevel = 25, map = 1424, x = 51.5, y = 58.4, giver = "Lieutenant Farren Orinelle", faction = "Alliance", pre = { 562 }, turnin = { 1453, 75.8, 36.7 } }
Q[564] = { name = "Costly Menace", level = 34, minLevel = 30, map = 1424, x = 52.4, y = 56.0, giver = "Darren Malvew", faction = "Alliance", turnin = { 1424, 52.4, 56.0 } }
Q[565] = { name = "Bartolo's Yeti Fur Cloak", level = 34, minLevel = 29, map = 1424, x = 49.4, y = 55.5, giver = "Bartolo Ginsetti", faction = "Alliance", turnin = { 1424, 49.4, 55.5 } }
Q[566] = { name = "WANTED: Baron Vardus", level = 40, minLevel = 35, map = 1424, x = 62.6, y = 20.8, giver = "WANTED", faction = "Horde", pre = { 549 }, turnin = { 1424, 62.3, 20.4 } }
Q[567] = { name = "Dangerous!", level = 28, minLevel = 19, map = 1424, x = 62.6, y = 19.7, giver = "Dangerous!", faction = "Horde", turnin = { 1424, 62.3, 20.4 } }
Q[568] = { name = "The Defense of Grom'gol", level = 36, minLevel = 33, map = 1434, x = 32.2, y = 28.9, giver = "Commander Aggro'gosh", faction = "Horde", turnin = { 1434, 32.2, 28.9 } }
Q[569] = { name = "The Defense of Grom'gol", level = 37, minLevel = 33, map = 1434, x = 32.2, y = 28.9, giver = "Commander Aggro'gosh", faction = "Horde", pre = { 568 }, turnin = { 1434, 32.2, 28.9 } }
Q[570] = { name = "Mok'thardin's Enchantment", level = 38, minLevel = 33, map = 1434, x = 32.1, y = 29.2, giver = "Far Seer Mok'thardin", faction = "Horde", turnin = { 1434, 32.1, 29.2 } }
Q[571] = { name = "Mok'thardin's Enchantment", level = 41, minLevel = 33, map = 1434, x = 32.1, y = 29.2, giver = "Far Seer Mok'thardin", faction = "Horde", pre = { 572 }, turnin = { 1434, 32.1, 29.2 } }
Q[572] = { name = "Mok'thardin's Enchantment", level = 41, minLevel = 33, map = 1434, x = 32.1, y = 29.2, giver = "Far Seer Mok'thardin", faction = "Horde", pre = { 570 }, turnin = { 1434, 32.1, 29.2 } }
Q[573] = { name = "Mok'thardin's Enchantment", level = 44, minLevel = 33, map = 1434, x = 32.1, y = 29.2, giver = "Far Seer Mok'thardin", faction = "Horde", pre = { 571 }, turnin = { 1434, 32.1, 29.2 } }
Q[574] = { name = "Special Forces", level = 38, minLevel = 30, map = 1434, x = 38.0, y = 3.3, giver = "Sergeant Yohwa", faction = "Alliance", pre = { 203, 204 }, turnin = { 1434, 38.0, 3.0 } }
Q[575] = { name = "Supply and Demand", level = 31, minLevel = 26, map = 1434, x = 28.3, y = 77.6, giver = "Drizzlik", turnin = { 1434, 28.3, 77.6 } }
Q[576] = { name = "Keep An Eye Out", level = 42, minLevel = 37, map = 1434, x = 28.6, y = 75.9, giver = "Dizzy One-Eye", pre = { 597 }, turnin = { 1434, 28.6, 75.9 } }
Q[577] = { name = "Some Assembly Required", level = 36, minLevel = 31, map = 1434, x = 28.3, y = 77.6, giver = "Drizzlik", pre = { 575 }, turnin = { 1434, 28.3, 77.6 } }
Q[578] = { name = "The Stone of the Tides", level = 37, minLevel = 32, map = 1434, x = 27.2, y = 76.9, giver = "Baron Revilgaz", faction = "Alliance", pre = { 616 }, turnin = { 1434, 27.2, 76.9 } }
Q[580] = { name = "Whiskey Slim's Lost Grog", level = 50, minLevel = 40, map = 1434, x = 27.1, y = 77.5, giver = "Whiskey Slim", turnin = { 1434, 27.1, 77.5 } }
Q[581] = { name = "Hunt for Yenniku", level = 34, minLevel = 30, map = 1434, x = 32.2, y = 27.7, giver = "Nimboya", faction = "Horde", turnin = { 1434, 32.2, 27.7 } }
Q[582] = { name = "Headhunting", level = 37, minLevel = 30, map = 1434, x = 32.2, y = 27.7, giver = "Nimboya", faction = "Horde", pre = { 581 }, turnin = { 1434, 32.2, 27.7 } }
Q[583] = { name = "Welcome to the Jungle", level = 30, minLevel = 28, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", turnin = { 1434, 35.7, 10.8 } }
Q[584] = { name = "Bloodscalp Clan Heads", level = 41, minLevel = 30, map = 1434, x = 32.2, y = 27.7, giver = "Nimboya", faction = "Horde", pre = { 582 }, turnin = { 1434, 32.2, 27.6 } }
Q[585] = { name = "Speaking with Nezzliok", level = 40, minLevel = 30, map = 1434, x = 32.2, y = 27.6, giver = "Bubbling Cauldron", faction = "Horde", pre = { 584 }, turnin = { 1434, 32.2, 27.6 } }
Q[587] = { name = "Up to Snuff", level = 41, minLevel = 37, map = 1434, x = 26.9, y = 77.3, giver = "Deeg", pre = { 597 }, turnin = { 1434, 26.9, 77.3 } }
Q[590] = { name = "A Rogue's Deal", level = 5, minLevel = 1, map = 1420, x = 38.2, y = 56.8, giver = "Calvin Montague", faction = "Horde", pre = { 8 }, turnin = { 1420, 38.2, 56.8 } }
Q[594] = { name = "Message in a Bottle", level = 45, minLevel = 45, map = 1434, x = 36.6, y = 77.1, giver = "Drop: Carefully Folded Note", turnin = { 1434, 38.5, 80.6 } }
Q[595] = { name = "The Bloodsail Buccaneers", level = 41, minLevel = 37, map = 1434, x = 28.1, y = 76.2, giver = "First Mate Crazz", turnin = { 1434, 27.3, 69.5 } }
Q[596] = { name = "Bloody Bone Necklaces", level = 37, minLevel = 30, map = 1434, x = 32.3, y = 27.7, giver = "Kin'weelay", faction = "Horde", turnin = { 1434, 32.3, 27.7 } }
Q[597] = { name = "The Bloodsail Buccaneers", level = 41, minLevel = 37, map = 1434, x = 27.3, y = 69.5, giver = "Bloodsail Correspondence", pre = { 595 }, turnin = { 1434, 28.1, 76.2 } }
Q[598] = { name = "Split Bone Necklace", level = 42, minLevel = 30, map = 1434, x = 32.3, y = 27.7, giver = "Kin'weelay", faction = "Horde", pre = { 596, 629 }, turnin = { 1434, 32.3, 27.7 } }
Q[599] = { name = "The Bloodsail Buccaneers", level = 41, minLevel = 37, map = 1434, x = 28.1, y = 76.2, giver = "First Mate Crazz", pre = { 597 }, turnin = { 1434, 27.2, 77.0 } }
Q[600] = { name = "Venture Company Mining", level = 41, minLevel = 30, map = 1434, x = 27.1, y = 77.2, giver = "Crank Fizzlebub", pre = { 605 }, turnin = { 1434, 27.1, 77.2 } }
Q[601] = { name = "Water Elementals", level = 37, minLevel = 32, map = 1434, x = 27.2, y = 76.9, giver = "Baron Revilgaz", faction = "Alliance", pre = { 578 }, turnin = { 1434, 27.2, 76.9 } }
Q[602] = { name = "Magical Analysis", level = 37, minLevel = 32, map = 1434, x = 27.2, y = 76.9, giver = "Baron Revilgaz", faction = "Alliance", pre = { 601 }, turnin = { 1416, 18.8, 78.5 } }
Q[603] = { name = "Ansirem's Key", level = 37, minLevel = 32, map = 1416, x = 18.8, y = 78.5, giver = "Archmage Ansirem Runeweaver", faction = "Alliance", pre = { 602 }, turnin = { 1434, 27.3, 77.5 } }
Q[604] = { name = "The Bloodsail Buccaneers", level = 43, minLevel = 37, map = 1434, x = 27.2, y = 77.0, giver = "Fleet Master Seahorn", pre = { 599 }, turnin = { 1434, 27.2, 77.0 } }
Q[605] = { name = "Singing Blue Shards", level = 35, minLevel = 30, map = 1434, x = 27.1, y = 77.2, giver = "Crank Fizzlebub", turnin = { 1434, 27.1, 77.2 } }
Q[606] = { name = "Scaring Shaky", level = 41, minLevel = 30, map = 1434, x = 27.8, y = 77.1, giver = "\"Sea Wolf\" MacKinley", turnin = { 1434, 26.9, 73.6 } }
Q[607] = { name = "Return to MacKinley", level = 41, minLevel = 30, map = 1434, x = 26.9, y = 73.6, giver = "\"Shaky\" Phillipe", pre = { 606 }, turnin = { 1434, 27.8, 77.1 } }
Q[608] = { name = "The Bloodsail Buccaneers", level = 45, minLevel = 37, map = 1434, x = 27.2, y = 77.0, giver = "Fleet Master Seahorn", pre = { 604 }, turnin = { 1434, 27.2, 77.0 } }
Q[610] = { name = "\"Pretty Boy\" Duncan", level = 39, minLevel = 32, map = 1434, x = 27.3, y = 77.5, giver = "Catelyn the Blade", faction = "Alliance", pre = { 603 }, turnin = { 1434, 27.3, 77.5 } }
Q[611] = { name = "The Curse of the Tides", level = 40, minLevel = 32, map = 1434, x = 27.3, y = 77.5, giver = "Catelyn the Blade", faction = "Alliance", pre = { 610 }, turnin = { 1434, 27.2, 76.9 } }
Q[616] = { name = "The Haunted Isle", level = 37, minLevel = 32, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", faction = "Alliance", turnin = { 1434, 27.2, 76.9 } }
Q[617] = { name = "Akiris by the Bundle", level = 43, minLevel = 38, map = 1434, x = 26.8, y = 76.4, giver = "Privateer Bloads", turnin = { 1434, 26.8, 76.4 } }
Q[621] = { name = "Zanzil's Secret", level = 44, minLevel = 35, map = 1434, x = 27.1, y = 77.2, giver = "Crank Fizzlebub", turnin = { 1434, 27.1, 77.2 } }
Q[622] = { name = "Return to Corporal Kaleb", level = 37, minLevel = 32, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", faction = "Alliance", pre = { 627 }, turnin = { 1434, 37.7, 3.3 } }
Q[623] = { name = "Akiris by the Bundle", level = 43, minLevel = 38, map = 1434, x = 26.8, y = 76.4, giver = "Privateer Bloads", faction = "Alliance", pre = { 617 }, turnin = { 1445, 68.8, 53.2 } }
Q[624] = { name = "Cortello's Riddle", level = 43, minLevel = 35, map = 1434, x = 29.2, y = 88.6, giver = "Drop: Cortello's Riddle", turnin = { 1435, 22.9, 48.2 } }
Q[625] = { name = "Cortello's Riddle", level = 43, minLevel = 35, map = 1435, x = 22.9, y = 48.2, giver = "A Soggy Scroll", pre = { 624 }, turnin = { 1445, 31.1, 66.1 } }
Q[627] = { name = "Favor for Krazek", level = 37, minLevel = 32, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", faction = "Alliance", pre = { 210 }, turnin = { 1434, 26.9, 77.2 } }
Q[628] = { name = "Excelsior", level = 38, minLevel = 31, map = 1434, x = 28.3, y = 77.6, giver = "Drizzlik", pre = { 577 }, group = true, turnin = { 1434, 28.3, 77.6 } }
Q[629] = { name = "The Vile Reef", level = 37, minLevel = 30, map = 1434, x = 32.3, y = 27.7, giver = "Kin'weelay", faction = "Horde", turnin = { 1434, 32.3, 27.7 } }
Q[630] = { name = "Message in a Bottle", level = 51, minLevel = 45, map = 1434, x = 38.5, y = 80.6, giver = "Princess Poobah", pre = { 594 }, group = true, turnin = { 1434, 38.5, 80.6 } }
Q[631] = { name = "The Thandol Span", level = 31, minLevel = 28, map = 1437, x = 49.9, y = 18.2, giver = "Rhag Garmason", faction = "Alliance", turnin = { 1437, 51.3, 8.0 } }
Q[632] = { name = "The Thandol Span", level = 31, minLevel = 28, map = 1437, x = 51.3, y = 8.0, giver = "Ebenezer Rustlocke's Corpse", faction = "Alliance", pre = { 631 }, turnin = { 1437, 49.9, 18.2 } }
Q[633] = { name = "The Thandol Span", level = 31, minLevel = 28, map = 1437, x = 49.9, y = 18.2, giver = "Rhag Garmason", faction = "Alliance", pre = { 632 }, turnin = { 1437, 49.9, 18.2 } }
Q[634] = { name = "Plea To The Alliance", level = 31, minLevel = 28, map = 1437, x = 49.9, y = 18.2, giver = "Rhag Garmason", faction = "Alliance", pre = { 633 }, turnin = { 1417, 45.8, 47.6 } }
Q[635] = { name = "Crystal in the Mountains", level = 35, minLevel = 30, map = 1443, x = 54.8, y = 27.8, giver = "Drop: Pendant of Myzrael", turnin = { 1417, 62.5, 33.7 } }
Q[637] = { name = "Sully Balloo's Letter", level = 30, minLevel = 25, map = 1417, x = 44.3, y = 92.9, giver = "Drop: Waterlogged Envelope", faction = "Alliance", turnin = { 1455, 63.5, 67.3 } }
Q[638] = { name = "Trollbane", level = 37, minLevel = 32, map = 1434, x = 32.2, y = 27.7, giver = "Nimboya", faction = "Horde", turnin = { 1417, 73.8, 34.0 } }
Q[639] = { name = "Sigil of Strom", level = 37, minLevel = 32, map = 1417, x = 73.8, y = 34.0, giver = "Zengu", faction = "Horde", group = true, turnin = { 1417, 73.8, 34.0 } }
Q[640] = { name = "The Broken Sigil", level = 40, minLevel = 32, map = 1417, x = 73.8, y = 34.0, giver = "Zengu", faction = "Horde", pre = { 639 }, group = true, turnin = { 1417, 74.7, 36.3 } }
Q[641] = { name = "Sigil of Thoradin", level = 40, minLevel = 32, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", faction = "Horde", pre = { 640 }, turnin = { 1417, 73.8, 34.0 } }
Q[642] = { name = "The Princess Trapped", level = 37, minLevel = 30, map = 1417, x = 62.5, y = 33.7, giver = "Shards of Myzrael", turnin = { 1417, 84.3, 30.9 } }
Q[643] = { name = "Sigil of Arathor", level = 41, minLevel = 32, map = 1417, x = 73.8, y = 34.0, giver = "Zengu", faction = "Horde", pre = { 641 }, group = true, turnin = { 1417, 73.8, 34.0 } }
Q[644] = { name = "Sigil of Trollbane", level = 42, minLevel = 32, map = 1417, x = 73.8, y = 34.0, giver = "Zengu", faction = "Horde", pre = { 643 }, group = true, turnin = { 1417, 73.8, 34.0 } }
Q[645] = { name = "Trol'kalar", level = 42, minLevel = 32, map = 1417, x = 73.8, y = 34.0, giver = "Zengu", faction = "Horde", pre = { 644 }, turnin = { 1417, 28.9, 59.6 } }
Q[646] = { name = "Trol'kalar", level = 42, minLevel = 32, map = 1417, x = 28.9, y = 59.6, giver = "Trollbane's Tomb", faction = "Horde", pre = { 645 }, turnin = { 1417, 73.8, 34.0 } }
Q[647] = { name = "MacKreel's Moonshine", level = 30, minLevel = 28, map = 1417, x = 43.2, y = 92.6, giver = "Foggy MacKreel", faction = "Alliance", turnin = { 1424, 52.1, 58.7 } }
Q[648] = { name = "Rescue OOX-17/TN!", level = 48, minLevel = 43, map = 1446, x = 60.2, y = 64.7, giver = "Homing Robot OOX-17/TN", pre = { 351 }, turnin = { 1434, 28.4, 76.3 } }
Q[649] = { name = "Ripple Recovery", level = 48, minLevel = 42, map = 1454, x = 59.5, y = 36.6, giver = "Dran Droffers", faction = "Horde", turnin = { 1454, 59.6, 36.9 } }
Q[650] = { name = "Ripple Recovery", level = 48, minLevel = 42, map = 1454, x = 59.6, y = 36.9, giver = "Malton Droffers", faction = "Horde", pre = { 649 }, turnin = { 1425, 26.7, 48.6 } }
Q[651] = { name = "Stones of Binding", level = 38, minLevel = 30, map = 1417, x = 84.3, y = 30.9, giver = "Iridescent Shards", pre = { 642 }, turnin = { 1417, 36.2, 57.4 } }
Q[652] = { name = "Breaking the Keystone", level = 42, minLevel = 30, map = 1417, x = 36.2, y = 57.4, giver = "Stone of Inner Binding", pre = { 651 }, group = true, turnin = { 1417, 36.1, 58.1 } }
Q[653] = { name = "Myzrael's Allies", level = 40, minLevel = 30, map = 1417, x = 36.1, y = 58.1, giver = "Keystone", faction = "Alliance", pre = { 652 }, turnin = { 1455, 50.8, 5.6 } }
Q[655] = { name = "Hammerfall", level = 34, minLevel = 29, map = 1417, x = 72.6, y = 33.9, giver = "Gor'mul", faction = "Horde", turnin = { 1417, 74.7, 36.3 } }
Q[657] = { name = "Hints of a New Plague?", level = 36, minLevel = 30, map = 1417, x = 60.2, y = 53.9, giver = "Quae", faction = "Alliance", pre = { 658 }, turnin = { 1417, 60.2, 53.9 } }
Q[658] = { name = "Hints of a New Plague?", level = 36, minLevel = 30, map = 1417, x = 60.2, y = 53.9, giver = "Quae", faction = "Alliance", pre = { 659 }, turnin = { 1417, 60.2, 53.9 } }
Q[659] = { name = "Hints of a New Plague?", level = 33, minLevel = 30, map = 1424, x = 50.4, y = 59.0, giver = "Phin Odelic", faction = "Alliance", turnin = { 1417, 60.2, 53.9 } }
Q[660] = { name = "Hints of a New Plague?", level = 37, minLevel = 30, map = 1417, x = 60.2, y = 53.9, giver = "Kinelory", faction = "Alliance", pre = { 657 }, turnin = { 1417, 60.2, 53.9 } }
Q[661] = { name = "Hints of a New Plague?", level = 37, minLevel = 30, map = 1417, x = 60.2, y = 53.9, giver = "Quae", faction = "Alliance", pre = { 660 }, turnin = { 1424, 50.4, 59.0 } }
Q[662] = { name = "Deep Sea Salvage", level = 40, minLevel = 35, map = 1417, x = 32.8, y = 81.5, giver = "First Mate Nilzlix", pre = { 663 }, turnin = { 1417, 32.8, 81.5 } }
Q[663] = { name = "Land Ho!", level = 35, minLevel = 35, map = 1417, x = 31.8, y = 82.7, giver = "Lolo the Lookout", turnin = { 1417, 32.3, 81.4 } }
Q[664] = { name = "Drowned Sorrows", level = 40, minLevel = 35, map = 1417, x = 34, y = 80.8, giver = "Captain Steelgut", pre = { 663 }, turnin = { 1417, 34, 80.8 } }
Q[665] = { name = "Sunken Treasure", level = 40, minLevel = 35, map = 1417, x = 33.9, y = 80.5, giver = "Professor Phizzlethorpe", pre = { 663 }, turnin = { 1417, 33.9, 80.5 } }
Q[666] = { name = "Sunken Treasure", level = 40, minLevel = 35, map = 1417, x = 33.9, y = 80.5, giver = "Doctor Draxlegauge", pre = { 665 }, turnin = { 1417, 33.9, 80.5 } }
Q[667] = { name = "Death From Below", level = 44, minLevel = 35, map = 1417, x = 32.3, y = 81.4, giver = "Shakes O'Breen", pre = { 670 }, turnin = { 1417, 32.3, 81.4 } }
Q[668] = { name = "Sunken Treasure", level = 40, minLevel = 35, map = 1417, x = 33.9, y = 80.5, giver = "Doctor Draxlegauge", pre = { 666 }, turnin = { 1417, 32.3, 81.4 } }
Q[669] = { name = "Sunken Treasure", level = 40, minLevel = 35, map = 1417, x = 32.3, y = 81.4, giver = "Shakes O'Breen", pre = { 668 }, turnin = { 1434, 27.2, 77.0 } }
Q[670] = { name = "Sunken Treasure", level = 40, minLevel = 35, map = 1434, x = 27.2, y = 77.0, giver = "Fleet Master Seahorn", pre = { 669 }, turnin = { 1417, 32.3, 81.4 } }
Q[671] = { name = "Foul Magics", level = 33, minLevel = 30, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", faction = "Horde", turnin = { 1417, 74.7, 36.3 } }
Q[672] = { name = "Raising Spirits", level = 34, minLevel = 29, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", faction = "Horde", pre = { 655 }, turnin = { 1417, 74.7, 36.3 } }
Q[673] = { name = "Foul Magics", level = 40, minLevel = 35, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", faction = "Horde", pre = { 671 }, group = true, turnin = { 1417, 74.7, 36.3 } }
Q[674] = { name = "Raising Spirits", level = 34, minLevel = 29, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", faction = "Horde", pre = { 672 }, turnin = { 1417, 72.6, 33.9 } }
Q[675] = { name = "Raising Spirits", level = 34, minLevel = 29, map = 1417, x = 72.6, y = 33.9, giver = "Gor'mul", faction = "Horde", pre = { 674 }, turnin = { 1417, 74.7, 36.3 } }
Q[676] = { name = "The Hammer May Fall", level = 32, minLevel = 30, map = 1424, x = 61.9, y = 19.6, giver = "Tallow", faction = "Horde", turnin = { 1417, 74.2, 33.9 } }
Q[677] = { name = "Call to Arms", level = 32, minLevel = 30, map = 1417, x = 74.2, y = 33.9, giver = "Drum Fel", faction = "Horde", turnin = { 1417, 74.2, 33.9 } }
Q[678] = { name = "Call to Arms", level = 38, minLevel = 30, map = 1417, x = 74.2, y = 33.9, giver = "Drum Fel", faction = "Horde", pre = { 677 }, turnin = { 1417, 74.2, 33.9 } }
Q[679] = { name = "Call to Arms", level = 40, minLevel = 30, map = 1417, x = 74.2, y = 33.9, giver = "Drum Fel", faction = "Horde", pre = { 678 }, group = true, turnin = { 1417, 74.2, 33.9 } }
Q[680] = { name = "The Real Threat", level = 40, minLevel = 30, map = 1417, x = 74.0, y = 33.1, giver = "Korin Fel", faction = "Horde", pre = { 678 }, group = true, turnin = { 1417, 74.0, 33.1 } }
Q[681] = { name = "Northfold Manor", level = 31, minLevel = 30, map = 1417, x = 45.8, y = 47.6, giver = "Captain Nials", faction = "Alliance", turnin = { 1417, 45.8, 47.6 } }
Q[682] = { name = "Stromgarde Badges", level = 37, minLevel = 30, map = 1417, x = 45.8, y = 47.6, giver = "Captain Nials", faction = "Alliance", pre = { 681 }, group = true, turnin = { 1417, 45.8, 47.6 } }
Q[683] = { name = "Sara Balloo's Plea", level = 30, minLevel = 25, map = 1455, x = 63.5, y = 67.3, giver = "Sara Balloo", faction = "Alliance", pre = { 637 }, turnin = { 1455, 39.1, 56.2 } }
Q[684] = { name = "Wanted!  Marez Cowl", level = 39, minLevel = 30, map = 1417, x = 46.0, y = 47.8, giver = "Wanted Board", faction = "Alliance", group = true, turnin = { 1417, 45.8, 47.6 } }
Q[685] = { name = "Wanted!  Otto and Falconcrest", level = 40, minLevel = 30, map = 1417, x = 46.0, y = 47.8, giver = "Wanted Board", faction = "Alliance", group = true, turnin = { 1417, 45.8, 47.6 } }
Q[686] = { name = "A King's Tribute", level = 30, minLevel = 25, map = 1455, x = 39.1, y = 56.2, giver = "King Magni Bronzebeard", faction = "Alliance", pre = { 683 }, turnin = { 1455, 39.0, 88.0 } }
Q[687] = { name = "Theldurin the Lost", level = 40, minLevel = 30, map = 1417, x = 74.5, y = 35.6, giver = "Zaruk", alliance = { map = 1455, x = 50.8, y = 5.6, giver = "Gerrig Bonegrip" }, turnin = { 1418, 51.4, 76.9 } }
Q[688] = { name = "Myzrael's Allies", level = 40, minLevel = 30, map = 1417, x = 36.1, y = 58.1, giver = "Keystone", faction = "Horde", pre = { 652 }, turnin = { 1417, 74.5, 35.6 } }
Q[689] = { name = "A King's Tribute", level = 31, minLevel = 25, map = 1455, x = 39.0, y = 88.0, giver = "Grand Mason Marblesten", faction = "Alliance", pre = { 686 }, turnin = { 1455, 39.0, 88.0 } }
Q[690] = { name = "Malin's Request", level = 32, minLevel = 30, map = 1453, x = 50.5, y = 87.5, giver = "Archmage Malin", faction = "Alliance", turnin = { 1417, 46.6, 47.0 } }
Q[691] = { name = "Worth Its Weight in Gold", level = 36, minLevel = 30, map = 1417, x = 46.2, y = 47.8, giver = "Apprentice Kryten", faction = "Alliance", group = true, turnin = { 1417, 46.2, 47.8 } }
Q[692] = { name = "The Lost Fragments", level = 41, minLevel = 30, map = 1418, x = 51.4, y = 76.9, giver = "Theldurin the Lost", pre = { 687 }, turnin = { 1418, 51.4, 76.9 } }
Q[693] = { name = "Wand over Fist", level = 39, minLevel = 30, map = 1417, x = 46.6, y = 47.0, giver = "Skuerto", faction = "Alliance", pre = { 691 }, turnin = { 1417, 46.6, 47.0 } }
Q[694] = { name = "Trelane's Defenses", level = 39, minLevel = 30, map = 1417, x = 46.6, y = 47.0, giver = "Skuerto", faction = "Alliance", pre = { 693 }, group = true, turnin = { 1417, 46.2, 47.8 } }
Q[695] = { name = "An Apprentice's Enchantment", level = 39, minLevel = 30, map = 1417, x = 46.2, y = 47.8, giver = "Apprentice Kryten", faction = "Alliance", pre = { 694 }, turnin = { 1417, 46.6, 47.0 } }
Q[696] = { name = "Attack on the Tower", level = 39, minLevel = 30, map = 1417, x = 46.6, y = 47.0, giver = "Skuerto", faction = "Alliance", pre = { 695 }, turnin = { 1417, 46.6, 47.0 } }
Q[697] = { name = "Malin's Request", level = 39, minLevel = 30, map = 1417, x = 46.6, y = 47.0, giver = "Skuerto", faction = "Alliance", pre = { 696 }, turnin = { 1453, 50.5, 87.5 } }
Q[698] = { name = "Lack of Surplus", level = 40, minLevel = 35, map = 1435, x = 44.7, y = 57.2, giver = "Dar", faction = "Horde", turnin = { 1435, 81.3, 81.0 } }
Q[699] = { name = "Lack of Surplus", level = 42, minLevel = 35, map = 1435, x = 81.3, y = 81.0, giver = "Tok'Kar", faction = "Horde", pre = { 698 }, turnin = { 1435, 81.3, 81.0 } }
Q[700] = { name = "A King's Tribute", level = 31, minLevel = 25, map = 1455, x = 39.0, y = 88.0, giver = "Grand Mason Marblesten", faction = "Alliance", pre = { 689 }, turnin = { 1455, 39.1, 56.2 } }
Q[701] = { name = "Guile of the Raptor", level = 37, minLevel = 29, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", faction = "Horde", pre = { 675 }, turnin = { 1417, 74.7, 36.3 } }
Q[702] = { name = "Guile of the Raptor", level = 37, minLevel = 29, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", faction = "Horde", pre = { 701 }, turnin = { 1417, 72.6, 33.9 } }
Q[703] = { name = "Barbecued Buzzard Wings", level = 40, minLevel = 33, map = 1418, x = 42.4, y = 52.9, giver = "Rigglefuzz", group = true, turnin = { 1418, 42.4, 52.9 } }
Q[704] = { name = "Agmond's Fate", level = 38, minLevel = 30, map = 1432, x = 65.9, y = 65.6, giver = "Prospector Ironband", faction = "Alliance", pre = { 739 }, dungeon = "Uldaman", turnin = { 1432, 65.9, 65.6 } }
Q[705] = { name = "Pearl Diving", level = 37, minLevel = 30, map = 1418, x = 42.4, y = 52.9, giver = "Rigglefuzz", turnin = { 1418, 42.4, 52.9 } }
Q[706] = { name = "Fiery Blaze Enchantments", level = 45, minLevel = 40, map = 1418, x = 53.8, y = 43.3, giver = "Sigrun Ironhew", faction = "Alliance", group = true, turnin = { 1418, 53.8, 43.3 } }
Q[707] = { name = "Ironband Wants You!", level = 37, minLevel = 30, map = 1455, x = 74.6, y = 11.7, giver = "Prospector Stormpike", faction = "Alliance", turnin = { 1432, 65.9, 65.6 } }
Q[709] = { name = "Solution to Doom", level = 40, minLevel = 30, map = 1418, x = 51.4, y = 76.9, giver = "Theldurin the Lost", dungeon = "Uldaman", turnin = { 1418, 51.4, 76.9 } }
Q[710] = { name = "Study of the Elements: Rock", level = 37, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", turnin = { 1418, 25.9, 44.9 } }
Q[711] = { name = "Study of the Elements: Rock", level = 39, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", pre = { 710 }, turnin = { 1418, 25.9, 44.9 } }
Q[712] = { name = "Study of the Elements: Rock", level = 42, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", pre = { 711 }, turnin = { 1418, 25.9, 44.9 } }
Q[713] = { name = "Coolant Heads Prevail", level = 37, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", turnin = { 1418, 25.9, 44.9 } }
Q[714] = { name = "Gyro... What?", level = 37, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", pre = { 713 }, turnin = { 1418, 25.9, 44.9 } }
Q[715] = { name = "Liquid Stone", level = 37, minLevel = 35, map = 1418, x = 25.8, y = 44.2, giver = "Lucien Tosselwrench", pre = { 714 }, group = true, turnin = { 1418, 25.8, 44.2 } }
Q[716] = { name = "Stone Is Better than Cloth", level = 42, minLevel = 35, map = 1418, x = 25.8, y = 44.2, giver = "Lucien Tosselwrench", pre = { 712 }, turnin = { 1418, 25.8, 44.2 } }
Q[717] = { name = "Tremors of the Earth", level = 50, minLevel = 40, map = 1418, x = 61.9, y = 54.3, giver = "Garek", faction = "Alliance", pre = { 732 }, group = true, turnin = { 1418, 61.9, 54.3 } }
Q[718] = { name = "Mirages", level = 38, minLevel = 35, map = 1418, x = 53.8, y = 43.3, giver = "Sigrun Ironhew", faction = "Alliance", turnin = { 1418, 53.8, 43.3 } }
Q[719] = { name = "A Dwarf and His Tools", level = 35, minLevel = 35, map = 1418, x = 53.4, y = 43.4, giver = "Prospector Ryedol", faction = "Alliance", turnin = { 1418, 53.4, 43.4 } }
Q[720] = { name = "A Sign of Hope", level = 35, minLevel = 35, map = 1418, x = 53.0, y = 33.9, giver = "Crumpled Map", faction = "Alliance", turnin = { 1418, 53.4, 43.4 } }
Q[721] = { name = "A Sign of Hope", level = 35, minLevel = 35, map = 1418, x = 53.4, y = 43.4, giver = "Prospector Ryedol", faction = "Alliance", pre = { 720 }, dungeon = "Uldaman", turnin = { 1418, 37.9, 10.6 } }
Q[722] = { name = "Amulet of Secrets", level = 40, minLevel = 35, map = 1418, x = 37.9, y = 10.6, giver = "Hammertoe Grez", faction = "Alliance", pre = { 721 }, dungeon = "Uldaman", turnin = { 1418, 37.9, 10.6 } }
Q[723] = { name = "Prospect of Faith", level = 40, minLevel = 35, map = 1418, x = 37.9, y = 10.6, giver = "Hammertoe Grez", faction = "Alliance", pre = { 722 }, turnin = { 1418, 53.4, 43.4 } }
Q[724] = { name = "Prospect of Faith", level = 40, minLevel = 35, map = 1418, x = 53.4, y = 43.4, giver = "Prospector Ryedol", faction = "Alliance", pre = { 723 }, turnin = { 1455, 77.5, 11.8 } }
Q[725] = { name = "Passing Word of a Threat", level = 40, minLevel = 35, map = 1455, x = 77.5, y = 11.8, giver = "Historian Karnik", faction = "Alliance", pre = { 724 }, turnin = { 1455, 77.3, 9.7 } }
Q[726] = { name = "Passing Word of a Threat", level = 40, minLevel = 35, map = 1455, x = 77.3, y = 9.7, giver = "Advisor Belgrum", faction = "Alliance", pre = { 725 }, turnin = { 1455, 77.5, 11.8 } }
Q[727] = { name = "To Ironforge for Yagyin's Digest", level = 40, minLevel = 30, map = 1418, x = 51.4, y = 76.9, giver = "Theldurin the Lost", faction = "Alliance", pre = { 709 }, turnin = { 1455, 50.8, 5.6 } }
Q[728] = { name = "To the Undercity for Yagyin's Digest", level = 40, minLevel = 30, map = 1418, x = 51.4, y = 76.9, giver = "Theldurin the Lost", faction = "Horde", pre = { 709 }, turnin = { 1458, 53.7, 54.5 } }
Q[729] = { name = "The Absent Minded Prospector", level = 20, minLevel = 15, map = 1439, x = 37.4, y = 41.8, giver = "Archaeologist Hollee", faction = "Alliance", turnin = { 1439, 35.7, 83.7 } }
Q[730] = { name = "Trouble In Darkshore?", level = 14, minLevel = 14, map = 1457, x = 31.2, y = 84.5, giver = "Chief Archaeologist Greywhisker", faction = "Alliance", turnin = { 1439, 37.4, 41.8 } }
Q[731] = { name = "The Absent Minded Prospector", level = 20, minLevel = 15, map = 1439, x = 35.7, y = 83.7, giver = "Prospector Remtravel", faction = "Alliance", pre = { 729 }, turnin = { 1439, 37.4, 41.8 } }
Q[732] = { name = "Tremors of the Earth", level = 43, minLevel = 40, map = 1418, x = 61.9, y = 54.3, giver = "Garek", faction = "Alliance", pre = { 718 }, turnin = { 1418, 61.9, 54.3 } }
Q[733] = { name = "Scrounging", level = 40, minLevel = 35, map = 1418, x = 53.8, y = 43.3, giver = "Sigrun Ironhew", faction = "Alliance", pre = { 718 }, turnin = { 1418, 53.8, 43.3 } }
Q[734] = { name = "This Is Going to Be Hard", level = 42, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", pre = { 712, 714 }, turnin = { 1418, 25.8, 44.2 } }
Q[737] = { name = "Forbidden Knowledge", level = 40, minLevel = 30, map = 1458, x = 53.7, y = 54.5, giver = "Keeper Bel'dugur", alliance = { map = 1455, x = 50.8, y = 5.6, giver = "Gerrig Bonegrip" }, turnin = { 1418, 51.4, 76.9 } }
Q[738] = { name = "Find Agmond", level = 38, minLevel = 30, map = 1432, x = 65.9, y = 65.6, giver = "Prospector Ironband", faction = "Alliance", turnin = { 1418, 50.9, 62.4 } }
Q[739] = { name = "Murdaloc", level = 42, minLevel = 30, map = 1418, x = 50.9, y = 62.4, giver = "Battered Dwarven Skeleton", faction = "Alliance", pre = { 738 }, turnin = { 1432, 65.9, 65.6 } }
Q[741] = { name = "The Absent Minded Prospector", level = 20, minLevel = 15, map = 1439, x = 37.4, y = 41.8, giver = "Archaeologist Hollee", faction = "Alliance", pre = { 731 }, turnin = { 1457, 31.2, 84.5 } }
Q[742] = { name = "The Ashenvale Hunt", level = 20, minLevel = 20, map = 1456, x = 44.3, y = 58.8, giver = "Bluff Runner Windstrider", faction = "Horde", turnin = { 1440, 73.8, 61.5 } }
Q[743] = { name = "Dangers of the Windfury", level = 8, minLevel = 5, map = 1412, x = 46.5, y = 64.9, giver = "Ruul Eagletalon", faction = "Horde", turnin = { 1412, 46.5, 64.9 } }
Q[744] = { name = "Preparation for Ceremony", level = 11, minLevel = 7, map = 1456, x = 37.8, y = 59.6, giver = "Eyahn Eagletalon", faction = "Horde", turnin = { 1456, 37.8, 59.6 } }
Q[745] = { name = "Sharing the Land", level = 8, minLevel = 1, map = 1412, x = 46.7, y = 63.4, giver = "Baine Bloodhoof", faction = "Horde", turnin = { 1412, 46.7, 63.4 } }
Q[746] = { name = "Dwarven Digging", level = 8, minLevel = 6, map = 1412, x = 46.7, y = 63.4, giver = "Baine Bloodhoof", faction = "Horde", turnin = { 1412, 46.7, 63.4 } }
Q[747] = { name = "The Hunt Begins", level = 2, minLevel = 1, map = 1412, x = 44.5, y = 77.5, giver = "Grull Hawkwind", faction = "Horde", turnin = { 1412, 44.5, 77.5 } }
Q[748] = { name = "Poison Water", level = 5, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", faction = "Horde", race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[749] = { name = "The Ravaged Caravan", level = 8, minLevel = 5, map = 1412, x = 54.8, y = 64.3, giver = "Morin Cloudstalker", faction = "Horde", turnin = { 1412, 51.9, 53.4 } }
Q[750] = { name = "The Hunt Continues", level = 3, minLevel = 1, map = 1412, x = 44.5, y = 77.5, giver = "Grull Hawkwind", faction = "Horde", pre = { 747 }, turnin = { 1412, 44.5, 77.5 } }
Q[751] = { name = "The Ravaged Caravan", level = 8, minLevel = 5, map = 1412, x = 51.9, y = 53.4, giver = "Sealed Supply Crate", faction = "Horde", pre = { 749 }, turnin = { 1412, 54.8, 64.3 } }
Q[752] = { name = "A Humble Task", level = 2, minLevel = 1, map = 1412, x = 43.9, y = 76.7, giver = "Chief Hawkwind", faction = "Horde", turnin = { 1412, 48.8, 80.9 } }
Q[753] = { name = "A Humble Task", level = 3, minLevel = 1, map = 1412, x = 48.8, y = 80.9, giver = "Greatmother Hawkwind", faction = "Horde", turnin = { 1412, 43.9, 76.7 } }
Q[754] = { name = "Winterhoof Cleansing", level = 6, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", faction = "Horde", pre = { 748 }, race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[755] = { name = "Rites of the Earthmother", level = 3, minLevel = 1, map = 1412, x = 43.9, y = 76.7, giver = "Chief Hawkwind", faction = "Horde", pre = { 753 }, turnin = { 1412, 42.5, 90.1 } }
Q[756] = { name = "Thunderhorn Totem", level = 7, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", faction = "Horde", pre = { 754 }, race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[757] = { name = "Rite of Strength", level = 4, minLevel = 1, map = 1412, x = 42.5, y = 90.1, giver = "Seer Graytongue", faction = "Horde", pre = { 755 }, turnin = { 1412, 43.9, 76.7 } }
Q[758] = { name = "Thunderhorn Cleansing", level = 8, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", faction = "Horde", pre = { 756 }, race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[759] = { name = "Wildmane Totem", level = 10, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", faction = "Horde", pre = { 758 }, race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[760] = { name = "Wildmane Cleansing", level = 10, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", faction = "Horde", pre = { 759 }, race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[761] = { name = "Swoop Hunting", level = 6, minLevel = 4, map = 1412, x = 47.7, y = 62.7, giver = "Harken Windtotem", faction = "Horde", turnin = { 1412, 47.7, 62.7 } }
Q[762] = { name = "An Ambassador of Evil", level = 44, minLevel = 35, map = 1455, x = 77.5, y = 11.8, giver = "Historian Karnik", faction = "Alliance", pre = { 726 }, group = true, turnin = { 1455, 77.3, 9.7 } }
Q[763] = { name = "Rites of the Earthmother", level = 5, minLevel = 1, map = 1412, x = 43.9, y = 76.7, giver = "Chief Hawkwind", faction = "Horde", pre = { 757 }, turnin = { 1412, 46.7, 63.4 } }
Q[764] = { name = "The Venture Co.", level = 10, minLevel = 5, map = 1412, x = 54.8, y = 64.3, giver = "Morin Cloudstalker", faction = "Horde", pre = { 751 }, turnin = { 1412, 54.8, 64.3 } }
Q[765] = { name = "Supervisor Fizsprocket", level = 12, minLevel = 5, map = 1412, x = 54.8, y = 64.3, giver = "Morin Cloudstalker", faction = "Horde", pre = { 751 }, turnin = { 1412, 54.8, 64.3 } }
Q[766] = { name = "Mazzranache", level = 8, minLevel = 5, map = 1412, x = 46.2, y = 60.8, giver = "Maur Raincaller", faction = "Horde", turnin = { 1412, 46.2, 60.8 } }
Q[767] = { name = "Rite of Vision", level = 6, minLevel = 3, map = 1412, x = 46.7, y = 63.4, giver = "Baine Bloodhoof", faction = "Horde", turnin = { 1412, 46.9, 61.2 } }
Q[771] = { name = "Rite of Vision", level = 7, minLevel = 3, map = 1412, x = 46.9, y = 61.2, giver = "Zarlman Two-Moons", faction = "Horde", pre = { 767 }, group = true, turnin = { 1412, 46.9, 61.2 } }
Q[772] = { name = "Rite of Vision", level = 7, minLevel = 3, map = 1412, x = 46.9, y = 61.2, giver = "Zarlman Two-Moons", faction = "Horde", pre = { 771 }, turnin = { 1412, 34.3, 43.3 } }
Q[773] = { name = "Rite of Wisdom", level = 10, minLevel = 3, map = 1412, x = 34.3, y = 43.3, giver = "Seer Wiserunner", faction = "Horde", pre = { 772 }, turnin = { 1412, 58.3, 30.7 } }
Q[775] = { name = "Journey into Thunder Bluff", level = 10, minLevel = 3, map = 1412, x = 58.3, y = 30.7, giver = "Ancestral Spirit", faction = "Horde", pre = { 773 }, turnin = { 1456, 60.3, 51.7 } }
Q[776] = { name = "Rites of the Earthmother", level = 14, minLevel = 3, map = 1456, x = 60.3, y = 51.7, giver = "Cairne Bloodhoof", faction = "Horde", pre = { 775 }, turnin = { 1456, 60.3, 51.7 } }
Q[777] = { name = "This Is Going to Be Hard", level = 42, minLevel = 35, map = 1418, x = 25.8, y = 44.2, giver = "Lucien Tosselwrench", pre = { 734 }, turnin = { 1418, 25.9, 44.9 } }
Q[778] = { name = "This Is Going to Be Hard", level = 45, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", pre = { 777 }, turnin = { 1418, 25.9, 44.9 } }
Q[780] = { name = "The Battleboars", level = 4, minLevel = 1, map = 1412, x = 44.5, y = 77.5, giver = "Grull Hawkwind", faction = "Horde", pre = { 750 }, turnin = { 1412, 44.5, 77.5 } }
Q[781] = { name = "Attack on Camp Narache", level = 4, minLevel = 1, map = 1412, x = 59.8, y = 82.2, giver = "Drop: Dirt-stained Map", faction = "Horde", turnin = { 1412, 43.9, 76.7 } }
Q[782] = { name = "Broken Alliances", level = 43, minLevel = 40, map = 1418, x = 2.9, y = 45.6, giver = "Gorn", faction = "Horde", turnin = { 1418, 2.9, 45.6 } }
Q[783] = { name = "A Threat Within", level = 1, minLevel = 1, map = 1429, x = 48.2, y = 42.9, giver = "Deputy Willem", faction = "Alliance", turnin = { 1429, 48.9, 41.6 } }
Q[784] = { name = "Vanquish the Betrayers", level = 7, minLevel = 3, map = 1411, x = 52.0, y = 43.5, giver = "Gar'Thok", faction = "Horde", turnin = { 1411, 52.0, 43.5 } }
Q[786] = { name = "Thwarting Kolkar Aggression", level = 8, minLevel = 5, map = 1411, x = 54.4, y = 74.3, giver = "Lar Prowltusk", faction = "Horde", turnin = { 1411, 54.4, 74.3 } }
Q[787] = { name = "The New Horde", level = 1, minLevel = 1, map = 1454, x = 34.3, y = 39.4, giver = "Eitrigg", faction = "Horde", turnin = { 1411, 42.1, 68.3 } }
Q[788] = { name = "Cutting Teeth", level = 2, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", turnin = { 1411, 42.1, 68.3 } }
Q[789] = { name = "Sting of the Scorpid", level = 3, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, turnin = { 1411, 42.1, 68.3 } }
Q[790] = { name = "Sarkoth", level = 5, minLevel = 1, map = 1411, x = 40.6, y = 62.6, giver = "Hana'zua", faction = "Horde", turnin = { 1411, 40.6, 62.6 } }
Q[791] = { name = "Carry Your Weight", level = 7, minLevel = 4, map = 1411, x = 49.9, y = 40.4, giver = "Furl Scornbrow", faction = "Horde", turnin = { 1411, 49.9, 40.4 } }
Q[792] = { name = "Vile Familiars", level = 4, minLevel = 2, map = 1411, x = 42.9, y = 69.2, giver = "Zureetha Fargaze", faction = "Horde", turnin = { 1411, 42.9, 69.2 } }
Q[793] = { name = "Broken Alliances", level = 50, minLevel = 40, map = 1418, x = 2.9, y = 45.6, giver = "Gorn", faction = "Horde", pre = { 782 }, group = true, turnin = { 1418, 2.9, 45.6 } }
Q[794] = { name = "Burning Blade Medallion", level = 5, minLevel = 1, map = 1411, x = 42.9, y = 69.2, giver = "Zureetha Fargaze", faction = "Horde", turnin = { 1411, 42.9, 69.2 } }
Q[804] = { name = "Sarkoth", level = 5, minLevel = 1, map = 1411, x = 40.6, y = 62.6, giver = "Hana'zua", faction = "Horde", pre = { 790 }, turnin = { 1411, 42.1, 68.3 } }
Q[805] = { name = "Report to Sen'jin Village", level = 5, minLevel = 1, map = 1411, x = 42.9, y = 69.2, giver = "Zureetha Fargaze", faction = "Horde", pre = { 794 }, turnin = { 1411, 56.0, 74.7 } }
Q[806] = { name = "Dark Storms", level = 12, minLevel = 4, map = 1411, x = 52.2, y = 43.1, giver = "Orgnil Soulscar", faction = "Horde", pre = { 823 }, turnin = { 1411, 52.2, 43.1 } }
Q[808] = { name = "Minshina's Skull", level = 9, minLevel = 4, map = 1411, x = 56.0, y = 74.7, giver = "Master Gadrin", faction = "Horde", turnin = { 1411, 56.0, 74.7 } }
Q[809] = { name = "Ak'Zeloth", level = 13, minLevel = 4, map = 1454, x = 49.5, y = 50.6, giver = "Neeru Fireblade", faction = "Horde", pre = { 829 }, turnin = { 1413, 62.3, 20.1 } }
Q[812] = { name = "Need for a Cure", level = 9, minLevel = 7, map = 1411, x = 41.5, y = 18.6, giver = "Rhinag", faction = "Horde", turnin = { 1411, 41.5, 18.6 } }
Q[815] = { name = "Break a Few Eggs", level = 8, minLevel = 6, map = 1411, x = 51.1, y = 42.5, giver = "Cook Torka", faction = "Horde", turnin = { 1411, 51.1, 42.5 } }
Q[816] = { name = "Lost But Not Forgotten", level = 11, minLevel = 8, map = 1411, x = 43.1, y = 30.2, giver = "Misha Tor'kren", faction = "Horde", turnin = { 1411, 43.1, 30.2 } }
Q[817] = { name = "Practical Prey", level = 8, minLevel = 5, map = 1411, x = 56.0, y = 73.9, giver = "Vel'rin Fang", faction = "Horde", turnin = { 1411, 56.0, 73.9 } }
Q[818] = { name = "A Solvent Spirit", level = 7, minLevel = 5, map = 1411, x = 55.9, y = 74.4, giver = "Master Vornal", faction = "Horde", turnin = { 1411, 55.9, 74.4 } }
Q[819] = { name = "Chen's Empty Keg", level = 15, minLevel = 11, map = 1413, x = 43.8, y = 12.2, giver = "Drop: Chen's Empty Keg", faction = "Horde", turnin = { 1413, 62.3, 38.4 } }
Q[821] = { name = "Chen's Empty Keg", level = 15, minLevel = 11, map = 1413, x = 62.3, y = 38.4, giver = "Brewmaster Drohn", faction = "Horde", pre = { 819 }, group = true, turnin = { 1413, 62.3, 38.4 } }
Q[823] = { name = "Report to Orgnil", level = 7, minLevel = 4, map = 1411, x = 56.0, y = 74.7, giver = "Master Gadrin", faction = "Horde", turnin = { 1411, 52.2, 43.1 } }
Q[824] = { name = "Je'neu of the Earthen Ring", level = 27, minLevel = 23, map = 1440, x = 73.7, y = 60, giver = "Mastok Wrilehiss", faction = "Horde", pre = { 1918 }, turnin = { 1440, 11.6, 34.3 } }
Q[825] = { name = "From The Wreckage....", level = 8, minLevel = 3, map = 1411, x = 52.0, y = 43.5, giver = "Gar'Thok", faction = "Horde", pre = { 784 }, turnin = { 1411, 52.0, 43.5 } }
Q[826] = { name = "Zalazane", level = 10, minLevel = 4, map = 1411, x = 56.0, y = 74.7, giver = "Master Gadrin", faction = "Horde", turnin = { 1411, 56.0, 74.7 } }
Q[827] = { name = "Skull Rock", level = 12, minLevel = 4, map = 1411, x = 56.4, y = 20.0, giver = "Margoz", faction = "Horde", pre = { 828 }, turnin = { 1411, 56.4, 20.0 } }
Q[828] = { name = "Margoz", level = 12, minLevel = 4, map = 1411, x = 52.2, y = 43.1, giver = "Orgnil Soulscar", faction = "Horde", pre = { 806 }, turnin = { 1411, 56.4, 20.0 } }
Q[829] = { name = "Neeru Fireblade", level = 12, minLevel = 4, map = 1411, x = 56.4, y = 20.0, giver = "Margoz", faction = "Horde", pre = { 827 }, turnin = { 1454, 49.5, 50.6 } }
Q[830] = { name = "The Admiral's Orders", level = 7, minLevel = 1, map = 1411, x = 59.3, y = 57.6, giver = "Drop: Aged Envelope", faction = "Horde", turnin = { 1411, 52.0, 43.5 } }
Q[831] = { name = "The Admiral's Orders", level = 7, minLevel = 1, map = 1411, x = 52.0, y = 43.5, giver = "Gar'Thok", faction = "Horde", pre = { 830 }, turnin = { 1454, 32.3, 35.8 } }
Q[832] = { name = "Burning Shadows", level = 12, minLevel = 4, map = 1411, x = 52.6, y = 8.8, giver = "Drop: Eye of Burning Shadow", faction = "Horde", turnin = { 1454, 49.5, 50.6 } }
Q[833] = { name = "A Sacred Burial", level = 10, minLevel = 7, map = 1412, x = 57.0, y = 34.5, giver = "Lorekeeper Raintotem", faction = "Horde", turnin = { 1412, 57.0, 34.5 } }
Q[834] = { name = "Winds in the Desert", level = 9, minLevel = 7, map = 1411, x = 46.4, y = 22.9, giver = "Rezlak", turnin = { 1411, 46.4, 22.9 } }
Q[835] = { name = "Securing the Lines", level = 11, minLevel = 7, map = 1411, x = 46.4, y = 22.9, giver = "Rezlak", pre = { 834 }, turnin = { 1411, 46.4, 22.9 } }
Q[836] = { name = "Rescue OOX-09/HL!", level = 48, minLevel = 43, map = 1425, x = 49.4, y = 37.7, giver = "Homing Robot OOX-09/HL", pre = { 485 }, turnin = { 1434, 28.4, 76.3 } }
Q[837] = { name = "Encroachment", level = 10, minLevel = 6, map = 1411, x = 52.0, y = 43.5, giver = "Gar'Thok", faction = "Horde", turnin = { 1411, 52.0, 43.5 } }
Q[838] = { name = "Scholomance", level = 55, minLevel = 55, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", faction = "Horde", pre = { 5098 }, turnin = { 1420, 83.3, 69.2 } }
Q[840] = { name = "Conscript of the Horde", level = 12, minLevel = 10, map = 1411, x = 50.8, y = 43.6, giver = "Takrin Pathseeker", faction = "Horde", turnin = { 1413, 62.3, 19.4 } }
Q[842] = { name = "Crossroads Conscription", level = 12, minLevel = 10, map = 1413, x = 62.3, y = 19.4, giver = "Kargal Battlescar", faction = "Horde", pre = { 840 }, turnin = { 1413, 52.2, 31.0 } }
Q[843] = { name = "Gann's Reclamation", level = 23, minLevel = 17, map = 1413, x = 45.9, y = 77, giver = "Gann Stonespire", faction = "Horde", turnin = { 1413, 45.9, 77 } }
Q[844] = { name = "Plainstrider Menace", level = 12, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", faction = "Horde", turnin = { 1413, 52.2, 31.0 } }
Q[845] = { name = "The Zhevra", level = 13, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", faction = "Horde", pre = { 844 }, turnin = { 1413, 52.2, 31.0 } }
Q[846] = { name = "Revenge of Gann", level = 26, minLevel = 17, map = 1413, x = 45.9, y = 77, giver = "Gann Stonespire", faction = "Horde", pre = { 843 }, turnin = { 1413, 45.9, 77 } }
Q[847] = { name = "Guile of the Raptor", level = 37, minLevel = 29, map = 1417, x = 72.6, y = 33.9, giver = "Gor'mul", faction = "Horde", pre = { 702 }, turnin = { 1417, 74.7, 36.3 } }
Q[848] = { name = "Fungal Spores", level = 15, minLevel = 10, map = 1413, x = 51.4, y = 30.1, giver = "Apothecary Helbrim", faction = "Horde", turnin = { 1413, 51.4, 30.1 } }
Q[849] = { name = "Revenge of Gann", level = 26, minLevel = 17, map = 1413, x = 45.9, y = 77, giver = "Gann Stonespire", faction = "Horde", pre = { 846 }, turnin = { 1413, 45.9, 77 } }
Q[850] = { name = "Kolkar Leaders", level = 16, minLevel = 11, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", faction = "Horde", turnin = { 1413, 45.3, 28.4 } }
Q[851] = { name = "Verog the Dervish", level = 18, minLevel = 11, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", faction = "Horde", pre = { 850 }, turnin = { 1413, 45.3, 28.4 } }
Q[852] = { name = "Hezrul Bloodmark", level = 19, minLevel = 11, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", faction = "Horde", pre = { 851 }, turnin = { 1413, 45.3, 28.4 } }
Q[853] = { name = "Apothecary Zamah", level = 15, minLevel = 10, map = 1413, x = 51.4, y = 30.1, giver = "Apothecary Helbrim", faction = "Horde", pre = { 848 }, turnin = { 1456, 22.8, 20.9 } }
Q[854] = { name = "Journey to the Crossroads", level = 12, minLevel = 9, map = 1413, x = 44.9, y = 58.6, giver = "Kirge Sternhorn", faction = "Horde", race = { TAUREN = true }, turnin = { 1413, 51.5, 30.9 } }
Q[855] = { name = "Centaur Bracers", level = 14, minLevel = 9, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", faction = "Horde", group = true, turnin = { 1413, 45.3, 28.4 } }
Q[857] = { name = "The Tear of the Moons", level = 30, minLevel = 22, map = 1413, x = 49.0, y = 86.3, giver = "Feegly the Exiled", faction = "Horde", turnin = { 1413, 49.0, 86.3 } }
Q[858] = { name = "Ignition", level = 18, minLevel = 13, map = 1413, x = 56.5, y = 7.5, giver = "Wizzlecrank's Shredder", turnin = { 1413, 56.5, 7.5 } }
Q[860] = { name = "Sergra Darkthorn", level = 10, minLevel = 10, map = 1456, x = 61.5, y = 80.9, giver = "Melor Stonehoof", faction = "Horde", pre = { 861 }, turnin = { 1413, 52.2, 31.0 } }
Q[861] = { name = "The Hunter's Way", level = 10, minLevel = 10, map = 1412, x = 46.0, y = 63.4, giver = "Skorn Whitecloud", faction = "Horde", turnin = { 1456, 61.5, 80.9 } }
Q[863] = { name = "The Escape", level = 18, minLevel = 13, map = 1413, x = 56.5, y = 7.5, giver = "Wizzlecrank's Shredder", pre = { 858 }, turnin = { 1413, 63.0, 37.2 } }
Q[864] = { name = "Return to Apothecary Zinge", level = 46, minLevel = 38, map = 1446, x = 52.5, y = 28.5, giver = "Chief Engineer Bilgewhizzle", faction = "Horde", pre = { 654 }, turnin = { 1458, 50.1, 68.0 } }
Q[865] = { name = "Raptor Horns", level = 18, minLevel = 13, map = 1413, x = 62.4, y = 37.6, giver = "Mebok Mizzyrix", group = true, turnin = { 1413, 62.4, 37.6 } }
Q[867] = { name = "Harpy Raiders", level = 15, minLevel = 12, map = 1413, x = 51.6, y = 30.9, giver = "Darsok Swiftdagger", faction = "Horde", turnin = { 1413, 51.6, 30.9 } }
Q[868] = { name = "Egg Hunt", level = 22, minLevel = 17, map = 1413, x = 51.1, y = 29.6, giver = "Korran", faction = "Horde", turnin = { 1413, 51.1, 29.6 } }
Q[869] = { name = "Raptor Thieves", level = 13, minLevel = 9, map = 1413, x = 51.9, y = 30.3, giver = "Gazrog", faction = "Horde", group = true, turnin = { 1413, 51.9, 30.3 } }
Q[870] = { name = "The Forgotten Pools", level = 13, minLevel = 10, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", faction = "Horde", turnin = { 1413, 52.3, 31.9 } }
Q[871] = { name = "Disrupt the Attacks", level = 12, minLevel = 9, map = 1413, x = 51.5, y = 30.9, giver = "Thork", faction = "Horde", turnin = { 1413, 51.5, 30.9 } }
Q[872] = { name = "The Disruption Ends", level = 15, minLevel = 9, map = 1413, x = 51.5, y = 30.9, giver = "Thork", faction = "Horde", pre = { 871 }, turnin = { 1413, 51.5, 30.9 } }
Q[875] = { name = "Harpy Lieutenants", level = 16, minLevel = 12, map = 1413, x = 51.6, y = 30.9, giver = "Darsok Swiftdagger", faction = "Horde", pre = { 867 }, turnin = { 1413, 51.6, 30.9 } }
Q[876] = { name = "Serena Bloodfeather", level = 20, minLevel = 12, map = 1413, x = 51.6, y = 30.9, giver = "Darsok Swiftdagger", faction = "Horde", pre = { 875 }, turnin = { 1413, 51.6, 30.9 } }
Q[877] = { name = "The Stagnant Oasis", level = 16, minLevel = 10, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", faction = "Horde", pre = { 870 }, turnin = { 1413, 52.3, 31.9 } }
Q[878] = { name = "Tribes at War", level = 21, minLevel = 14, map = 1413, x = 44.5, y = 59.3, giver = "Mangletooth", faction = "Horde", turnin = { 1413, 44.5, 59.3 } }
Q[879] = { name = "Betrayal from Within", level = 25, minLevel = 17, map = 1413, x = 44.5, y = 59.3, giver = "Mangletooth", faction = "Horde", pre = { 5052 }, turnin = { 1413, 44.5, 59.3 } }
Q[880] = { name = "Altered Beings", level = 16, minLevel = 10, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", faction = "Horde", pre = { 877 }, turnin = { 1413, 52.3, 31.9 } }
Q[881] = { name = "Echeyakee", level = 16, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", faction = "Horde", pre = { 903 }, turnin = { 1413, 52.2, 31.0 } }
Q[882] = { name = "Ishamuhale", level = 19, minLevel = 10, map = 1413, x = 44.9, y = 59.1, giver = "Jorn Skyseer", faction = "Horde", pre = { 3261 }, turnin = { 1413, 44.9, 59.1 } }
Q[883] = { name = "Lakota'mani", level = 22, minLevel = 10, map = 1413, x = 47.4, y = 51.3, giver = "Drop: Hoof of Lakota'mani", faction = "Horde", turnin = { 1413, 44.9, 59.1 } }
Q[886] = { name = "The Barrens Oases", level = 10, minLevel = 10, map = 1456, x = 78.6, y = 28.6, giver = "Arch Druid Hamuul Runetotem", faction = "Horde", turnin = { 1413, 52.3, 31.9 } }
Q[887] = { name = "Southsea Freebooters", level = 14, minLevel = 9, map = 1413, x = 62.7, y = 36.2, giver = "Gazlowe", turnin = { 1413, 62.7, 36.2 } }
Q[888] = { name = "Stolen Booty", level = 16, minLevel = 9, map = 1413, x = 62.7, y = 36.2, giver = "Gazlowe", pre = { 892 }, turnin = { 1413, 62.7, 36.2 } }
Q[890] = { name = "The Missing Shipment", level = 14, minLevel = 9, map = 1413, x = 62.7, y = 36.2, giver = "Gazlowe", pre = { 887 }, turnin = { 1413, 63.4, 38.5 } }
Q[891] = { name = "The Guns of Northwatch", level = 20, minLevel = 13, map = 1413, x = 62.3, y = 39.0, giver = "Captain Thalo'thas Brightsun", faction = "Horde", turnin = { 1413, 62.3, 39.0 } }
Q[892] = { name = "The Missing Shipment", level = 14, minLevel = 9, map = 1413, x = 63.4, y = 38.5, giver = "Wharfmaster Dizzywig", pre = { 890 }, turnin = { 1413, 62.7, 36.2 } }
Q[893] = { name = "Weapons of Choice", level = 24, minLevel = 17, map = 1413, x = 45.1, y = 57.7, giver = "Tatternack Steelforge", faction = "Horde", turnin = { 1413, 45.1, 57.7 } }
Q[894] = { name = "Samophlange", level = 14, minLevel = 10, map = 1413, x = 63.0, y = 37.2, giver = "Sputtervalve", turnin = { 1413, 52.4, 11.7 } }
Q[895] = { name = "WANTED: Baron Longshore", level = 16, minLevel = 11, map = 1413, x = 62.6, y = 37.5, giver = "WANTED", turnin = { 1413, 62.7, 36.2 } }
Q[896] = { name = "Miner's Fortune", level = 18, minLevel = 13, map = 1413, x = 63.4, y = 38.5, giver = "Wharfmaster Dizzywig", turnin = { 1413, 63.4, 38.5 } }
Q[898] = { name = "Free From the Hold", level = 20, minLevel = 13, map = 1413, x = 62.0, y = 55.0, giver = "Gilthares Firebough", faction = "Horde", turnin = { 1413, 62.3, 39.0 } }
Q[899] = { name = "Consumed by Hatred", level = 20, minLevel = 14, map = 1413, x = 52.0, y = 31.6, giver = "Mankrik", faction = "Horde", turnin = { 1413, 52.0, 31.6 } }
Q[900] = { name = "Samophlange", level = 14, minLevel = 10, map = 1413, x = 52.4, y = 11.7, giver = "Control Console", pre = { 894 }, turnin = { 1413, 52.4, 11.7 } }
Q[901] = { name = "Samophlange", level = 14, minLevel = 10, map = 1413, x = 52.4, y = 11.7, giver = "Control Console", pre = { 900 }, turnin = { 1413, 52.4, 11.7 } }
Q[902] = { name = "Samophlange", level = 16, minLevel = 10, map = 1413, x = 52.4, y = 11.7, giver = "Control Console", pre = { 901 }, turnin = { 1413, 63.0, 37.2 } }
Q[903] = { name = "Prowlers of the Barrens", level = 15, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", faction = "Horde", pre = { 845 }, turnin = { 1413, 52.2, 31.0 } }
Q[905] = { name = "The Angry Scytheclaws", level = 17, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", faction = "Horde", pre = { 881 }, turnin = { 1413, 52.2, 31.0 } }
Q[906] = { name = "Betrayal from Within", level = 25, minLevel = 17, map = 1413, x = 44.5, y = 59.3, giver = "Mangletooth", faction = "Horde", pre = { 879 }, turnin = { 1413, 51.5, 30.9 } }
Q[907] = { name = "Enraged Thunder Lizards", level = 18, minLevel = 10, map = 1413, x = 44.9, y = 59.1, giver = "Jorn Skyseer", faction = "Horde", pre = { 882 }, turnin = { 1413, 44.9, 59.1 } }
Q[913] = { name = "Cry of the Thunderhawk", level = 20, minLevel = 10, map = 1413, x = 44.9, y = 59.1, giver = "Jorn Skyseer", faction = "Horde", pre = { 907 }, turnin = { 1413, 44.9, 59.1 } }
Q[914] = { name = "Leaders of the Fang", level = 22, minLevel = 11, map = 1456, x = 75.7, y = 31.6, giver = "Nara Wildmane", faction = "Horde", pre = { 1490 }, dungeon = "Wailing Caverns", turnin = { 1456, 75.7, 31.6 } }
Q[916] = { name = "Webwood Venom", level = 4, minLevel = 3, map = 1438, x = 57.8, y = 41.6, giver = "Gilshalan Windwalker", faction = "Alliance", turnin = { 1438, 57.8, 41.6 } }
Q[917] = { name = "Webwood Egg", level = 5, minLevel = 1, map = 1438, x = 57.8, y = 41.6, giver = "Gilshalan Windwalker", faction = "Alliance", pre = { 916 }, turnin = { 1438, 57.8, 41.6 } }
Q[918] = { name = "Timberling Seeds", level = 7, minLevel = 4, map = 1438, x = 60.9, y = 68.5, giver = "Denalan", faction = "Alliance", group = true, turnin = { 1438, 60.9, 68.5 } }
Q[919] = { name = "Timberling Sprouts", level = 7, minLevel = 4, map = 1438, x = 60.9, y = 68.5, giver = "Denalan", faction = "Alliance", turnin = { 1438, 60.9, 68.5 } }
Q[920] = { name = "Tenaron's Summons", level = 5, minLevel = 1, map = 1438, x = 57.8, y = 41.6, giver = "Gilshalan Windwalker", faction = "Alliance", pre = { 917 }, turnin = { 1438, 59.1, 39.5 } }
Q[921] = { name = "Crown of the Earth", level = 5, minLevel = 1, map = 1438, x = 59.1, y = 39.5, giver = "Tenaron Stormgrip", faction = "Alliance", pre = { 920 }, turnin = { 1438, 59.1, 39.5 } }
Q[922] = { name = "Rellian Greenspyre", level = 7, minLevel = 4, map = 1438, x = 60.9, y = 68.5, giver = "Denalan", faction = "Alliance", pre = { 918 }, turnin = { 1457, 38.2, 21.6 } }
Q[923] = { name = "Tumors", level = 9, minLevel = 4, map = 1457, x = 38.2, y = 21.6, giver = "Rellian Greenspyre", faction = "Alliance", pre = { 922 }, turnin = { 1457, 38.2, 21.6 } }
Q[924] = { name = "The Demon Seed", level = 14, minLevel = 9, map = 1413, x = 62.3, y = 20.1, giver = "Ak'Zeloth", faction = "Horde", pre = { 809 }, turnin = { 1413, 62.3, 20.1 } }
Q[928] = { name = "Crown of the Earth", level = 5, minLevel = 1, map = 1438, x = 59.1, y = 39.5, giver = "Tenaron Stormgrip", faction = "Alliance", pre = { 921 }, turnin = { 1438, 56.1, 61.7 } }
Q[929] = { name = "Crown of the Earth", level = 5, minLevel = 1, map = 1438, x = 56.1, y = 61.7, giver = "Corithras Moonrage", faction = "Alliance", pre = { 928 }, turnin = { 1438, 56.1, 61.7 } }
Q[930] = { name = "The Glowing Fruit", level = 10, minLevel = 4, map = 1438, x = 42.6, y = 76.2, giver = "Strange Fruited Plant", faction = "Alliance", pre = { 918 }, turnin = { 1438, 60.9, 68.5 } }
Q[931] = { name = "The Shimmering Frond", level = 10, minLevel = 4, map = 1438, x = 34.6, y = 28.8, giver = "Strange Fronded Plant", faction = "Alliance", pre = { 918 }, turnin = { 1438, 60.9, 68.5 } }
Q[932] = { name = "Twisted Hatred", level = 8, minLevel = 4, map = 1438, x = 55.6, y = 57.0, giver = "Tallonkai Swiftroot", faction = "Alliance", turnin = { 1438, 55.6, 57.0 } }
Q[933] = { name = "Crown of the Earth", level = 9, minLevel = 1, map = 1438, x = 56.1, y = 61.7, giver = "Corithras Moonrage", faction = "Alliance", pre = { 929 }, turnin = { 1438, 56.1, 61.7 } }
Q[935] = { name = "Crown of the Earth", level = 11, minLevel = 1, map = 1438, x = 56.1, y = 61.7, giver = "Corithras Moonrage", faction = "Alliance", pre = { 7383 }, turnin = { 1457, 34.8, 9.3 } }
Q[936] = { name = "Assisting Arch Druid Runetotem", level = 50, minLevel = 47, map = 1454, x = 54.1, y = 68.4, giver = "Innkeeper Gryshka", faction = "Horde", turnin = { 1456, 78.6, 28.6 } }
Q[937] = { name = "The Enchanted Glade", level = 11, minLevel = 6, map = 1438, x = 38.3, y = 34.4, giver = "Sentinel Arynia Cloudsbreak", faction = "Alliance", turnin = { 1438, 38.3, 34.4 } }
Q[938] = { name = "Mist", level = 12, minLevel = 7, map = 1438, x = 31.5, y = 31.6, giver = "Mist", faction = "Alliance", turnin = { 1438, 38.3, 34.4 } }
Q[939] = { name = "Flute of Xavaric", level = 54, minLevel = 49, map = 1448, x = 39.1, y = 22.4, giver = "Drop: Flute of Xavaric", faction = "Alliance", turnin = { 1448, 51.4, 81.5 } }
Q[940] = { name = "Teldrassil", level = 11, minLevel = 6, map = 1438, x = 37.0, y = 34.0, giver = "Oracle Tree Bark", faction = "Alliance", pre = { 98398 }, turnin = { 1457, 34.8, 9.3 } }
Q[941] = { name = "Planting the Heart", level = 12, minLevel = 9, map = 1438, x = 60.9, y = 68.5, giver = "Denalan", faction = "Alliance", pre = { 927 }, turnin = { 1438, 60.8, 68.6 } }
Q[942] = { name = "The Absent Minded Prospector", level = 20, minLevel = 15, map = 1457, x = 31.2, y = 84.5, giver = "Chief Archaeologist Greywhisker", faction = "Alliance", pre = { 741 }, turnin = { 1437, 10.8, 60.4 } }
Q[943] = { name = "The Absent Minded Prospector", level = 24, minLevel = 15, map = 1437, x = 10.8, y = 60.4, giver = "Archaeologist Flagongut", faction = "Alliance", pre = { 942 }, turnin = { 1437, 10.8, 60.4 } }
Q[944] = { name = "The Master's Glaive", level = 17, minLevel = 12, map = 1439, x = 43.5, y = 76.3, giver = "Onu", faction = "Alliance", pre = { 948 }, turnin = { 1439, 38.6, 86.2 } }
Q[945] = { name = "Therylune's Escape", level = 18, minLevel = 10, map = 1439, x = 38.6, y = 87.3, giver = "Therylune", faction = "Alliance", turnin = { 1440, 22.6, 51.9 } }
Q[947] = { name = "Cave Mushrooms", level = 17, minLevel = 12, map = 1439, x = 37.3, y = 43.6, giver = "Barithras Moonshade", faction = "Alliance", turnin = { 1439, 37.3, 43.6 } }
Q[948] = { name = "Onu", level = 17, minLevel = 12, map = 1439, x = 37.3, y = 43.6, giver = "Barithras Moonshade", faction = "Alliance", pre = { 947 }, turnin = { 1439, 43.5, 76.3 } }
Q[949] = { name = "The Twilight Camp", level = 17, minLevel = 12, map = 1439, x = 38.6, y = 86.2, giver = "Scrying Bowl", faction = "Alliance", pre = { 944 }, turnin = { 1439, 38.5, 86.0 } }
Q[950] = { name = "Return to Onu", level = 17, minLevel = 12, map = 1439, x = 38.5, y = 86.0, giver = "Twilight Tome", faction = "Alliance", pre = { 949 }, turnin = { 1439, 43.5, 76.3 } }
Q[951] = { name = "Mathystra Relics", level = 20, minLevel = 12, map = 1439, x = 43.5, y = 76.3, giver = "Onu", faction = "Alliance", pre = { 950 }, turnin = { 1439, 43.5, 76.3 } }
Q[952] = { name = "Grove of the Ancients", level = 17, minLevel = 6, map = 1457, x = 34.8, y = 9.3, giver = "Arch Druid Fandral Staghelm", faction = "Alliance", pre = { 940 }, turnin = { 1439, 43.5, 76.3 } }
Q[953] = { name = "The Fall of Ameth'Aran", level = 12, minLevel = 9, map = 1439, x = 40.3, y = 59.7, giver = "Sentinel Tysha Moonblade", faction = "Alliance", turnin = { 1439, 40.3, 59.7 } }
Q[954] = { name = "Bashal'Aran", level = 12, minLevel = 7, map = 1439, x = 37.4, y = 40.1, giver = "Thundris Windweaver", faction = "Alliance", turnin = { 1439, 44.2, 36.3 } }
Q[955] = { name = "Bashal'Aran", level = 12, minLevel = 7, map = 1439, x = 44.2, y = 36.3, giver = "Asterion", faction = "Alliance", pre = { 954 }, turnin = { 1439, 44.2, 36.3 } }
Q[956] = { name = "Bashal'Aran", level = 13, minLevel = 7, map = 1439, x = 44.2, y = 36.3, giver = "Asterion", faction = "Alliance", pre = { 955 }, turnin = { 1439, 44.2, 36.3 } }
Q[957] = { name = "Bashal'Aran", level = 13, minLevel = 7, map = 1439, x = 44.2, y = 36.3, giver = "Asterion", faction = "Alliance", pre = { 956 }, turnin = { 1439, 44.2, 36.3 } }
Q[958] = { name = "Tools of the Highborne", level = 12, minLevel = 9, map = 1439, x = 37.4, y = 40.1, giver = "Thundris Windweaver", faction = "Alliance", turnin = { 1439, 37.4, 40.1 } }
Q[959] = { name = "Trouble at the Docks", level = 18, minLevel = 14, map = 1413, x = 63.1, y = 37.6, giver = "Crane Operator Bigglefuzz", dungeon = "Wailing Caverns", turnin = { 1413, 63.1, 37.6 } }
Q[962] = { name = "Serpentbloom", level = 18, minLevel = 14, map = 1456, x = 22.8, y = 20.9, giver = "Apothecary Zamah", faction = "Horde", dungeon = "Wailing Caverns", turnin = { 1456, 22.8, 20.9 } }
Q[963] = { name = "For Love Eternal", level = 16, minLevel = 11, map = 1439, x = 35.7, y = 43.7, giver = "Cerellean Whiteclaw", faction = "Alliance", turnin = { 1439, 35.7, 43.7 } }
Q[964] = { name = "Skeletal Fragments", level = 57, minLevel = 55, map = 1420, x = 83.3, y = 69.2, giver = "Apothecary Dithers", faction = "Horde", pre = { 838 }, group = true, turnin = { 1420, 83.3, 69.2 } }
Q[965] = { name = "The Tower of Althalaxx", level = 18, minLevel = 13, map = 1439, x = 39.0, y = 43.5, giver = "Sentinel Elissa Starbreeze", faction = "Alliance", turnin = { 1439, 55.0, 24.9 } }
Q[966] = { name = "The Tower of Althalaxx", level = 18, minLevel = 13, map = 1439, x = 55.0, y = 24.9, giver = "Balthule Shadowstrike", faction = "Alliance", pre = { 965 }, turnin = { 1439, 55.0, 24.9 } }
Q[967] = { name = "The Tower of Althalaxx", level = 18, minLevel = 13, map = 1439, x = 55.0, y = 24.9, giver = "Balthule Shadowstrike", faction = "Alliance", pre = { 966 }, turnin = { 1440, 26.2, 38.7 } }
Q[968] = { name = "The Powers Below", level = 20, minLevel = 10, map = 1439, x = 39.1, y = 86.6, giver = "Drop: Book: The Powers Below", faction = "Alliance", turnin = { 1455, 50.8, 5.6 } }
Q[969] = { name = "Luck Be With You", level = 60, minLevel = 55, map = 1452, x = 61.9, y = 38.3, giver = "Witch Doctor Mau'ari", group = true, turnin = { 1452, 61.9, 38.3 } }
Q[970] = { name = "The Tower of Althalaxx", level = 21, minLevel = 13, map = 1440, x = 26.2, y = 38.7, giver = "Delgren the Purifier", faction = "Alliance", pre = { 967 }, turnin = { 1440, 26.2, 38.7 } }
Q[973] = { name = "The Tower of Althalaxx", level = 24, minLevel = 13, map = 1440, x = 26.2, y = 38.7, giver = "Delgren the Purifier", faction = "Alliance", pre = { 970 }, turnin = { 1440, 26.2, 38.7 } }
Q[974] = { name = "Finding the Source", level = 55, minLevel = 51, map = 1449, x = 30.9, y = 50.4, giver = "Krakle", turnin = { 1449, 30.9, 50.4 } }
Q[975] = { name = "Cache of Mau'ari", level = 60, minLevel = 55, map = 1452, x = 61.9, y = 38.3, giver = "Witch Doctor Mau'ari", pre = { 969 }, turnin = { 1452, 61.9, 38.3 } }
Q[976] = { name = "Supplies to Auberdine", level = 24, minLevel = 19, map = 1440, x = 26.2, y = 38.9, giver = "Feero Ironhand", faction = "Alliance", pre = { 973 }, turnin = { 1440, 26.2, 38.7 } }
Q[977] = { name = "Are We There, Yeti?", level = 58, minLevel = 52, map = 1452, x = 60.9, y = 37.6, giver = "Umi Rumplesnicker", pre = { 3783 }, turnin = { 1452, 60.9, 37.6 } }
Q[978] = { name = "Moontouched Wildkin", level = 55, minLevel = 52, map = 1438, x = 55.5, y = 92.0, giver = "Erelas Ambersky", faction = "Alliance", pre = { 3661 }, turnin = { 1438, 55.5, 92.0 } }
Q[979] = { name = "Find Ranshalla", level = 57, minLevel = 52, map = 1438, x = 55.5, y = 92.0, giver = "Erelas Ambersky", faction = "Alliance", pre = { 978 }, turnin = { 1452, 63.1, 59.5 } }
Q[980] = { name = "The New Springs", level = 55, minLevel = 51, map = 1449, x = 30.9, y = 50.4, giver = "Krakle", pre = { 974 }, turnin = { 1452, 31.3, 45.2 } }
Q[982] = { name = "Deep Ocean, Vast Sea", level = 17, minLevel = 13, map = 1439, x = 38.1, y = 41.2, giver = "Gorbold Steelhand", faction = "Alliance", turnin = { 1439, 38.1, 41.2 } }
Q[983] = { name = "Buzzbox 827", level = 10, minLevel = 7, map = 1439, x = 37.0, y = 44.1, giver = "Wizbang Cranktoggle", faction = "Alliance", turnin = { 1439, 36.6, 46.3 } }
Q[984] = { name = "How Big a Threat?", level = 14, minLevel = 10, map = 1439, x = 39.4, y = 43.5, giver = "Terenthis", faction = "Alliance", turnin = { 1439, 39.4, 43.5 } }
Q[985] = { name = "How Big a Threat?", level = 14, minLevel = 10, map = 1439, x = 39.4, y = 43.5, giver = "Terenthis", faction = "Alliance", pre = { 984 }, turnin = { 1439, 39.4, 43.5 } }
Q[986] = { name = "A Lost Master", level = 20, minLevel = 10, map = 1439, x = 39.4, y = 43.5, giver = "Terenthis", faction = "Alliance", pre = { 985 }, turnin = { 1439, 39.4, 43.5 } }
Q[990] = { name = "Trek to Ashenvale", level = 19, minLevel = 15, map = 1439, x = 39.3, y = 43.5, giver = "Sentinel Selarin", faction = "Alliance", turnin = { 1440, 36.6, 49.6 } }
Q[991] = { name = "Raene's Cleansing", level = 19, minLevel = 18, map = 1440, x = 36.6, y = 49.6, giver = "Raene Wolfrunner", faction = "Alliance", turnin = { 1440, 20.3, 42.3 } }
Q[992] = { name = "Gadgetzan Water Survey", level = 46, minLevel = 38, map = 1446, x = 50.2, y = 27.5, giver = "Senior Surveyor Fizzledowser", turnin = { 1446, 50.2, 27.5 } }
Q[993] = { name = "A Lost Master", level = 20, minLevel = 10, map = 1439, x = 39.4, y = 43.5, giver = "Terenthis", faction = "Alliance", pre = { 986 }, turnin = { 1439, 45.0, 85.3 } }
Q[994] = { name = "Escape Through Force", level = 22, minLevel = 10, map = 1439, x = 45.0, y = 85.3, giver = "Volcor", faction = "Alliance", pre = { 993 }, turnin = { 1439, 39.4, 43.5 } }
Q[995] = { name = "Escape Through Stealth", level = 20, minLevel = 10, map = 1439, x = 45.0, y = 85.3, giver = "Volcor", faction = "Alliance", pre = { 993 }, turnin = { 1439, 39.4, 43.5 } }
Q[997] = { name = "Denalan's Earth", level = 5, minLevel = 4, map = 1438, x = 56.1, y = 57.7, giver = "Syral Bladeleaf", faction = "Alliance", turnin = { 1438, 60.9, 68.5 } }
Q[1000] = { name = "The New Frontier", level = 55, minLevel = 54, map = 1456, x = 44.3, y = 58.8, giver = "Bluff Runner Windstrider", faction = "Horde", turnin = { 1456, 78.6, 28.6 } }
Q[1001] = { name = "Buzzbox 411", level = 12, minLevel = 7, map = 1439, x = 36.6, y = 46.3, giver = "Buzzbox 827", faction = "Alliance", pre = { 983 }, turnin = { 1439, 42.0, 28.6 } }
Q[1002] = { name = "Buzzbox 323", level = 14, minLevel = 7, map = 1439, x = 42.0, y = 28.6, giver = "Buzzbox 411", faction = "Alliance", pre = { 1001 }, turnin = { 1439, 51.3, 24.6 } }
Q[1003] = { name = "Buzzbox 525", level = 16, minLevel = 7, map = 1439, x = 51.3, y = 24.6, giver = "Buzzbox 323", faction = "Alliance", pre = { 1002 }, turnin = { 1439, 41.4, 80.6 } }
Q[1004] = { name = "The New Frontier", level = 55, minLevel = 54, map = 1458, x = 63.9, y = 44.1, giver = "Harbinger Balthazad", faction = "Horde", turnin = { 1456, 78.6, 28.6 } }
Q[1007] = { name = "The Ancient Statuette", level = 20, minLevel = 19, map = 1440, x = 14.8, y = 31.3, giver = "Talen", faction = "Alliance", turnin = { 1440, 14.8, 31.3 } }
Q[1008] = { name = "The Zoram Strand", level = 19, minLevel = 14, map = 1440, x = 34.7, y = 48.8, giver = "Shindrell Swiftfire", faction = "Alliance", turnin = { 1440, 34.7, 48.8 } }
Q[1009] = { name = "Ruuzel", level = 25, minLevel = 20, map = 1440, x = 14.8, y = 31.3, giver = "Talen", faction = "Alliance", pre = { 1007 }, turnin = { 1440, 14.8, 31.3 } }
Q[1010] = { name = "Bathran's Hair", level = 20, minLevel = 20, map = 1440, x = 26.4, y = 38.6, giver = "Orendil Broadleaf", faction = "Alliance", turnin = { 1440, 26.4, 38.6 } }
Q[1011] = { name = "Forsaken Diseases", level = 29, minLevel = 24, map = 1440, x = 85.2, y = 44.7, giver = "Kayneth Stillwind", faction = "Alliance", turnin = { 1440, 85.2, 44.7 } }
Q[1012] = { name = "Insane Druids", level = 32, minLevel = 24, map = 1440, x = 85.2, y = 44.7, giver = "Kayneth Stillwind", faction = "Alliance", pre = { 1011 }, turnin = { 1440, 85.2, 44.7 } }
Q[1013] = { name = "The Book of Ur", level = 26, minLevel = 16, map = 1458, x = 53.7, y = 54.5, giver = "Keeper Bel'dugur", faction = "Horde", dungeon = "Shadowfang Keep", turnin = { 1458, 53.7, 54.5 } }
Q[1014] = { name = "Arugal Must Die", level = 27, minLevel = 18, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", faction = "Horde", dungeon = "Shadowfang Keep", turnin = { 1421, 44.2, 39.8 } }
Q[1015] = { name = "The New Frontier", level = 55, minLevel = 54, map = 1453, x = 56.4, y = 74.1, giver = "Crier Goodman", faction = "Alliance", turnin = { 1457, 34.8, 9.3 } }
Q[1016] = { name = "Elemental Bracers", level = 24, minLevel = 20, map = 1440, x = 49.8, y = 67.2, giver = "Sentinel Velene Starstrike", faction = "Alliance", turnin = { 1440, 49.8, 67.2 } }
Q[1017] = { name = "Mage Summoner", level = 25, minLevel = 20, map = 1440, x = 49.8, y = 67.2, giver = "Sentinel Velene Starstrike", faction = "Alliance", pre = { 1016 }, turnin = { 1440, 49.8, 67.2 } }
Q[1018] = { name = "The New Frontier", level = 55, minLevel = 54, map = 1454, x = 37.7, y = 75.2, giver = "Warcaller Gorlach", faction = "Horde", turnin = { 1456, 78.6, 28.6 } }
Q[1019] = { name = "The New Frontier", level = 55, minLevel = 54, map = 1455, x = 55.9, y = 81.4, giver = "Courier Hammerfall", faction = "Alliance", turnin = { 1457, 34.8, 9.3 } }
Q[1020] = { name = "Orendil's Cure", level = 20, minLevel = 20, map = 1440, x = 26.4, y = 38.6, giver = "Orendil Broadleaf", faction = "Alliance", pre = { 1010 }, turnin = { 1440, 37.4, 51.8 } }
Q[1021] = { name = "Vile Satyr! Dryads in Danger!", level = 32, minLevel = 26, map = 1440, x = 21.7, y = 53.3, giver = "Illiyana", faction = "Alliance", turnin = { 1440, 78.3, 44.8 } }
Q[1022] = { name = "The Howling Vale", level = 30, minLevel = 25, map = 1440, x = 22.2, y = 53.0, giver = "Sentinel Melyria Frostshadow", faction = "Alliance", turnin = { 1440, 22.2, 53.0 } }
Q[1023] = { name = "Raene's Cleansing", level = 21, minLevel = 18, map = 1440, x = 20.3, y = 42.3, giver = "Teronis' Corpse", faction = "Alliance", pre = { 991 }, turnin = { 1440, 36.6, 49.6 } }
Q[1024] = { name = "Raene's Cleansing", level = 21, minLevel = 18, map = 1440, x = 36.6, y = 49.6, giver = "Raene Wolfrunner", faction = "Alliance", pre = { 1023 }, turnin = { 1440, 53.5, 46.2 } }
Q[1025] = { name = "An Aggressive Defense", level = 24, minLevel = 18, map = 1440, x = 36.6, y = 49.6, giver = "Raene Wolfrunner", faction = "Alliance", pre = { 1023 }, turnin = { 1440, 36.6, 49.6 } }
Q[1026] = { name = "Raene's Cleansing", level = 27, minLevel = 18, map = 1440, x = 53.5, y = 46.2, giver = "Shael'dryn", faction = "Alliance", pre = { 1024 }, turnin = { 1440, 53.5, 46.2 } }
Q[1027] = { name = "Raene's Cleansing", level = 28, minLevel = 18, map = 1440, x = 53.5, y = 46.2, giver = "Shael'dryn", faction = "Alliance", pre = { 1026 }, turnin = { 1440, 53.5, 46.2 } }
Q[1028] = { name = "Raene's Cleansing", level = 28, minLevel = 18, map = 1440, x = 53.5, y = 46.2, giver = "Shael'dryn", faction = "Alliance", pre = { 1027 }, turnin = { 1440, 56.4, 49.2 } }
Q[1029] = { name = "Raene's Cleansing", level = 28, minLevel = 18, map = 1440, x = 53.5, y = 46.2, giver = "Shael'dryn", faction = "Alliance", pre = { 1055 }, turnin = { 1440, 36.6, 49.6 } }
Q[1030] = { name = "Raene's Cleansing", level = 28, minLevel = 18, map = 1440, x = 36.6, y = 49.6, giver = "Raene Wolfrunner", faction = "Alliance", pre = { 1029 }, turnin = { 1440, 50.8, 75.1 } }
Q[1031] = { name = "The Branch of Cenarius", level = 32, minLevel = 26, map = 1440, x = 78.3, y = 44.8, giver = "Anilia", faction = "Alliance", pre = { 1021 }, turnin = { 1440, 21.7, 53.3 } }
Q[1032] = { name = "Satyr Slaying!", level = 32, minLevel = 26, map = 1440, x = 21.7, y = 53.3, giver = "Illiyana", faction = "Alliance", pre = { 1031 }, turnin = { 1440, 21.7, 53.3 } }
Q[1033] = { name = "Elune's Tear", level = 22, minLevel = 20, map = 1440, x = 37.4, y = 51.8, giver = "Pelturas Whitemoon", faction = "Alliance", pre = { 1020 }, turnin = { 1440, 37.4, 51.8 } }
Q[1034] = { name = "The Ruins of Stardust", level = 23, minLevel = 20, map = 1440, x = 37.4, y = 51.8, giver = "Pelturas Whitemoon", faction = "Alliance", pre = { 1033 }, turnin = { 1440, 37.4, 51.8 } }
Q[1035] = { name = "Fallen Sky Lake", level = 30, minLevel = 20, map = 1440, x = 37.4, y = 51.8, giver = "Pelturas Whitemoon", faction = "Alliance", pre = { 1034 }, turnin = { 1440, 37.4, 51.8 } }
Q[1036] = { name = "Avast Ye, Scallywag", level = 60, minLevel = 55, map = 1434, x = 27.4, y = 69.4, giver = "\"Pretty Boy\" Duncan", turnin = { 1434, 30.6, 90.6 } }
Q[1037] = { name = "Velinde Starsong", level = 30, minLevel = 25, map = 1440, x = 22.2, y = 53.0, giver = "Sentinel Melyria Frostshadow", faction = "Alliance", pre = { 1022 }, turnin = { 1457, 61.8, 39.2 } }
Q[1038] = { name = "Velinde's Effects", level = 30, minLevel = 25, map = 1457, x = 61.8, y = 39.2, giver = "Thyn'tel Bladeweaver", faction = "Alliance", pre = { 1037 }, turnin = { 1457, 61.8, 39.2 } }
Q[1039] = { name = "The Barrens Port", level = 30, minLevel = 25, map = 1457, x = 61.8, y = 39.2, giver = "Thyn'tel Bladeweaver", faction = "Alliance", pre = { 1038 }, turnin = { 1413, 63.4, 38.5 } }
Q[1040] = { name = "Passage to Booty Bay", level = 30, minLevel = 25, map = 1413, x = 63.4, y = 38.5, giver = "Wharfmaster Dizzywig", faction = "Alliance", pre = { 1039 }, turnin = { 1434, 27.4, 74.1 } }
Q[1041] = { name = "The Caravan Road", level = 30, minLevel = 25, map = 1434, x = 27.4, y = 74.1, giver = "Caravaneer Ruzzgot", faction = "Alliance", pre = { 1040 }, turnin = { 1431, 72.5, 46.9 } }
Q[1042] = { name = "The Carevin Family", level = 30, minLevel = 25, map = 1431, x = 72.5, y = 46.9, giver = "Clerk Daltry", faction = "Alliance", pre = { 1041 }, turnin = { 1431, 75.3, 49.0 } }
Q[1043] = { name = "The Scythe of Elune", level = 30, minLevel = 25, map = 1431, x = 75.3, y = 49.0, giver = "Jonathan Carevin", faction = "Alliance", pre = { 1042 }, turnin = { 1431, 75.3, 49.0 } }
Q[1044] = { name = "Answered Questions", level = 30, minLevel = 25, map = 1431, x = 75.3, y = 49.0, giver = "Jonathan Carevin", faction = "Alliance", pre = { 1043 }, turnin = { 1457, 61.8, 39.2 } }
Q[1045] = { name = "Raene's Cleansing", level = 30, minLevel = 18, map = 1440, x = 50.8, y = 75.1, giver = "Krolg", faction = "Alliance", pre = { 1030 }, turnin = { 1440, 50.8, 75.1 } }
Q[1046] = { name = "Raene's Cleansing", level = 30, minLevel = 18, map = 1440, x = 50.8, y = 75.1, giver = "Krolg", faction = "Alliance", pre = { 1045 }, turnin = { 1440, 36.6, 49.6 } }
Q[1047] = { name = "The New Frontier", level = 55, minLevel = 54, map = 1457, x = 47.8, y = 82.0, giver = "Herald Moonstalker", faction = "Alliance", turnin = { 1457, 34.8, 9.3 } }
Q[1048] = { name = "Into The Scarlet Monastery", level = 42, minLevel = 33, map = 1458, x = 56.2, y = 92.2, giver = "Varimathras", faction = "Horde", dungeon = "Scarlet Monastery", turnin = { 1458, 56.2, 92.2 } }
Q[1049] = { name = "Compendium of the Fallen", level = 38, minLevel = 28, map = 1456, x = 34.4, y = 46.9, giver = "Sage Truthseeker", faction = "Horde", race = { ORC = true, TAUREN = true, TROLL = true }, dungeon = "Scarlet Monastery", turnin = { 1456, 34.4, 46.9 } }
Q[1050] = { name = "Mythology of the Titans", level = 38, minLevel = 28, map = 1455, x = 75.0, y = 12.5, giver = "Librarian Mae Paledust", faction = "Alliance", dungeon = "Scarlet Monastery", turnin = { 1455, 75.0, 12.5 } }
Q[1052] = { name = "Down the Scarlet Path", level = 40, minLevel = 34, map = 1443, x = 66.5, y = 7.9, giver = "Brother Anton", faction = "Alliance", pre = { 261 }, turnin = { 1424, 51.5, 58.4 } }
Q[1053] = { name = "In the Name of the Light", level = 40, minLevel = 34, map = 1424, x = 51.5, y = 58.4, giver = "Raleigh the Devout", faction = "Alliance", pre = { 1052 }, dungeon = "Scarlet Monastery", turnin = { 1424, 51.5, 58.4 } }
Q[1054] = { name = "Culling the Threat", level = 25, minLevel = 18, map = 1440, x = 36.6, y = 49.6, giver = "Raene Wolfrunner", faction = "Alliance", turnin = { 1440, 36.6, 49.6 } }
Q[1055] = { name = "Raene's Cleansing", level = 28, minLevel = 18, map = 1440, x = 56.4, y = 49.2, giver = "Hidden Shrine", faction = "Alliance", pre = { 1028 }, turnin = { 1440, 53.5, 46.2 } }
Q[1056] = { name = "Journey to Stonetalon Peak", level = 18, minLevel = 18, map = 1440, x = 35.8, y = 49.1, giver = "Faldreas Goeth'Shael", faction = "Alliance", turnin = { 1442, 37.1, 8.1 } }
Q[1057] = { name = "Reclaiming the Charred Vale", level = 27, minLevel = 20, map = 1442, x = 37.1, y = 8.1, giver = "Keeper Albagorm", faction = "Alliance", turnin = { 1442, 37.1, 8.1 } }
Q[1058] = { name = "Jin'Zil's Forest Magic", level = 26, minLevel = 20, map = 1442, x = 74.5, y = 97.9, giver = "Witch Doctor Jin'Zil", faction = "Horde", group = true, turnin = { 1442, 74.5, 97.9 } }
Q[1059] = { name = "Reclaiming the Charred Vale", level = 27, minLevel = 20, map = 1442, x = 37.1, y = 8.1, giver = "Keeper Albagorm", faction = "Alliance", pre = { 1057 }, turnin = { 1444, 89.6, 46.6 } }
Q[1060] = { name = "Letter to Jin'Zil", level = 20, minLevel = 15, map = 1413, x = 51.6, y = 30.9, giver = "Darsok Swiftdagger", faction = "Horde", pre = { 876 }, turnin = { 1442, 74.5, 97.9 } }
Q[1061] = { name = "The Spirits of Stonetalon", level = 17, minLevel = 13, map = 1454, x = 38.9, y = 38.4, giver = "Zor Lonetree", faction = "Horde", turnin = { 1413, 35.3, 27.9 } }
Q[1062] = { name = "Goblin Invaders", level = 19, minLevel = 13, map = 1413, x = 35.3, y = 27.9, giver = "Seereth Stonebreak", faction = "Horde", turnin = { 1413, 35.3, 27.9 } }
Q[1063] = { name = "The Elder Crone", level = 18, minLevel = 13, map = 1413, x = 35.3, y = 27.9, giver = "Seereth Stonebreak", faction = "Horde", pre = { 1062 }, turnin = { 1456, 69.8, 30.9 } }
Q[1064] = { name = "Forsaken Aid", level = 18, minLevel = 13, map = 1456, x = 69.8, y = 30.9, giver = "Magatha Grimtotem", faction = "Horde", pre = { 1063 }, turnin = { 1456, 22.8, 20.9 } }
Q[1065] = { name = "Journey to Tarren Mill", level = 18, minLevel = 13, map = 1456, x = 22.8, y = 20.9, giver = "Apothecary Zamah", faction = "Horde", pre = { 1064 }, turnin = { 1424, 61.4, 19.1 } }
Q[1066] = { name = "Blood of Innocents", level = 23, minLevel = 13, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", pre = { 1065 }, turnin = { 1424, 61.4, 19.1 } }
Q[1067] = { name = "Return to Thunder Bluff", level = 23, minLevel = 13, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", pre = { 1066 }, turnin = { 1456, 22.8, 20.9 } }
Q[1068] = { name = "Shredding Machines", level = 23, minLevel = 13, map = 1413, x = 35.3, y = 27.9, giver = "Seereth Stonebreak", faction = "Horde", pre = { 1062 }, turnin = { 1413, 35.3, 27.9 } }
Q[1069] = { name = "Deepmoss Spider Eggs", level = 20, minLevel = 15, map = 1413, x = 62.4, y = 37.6, giver = "Mebok Mizzyrix", turnin = { 1413, 62.4, 37.6 } }
Q[1070] = { name = "On Guard in Stonetalon", level = 21, minLevel = 17, map = 1440, x = 34.9, y = 49.8, giver = "Sentinel Thenysil", faction = "Alliance", turnin = { 1442, 59.9, 66.8 } }
Q[1071] = { name = "A Gnome's Respite", level = 21, minLevel = 17, map = 1442, x = 59.5, y = 67.2, giver = "Gaxim Rustfizzle", faction = "Alliance", pre = { 1085 }, turnin = { 1442, 59.5, 67.2 } }
Q[1072] = { name = "An Old Colleague", level = 21, minLevel = 17, map = 1442, x = 59.5, y = 67.2, giver = "Gaxim Rustfizzle", faction = "Alliance", pre = { 1071 }, turnin = { 1455, 72.1, 51.9 } }
Q[1073] = { name = "Ineptitude + Chemicals = Fun", level = 21, minLevel = 17, map = 1455, x = 72.1, y = 51.9, giver = "Lomac Gearstrip", faction = "Alliance", pre = { 1072 }, group = true, turnin = { 1455, 72.1, 51.9 } }
Q[1074] = { name = "Ineptitude + Chemicals = Fun", level = 21, minLevel = 17, map = 1455, x = 72.1, y = 51.9, giver = "Lomac Gearstrip", faction = "Alliance", pre = { 1073 }, turnin = { 1442, 59.5, 67.2 } }
Q[1075] = { name = "A Scroll from Mauren", level = 21, minLevel = 17, map = 1442, x = 59.5, y = 67.2, giver = "Gaxim Rustfizzle", faction = "Alliance", pre = { 1071 }, turnin = { 1453, 53.0, 86.6 } }
Q[1076] = { name = "Devils in Westfall", level = 21, minLevel = 17, map = 1453, x = 53.0, y = 86.6, giver = "Collin Mauren", faction = "Alliance", pre = { 1075 }, turnin = { 1453, 53.0, 86.6 } }
Q[1077] = { name = "Special Delivery for Gaxim", level = 21, minLevel = 17, map = 1453, x = 53.0, y = 86.6, giver = "Collin Mauren", faction = "Alliance", pre = { 1076 }, turnin = { 1442, 59.5, 67.2 } }
Q[1078] = { name = "Retrieval for Mauren", level = 26, minLevel = 17, map = 1453, x = 53.0, y = 86.6, giver = "Collin Mauren", faction = "Alliance", turnin = { 1453, 53.0, 86.6 } }
Q[1079] = { name = "Covert Ops - Alpha", level = 22, minLevel = 17, map = 1442, x = 59.5, y = 67.2, giver = "Gaxim Rustfizzle", faction = "Alliance", pre = { 1077, 1074 }, turnin = { 1442, 59.5, 67.2 } }
Q[1080] = { name = "Covert Ops - Beta", level = 22, minLevel = 17, map = 1442, x = 59.5, y = 67.2, giver = "Gaxim Rustfizzle", faction = "Alliance", pre = { 1077, 1074 }, turnin = { 1442, 59.5, 67.2 } }
Q[1081] = { name = "Reception from Tyrande", level = 28, minLevel = 17, map = 1440, x = 34.9, y = 49.8, giver = "Sentinel Thenysil", faction = "Alliance", pre = { 1082 }, turnin = { 1457, 39.1, 81.6 } }
Q[1082] = { name = "Update for Sentinel Thenysil", level = 22, minLevel = 17, map = 1442, x = 59.9, y = 66.8, giver = "Kaela Shadowspear", faction = "Alliance", pre = { 1083, 1084 }, turnin = { 1440, 34.9, 49.8 } }
Q[1083] = { name = "Enraged Spirits", level = 26, minLevel = 20, map = 1442, x = 59.9, y = 66.8, giver = "Kaela Shadowspear", faction = "Alliance", pre = { 1091 }, turnin = { 1442, 59.9, 66.8 } }
Q[1084] = { name = "Wounded Ancients", level = 28, minLevel = 22, map = 1442, x = 59.9, y = 66.8, giver = "Kaela Shadowspear", faction = "Alliance", pre = { 1091 }, turnin = { 1442, 59.9, 66.8 } }
Q[1085] = { name = "On Guard in Stonetalon", level = 21, minLevel = 17, map = 1442, x = 59.9, y = 66.8, giver = "Kaela Shadowspear", faction = "Alliance", turnin = { 1442, 59.5, 67.2 } }
Q[1086] = { name = "The Flying Machine Airport", level = 23, minLevel = 13, map = 1456, x = 22.8, y = 20.9, giver = "Apothecary Zamah", faction = "Horde", pre = { 1067 }, turnin = { 1456, 22.8, 20.9 } }
Q[1087] = { name = "Cenarius' Legacy", level = 25, minLevel = 20, map = 1442, x = 45.9, y = 60.4, giver = "Braelyn Firehand", faction = "Horde", turnin = { 1442, 45.9, 60.4 } }
Q[1088] = { name = "Ordanus", level = 29, minLevel = 20, map = 1442, x = 45.9, y = 60.4, giver = "Braelyn Firehand", faction = "Horde", pre = { 1087 }, turnin = { 1442, 45.9, 60.4 } }
Q[1089] = { name = "The Den", level = 29, minLevel = 20, map = 1442, x = 45.9, y = 60.4, giver = "Braelyn Firehand", faction = "Horde", pre = { 1088 }, turnin = { 1442, 26.6, 10.9 } }
Q[1090] = { name = "Gerenzo's Orders", level = 22, minLevel = 17, map = 1442, x = 71.9, y = 60, giver = "Piznik", turnin = { 1442, 71.9, 60 } }
Q[1091] = { name = "Kaela's Update", level = 22, minLevel = 17, map = 1442, x = 59.5, y = 67.2, giver = "Gaxim Rustfizzle", faction = "Alliance", pre = { 1079, 1080 }, turnin = { 1442, 59.9, 66.8 } }
Q[1092] = { name = "Gerenzo's Orders", level = 22, minLevel = 17, map = 1442, x = 71.9, y = 60, giver = "Piznik", pre = { 1090 }, turnin = { 1442, 59.0, 62.6 } }
Q[1093] = { name = "Super Reaper 6000", level = 21, minLevel = 16, map = 1442, x = 59.0, y = 62.6, giver = "Ziz Fizziks", turnin = { 1442, 59.0, 62.6 } }
Q[1094] = { name = "Further Instructions", level = 21, minLevel = 16, map = 1442, x = 59.0, y = 62.6, giver = "Ziz Fizziks", pre = { 1093 }, turnin = { 1413, 63.0, 37.2 } }
Q[1095] = { name = "Further Instructions", level = 27, minLevel = 16, map = 1413, x = 63.0, y = 37.2, giver = "Sputtervalve", pre = { 1094 }, turnin = { 1442, 59.0, 62.6 } }
Q[1096] = { name = "Gerenzo Wrenchwhistle", level = 27, minLevel = 16, map = 1442, x = 59.0, y = 62.6, giver = "Ziz Fizziks", pre = { 1095 }, turnin = { 1442, 59.0, 62.6 } }
Q[1097] = { name = "Elmore's Task", level = 15, minLevel = 9, map = 1433, x = 25.9, y = 47.3, giver = "Verner Osgood", faction = "Alliance", turnin = { 1453, 59.7, 33.8 } }
Q[1098] = { name = "Deathstalkers in Shadowfang", level = 25, minLevel = 18, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", faction = "Horde", dungeon = "Shadowfang Keep" }
Q[1100] = { name = "Lonebrow's Journal", level = 34, minLevel = 29, map = 1441, x = 30.7, y = 24.4, giver = "Drop: Henrig Lonebrow's Journal", faction = "Alliance", turnin = { 1444, 89.6, 46.6 } }
Q[1101] = { name = "The Crone of the Kraul", level = 34, minLevel = 29, map = 1444, x = 89.6, y = 46.6, giver = "Falfindel Waywarder", faction = "Alliance", pre = { 1100 }, dungeon = "Razorfen Kraul", turnin = { 1444, 89.6, 46.6 } }
Q[1102] = { name = "A Vengeful Fate", level = 34, minLevel = 29, map = 1456, x = 36.0, y = 59.9, giver = "Auld Stonespire", faction = "Horde", dungeon = "Razorfen Kraul", turnin = { 1456, 36.0, 59.9 } }
Q[1104] = { name = "Salt Flat Venom", level = 30, minLevel = 28, map = 1441, x = 78.1, y = 77.1, giver = "Fizzle Brassbolts", group = true, turnin = { 1441, 78.1, 77.1 } }
Q[1105] = { name = "Hardened Shells", level = 30, minLevel = 28, map = 1441, x = 78.1, y = 77.1, giver = "Wizzle Brassbolts", turnin = { 1441, 78.1, 77.1 } }
Q[1106] = { name = "Martek the Exiled", level = 35, minLevel = 26, map = 1441, x = 78.1, y = 77.1, giver = "Fizzle Brassbolts", pre = { 1104, 1105 }, turnin = { 1418, 42.2, 52.7 } }
Q[1107] = { name = "Encrusted Tail Fins", level = 35, minLevel = 28, map = 1441, x = 78.1, y = 77.1, giver = "Wizzle Brassbolts", pre = { 1104, 1105 }, group = true, turnin = { 1441, 78.1, 77.1 } }
Q[1108] = { name = "Indurium", level = 39, minLevel = 28, map = 1418, x = 42.2, y = 52.7, giver = "Martek the Exiled", pre = { 1106 }, group = true, turnin = { 1418, 42.2, 52.7 } }
Q[1109] = { name = "Going, Going, Guano!", level = 33, minLevel = 30, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", faction = "Horde", dungeon = "Razorfen Kraul", turnin = { 1458, 48.8, 69.3 } }
Q[1110] = { name = "Rocket Car Parts", level = 31, minLevel = 28, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", turnin = { 1441, 77.8, 77.3 } }
Q[1111] = { name = "Wharfmaster Dizzywig", level = 36, minLevel = 30, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", turnin = { 1413, 63.4, 38.5 } }
Q[1112] = { name = "Parts for Kravel", level = 36, minLevel = 30, map = 1413, x = 63.4, y = 38.5, giver = "Wharfmaster Dizzywig", pre = { 1111 }, turnin = { 1441, 77.8, 77.3 } }
Q[1113] = { name = "Hearts of Zeal", level = 33, minLevel = 30, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", faction = "Horde", pre = { 1109 }, dungeon = "Scarlet Monastery", turnin = { 1458, 48.8, 69.3 } }
Q[1114] = { name = "Delivery to the Gnomes", level = 36, minLevel = 30, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", pre = { 1112 }, turnin = { 1441, 78.1, 77.1 } }
Q[1115] = { name = "The Rumormonger", level = 36, minLevel = 30, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", pre = { 1114 }, turnin = { 1434, 26.9, 77.2 } }
Q[1116] = { name = "Dream Dust in the Swamp", level = 36, minLevel = 30, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", pre = { 1115 }, group = true, turnin = { 1434, 26.9, 77.2 } }
Q[1117] = { name = "Rumors for Kravel", level = 36, minLevel = 30, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", pre = { 1116 }, turnin = { 1441, 77.8, 77.3 } }
Q[1118] = { name = "Back to Booty Bay", level = 43, minLevel = 35, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", pre = { 1117 }, turnin = { 1434, 27.1, 77.2 } }
Q[1119] = { name = "Zanzil's Mixture and a Fool's Stout", level = 44, minLevel = 35, map = 1434, x = 27.1, y = 77.2, giver = "Crank Fizzlebub", pre = { 621, 1118 }, turnin = { 1441, 77.8, 77.3 } }
Q[1120] = { name = "Get the Gnomes Drunk", level = 44, minLevel = 35, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", pre = { 1119 }, turnin = { 1441, 77.6, 76.9 } }
Q[1121] = { name = "Get the Goblins Drunk", level = 44, minLevel = 35, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", pre = { 1119 }, turnin = { 1441, 79.9, 76.7 } }
Q[1122] = { name = "Report Back to Fizzlebub", level = 44, minLevel = 35, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", turnin = { 1434, 27.1, 77.2 } }
Q[1123] = { name = "Rabine Saturna", level = 55, minLevel = 54, map = 1456, x = 78.6, y = 28.6, giver = "Arch Druid Hamuul Runetotem", faction = "Horde", turnin = { 1450, 51.7, 45.1 } }
Q[1124] = { name = "Wasteland", level = 55, minLevel = 54, map = 1450, x = 51.7, y = 45.1, giver = "Rabine Saturna", turnin = { 1451, 81.9, 18.9 } }
Q[1125] = { name = "The Spirits of Southwind", level = 55, minLevel = 54, map = 1451, x = 81.9, y = 18.9, giver = "Layo Starstrike", pre = { 1124 }, turnin = { 1451, 81.9, 18.9 } }
Q[1126] = { name = "Hive in the Tower", level = 57, minLevel = 54, map = 1451, x = 81.9, y = 18.9, giver = "Layo Starstrike", pre = { 1125 }, turnin = { 1451, 81.9, 18.9 } }
Q[1130] = { name = "Melor Sends Word", level = 30, minLevel = 20, map = 1413, x = 44.9, y = 59.1, giver = "Jorn Skyseer", faction = "Horde", turnin = { 1456, 61.5, 80.9 } }
Q[1131] = { name = "Steelsnap", level = 30, minLevel = 20, map = 1456, x = 61.5, y = 80.9, giver = "Melor Stonehoof", faction = "Horde", turnin = { 1456, 61.5, 80.9 } }
Q[1132] = { name = "Fiora Longears", level = 30, minLevel = 30, map = 1437, x = 10.0, y = 58.0, giver = "Red Jack Flint", faction = "Alliance", turnin = { 1445, 66.5, 45.1 } }
Q[1133] = { name = "Journey to Astranaar", level = 20, minLevel = 18, map = 1445, x = 66.5, y = 45.1, giver = "Fiora Longears", faction = "Alliance", turnin = { 1440, 34.7, 48.8 } }
Q[1134] = { name = "Pridewings of Stonetalon", level = 21, minLevel = 18, map = 1440, x = 34.7, y = 48.8, giver = "Shindrell Swiftfire", faction = "Alliance", pre = { 1008 }, group = true, turnin = { 1440, 34.7, 48.8 } }
Q[1135] = { name = "Highperch Venom", level = 30, minLevel = 25, map = 1445, x = 66.5, y = 45.1, giver = "Fiora Longears", faction = "Alliance", group = true, turnin = { 1445, 66.5, 45.1 } }
Q[1136] = { name = "Frostmaw", level = 37, minLevel = 26, map = 1456, x = 61.5, y = 80.9, giver = "Melor Stonehoof", faction = "Horde", pre = { 1131 }, turnin = { 1456, 61.5, 80.9 } }
Q[1137] = { name = "News for Fizzle", level = 38, minLevel = 28, map = 1418, x = 42.2, y = 52.7, giver = "Martek the Exiled", pre = { 1108 }, turnin = { 1441, 78.1, 77.1 } }
Q[1138] = { name = "Fruit of the Sea", level = 17, minLevel = 15, map = 1439, x = 36.1, y = 44.9, giver = "Gubber Blump", faction = "Alliance", turnin = { 1439, 36.1, 44.9 } }
Q[1139] = { name = "The Lost Tablets of Will", level = 45, minLevel = 35, map = 1455, x = 77.3, y = 9.7, giver = "Advisor Belgrum", faction = "Alliance", pre = { 762 }, dungeon = "Uldaman", turnin = { 1455, 77.3, 9.7 } }
Q[1141] = { name = "The Family and the Fishing Pole", level = 14, minLevel = 10, map = 1439, x = 36.1, y = 44.9, giver = "Gubber Blump", faction = "Alliance", turnin = { 1439, 36.1, 44.9 } }
Q[1145] = { name = "The Swarm Grows", level = 33, minLevel = 29, map = 1413, x = 51.1, y = 29.6, giver = "Korran", faction = "Horde", turnin = { 1454, 75.2, 34.2 } }
Q[1146] = { name = "The Swarm Grows", level = 33, minLevel = 29, map = 1454, x = 75.2, y = 34.2, giver = "Belgrom Rockmaul", faction = "Horde", pre = { 1145 }, turnin = { 1441, 67.6, 63.9 } }
Q[1147] = { name = "The Swarm Grows", level = 35, minLevel = 29, map = 1441, x = 67.6, y = 63.9, giver = "Moktar Krin", faction = "Horde", pre = { 1146 }, turnin = { 1441, 67.6, 63.9 } }
Q[1148] = { name = "Parts of the Swarm", level = 35, minLevel = 28, map = 1441, x = 68.1, y = 86.0, giver = "Drop: Cracked Silithid Carapace", faction = "Horde", pre = { 1146 }, turnin = { 1413, 51.1, 29.6 } }
Q[1149] = { name = "Test of Faith", level = 26, minLevel = 25, map = 1441, x = 54.0, y = 41.5, giver = "Dorn Plainstalker", faction = "Horde", turnin = { 1441, 54.0, 41.5 } }
Q[1150] = { name = "Test of Endurance", level = 30, minLevel = 25, map = 1441, x = 54.0, y = 41.5, giver = "Dorn Plainstalker", faction = "Horde", pre = { 1149 }, turnin = { 1441, 54.0, 41.5 } }
Q[1151] = { name = "Test of Strength", level = 30, minLevel = 25, map = 1441, x = 54.0, y = 41.5, giver = "Dorn Plainstalker", faction = "Horde", pre = { 1150 }, group = true, turnin = { 1441, 54.0, 41.5 } }
Q[1152] = { name = "Test of Lore", level = 30, minLevel = 25, map = 1441, x = 54.0, y = 41.5, giver = "Dorn Plainstalker", faction = "Horde", pre = { 1151 }, turnin = { 1442, 78.8, 45.7 } }
Q[1153] = { name = "A New Ore Sample", level = 29, minLevel = 25, map = 1413, x = 45.1, y = 57.7, giver = "Tatternack Steelforge", faction = "Horde", pre = { 893 }, turnin = { 1413, 45.1, 57.7 } }
Q[1154] = { name = "Test of Lore", level = 30, minLevel = 25, map = 1442, x = 78.8, y = 45.7, giver = "Braug Dimspirit", faction = "Horde", pre = { 1152 }, turnin = { 1442, 78.8, 45.7 } }
Q[1159] = { name = "Test of Lore", level = 30, minLevel = 25, map = 1442, x = 78.8, y = 45.7, giver = "Braug Dimspirit", faction = "Horde", pre = { 6627 }, turnin = { 1458, 57.8, 65.4 } }
Q[1160] = { name = "Test of Lore", level = 36, minLevel = 25, map = 1458, x = 57.8, y = 65.4, giver = "Parqual Fintallas", faction = "Horde", pre = { 1159 }, dungeon = "Scarlet Monastery", turnin = { 1458, 57.8, 65.4 } }
Q[1164] = { name = "To Steal From Thieves", level = 36, minLevel = 27, map = 1458, x = 63.8, y = 49.5, giver = "Genavie Callow", faction = "Horde", turnin = { 1458, 63.8, 49.5 } }
Q[1166] = { name = "Overlord Mok'Morokk's Concern", level = 43, minLevel = 38, map = 1445, x = 36.3, y = 31.4, giver = "Overlord Mok'Morokk", faction = "Horde", turnin = { 1445, 36.3, 31.4 } }
Q[1168] = { name = "Army of the Black Dragon", level = 43, minLevel = 38, map = 1445, x = 37.4, y = 31.4, giver = "Tharg", faction = "Horde", turnin = { 1445, 37.4, 31.4 } }
Q[1169] = { name = "Identifying the Brood", level = 43, minLevel = 38, map = 1445, x = 37.1, y = 33.1, giver = "Draz'Zilb", faction = "Horde", turnin = { 1445, 37.1, 33.1 } }
Q[1170] = { name = "The Brood of Onyxia", level = 43, minLevel = 38, map = 1445, x = 37.1, y = 33.1, giver = "Draz'Zilb", faction = "Horde", pre = { 1169 }, turnin = { 1445, 36.3, 31.4 } }
Q[1171] = { name = "The Brood of Onyxia", level = 43, minLevel = 38, map = 1445, x = 36.3, y = 31.4, giver = "Overlord Mok'Morokk", faction = "Horde", pre = { 1170 }, turnin = { 1445, 37.1, 33.1 } }
Q[1172] = { name = "The Brood of Onyxia", level = 45, minLevel = 38, map = 1445, x = 37.1, y = 33.1, giver = "Draz'Zilb", faction = "Horde", pre = { 1171 }, turnin = { 1445, 37.1, 33.1 } }
Q[1173] = { name = "Challenge Overlord Mok'Morokk", level = 45, minLevel = 38, map = 1445, x = 36.3, y = 31.4, giver = "Overlord Mok'Morokk", faction = "Horde", pre = { 1172 }, turnin = { 1445, 37.1, 33.1 } }
Q[1175] = { name = "A Bump in the Road", level = 33, minLevel = 28, map = 1441, x = 81.6, y = 78.0, giver = "Trackmaster Zherin", turnin = { 1441, 81.6, 78.0 } }
Q[1176] = { name = "Load Lightening", level = 30, minLevel = 29, map = 1441, x = 80.2, y = 75.9, giver = "Pozzik", turnin = { 1441, 80.2, 75.9 } }
Q[1177] = { name = "Hungry!", level = 36, minLevel = 32, map = 1445, x = 35.1, y = 38.3, giver = "Mudcrush Durtfeet", turnin = { 1445, 35.1, 38.3 } }
Q[1178] = { name = "Goblin Sponsorship", level = 37, minLevel = 29, map = 1441, x = 80.2, y = 75.9, giver = "Pozzik", pre = { 1176 }, turnin = { 1413, 62.7, 36.2 } }
Q[1179] = { name = "The Brassbolts Brothers", level = 30, minLevel = 28, map = 1455, x = 72.7, y = 94.0, giver = "Pilot Longbeard", faction = "Alliance", turnin = { 1441, 78.1, 77.1 } }
Q[1180] = { name = "Goblin Sponsorship", level = 37, minLevel = 29, map = 1413, x = 62.7, y = 36.2, giver = "Gazlowe", pre = { 1178 }, turnin = { 1434, 26.4, 73.6 } }
Q[1181] = { name = "Goblin Sponsorship", level = 37, minLevel = 29, map = 1434, x = 26.4, y = 73.6, giver = "Wharfmaster Lozgil", pre = { 1180 }, turnin = { 1434, 27.2, 76.9 } }
Q[1182] = { name = "Goblin Sponsorship", level = 37, minLevel = 29, map = 1434, x = 27.2, y = 76.9, giver = "Baron Revilgaz", pre = { 1181 }, turnin = { 1434, 27.2, 76.9 } }
Q[1183] = { name = "Goblin Sponsorship", level = 37, minLevel = 29, map = 1434, x = 27.2, y = 76.9, giver = "Baron Revilgaz", pre = { 1182 }, turnin = { 1441, 80.2, 75.9 } }
Q[1184] = { name = "Parts of the Swarm", level = 35, minLevel = 28, map = 1413, x = 51.1, y = 29.6, giver = "Korran", faction = "Horde", pre = { 1148 }, turnin = { 1454, 75.2, 34.2 } }
Q[1185] = { name = "Under the Chitin Was...", level = 57, minLevel = 54, map = 1450, x = 44.9, y = 35.6, giver = "Umber", pre = { 6845 }, turnin = { 1450, 44.9, 35.6 } }
Q[1186] = { name = "The Eighteenth Pilot", level = 37, minLevel = 29, map = 1441, x = 80.2, y = 75.9, giver = "Pozzik", pre = { 1183 }, turnin = { 1441, 80.3, 76.1 } }
Q[1187] = { name = "Razzeric's Tweaking", level = 41, minLevel = 29, map = 1441, x = 80.3, y = 76.1, giver = "Razzeric", pre = { 1186 }, turnin = { 1441, 80.3, 76.1 } }
Q[1188] = { name = "Safety First", level = 41, minLevel = 29, map = 1441, x = 80.3, y = 76.1, giver = "Razzeric", pre = { 1187 }, turnin = { 1446, 51.0, 27.2 } }
Q[1189] = { name = "Safety First", level = 41, minLevel = 29, map = 1446, x = 51.0, y = 27.2, giver = "Shreev", pre = { 1188 }, turnin = { 1441, 80.3, 76.1 } }
Q[1190] = { name = "Keeping Pace", level = 41, minLevel = 29, map = 1441, x = 80.2, y = 75.9, giver = "Pozzik", pre = { 1137 }, turnin = { 1441, 77.2, 77.4 } }
Q[1194] = { name = "Rizzle's Schematics", level = 41, minLevel = 29, map = 1441, x = 77.2, y = 77.4, giver = "Rizzle's Unguarded Plans", pre = { 1190 }, turnin = { 1441, 80.2, 75.9 } }
Q[1195] = { name = "The Sacred Flame", level = 25, minLevel = 20, map = 1456, x = 55.0, y = 51.4, giver = "Zangen Stonehoof", faction = "Horde", turnin = { 1456, 55.0, 51.4 } }
Q[1196] = { name = "The Sacred Flame", level = 29, minLevel = 20, map = 1456, x = 55.0, y = 51.4, giver = "Zangen Stonehoof", faction = "Horde", pre = { 1195 }, turnin = { 1441, 46.1, 51.7 } }
Q[1197] = { name = "The Sacred Flame", level = 29, minLevel = 20, map = 1441, x = 46.1, y = 51.7, giver = "Rau Cliffrunner", faction = "Horde", pre = { 1196 }, turnin = { 1441, 46.1, 51.7 } }
Q[1198] = { name = "In Search of Thaelrid", level = 24, minLevel = 18, map = 1457, x = 55.4, y = 25.0, giver = "Dawnwatcher Shaedlass", dungeon = "Blackfathom Deeps" }
Q[1199] = { name = "Twilight Falls", level = 25, minLevel = 20, map = 1457, x = 55.2, y = 24.0, giver = "Argent Guard Manados", faction = "Alliance", dungeon = "Blackfathom Deeps", turnin = { 1457, 55.2, 24.0 } }
Q[1201] = { name = "Theramore Spies", level = 35, minLevel = 30, map = 1445, x = 35.2, y = 30.7, giver = "Nazeer Bloodpike", faction = "Horde", turnin = { 1445, 35.2, 30.7 } }
Q[1202] = { name = "The Theramore Docks", level = 35, minLevel = 30, map = 1445, x = 35.2, y = 30.7, giver = "Nazeer Bloodpike", faction = "Horde", pre = { 1201 }, turnin = { 1445, 35.2, 30.7 } }
Q[1203] = { name = "Jarl Needs a Blade", level = 35, minLevel = 30, map = 1445, x = 55.4, y = 26.3, giver = "\"Swamp Eye\" Jarl", pre = { 1206 }, turnin = { 1445, 55.4, 26.3 } }
Q[1204] = { name = "Mudrock Soup and Bugs", level = 38, minLevel = 33, map = 1445, x = 66.3, y = 45.5, giver = "Morgan Stern", faction = "Alliance", turnin = { 1445, 66.3, 45.5 } }
Q[1205] = { name = "Deadmire", level = 45, minLevel = 35, map = 1456, x = 61.5, y = 80.9, giver = "Melor Stonehoof", faction = "Horde", turnin = { 1456, 61.5, 80.9 } }
Q[1206] = { name = "Jarl Needs Eyes", level = 35, minLevel = 30, map = 1445, x = 55.4, y = 26.3, giver = "\"Swamp Eye\" Jarl", pre = { 1218 }, turnin = { 1445, 55.4, 26.3 } }
Q[1218] = { name = "Soothing Spices", level = 35, minLevel = 30, map = 1445, x = 55.4, y = 26.3, giver = "\"Swamp Eye\" Jarl", turnin = { 1445, 55.4, 26.3 } }
Q[1219] = { name = "The Orc Report", level = 35, minLevel = 30, map = 1445, x = 55.4, y = 25.9, giver = "Loose Dirt", faction = "Alliance", turnin = { 1445, 68, 48 } }
Q[1220] = { name = "Captain Vimes", level = 35, minLevel = 30, map = 1445, x = 68, y = 48, giver = "Theramore Lieutenant", faction = "Alliance", pre = { 1219 }, turnin = { 1445, 68.2, 48.6 } }
Q[1221] = { name = "Blueleaf Tubers", level = 26, minLevel = 20, map = 1413, x = 62.4, y = 37.6, giver = "Mebok Mizzyrix", dungeon = "Razorfen Kraul", turnin = { 1413, 62.4, 37.6 } }
Q[1222] = { name = "Stinky's Escape", level = 37, minLevel = 30, map = 1445, x = 46.9, y = 17.5, giver = "\"Stinky\" Ignatz", faction = "Alliance", turnin = { 1445, 66.3, 45.5 } }
Q[1238] = { name = "The Lost Report", level = 35, minLevel = 30, map = 1445, x = 55.4, y = 25.9, giver = "Loose Dirt", faction = "Horde", turnin = { 1445, 35.2, 30.7 } }
Q[1239] = { name = "The Severed Head", level = 35, minLevel = 30, map = 1445, x = 55.4, y = 25.9, giver = "Loose Dirt", faction = "Horde", pre = { 1238 }, turnin = { 1445, 35.2, 30.7 } }
Q[1240] = { name = "The Troll Witchdoctor", level = 35, minLevel = 30, map = 1445, x = 35.2, y = 30.7, giver = "Nazeer Bloodpike", faction = "Horde", pre = { 1239 }, turnin = { 1434, 32.3, 27.7 } }
Q[1241] = { name = "The Missing Diplomat", level = 28, minLevel = 28, map = 1453, x = 80.2, y = 44.1, giver = "Bishop DeLavey", faction = "Alliance", pre = { 1274 }, turnin = { 1453, 76.3, 85.1 } }
Q[1242] = { name = "The Missing Diplomat", level = 28, minLevel = 28, map = 1453, x = 76.3, y = 85.1, giver = "Jorgen", faction = "Alliance", pre = { 1241 }, turnin = { 1453, 66.0, 74.1 } }
Q[1243] = { name = "The Missing Diplomat", level = 28, minLevel = 28, map = 1453, x = 66.0, y = 74.1, giver = "Elling Trias", faction = "Alliance", pre = { 1242 }, turnin = { 1431, 74.8, 44.2 } }
Q[1244] = { name = "The Missing Diplomat", level = 30, minLevel = 28, map = 1431, x = 74.8, y = 44.2, giver = "Watcher Backus", faction = "Alliance", pre = { 1243 }, turnin = { 1431, 74.8, 44.2 } }
Q[1245] = { name = "The Missing Diplomat", level = 30, minLevel = 28, map = 1431, x = 74.8, y = 44.2, giver = "Watcher Backus", faction = "Alliance", pre = { 1244 }, turnin = { 1453, 66.0, 74.1 } }
Q[1246] = { name = "The Missing Diplomat", level = 31, minLevel = 28, map = 1453, x = 66.0, y = 74.1, giver = "Elling Trias", faction = "Alliance", pre = { 1245 }, turnin = { 1453, 74.3, 59.2 } }
Q[1247] = { name = "The Missing Diplomat", level = 31, minLevel = 28, map = 1453, x = 74.3, y = 59.2, giver = "Dashel Stonefist", faction = "Alliance", pre = { 1447 }, turnin = { 1453, 66.0, 74.1 } }
Q[1248] = { name = "The Missing Diplomat", level = 33, minLevel = 28, map = 1453, x = 66.0, y = 74.1, giver = "Elling Trias", faction = "Alliance", pre = { 1247 }, turnin = { 1437, 10.6, 60.8 } }
Q[1249] = { name = "The Missing Diplomat", level = 33, minLevel = 28, map = 1437, x = 10.6, y = 60.8, giver = "Mikhail", faction = "Alliance", pre = { 1248 }, turnin = { 1437, 10.6, 60.8 } }
Q[1250] = { name = "The Missing Diplomat", level = 33, minLevel = 28, map = 1437, x = 10.5, y = 60.3, giver = "Tapoke \"Slim\" Jahn", faction = "Alliance", pre = { 1249 }, turnin = { 1437, 10.6, 60.8 } }
Q[1251] = { name = "The Black Shield", level = 35, minLevel = 30, map = 1445, x = 29.6, y = 48.6, giver = "Black Shield", faction = "Horde", turnin = { 1445, 36.4, 31.9 } }
Q[1252] = { name = "Lieutenant Paval Reethe", level = 40, minLevel = 30, map = 1445, x = 29.8, y = 48.2, giver = "Theramore Guard Badge", faction = "Alliance", turnin = { 1445, 68.2, 48.6 } }
Q[1253] = { name = "The Black Shield", level = 35, minLevel = 30, map = 1445, x = 29.6, y = 48.6, giver = "Black Shield", faction = "Alliance", turnin = { 1445, 68.2, 48.6 } }
Q[1258] = { name = "... and Bugs", level = 40, minLevel = 33, map = 1445, x = 66.3, y = 45.5, giver = "Morgan Stern", faction = "Alliance", pre = { 1204 }, turnin = { 1445, 66.3, 45.5 } }
Q[1259] = { name = "Lieutenant Paval Reethe", level = 40, minLevel = 30, map = 1445, x = 68.2, y = 48.6, giver = "Captain Garran Vimes", faction = "Alliance", pre = { 1252 }, turnin = { 1445, 68.0, 48.1 } }
Q[1260] = { name = "Morgan Stern", level = 38, minLevel = 33, map = 1453, x = 51.8, y = 93.6, giver = "Angus Stern", faction = "Alliance", turnin = { 1445, 66.3, 45.5 } }
Q[1261] = { name = "Marg Speaks", level = 40, minLevel = 30, map = 1434, x = 32.2, y = 27.6, giver = "Bubbling Cauldron", faction = "Horde", pre = { 1240 }, turnin = { 1445, 35.2, 30.7 } }
Q[1262] = { name = "Report to Zor", level = 40, minLevel = 30, map = 1445, x = 35.2, y = 30.7, giver = "Nazeer Bloodpike", faction = "Horde", pre = { 1261 }, turnin = { 1454, 38.9, 38.4 } }
Q[1264] = { name = "The Missing Diplomat", level = 33, minLevel = 28, map = 1437, x = 10.6, y = 60.8, giver = "Mikhail", faction = "Alliance", pre = { 1250 }, turnin = { 1445, 68.0, 48.7 } }
Q[1265] = { name = "The Missing Diplomat", level = 35, minLevel = 28, map = 1445, x = 68.0, y = 48.7, giver = "Commander Samaul", faction = "Alliance", pre = { 1264 }, turnin = { 1445, 66.4, 49.3 } }
Q[1266] = { name = "The Missing Diplomat", level = 36, minLevel = 28, map = 1445, x = 66.4, y = 49.3, giver = "Archmage Tervosh", faction = "Alliance", pre = { 1265 }, turnin = { 1445, 45.2, 24.6 } }
Q[1267] = { name = "The Missing Diplomat", level = 38, minLevel = 28, map = 1445, x = 66.3, y = 49.0, giver = "Lady Jaina Proudmoore", faction = "Alliance", pre = { 1324 }, turnin = { 1445, 66.3, 49.0 } }
Q[1268] = { name = "Suspicious Hoofprints", level = 35, minLevel = 30, map = 1445, x = 29.7, y = 47.6, giver = "Hoofprints", faction = "Horde", turnin = { 1445, 36.4, 31.9 } }
Q[1269] = { name = "Lieutenant Paval Reethe", level = 37, minLevel = 30, map = 1445, x = 29.8, y = 48.2, giver = "Theramore Guard Badge", faction = "Horde", turnin = { 1445, 36.4, 31.9 } }
Q[1270] = { name = "Stinky's Escape", level = 37, minLevel = 30, map = 1445, x = 46.9, y = 17.5, giver = "\"Stinky\" Ignatz", faction = "Horde", turnin = { 1413, 62.4, 37.6 } }
Q[1271] = { name = "Feast at the Blue Recluse", level = 37, minLevel = 30, map = 1453, x = 51.8, y = 93.6, giver = "Angus Stern", faction = "Alliance", pre = { 1222 }, turnin = { 1453, 51.8, 93.6 } }
Q[1273] = { name = "Questioning Reethe", level = 37, minLevel = 30, map = 1445, x = 41.0, y = 36.7, giver = "Ogron", faction = "Horde", pre = { 1269 }, turnin = { 1445, 36.4, 31.9 } }
Q[1274] = { name = "The Missing Diplomat", level = 28, minLevel = 28, map = 1453, x = 49.6, y = 44.5, giver = "Thomas", faction = "Alliance", turnin = { 1453, 80.2, 44.1 } }
Q[1275] = { name = "Researching the Corruption", level = 24, minLevel = 18, map = 1439, x = 38.3, y = 43.0, giver = "Gershala Nightwhisper", faction = "Alliance", dungeon = "Blackfathom Deeps", turnin = { 1439, 38.3, 43.0 } }
Q[1276] = { name = "The Black Shield", level = 37, minLevel = 30, map = 1445, x = 36.4, y = 31.9, giver = "Krog", faction = "Horde", pre = { 1273 }, turnin = { 1456, 54.0, 80.8 } }
Q[1282] = { name = "They Call Him Smiling Jim", level = 35, minLevel = 30, map = 1445, x = 66.2, y = 46.1, giver = "Guard Byron", faction = "Alliance", turnin = { 1445, 68.2, 48.6 } }
Q[1284] = { name = "Suspicious Hoofprints", level = 35, minLevel = 30, map = 1445, x = 29.7, y = 47.6, giver = "Hoofprints", faction = "Alliance", turnin = { 1445, 68.2, 48.6 } }
Q[1285] = { name = "Daelin's Men", level = 38, minLevel = 30, map = 1445, x = 68.0, y = 48.1, giver = "Adjutant Tesoran", faction = "Alliance", pre = { 1259 }, turnin = { 1445, 68.2, 48.6 } }
Q[1286] = { name = "The Deserters", level = 38, minLevel = 30, map = 1445, x = 68.2, y = 48.6, giver = "Captain Garran Vimes", faction = "Alliance", pre = { 1285 }, turnin = { 1445, 36.1, 54.3 } }
Q[1287] = { name = "The Deserters", level = 38, minLevel = 30, map = 1445, x = 36.1, y = 54.3, giver = "Balos Jacken", faction = "Alliance", pre = { 1286 }, turnin = { 1445, 68.2, 48.6 } }
Q[1301] = { name = "James Hyal", level = 35, minLevel = 30, map = 1453, x = 51.1, y = 95.5, giver = "Connor Rivers", faction = "Alliance", turnin = { 1437, 10.8, 60.4 } }
Q[1302] = { name = "James Hyal", level = 35, minLevel = 30, map = 1437, x = 10.8, y = 60.4, giver = "Vincent Hyal", faction = "Alliance", turnin = { 1445, 67.9, 48.2 } }
Q[1319] = { name = "The Black Shield", level = 35, minLevel = 30, map = 1445, x = 68.2, y = 48.6, giver = "Captain Garran Vimes", faction = "Alliance", pre = { 1253 }, turnin = { 1445, 64.8, 50.4 } }
Q[1320] = { name = "The Black Shield", level = 35, minLevel = 30, map = 1445, x = 64.8, y = 50.4, giver = "Caz Twosprocket", faction = "Alliance", pre = { 1319 }, turnin = { 1445, 68.2, 48.6 } }
Q[1321] = { name = "The Black Shield", level = 35, minLevel = 30, map = 1445, x = 36.4, y = 31.9, giver = "Krog", faction = "Horde", pre = { 1251 }, turnin = { 1445, 36.5, 30.8 } }
Q[1322] = { name = "The Black Shield", level = 37, minLevel = 30, map = 1445, x = 36.5, y = 30.8, giver = "Do'gol", faction = "Horde", pre = { 1321 }, turnin = { 1445, 36.5, 30.8 } }
Q[1323] = { name = "The Black Shield", level = 37, minLevel = 30, map = 1445, x = 36.5, y = 30.8, giver = "Do'gol", faction = "Horde", pre = { 1322 }, turnin = { 1445, 36.4, 31.9 } }
Q[1324] = { name = "The Missing Diplomat", level = 38, minLevel = 28, map = 1445, x = 45.2, y = 24.6, giver = "Private Hendel", faction = "Alliance", pre = { 1266 }, turnin = { 1445, 66.4, 49.3 } }
Q[1338] = { name = "Stormpike's Order", level = 14, minLevel = 9, map = 1432, x = 24.8, y = 18.4, giver = "Mountaineer Stormpike", faction = "Alliance", turnin = { 1453, 64.6, 37.2 } }
Q[1339] = { name = "Mountaineer Stormpike's Task", level = 15, minLevel = 9, map = 1432, x = 32.6, y = 49.7, giver = "Mountaineer Kadrell", faction = "Alliance", turnin = { 1432, 24.8, 18.4 } }
Q[1358] = { name = "Sample for Helbrim", level = 15, minLevel = 10, map = 1458, x = 50.1, y = 68.0, giver = "Apothecary Zinge", faction = "Horde", pre = { 1359 }, turnin = { 1413, 51.4, 30.1 } }
Q[1359] = { name = "Zinge's Delivery", level = 15, minLevel = 10, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", faction = "Horde", pre = { 3221 }, turnin = { 1458, 50.1, 68.0 } }
Q[1360] = { name = "Reclaimed Treasures", level = 43, minLevel = 33, map = 1455, x = 74.2, y = 9.4, giver = "Krom Stoutarm", faction = "Alliance", dungeon = "Uldaman", turnin = { 1455, 74.2, 9.4 } }
Q[1361] = { name = "Regthar Deathgate", level = 32, minLevel = 30, map = 1424, x = 63.2, y = 20.7, giver = "Krusk", faction = "Horde", turnin = { 1413, 45.3, 28.4 } }
Q[1362] = { name = "The Kolkar of Desolace", level = 32, minLevel = 30, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", faction = "Horde", turnin = { 1443, 56.2, 59.6 } }
Q[1363] = { name = "Mazen's Behest", level = 41, minLevel = 37, map = 1453, x = 51.8, y = 74.2, giver = "Mazen Mac'Nadir", faction = "Alliance", turnin = { 1453, 51.4, 73.8 } }
Q[1364] = { name = "Mazen's Behest", level = 41, minLevel = 37, map = 1453, x = 51.4, y = 73.8, giver = "Acolyte Dellis", faction = "Alliance", pre = { 1363 }, turnin = { 1419, 67.7, 19.2 } }
Q[1365] = { name = "Khan Dez'hepah", level = 35, minLevel = 30, map = 1443, x = 56.2, y = 59.6, giver = "Felgur Twocuts", faction = "Horde", turnin = { 1443, 56.2, 59.6 } }
Q[1366] = { name = "Centaur Bounty", level = 31, minLevel = 30, map = 1443, x = 56.2, y = 59.6, giver = "Felgur Twocuts", faction = "Horde", pre = { 1365 }, group = true, turnin = { 1443, 56.2, 59.6 } }
Q[1367] = { name = "Magram Alliance", level = 33, minLevel = 30, map = 1443, x = 56.3, y = 59.7, giver = "Gurda Wildmane", faction = "Horde", turnin = { 1443, 75.0, 68.2 } }
Q[1368] = { name = "Gelkis Alliance", level = 33, minLevel = 30, map = 1443, x = 56.3, y = 59.7, giver = "Gurda Wildmane", faction = "Horde", turnin = { 1443, 36.2, 79.2 } }
Q[1369] = { name = "Broken Tears", level = 33, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", turnin = { 1443, 75.0, 68.2 } }
Q[1370] = { name = "Stealing Supplies", level = 35, minLevel = 30, map = 1443, x = 36.2, y = 79.2, giver = "Uthek the Wise", turnin = { 1443, 36.2, 79.2 } }
Q[1371] = { name = "Gizmo for Warug", level = 35, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", pre = { 1369 }, turnin = { 1443, 75.0, 68.2 } }
Q[1372] = { name = "Nothing But The Truth", level = 42, minLevel = 37, map = 1431, x = 87.8, y = 35.6, giver = "Deathstalker Zraedus", faction = "Horde", turnin = { 1431, 87.5, 35.2 } }
Q[1373] = { name = "Ongeku", level = 37, minLevel = 30, map = 1443, x = 36.2, y = 79.2, giver = "Uthek the Wise", pre = { 1370 }, turnin = { 1443, 36.2, 79.2 } }
Q[1374] = { name = "Khan Jehn", level = 37, minLevel = 30, map = 1443, x = 36.2, y = 79.2, giver = "Uthek the Wise", pre = { 1373 }, turnin = { 1443, 36.2, 79.2 } }
Q[1375] = { name = "Khan Shaka", level = 37, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", pre = { 1371 }, turnin = { 1443, 75.0, 68.2 } }
Q[1380] = { name = "Khan Hratha", level = 42, minLevel = 30, map = 1443, x = 36.2, y = 79.2, giver = "Uthek the Wise", pre = { 1374 }, group = true, turnin = { 1443, 36.2, 79.2 } }
Q[1381] = { name = "Khan Hratha", level = 42, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", pre = { 1375 }, group = true, turnin = { 1443, 75.0, 68.2 } }
Q[1382] = { name = "Strange Alliance", level = 35, minLevel = 30, map = 1443, x = 66.7, y = 10.9, giver = "Captain Pentigast", faction = "Alliance", turnin = { 1443, 36.2, 79.2 } }
Q[1383] = { name = "Nothing But The Truth", level = 42, minLevel = 37, map = 1431, x = 87.5, y = 35.2, giver = "Apothecary Faustin", faction = "Horde", pre = { 1372 }, group = true, turnin = { 1431, 87.5, 35.2 } }
Q[1384] = { name = "Raid on the Kolkar", level = 32, minLevel = 30, map = 1443, x = 36.2, y = 79.2, giver = "Uthek the Wise", faction = "Alliance", pre = { 1382 }, turnin = { 1443, 36.2, 79.2 } }
Q[1385] = { name = "Brutal Politics", level = 35, minLevel = 30, map = 1443, x = 66.7, y = 10.9, giver = "Captain Pentigast", faction = "Alliance", turnin = { 1443, 75.0, 68.2 } }
Q[1386] = { name = "Assault on the Kolkar", level = 32, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", faction = "Alliance", pre = { 1385 }, turnin = { 1443, 75.0, 68.2 } }
Q[1387] = { name = "Centaur Bounty", level = 31, minLevel = 30, map = 1443, x = 66.7, y = 10.9, giver = "Corporal Melkins", faction = "Alliance", group = true, turnin = { 1443, 66.7, 10.9 } }
Q[1388] = { name = "Nothing But The Truth", level = 42, minLevel = 37, map = 1431, x = 87.5, y = 35.2, giver = "Apothecary Faustin", faction = "Horde", pre = { 1383 }, turnin = { 1431, 87.8, 35.6 } }
Q[1389] = { name = "Draenethyst Crystals", level = 35, minLevel = 30, map = 1435, x = 26.0, y = 31.4, giver = "Magtoor", turnin = { 1435, 26.0, 31.4 } }
Q[1391] = { name = "Nothing But The Truth", level = 42, minLevel = 37, map = 1431, x = 87.8, y = 35.6, giver = "Deathstalker Zraedus", faction = "Horde", pre = { 1388 }, turnin = { 1435, 44.3, 52.4 } }
Q[1392] = { name = "Noboru the Cudgel", level = 39, minLevel = 29, map = 1435, x = 54.9, y = 34.1, giver = "Drop: Noboru's Cudgel", turnin = { 1435, 26.0, 31.4 } }
Q[1393] = { name = "Galen's Escape", level = 38, minLevel = 30, map = 1435, x = 65.5, y = 18.2, giver = "Galen Goodward", turnin = { 1435, 47.8, 39.8 } }
Q[1394] = { name = "Final Passage", level = 36, minLevel = 25, map = 1458, x = 57.8, y = 65.4, giver = "Parqual Fintallas", faction = "Horde", pre = { 6628 }, turnin = { 1441, 54.0, 41.5 } }
Q[1395] = { name = "Supplies for Nethergarde", level = 45, minLevel = 40, map = 1431, x = 75.8, y = 46.2, giver = "Watchmaster Sorigal", faction = "Alliance", turnin = { 1419, 66.5, 21.4 } }
Q[1396] = { name = "Encroaching Wildlife", level = 37, minLevel = 30, map = 1435, x = 26.7, y = 59.8, giver = "Watcher Biggs", faction = "Alliance", turnin = { 1435, 26.7, 59.8 } }
Q[1398] = { name = "Driftwood", level = 42, minLevel = 30, map = 1435, x = 26.7, y = 59.8, giver = "Watcher Biggs", faction = "Alliance", pre = { 1421 }, turnin = { 1435, 26.7, 59.8 } }
Q[1418] = { name = "Neeka Bloodscar", level = 35, minLevel = 30, map = 1435, x = 47.7, y = 55.2, giver = "Helgrum the Swift", faction = "Horde", turnin = { 1418, 6.5, 47.2 } }
Q[1419] = { name = "Coyote Thieves", level = 40, minLevel = 30, map = 1418, x = 6.5, y = 47.2, giver = "Neeka Bloodscar", faction = "Horde", turnin = { 1418, 6.5, 47.2 } }
Q[1420] = { name = "Report to Helgrum", level = 40, minLevel = 30, map = 1418, x = 6.5, y = 47.2, giver = "Neeka Bloodscar", faction = "Horde", turnin = { 1435, 47.7, 55.2 } }
Q[1421] = { name = "The Lost Caravan", level = 35, minLevel = 30, map = 1435, x = 26.7, y = 59.8, giver = "Watcher Biggs", faction = "Alliance", pre = { 1396 }, turnin = { 1435, 26.7, 59.8 } }
Q[1422] = { name = "Threat From the Sea", level = 45, minLevel = 35, map = 1435, x = 81.3, y = 81.0, giver = "Tok'Kar", faction = "Horde", pre = { 699 }, turnin = { 1435, 83.8, 80.4 } }
Q[1424] = { name = "Pool of Tears", level = 43, minLevel = 38, map = 1435, x = 47.9, y = 54.8, giver = "Fel'zerul", faction = "Horde", turnin = { 1435, 47.9, 54.8 } }
Q[1425] = { name = "Deliver the Shipment", level = 42, minLevel = 30, map = 1435, x = 26.7, y = 59.8, giver = "Watcher Biggs", faction = "Alliance", pre = { 1398 }, turnin = { 1419, 66.5, 21.4 } }
Q[1426] = { name = "Threat From the Sea", level = 43, minLevel = 35, map = 1435, x = 83.8, y = 80.4, giver = "Katar", faction = "Horde", pre = { 1422 }, turnin = { 1435, 83.8, 80.4 } }
Q[1427] = { name = "Threat From the Sea", level = 43, minLevel = 35, map = 1435, x = 83.8, y = 80.4, giver = "Katar", faction = "Horde", pre = { 1426 }, turnin = { 1435, 81.3, 81.0 } }
Q[1428] = { name = "Continued Threat", level = 45, minLevel = 35, map = 1435, x = 83.8, y = 80.4, giver = "Katar", faction = "Horde", pre = { 1427 }, turnin = { 1435, 83.8, 80.4 } }
Q[1429] = { name = "The Atal'ai Exile", level = 44, minLevel = 38, map = 1435, x = 47.9, y = 54.8, giver = "Fel'zerul", faction = "Horde", pre = { 1424 }, turnin = { 1425, 33.8, 75.2 } }
Q[1430] = { name = "Fresh Meat", level = 44, minLevel = 35, map = 1435, x = 44.7, y = 57.2, giver = "Dar", faction = "Horde", turnin = { 1435, 44.7, 57.2 } }
Q[1431] = { name = "Alliance Relations", level = 30, minLevel = 30, map = 1454, x = 51.3, y = 45.9, giver = "Craven Drok", faction = "Horde", turnin = { 1454, 22.6, 52.6 } }
Q[1432] = { name = "Alliance Relations", level = 30, minLevel = 30, map = 1454, x = 22.6, y = 52.6, giver = "Keldran", faction = "Horde", pre = { 1431 }, turnin = { 1443, 52.6, 54.4 } }
Q[1433] = { name = "Alliance Relations", level = 33, minLevel = 30, map = 1443, x = 52.6, y = 54.4, giver = "Takata Steelblade", faction = "Horde", pre = { 1432 }, turnin = { 1443, 52.2, 53.4 } }
Q[1434] = { name = "Befouled by Satyr", level = 33, minLevel = 25, map = 1443, x = 52.6, y = 54.4, giver = "Takata Steelblade", faction = "Horde", pre = { 1432 }, turnin = { 1443, 52.6, 54.4 } }
Q[1435] = { name = "The Burning of Spirits", level = 33, minLevel = 25, map = 1443, x = 52.2, y = 53.4, giver = "Maurin Bonesplitter", faction = "Horde", pre = { 1433 }, turnin = { 1443, 52.2, 53.4 } }
Q[1436] = { name = "Alliance Relations", level = 33, minLevel = 30, map = 1443, x = 52.6, y = 54.4, giver = "Takata Steelblade", faction = "Horde", pre = { 1434, 1435 }, turnin = { 1454, 22.6, 52.6 } }
Q[1437] = { name = "Vahlarriel's Search", level = 33, minLevel = 30, map = 1443, x = 66.4, y = 11.8, giver = "Vahlarriel Demonslayer", faction = "Alliance", turnin = { 1443, 56.5, 17.8 } }
Q[1438] = { name = "Vahlarriel's Search", level = 33, minLevel = 30, map = 1443, x = 66.4, y = 11.8, giver = "Vahlarriel Demonslayer", faction = "Alliance", pre = { 1465 }, turnin = { 1443, 54.9, 26.1 } }
Q[1439] = { name = "Search for Tyranis", level = 33, minLevel = 30, map = 1443, x = 54.9, y = 26.1, giver = "Dalinda Malem", faction = "Alliance", pre = { 1438 }, turnin = { 1443, 54.9, 26.1 } }
Q[1440] = { name = "Return to Vahlarriel", level = 33, minLevel = 30, map = 1443, x = 54.9, y = 26.1, giver = "Dalinda Malem", faction = "Alliance", pre = { 1439 }, turnin = { 1443, 66.4, 11.8 } }
Q[1444] = { name = "Return to Fel'Zerul", level = 44, minLevel = 38, map = 1425, x = 33.8, y = 75.2, giver = "Atal'ai Exile", faction = "Horde", pre = { 1429 }, turnin = { 1435, 47.9, 54.8 } }
Q[1445] = { name = "The Temple of Atal'Hakkar", level = 50, minLevel = 38, map = 1435, x = 47.9, y = 54.8, giver = "Fel'zerul", faction = "Horde", pre = { 1444 }, dungeon = "The Temple of Atal'Hakkar", turnin = { 1435, 47.9, 54.8 } }
Q[1447] = { name = "The Missing Diplomat", level = 31, minLevel = 28, map = 1453, x = 74.3, y = 59.2, giver = "Dashel Stonefist", faction = "Alliance", pre = { 1246 }, turnin = { 1453, 74.3, 59.2 } }
Q[1448] = { name = "In Search of The Temple", level = 43, minLevel = 38, map = 1453, x = 69.5, y = 40.4, giver = "Brohann Caskbelly", faction = "Alliance", turnin = { 1453, 69.5, 40.4 } }
Q[1449] = { name = "To The Hinterlands", level = 43, minLevel = 38, map = 1453, x = 69.5, y = 40.4, giver = "Brohann Caskbelly", faction = "Alliance", pre = { 1448 }, turnin = { 1425, 11.8, 46.8 } }
Q[1450] = { name = "Gryphon Master Talonaxe", level = 43, minLevel = 38, map = 1425, x = 11.8, y = 46.8, giver = "Falstad Wildhammer", faction = "Alliance", pre = { 1449 }, turnin = { 1425, 9.8, 44.5 } }
Q[1451] = { name = "Rhapsody Shindigger", level = 43, minLevel = 38, map = 1425, x = 9.8, y = 44.5, giver = "Gryphon Master Talonaxe", faction = "Alliance", pre = { 1450 }, turnin = { 1425, 26.9, 48.6 } }
Q[1452] = { name = "Rhapsody's Kalimdor Kocktail", level = 43, minLevel = 38, map = 1425, x = 26.9, y = 48.6, giver = "Rhapsody Shindigger", faction = "Alliance", pre = { 1451 }, turnin = { 1425, 26.9, 48.6 } }
Q[1453] = { name = "Reclaimers' Business in Desolace", level = 33, minLevel = 30, map = 1455, x = 70.0, y = 21.3, giver = "Roetten Stonehammer", faction = "Alliance", turnin = { 1443, 66.2, 9.6 } }
Q[1454] = { name = "The Karnitol Shipwreck", level = 39, minLevel = 30, map = 1443, x = 66.2, y = 9.6, giver = "Kreldig Ungor", faction = "Alliance", pre = { 1453 }, turnin = { 1443, 36.1, 30.4 } }
Q[1455] = { name = "The Karnitol Shipwreck", level = 39, minLevel = 30, map = 1443, x = 36.1, y = 30.4, giver = "Karnitol's Chest", faction = "Alliance", pre = { 1454 }, turnin = { 1443, 66.2, 9.6 } }
Q[1456] = { name = "The Karnitol Shipwreck", level = 39, minLevel = 30, map = 1443, x = 66.2, y = 9.6, giver = "Kreldig Ungor", faction = "Alliance", pre = { 1455 }, turnin = { 1443, 66.2, 9.6 } }
Q[1457] = { name = "The Karnitol Shipwreck", level = 39, minLevel = 30, map = 1443, x = 66.2, y = 9.6, giver = "Kreldig Ungor", faction = "Alliance", pre = { 1456 }, turnin = { 1455, 70.0, 21.3 } }
Q[1458] = { name = "Reagents for Reclaimers Inc.", level = 33, minLevel = 30, map = 1443, x = 66.2, y = 9.6, giver = "Kreldig Ungor", faction = "Alliance", pre = { 1453 }, turnin = { 1443, 66.2, 9.6 } }
Q[1459] = { name = "Reagents for Reclaimers Inc.", level = 35, minLevel = 30, map = 1443, x = 66.2, y = 9.6, giver = "Kreldig Ungor", faction = "Alliance", pre = { 1458 }, turnin = { 1443, 66.2, 9.6 } }
Q[1465] = { name = "Vahlarriel's Search", level = 33, minLevel = 30, map = 1443, x = 56.5, y = 17.8, giver = "Malem Chest", faction = "Alliance", pre = { 1437 }, turnin = { 1443, 66.4, 11.8 } }
Q[1466] = { name = "Reagents for Reclaimers Inc.", level = 40, minLevel = 30, map = 1443, x = 66.2, y = 9.6, giver = "Kreldig Ungor", faction = "Alliance", pre = { 1459 }, group = true, turnin = { 1443, 66.2, 9.6 } }
Q[1467] = { name = "Reagents for Reclaimers Inc.", level = 40, minLevel = 30, map = 1443, x = 66.2, y = 9.6, giver = "Kreldig Ungor", faction = "Alliance", pre = { 1466 }, turnin = { 1455, 70.0, 21.3 } }
Q[1469] = { name = "Rhapsody's Tale", level = 43, minLevel = 38, map = 1425, x = 26.9, y = 48.6, giver = "Rhapsody Shindigger", faction = "Alliance", pre = { 1452 }, turnin = { 1453, 69.5, 40.4 } }
Q[1470] = { name = "Piercing the Veil", level = 3, minLevel = 1, map = 1420, x = 31.0, y = 66.4, giver = "Venya Marthand", faction = "Horde", class = { WARLOCK = true }, turnin = { 1420, 31.0, 66.4 } }
Q[1471] = { name = "The Binding", level = 10, minLevel = 10, map = 1458, x = 85.1, y = 26.0, giver = "Carendin Halgar", faction = "Horde", pre = { 1473 }, race = { SCOURGE = true }, class = { WARLOCK = true }, turnin = { 1458, 85.1, 26.0 } }
Q[1472] = { name = "Devourer of Souls", level = 20, minLevel = 20, map = 1458, x = 85.1, y = 26.0, giver = "Carendin Halgar", faction = "Horde", class = { WARLOCK = true }, turnin = { 1458, 84.8, 14.8 } }
Q[1473] = { name = "Creature of the Void", level = 10, minLevel = 10, map = 1458, x = 85.1, y = 26.0, giver = "Carendin Halgar", faction = "Horde", race = { SCOURGE = true }, class = { WARLOCK = true }, turnin = { 1458, 85.1, 26.0 } }
Q[1474] = { name = "The Binding", level = 20, minLevel = 20, map = 1458, x = 85.1, y = 26.0, giver = "Carendin Halgar", faction = "Horde", pre = { 1476 }, class = { WARLOCK = true }, turnin = { 1458, 85.1, 26.0 } }
Q[1475] = { name = "Into The Temple of Atal'Hakkar", level = 50, minLevel = 41, map = 1453, x = 69.5, y = 40.4, giver = "Brohann Caskbelly", faction = "Alliance", pre = { 1469 }, dungeon = "The Temple of Atal'Hakkar", turnin = { 1453, 69.5, 40.4 } }
Q[1476] = { name = "Hearts of the Pure", level = 20, minLevel = 20, map = 1458, x = 84.8, y = 14.8, giver = "Godrick Farsan", faction = "Horde", pre = { 1472 }, class = { WARLOCK = true }, turnin = { 1458, 85.1, 26.0 } }
Q[1477] = { name = "Vital Supplies", level = 45, minLevel = 40, map = 1453, x = 48.7, y = 87.6, giver = "High Sorcerer Andromath", faction = "Alliance", turnin = { 1431, 75.8, 46.2 } }
Q[1478] = { name = "Halgar's Summons", level = 10, minLevel = 10, map = 1420, x = 61.6, y = 52.7, giver = "Ageron Kargal", faction = "Horde", class = { WARLOCK = true }, turnin = { 1458, 85.1, 26.0 } }
Q[1480] = { name = "The Corrupter", level = 33, minLevel = 25, map = 1443, x = 54.8, y = 27.8, giver = "Drop: Flayed Demon Skin", faction = "Horde", turnin = { 1443, 52.2, 53.4 } }
Q[1481] = { name = "The Corrupter", level = 33, minLevel = 25, map = 1443, x = 52.2, y = 53.4, giver = "Maurin Bonesplitter", faction = "Horde", pre = { 1480 }, turnin = { 1443, 52.2, 53.4 } }
Q[1482] = { name = "The Corrupter", level = 35, minLevel = 25, map = 1443, x = 52.2, y = 53.4, giver = "Maurin Bonesplitter", faction = "Horde", pre = { 1481 }, turnin = { 1443, 52.2, 53.4 } }
Q[1483] = { name = "Ziz Fizziks", level = 21, minLevel = 16, map = 1413, x = 63.0, y = 37.2, giver = "Sputtervalve", turnin = { 1442, 59.0, 62.6 } }
Q[1484] = { name = "The Corrupter", level = 35, minLevel = 25, map = 1443, x = 52.2, y = 53.4, giver = "Maurin Bonesplitter", faction = "Horde", pre = { 1482 }, turnin = { 1443, 52.6, 54.4 } }
Q[1485] = { name = "Vile Familiars", level = 4, minLevel = 1, map = 1411, x = 42.6, y = 69, giver = "Ruzan", faction = "Horde", class = { WARLOCK = true }, turnin = { 1411, 42.6, 69 } }
Q[1486] = { name = "Deviate Hides", level = 17, minLevel = 13, map = 1413, x = 46.0, y = 35.7, giver = "Nalpak", dungeon = "Wailing Caverns", turnin = { 1413, 46.0, 35.7 } }
Q[1487] = { name = "Deviate Eradication", level = 21, minLevel = 15, map = 1413, x = 46.0, y = 35.7, giver = "Ebru", dungeon = "Wailing Caverns", turnin = { 1413, 46.0, 35.7 } }
Q[1489] = { name = "Hamuul Runetotem", level = 16, minLevel = 12, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", faction = "Horde", pre = { 880 }, dungeon = "Wailing Caverns", turnin = { 1456, 78.6, 28.6 } }
Q[1490] = { name = "Nara Wildmane", level = 16, minLevel = 12, map = 1456, x = 78.6, y = 28.6, giver = "Arch Druid Hamuul Runetotem", faction = "Horde", pre = { 1489 }, dungeon = "Wailing Caverns", turnin = { 1456, 75.7, 31.6 } }
Q[1491] = { name = "Smart Drinks", level = 18, minLevel = 13, map = 1413, x = 62.4, y = 37.6, giver = "Mebok Mizzyrix", pre = { 865 }, dungeon = "Wailing Caverns", turnin = { 1413, 62.4, 37.6 } }
Q[1492] = { name = "Wharfmaster Dizzywig", level = 11, minLevel = 9, map = 1413, x = 51.4, y = 30.1, giver = "Apothecary Helbrim", faction = "Horde", turnin = { 1413, 63.4, 38.5 } }
Q[1498] = { name = "Path of Defense", level = 10, minLevel = 10, map = 1413, x = 61.4, y = 21.1, giver = "Uzzek", faction = "Horde", class = { WARRIOR = true }, turnin = { 1413, 61.4, 21.1 } }
Q[1499] = { name = "Vile Familiars", level = 4, minLevel = 1, map = 1411, x = 42.6, y = 69, giver = "Ruzan", faction = "Horde", class = { WARLOCK = true }, turnin = { 1411, 42.9, 69.2 } }
Q[1501] = { name = "Creature of the Void", level = 11, minLevel = 10, map = 1454, x = 48.2, y = 45.3, giver = "Gan'rul Bloodeye", faction = "Horde", race = { ORC = true }, class = { WARLOCK = true }, turnin = { 1454, 48.2, 45.3 } }
Q[1502] = { name = "Thun'grim Firegaze", level = 10, minLevel = 10, map = 1413, x = 61.4, y = 21.1, giver = "Uzzek", faction = "Horde", class = { WARRIOR = true }, turnin = { 1413, 57.2, 30.3 } }
Q[1503] = { name = "Forged Steel", level = 10, minLevel = 10, map = 1413, x = 57.2, y = 30.3, giver = "Thun'grim Firegaze", faction = "Horde", pre = { 1502 }, class = { WARRIOR = true }, turnin = { 1413, 57.2, 30.3 } }
Q[1504] = { name = "The Binding", level = 11, minLevel = 10, map = 1454, x = 48.2, y = 45.3, giver = "Gan'rul Bloodeye", faction = "Horde", pre = { 1501 }, race = { ORC = true }, class = { WARLOCK = true }, turnin = { 1454, 48.2, 45.3 } }
Q[1505] = { name = "Veteran Uzzek", level = 10, minLevel = 10, map = 1456, x = 57.2, y = 87.4, giver = "Torm Ragetotem", faction = "Horde", class = { WARRIOR = true }, turnin = { 1413, 61.4, 21.1 } }
Q[1506] = { name = "Gan'rul's Summons", level = 10, minLevel = 10, map = 1411, x = 54.4, y = 41.3, giver = "Ophek", faction = "Horde", class = { WARLOCK = true }, turnin = { 1454, 48.2, 45.3 } }
Q[1507] = { name = "Devourer of Souls", level = 20, minLevel = 20, map = 1454, x = 48.2, y = 45.3, giver = "Gan'rul Bloodeye", faction = "Horde", class = { WARLOCK = true }, turnin = { 1454, 47.1, 46.4 } }
Q[1508] = { name = "Blind Cazul", level = 20, minLevel = 20, map = 1454, x = 47.1, y = 46.4, giver = "Cazul", faction = "Horde", pre = { 1507 }, class = { WARLOCK = true }, turnin = { 1454, 37.0, 59.5 } }
Q[1509] = { name = "News of Dogran", level = 20, minLevel = 20, map = 1454, x = 37.0, y = 59.5, giver = "Zankaja", faction = "Horde", pre = { 1508 }, class = { WARLOCK = true }, turnin = { 1413, 51.9, 30.3 } }
Q[1510] = { name = "News of Dogran", level = 20, minLevel = 20, map = 1413, x = 51.9, y = 30.3, giver = "Gazrog", faction = "Horde", pre = { 1509 }, class = { WARLOCK = true }, turnin = { 1442, 73.2, 95.1 } }
Q[1511] = { name = "Ken'zigla's Draught", level = 20, minLevel = 20, map = 1442, x = 73.2, y = 95.1, giver = "Ken'zigla", faction = "Horde", pre = { 1510 }, class = { WARLOCK = true }, turnin = { 1413, 44.6, 59.3 } }
Q[1512] = { name = "Love's Gift", level = 20, minLevel = 20, map = 1413, x = 43.3, y = 47.9, giver = "Grunt Dogran", faction = "Horde", pre = { 1515 }, class = { WARLOCK = true }, turnin = { 1454, 48.2, 45.3 } }
Q[1513] = { name = "The Binding", level = 20, minLevel = 20, map = 1454, x = 48.2, y = 45.3, giver = "Gan'rul Bloodeye", faction = "Horde", pre = { 1512 }, class = { WARLOCK = true }, turnin = { 1454, 48.2, 45.3 } }
Q[1515] = { name = "Dogran's Captivity", level = 20, minLevel = 20, map = 1413, x = 44.6, y = 59.3, giver = "Grunt Logmar", faction = "Horde", pre = { 1511 }, class = { WARLOCK = true }, turnin = { 1413, 43.3, 47.9 } }
Q[1516] = { name = "Call of Earth", level = 4, minLevel = 4, map = 1411, x = 42.4, y = 69.2, giver = "Canaga Earthcaller", faction = "Horde", class = { SHAMAN = true }, turnin = { 1411, 42.4, 69.2 } }
Q[1517] = { name = "Call of Earth", level = 4, minLevel = 4, map = 1411, x = 42.4, y = 69.2, giver = "Canaga Earthcaller", faction = "Horde", class = { SHAMAN = true }, turnin = { 1411, 44.0, 76.2 } }
Q[1518] = { name = "Call of Earth", level = 4, minLevel = 4, map = 1411, x = 44.0, y = 76.2, giver = "Minor Manifestation of Earth", faction = "Horde", pre = { 1517 }, class = { SHAMAN = true }, turnin = { 1411, 42.4, 69.2 } }
Q[1519] = { name = "Call of Earth", level = 4, minLevel = 4, map = 1412, x = 44.4, y = 76.8, giver = "Seer Ravenfeather", faction = "Horde", class = { SHAMAN = true }, turnin = { 1412, 44.4, 76.8 } }
Q[1520] = { name = "Call of Earth", level = 4, minLevel = 4, map = 1412, x = 44.4, y = 76.8, giver = "Seer Ravenfeather", faction = "Horde", class = { SHAMAN = true }, turnin = { 1412, 52.0, 80.4 } }
Q[1521] = { name = "Call of Earth", level = 4, minLevel = 4, map = 1412, x = 52.0, y = 80.4, giver = "Minor Manifestation of Earth", faction = "Horde", pre = { 1520 }, class = { SHAMAN = true }, turnin = { 1412, 44.4, 76.8 } }
Q[1522] = { name = "Call of Fire", level = 10, minLevel = 10, map = 1454, x = 38.0, y = 37.7, giver = "Searn Firewarder", faction = "Horde", class = { SHAMAN = true }, turnin = { 1413, 56.0, 19.9 } }
Q[1523] = { name = "Call of Fire", level = 10, minLevel = 10, map = 1456, x = 25.2, y = 20.5, giver = "Xanis Flameweaver", faction = "Horde", class = { SHAMAN = true }, turnin = { 1413, 56.0, 19.9 } }
Q[1524] = { name = "Call of Fire", level = 11, minLevel = 10, map = 1413, x = 56.0, y = 19.9, giver = "Kranal Fiss", faction = "Horde", class = { SHAMAN = true }, turnin = { 1411, 38.5, 59.0 } }
Q[1525] = { name = "Call of Fire", level = 12, minLevel = 10, map = 1411, x = 38.5, y = 59.0, giver = "Telf Joolam", faction = "Horde", pre = { 1524 }, class = { SHAMAN = true }, turnin = { 1411, 38.5, 59.0 } }
Q[1526] = { name = "Call of Fire", level = 13, minLevel = 10, map = 1411, x = 38.5, y = 59.0, giver = "Telf Joolam", faction = "Horde", pre = { 1525 }, class = { SHAMAN = true }, turnin = { 1411, 39.0, 58.2 } }
Q[1527] = { name = "Call of Fire", level = 13, minLevel = 10, map = 1411, x = 39.0, y = 58.2, giver = "Brazier of the Dormant Flame", faction = "Horde", pre = { 1526 }, class = { SHAMAN = true }, turnin = { 1413, 56.0, 19.9 } }
Q[1528] = { name = "Call of Water", level = 20, minLevel = 20, map = 1454, x = 38.0, y = 37.7, giver = "Searn Firewarder", faction = "Horde", class = { SHAMAN = true }, turnin = { 1413, 65.8, 43.8 } }
Q[1529] = { name = "Call of Water", level = 20, minLevel = 20, map = 1456, x = 25.2, y = 20.5, giver = "Xanis Flameweaver", faction = "Horde", class = { SHAMAN = true }, turnin = { 1413, 65.8, 43.8 } }
Q[1530] = { name = "Call of Water", level = 22, minLevel = 20, map = 1413, x = 65.8, y = 43.8, giver = "Islen Waterseer", faction = "Horde", class = { SHAMAN = true }, turnin = { 1413, 43.4, 77.4 } }
Q[1531] = { name = "Call of Air", level = 30, minLevel = 30, map = 1454, x = 38.0, y = 37.7, giver = "Searn Firewarder", faction = "Horde", class = { SHAMAN = true }, turnin = { 1441, 53.5, 42.6 } }
Q[1532] = { name = "Call of Air", level = 30, minLevel = 30, map = 1456, x = 25.2, y = 20.5, giver = "Xanis Flameweaver", faction = "Horde", class = { SHAMAN = true }, turnin = { 1441, 53.5, 42.6 } }
Q[1534] = { name = "Call of Water", level = 23, minLevel = 20, map = 1413, x = 43.4, y = 77.4, giver = "Brine", faction = "Horde", pre = { 1536 }, class = { SHAMAN = true }, turnin = { 1413, 43.4, 77.4 } }
Q[1535] = { name = "Call of Water", level = 22, minLevel = 20, map = 1413, x = 43.4, y = 77.4, giver = "Brine", faction = "Horde", pre = { 1530 }, class = { SHAMAN = true }, turnin = { 1413, 43.4, 77.4 } }
Q[1536] = { name = "Call of Water", level = 22, minLevel = 20, map = 1413, x = 43.4, y = 77.4, giver = "Brine", faction = "Horde", pre = { 1535 }, class = { SHAMAN = true }, turnin = { 1413, 43.4, 77.4 } }
Q[1560] = { name = "Tooga's Quest", level = 50, minLevel = 40, map = 1446, x = 29.5, y = 60.5, giver = "Tooga", turnin = { 1446, 66.6, 25.7 } }
Q[1598] = { name = "The Stolen Tome", level = 4, minLevel = 1, map = 1429, x = 49.9, y = 42.6, giver = "Drusilla La Salle", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1429, 49.9, 42.6 } }
Q[1599] = { name = "Beginnings", level = 4, minLevel = 1, map = 1426, x = 28.6, y = 66.1, giver = "Alamar Grimm", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1426, 28.6, 66.1 } }
Q[1638] = { name = "A Warrior's Training", level = 10, minLevel = 10, map = 1429, x = 41.1, y = 65.8, giver = "Lyria Du Lac", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1453, 77.1, 53.3 } }
Q[1639] = { name = "Bartleby the Drunk", level = 10, minLevel = 10, map = 1453, x = 77.1, y = 53.3, giver = "Harry Burlguard", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1453, 76.8, 52.5 } }
Q[1640] = { name = "Beat Bartleby", level = 10, minLevel = 10, map = 1453, x = 76.8, y = 52.5, giver = "Bartleby", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1453, 76.8, 52.5 } }
Q[1643] = { name = "The Tome of Divinity", level = 12, minLevel = 12, map = 1453, x = 50.5, y = 47.5, giver = "Duthorian Rall", faction = "Alliance", pre = { 1642 }, race = { HUMAN = true }, class = { PALADIN = true }, turnin = { 1453, 63.8, 72.2 } }
Q[1644] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1453, x = 63.8, y = 72.2, giver = "Stephanie Turner", faction = "Alliance", pre = { 1643 }, race = { HUMAN = true }, class = { PALADIN = true }, turnin = { 1453, 63.8, 72.2 } }
Q[1647] = { name = "The Tome of Divinity", level = 12, minLevel = 12, map = 1455, x = 27.6, y = 12.2, giver = "Tiza Battleforge", faction = "Alliance", pre = { 1646 }, race = { DWARF = true }, class = { PALADIN = true }, turnin = { 1455, 23.3, 61.9 } }
Q[1648] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1455, x = 23.3, y = 61.9, giver = "John Turner", faction = "Alliance", pre = { 1647 }, race = { DWARF = true }, class = { PALADIN = true }, turnin = { 1455, 23.3, 61.9 } }
Q[1650] = { name = "The Tome of Valor", level = 23, minLevel = 20, map = 1453, x = 50.5, y = 47.5, giver = "Duthorian Rall", faction = "Alliance", pre = { 1649 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1436, 41.7, 89.2 } }
Q[1651] = { name = "The Tome of Valor", level = 25, minLevel = 20, map = 1436, x = 41.7, y = 89.2, giver = "Daphne Stilwell", faction = "Alliance", pre = { 1650 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1436, 41.7, 89.2 } }
Q[1652] = { name = "The Tome of Valor", level = 25, minLevel = 20, map = 1436, x = 41.7, y = 89.2, giver = "Daphne Stilwell", faction = "Alliance", pre = { 1651 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 50.5, 47.5 } }
Q[1653] = { name = "The Test of Righteousness", level = 21, minLevel = 20, map = 1453, x = 50.5, y = 47.5, giver = "Duthorian Rall", faction = "Alliance", pre = { 1652 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1426, 52.5, 36.9 } }
Q[1654] = { name = "The Test of Righteousness", level = 22, minLevel = 20, map = 1426, x = 52.5, y = 36.9, giver = "Jordan Stilwell", faction = "Alliance", pre = { 1653 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, group = true, turnin = { 1426, 52.5, 36.9 } }
Q[1656] = { name = "A Task Unfinished", level = 5, minLevel = 1, map = 1412, x = 39.2, y = 81.2, giver = "Antur Fallow", faction = "Horde", turnin = { 1412, 45.9, 64.2 } }
Q[1661] = { name = "The Tome of Nobility", level = 40, minLevel = 40, map = 1453, x = 50.5, y = 47.5, giver = "Duthorian Rall", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 50.5, 47.5 } }
Q[1665] = { name = "Bartleby's Mug", level = 10, minLevel = 10, map = 1453, x = 76.8, y = 52.5, giver = "Bartleby", faction = "Alliance", pre = { 1640 }, class = { WARRIOR = true }, turnin = { 1453, 77.1, 53.3 } }
Q[1666] = { name = "Marshal Haggard", level = 10, minLevel = 10, map = 1453, x = 77.1, y = 53.3, giver = "Harry Burlguard", faction = "Alliance", pre = { 1665 }, class = { WARRIOR = true }, turnin = { 1429, 84.6, 69.4 } }
Q[1667] = { name = "Dead-tooth Jack", level = 10, minLevel = 10, map = 1429, x = 84.6, y = 69.4, giver = "Marshal Haggard", faction = "Alliance", pre = { 1666 }, class = { WARRIOR = true }, turnin = { 1429, 84.6, 69.4 } }
Q[1678] = { name = "Vejrek", level = 11, minLevel = 10, map = 1455, x = 70.8, y = 90.3, giver = "Muren Stormpike", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1455, 70.8, 90.3 } }
Q[1679] = { name = "Muren Stormpike", level = 10, minLevel = 10, map = 1426, x = 47.4, y = 52.6, giver = "Granis Swiftaxe", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1455, 70.8, 90.3 } }
Q[1680] = { name = "Tormus Deepforge", level = 11, minLevel = 10, map = 1455, x = 70.8, y = 90.3, giver = "Muren Stormpike", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1455, 48.6, 42.5 } }
Q[1681] = { name = "Ironband's Compound", level = 11, minLevel = 10, map = 1455, x = 48.6, y = 42.5, giver = "Tormus Deepforge", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1455, 48.6, 42.5 } }
Q[1682] = { name = "Grey Iron Weapons", level = 10, minLevel = 10, map = 1455, x = 48.6, y = 42.5, giver = "Tormus Deepforge", faction = "Alliance", pre = { 1681 }, class = { WARRIOR = true }, turnin = { 1455, 48.6, 42.5 } }
Q[1683] = { name = "Vorlus Vilehoof", level = 10, minLevel = 10, map = 1457, x = 57.3, y = 34.6, giver = "Elanaria", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1457, 57.3, 34.6 } }
Q[1684] = { name = "Elanaria", level = 10, minLevel = 10, map = 1438, x = 52.9, y = 57.2, giver = "Moon Priestess Amara", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1457, 57.3, 34.6 } }
Q[1685] = { name = "Gakin's Summons", level = 10, minLevel = 10, map = 1429, x = 44.5, y = 66.3, giver = "Remen Marcot", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1453, 39.2, 85.2 } }
Q[1686] = { name = "The Shade of Elura", level = 10, minLevel = 10, map = 1457, x = 57.3, y = 34.6, giver = "Elanaria", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1457, 57.3, 34.6 } }
Q[1688] = { name = "Surena Caledon", level = 10, minLevel = 10, map = 1453, x = 39.2, y = 85.2, giver = "Gakin the Darkbinder", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1453, 39.2, 85.2 } }
Q[1689] = { name = "The Binding", level = 10, minLevel = 10, map = 1453, x = 39.2, y = 85.2, giver = "Gakin the Darkbinder", faction = "Alliance", pre = { 1688 }, class = { WARLOCK = true }, turnin = { 1453, 39.2, 85.2 } }
Q[1690] = { name = "Wastewander Justice", level = 43, minLevel = 40, map = 1446, x = 52.5, y = 28.5, giver = "Chief Engineer Bilgewhizzle", turnin = { 1446, 52.5, 28.5 } }
Q[1691] = { name = "More Wastewander Justice", level = 44, minLevel = 40, map = 1446, x = 52.5, y = 28.5, giver = "Chief Engineer Bilgewhizzle", pre = { 1690 }, turnin = { 1446, 52.5, 28.5 } }
Q[1692] = { name = "Smith Mathiel", level = 10, minLevel = 10, map = 1457, x = 57.3, y = 34.6, giver = "Elanaria", faction = "Alliance", pre = { 1686 }, class = { WARRIOR = true }, turnin = { 1457, 59.5, 45.4 } }
Q[1693] = { name = "Weapons of Elunite", level = 10, minLevel = 10, map = 1457, x = 59.5, y = 45.4, giver = "Mathiel", faction = "Alliance", pre = { 1692 }, class = { WARRIOR = true }, turnin = { 1457, 59.5, 45.4 } }
Q[1698] = { name = "Yorus Barleybrew", level = 20, minLevel = 20, map = 1455, x = 70.3, y = 90.7, giver = "Kelv Sternhammer", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1433, 21.5, 44.7 } }
Q[1699] = { name = "The Rethban Gauntlet", level = 22, minLevel = 20, map = 1433, x = 21.5, y = 44.7, giver = "Yorus Barleybrew", faction = "Alliance", class = { WARRIOR = true }, turnin = { 1433, 21.5, 44.7 } }
Q[1700] = { name = "Grimand Elmore", level = 28, minLevel = 20, map = 1453, x = 64.6, y = 37.2, giver = "Furen Longbeard", faction = "Alliance", pre = { 1782 }, race = { HUMAN = true }, class = { WARRIOR = true }, turnin = { 1453, 59.7, 33.8 } }
Q[1701] = { name = "Fire Hardened Mail", level = 28, minLevel = 20, map = 1453, x = 64.6, y = 37.2, giver = "Furen Longbeard", faction = "Alliance", pre = { 1702 }, class = { WARRIOR = true }, group = true, turnin = { 1453, 64.6, 37.2 } }
Q[1702] = { name = "The Shieldsmith", level = 22, minLevel = 20, map = 1433, x = 21.5, y = 44.7, giver = "Yorus Barleybrew", faction = "Alliance", pre = { 1699 }, class = { WARRIOR = true }, turnin = { 1453, 64.6, 37.2 } }
Q[1703] = { name = "Mathiel", level = 28, minLevel = 20, map = 1453, x = 64.6, y = 37.2, giver = "Furen Longbeard", faction = "Alliance", pre = { 1782 }, race = { NIGHTELF = true }, class = { WARRIOR = true }, turnin = { 1457, 59.5, 45.4 } }
Q[1704] = { name = "Klockmort Spannerspan", level = 28, minLevel = 20, map = 1453, x = 64.6, y = 37.2, giver = "Furen Longbeard", faction = "Alliance", pre = { 1782 }, race = { DWARF = true, GNOME = true }, class = { WARRIOR = true }, turnin = { 1455, 67.9, 46.1 } }
Q[1705] = { name = "Burning Blood", level = 28, minLevel = 20, map = 1453, x = 59.7, y = 33.8, giver = "Grimand Elmore", faction = "Alliance", pre = { 1782 }, class = { WARRIOR = true }, turnin = { 1453, 59.7, 33.8 } }
Q[1706] = { name = "Grimand's Armor", level = 30, minLevel = 20, map = 1453, x = 59.7, y = 33.8, giver = "Grimand Elmore", faction = "Alliance", pre = { 1705 }, class = { WARRIOR = true }, turnin = { 1453, 59.7, 33.8 } }
Q[1707] = { name = "Water Pouch Bounty", level = 44, minLevel = 40, map = 1446, x = 52.5, y = 28.4, giver = "Spigot Operator Luglunket", turnin = { 1446, 52.5, 28.4 } }
Q[1708] = { name = "Iron Coral", level = 29, minLevel = 20, map = 1455, x = 67.9, y = 46.1, giver = "Klockmort Spannerspan", faction = "Alliance", pre = { 1782 }, class = { WARRIOR = true }, turnin = { 1455, 67.9, 46.1 } }
Q[1709] = { name = "Klockmort's Creation", level = 30, minLevel = 20, map = 1455, x = 67.9, y = 46.1, giver = "Klockmort Spannerspan", faction = "Alliance", pre = { 1708 }, class = { WARRIOR = true }, turnin = { 1455, 67.9, 46.1 } }
Q[1710] = { name = "Sunscorched Shells", level = 30, minLevel = 20, map = 1457, x = 59.5, y = 45.4, giver = "Mathiel", faction = "Alliance", pre = { 1782 }, class = { WARRIOR = true }, turnin = { 1457, 59.5, 45.4 } }
Q[1711] = { name = "Mathiel's Armor", level = 30, minLevel = 20, map = 1457, x = 59.5, y = 45.4, giver = "Mathiel", faction = "Alliance", pre = { 1710 }, class = { WARRIOR = true }, turnin = { 1457, 59.5, 45.4 } }
Q[1712] = { name = "Cyclonian", level = 40, minLevel = 30, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", pre = { 1791 }, class = { WARRIOR = true }, turnin = { 1416, 80.5, 66.9 } }
Q[1713] = { name = "The Summoning", level = 40, minLevel = 30, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", pre = { 1712 }, class = { WARRIOR = true }, group = true, turnin = { 1416, 80.5, 66.9 } }
Q[1715] = { name = "The Slaughtered Lamb", level = 10, minLevel = 10, map = 1455, x = 47.6, y = 9.3, giver = "Lago Blackwrench", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1453, 39.2, 85.2 } }
Q[1716] = { name = "Devourer of Souls", level = 20, minLevel = 20, map = 1453, x = 39.2, y = 85.2, giver = "Gakin the Darkbinder", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1413, 49.3, 57.1 } }
Q[1717] = { name = "Gakin's Summons", level = 20, minLevel = 20, map = 1455, x = 47.6, y = 9.3, giver = "Lago Blackwrench", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1453, 39.2, 85.2 } }
Q[1718] = { name = "The Islander", level = 30, minLevel = 30, map = 1456, x = 57.2, y = 87.4, giver = "Torm Ragetotem", alliance = { map = 1455, x = 70.3, y = 90.7, giver = "Kelv Sternhammer" }, class = { WARRIOR = true }, turnin = { 1413, 68.6, 49.2 } }
Q[1719] = { name = "The Affray", level = 30, minLevel = 30, map = 1413, x = 68.6, y = 49.2, giver = "Klannoc Macleod", pre = { 1718 }, class = { WARRIOR = true }, turnin = { 1413, 68.6, 49.2 } }
Q[1738] = { name = "Heartswood", level = 20, minLevel = 20, map = 1413, x = 49.3, y = 57.1, giver = "Takar the Seer", faction = "Alliance", pre = { 1716 }, class = { WARLOCK = true }, turnin = { 1453, 39.2, 85.2 } }
Q[1739] = { name = "The Binding", level = 20, minLevel = 20, map = 1453, x = 39.2, y = 85.2, giver = "Gakin the Darkbinder", faction = "Alliance", pre = { 1738 }, class = { WARLOCK = true }, turnin = { 1453, 39.2, 85.2 } }
Q[1740] = { name = "The Orb of Soran'ruk", level = 25, minLevel = 20, map = 1413, x = 49.3, y = 57.2, giver = "Doan Karhan", class = { WARLOCK = true }, group = true, turnin = { 1413, 49.3, 57.2 } }
Q[1758] = { name = "Tome of the Cabal", level = 30, minLevel = 30, map = 1413, x = 62.6, y = 35.5, giver = "Strahad Farsan", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1455, 74.2, 9.4 } }
Q[1778] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1455, x = 23.3, y = 61.9, giver = "John Turner", faction = "Alliance", pre = { 1648 }, race = { DWARF = true }, class = { PALADIN = true }, turnin = { 1455, 27.6, 12.2 } }
Q[1779] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1455, x = 27.6, y = 12.2, giver = "Tiza Battleforge", faction = "Alliance", pre = { 1778 }, race = { DWARF = true }, class = { PALADIN = true }, turnin = { 1455, 23.5, 8.3 } }
Q[1780] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1453, x = 63.8, y = 72.2, giver = "Stephanie Turner", faction = "Alliance", pre = { 1644 }, race = { HUMAN = true }, class = { PALADIN = true }, turnin = { 1453, 50.5, 47.5 } }
Q[1781] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1453, x = 50.5, y = 47.5, giver = "Duthorian Rall", faction = "Alliance", pre = { 1780 }, race = { HUMAN = true }, class = { PALADIN = true }, turnin = { 1453, 49.5, 45.0 } }
Q[1782] = { name = "Furen's Armor", level = 28, minLevel = 20, map = 1453, x = 64.6, y = 37.2, giver = "Furen Longbeard", faction = "Alliance", pre = { 1701 }, class = { WARRIOR = true }, turnin = { 1453, 64.6, 37.2 } }
Q[1783] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1455, x = 23.5, y = 8.3, giver = "Muiredon Battleforge", faction = "Alliance", pre = { 1779 }, race = { DWARF = true }, class = { PALADIN = true }, turnin = { 1426, 78.3, 58.1 } }
Q[1784] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1426, x = 78.3, y = 58.1, giver = "Narm Faulk", faction = "Alliance", pre = { 1783 }, race = { DWARF = true }, class = { PALADIN = true }, turnin = { 1455, 23.5, 8.3 } }
Q[1785] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1455, x = 23.5, y = 8.3, giver = "Muiredon Battleforge", faction = "Alliance", pre = { 1784 }, race = { DWARF = true }, class = { PALADIN = true }, turnin = { 1455, 27.6, 12.2 } }
Q[1786] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1453, x = 49.5, y = 45.0, giver = "Gazin Tenorm", faction = "Alliance", pre = { 1781 }, race = { HUMAN = true }, class = { PALADIN = true }, turnin = { 1429, 72.6, 51.4 } }
Q[1787] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1429, x = 72.6, y = 51.4, giver = "Henze Faulk", faction = "Alliance", pre = { 1786 }, race = { HUMAN = true }, class = { PALADIN = true }, turnin = { 1453, 49.5, 45.0 } }
Q[1788] = { name = "The Tome of Divinity", level = 13, minLevel = 12, map = 1453, x = 49.5, y = 45.0, giver = "Gazin Tenorm", faction = "Alliance", pre = { 1787 }, race = { HUMAN = true }, class = { PALADIN = true }, turnin = { 1453, 50.5, 47.5 } }
Q[1791] = { name = "The Windwatcher", level = 30, minLevel = 30, map = 1413, x = 68.6, y = 49.2, giver = "Klannoc Macleod", pre = { 1719 }, class = { WARRIOR = true }, turnin = { 1416, 80.5, 66.9 } }
Q[1792] = { name = "Whirlwind Weapon", level = 40, minLevel = 30, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", pre = { 1713 }, class = { WARRIOR = true }, turnin = { 1416, 80.5, 66.9 } }
Q[1795] = { name = "The Binding", level = 30, minLevel = 30, map = 1413, x = 62.6, y = 35.5, giver = "Strahad Farsan", class = { WARLOCK = true }, turnin = { 1413, 62.6, 35.5 } }
Q[1796] = { name = "Components for the Enchanted Gold Bloodrobe", level = 31, minLevel = 31, map = 1413, x = 62.5, y = 35.5, giver = "Menara Voidrender", class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[1798] = { name = "Seeking Strahad", level = 30, minLevel = 30, map = 1455, x = 47.6, y = 9.3, giver = "Lago Blackwrench", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1413, 62.6, 35.5 } }
Q[1799] = { name = "Fragments of the Orb of Orahil", level = 40, minLevel = 35, map = 1413, x = 62.5, y = 35.5, giver = "Menara Voidrender", class = { WARLOCK = true }, turnin = { 1445, 46.1, 57.1 } }
Q[1801] = { name = "Tome of the Cabal", level = 30, minLevel = 30, map = 1413, x = 62.6, y = 35.5, giver = "Strahad Farsan", faction = "Horde", class = { WARLOCK = true }, turnin = { 1458, 75.9, 37.9 } }
Q[1802] = { name = "Tome of the Cabal", level = 30, minLevel = 30, map = 1455, x = 74.2, y = 9.4, giver = "Krom Stoutarm", faction = "Alliance", pre = { 1758 }, class = { WARLOCK = true }, turnin = { 1455, 74.2, 9.4 } }
Q[1803] = { name = "Tome of the Cabal", level = 30, minLevel = 30, map = 1458, x = 75.9, y = 37.9, giver = "Jorah Annison", faction = "Horde", pre = { 1801 }, class = { WARLOCK = true }, turnin = { 1458, 75.9, 37.9 } }
Q[1804] = { name = "Tome of the Cabal", level = 30, minLevel = 30, map = 1455, x = 74.2, y = 9.4, giver = "Krom Stoutarm", faction = "Alliance", pre = { 1802 }, class = { WARLOCK = true }, turnin = { 1413, 62.6, 35.5 } }
Q[1805] = { name = "Tome of the Cabal", level = 30, minLevel = 30, map = 1458, x = 75.9, y = 37.9, giver = "Jorah Annison", faction = "Horde", pre = { 1803 }, class = { WARLOCK = true }, turnin = { 1413, 62.6, 35.5 } }
Q[1806] = { name = "The Test of Righteousness", level = 22, minLevel = 20, map = 1426, x = 52.5, y = 36.9, giver = "Jordan Stilwell", faction = "Alliance", pre = { 1654 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1426, 52.5, 36.9 } }
Q[1818] = { name = "Speak with Dillinger", level = 10, minLevel = 10, map = 1420, x = 61.9, y = 52.5, giver = "Austil de Mon", faction = "Horde", class = { WARRIOR = true }, turnin = { 1420, 58.2, 51.5 } }
Q[1819] = { name = "Ulag the Cleaver", level = 10, minLevel = 10, map = 1420, x = 58.2, y = 51.5, giver = "Deathguard Dillinger", faction = "Horde", class = { WARRIOR = true }, turnin = { 1420, 58.2, 51.5 } }
Q[1820] = { name = "Speak with Coleman", level = 10, minLevel = 10, map = 1420, x = 58.2, y = 51.5, giver = "Deathguard Dillinger", faction = "Horde", class = { WARRIOR = true }, turnin = { 1420, 61.7, 52.3 } }
Q[1821] = { name = "Agamand Heirlooms", level = 11, minLevel = 10, map = 1420, x = 61.7, y = 52.3, giver = "Coleman Farthing", faction = "Horde", class = { WARRIOR = true }, turnin = { 1420, 61.7, 52.3 } }
Q[1822] = { name = "Heirloom Weapon", level = 11, minLevel = 10, map = 1420, x = 61.7, y = 52.3, giver = "Coleman Farthing", faction = "Horde", pre = { 1821 }, class = { WARRIOR = true }, turnin = { 1420, 61.7, 52.3 } }
Q[1823] = { name = "Speak with Ruga", level = 20, minLevel = 20, map = 1456, x = 57.2, y = 87.4, giver = "Torm Ragetotem", faction = "Horde", class = { WARRIOR = true }, turnin = { 1413, 44.7, 59.4 } }
Q[1824] = { name = "Trial at the Field of Giants", level = 20, minLevel = 20, map = 1413, x = 44.7, y = 59.4, giver = "Ruga Ragetotem", faction = "Horde", class = { WARRIOR = true }, turnin = { 1413, 44.7, 59.4 } }
Q[1825] = { name = "Speak with Thun'grim", level = 20, minLevel = 20, map = 1413, x = 44.7, y = 59.4, giver = "Ruga Ragetotem", faction = "Horde", pre = { 1824 }, class = { WARRIOR = true }, turnin = { 1413, 57.2, 30.3 } }
Q[1838] = { name = "Brutal Armor", level = 30, minLevel = 20, map = 1413, x = 57.2, y = 30.3, giver = "Thun'grim Firegaze", faction = "Horde", pre = { 1824 }, class = { WARRIOR = true }, group = true, turnin = { 1413, 57.2, 30.3 } }
Q[1839] = { name = "Ula'elek and the Brutal Gauntlets", level = 30, minLevel = 20, map = 1413, x = 57.2, y = 30.3, giver = "Thun'grim Firegaze", faction = "Horde", pre = { 1848 }, class = { WARRIOR = true }, turnin = { 1411, 56.3, 74.3 } }
Q[1840] = { name = "Orm Stonehoof and the Brutal Helm", level = 30, minLevel = 20, map = 1413, x = 57.2, y = 30.3, giver = "Thun'grim Firegaze", faction = "Horde", pre = { 1848 }, class = { WARRIOR = true }, turnin = { 1456, 39.0, 56.0 } }
Q[1841] = { name = "Velora Nitely and the Brutal Legguards", level = 30, minLevel = 20, map = 1413, x = 57.2, y = 30.3, giver = "Thun'grim Firegaze", faction = "Horde", pre = { 1848 }, class = { WARRIOR = true }, turnin = { 1458, 62.1, 39.1 } }
Q[1842] = { name = "Satyr Hooves", level = 30, minLevel = 20, map = 1411, x = 56.3, y = 74.3, giver = "Ula'elek", faction = "Horde", pre = { 1848 }, class = { WARRIOR = true }, turnin = { 1411, 56.3, 74.3 } }
Q[1843] = { name = "Brutal Gauntlets", level = 30, minLevel = 20, map = 1411, x = 56.3, y = 74.3, giver = "Ula'elek", faction = "Horde", pre = { 1842 }, class = { WARRIOR = true }, turnin = { 1411, 56.3, 74.3 } }
Q[1844] = { name = "Chimaeric Horn", level = 30, minLevel = 20, map = 1456, x = 39.0, y = 56.0, giver = "Orm Stonehoof", faction = "Horde", pre = { 1848 }, class = { WARRIOR = true }, turnin = { 1456, 39.0, 56.0 } }
Q[1845] = { name = "Brutal Helm", level = 30, minLevel = 20, map = 1456, x = 39.0, y = 56.0, giver = "Orm Stonehoof", faction = "Horde", pre = { 1844 }, class = { WARRIOR = true }, turnin = { 1456, 39.0, 56.0 } }
Q[1846] = { name = "Dragonmaw Shinbones", level = 30, minLevel = 20, map = 1458, x = 62.1, y = 39.1, giver = "Velora Nitely", faction = "Horde", pre = { 1848 }, class = { WARRIOR = true }, turnin = { 1458, 62.1, 39.1 } }
Q[1847] = { name = "Brutal Legguards", level = 30, minLevel = 20, map = 1458, x = 62.1, y = 39.1, giver = "Velora Nitely", faction = "Horde", pre = { 1846 }, class = { WARRIOR = true }, turnin = { 1458, 62.1, 39.1 } }
Q[1848] = { name = "Brutal Hauberk", level = 30, minLevel = 20, map = 1413, x = 57.2, y = 30.3, giver = "Thun'grim Firegaze", faction = "Horde", pre = { 1838 }, class = { WARRIOR = true }, turnin = { 1413, 57.2, 30.3 } }
Q[1858] = { name = "The Shattered Hand", level = 13, minLevel = 10, map = 1454, x = 42.7, y = 53.5, giver = "Therzok", faction = "Horde", pre = { 1963 }, race = { ORC = true, TROLL = true }, class = { ROGUE = true }, turnin = { 1454, 42.7, 53.5 } }
Q[1859] = { name = "Therzok", level = 10, minLevel = 10, map = 1411, x = 52.0, y = 43.7, giver = "Kaplak", faction = "Horde", race = { ORC = true }, class = { ROGUE = true }, turnin = { 1454, 42.7, 53.5 } }
Q[1860] = { name = "Speak with Jennea", level = 10, minLevel = 10, map = 1429, x = 43.2, y = 66.2, giver = "Zaldimar Wefhellt", faction = "Alliance", race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1453, 49.6, 85.8 } }
Q[1861] = { name = "Mirror Lake", level = 10, minLevel = 10, map = 1453, x = 49.6, y = 85.8, giver = "Jennea Cannon", faction = "Alliance", race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1453, 49.6, 85.8 } }
Q[1879] = { name = "Speak with Bink", level = 10, minLevel = 10, map = 1426, x = 47.5, y = 52.1, giver = "Magis Sparkmantle", faction = "Alliance", race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1455, 27.2, 8.3 } }
Q[1880] = { name = "Mage-tastic Gizmonitor", level = 10, minLevel = 10, map = 1455, x = 27.2, y = 8.3, giver = "Bink", faction = "Alliance", race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1455, 27.2, 8.3 } }
Q[1881] = { name = "Speak with Anastasia", level = 10, minLevel = 10, map = 1420, x = 62.0, y = 52.5, giver = "Cain Firesong", faction = "Horde", race = { SCOURGE = true, TROLL = true }, class = { MAGE = true }, turnin = { 1458, 85.1, 10.0 } }
Q[1882] = { name = "The Balnir Farmstead", level = 10, minLevel = 10, map = 1458, x = 85.1, y = 10.0, giver = "Anastasia Hartwell", faction = "Horde", race = { SCOURGE = true, TROLL = true }, class = { MAGE = true }, turnin = { 1458, 85.1, 10.0 } }
Q[1883] = { name = "Speak with Un'thuwa", level = 10, minLevel = 10, map = 1456, x = 25.2, y = 21.0, giver = "Thurston Xane", faction = "Horde", class = { MAGE = true }, turnin = { 1411, 56.3, 75.1 } }
Q[1884] = { name = "Ju-Ju Heaps", level = 10, minLevel = 10, map = 1411, x = 56.3, y = 75.1, giver = "Un'Thuwa", faction = "Horde", race = { ORC = true, SCOURGE = true, TROLL = true }, class = { MAGE = true }, turnin = { 1411, 56.3, 75.1 } }
Q[1885] = { name = "Mennet Carkad", level = 10, minLevel = 10, map = 1420, x = 61.8, y = 52, giver = "Marion Call", faction = "Horde", race = { SCOURGE = true }, class = { ROGUE = true }, turnin = { 1458, 83.5, 69.1 } }
Q[1886] = { name = "The Deathstalkers", level = 13, minLevel = 10, map = 1458, x = 83.5, y = 69.1, giver = "Mennet Carkad", faction = "Horde", race = { SCOURGE = true }, class = { ROGUE = true }, turnin = { 1458, 83.5, 69.1 } }
Q[1898] = { name = "The Deathstalkers", level = 13, minLevel = 10, map = 1458, x = 83.5, y = 69.1, giver = "Mennet Carkad", faction = "Horde", pre = { 1886 }, race = { SCOURGE = true }, class = { ROGUE = true }, turnin = { 1458, 54.8, 76.3 } }
Q[1899] = { name = "The Deathstalkers", level = 13, minLevel = 10, map = 1458, x = 54.8, y = 76.3, giver = "Andron Gant", faction = "Horde", pre = { 1898 }, race = { SCOURGE = true }, class = { ROGUE = true }, turnin = { 1458, 83.5, 69.1 } }
Q[1918] = { name = "The Befouled Element", level = 27, minLevel = 23, map = 1440, x = 46, y = 70, giver = "Drop: Befouled Water Globe", faction = "Horde", turnin = { 1440, 73.7, 60 } }
Q[1919] = { name = "Report to Jennea", level = 15, minLevel = 15, map = 1429, x = 43.2, y = 66.2, giver = "Zaldimar Wefhellt", faction = "Alliance", race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1453, 49.6, 85.8 } }
Q[1920] = { name = "Investigate the Blue Recluse", level = 16, minLevel = 15, map = 1453, x = 49.6, y = 85.8, giver = "Jennea Cannon", faction = "Alliance", race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1453, 49.6, 85.8 } }
Q[1921] = { name = "Gathering Materials", level = 15, minLevel = 15, map = 1453, x = 49.6, y = 85.8, giver = "Jennea Cannon", faction = "Alliance", pre = { 1920 }, race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1453, 51.8, 83.5 } }
Q[1938] = { name = "Ur's Treatise on Shadow Magic", level = 28, minLevel = 26, map = 1453, x = 48.7, y = 87.6, giver = "High Sorcerer Andromath", faction = "Alliance", race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1453, 48.7, 87.6 } }
Q[1939] = { name = "High Sorcerer Andromath", level = 26, minLevel = 26, map = 1455, x = 27.2, y = 8.3, giver = "Bink", faction = "Alliance", race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1453, 48.7, 87.6 } }
Q[1940] = { name = "Pristine Spider Silk", level = 26, minLevel = 26, map = 1453, x = 48.7, y = 87.6, giver = "High Sorcerer Andromath", faction = "Alliance", pre = { 1938 }, race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1453, 51.8, 83.5 } }
Q[1941] = { name = "Manaweave Robe", level = 15, minLevel = 15, map = 1453, x = 51.8, y = 83.5, giver = "Wynne Larson", faction = "Alliance", pre = { 1921 }, race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1453, 51.8, 83.5 } }
Q[1942] = { name = "Astral Knot Garment", level = 26, minLevel = 26, map = 1453, x = 51.8, y = 83.5, giver = "Wynne Larson", faction = "Alliance", pre = { 1940 }, race = { HUMAN = true, GNOME = true }, class = { MAGE = true }, turnin = { 1453, 51.8, 83.5 } }
Q[1943] = { name = "Speak with Deino", level = 26, minLevel = 26, map = 1458, x = 85.1, y = 10.0, giver = "Anastasia Hartwell", faction = "Horde", race = { SCOURGE = true, TROLL = true }, class = { MAGE = true }, turnin = { 1454, 38.5, 86.1 } }
Q[1944] = { name = "Waters of Xavian", level = 26, minLevel = 26, map = 1454, x = 38.5, y = 86.1, giver = "Deino", faction = "Horde", race = { SCOURGE = true, TROLL = true }, class = { MAGE = true }, turnin = { 1454, 38.5, 86.1 } }
Q[1945] = { name = "Laughing Sisters", level = 26, minLevel = 26, map = 1454, x = 38.5, y = 86.1, giver = "Deino", faction = "Horde", pre = { 1944 }, race = { SCOURGE = true, TROLL = true }, class = { MAGE = true }, turnin = { 1413, 52.2, 31.7 } }
Q[1946] = { name = "Nether-lace Garment", level = 26, minLevel = 26, map = 1413, x = 52.2, y = 31.7, giver = "Kil'hala", faction = "Horde", pre = { 1945 }, race = { SCOURGE = true, TROLL = true }, class = { MAGE = true }, turnin = { 1413, 52.2, 31.7 } }
Q[1947] = { name = "Journey to the Marsh", level = 38, minLevel = 30, map = 1456, x = 25.7, y = 14.2, giver = "Ursyn Ghull", alliance = { map = 1455, x = 27.2, y = 8.3, giver = "Bink" }, class = { MAGE = true }, turnin = { 1445, 46.1, 57.1 } }
Q[1948] = { name = "Items of Power", level = 40, minLevel = 30, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", pre = { 1947 }, class = { MAGE = true }, turnin = { 1445, 46.1, 57.1 } }
Q[1949] = { name = "Hidden Secrets", level = 38, minLevel = 30, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", pre = { 1947 }, class = { MAGE = true }, turnin = { 1441, 78.3, 75.7 } }
Q[1950] = { name = "Get the Scoop", level = 30, minLevel = 30, map = 1441, x = 78.3, y = 75.7, giver = "Magus Tirth", pre = { 1949 }, class = { MAGE = true }, turnin = { 1441, 78.3, 75.7 } }
Q[1951] = { name = "Rituals of Power", level = 40, minLevel = 30, map = 1441, x = 78.3, y = 75.7, giver = "Magus Tirth", pre = { 1950 }, class = { MAGE = true }, turnin = { 1445, 46.1, 57.1 } }
Q[1952] = { name = "Mage's Wand", level = 40, minLevel = 30, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", pre = { 1948, 1951 }, class = { MAGE = true }, turnin = { 1445, 46.1, 57.1 } }
Q[1953] = { name = "Return to the Marsh", level = 40, minLevel = 35, map = 1456, x = 25.7, y = 14.2, giver = "Ursyn Ghull", alliance = { map = 1455, x = 27.2, y = 8.3, giver = "Bink" }, class = { MAGE = true }, turnin = { 1445, 46.1, 57.1 } }
Q[1954] = { name = "The Infernal Orb", level = 40, minLevel = 35, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", class = { MAGE = true }, turnin = { 1445, 46.1, 57.1 } }
Q[1955] = { name = "The Exorcism", level = 40, minLevel = 35, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", pre = { 1954 }, class = { MAGE = true }, group = true, turnin = { 1445, 46.1, 57.1 } }
Q[1956] = { name = "Power in Uldaman", level = 40, minLevel = 35, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", pre = { 1955 }, class = { MAGE = true }, group = true, turnin = { 1445, 46.1, 57.1 } }
Q[1957] = { name = "Mana Surges", level = 40, minLevel = 35, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", pre = { 1956 }, class = { MAGE = true }, turnin = { 1445, 46.1, 57.1 } }
Q[1958] = { name = "Celestial Power", level = 40, minLevel = 35, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", pre = { 1957 }, class = { MAGE = true }, turnin = { 1445, 46.1, 57.1 } }
Q[1959] = { name = "Report to Anastasia", level = 15, minLevel = 15, map = 1420, x = 62.0, y = 52.5, giver = "Cain Firesong", faction = "Horde", race = { SCOURGE = true, TROLL = true }, class = { MAGE = true }, turnin = { 1458, 85.1, 10.0 } }
Q[1960] = { name = "Investigate the Alchemist Shop", level = 16, minLevel = 15, map = 1458, x = 85.1, y = 10.0, giver = "Anastasia Hartwell", faction = "Horde", race = { SCOURGE = true, TROLL = true }, class = { MAGE = true }, turnin = { 1458, 85.1, 10.0 } }
Q[1961] = { name = "Gathering Materials", level = 15, minLevel = 15, map = 1458, x = 85.1, y = 10.0, giver = "Anastasia Hartwell", faction = "Horde", pre = { 1960 }, race = { ORC = true, SCOURGE = true, TROLL = true }, class = { MAGE = true }, turnin = { 1458, 70.8, 30.7 } }
Q[1962] = { name = "Spellfire Robes", level = 15, minLevel = 15, map = 1458, x = 70.8, y = 30.7, giver = "Josef Gregorian", faction = "Horde", pre = { 1961 }, race = { SCOURGE = true, TROLL = true }, class = { MAGE = true }, turnin = { 1458, 70.8, 30.7 } }
Q[1963] = { name = "The Shattered Hand", level = 13, minLevel = 10, map = 1454, x = 42.7, y = 53.5, giver = "Therzok", faction = "Horde", race = { ORC = true, TROLL = true }, class = { ROGUE = true }, turnin = { 1454, 42.7, 53.5 } }
Q[1978] = { name = "The Deathstalkers", level = 13, minLevel = 10, map = 1458, x = 83.5, y = 69.1, giver = "Mennet Carkad", faction = "Horde", pre = { 1899 }, race = { SCOURGE = true }, class = { ROGUE = true }, turnin = { 1458, 56.2, 92.2 } }
Q[1998] = { name = "Fenwick Thatros", level = 16, minLevel = 16, map = 1458, x = 83.5, y = 69.1, giver = "Mennet Carkad", faction = "Horde", race = { SCOURGE = true }, class = { ROGUE = true }, turnin = { 1458, 83.5, 69.1 } }
Q[1999] = { name = "Tools of the Trade", level = 20, minLevel = 16, map = 1458, x = 83.5, y = 69.1, giver = "Mennet Carkad", faction = "Horde", pre = { 1998 }, race = { SCOURGE = true }, class = { ROGUE = true }, turnin = { 1458, 83.5, 69.1 } }
Q[2038] = { name = "Bingles' Missing Supplies", level = 15, minLevel = 12, map = 1432, x = 63.6, y = 47.9, giver = "Bingles Blastenheimer", faction = "Alliance", turnin = { 1432, 63.6, 47.9 } }
Q[2039] = { name = "Find Bingles", level = 15, minLevel = 12, map = 1455, x = 69.2, y = 50.5, giver = "Gnoarn", faction = "Alliance", turnin = { 1432, 63.6, 47.9 } }
Q[2040] = { name = "Underground Assault", level = 20, minLevel = 15, map = 1453, x = 62.6, y = 34.1, giver = "Shoni the Shilent", faction = "Alliance", dungeon = "The Deadmines", turnin = { 1453, 62.6, 34.1 } }
Q[2041] = { name = "Speak with Shoni", level = 15, minLevel = 15, map = 1455, x = 69.2, y = 50.5, giver = "Gnoarn", faction = "Alliance", turnin = { 1453, 62.6, 34.1 } }
Q[2078] = { name = "Gyromast's Revenge", level = 20, minLevel = 14, map = 1439, x = 56.7, y = 13.5, giver = "Gelkak Gyromast", faction = "Alliance", pre = { 2098 }, group = true, turnin = { 1439, 56.7, 13.5 } }
Q[2098] = { name = "Gyromast's Retrieval", level = 20, minLevel = 14, map = 1439, x = 56.7, y = 13.5, giver = "Gelkak Gyromast", faction = "Alliance", turnin = { 1439, 56.7, 13.5 } }
Q[2118] = { name = "Plagued Lands", level = 14, minLevel = 10, map = 1439, x = 38.8, y = 43.4, giver = "Tharnariun Treetender", faction = "Alliance", turnin = { 1439, 38.8, 43.4 } }
Q[2138] = { name = "Cleansing of the Infected", level = 16, minLevel = 10, map = 1439, x = 38.8, y = 43.4, giver = "Tharnariun Treetender", faction = "Alliance", pre = { 2118 }, turnin = { 1439, 38.8, 43.4 } }
Q[2139] = { name = "Tharnariun's Hope", level = 18, minLevel = 10, map = 1439, x = 38.8, y = 43.4, giver = "Tharnariun Treetender", faction = "Alliance", pre = { 2138 }, turnin = { 1439, 38.8, 43.4 } }
Q[2158] = { name = "Rest and Relaxation", level = 5, minLevel = 1, map = 1429, x = 45.6, y = 47.7, giver = "Falkhaan Isenstrider", faction = "Alliance", turnin = { 1429, 43.8, 65.8 } }
Q[2159] = { name = "Dolanaar Delivery", level = 5, minLevel = 1, map = 1438, x = 61.2, y = 47.6, giver = "Porthannius", faction = "Alliance", turnin = { 1438, 55.6, 59.8 } }
Q[2160] = { name = "Supplies to Tannok", level = 5, minLevel = 1, map = 1426, x = 33.9, y = 72.2, giver = "Hands Springsprocket", faction = "Alliance", turnin = { 1426, 47.2, 52.2 } }
Q[2161] = { name = "A Peon's Burden", level = 5, minLevel = 1, map = 1411, x = 52.1, y = 68.3, giver = "Ukor", faction = "Horde", turnin = { 1411, 51.5, 41.6 } }
Q[2199] = { name = "Lore for a Price", level = 41, minLevel = 37, map = 1455, x = 36.4, y = 3.6, giver = "Talvash del Kissel", faction = "Alliance", pre = { 2198 }, dungeon = "Uldaman", turnin = { 1455, 36.4, 3.6 } }
Q[2200] = { name = "Back to Uldaman", level = 42, minLevel = 37, map = 1455, x = 36.4, y = 3.6, giver = "Talvash del Kissel", faction = "Alliance", pre = { 2199 }, dungeon = "Uldaman" }
Q[2202] = { name = "Uldaman Reagent Run", level = 42, minLevel = 36, map = 1418, x = 2.4, y = 46.1, giver = "Jarkal Mossmeld", faction = "Horde", pre = { 2258 }, dungeon = "Uldaman", turnin = { 1418, 2.4, 46.1 } }
Q[2205] = { name = "Seek out SI: 7", level = 10, minLevel = 10, map = 1429, x = 43.9, y = 65.9, giver = "Keryn Sylvius", faction = "Alliance", class = { ROGUE = true }, turnin = { 1453, 78.3, 70.7 } }
Q[2206] = { name = "Snatch and Grab", level = 10, minLevel = 10, map = 1453, x = 78.3, y = 70.7, giver = "Master Mathias Shaw", faction = "Alliance", pre = { 2205 }, class = { ROGUE = true }, turnin = { 1453, 78.3, 70.7 } }
Q[2218] = { name = "Road to Salvation", level = 10, minLevel = 10, map = 1426, x = 47.6, y = 52.6, giver = "Hogral Bakkan", faction = "Alliance", class = { ROGUE = true }, turnin = { 1455, 52.0, 14.8 } }
Q[2238] = { name = "Simple Subterfugin'", level = 10, minLevel = 10, map = 1455, x = 52.0, y = 14.8, giver = "Hulfdan Blackbeard", faction = "Alliance", pre = { 2218 }, class = { ROGUE = true }, turnin = { 1426, 25.2, 44.5 } }
Q[2239] = { name = "Onin's Report", level = 10, minLevel = 10, map = 1426, x = 25.2, y = 44.5, giver = "Onin MacHammar", faction = "Alliance", pre = { 2238 }, class = { ROGUE = true }, turnin = { 1455, 52.0, 14.8 } }
Q[2241] = { name = "The Apple Falls", level = 10, minLevel = 10, map = 1438, x = 56.4, y = 60.1, giver = "Jannok Breezesong", faction = "Alliance", class = { ROGUE = true }, turnin = { 1457, 37.0, 21.9 } }
Q[2242] = { name = "Destiny Calls", level = 10, minLevel = 10, map = 1457, x = 37.0, y = 21.9, giver = "Syurna", faction = "Alliance", pre = { 2241 }, class = { ROGUE = true }, turnin = { 1457, 37.0, 21.9 } }
Q[2258] = { name = "Badlands Reagent Run", level = 39, minLevel = 36, map = 1418, x = 2.4, y = 46.1, giver = "Jarkal Mossmeld", faction = "Horde", group = true, turnin = { 1418, 2.4, 46.1 } }
Q[2259] = { name = "Erion Shadewhisper", level = 16, minLevel = 16, map = 1438, x = 56.4, y = 60.1, giver = "Jannok Breezesong", faction = "Alliance", class = { ROGUE = true }, turnin = { 1457, 34.5, 25.9 } }
Q[2260] = { name = "Erion's Behest", level = 16, minLevel = 16, map = 1457, x = 34.5, y = 25.9, giver = "Erion Shadewhisper", faction = "Alliance", class = { ROGUE = true }, turnin = { 1453, 78.3, 71.1 } }
Q[2281] = { name = "Redridge Rendezvous", level = 16, minLevel = 16, map = 1453, x = 78.3, y = 71.1, giver = "Renzik \"The Shiv\"", faction = "Alliance", class = { ROGUE = true }, turnin = { 1433, 23.0, 52.0 } }
Q[2282] = { name = "Alther's Mill", level = 20, minLevel = 16, map = 1433, x = 23.0, y = 52.0, giver = "Lucius", faction = "Alliance", pre = { 2281 }, class = { ROGUE = true }, turnin = { 1433, 23.0, 52.0 } }
Q[2283] = { name = "Necklace Recovery", level = 41, minLevel = 37, map = 1454, x = 59.5, y = 36.6, giver = "Dran Droffers", faction = "Horde", dungeon = "Uldaman", turnin = { 1454, 59.5, 36.6 } }
Q[2284] = { name = "Necklace Recovery, Take 2", level = 41, minLevel = 37, map = 1454, x = 59.5, y = 36.6, giver = "Dran Droffers", faction = "Horde", pre = { 2283 }, dungeon = "Uldaman" }
Q[2298] = { name = "Kingly Shakedown", level = 16, minLevel = 16, map = 1455, x = 52.0, y = 14.8, giver = "Hulfdan Blackbeard", faction = "Alliance", class = { ROGUE = true }, turnin = { 1453, 78.3, 71.1 } }
Q[2299] = { name = "To Hulfdan!", level = 16, minLevel = 16, map = 1426, x = 47.6, y = 52.6, giver = "Hogral Bakkan", faction = "Alliance", class = { ROGUE = true }, turnin = { 1455, 52.0, 14.8 } }
Q[2300] = { name = "SI:7", level = 16, minLevel = 16, map = 1429, x = 43.9, y = 65.9, giver = "Keryn Sylvius", faction = "Alliance", class = { ROGUE = true }, turnin = { 1453, 78.3, 71.1 } }
Q[2338] = { name = "Translating the Journal", level = 42, minLevel = 37, map = 1418, x = 2.4, y = 46.1, giver = "Jarkal Mossmeld", faction = "Horde", pre = { 2318 }, dungeon = "Uldaman", turnin = { 1418, 2.4, 46.1 } }
Q[2339] = { name = "Find the Gems and Power Source", level = 44, minLevel = 37, map = 1418, x = 2.4, y = 46.1, giver = "Jarkal Mossmeld", faction = "Horde", pre = { 2338 }, dungeon = "Uldaman", turnin = { 1418, 2.4, 46.1 } }
Q[2340] = { name = "Deliver the Gems", level = 44, minLevel = 37, map = 1418, x = 2.4, y = 46.1, giver = "Jarkal Mossmeld", faction = "Horde", pre = { 2339 }, dungeon = "Uldaman", turnin = { 1454, 59.5, 36.6 } }
Q[2341] = { name = "Necklace Recovery, Take 3", level = 44, minLevel = 40, map = 1454, x = 59.5, y = 36.6, giver = "Dran Droffers", faction = "Horde", pre = { 2340 }, dungeon = "Uldaman", turnin = { 1418, 2.4, 46.1 } }
Q[2342] = { name = "Reclaimed Treasures", level = 43, minLevel = 33, map = 1458, x = 62.3, y = 48.6, giver = "Patrick Garrett", faction = "Horde", dungeon = "Uldaman", turnin = { 1458, 62.3, 48.6 } }
Q[2358] = { name = "Horns of Nez'ra", level = 22, minLevel = 16, map = 1433, x = 23.0, y = 52.3, giver = "Arantir", faction = "Alliance", class = { ROGUE = true }, group = true, turnin = { 1433, 23.0, 52.3 } }
Q[2359] = { name = "Klaven's Tower", level = 24, minLevel = 20, map = 1436, x = 68.5, y = 70.1, giver = "Agent Kearnen", faction = "Alliance", pre = { 2360 }, class = { ROGUE = true }, turnin = { 1453, 78.3, 70.7 } }
Q[2360] = { name = "Mathias and the Defias", level = 20, minLevel = 20, map = 1453, x = 78.3, y = 70.7, giver = "Master Mathias Shaw", faction = "Alliance", class = { ROGUE = true }, turnin = { 1436, 68.5, 70.1 } }
Q[2361] = { name = "Restoring the Necklace", level = 44, minLevel = 37, map = 1455, x = 36.4, y = 3.6, giver = "Talvash del Kissel", faction = "Alliance", pre = { 2204 }, dungeon = "Uldaman", turnin = { 1455, 36.4, 3.6 } }
Q[2378] = { name = "Find the Shattered Hand", level = 16, minLevel = 16, map = 1458, x = 83.5, y = 69.1, giver = "Mennet Carkad", faction = "Horde", class = { ROGUE = true }, turnin = { 1454, 43.0, 53.7 } }
Q[2379] = { name = "Zando'zan", level = 16, minLevel = 16, map = 1454, x = 43.0, y = 53.7, giver = "Shenthul", faction = "Horde", class = { ROGUE = true }, turnin = { 1454, 42.7, 53.0 } }
Q[2380] = { name = "To Orgrimmar!", level = 16, minLevel = 16, map = 1411, x = 52.0, y = 43.7, giver = "Kaplak", faction = "Horde", class = { ROGUE = true }, turnin = { 1454, 43.0, 53.7 } }
Q[2381] = { name = "Plundering the Plunderers", level = 18, minLevel = 16, map = 1413, x = 63.1, y = 36.3, giver = "Wrenix the Wretched", faction = "Horde", pre = { 2382 }, class = { ROGUE = true }, turnin = { 1413, 63.1, 36.3 } }
Q[2382] = { name = "Wrenix of Ratchet", level = 16, minLevel = 16, map = 1454, x = 42.7, y = 53.0, giver = "Zando'zan", faction = "Horde", pre = { 2379 }, class = { ROGUE = true }, turnin = { 1413, 63.1, 36.3 } }
Q[2383] = { name = "Simple Parchment", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { ORC = true }, class = { WARRIOR = true }, turnin = { 1411, 42.9, 69.4 } }
Q[2398] = { name = "The Lost Dwarves", level = 40, minLevel = 35, map = 1455, x = 74.6, y = 11.7, giver = "Prospector Stormpike", faction = "Alliance", dungeon = "Uldaman" }
Q[2399] = { name = "The Sprouted Fronds", level = 10, minLevel = 4, map = 1438, x = 60.8, y = 68.6, giver = "Sprouted Frond", faction = "Alliance", pre = { 931 }, turnin = { 1438, 60.8, 68.6 } }
Q[2418] = { name = "Power Stones", level = 36, minLevel = 30, map = 1418, x = 42.4, y = 52.9, giver = "Rigglefuzz", dungeon = "Uldaman", turnin = { 1418, 42.4, 52.9 } }
Q[2438] = { name = "The Emerald Dreamcatcher", level = 6, minLevel = 1, map = 1438, x = 55.6, y = 57.0, giver = "Tallonkai Swiftroot", faction = "Alliance", turnin = { 1438, 55.6, 57.0 } }
Q[2439] = { name = "The Platinum Discs", level = 47, minLevel = 40, map = 1455, x = 69.9, y = 18.6, giver = "High Explorer Magellas", faction = "Alliance", pre = { 2279 }, turnin = { 1455, 33.9, 59.1 } }
Q[2440] = { name = "The Platinum Discs", level = 47, minLevel = 40, map = 1456, x = 34.4, y = 46.9, giver = "Sage Truthseeker", faction = "Horde", pre = { 2280 }, turnin = { 1456, 46.6, 33.2 } }
Q[2458] = { name = "Deep Cover", level = 20, minLevel = 20, map = 1454, x = 43.0, y = 53.7, giver = "Shenthul", faction = "Horde", pre = { 2460 }, class = { ROGUE = true }, turnin = { 1413, 55.4, 5.6 } }
Q[2459] = { name = "Ferocitas the Dream Eater", level = 8, minLevel = 1, map = 1438, x = 55.6, y = 57.0, giver = "Tallonkai Swiftroot", faction = "Alliance", pre = { 2438 }, turnin = { 1438, 55.6, 57.0 } }
Q[2460] = { name = "The Shattered Salute", level = 20, minLevel = 20, map = 1454, x = 43.0, y = 53.7, giver = "Shenthul", faction = "Horde", class = { ROGUE = true }, turnin = { 1454, 43.0, 53.7 } }
Q[2478] = { name = "Mission: Possible But Not Probable", level = 24, minLevel = 20, map = 1413, x = 55.4, y = 5.6, giver = "Taskmaster Fizzule", faction = "Horde", pre = { 2458 }, class = { ROGUE = true }, group = true, turnin = { 1454, 43.0, 53.7 } }
Q[2479] = { name = "Hinott's Assistance", level = 26, minLevel = 20, map = 1454, x = 43.0, y = 53.7, giver = "Shenthul", faction = "Horde", pre = { 2478 }, class = { ROGUE = true }, turnin = { 1424, 61.6, 19.2 } }
Q[2480] = { name = "Hinott's Assistance", level = 20, minLevel = 20, map = 1424, x = 61.6, y = 19.2, giver = "Serge Hinott", faction = "Horde", pre = { 2479 }, class = { ROGUE = true }, turnin = { 1424, 61.6, 19.2 } }
Q[2498] = { name = "Return to Denalan", level = 9, minLevel = 4, map = 1457, x = 38.2, y = 21.6, giver = "Rellian Greenspyre", faction = "Alliance", pre = { 923 }, turnin = { 1438, 60.9, 68.5 } }
Q[2499] = { name = "Oakenscowl", level = 9, minLevel = 4, map = 1438, x = 60.9, y = 68.5, giver = "Denalan", faction = "Alliance", pre = { 2498 }, group = true, turnin = { 1438, 60.9, 68.5 } }
Q[2500] = { name = "Badlands Reagent Run", level = 39, minLevel = 36, map = 1432, x = 37.1, y = 49.4, giver = "Ghak Healtouch", faction = "Alliance", group = true, turnin = { 1432, 37.1, 49.4 } }
Q[2518] = { name = "Tears of the Moon", level = 12, minLevel = 5, map = 1457, x = 36.6, y = 85.9, giver = "Priestess A'moora", faction = "Alliance", turnin = { 1457, 36.6, 85.9 } }
Q[2519] = { name = "The Temple of the Moon", level = 10, minLevel = 5, map = 1457, x = 28.9, y = 45.8, giver = "Sister Aquinne", faction = "Alliance", turnin = { 1457, 36.6, 85.9 } }
Q[2520] = { name = "Sathrah's Sacrifice", level = 12, minLevel = 5, map = 1457, x = 36.6, y = 85.9, giver = "Priestess A'moora", faction = "Alliance", pre = { 2518 }, turnin = { 1457, 36.6, 85.9 } }
Q[2521] = { name = "To Serve Kum'isha", level = 55, minLevel = 45, map = 1419, x = 52.0, y = 35.6, giver = "Kum'isha the Collector", group = true, turnin = { 1419, 52.0, 35.6 } }
Q[2541] = { name = "The Sleeping Druid", level = 8, minLevel = 3, map = 1438, x = 44.9, y = 61.6, giver = "Oben Rageclaw", faction = "Alliance", turnin = { 1438, 44.9, 61.6 } }
Q[2561] = { name = "Druid of the Claw", level = 10, minLevel = 3, map = 1438, x = 44.9, y = 61.6, giver = "Oben Rageclaw", faction = "Alliance", pre = { 2541 }, turnin = { 1438, 44.9, 61.6 } }
Q[2581] = { name = "Snickerfang Jowls", level = 50, minLevel = 45, map = 1419, x = 50.5, y = 14.2, giver = "Bloodmage Drazial", turnin = { 1419, 50.5, 14.2 } }
Q[2583] = { name = "A Boar's Vitality", level = 50, minLevel = 45, map = 1419, x = 50.5, y = 14.2, giver = "Bloodmage Drazial", turnin = { 1419, 50.5, 14.2 } }
Q[2585] = { name = "The Decisive Striker", level = 50, minLevel = 45, map = 1419, x = 50.5, y = 14.2, giver = "Bloodmage Drazial", turnin = { 1419, 50.5, 14.2 } }
Q[2601] = { name = "The Basilisk's Bite", level = 50, minLevel = 45, map = 1419, x = 50.6, y = 14.3, giver = "Bloodmage Lynnore", turnin = { 1419, 50.6, 14.3 } }
Q[2603] = { name = "Vulture's Vigor", level = 50, minLevel = 45, map = 1419, x = 50.6, y = 14.3, giver = "Bloodmage Lynnore", turnin = { 1419, 50.6, 14.3 } }
Q[2605] = { name = "The Thirsty Goblin", level = 49, minLevel = 44, map = 1446, x = 51.8, y = 28.7, giver = "Marin Noggenfogger", turnin = { 1446, 51.8, 28.7 } }
Q[2606] = { name = "In Good Taste", level = 49, minLevel = 44, map = 1446, x = 51.8, y = 28.7, giver = "Marin Noggenfogger", pre = { 2605 }, turnin = { 1446, 51.1, 26.9 } }
Q[2607] = { name = "The Touch of Zanzil", level = 20, minLevel = 20, map = 1453, x = 78.3, y = 70.7, giver = "Master Mathias Shaw", faction = "Alliance", pre = { 2359 }, class = { ROGUE = true }, turnin = { 1453, 80.1, 69.9 } }
Q[2608] = { name = "The Touch of Zanzil", level = 20, minLevel = 20, map = 1453, x = 80.1, y = 69.9, giver = "Doc Mixilpixil", faction = "Alliance", pre = { 2607 }, class = { ROGUE = true }, turnin = { 1453, 80.1, 69.9 } }
Q[2609] = { name = "The Touch of Zanzil", level = 20, minLevel = 20, map = 1453, x = 80.1, y = 69.9, giver = "Doc Mixilpixil", faction = "Alliance", pre = { 2608 }, class = { ROGUE = true }, turnin = { 1453, 80.1, 69.9 } }
Q[2621] = { name = "The Disgraced One", level = 50, minLevel = 45, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", faction = "Horde", pre = { 2784 }, turnin = { 1435, 47.8, 54.9 } }
Q[2622] = { name = "The Missing Orders", level = 50, minLevel = 45, map = 1435, x = 47.8, y = 54.9, giver = "Dispatch Commander Ruag", faction = "Horde", pre = { 2621 }, turnin = { 1435, 45.0, 57.4 } }
Q[2623] = { name = "The Swamp Talker", level = 55, minLevel = 45, map = 1435, x = 45.0, y = 57.4, giver = "Bengor", faction = "Horde", pre = { 2622 }, turnin = { 1435, 34.3, 66.1 } }
Q[2641] = { name = "Sprinkle's Secret Ingredient", level = 49, minLevel = 44, map = 1446, x = 51.1, y = 26.9, giver = "Sprinkle", pre = { 2606 }, turnin = { 1446, 51.1, 26.9 } }
Q[2661] = { name = "Delivery for Marin", level = 49, minLevel = 44, map = 1446, x = 51.1, y = 26.9, giver = "Sprinkle", pre = { 2641 }, turnin = { 1446, 51.8, 28.7 } }
Q[2662] = { name = "Noggenfogger Elixir", level = 49, minLevel = 44, map = 1446, x = 51.8, y = 28.7, giver = "Marin Noggenfogger", pre = { 2661 }, turnin = { 1446, 51.8, 28.7 } }
Q[2681] = { name = "The Stones That Bind Us", level = 57, minLevel = 45, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", pre = { 2801 }, turnin = { 1435, 34.3, 66.1 } }
Q[2701] = { name = "Heroes of Old", level = 57, minLevel = 45, map = 1435, x = 33.5, y = 66.0, giver = "Corporal Thund Splithoof", pre = { 2702 }, turnin = { 1435, 33.3, 66.2 } }
Q[2702] = { name = "Heroes of Old", level = 57, minLevel = 45, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", pre = { 2681 }, turnin = { 1435, 33.5, 66.0 } }
Q[2742] = { name = "Rin'ji is Trapped!", level = 47, minLevel = 42, map = 1425, x = 30.7, y = 46.9, giver = "Rin'ji", faction = "Horde", turnin = { 1425, 86.3, 59.0 } }
Q[2766] = { name = "Find OOX-22/FE!", level = 45, minLevel = 40, map = 1444, x = 73.1, y = 56.9, giver = "Drop: OOX-22/FE Distress Beacon", turnin = { 1444, 53.4, 55.7 } }
Q[2767] = { name = "Rescue OOX-22/FE!", level = 45, minLevel = 40, map = 1444, x = 53.4, y = 55.7, giver = "Homing Robot OOX-22/FE", pre = { 2766 }, turnin = { 1434, 28.4, 76.3 } }
Q[2768] = { name = "Divino-matic Rod", level = 47, minLevel = 40, map = 1446, x = 52.5, y = 28.5, giver = "Chief Engineer Bilgewhizzle", dungeon = "Zul'Farrak", turnin = { 1446, 52.5, 28.5 } }
Q[2769] = { name = "The Brassbolts Brothers", level = 46, minLevel = 40, map = 1455, x = 67.9, y = 46.1, giver = "Klockmort Spannerspan", faction = "Alliance", turnin = { 1441, 78.1, 77.1 } }
Q[2770] = { name = "Gahz'rilla", level = 50, minLevel = 40, map = 1441, x = 78.1, y = 77.1, giver = "Wizzle Brassbolts", dungeon = "Zul'Farrak", turnin = { 1441, 78.1, 77.1 } }
Q[2781] = { name = "WANTED: Caliph Scorpidsting", level = 46, minLevel = 39, map = 1446, x = 66.8, y = 22.3, giver = "Wanted Poster", turnin = { 1446, 52.5, 28.5 } }
Q[2782] = { name = "Rin'ji's Secret", level = 47, minLevel = 42, map = 1425, x = 86.3, y = 59.0, giver = "Rin'ji's Secret", faction = "Horde", pre = { 2742 }, turnin = { 1458, 73.1, 32.9 } }
Q[2783] = { name = "Petty Squabbles", level = 57, minLevel = 50, map = 1419, x = 67.6, y = 19.3, giver = "Ambassador Ardalan", faction = "Alliance", turnin = { 1435, 34.3, 66.1 } }
Q[2784] = { name = "Fall From Grace", level = 50, minLevel = 45, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", faction = "Horde", turnin = { 1435, 34.3, 66.1 } }
Q[2801] = { name = "A Tale of Sorrow", level = 57, minLevel = 45, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", turnin = { 1435, 34.3, 66.1 } }
Q[2821] = { name = "The Mark of Quality", level = 46, minLevel = 40, map = 1444, x = 30.6, y = 42.7, giver = "Pratt McGrubben", faction = "Alliance", turnin = { 1444, 30.6, 42.7 } }
Q[2822] = { name = "The Mark of Quality", level = 46, minLevel = 40, map = 1444, x = 74.4, y = 42.9, giver = "Jangdor Swiftstrider", faction = "Horde", turnin = { 1444, 74.4, 42.9 } }
Q[2841] = { name = "Rig Wars", level = 35, minLevel = 25, map = 1454, x = 76.0, y = 25.4, giver = "Nogg", faction = "Horde", dungeon = "Gnomeregan", turnin = { 1454, 76.0, 25.4 } }
Q[2844] = { name = "The Giant Guardian", level = 49, minLevel = 44, map = 1444, x = 42.4, y = 22, giver = "Rockbiter", faction = "Alliance", turnin = { 1444, 38.2, 10.3 } }
Q[2845] = { name = "Wandering Shay", level = 49, minLevel = 44, map = 1444, x = 38.2, y = 10.3, giver = "Shay Leafrunner", faction = "Alliance", pre = { 2844 }, turnin = { 1444, 42.4, 22 } }
Q[2846] = { name = "Tiara of the Deep", level = 46, minLevel = 40, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", dungeon = "Zul'Farrak", turnin = { 1445, 46.1, 57.1 } }
Q[2861] = { name = "Tabetha's Task", level = 46, minLevel = 40, map = 1458, x = 85.1, y = 10.0, giver = "Anastasia Hartwell", alliance = { map = 1455, x = 27.2, y = 8.3, giver = "Bink" }, dungeon = "Zul'Farrak", turnin = { 1445, 46.1, 57.1 } }
Q[2862] = { name = "War on the Woodpaw", level = 42, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", faction = "Horde", turnin = { 1444, 74.9, 42.5 } }
Q[2863] = { name = "Alpha Strike", level = 43, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", faction = "Horde", pre = { 2862 }, turnin = { 1444, 74.9, 42.5 } }
Q[2864] = { name = "Tran'rek", level = 45, minLevel = 40, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", dungeon = "Zul'Farrak", turnin = { 1446, 51.6, 26.8 } }
Q[2865] = { name = "Scarab Shells", level = 45, minLevel = 40, map = 1446, x = 51.6, y = 26.8, giver = "Tran'rek", dungeon = "Zul'Farrak", turnin = { 1446, 51.6, 26.8 } }
Q[2866] = { name = "The Ruins of Solarsal", level = 43, minLevel = 40, map = 1444, x = 30.3, y = 46.2, giver = "Shandris Feathermoon", faction = "Alliance", turnin = { 1444, 26.3, 52.3 } }
Q[2867] = { name = "Return to Feathermoon Stronghold", level = 43, minLevel = 40, map = 1444, x = 26.3, y = 52.3, giver = "Solarsal Gazebo", faction = "Alliance", pre = { 2866 }, turnin = { 1444, 30.3, 46.2 } }
Q[2869] = { name = "Against the Hatecrest", level = 43, minLevel = 40, map = 1444, x = 30.4, y = 46.2, giver = "Latronicus Moonspear", faction = "Alliance", pre = { 3130 }, turnin = { 1444, 30.4, 46.2 } }
Q[2870] = { name = "Against Lord Shalzaru", level = 45, minLevel = 40, map = 1444, x = 30.4, y = 46.2, giver = "Latronicus Moonspear", faction = "Alliance", pre = { 2869 }, turnin = { 1444, 30.4, 46.2 } }
Q[2871] = { name = "Delivering the Relic", level = 45, minLevel = 40, map = 1444, x = 30.4, y = 46.2, giver = "Latronicus Moonspear", faction = "Alliance", pre = { 2870 }, turnin = { 1444, 30.1, 45.1 } }
Q[2872] = { name = "Stoley's Debt", level = 45, minLevel = 40, map = 1434, x = 27.8, y = 77.1, giver = "\"Sea Wolf\" MacKinley", turnin = { 1446, 67.1, 24.0 } }
Q[2873] = { name = "Stoley's Shipment", level = 45, minLevel = 40, map = 1446, x = 67.1, y = 24.0, giver = "Stoley", turnin = { 1446, 67.1, 24.0 } }
Q[2874] = { name = "Deliver to MacKinley", level = 45, minLevel = 40, map = 1446, x = 67.1, y = 24.0, giver = "Stoley", pre = { 2873 }, turnin = { 1434, 27.8, 77.1 } }
Q[2875] = { name = "WANTED: Andre Firebeard", level = 45, minLevel = 40, map = 1446, x = 66.8, y = 22.3, giver = "Wanted Poster", turnin = { 1446, 67.1, 23.9 } }
Q[2877] = { name = "Skulk Rock Clean-up", level = 48, minLevel = 40, map = 1425, x = 14.8, y = 44.6, giver = "Fraggar Thundermantle", faction = "Alliance", turnin = { 1425, 14.8, 44.6 } }
Q[2879] = { name = "The Stave of Equinex", level = 50, minLevel = 42, map = 1444, x = 31.8, y = 45.5, giver = "Troyas Moonbreeze", faction = "Alliance", pre = { 2943 }, turnin = { 1444, 38.8, 13.2 } }
Q[2880] = { name = "Troll Necklace Bounty", level = 45, minLevel = 40, map = 1425, x = 14.8, y = 44.6, giver = "Fraggar Thundermantle", faction = "Alliance", group = true, turnin = { 1425, 14.8, 44.6 } }
Q[2902] = { name = "Woodpaw Investigation", level = 43, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", faction = "Horde", pre = { 2863 }, turnin = { 1444, 71.6, 55.9 } }
Q[2903] = { name = "The Battle Plans", level = 43, minLevel = 39, map = 1444, x = 71.6, y = 55.9, giver = "Woodpaw Battle Map", faction = "Horde", pre = { 2902 }, turnin = { 1444, 74.9, 42.5 } }
Q[2922] = { name = "Save Techbot's Brain!", level = 26, minLevel = 20, map = 1455, x = 69.5, y = 50.3, giver = "Tinkmaster Overspark", faction = "Alliance", dungeon = "Gnomeregan", turnin = { 1455, 69.5, 50.3 } }
Q[2923] = { name = "Tinkmaster Overspark", level = 26, minLevel = 20, map = 1453, x = 51.0, y = 48.4, giver = "Brother Sarno", faction = "Alliance", dungeon = "Gnomeregan", turnin = { 1455, 69.5, 50.3 } }
Q[2924] = { name = "Essential Artificials", level = 30, minLevel = 24, map = 1455, x = 67.9, y = 46.1, giver = "Klockmort Spannerspan", faction = "Alliance", dungeon = "Gnomeregan", turnin = { 1455, 67.9, 46.1 } }
Q[2925] = { name = "Klockmort's Essentials", level = 30, minLevel = 24, map = 1457, x = 59.5, y = 45.4, giver = "Mathiel", faction = "Alliance", dungeon = "Gnomeregan", turnin = { 1455, 67.9, 46.1 } }
Q[2926] = { name = "Gnogaine", level = 27, minLevel = 20, map = 1426, x = 45.9, y = 49.4, giver = "Ozzie Togglevolt", faction = "Alliance", dungeon = "Gnomeregan", turnin = { 1426, 45.9, 49.4 } }
Q[2927] = { name = "The Day After", level = 27, minLevel = 20, map = 1455, x = 69.2, y = 50.5, giver = "Gnoarn", faction = "Alliance", dungeon = "Gnomeregan", turnin = { 1426, 45.9, 49.4 } }
Q[2928] = { name = "Gyrodrillmatic Excavationators", level = 30, minLevel = 20, map = 1453, x = 62.6, y = 34.1, giver = "Shoni the Shilent", faction = "Alliance", dungeon = "Gnomeregan", turnin = { 1453, 62.6, 34.1 } }
Q[2929] = { name = "The Grand Betrayal", level = 35, minLevel = 25, map = 1455, x = 68.8, y = 49.0, giver = "High Tinker Mekkatorque", faction = "Alliance", dungeon = "Gnomeregan", turnin = { 1455, 68.8, 49.0 } }
Q[2930] = { name = "Data Rescue", level = 30, minLevel = 25, map = 1455, x = 69.8, y = 48.1, giver = "Master Mechanic Castpipe", faction = "Alliance", dungeon = "Gnomeregan", turnin = { 1455, 69.8, 48.1 } }
Q[2931] = { name = "Castpipe's Task", level = 28, minLevel = 25, map = 1442, x = 59.5, y = 67.2, giver = "Gaxim Rustfizzle", faction = "Alliance", dungeon = "Gnomeregan", turnin = { 1455, 69.8, 48.1 } }
Q[2932] = { name = "Grim Message", level = 42, minLevel = 35, map = 1434, x = 32.2, y = 27.7, giver = "Nimboya", faction = "Horde", turnin = { 1434, 32.2, 27.7 } }
Q[2933] = { name = "Venom Bottles", level = 43, minLevel = 40, map = 1425, x = 23.5, y = 58.8, giver = "Venom Bottle", faction = "Horde", turnin = { 1424, 61.4, 19.1 } }
Q[2934] = { name = "Undamaged Venom Sac", level = 45, minLevel = 40, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", pre = { 2933 }, turnin = { 1424, 61.4, 19.1 } }
Q[2935] = { name = "Consult Master Gadrin", level = 45, minLevel = 40, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", faction = "Horde", pre = { 2934 }, turnin = { 1411, 56.0, 74.7 } }
Q[2936] = { name = "The Spider God", level = 45, minLevel = 40, map = 1411, x = 56.0, y = 74.7, giver = "Master Gadrin", faction = "Horde", pre = { 2935 }, dungeon = "Zul'Farrak", turnin = { 1411, 56.0, 74.7 } }
Q[2939] = { name = "In Search of Knowledge", level = 47, minLevel = 42, map = 1444, x = 31.8, y = 45.5, giver = "Troyas Moonbreeze", faction = "Alliance", turnin = { 1438, 55.4, 92.2 } }
Q[2940] = { name = "Feralas: A History", level = 47, minLevel = 42, map = 1438, x = 55.2, y = 91.5, giver = "Feralas: A History", faction = "Alliance", pre = { 2939 }, turnin = { 1438, 55.4, 92.2 } }
Q[2941] = { name = "The Borrower", level = 48, minLevel = 42, map = 1438, x = 55.4, y = 92.2, giver = "Daryn Lightwind", faction = "Alliance", pre = { 2940 }, turnin = { 1446, 52.4, 26.9 } }
Q[2942] = { name = "The Morrow Stone", level = 50, minLevel = 42, map = 1444, x = 38.8, y = 13.2, giver = "Equinex Monolith", faction = "Alliance", pre = { 2879 }, turnin = { 1444, 31.8, 45.5 } }
Q[2943] = { name = "Return to Troyas", level = 48, minLevel = 42, map = 1438, x = 55.4, y = 92.2, giver = "Daryn Lightwind", faction = "Alliance", pre = { 2944 }, turnin = { 1444, 31.8, 45.5 } }
Q[2944] = { name = "The Super Snapper FX", level = 48, minLevel = 42, map = 1446, x = 52.4, y = 26.9, giver = "Curgle Cranklehop", faction = "Alliance", pre = { 2941 }, group = true, turnin = { 1438, 55.4, 92.2 } }
Q[2946] = { name = "Seeing What Happens", level = 50, minLevel = 45, map = 1455, x = 77.5, y = 11.8, giver = "Historian Karnik", faction = "Alliance", pre = { 2963 }, turnin = { 1446, 37.6, 81.4 } }
Q[2948] = { name = "Gnome Improvement", level = 35, minLevel = 28, map = 1455, x = 36.4, y = 3.6, giver = "Talvash del Kissel", faction = "Alliance", pre = { 2947 }, turnin = { 1455, 36.4, 3.6 } }
Q[2950] = { name = "Nogg's Ring Redo", level = 35, minLevel = 28, map = 1454, x = 76.0, y = 25.4, giver = "Nogg", faction = "Horde", pre = { 2949 }, turnin = { 1454, 76.0, 25.4 } }
Q[2954] = { name = "The Stone Watcher", level = 50, minLevel = 45, map = 1446, x = 37.6, y = 81.4, giver = "Stone Watcher of Norgannon", turnin = { 1446, 37.6, 81.4 } }
Q[2962] = { name = "The Only Cure is More Green Glow", level = 30, minLevel = 20, map = 1426, x = 45.9, y = 49.4, giver = "Ozzie Togglevolt", faction = "Alliance", pre = { 2926 }, dungeon = "Gnomeregan", turnin = { 1426, 45.9, 49.4 } }
Q[2963] = { name = "Portents of Uldum", level = 50, minLevel = 45, map = 1455, x = 69.9, y = 18.6, giver = "High Explorer Magellas", faction = "Alliance", pre = { 2439 }, turnin = { 1455, 77.5, 11.8 } }
Q[2964] = { name = "A Future Task", level = 50, minLevel = 45, map = 1455, x = 77.5, y = 11.8, giver = "Historian Karnik", faction = "Alliance", pre = { 2977 }, turnin = { 1455, 69.9, 18.6 } }
Q[2965] = { name = "Portents of Uldum", level = 50, minLevel = 45, map = 1456, x = 34.4, y = 46.9, giver = "Sage Truthseeker", faction = "Horde", pre = { 2440 }, turnin = { 1456, 75.7, 31.6 } }
Q[2966] = { name = "Seeing What Happens", level = 50, minLevel = 45, map = 1456, x = 75.7, y = 31.6, giver = "Nara Wildmane", faction = "Horde", pre = { 2965 }, turnin = { 1446, 37.6, 81.4 } }
Q[2967] = { name = "Return to Thunder Bluff", level = 50, minLevel = 45, map = 1446, x = 37.6, y = 81.4, giver = "Uldum Pedestal", faction = "Horde", pre = { 2954 }, turnin = { 1456, 75.7, 31.6 } }
Q[2968] = { name = "A Future Task", level = 50, minLevel = 45, map = 1456, x = 75.7, y = 31.6, giver = "Nara Wildmane", faction = "Horde", pre = { 2967 }, turnin = { 1456, 34.4, 46.9 } }
Q[2969] = { name = "Freedom for All Creatures", level = 47, minLevel = 38, map = 1444, x = 65.9, y = 45.6, giver = "Kindal Moonweaver", faction = "Alliance", turnin = { 1444, 65.9, 45.6 } }
Q[2970] = { name = "Doling Justice", level = 47, minLevel = 38, map = 1444, x = 66.0, y = 45.6, giver = "Jer'kai Moonweaver", faction = "Alliance", pre = { 2969 }, turnin = { 1444, 66.0, 45.6 } }
Q[2972] = { name = "Doling Justice", level = 47, minLevel = 38, map = 1444, x = 66.0, y = 45.6, giver = "Jer'kai Moonweaver", faction = "Alliance", pre = { 2970 }, turnin = { 1457, 39.1, 81.6 } }
Q[2973] = { name = "A New Cloak's Sheen", level = 45, minLevel = 38, map = 1444, x = 75.9, y = 42.7, giver = "Krueg Skullsplitter", faction = "Horde", turnin = { 1444, 75.9, 42.7 } }
Q[2974] = { name = "A Grim Discovery", level = 45, minLevel = 38, map = 1444, x = 75.9, y = 42.7, giver = "Krueg Skullsplitter", faction = "Horde", pre = { 2973 }, turnin = { 1444, 75.9, 42.7 } }
Q[2975] = { name = "The Ogres of Feralas", level = 43, minLevel = 38, map = 1444, x = 75.8, y = 43.6, giver = "Rok Orhan", faction = "Horde", turnin = { 1444, 75.8, 43.6 } }
Q[2976] = { name = "A Grim Discovery", level = 45, minLevel = 37, map = 1444, x = 75.9, y = 42.7, giver = "Krueg Skullsplitter", faction = "Horde", pre = { 2974 }, turnin = { 1454, 75.2, 34.2 } }
Q[2977] = { name = "Return to Ironforge", level = 50, minLevel = 45, map = 1446, x = 37.6, y = 81.4, giver = "Uldum Pedestal", faction = "Alliance", pre = { 2954 }, turnin = { 1455, 77.5, 11.8 } }
Q[2978] = { name = "The Gordunni Scroll", level = 43, minLevel = 38, map = 1444, x = 74.5, y = 27.9, giver = "Drop: Gordunni Scroll", faction = "Horde", turnin = { 1444, 75.8, 43.6 } }
Q[2979] = { name = "Dark Ceremony", level = 46, minLevel = 38, map = 1444, x = 75.8, y = 43.6, giver = "Rok Orhan", faction = "Horde", pre = { 2978 }, turnin = { 1444, 75.8, 43.6 } }
Q[2980] = { name = "The Ogres of Feralas", level = 44, minLevel = 38, map = 1444, x = 75.8, y = 43.6, giver = "Rok Orhan", faction = "Horde", pre = { 2975 }, turnin = { 1444, 75.8, 43.6 } }
Q[2981] = { name = "A Threat in Feralas", level = 43, minLevel = 38, map = 1454, x = 75.2, y = 34.2, giver = "Belgrom Rockmaul", faction = "Horde", turnin = { 1444, 75.8, 43.6 } }
Q[2982] = { name = "The High Wilderness", level = 44, minLevel = 39, map = 1444, x = 31.8, y = 45.6, giver = "Angelas Moonbreeze", faction = "Alliance", turnin = { 1444, 31.8, 45.6 } }
Q[2983] = { name = "Call of Fire", level = 10, minLevel = 10, map = 1411, x = 54.4, y = 42.6, giver = "Swart", faction = "Horde", class = { SHAMAN = true }, turnin = { 1413, 56.0, 19.9 } }
Q[2984] = { name = "Call of Fire", level = 10, minLevel = 10, map = 1412, x = 47.4, y = 62.5, giver = "Narm Skychaser", faction = "Horde", class = { SHAMAN = true }, turnin = { 1413, 56.0, 19.9 } }
Q[2985] = { name = "Call of Water", level = 20, minLevel = 20, map = 1411, x = 54.4, y = 42.6, giver = "Swart", faction = "Horde", class = { SHAMAN = true }, turnin = { 1413, 65.8, 43.8 } }
Q[2986] = { name = "Call of Water", level = 20, minLevel = 20, map = 1412, x = 47.4, y = 62.5, giver = "Narm Skychaser", faction = "Horde", class = { SHAMAN = true }, turnin = { 1413, 65.8, 43.8 } }
Q[2987] = { name = "Gordunni Cobalt", level = 43, minLevel = 38, map = 1444, x = 75.7, y = 44.3, giver = "Orwin Gizzmick", faction = "Horde", turnin = { 1444, 75.7, 44.3 } }
Q[2988] = { name = "Witherbark Cages", level = 45, minLevel = 40, map = 1425, x = 9.8, y = 44.5, giver = "Gryphon Master Talonaxe", faction = "Alliance", turnin = { 1425, 9.8, 44.5 } }
Q[2989] = { name = "The Altar of Zul", level = 48, minLevel = 40, map = 1425, x = 9.8, y = 44.5, giver = "Gryphon Master Talonaxe", faction = "Alliance", pre = { 2988 }, turnin = { 1425, 9.8, 44.5 } }
Q[2990] = { name = "Thadius Grimshade", level = 47, minLevel = 40, map = 1425, x = 9.8, y = 44.5, giver = "Gryphon Master Talonaxe", faction = "Alliance", pre = { 2989 }, turnin = { 1419, 66.9, 19.5 } }
Q[2991] = { name = "Nekrum's Medallion", level = 47, minLevel = 40, map = 1419, x = 66.9, y = 19.5, giver = "Thadius Grimshade", faction = "Alliance", pre = { 2990 }, dungeon = "Zul'Farrak", turnin = { 1419, 66.9, 19.5 } }
Q[2992] = { name = "The Divination", level = 47, minLevel = 40, map = 1419, x = 66.9, y = 19.5, giver = "Thadius Grimshade", faction = "Alliance", pre = { 2991 }, turnin = { 1419, 66.9, 19.5 } }
Q[2993] = { name = "Return to the Hinterlands", level = 47, minLevel = 40, map = 1419, x = 66.9, y = 19.5, giver = "Thadius Grimshade", faction = "Alliance", pre = { 2992 }, turnin = { 1425, 9.8, 44.5 } }
Q[2994] = { name = "Saving Sharpbeak", level = 51, minLevel = 40, map = 1425, x = 9.8, y = 44.5, giver = "Gryphon Master Talonaxe", faction = "Alliance", pre = { 2993 }, turnin = { 1425, 9.8, 44.5 } }
Q[2995] = { name = "Lines of Communication", level = 47, minLevel = 42, map = 1458, x = 73.1, y = 32.9, giver = "Oran Snakewrithe", faction = "Horde", turnin = { 1458, 73.1, 32.9 } }
Q[2996] = { name = "Seeking Strahad", level = 30, minLevel = 30, map = 1454, x = 48.2, y = 45.3, giver = "Gan'rul Bloodeye", faction = "Horde", class = { WARLOCK = true }, turnin = { 1413, 62.6, 35.5 } }
Q[2997] = { name = "Tome of Divinity", level = 12, minLevel = 12, map = 1426, x = 47.6, y = 52.1, giver = "Azar Stronghammer", faction = "Alliance", race = { DWARF = true }, class = { PALADIN = true }, turnin = { 1455, 27.6, 12.2 } }
Q[2998] = { name = "Tome of Divinity", level = 12, minLevel = 12, map = 1429, x = 41.1, y = 66.0, giver = "Brother Wilhelm", faction = "Alliance", race = { HUMAN = true }, class = { PALADIN = true }, turnin = { 1453, 50.5, 47.5 } }
Q[2999] = { name = "Tome of Divinity", level = 12, minLevel = 12, map = 1455, x = 23.1, y = 6.1, giver = "Brandur Ironhammer", faction = "Alliance", race = { DWARF = true }, class = { PALADIN = true }, turnin = { 1455, 27.6, 12.2 } }
Q[3000] = { name = "Tome of Divinity", level = 12, minLevel = 12, map = 1453, x = 48.4, y = 50.2, giver = "Lord Grayson Shadowbreaker", faction = "Alliance", race = { DWARF = true }, class = { PALADIN = true }, turnin = { 1455, 27.6, 12.2 } }
Q[3001] = { name = "Seeking Strahad", level = 30, minLevel = 30, map = 1458, x = 85.1, y = 26.0, giver = "Carendin Halgar", faction = "Horde", class = { WARLOCK = true }, turnin = { 1413, 62.6, 35.5 } }
Q[3002] = { name = "The Gordunni Orb", level = 47, minLevel = 38, map = 1444, x = 75.8, y = 43.6, giver = "Rok Orhan", faction = "Horde", pre = { 2979 }, turnin = { 1454, 39.2, 86.3 } }
Q[3022] = { name = "Handle With Care", level = 47, minLevel = 42, map = 1446, x = 52.4, y = 26.9, giver = "Curgle Cranklehop", faction = "Alliance", turnin = { 1438, 55.5, 92.0 } }
Q[3042] = { name = "Troll Temper", level = 45, minLevel = 40, map = 1446, x = 51.4, y = 28.8, giver = "Trenton Lighthammer", dungeon = "Zul'Farrak", turnin = { 1446, 51.4, 28.8 } }
Q[3062] = { name = "Dark Heart", level = 50, minLevel = 45, map = 1444, x = 76.2, y = 43.8, giver = "Talo Thornhoof", faction = "Horde", group = true, turnin = { 1444, 76.2, 43.8 } }
Q[3063] = { name = "Vengeance on the Northspring", level = 50, minLevel = 45, map = 1444, x = 76.2, y = 43.8, giver = "Talo Thornhoof", faction = "Horde", turnin = { 1444, 76.2, 43.8 } }
Q[3065] = { name = "Simple Tablet", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { TROLL = true }, class = { WARRIOR = true }, turnin = { 1411, 42.9, 69.4 } }
Q[3082] = { name = "Etched Tablet", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { TROLL = true }, class = { HUNTER = true }, turnin = { 1411, 42.8, 69.3 } }
Q[3083] = { name = "Encrypted Tablet", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { TROLL = true }, class = { ROGUE = true }, turnin = { 1411, 41.3, 68 } }
Q[3084] = { name = "Rune-Inscribed Tablet", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { TROLL = true }, class = { SHAMAN = true }, turnin = { 1411, 42.4, 69 } }
Q[3085] = { name = "Hallowed Tablet", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { TROLL = true }, class = { PRIEST = true }, turnin = { 1411, 42.4, 68.8 } }
Q[3086] = { name = "Glyphic Tablet", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { TROLL = true }, class = { MAGE = true }, turnin = { 1411, 42.5, 69.0 } }
Q[3087] = { name = "Etched Parchment", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { ORC = true }, class = { HUNTER = true }, turnin = { 1411, 42.8, 69.3 } }
Q[3088] = { name = "Encrypted Parchment", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { ORC = true }, class = { ROGUE = true }, turnin = { 1411, 41.3, 68 } }
Q[3089] = { name = "Rune-Inscribed Parchment", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { ORC = true }, class = { SHAMAN = true }, turnin = { 1411, 42.4, 69 } }
Q[3090] = { name = "Tainted Parchment", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { ORC = true }, class = { WARLOCK = true }, turnin = { 1411, 40.6, 68.5 } }
Q[3091] = { name = "Simple Note", level = 1, minLevel = 1, map = 1412, x = 44.5, y = 77.5, giver = "Grull Hawkwind", faction = "Horde", pre = { 747 }, race = { TAUREN = true }, class = { WARRIOR = true }, turnin = { 1412, 43.8, 76.7 } }
Q[3092] = { name = "Etched Note", level = 1, minLevel = 1, map = 1412, x = 44.5, y = 77.5, giver = "Grull Hawkwind", faction = "Horde", pre = { 747 }, race = { TAUREN = true }, class = { HUNTER = true }, turnin = { 1412, 44.0, 76.3 } }
Q[3093] = { name = "Rune-Inscribed Note", level = 1, minLevel = 1, map = 1412, x = 44.5, y = 77.5, giver = "Grull Hawkwind", faction = "Horde", pre = { 747 }, race = { TAUREN = true }, class = { SHAMAN = true }, turnin = { 1412, 44.6, 76.6 } }
Q[3094] = { name = "Verdant Note", level = 1, minLevel = 1, map = 1412, x = 44.5, y = 77.5, giver = "Grull Hawkwind", faction = "Horde", pre = { 747 }, race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1412, 44.6, 76.5 } }
Q[3095] = { name = "Simple Scroll", level = 1, minLevel = 1, map = 1420, x = 30.8, y = 66.2, giver = "Shadow Priest Sarvis", faction = "Horde", pre = { 364 }, race = { SCOURGE = true }, class = { WARRIOR = true }, turnin = { 1420, 32.7, 65.6 } }
Q[3096] = { name = "Encrypted Scroll", level = 1, minLevel = 1, map = 1420, x = 30.8, y = 66.2, giver = "Shadow Priest Sarvis", faction = "Horde", pre = { 364 }, race = { SCOURGE = true }, class = { ROGUE = true }, turnin = { 1420, 32.5, 65.7 } }
Q[3097] = { name = "Hallowed Scroll", level = 1, minLevel = 1, map = 1420, x = 30.8, y = 66.2, giver = "Shadow Priest Sarvis", faction = "Horde", pre = { 364 }, race = { SCOURGE = true }, class = { PRIEST = true }, turnin = { 1420, 31.1, 66.0 } }
Q[3098] = { name = "Glyphic Scroll", level = 1, minLevel = 1, map = 1420, x = 30.8, y = 66.2, giver = "Shadow Priest Sarvis", faction = "Horde", pre = { 364 }, race = { SCOURGE = true }, class = { MAGE = true }, turnin = { 1420, 30.9, 66.1 } }
Q[3099] = { name = "Tainted Scroll", level = 1, minLevel = 1, map = 1420, x = 30.8, y = 66.2, giver = "Shadow Priest Sarvis", faction = "Horde", pre = { 364 }, race = { SCOURGE = true }, class = { WARLOCK = true }, turnin = { 1420, 30.9, 66.3 } }
Q[3100] = { name = "Simple Letter", level = 1, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 7 }, race = { HUMAN = true }, class = { WARRIOR = true }, turnin = { 1429, 50.2, 42.3 } }
Q[3101] = { name = "Consecrated Letter", level = 1, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 7 }, race = { HUMAN = true }, class = { PALADIN = true }, turnin = { 1429, 50.4, 42.1 } }
Q[3102] = { name = "Encrypted Letter", level = 1, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 7 }, race = { HUMAN = true }, class = { ROGUE = true }, turnin = { 1429, 50.3, 39.9 } }
Q[3103] = { name = "Hallowed Letter", level = 1, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 7 }, race = { HUMAN = true }, class = { PRIEST = true }, turnin = { 1429, 49.8, 39.5 } }
Q[3104] = { name = "Glyphic Letter", level = 1, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 7 }, race = { HUMAN = true }, class = { MAGE = true }, turnin = { 1429, 49.7, 39.4 } }
Q[3105] = { name = "Tainted Letter", level = 1, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 7 }, race = { HUMAN = true }, class = { WARLOCK = true }, turnin = { 1429, 49.9, 42.6 } }
Q[3106] = { name = "Simple Rune", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, race = { DWARF = true }, class = { WARRIOR = true }, turnin = { 1426, 28.8, 67.2 } }
Q[3107] = { name = "Consecrated Rune", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, race = { DWARF = true }, class = { PALADIN = true }, turnin = { 1426, 28.8, 68.3 } }
Q[3108] = { name = "Etched Rune", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, race = { DWARF = true }, class = { HUNTER = true }, turnin = { 1426, 29.2, 67.5 } }
Q[3109] = { name = "Encrypted Rune", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, race = { DWARF = true }, class = { ROGUE = true }, turnin = { 1426, 28.4, 67.5 } }
Q[3110] = { name = "Hallowed Rune", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, race = { DWARF = true }, class = { PRIEST = true }, turnin = { 1426, 28.6, 66.4 } }
Q[3112] = { name = "Simple Memorandum", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, race = { GNOME = true }, class = { WARRIOR = true }, turnin = { 1426, 28.8, 67.2 } }
Q[3113] = { name = "Encrypted Memorandum", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, race = { GNOME = true }, class = { ROGUE = true }, turnin = { 1426, 28.4, 67.5 } }
Q[3114] = { name = "Glyphic Memorandum", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, race = { GNOME = true }, class = { MAGE = true }, turnin = { 1426, 28.7, 66.4 } }
Q[3115] = { name = "Tainted Memorandum", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, race = { GNOME = true }, class = { WARLOCK = true }, turnin = { 1426, 28.6, 66.1 } }
Q[3116] = { name = "Simple Sigil", level = 1, minLevel = 1, map = 1438, x = 58.7, y = 44.3, giver = "Conservator Ilthalaine", faction = "Alliance", pre = { 456 }, race = { NIGHTELF = true }, class = { WARRIOR = true }, turnin = { 1438, 59.6, 38.4 } }
Q[3117] = { name = "Etched Sigil", level = 1, minLevel = 1, map = 1438, x = 58.7, y = 44.3, giver = "Conservator Ilthalaine", faction = "Alliance", pre = { 456 }, race = { NIGHTELF = true }, class = { HUNTER = true }, turnin = { 1438, 58.7, 40.5 } }
Q[3118] = { name = "Encrypted Sigil", level = 1, minLevel = 1, map = 1438, x = 58.7, y = 44.3, giver = "Conservator Ilthalaine", faction = "Alliance", pre = { 456 }, race = { NIGHTELF = true }, class = { ROGUE = true }, turnin = { 1438, 59.6, 38.7 } }
Q[3119] = { name = "Hallowed Sigil", level = 1, minLevel = 1, map = 1438, x = 58.7, y = 44.3, giver = "Conservator Ilthalaine", faction = "Alliance", pre = { 456 }, race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1438, 59.2, 40.4 } }
Q[3120] = { name = "Verdant Sigil", level = 1, minLevel = 1, map = 1438, x = 58.7, y = 44.3, giver = "Conservator Ilthalaine", faction = "Alliance", pre = { 456 }, race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1438, 58.6, 40.3 } }
Q[3121] = { name = "A Strange Request", level = 45, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", faction = "Horde", turnin = { 1454, 49.5, 50.6 } }
Q[3122] = { name = "Return to Witch Doctor Uzer'i", level = 45, minLevel = 40, map = 1454, x = 49.5, y = 50.6, giver = "Neeru Fireblade", faction = "Horde", pre = { 3121 }, turnin = { 1444, 74.4, 43.4 } }
Q[3123] = { name = "Testing the Vessel", level = 47, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", faction = "Horde", pre = { 3122 }, turnin = { 1444, 74.4, 43.4 } }
Q[3124] = { name = "Hippogryph Muisek", level = 47, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", faction = "Horde", pre = { 3123 }, turnin = { 1444, 74.4, 43.4 } }
Q[3125] = { name = "Faerie Dragon Muisek", level = 45, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", faction = "Horde", pre = { 3124 }, turnin = { 1444, 74.4, 43.4 } }
Q[3126] = { name = "Treant Muisek", level = 50, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", faction = "Horde", pre = { 3125 }, turnin = { 1444, 74.4, 43.4 } }
Q[3127] = { name = "Mountain Giant Muisek", level = 50, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", faction = "Horde", pre = { 3126 }, group = true, turnin = { 1444, 74.4, 43.4 } }
Q[3128] = { name = "Natural Materials", level = 50, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", faction = "Horde", pre = { 3122 }, group = true, turnin = { 1444, 74.4, 43.4 } }
Q[3129] = { name = "Weapons of Spirit", level = 50, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", faction = "Horde", pre = { 3127, 3128 }, turnin = { 1444, 74.4, 43.4 } }
Q[3130] = { name = "Against the Hatecrest", level = 43, minLevel = 40, map = 1444, x = 30.3, y = 46.2, giver = "Shandris Feathermoon", faction = "Alliance", pre = { 2867 }, turnin = { 1444, 30.4, 46.2 } }
Q[3141] = { name = "Loramus", level = 57, minLevel = 45, map = 1447, x = 60.8, y = 66.3, giver = "Loramus Thalipedes", pre = { 2744 }, turnin = { 1447, 60.8, 66.3 } }
Q[3161] = { name = "Gahz'ridian", level = 48, minLevel = 43, map = 1446, x = 52.7, y = 45.9, giver = "Marvon Rivetseeker", turnin = { 1446, 52.7, 45.9 } }
Q[3182] = { name = "Proof of Deed", level = 48, minLevel = 40, map = 1432, x = 18.2, y = 84.0, giver = "Mountaineer Pebblebitty", faction = "Alliance", pre = { 3181 }, turnin = { 1455, 71.5, 15.7 } }
Q[3201] = { name = "At Last!", level = 48, minLevel = 40, map = 1455, x = 71.5, y = 15.7, giver = "Curator Thorius", faction = "Alliance", pre = { 3182 }, turnin = { 1432, 18.2, 84.0 } }
Q[3221] = { name = "Speak with Renferrel", level = 12, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", faction = "Horde", pre = { 449 }, turnin = { 1421, 42.8, 40.9 } }
Q[3261] = { name = "Jorn Skyseer", level = 18, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", faction = "Horde", pre = { 905 }, turnin = { 1413, 44.9, 59.1 } }
Q[3281] = { name = "Stolen Silver", level = 18, minLevel = 9, map = 1413, x = 51.9, y = 30.3, giver = "Gazrog", faction = "Horde", pre = { 869 }, turnin = { 1413, 51.9, 30.3 } }
Q[3301] = { name = "Mura Runetotem", level = 15, minLevel = 10, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", faction = "Horde", pre = { 880 }, turnin = { 1421, 42.9, 42.0 } }
Q[3341] = { name = "Bring the End", level = 42, minLevel = 37, map = 1458, x = 74.0, y = 33.3, giver = "Andrew Brownell", faction = "Horde", dungeon = "Razorfen Downs", turnin = { 1458, 74.0, 33.3 } }
Q[3361] = { name = "A Refugee's Quandary", level = 3, minLevel = 3, map = 1426, x = 28.6, y = 67.6, giver = "Felix Whindlebolt", faction = "Alliance", turnin = { 1426, 28.6, 67.6 } }
Q[3362] = { name = "Thistleshrub Valley", level = 50, minLevel = 45, map = 1446, x = 51.6, y = 26.8, giver = "Tran'rek", turnin = { 1446, 51.6, 26.8 } }
Q[3364] = { name = "Scalding Mornbrew Delivery", level = 5, minLevel = 4, map = 1426, x = 25.0, y = 76.0, giver = "Nori Pridedrift", faction = "Alliance", turnin = { 1426, 28.8, 66.4 } }
Q[3365] = { name = "Bring Back the Mug", level = 5, minLevel = 4, map = 1426, x = 28.8, y = 66.4, giver = "Durnan Furcutter", faction = "Alliance", pre = { 3364 }, turnin = { 1426, 25.0, 76.0 } }
Q[3367] = { name = "Suntara Stones", level = 48, minLevel = 40, map = 1427, x = 63.9, y = 61.0, giver = "Dorius Stonetender", faction = "Alliance", turnin = { 1427, 74.5, 19.3 } }
Q[3368] = { name = "Suntara Stones", level = 48, minLevel = 40, map = 1427, x = 74.5, y = 19.3, giver = "Singed Letter", faction = "Alliance", pre = { 3367 }, turnin = { 1455, 71.5, 15.7 } }
Q[3369] = { name = "In Nightmares", level = 25, minLevel = 15, map = 1413, x = 48.2, y = 32.8, giver = "Falla Sagewind", faction = "Horde", pre = { 6981 }, turnin = { 1456, 78.6, 28.6 } }
Q[3370] = { name = "In Nightmares", level = 25, minLevel = 15, map = 1413, x = 48.2, y = 32.8, giver = "Falla Sagewind", faction = "Alliance", pre = { 6981 }, turnin = { 1457, 35.4, 8.4 } }
Q[3372] = { name = "Release Them", level = 52, minLevel = 40, map = 1427, x = 41.1, y = 25.6, giver = "Dying Archaeologist", faction = "Alliance", pre = { 3371 }, turnin = { 1427, 41.2, 25.4 } }
Q[3374] = { name = "The Essence of Eranikus", level = 55, minLevel = 48, map = 1435, x = 13.7, y = 71.7, giver = "Drop: Oathstone of Ysera's Dragonflight", pre = { 3373 }, turnin = { 1435, 13.7, 71.7 } }
Q[3376] = { name = "Break Sharptusk!", level = 5, minLevel = 3, map = 1412, x = 44.2, y = 77.0, giver = "Brave Windfeather", faction = "Horde", turnin = { 1412, 44.2, 77.0 } }
Q[3377] = { name = "Prayer to Elune", level = 50, minLevel = 40, map = 1427, x = 29.6, y = 26.3, giver = "Zamael Lunthistle", faction = "Alliance", turnin = { 1427, 29.6, 26.3 } }
Q[3378] = { name = "Prayer to Elune", level = 50, minLevel = 40, map = 1427, x = 29.6, y = 26.3, giver = "Zamael Lunthistle", faction = "Alliance", pre = { 3377 }, group = true, turnin = { 1457, 38.3, 81.0 } }
Q[3380] = { name = "The Sunken Temple", level = 51, minLevel = 46, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", faction = "Horde", dungeon = "The Temple of Atal'Hakkar", turnin = { 1446, 52.7, 45.9 } }
Q[3441] = { name = "Divine Retribution", level = 48, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", group = true, turnin = { 1427, 39.1, 39.0 } }
Q[3442] = { name = "The Flawless Flame", level = 48, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3441 }, turnin = { 1427, 39.1, 39.0 } }
Q[3443] = { name = "Forging the Shaft", level = 48, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3442 }, group = true, turnin = { 1427, 39.1, 39.0 } }
Q[3444] = { name = "The Stone Circle", level = 51, minLevel = 46, map = 1446, x = 52.7, y = 45.9, giver = "Marvon Rivetseeker", turnin = { 1446, 52.7, 45.9 } }
Q[3445] = { name = "The Sunken Temple", level = 51, minLevel = 46, map = 1444, x = 31.8, y = 45.6, giver = "Angelas Moonbreeze", faction = "Alliance", turnin = { 1446, 52.7, 45.9 } }
Q[3446] = { name = "Into the Depths", level = 51, minLevel = 46, map = 1446, x = 52.7, y = 45.9, giver = "Marvon Rivetseeker", pre = { 3444 }, dungeon = "The Temple of Atal'Hakkar" }
Q[3447] = { name = "Secret of the Circle", level = 51, minLevel = 46, map = 1446, x = 52.7, y = 45.9, giver = "Marvon Rivetseeker", pre = { 3444 }, dungeon = "The Temple of Atal'Hakkar" }
Q[3448] = { name = "Passing the Burden", level = 52, minLevel = 45, map = 1455, x = 77.5, y = 11.8, giver = "Historian Karnik", faction = "Alliance", turnin = { 1455, 31.0, 4.8 } }
Q[3449] = { name = "Arcane Runes", level = 52, minLevel = 45, map = 1455, x = 31.0, y = 4.8, giver = "Tymor", faction = "Alliance", pre = { 3448 }, turnin = { 1447, 77.8, 91.4 } }
Q[3450] = { name = "An Easy Pickup", level = 52, minLevel = 45, map = 1455, x = 31.0, y = 4.8, giver = "Tymor", faction = "Alliance", turnin = { 1455, 70.9, 94.6 } }
Q[3451] = { name = "Signal for Pickup", level = 52, minLevel = 45, map = 1455, x = 70.9, y = 94.6, giver = "Xiggs Fuselighter", faction = "Alliance", pre = { 3450 }, turnin = { 1455, 70.9, 94.6 } }
Q[3452] = { name = "The Flame's Casing", level = 50, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3443 }, group = true, turnin = { 1427, 39.1, 39.0 } }
Q[3453] = { name = "The Torch of Retribution", level = 50, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3452 }, group = true, turnin = { 1427, 39.1, 39.0 } }
Q[3454] = { name = "The Torch of Retribution", level = 50, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3453 }, turnin = { 1427, 39.1, 39.1 } }
Q[3461] = { name = "Return to Tymor", level = 52, minLevel = 45, map = 1447, x = 77.8, y = 91.4, giver = "Pilot Xiggs Fuselighter", faction = "Alliance", pre = { 3449 }, turnin = { 1455, 31.0, 4.8 } }
Q[3462] = { name = "Squire Maltrake", level = 50, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3454 }, turnin = { 1427, 39.2, 39 } }
Q[3463] = { name = "Set Them Ablaze!", level = 52, minLevel = 40, map = 1427, x = 39.2, y = 39, giver = "Squire Maltrake", pre = { 3462 }, turnin = { 1427, 39.2, 39 } }
Q[3481] = { name = "Trinkets...", level = 50, minLevel = 40, map = 1427, x = 38.9, y = 39.0, giver = "Hoard of the Black Dragonflight", pre = { 3463 }, turnin = { 1427, 38.9, 39.0 } }
Q[3501] = { name = "Everything Counts In Large Amounts", level = 55, minLevel = 45, map = 1419, x = 52.0, y = 35.6, giver = "Kum'isha the Collector", group = true, turnin = { 1419, 52.0, 35.6 } }
Q[3504] = { name = "Betrayed", level = 53, minLevel = 44, map = 1454, x = 75.2, y = 34.2, giver = "Belgrom Rockmaul", faction = "Horde", turnin = { 1447, 22.3, 51.5 } }
Q[3505] = { name = "Betrayed", level = 53, minLevel = 44, map = 1447, x = 22.3, y = 51.5, giver = "Ag'tor Bloodfist", faction = "Horde", pre = { 3504 }, turnin = { 1447, 59.5, 31.3 } }
Q[3506] = { name = "Betrayed", level = 56, minLevel = 44, map = 1447, x = 59.5, y = 31.3, giver = "Kaldorei Tome of Summoning", faction = "Horde", pre = { 3505 }, turnin = { 1447, 22.3, 51.5 } }
Q[3507] = { name = "Betrayed", level = 56, minLevel = 44, map = 1447, x = 22.3, y = 51.5, giver = "Ag'tor Bloodfist", faction = "Horde", pre = { 3506 }, turnin = { 1454, 75.2, 34.2 } }
Q[3512] = { name = "In Eranikus' Own Words", level = 55, minLevel = 48, map = 1435, x = 13.7, y = 71.7, giver = "Itharius", pre = { 3374 }, turnin = { 1452, 67.8, 27.4 } }
Q[3517] = { name = "Stealing Knowledge", level = 52, minLevel = 45, map = 1447, x = 22.6, y = 51.4, giver = "Jediga", faction = "Horde", turnin = { 1447, 22.6, 51.4 } }
Q[3518] = { name = "Delivery to Magatha", level = 52, minLevel = 45, map = 1447, x = 22.6, y = 51.4, giver = "Jediga", faction = "Horde", pre = { 3517 }, turnin = { 1456, 69.8, 30.9 } }
Q[3519] = { name = "A Friend in Need", level = 4, minLevel = 2, map = 1438, x = 54.6, y = 33.0, giver = "Iverron", faction = "Alliance", pre = { 4495 }, turnin = { 1438, 60.9, 42.0 } }
Q[3520] = { name = "Screecher Spirits", level = 44, minLevel = 40, map = 1446, x = 67.0, y = 22.4, giver = "Yeh'kinya", turnin = { 1446, 67.0, 22.4 } }
Q[3521] = { name = "Iverron's Antidote", level = 4, minLevel = 2, map = 1438, x = 60.9, y = 42.0, giver = "Dirania Silvershine", faction = "Alliance", pre = { 3519 }, turnin = { 1438, 60.9, 42.0 } }
Q[3522] = { name = "Iverron's Antidote", level = 4, minLevel = 2, map = 1438, x = 60.9, y = 42.0, giver = "Dirania Silvershine", faction = "Alliance", pre = { 3521 }, turnin = { 1438, 54.6, 33.0 } }
Q[3524] = { name = "Washed Ashore", level = 13, minLevel = 11, map = 1439, x = 36.6, y = 45.6, giver = "Gwennyth Bly'Leggonde", faction = "Alliance", turnin = { 1439, 36.6, 45.6 } }
Q[3527] = { name = "The Prophecy of Mosh'aru", level = 47, minLevel = 40, map = 1446, x = 67.0, y = 22.4, giver = "Yeh'kinya", pre = { 3520 }, dungeon = "Zul'Farrak", turnin = { 1446, 67.0, 22.4 } }
Q[3541] = { name = "Delivery to Jes'rimon", level = 52, minLevel = 45, map = 1447, x = 22.6, y = 51.4, giver = "Jediga", faction = "Horde", pre = { 3517 }, turnin = { 1454, 55.5, 34.1 } }
Q[3542] = { name = "Delivery to Andron Gant", level = 52, minLevel = 45, map = 1447, x = 22.6, y = 51.4, giver = "Jediga", faction = "Horde", pre = { 3517 }, turnin = { 1458, 54.8, 76.3 } }
Q[3561] = { name = "Delivery to Archmage Xylem", level = 52, minLevel = 45, map = 1447, x = 22.6, y = 51.4, giver = "Jediga", faction = "Horde", pre = { 3517 }, turnin = { 1447, 29.2, 40.2 } }
Q[3562] = { name = "Magatha's Payment to Jediga", level = 52, minLevel = 45, map = 1456, x = 69.8, y = 30.9, giver = "Magatha Grimtotem", faction = "Horde", pre = { 3518 }, turnin = { 1447, 22.6, 51.4 } }
Q[3563] = { name = "Jes'rimon's Payment to Jediga", level = 52, minLevel = 45, map = 1454, x = 55.5, y = 34.1, giver = "Jes'rimon", faction = "Horde", pre = { 3541 }, turnin = { 1447, 22.6, 51.4 } }
Q[3564] = { name = "Andron's Payment to Jediga", level = 52, minLevel = 45, map = 1458, x = 54.8, y = 76.3, giver = "Andron Gant", faction = "Horde", pre = { 3542 }, turnin = { 1447, 22.6, 51.4 } }
Q[3565] = { name = "Xylem's Payment to Jediga", level = 52, minLevel = 45, map = 1447, x = 29.2, y = 40.2, giver = "Archmage Xylem", faction = "Horde", pre = { 3561 }, turnin = { 1447, 22.6, 51.4 } }
Q[3566] = { name = "Rise, Obsidion!", level = 52, minLevel = 45, map = 1427, x = 41.1, y = 25.6, giver = "Dying Archaeologist", faction = "Alliance", pre = { 3372 }, group = true, turnin = { 1455, 71.5, 15.7 } }
Q[3568] = { name = "Seeping Corruption", level = 52, minLevel = 45, map = 1458, x = 48.7, y = 71.4, giver = "Chemist Cuely", faction = "Horde", turnin = { 1458, 48.7, 71.4 } }
Q[3569] = { name = "Seeping Corruption", level = 52, minLevel = 45, map = 1458, x = 48.7, y = 71.4, giver = "Chemist Cuely", faction = "Horde", pre = { 3568 }, turnin = { 1458, 49.0, 70.8 } }
Q[3570] = { name = "Seeping Corruption", level = 52, minLevel = 45, map = 1458, x = 48.7, y = 71.4, giver = "Chemist Cuely", faction = "Horde", pre = { 3569 }, turnin = { 1458, 48.7, 71.4 } }
Q[3601] = { name = "Kim'jael Indeed!", level = 53, minLevel = 47, map = 1447, x = 53.5, y = 21.8, giver = "Kim'jael", turnin = { 1447, 53.5, 21.8 } }
Q[3631] = { name = "Summon Felsteed", level = 40, minLevel = 40, map = 1454, x = 48.5, y = 45.4, giver = "Zevrost", faction = "Horde", class = { WARLOCK = true }, turnin = { 1413, 62.6, 35.5 } }
Q[3636] = { name = "Bring the Light", level = 42, minLevel = 39, map = 1453, x = 50.3, y = 45.5, giver = "Archbishop Benedictus", faction = "Alliance", dungeon = "Razorfen Downs", turnin = { 1453, 50.3, 45.5 } }
Q[3661] = { name = "Favored of Elune?", level = 47, minLevel = 42, map = 1438, x = 55.5, y = 92.0, giver = "Erelas Ambersky", faction = "Alliance", turnin = { 1438, 55.5, 92.0 } }
Q[3681] = { name = "Tome of Divinity", level = 12, minLevel = 12, map = 1455, x = 23.1, y = 6.1, giver = "Brandur Ironhammer", faction = "Alliance", race = { HUMAN = true }, class = { PALADIN = true }, turnin = { 1453, 50.5, 47.5 } }
Q[3701] = { name = "The Smoldering Ruins of Thaurissan", level = 54, minLevel = 50, map = 1455, x = 38.4, y = 55.3, giver = "Royal Historian Archesonus", faction = "Alliance", pre = { 3702 }, turnin = { 1455, 38.4, 55.3 } }
Q[3702] = { name = "The Smoldering Ruins of Thaurissan", level = 54, minLevel = 50, map = 1455, x = 38.4, y = 55.3, giver = "Royal Historian Archesonus", faction = "Alliance", turnin = { 1455, 38.4, 55.3 } }
Q[3721] = { name = "An OOX of Your Own", level = 50, minLevel = 45, map = 1434, x = 28.4, y = 76.3, giver = "Oglethorpe Obnoticus", pre = { 648, 836, 2767 }, turnin = { 1434, 28.4, 76.3 } }
Q[3741] = { name = "Hilary's Necklace", level = 15, minLevel = 12, map = 1433, x = 24.2, y = 53.6, giver = "Shawn", turnin = { 1433, 24.1, 53.6 } }
Q[3761] = { name = "Un'Goro Soil", level = 50, minLevel = 47, map = 1456, x = 78.6, y = 28.6, giver = "Arch Druid Hamuul Runetotem", faction = "Horde", turnin = { 1456, 77.5, 22.0 } }
Q[3762] = { name = "Assisting Arch Druid Runetotem", level = 50, minLevel = 47, map = 1456, x = 45.8, y = 64.7, giver = "Innkeeper Pala", faction = "Horde", turnin = { 1456, 78.6, 28.6 } }
Q[3763] = { name = "Assisting Arch Druid Staghelm", level = 50, minLevel = 47, map = 1457, x = 67.4, y = 15.7, giver = "Innkeeper Saelienne", faction = "Alliance", turnin = { 1457, 34.8, 9.3 } }
Q[3764] = { name = "Un'Goro Soil", level = 50, minLevel = 47, map = 1457, x = 34.8, y = 9.3, giver = "Arch Druid Fandral Staghelm", faction = "Alliance", turnin = { 1457, 31.5, 8.2 } }
Q[3765] = { name = "The Corruption Abroad", level = 24, minLevel = 18, map = 1453, x = 36.2, y = 67.6, giver = "Argos Nightwhisper", faction = "Alliance", turnin = { 1439, 38.3, 43.0 } }
Q[3781] = { name = "Morrowgrain Research", level = 50, minLevel = 47, map = 1457, x = 34.8, y = 9.3, giver = "Arch Druid Fandral Staghelm", faction = "Alliance", pre = { 3764 }, turnin = { 1457, 35.4, 8.4 } }
Q[3782] = { name = "Morrowgrain Research", level = 50, minLevel = 47, map = 1456, x = 78.6, y = 28.6, giver = "Arch Druid Hamuul Runetotem", faction = "Horde", pre = { 3761 }, turnin = { 1456, 71.1, 34.2 } }
Q[3783] = { name = "Are We There, Yeti?", level = 56, minLevel = 52, map = 1452, x = 60.9, y = 37.6, giver = "Umi Rumplesnicker", turnin = { 1452, 60.9, 37.6 } }
Q[3784] = { name = "Assisting Arch Druid Runetotem", level = 50, minLevel = 47, map = 1458, x = 67.7, y = 37.9, giver = "Innkeeper Norman", faction = "Horde", turnin = { 1456, 78.6, 28.6 } }
Q[3785] = { name = "Morrowgrain Research", level = 50, minLevel = 47, map = 1457, x = 35.4, y = 8.4, giver = "Mathrengyl Bearwalker", faction = "Alliance", pre = { 3781 }, turnin = { 1457, 35.4, 8.4 } }
Q[3786] = { name = "Morrowgrain Research", level = 50, minLevel = 47, map = 1456, x = 71.1, y = 34.2, giver = "Bashana Runetotem", faction = "Horde", pre = { 3782 }, turnin = { 1456, 71.1, 34.2 } }
Q[3787] = { name = "Jonespyre's Request", level = 50, minLevel = 47, map = 1453, x = 54.3, y = 84.1, giver = "Tannysa", faction = "Alliance", pre = { 3781 }, turnin = { 1444, 32.5, 43.8 } }
Q[3788] = { name = "Jonespyre's Request", level = 50, minLevel = 47, map = 1444, x = 31.0, y = 43.5, giver = "Innkeeper Shyria", faction = "Alliance", pre = { 3781 }, turnin = { 1444, 32.5, 43.8 } }
Q[3789] = { name = "Assisting Arch Druid Staghelm", level = 50, minLevel = 47, map = 1453, x = 60.4, y = 75.3, giver = "Innkeeper Allison", faction = "Alliance", turnin = { 1457, 34.8, 9.3 } }
Q[3790] = { name = "Assisting Arch Druid Staghelm", level = 50, minLevel = 47, map = 1455, x = 18.1, y = 51.5, giver = "Innkeeper Firebrew", faction = "Alliance", turnin = { 1457, 34.8, 9.3 } }
Q[3791] = { name = "The Mystery of Morrowgrain", level = 50, minLevel = 47, map = 1444, x = 32.5, y = 43.8, giver = "Quintis Jonespyre", faction = "Alliance", pre = { 3781 }, turnin = { 1444, 32.5, 43.8 } }
Q[3801] = { name = "Dark Iron Legacy", level = 52, minLevel = 48, map = 1428, x = 29.0, y = 28.9, giver = "Franclorn Forgewright", dungeon = "Blackrock Depths", turnin = { 1428, 29.0, 28.9 } }
Q[3802] = { name = "Dark Iron Legacy", level = 52, minLevel = 48, map = 1428, x = 29.0, y = 28.9, giver = "Franclorn Forgewright", pre = { 3801 }, dungeon = "Blackrock Depths" }
Q[3821] = { name = "Dreadmaul Rock", level = 52, minLevel = 48, map = 1418, x = 3.4, y = 48.1, giver = "Thal'trak Proudtusk", faction = "Horde", turnin = { 1428, 80.0, 45.4 } }
Q[3822] = { name = "Krom'Grul", level = 53, minLevel = 48, map = 1428, x = 80.0, y = 45.4, giver = "Sha'ni Proudtusk", faction = "Horde", pre = { 3821 }, turnin = { 1418, 3.4, 48.1 } }
Q[3823] = { name = "Extinguish the Firegut", level = 52, minLevel = 48, map = 1428, x = 84.6, y = 68.7, giver = "Oralius", faction = "Alliance", turnin = { 1428, 84.6, 68.7 } }
Q[3824] = { name = "Gor'tesh the Brute Lord", level = 53, minLevel = 48, map = 1428, x = 84.6, y = 68.7, giver = "Oralius", faction = "Alliance", pre = { 3823 }, turnin = { 1428, 84.6, 68.7 } }
Q[3825] = { name = "Ogre Head On A Stick = Party", level = 53, minLevel = 48, map = 1428, x = 84.6, y = 68.7, giver = "Oralius", faction = "Alliance", pre = { 3824 }, turnin = { 1428, 84.6, 68.7 } }
Q[3841] = { name = "An Orphan Looking For a Home", level = 47, minLevel = 38, map = 1444, x = 65.9, y = 45.6, giver = "Kindal Moonweaver", faction = "Alliance", pre = { 2972 }, turnin = { 1441, 78.3, 74.7 } }
Q[3842] = { name = "A Short Incubation", level = 47, minLevel = 38, map = 1441, x = 78.3, y = 74.7, giver = "Quentin", faction = "Alliance", pre = { 3841 }, turnin = { 1441, 78.3, 74.7 } }
Q[3843] = { name = "The Newest Member of the Family", level = 47, minLevel = 38, map = 1441, x = 78.3, y = 74.7, giver = "Quentin", faction = "Alliance", pre = { 3842 }, turnin = { 1425, 14.2, 43.6 } }
Q[3844] = { name = "It's a Secret to Everybody", level = 52, minLevel = 47, map = 1449, x = 63.0, y = 68.6, giver = "A Wrecked Raft", turnin = { 1449, 63.1, 69.1 } }
Q[3845] = { name = "It's a Secret to Everybody", level = 52, minLevel = 47, map = 1449, x = 63.1, y = 69.1, giver = "A Small Pack", pre = { 3844 }, turnin = { 1449, 44.7, 8.1 } }
Q[3881] = { name = "Expedition Salvation", level = 53, minLevel = 48, map = 1449, x = 44.0, y = 7.1, giver = "Williden Marshal", turnin = { 1449, 44.0, 7.1 } }
Q[3882] = { name = "Roll the Bones", level = 51, minLevel = 49, map = 1449, x = 43.5, y = 7.4, giver = "Spark Nilminer", group = true, turnin = { 1449, 43.5, 7.4 } }
Q[3883] = { name = "Alien Ecology", level = 52, minLevel = 48, map = 1449, x = 43.9, y = 7.2, giver = "Hol'anyee Marshal", turnin = { 1449, 43.9, 7.2 } }
Q[3884] = { name = "Williden's Journal", level = 50, minLevel = 48, map = 1449, x = 67.0, y = 15.3, giver = "Drop: A Mangled Journal", turnin = { 1449, 44.0, 7.1 } }
Q[3901] = { name = "Rattling the Rattlecages", level = 3, minLevel = 1, map = 1420, x = 30.8, y = 66.2, giver = "Shadow Priest Sarvis", faction = "Horde", pre = { 364 }, turnin = { 1420, 30.8, 66.2 } }
Q[3902] = { name = "Scavenging Deathknell", level = 3, minLevel = 2, map = 1420, x = 31.6, y = 65.6, giver = "Deathguard Saltain", faction = "Horde", pre = { 376 }, turnin = { 1420, 31.6, 65.6 } }
Q[3903] = { name = "Milly Osworth", level = 4, minLevel = 2, map = 1429, x = 48.2, y = 42.9, giver = "Deputy Willem", faction = "Alliance", pre = { 18 }, turnin = { 1429, 50.7, 39.4 } }
Q[3904] = { name = "Milly's Harvest", level = 4, minLevel = 2, map = 1429, x = 50.7, y = 39.4, giver = "Milly Osworth", faction = "Alliance", pre = { 18 }, turnin = { 1429, 50.7, 39.4 } }
Q[3905] = { name = "Grape Manifest", level = 4, minLevel = 2, map = 1429, x = 50.7, y = 39.4, giver = "Milly Osworth", faction = "Alliance", pre = { 3904 }, turnin = { 1429, 49.5, 41.6 } }
Q[3906] = { name = "Disharmony of Flame", level = 52, minLevel = 48, map = 1418, x = 3.3, y = 48.3, giver = "Thunderheart", faction = "Horde", group = true, turnin = { 1418, 3.3, 48.3 } }
Q[3907] = { name = "Disharmony of Fire", level = 56, minLevel = 48, map = 1418, x = 3.3, y = 48.3, giver = "Thunderheart", faction = "Horde", pre = { 3906 }, dungeon = "Blackrock Depths", turnin = { 1418, 3.3, 48.3 } }
Q[3908] = { name = "It's a Secret to Everybody", level = 52, minLevel = 47, map = 1449, x = 44.7, y = 8.1, giver = "Linken", pre = { 3845 }, turnin = { 1452, 31.3, 45.2 } }
Q[3909] = { name = "The Videre Elixir", level = 52, minLevel = 47, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 3908 }, turnin = { 1452, 31.3, 45.2 } }
Q[3912] = { name = "Meet at the Grave", level = 52, minLevel = 47, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 3909 }, turnin = { 1446, 53.9, 23.3 } }
Q[3913] = { name = "A Grave Situation", level = 52, minLevel = 47, map = 1446, x = 53.9, y = 23.3, giver = "Gaeriyan", pre = { 3912 }, turnin = { 1446, 53.8, 29.1 } }
Q[3914] = { name = "Linken's Sword", level = 52, minLevel = 47, map = 1446, x = 53.8, y = 29.1, giver = "A Conspicuous Gravestone", pre = { 3913 }, turnin = { 1449, 44.7, 8.1 } }
Q[3921] = { name = "Wenikee Boltbucket", level = 14, minLevel = 10, map = 1413, x = 63.0, y = 37.2, giver = "Sputtervalve", faction = "Horde", pre = { 902 }, turnin = { 1413, 49.0, 11.2 } }
Q[3922] = { name = "Nugget Slugs", level = 15, minLevel = 10, map = 1413, x = 49.0, y = 11.2, giver = "Wenikee Boltbucket", faction = "Horde", pre = { 3921 }, turnin = { 1413, 49.0, 11.2 } }
Q[3923] = { name = "Rilli Greasygob", level = 18, minLevel = 10, map = 1413, x = 49.0, y = 11.2, giver = "Wenikee Boltbucket", faction = "Horde", pre = { 3922 }, turnin = { 1454, 76.5, 24.4 } }
Q[3924] = { name = "Samophlange Manual", level = 19, minLevel = 10, map = 1454, x = 76.5, y = 24.4, giver = "Rilli Greasygob", faction = "Horde", pre = { 3923 }, turnin = { 1454, 76.5, 24.4 } }
Q[3941] = { name = "A Gnome's Assistance", level = 52, minLevel = 47, map = 1449, x = 44.7, y = 8.1, giver = "Linken", pre = { 3914 }, turnin = { 1449, 41.9, 2.7 } }
Q[3942] = { name = "Linken's Memory", level = 54, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 3941 }, turnin = { 1448, 51.4, 81.5 } }
Q[3961] = { name = "Linken's Adventure", level = 54, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 4005 }, turnin = { 1449, 44.7, 8.1 } }
Q[3962] = { name = "It's Dangerous to Go Alone", level = 56, minLevel = 47, map = 1449, x = 44.7, y = 8.1, giver = "Linken", pre = { 3961 }, group = true, turnin = { 1449, 44.7, 8.1 } }
Q[3981] = { name = "Commander Gor'shak", level = 52, minLevel = 48, map = 1418, x = 6.0, y = 47.7, giver = "Galamav the Marksman", faction = "Horde", pre = { 3906 }, dungeon = "Blackrock Depths" }
Q[4002] = { name = "The Eastern Kingdom", level = 54, minLevel = 48, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", faction = "Horde", pre = { 4001 }, dungeon = "Blackrock Depths", turnin = { 1454, 31.7, 37.8 } }
Q[4003] = { name = "The Royal Rescue", level = 59, minLevel = 48, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", faction = "Horde", pre = { 4002 }, dungeon = "Blackrock Depths" }
Q[4005] = { name = "Aquementas", level = 54, minLevel = 47, map = 1448, x = 51.4, y = 81.5, giver = "Eridan Bluewind", pre = { 4084 }, turnin = { 1449, 41.9, 2.7 } }
Q[4021] = { name = "Counterattack!", level = 20, minLevel = 11, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", faction = "Horde", pre = { 852 }, turnin = { 1413, 45.3, 28.4 } }
Q[4022] = { name = "A Taste of Flame", level = 54, minLevel = 52, map = 1428, x = 95.1, y = 31.6, giver = "Cyrus Therepentous", pre = { 3481 }, group = true, turnin = { 1428, 95.1, 31.6 } }
Q[4023] = { name = "A Taste of Flame", level = 54, minLevel = 52, map = 1428, x = 95.1, y = 31.6, giver = "Cyrus Therepentous", group = true, turnin = { 1428, 95.1, 31.6 } }
Q[4024] = { name = "A Taste of Flame", level = 58, minLevel = 52, map = 1428, x = 95.1, y = 31.6, giver = "Cyrus Therepentous", dungeon = "Blackrock Depths", turnin = { 1428, 95.1, 31.6 } }
Q[4061] = { name = "The Rise of the Machines", level = 54, minLevel = 52, map = 1418, x = 3.0, y = 47.8, giver = "Hierophant Theodora Mulvadania", faction = "Horde", turnin = { 1418, 3.0, 47.8 } }
Q[4062] = { name = "The Rise of the Machines", level = 54, minLevel = 52, map = 1418, x = 3.0, y = 47.8, giver = "Hierophant Theodora Mulvadania", faction = "Horde", pre = { 4061 }, turnin = { 1418, 25.9, 44.9 } }
Q[4063] = { name = "The Rise of the Machines", level = 58, minLevel = 52, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", faction = "Horde", pre = { 4062 }, dungeon = "Blackrock Depths", turnin = { 1418, 25.9, 44.9 } }
Q[4081] = { name = "KILL ON SIGHT: Dark Iron Dwarves", level = 52, minLevel = 48, map = 1418, x = 3.7, y = 47.4, giver = "WANTED", faction = "Horde", dungeon = "Blackrock Depths", turnin = { 1418, 5.8, 47.5 } }
Q[4082] = { name = "KILL ON SIGHT: High Ranking Dark Iron Officials", level = 54, minLevel = 50, map = 1418, x = 3.9, y = 46.7, giver = "KILL ON SIGHT", faction = "Horde", pre = { 4081 }, dungeon = "Blackrock Depths", turnin = { 1418, 5.8, 47.5 } }
Q[4084] = { name = "Silver Heart", level = 54, minLevel = 47, map = 1448, x = 51.4, y = 81.5, giver = "Eridan Bluewind", pre = { 3942 }, turnin = { 1448, 51.4, 81.5 } }
Q[4101] = { name = "Cleansing Felwood", level = 55, minLevel = 48, map = 1448, x = 54.1, y = 86.8, giver = "Arathandris Silversky", faction = "Alliance", group = true, turnin = { 1448, 54.1, 86.8 } }
Q[4102] = { name = "Cleansing Felwood", level = 55, minLevel = 48, map = 1448, x = 46.8, y = 83.1, giver = "Maybess Riverbreeze", faction = "Horde", group = true, turnin = { 1448, 46.8, 83.1 } }
Q[4120] = { name = "The Strength of Corruption", level = 52, minLevel = 47, map = 1444, x = 76.2, y = 43.8, giver = "Talo Thornhoof", faction = "Horde", turnin = { 1444, 76.2, 43.8 } }
Q[4121] = { name = "Precarious Predicament", level = 58, minLevel = 52, map = 1428, x = 40.2, y = 34.2, giver = "Grark Lorkrub", faction = "Horde", pre = { 4122 }, dungeon = "Blackrock Depths", turnin = { 1418, 5.9, 47.6 } }
Q[4122] = { name = "Grark Lorkrub", level = 58, minLevel = 52, map = 1418, x = 5.9, y = 47.6, giver = "Lexlort", faction = "Horde", pre = { 4082 }, dungeon = "Blackrock Depths", turnin = { 1428, 40.2, 34.2 } }
Q[4123] = { name = "The Heart of the Mountain", level = 55, minLevel = 50, map = 1428, x = 65.2, y = 23.9, giver = "Maxwort Uberglint", dungeon = "Blackrock Depths", turnin = { 1428, 65.2, 23.9 } }
Q[4124] = { name = "The Missing Courier", level = 43, minLevel = 40, map = 1444, x = 30.4, y = 46.2, giver = "Latronicus Moonspear", faction = "Alliance", turnin = { 1444, 31.9, 45.1 } }
Q[4125] = { name = "The Missing Courier", level = 43, minLevel = 40, map = 1444, x = 31.9, y = 45.1, giver = "Ginro Hearthkindle", faction = "Alliance", pre = { 4124 }, turnin = { 1444, 45.4, 65.0 } }
Q[4126] = { name = "Hurley Blackbreath", level = 55, minLevel = 50, map = 1426, x = 46.8, y = 52.4, giver = "Ragnar Thunderbrew", faction = "Alliance", dungeon = "Blackrock Depths", turnin = { 1426, 46.8, 52.4 } }
Q[4127] = { name = "Boat Wreckage", level = 44, minLevel = 40, map = 1444, x = 45.4, y = 65.0, giver = "Wrecked Row Boat", faction = "Alliance", pre = { 4125 }, turnin = { 1444, 31.9, 45.1 } }
Q[4128] = { name = "Ragnar Thunderbrew", level = 55, minLevel = 50, map = 1419, x = 63.6, y = 20.6, giver = "Enohar Thunderbrew", faction = "Alliance", dungeon = "Blackrock Depths", turnin = { 1426, 46.8, 52.4 } }
Q[4129] = { name = "The Knife Revealed", level = 44, minLevel = 40, map = 1444, x = 31.9, y = 45.1, giver = "Ginro Hearthkindle", faction = "Alliance", pre = { 4127 }, turnin = { 1444, 32.5, 43.8 } }
Q[4130] = { name = "Psychometric Reading", level = 44, minLevel = 40, map = 1444, x = 32.5, y = 43.8, giver = "Quintis Jonespyre", faction = "Alliance", pre = { 4129 }, turnin = { 1444, 31.9, 45.1 } }
Q[4131] = { name = "The Woodpaw Gnolls", level = 44, minLevel = 40, map = 1444, x = 31.9, y = 45.1, giver = "Ginro Hearthkindle", faction = "Alliance", pre = { 4130 }, turnin = { 1444, 73.3, 56.3 } }
Q[4132] = { name = "Operation: Death to Angerforge", level = 58, minLevel = 52, map = 1418, x = 5.8, y = 47.5, giver = "Warlord Goretooth", faction = "Horde", pre = { 4121 }, dungeon = "Blackrock Depths", turnin = { 1418, 5.8, 47.5 } }
Q[4133] = { name = "Vivian Lagrave", level = 55, minLevel = 50, map = 1458, x = 50.1, y = 68.0, giver = "Apothecary Zinge", faction = "Horde", dungeon = "Blackrock Depths", turnin = { 1418, 2.9, 47.8 } }
Q[4134] = { name = "Lost Thunderbrew Recipe", level = 55, minLevel = 50, map = 1418, x = 2.9, y = 47.8, giver = "Shadowmage Vivian Lagrave", faction = "Horde", dungeon = "Blackrock Depths", turnin = { 1418, 2.9, 47.8 } }
Q[4135] = { name = "The Writhing Deep", level = 46, minLevel = 40, map = 1444, x = 73.3, y = 56.3, giver = "Large Leather Backpacks", faction = "Alliance", pre = { 4131 }, turnin = { 1444, 72.1, 63.7 } }
Q[4136] = { name = "Ribbly Screwspigot", level = 53, minLevel = 48, map = 1428, x = 66.1, y = 21.9, giver = "Yuka Screwspigot", dungeon = "Blackrock Depths", turnin = { 1428, 66.1, 21.9 } }
Q[4141] = { name = "Muigin and Larion", level = 52, minLevel = 47, map = 1449, x = 42.9, y = 9.6, giver = "Muigin", faction = "Alliance", turnin = { 1449, 42.9, 9.6 } }
Q[4142] = { name = "A Visit to Gregan", level = 52, minLevel = 47, map = 1449, x = 42.9, y = 9.6, giver = "Muigin", faction = "Alliance", pre = { 4141 }, turnin = { 1444, 45.1, 25.6 } }
Q[4143] = { name = "Haze of Evil", level = 52, minLevel = 47, map = 1444, x = 45.1, y = 25.6, giver = "Gregan Brewspewer", faction = "Alliance", pre = { 4142 }, group = true, turnin = { 1449, 42.9, 9.6 } }
Q[4144] = { name = "Bloodpetal Sprouts", level = 53, minLevel = 47, map = 1449, x = 42.9, y = 9.6, giver = "Muigin", faction = "Alliance", pre = { 4143 }, group = true, turnin = { 1449, 42.9, 9.6 } }
Q[4145] = { name = "Larion and Muigin", level = 52, minLevel = 47, map = 1449, x = 45.5, y = 8.7, giver = "Larion", faction = "Horde", turnin = { 1449, 45.5, 8.7 } }
Q[4146] = { name = "Zapper Fuel", level = 52, minLevel = 47, map = 1413, x = 62.5, y = 38.7, giver = "Liv Rizzlefix", faction = "Horde", pre = { 4147 }, group = true, turnin = { 1449, 45.5, 8.7 } }
Q[4147] = { name = "Marvon's Workshop", level = 52, minLevel = 47, map = 1449, x = 45.5, y = 8.7, giver = "Larion", faction = "Horde", pre = { 4145 }, turnin = { 1413, 62.5, 38.7 } }
Q[4148] = { name = "Bloodpetal Zapper", level = 53, minLevel = 47, map = 1449, x = 45.5, y = 8.7, giver = "Larion", faction = "Horde", pre = { 4146 }, group = true, turnin = { 1449, 45.5, 8.7 } }
Q[4182] = { name = "Dragonkin Menace", level = 54, minLevel = 48, map = 1428, x = 85.8, y = 69.0, giver = "Helendis Riverhorn", faction = "Alliance", group = true, turnin = { 1428, 85.8, 69.0 } }
Q[4183] = { name = "The True Masters", level = 54, minLevel = 48, map = 1428, x = 85.8, y = 69.0, giver = "Helendis Riverhorn", faction = "Alliance", pre = { 4182 }, turnin = { 1433, 24.9, 44.5 } }
Q[4184] = { name = "The True Masters", level = 54, minLevel = 48, map = 1433, x = 24.9, y = 44.5, giver = "Magistrate Solomon", faction = "Alliance", pre = { 4183 }, turnin = { 1453, 80.2, 38.4 } }
Q[4185] = { name = "The True Masters", level = 54, minLevel = 48, map = 1453, x = 80.2, y = 38.4, giver = "Highlord Bolvar Fordragon", faction = "Alliance", pre = { 4184 }, turnin = { 1453, 80.2, 38.4 } }
Q[4186] = { name = "The True Masters", level = 54, minLevel = 48, map = 1453, x = 80.2, y = 38.4, giver = "Highlord Bolvar Fordragon", faction = "Alliance", pre = { 4185 }, turnin = { 1433, 24.9, 44.5 } }
Q[4223] = { name = "The True Masters", level = 54, minLevel = 48, map = 1433, x = 24.9, y = 44.5, giver = "Magistrate Solomon", faction = "Alliance", pre = { 4186 }, turnin = { 1428, 84.7, 69.0 } }
Q[4224] = { name = "The True Masters", level = 54, minLevel = 48, map = 1428, x = 84.7, y = 69.0, giver = "Marshal Maxwell", faction = "Alliance", pre = { 4223 }, turnin = { 1428, 84.7, 69.0 } }
Q[4241] = { name = "Marshal Windsor", level = 54, minLevel = 48, map = 1428, x = 84.7, y = 69.0, giver = "Marshal Maxwell", faction = "Alliance", pre = { 4224 }, dungeon = "Blackrock Depths" }
Q[4243] = { name = "Chasing A-Me 01", level = 53, minLevel = 48, map = 1449, x = 46.4, y = 13.4, giver = "Karna Remtravel", turnin = { 1449, 67.7, 16.8 } }
Q[4244] = { name = "Chasing A-Me 01", level = 53, minLevel = 48, map = 1449, x = 67.7, y = 16.8, giver = "A-Me 01", pre = { 4243 }, group = true, turnin = { 1449, 67.7, 16.8 } }
Q[4245] = { name = "Chasing A-Me 01", level = 53, minLevel = 48, map = 1449, x = 67.7, y = 16.8, giver = "A-Me 01", pre = { 4244 }, turnin = { 1449, 46.4, 13.4 } }
Q[4261] = { name = "Ancient Spirit", level = 56, minLevel = 49, map = 1448, x = 49.6, y = 29.6, giver = "Arei", faction = "Alliance", pre = { 4442 }, turnin = { 1440, 85.2, 44.7 } }
Q[4262] = { name = "Overmaster Pyron", level = 52, minLevel = 48, map = 1428, x = 85.4, y = 70.1, giver = "Jalinda Sprig", faction = "Alliance", group = true, turnin = { 1428, 85.4, 70.1 } }
Q[4263] = { name = "Incendius!", level = 56, minLevel = 48, map = 1428, x = 85.4, y = 70.1, giver = "Jalinda Sprig", faction = "Alliance", pre = { 4262 }, dungeon = "Blackrock Depths", turnin = { 1428, 85.4, 70.1 } }
Q[4265] = { name = "Freed from the Hive", level = 46, minLevel = 40, map = 1444, x = 72.1, y = 63.7, giver = "Zukk'ash Pod", faction = "Alliance", pre = { 4135 }, turnin = { 1444, 31.9, 45.1 } }
Q[4266] = { name = "A Hero's Welcome", level = 46, minLevel = 40, map = 1444, x = 31.9, y = 45.1, giver = "Ginro Hearthkindle", faction = "Alliance", pre = { 4265 }, turnin = { 1444, 30.3, 46.2 } }
Q[4267] = { name = "Rise of the Silithid", level = 46, minLevel = 40, map = 1444, x = 30.3, y = 46.2, giver = "Shandris Feathermoon", faction = "Alliance", pre = { 4266 }, turnin = { 1457, 41.8, 85.6 } }
Q[4281] = { name = "Thalanaar Delivery", level = 44, minLevel = 40, map = 1444, x = 73.3, y = 56.3, giver = "Drop: Undelivered Parcel", faction = "Alliance", pre = { 4131 }, turnin = { 1444, 89.6, 46.6 } }
Q[4283] = { name = "FIFTY! YEP!", level = 56, minLevel = 50, map = 1428, x = 84.6, y = 68.7, giver = "Oralius", faction = "Alliance", group = true, turnin = { 1428, 84.6, 68.7 } }
Q[4284] = { name = "Crystals of Power", level = 53, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", turnin = { 1449, 41.9, 2.7 } }
Q[4285] = { name = "The Northern Pylon", level = 53, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 4284 }, turnin = { 1449, 41.9, 2.7 } }
Q[4286] = { name = "The Good Stuff", level = 56, minLevel = 50, map = 1428, x = 84.6, y = 68.7, giver = "Oralius", faction = "Alliance", dungeon = "Blackrock Depths", turnin = { 1428, 84.6, 68.7 } }
Q[4287] = { name = "The Eastern Pylon", level = 53, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 4284 }, turnin = { 1449, 41.9, 2.7 } }
Q[4288] = { name = "The Western Pylon", level = 53, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 4284 }, turnin = { 1449, 41.9, 2.7 } }
Q[4289] = { name = "The Apes of Un'Goro", level = 55, minLevel = 47, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", turnin = { 1449, 71.6, 76.0 } }
Q[4290] = { name = "The Fare of Lar'korwi", level = 53, minLevel = 48, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", turnin = { 1449, 71.6, 76.0 } }
Q[4291] = { name = "The Scent of Lar'korwi", level = 53, minLevel = 48, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", pre = { 4290 }, turnin = { 1449, 71.6, 76.0 } }
Q[4292] = { name = "The Bait for Lar'korwi", level = 56, minLevel = 48, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", pre = { 4291 }, turnin = { 1449, 71.6, 76.0 } }
Q[4293] = { name = "A Sample of Slime...", level = 52, minLevel = 48, map = 1458, x = 47.5, y = 73.3, giver = "Chemist Fuely", faction = "Horde", turnin = { 1458, 47.5, 73.3 } }
Q[4294] = { name = "... and a Batch of Ooze", level = 56, minLevel = 48, map = 1458, x = 47.5, y = 73.3, giver = "Chemist Fuely", faction = "Horde", turnin = { 1458, 47.5, 73.3 } }
Q[4296] = { name = "Tablet of the Seven", level = 50, minLevel = 50, map = 1428, x = 65.2, y = 23.9, giver = "Maxwort Uberglint", turnin = { 1428, 65.2, 23.9 } }
Q[4297] = { name = "Food for Baby", level = 47, minLevel = 38, map = 1425, x = 14.2, y = 43.6, giver = "Agnar Beastamer", faction = "Alliance", pre = { 3843 }, turnin = { 1425, 14.2, 43.6 } }
Q[4298] = { name = "Becoming a Parent", level = 48, minLevel = 37, map = 1425, x = 14.2, y = 43.6, giver = "Agnar Beastamer", faction = "Alliance", pre = { 4297 }, turnin = { 1425, 14.2, 43.6 } }
Q[4300] = { name = "Bone-Bladed Weapons", level = 52, minLevel = 48, map = 1454, x = 55.5, y = 34.1, giver = "Jes'rimon", faction = "Horde", turnin = { 1454, 55.5, 34.1 } }
Q[4301] = { name = "The Mighty U'cha", level = 55, minLevel = 50, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", pre = { 4289 }, turnin = { 1449, 71.6, 76.0 } }
Q[4321] = { name = "Making Sense of It", level = 53, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 4285, 4287, 4288 }, turnin = { 1449, 41.9, 2.7 } }
Q[4324] = { name = "Yuka Screwspigot", level = 53, minLevel = 48, map = 1446, x = 67.0, y = 24.0, giver = "Yorba Screwspigot", dungeon = "Blackrock Depths", turnin = { 1428, 66.1, 21.9 } }
Q[4341] = { name = "Kharan Mighthammer", level = 59, minLevel = 50, map = 1455, x = 39.1, y = 56.2, giver = "King Magni Bronzebeard", faction = "Alliance", pre = { 3701 }, dungeon = "Blackrock Depths" }
Q[4362] = { name = "The Fate of the Kingdom", level = 59, minLevel = 50, map = 1455, x = 39.1, y = 56.2, giver = "King Magni Bronzebeard", faction = "Alliance", pre = { 4361 }, dungeon = "Blackrock Depths" }
Q[4402] = { name = "Galgar's Cactus Apple Surprise", level = 3, minLevel = 1, map = 1411, x = 42.7, y = 67.2, giver = "Galgar", faction = "Horde", pre = { 788 }, turnin = { 1411, 42.7, 67.2 } }
Q[4421] = { name = "The Corruption of the Jadefire", level = 54, minLevel = 49, map = 1448, x = 51.4, y = 81.5, giver = "Eridan Bluewind", faction = "Alliance", turnin = { 1448, 51.4, 81.5 } }
Q[4441] = { name = "Felbound Ancients", level = 54, minLevel = 49, map = 1448, x = 51.4, y = 81.5, giver = "Eridan Bluewind", faction = "Alliance", pre = { 939 }, turnin = { 1448, 51.4, 81.5 } }
Q[4442] = { name = "Purified!", level = 54, minLevel = 49, map = 1448, x = 51.4, y = 81.5, giver = "Eridan Bluewind", faction = "Alliance", pre = { 4441 }, turnin = { 1448, 51.4, 81.5 } }
Q[4449] = { name = "Caught!", level = 45, minLevel = 43, map = 1427, x = 65.6, y = 62.2, giver = "Wooden Outhouse", turnin = { 1427, 65.6, 62.2 } }
Q[4450] = { name = "Ledger from Tanaris", level = 46, minLevel = 43, map = 1427, x = 65.6, y = 62.2, giver = "Wooden Outhouse", pre = { 4449 }, turnin = { 1446, 51.5, 28.8 } }
Q[4451] = { name = "The Key to Freedom", level = 47, minLevel = 43, map = 1427, x = 42.6, y = 31.6, giver = "Drop: Grimesilt Outhouse Key", turnin = { 1427, 65.6, 62.2 } }
Q[4485] = { name = "The Tome of Nobility", level = 40, minLevel = 40, map = 1455, x = 27.6, y = 12.2, giver = "Tiza Battleforge", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 50.5, 47.5 } }
Q[4486] = { name = "The Tome of Nobility", level = 40, minLevel = 40, map = 1455, x = 23.1, y = 6.1, giver = "Brandur Ironhammer", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 50.5, 47.5 } }
Q[4487] = { name = "Summon Felsteed", level = 40, minLevel = 40, map = 1455, x = 50.4, y = 5.7, giver = "Briarthorn", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1413, 62.6, 35.5 } }
Q[4488] = { name = "Summon Felsteed", level = 40, minLevel = 40, map = 1453, x = 39.2, y = 85.0, giver = "Demisette Cloyce", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1413, 62.6, 35.5 } }
Q[4489] = { name = "Summon Felsteed", level = 40, minLevel = 40, map = 1458, x = 86.2, y = 15.9, giver = "Kaal Soulreaper", faction = "Horde", class = { WARLOCK = true }, turnin = { 1413, 62.6, 35.5 } }
Q[4490] = { name = "Summon Felsteed", level = 40, minLevel = 40, map = 1413, x = 62.6, y = 35.5, giver = "Strahad Farsan", class = { WARLOCK = true }, turnin = { 1413, 62.6, 35.5 } }
Q[4491] = { name = "A Little Help From My Friends", level = 55, minLevel = 50, map = 1449, x = 51.9, y = 49.9, giver = "Ringo", pre = { 4492 }, turnin = { 1449, 43.6, 8.5 } }
Q[4492] = { name = "Lost!", level = 55, minLevel = 50, map = 1449, x = 43.6, y = 8.5, giver = "Spraggle Frock", turnin = { 1449, 51.9, 49.9 } }
Q[4493] = { name = "March of the Silithid", level = 53, minLevel = 50, map = 1457, x = 41.8, y = 85.6, giver = "Gracina Spiritmight", faction = "Alliance", pre = { 162 }, turnin = { 1446, 50.9, 27.0 } }
Q[4494] = { name = "March of the Silithid", level = 53, minLevel = 50, map = 1454, x = 56.3, y = 46.7, giver = "Zilzibin Drumlore", faction = "Horde", turnin = { 1446, 50.9, 27.0 } }
Q[4495] = { name = "A Good Friend", level = 4, minLevel = 2, map = 1438, x = 60.9, y = 42.0, giver = "Dirania Silvershine", faction = "Alliance", turnin = { 1438, 54.6, 33.0 } }
Q[4496] = { name = "Bungle in the Jungle", level = 53, minLevel = 50, map = 1446, x = 50.9, y = 27.0, giver = "Alchemist Pestlezugg", turnin = { 1446, 50.9, 27.0 } }
Q[4501] = { name = "Beware of Pterrordax", level = 55, minLevel = 49, map = 1449, x = 43.5, y = 8.4, giver = "Beware of Pterrordax", turnin = { 1449, 43.6, 8.5 } }
Q[4502] = { name = "Volcanic Activity", level = 55, minLevel = 49, map = 1413, x = 62.5, y = 38.7, giver = "Liv Rizzlefix", group = true, turnin = { 1413, 62.5, 38.7 } }
Q[4503] = { name = "Shizzle's Flyer", level = 51, minLevel = 49, map = 1449, x = 44.2, y = 11.6, giver = "Shizzle", turnin = { 1449, 44.2, 11.6 } }
Q[4504] = { name = "Super Sticky", level = 54, minLevel = 48, map = 1446, x = 51.6, y = 26.8, giver = "Tran'rek", turnin = { 1446, 51.6, 26.8 } }
Q[4505] = { name = "Well of Corruption", level = 54, minLevel = 49, map = 1448, x = 34.2, y = 52.3, giver = "Winna Hazzard", faction = "Horde", turnin = { 1448, 34.2, 52.3 } }
Q[4506] = { name = "Corrupted Sabers", level = 54, minLevel = 49, map = 1448, x = 34.2, y = 52.3, giver = "Winna Hazzard", faction = "Horde", pre = { 4505 }, turnin = { 1448, 34.2, 52.3 } }
Q[4507] = { name = "Pawn Captures Queen", level = 54, minLevel = 50, map = 1446, x = 50.9, y = 27.0, giver = "Alchemist Pestlezugg", pre = { 4496 }, turnin = { 1446, 50.9, 27.0 } }
Q[4508] = { name = "Calm Before the Storm", level = 54, minLevel = 50, map = 1446, x = 50.9, y = 27.0, giver = "Alchemist Pestlezugg", faction = "Alliance", pre = { 4507 }, turnin = { 1457, 41.8, 85.6 } }
Q[4509] = { name = "Calm Before the Storm", level = 54, minLevel = 50, map = 1446, x = 50.9, y = 27.0, giver = "Alchemist Pestlezugg", faction = "Horde", pre = { 4507 }, turnin = { 1454, 56.3, 46.7 } }
Q[4510] = { name = "Calm Before the Storm", level = 54, minLevel = 50, map = 1457, x = 41.8, y = 85.6, giver = "Gracina Spiritmight", faction = "Alliance", pre = { 4508 }, turnin = { 1457, 39.4, 42.4 } }
Q[4511] = { name = "Calm Before the Storm", level = 54, minLevel = 50, map = 1454, x = 56.3, y = 46.7, giver = "Zilzibin Drumlore", faction = "Horde", pre = { 4509 }, turnin = { 1454, 49.6, 69.1 } }
Q[4512] = { name = "A Little Slime Goes a Long Way", level = 52, minLevel = 48, map = 1455, x = 75.8, y = 23.4, giver = "Laris Geardawdle", faction = "Alliance", turnin = { 1455, 75.8, 23.4 } }
Q[4513] = { name = "A Little Slime Goes a Long Way", level = 54, minLevel = 48, map = 1455, x = 75.8, y = 23.4, giver = "Laris Geardawdle", faction = "Alliance", pre = { 4512 }, turnin = { 1455, 75.8, 23.4 } }
Q[4521] = { name = "Wild Guardians", level = 56, minLevel = 52, map = 1448, x = 34.7, y = 52.8, giver = "Trull Failbane", faction = "Horde", turnin = { 1448, 34.7, 52.8 } }
Q[4542] = { name = "Message to Freewind Post", level = 25, minLevel = 23, map = 1441, x = 32.2, y = 22.2, giver = "Brave Moonhorn", faction = "Horde", turnin = { 1441, 45.7, 50.7 } }
Q[4581] = { name = "Kayneth Stillwind", level = 29, minLevel = 24, map = 1440, x = 34.7, y = 48.8, giver = "Shindrell Swiftfire", faction = "Alliance", turnin = { 1440, 85.2, 44.7 } }
Q[4621] = { name = "Avast Ye, Admiral!", level = 60, minLevel = 55, map = 1434, x = 30.6, y = 90.6, giver = "Fleet Master Firallon", turnin = { 1434, 30.6, 90.6 } }
Q[4641] = { name = "Your Place In The World", level = 1, minLevel = 1, map = 1411, x = 43.3, y = 68.5, giver = "Kaltunk", faction = "Horde", turnin = { 1411, 42.1, 68.3 } }
Q[4642] = { name = "Melding of Influences", level = 55, minLevel = 48, map = 1458, x = 47.5, y = 73.3, giver = "Chemist Fuely", faction = "Horde", pre = { 4293, 4294 }, turnin = { 1458, 47.5, 73.3 } }
Q[4681] = { name = "Washed Ashore", level = 14, minLevel = 11, map = 1439, x = 36.6, y = 45.6, giver = "Gwennyth Bly'Leggonde", faction = "Alliance", pre = { 3524 }, turnin = { 1439, 36.6, 45.6 } }
Q[4721] = { name = "Wild Guardians", level = 59, minLevel = 52, map = 1448, x = 34.7, y = 52.8, giver = "Trull Failbane", faction = "Horde", pre = { 4741 }, turnin = { 1448, 34.7, 52.8 } }
Q[4722] = { name = "Beached Sea Turtle", level = 13, minLevel = 11, map = 1439, x = 37.1, y = 62.2, giver = "Beached Sea Turtle", faction = "Alliance", pre = { 4681 }, turnin = { 1439, 36.6, 45.6 } }
Q[4723] = { name = "Beached Sea Creature", level = 13, minLevel = 11, map = 1439, x = 41.9, y = 31.5, giver = "Beached Sea Creature", faction = "Alliance", pre = { 4681 }, turnin = { 1439, 36.6, 45.6 } }
Q[4725] = { name = "Beached Sea Turtle", level = 15, minLevel = 12, map = 1439, x = 44.2, y = 20.6, giver = "Beached Sea Turtle", faction = "Alliance", pre = { 4681 }, turnin = { 1439, 36.6, 45.6 } }
Q[4726] = { name = "Broodling Essence", level = 52, minLevel = 50, map = 1428, x = 65.2, y = 24, giver = "Tinkee Steamboil", turnin = { 1428, 65.2, 24 } }
Q[4727] = { name = "Beached Sea Turtle", level = 15, minLevel = 12, map = 1439, x = 53.1, y = 18.1, giver = "Beached Sea Turtle", faction = "Alliance", pre = { 4681 }, turnin = { 1439, 36.6, 45.6 } }
Q[4728] = { name = "Beached Sea Creature", level = 14, minLevel = 12, map = 1439, x = 36.0, y = 70.9, giver = "Beached Sea Creature", faction = "Alliance", pre = { 4681 }, turnin = { 1439, 36.6, 45.6 } }
Q[4730] = { name = "Beached Sea Creature", level = 16, minLevel = 12, map = 1439, x = 32.7, y = 80.8, giver = "Beached Sea Creature", faction = "Alliance", pre = { 4681 }, turnin = { 1439, 36.6, 45.6 } }
Q[4731] = { name = "Beached Sea Turtle", level = 19, minLevel = 13, map = 1439, x = 31.7, y = 83.7, giver = "Beached Sea Turtle", faction = "Alliance", pre = { 4681 }, turnin = { 1439, 36.6, 45.6 } }
Q[4732] = { name = "Beached Sea Turtle", level = 19, minLevel = 13, map = 1439, x = 31.2, y = 85.6, giver = "Beached Sea Turtle", faction = "Alliance", pre = { 4681 }, turnin = { 1439, 36.6, 45.6 } }
Q[4733] = { name = "Beached Sea Creature", level = 19, minLevel = 13, map = 1439, x = 31.3, y = 87.4, giver = "Beached Sea Creature", faction = "Alliance", pre = { 4681 }, turnin = { 1439, 36.6, 45.6 } }
Q[4736] = { name = "In Search of Menara Voidrender", level = 31, minLevel = 31, map = 1455, x = 50.4, y = 5.7, giver = "Briarthorn", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4737] = { name = "In Search of Menara Voidrender", level = 31, minLevel = 31, map = 1454, x = 48.5, y = 45.4, giver = "Zevrost", faction = "Horde", class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4738] = { name = "In Search of Menara Voidrender", level = 31, minLevel = 31, map = 1453, x = 39.2, y = 85.0, giver = "Demisette Cloyce", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4739] = { name = "In Search of Menara Voidrender", level = 31, minLevel = 31, map = 1458, x = 86.2, y = 15.9, giver = "Kaal Soulreaper", faction = "Horde", class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4740] = { name = "WANTED: Murkdeep!", level = 18, minLevel = 15, map = 1439, x = 37.2, y = 44.2, giver = "WANTED: Murkdeep!", faction = "Alliance", turnin = { 1439, 37.7, 43.4 } }
Q[4741] = { name = "Wild Guardians", level = 58, minLevel = 52, map = 1448, x = 34.7, y = 52.8, giver = "Trull Failbane", faction = "Horde", pre = { 4521 }, turnin = { 1448, 34.7, 52.8 } }
Q[4761] = { name = "Thundris Windweaver", level = 15, minLevel = 11, map = 1439, x = 39.4, y = 43.5, giver = "Terenthis", faction = "Alliance", pre = { 984 }, turnin = { 1439, 37.4, 40.1 } }
Q[4762] = { name = "The Cliffspring River", level = 15, minLevel = 11, map = 1439, x = 37.4, y = 40.1, giver = "Thundris Windweaver", faction = "Alliance", pre = { 4761 }, turnin = { 1439, 37.4, 40.1 } }
Q[4763] = { name = "The Blackwood Corrupted", level = 18, minLevel = 15, map = 1439, x = 37.4, y = 40.1, giver = "Thundris Windweaver", faction = "Alliance", pre = { 4762 }, turnin = { 1439, 37.4, 40.1 } }
Q[4767] = { name = "Wind Rider", level = 29, minLevel = 25, map = 1441, x = 44.9, y = 48.9, giver = "Elu", faction = "Horde", turnin = { 1441, 44.9, 48.9 } }
Q[4770] = { name = "Homeward Bound", level = 29, minLevel = 25, map = 1441, x = 17.9, y = 40.6, giver = "Pao'ka Swiftmountain", faction = "Horde", turnin = { 1441, 21.5, 32.4 } }
Q[4771] = { name = "Dawn's Gambit", level = 60, minLevel = 57, map = 1423, x = 71.7, y = 49.9, giver = "Betina Bigglezink", pre = { 5531 }, dungeon = "Scholomance", turnin = { 1423, 71.7, 49.9 } }
Q[4781] = { name = "Components for the Enchanted Gold Bloodrobe", level = 34, minLevel = 31, map = 1413, x = 62.5, y = 35.5, giver = "Menara Voidrender", pre = { 1796 }, class = { WARLOCK = true }, turnin = { 1434, 28.7, 76.9 } }
Q[4782] = { name = "Components for the Enchanted Gold Bloodrobe", level = 34, minLevel = 31, map = 1434, x = 28.7, y = 76.9, giver = "Xizk Goodstitch", pre = { 4781 }, class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4783] = { name = "Components for the Enchanted Gold Bloodrobe", level = 37, minLevel = 31, map = 1413, x = 62.5, y = 35.5, giver = "Menara Voidrender", pre = { 4782 }, class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4784] = { name = "Components for the Enchanted Gold Bloodrobe", level = 37, minLevel = 31, map = 1413, x = 62.5, y = 35.5, giver = "Menara Voidrender", pre = { 4783 }, class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4786] = { name = "The Completed Robe", level = 38, minLevel = 31, map = 1413, x = 62.5, y = 35.5, giver = "Menara Voidrender", pre = { 4784 }, class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4787] = { name = "The Ancient Egg", level = 50, minLevel = 40, map = 1446, x = 67.0, y = 22.4, giver = "Yeh'kinya", pre = { 3527 }, turnin = { 1446, 67.0, 22.4 } }
Q[4808] = { name = "Felnok Steelspring", level = 54, minLevel = 50, map = 1428, x = 65.2, y = 24, giver = "Tinkee Steamboil", pre = { 4726 }, turnin = { 1452, 61.6, 38.6 } }
Q[4809] = { name = "Chillwind Horns", level = 54, minLevel = 50, map = 1452, x = 61.6, y = 38.6, giver = "Felnok Steelspring", pre = { 4808 }, turnin = { 1452, 61.6, 38.6 } }
Q[4810] = { name = "Return to Tinkee", level = 54, minLevel = 50, map = 1452, x = 61.6, y = 38.6, giver = "Felnok Steelspring", pre = { 4809 }, turnin = { 1428, 65.2, 24 } }
Q[4811] = { name = "The Red Crystal", level = 14, minLevel = 12, map = 1439, x = 37.7, y = 43.4, giver = "Sentinel Glynda Nal'Shea", faction = "Alliance", turnin = { 1439, 37.7, 43.4 } }
Q[4812] = { name = "As Water Cascades", level = 14, minLevel = 12, map = 1439, x = 37.7, y = 43.4, giver = "Sentinel Glynda Nal'Shea", faction = "Alliance", pre = { 4811 }, turnin = { 1439, 47.3, 48.7 } }
Q[4813] = { name = "The Fragments Within", level = 14, minLevel = 12, map = 1439, x = 47.3, y = 48.7, giver = "Mysterious Red Crystal", faction = "Alliance", pre = { 4812 }, turnin = { 1439, 37.7, 43.4 } }
Q[4821] = { name = "Alien Egg", level = 26, minLevel = 24, map = 1441, x = 44.6, y = 50.3, giver = "Hagar Lightninghoof", faction = "Horde", turnin = { 1441, 44.6, 50.3 } }
Q[4841] = { name = "Pacify the Centaur", level = 25, minLevel = 23, map = 1441, x = 45.7, y = 50.7, giver = "Cliffwatcher Longhorn", faction = "Horde", turnin = { 1441, 45.7, 50.7 } }
Q[4842] = { name = "Strange Sources", level = 56, minLevel = 51, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 980 }, turnin = { 1452, 31.3, 45.2 } }
Q[4861] = { name = "Enraged Wildkin", level = 59, minLevel = 53, map = 1452, x = 52.1, y = 30.4, giver = "Jaron Stoneshaper", faction = "Alliance", turnin = { 1452, 59.0, 59.8 } }
Q[4863] = { name = "Enraged Wildkin", level = 59, minLevel = 53, map = 1452, x = 59.0, y = 59.8, giver = "Damaged Crate", faction = "Alliance", pre = { 4861 }, turnin = { 1452, 61.4, 60.7 } }
Q[4864] = { name = "Enraged Wildkin", level = 59, minLevel = 53, map = 1452, x = 61.4, y = 60.7, giver = "Jaron's Wagon", faction = "Alliance", pre = { 4863 }, turnin = { 1452, 52.1, 30.4 } }
Q[4865] = { name = "Serpent Wild", level = 26, minLevel = 24, map = 1441, x = 44.6, y = 50.3, giver = "Hagar Lightninghoof", faction = "Horde", pre = { 4821 }, turnin = { 1441, 21.5, 32.4 } }
Q[4881] = { name = "Assassination Plot", level = 28, minLevel = 23, map = 1441, x = 39.4, y = 33.1, giver = "Drop: Assassination Note", faction = "Horde", turnin = { 1441, 21.2, 32.1 } }
Q[4882] = { name = "Guarding Secrets", level = 59, minLevel = 52, map = 1452, x = 64.8, y = 20.8, giver = "Drop: Blue-feathered Necklace", faction = "Horde", pre = { 4741 }, turnin = { 1448, 34.7, 52.8 } }
Q[4883] = { name = "Guarding Secrets", level = 59, minLevel = 52, map = 1448, x = 34.7, y = 52.8, giver = "Trull Failbane", faction = "Horde", pre = { 4882 }, turnin = { 1456, 75.7, 31.6 } }
Q[4901] = { name = "Guardians of the Altar", level = 59, minLevel = 52, map = 1452, x = 63.1, y = 59.5, giver = "Ranshalla", faction = "Alliance", pre = { 979 }, turnin = { 1438, 55.5, 92.0 } }
Q[4902] = { name = "Wildkin of Elune", level = 57, minLevel = 52, map = 1438, x = 55.5, y = 92.0, giver = "Erelas Ambersky", faction = "Alliance", pre = { 4901 }, turnin = { 1457, 34.8, 9.3 } }
Q[4904] = { name = "Free at Last", level = 29, minLevel = 25, map = 1441, x = 38.0, y = 26.4, giver = "Lakota Windsong", faction = "Horde", turnin = { 1441, 46.0, 51.6 } }
Q[4906] = { name = "Further Corruption", level = 54, minLevel = 49, map = 1448, x = 51.4, y = 81.5, giver = "Eridan Bluewind", faction = "Alliance", pre = { 4421 }, turnin = { 1448, 51.4, 81.5 } }
Q[4921] = { name = "Lost in Battle", level = 20, minLevel = 14, map = 1413, x = 52.0, y = 31.6, giver = "Mankrik", faction = "Horde", turnin = { 1413, 52.0, 31.6 } }
Q[4941] = { name = "Eitrigg's Wisdom", level = 60, minLevel = 55, map = 1418, x = 5.8, y = 47.5, giver = "Warlord Goretooth", faction = "Horde", pre = { 4903 }, turnin = { 1454, 31.7, 37.8 } }
Q[4961] = { name = "Cleansing of the Orb of Orahil", level = 40, minLevel = 35, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", pre = { 1799, 4962 }, class = { WARLOCK = true }, group = true, turnin = { 1445, 46.1, 57.1 } }
Q[4962] = { name = "Shard of a Felhound", level = 40, minLevel = 35, map = 1413, x = 62.6, y = 35.3, giver = "Acolyte Wytula", class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4963] = { name = "Shard of an Infernal", level = 40, minLevel = 35, map = 1413, x = 62.6, y = 35.2, giver = "Acolyte Magaz", class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4964] = { name = "The Completed Orb of Dar'Orahil", level = 40, minLevel = 35, map = 1413, x = 62.5, y = 35.5, giver = "Menara Voidrender", pre = { 4976, -4962 }, class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4965] = { name = "Knowledge of the Orb of Orahil", level = 35, minLevel = 35, map = 1455, x = 50.4, y = 5.7, giver = "Briarthorn", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4966] = { name = "Protect Kanati Greycloud", level = 28, minLevel = 23, map = 1441, x = 21.2, y = 32.1, giver = "Kanati Greycloud", faction = "Horde", pre = { 4881 }, turnin = { 1441, 21.2, 32.1 } }
Q[4967] = { name = "Knowledge of the Orb of Orahil", level = 35, minLevel = 35, map = 1454, x = 48.5, y = 45.4, giver = "Zevrost", faction = "Horde", class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4968] = { name = "Knowledge of the Orb of Orahil", level = 35, minLevel = 35, map = 1453, x = 39.2, y = 85.0, giver = "Demisette Cloyce", faction = "Alliance", class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4969] = { name = "Knowledge of the Orb of Orahil", level = 35, minLevel = 35, map = 1458, x = 86.2, y = 15.9, giver = "Kaal Soulreaper", faction = "Horde", class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4971] = { name = "A Matter of Time", level = 56, minLevel = 53, map = 1422, x = 39.5, y = 66.8, giver = "Chromie", turnin = { 1422, 39.5, 66.8 } }
Q[4972] = { name = "Counting Out Time", level = 56, minLevel = 53, map = 1422, x = 39.5, y = 66.8, giver = "Chromie", pre = { 4971 }, turnin = { 1422, 39.5, 66.8 } }
Q[4975] = { name = "The Completed Orb of Noh'Orahil", level = 40, minLevel = 35, map = 1413, x = 62.5, y = 35.5, giver = "Menara Voidrender", pre = { 4976, -4963 }, class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4976] = { name = "Returning the Cleansed Orb", level = 40, minLevel = 35, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", pre = { 4961 }, class = { WARLOCK = true }, turnin = { 1413, 62.5, 35.5 } }
Q[4984] = { name = "The Wildlife Suffers Too", level = 54, minLevel = 51, map = 1422, x = 53.7, y = 64.7, giver = "Mulgris Deepriver", turnin = { 1422, 53.7, 64.7 } }
Q[4985] = { name = "The Wildlife Suffers Too", level = 56, minLevel = 51, map = 1422, x = 53.7, y = 64.7, giver = "Mulgris Deepriver", pre = { 4984 }, turnin = { 1422, 53.7, 64.7 } }
Q[4986] = { name = "Glyphed Oaken Branch", level = 56, minLevel = 51, map = 1422, x = 53.7, y = 64.7, giver = "Mulgris Deepriver", faction = "Alliance", pre = { 4985 }, turnin = { 1457, 35.4, 8.4 } }
Q[4987] = { name = "Glyphed Oaken Branch", level = 56, minLevel = 51, map = 1422, x = 53.7, y = 64.7, giver = "Mulgris Deepriver", faction = "Horde", pre = { 4985 }, turnin = { 1456, 75.7, 31.6 } }
Q[5021] = { name = "Better Late Than Never", level = 52, minLevel = 50, map = 1422, x = 38.4, y = 54.0, giver = "Janice Felstone", turnin = { 1422, 38.7, 55.2 } }
Q[5022] = { name = "Better Late Than Never", level = 52, minLevel = 50, map = 1422, x = 38.7, y = 55.2, giver = "Janice's Parcel", faction = "Alliance", pre = { 5021 }, turnin = { 1453, 57.2, 48.1 } }
Q[5023] = { name = "Better Late Than Never", level = 52, minLevel = 50, map = 1422, x = 38.7, y = 55.2, giver = "Janice's Parcel", faction = "Horde", pre = { 5021 }, turnin = { 1458, 69.8, 43.2 } }
Q[5041] = { name = "Supplies for the Crossroads", level = 14, minLevel = 9, map = 1413, x = 51.5, y = 30.9, giver = "Thork", faction = "Horde", turnin = { 1413, 51.5, 30.9 } }
Q[5048] = { name = "Good Natured Emma", level = 52, minLevel = 50, map = 1453, x = 57.2, y = 48.1, giver = "Royal Factor Bathrilor", faction = "Alliance", pre = { 5022 }, turnin = { 1453, 60.2, 57.0 } }
Q[5049] = { name = "The Jeremiah Blues", level = 52, minLevel = 50, map = 1458, x = 69.8, y = 43.2, giver = "Royal Overseer Bauhaus", faction = "Horde", pre = { 5023 }, turnin = { 1458, 67.6, 44.2 } }
Q[5050] = { name = "Good Luck Charm", level = 52, minLevel = 50, map = 1458, x = 67.6, y = 44.2, giver = "Jeremiah Payson", alliance = { map = 1453, x = 60.2, y = 57.0, giver = "Ol' Emma" }, turnin = { 1422, 38.4, 54.0 } }
Q[5051] = { name = "Two Halves Become One", level = 54, minLevel = 50, map = 1422, x = 38.4, y = 54.0, giver = "Janice Felstone", pre = { 5050 }, turnin = { 1422, 38.4, 54.0 } }
Q[5052] = { name = "Blood Shards of Agamaggan", level = 21, minLevel = 14, map = 1413, x = 44.5, y = 59.3, giver = "Mangletooth", faction = "Horde", pre = { 878 }, turnin = { 1413, 44.5, 59.3 } }
Q[5054] = { name = "Ursius of the Shardtooth", level = 56, minLevel = 53, map = 1452, x = 61.9, y = 38.4, giver = "Storm Shadowhoof", faction = "Horde", group = true, turnin = { 1452, 61.9, 38.4 } }
Q[5055] = { name = "Brumeran of the Chillwind", level = 58, minLevel = 53, map = 1452, x = 61.9, y = 38.4, giver = "Storm Shadowhoof", faction = "Horde", pre = { 5054 }, group = true, turnin = { 1452, 61.9, 38.4 } }
Q[5056] = { name = "Shy-Rotam", level = 60, minLevel = 53, map = 1452, x = 61.9, y = 38.4, giver = "Storm Shadowhoof", faction = "Horde", pre = { 5055 }, group = true, turnin = { 1452, 61.9, 38.4 } }
Q[5057] = { name = "Past Endeavors", level = 60, minLevel = 53, map = 1452, x = 61.9, y = 38.4, giver = "Storm Shadowhoof", faction = "Horde", pre = { 5056 }, turnin = { 1452, 61.9, 38.4 } }
Q[5058] = { name = "Mrs. Dalson's Diary", level = 55, minLevel = 52, map = 1422, x = 47.8, y = 50.7, giver = "Mrs. Dalson's Diary", turnin = { 1422, 47.8, 50.7 } }
Q[5060] = { name = "Locked Away", level = 55, minLevel = 52, map = 1422, x = 47.4, y = 49.6, giver = "Locked Cabinet", turnin = { 1422, 47.4, 49.6 } }
Q[5061] = { name = "Aquatic Form", level = 16, minLevel = 16, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Alliance", pre = { 272 }, race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1457, 35.4, 8.4 } }
Q[5062] = { name = "Sacred Fire", level = 27, minLevel = 24, map = 1441, x = 21.5, y = 32.4, giver = "Motega Firemane", faction = "Horde", pre = { 4865 }, turnin = { 1456, 69.8, 30.9 } }
Q[5064] = { name = "Grimtotem Spying", level = 28, minLevel = 24, map = 1441, x = 45.7, y = 50.7, giver = "Cliffwatcher Longhorn", faction = "Horde", pre = { 4841 }, turnin = { 1441, 45.7, 50.7 } }
Q[5066] = { name = "A Call to Arms: The Plaguelands!", level = 50, minLevel = 50, map = 1453, x = 56.4, y = 74.1, giver = "Crier Goodman", faction = "Alliance", turnin = { 1422, 42.7, 84.0 } }
Q[5082] = { name = "Threat of the Winterfall", level = 56, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", turnin = { 1452, 31.3, 45.2 } }
Q[5083] = { name = "Winterfall Firewater", level = 56, minLevel = 52, map = 1452, x = 40.8, y = 43.8, giver = "Drop: Empty Firewater Flask", turnin = { 1452, 31.3, 45.2 } }
Q[5084] = { name = "Falling to Corruption", level = 56, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 5083 }, turnin = { 1448, 60.2, 5.8 } }
Q[5085] = { name = "Mystery Goo", level = 56, minLevel = 52, map = 1448, x = 60.2, y = 5.8, giver = "Deadwood Cauldron", pre = { 5084 }, turnin = { 1452, 31.3, 45.2 } }
Q[5086] = { name = "Toxic Horrors", level = 56, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 5085 }, turnin = { 1452, 31.3, 45.2 } }
Q[5087] = { name = "Winterfall Runners", level = 57, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 5086 }, turnin = { 1452, 31.3, 45.2 } }
Q[5088] = { name = "Arikara", level = 28, minLevel = 24, map = 1456, x = 69.8, y = 30.9, giver = "Magatha Grimtotem", faction = "Horde", pre = { 5062 }, group = true, turnin = { 1441, 21.5, 32.4 } }
Q[5090] = { name = "A Call to Arms: The Plaguelands!", level = 50, minLevel = 50, map = 1455, x = 55.9, y = 81.4, giver = "Courier Hammerfall", faction = "Alliance", turnin = { 1422, 42.7, 84.0 } }
Q[5091] = { name = "A Call to Arms: The Plaguelands!", level = 50, minLevel = 50, map = 1457, x = 47.8, y = 82.0, giver = "Herald Moonstalker", faction = "Alliance", turnin = { 1422, 42.7, 84.0 } }
Q[5092] = { name = "Clear the Way", level = 52, minLevel = 50, map = 1422, x = 42.7, y = 84.0, giver = "Commander Ashlam Valorfist", faction = "Alliance", turnin = { 1422, 42.7, 84.0 } }
Q[5093] = { name = "A Call to Arms: The Plaguelands!", level = 50, minLevel = 50, map = 1454, x = 37.7, y = 75.2, giver = "Warcaller Gorlach", faction = "Horde", turnin = { 1420, 83.1, 68.9 } }
Q[5094] = { name = "A Call to Arms: The Plaguelands!", level = 50, minLevel = 50, map = 1458, x = 63.9, y = 44.1, giver = "Harbinger Balthazad", faction = "Horde", turnin = { 1420, 83.1, 68.9 } }
Q[5095] = { name = "A Call to Arms: The Plaguelands!", level = 50, minLevel = 50, map = 1456, x = 44.3, y = 58.8, giver = "Bluff Runner Windstrider", faction = "Horde", turnin = { 1420, 83.1, 68.9 } }
Q[5096] = { name = "Scarlet Diversions", level = 53, minLevel = 50, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", faction = "Horde", turnin = { 1420, 83.1, 68.9 } }
Q[5097] = { name = "All Along the Watchtowers", level = 56, minLevel = 50, map = 1422, x = 42.7, y = 84.0, giver = "Commander Ashlam Valorfist", faction = "Alliance", pre = { 5092 }, turnin = { 1422, 42.7, 84.0 } }
Q[5098] = { name = "All Along the Watchtowers", level = 56, minLevel = 50, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", faction = "Horde", pre = { 5096 }, turnin = { 1420, 83.1, 68.9 } }
Q[5121] = { name = "High Chief Winterfall", level = 59, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 5087 }, group = true, turnin = { 1452, 31.3, 45.2 } }
Q[5128] = { name = "Words of the High Chief", level = 59, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 5123 }, turnin = { 1448, 51.1, 81.8 } }
Q[5142] = { name = "Little Pamela", level = 55, minLevel = 50, map = 1422, x = 49.2, y = 78.6, giver = "Marlene Redpath", turnin = { 1423, 31.1, 78.0 } }
Q[5147] = { name = "Wanted - Arnak Grimtotem", level = 29, minLevel = 25, map = 1441, x = 46, y = 50.9, giver = "Wanted Poster - Arnak Grimtotem", faction = "Horde", turnin = { 1441, 45.7, 50.7 } }
Q[5149] = { name = "Pamela's Doll", level = 55, minLevel = 50, map = 1423, x = 31.1, y = 78.0, giver = "Pamela Redpath", turnin = { 1423, 31.1, 78.0 } }
Q[5151] = { name = "Hypercapacitor Gizmo", level = 30, minLevel = 24, map = 1441, x = 21.4, y = 32.5, giver = "Wizlo Bearingshiner", faction = "Horde", group = true, turnin = { 1441, 21.4, 32.5 } }
Q[5152] = { name = "Auntie Marlene", level = 56, minLevel = 50, map = 1423, x = 31.1, y = 78.0, giver = "Pamela Redpath", pre = { 5149 }, turnin = { 1422, 49.2, 78.6 } }
Q[5153] = { name = "A Strange Historian", level = 56, minLevel = 50, map = 1422, x = 49.2, y = 78.6, giver = "Marlene Redpath", pre = { 5152 }, turnin = { 1422, 39.5, 66.8 } }
Q[5154] = { name = "The Annals of Darrowshire", level = 56, minLevel = 50, map = 1422, x = 39.5, y = 66.8, giver = "Chromie", pre = { 5153 }, turnin = { 1422, 39.5, 66.8 } }
Q[5155] = { name = "Forces of Jaedenar", level = 51, minLevel = 48, map = 1448, x = 51.2, y = 82.1, giver = "Greta Mosshoof", turnin = { 1448, 51.2, 82.1 } }
Q[5156] = { name = "Verifying the Corruption", level = 54, minLevel = 48, map = 1448, x = 50.9, y = 81.6, giver = "Taronn Redfeather", turnin = { 1448, 50.9, 81.6 } }
Q[5157] = { name = "Collection of the Corrupt Water", level = 52, minLevel = 48, map = 1448, x = 51.2, y = 82.1, giver = "Greta Mosshoof", pre = { 5155 }, turnin = { 1448, 51.2, 82.1 } }
Q[5158] = { name = "Seeking Spiritual Aid", level = 52, minLevel = 48, map = 1448, x = 51.2, y = 82.1, giver = "Greta Mosshoof", pre = { 5157 }, turnin = { 1413, 65.8, 43.8 } }
Q[5159] = { name = "Cleansed Water Returns to Felwood", level = 54, minLevel = 48, map = 1413, x = 65.8, y = 43.8, giver = "Islen Waterseer", pre = { 5158 }, turnin = { 1448, 51.2, 82.1 } }
Q[5161] = { name = "Wrath of the Blue Flight", level = 60, minLevel = 57, map = 1452, x = 54.5, y = 51.2, giver = "Haleh", pre = { 5160 }, turnin = { 1452, 54.5, 51.2 } }
Q[5162] = { name = "Wrath of the Blue Flight", level = 60, minLevel = 57, map = 1452, x = 54.5, y = 51.2, giver = "Haleh", pre = { 5161 }, turnin = { 1422, 39.4, 66.8 } }
Q[5163] = { name = "Are We There, Yeti?", level = 58, minLevel = 52, map = 1452, x = 60.9, y = 37.6, giver = "Umi Rumplesnicker", pre = { 977 }, turnin = { 1452, 60.9, 37.6 } }
Q[5164] = { name = "Catalogue of the Wayward", level = 60, minLevel = 57, map = 1422, x = 39.4, y = 66.8, giver = "Jeziba", pre = { 5162 }, turnin = { 1422, 39.4, 66.6 } }
Q[5165] = { name = "Dousing the Flames of Protection", level = 55, minLevel = 48, map = 1448, x = 51.2, y = 82.1, giver = "Greta Mosshoof", pre = { 5159 }, turnin = { 1448, 51.2, 82.1 } }
Q[5166] = { name = "Breastplate of the Chromatic Flight", level = 60, minLevel = 57, map = 1422, x = 39.4, y = 66.6, giver = "Catalogue of the Wayward", pre = { 5164 }, group = true, turnin = { 1422, 39.4, 66.8 } }
Q[5167] = { name = "Legplates of the Chromatic Defier", level = 60, minLevel = 57, map = 1422, x = 39.4, y = 66.6, giver = "Catalogue of the Wayward", pre = { 5164 }, group = true, turnin = { 1422, 39.4, 66.8 } }
Q[5168] = { name = "Heroes of Darrowshire", level = 56, minLevel = 50, map = 1423, x = 71.7, y = 50.0, giver = "Carlin Redpath", pre = { 5210 }, turnin = { 1423, 71.7, 50.0 } }
Q[5181] = { name = "Villains of Darrowshire", level = 57, minLevel = 50, map = 1423, x = 71.7, y = 50.0, giver = "Carlin Redpath", pre = { 5210 }, turnin = { 1423, 71.7, 50.0 } }
Q[5202] = { name = "A Strange Red Key", level = 55, minLevel = 49, map = 1448, x = 38.4, y = 50.3, giver = "Drop: Blood Red Key", turnin = { 1448, 36.2, 55.5 } }
Q[5203] = { name = "Rescue From Jaedenar", level = 55, minLevel = 49, map = 1448, x = 36.2, y = 55.5, giver = "Captured Arko'narin", pre = { 5202 }, turnin = { 1448, 51.4, 82.0 } }
Q[5204] = { name = "Retribution of the Light", level = 57, minLevel = 49, map = 1448, x = 51.4, y = 82.0, giver = "Jessir Moonbow", pre = { 5203 }, turnin = { 1448, 38.5, 50.4 } }
Q[5206] = { name = "Marauders of Darrowshire", level = 60, minLevel = 50, map = 1423, x = 71.7, y = 50.0, giver = "Carlin Redpath", pre = { 5168, 5181 }, turnin = { 1423, 71.7, 50.0 } }
Q[5210] = { name = "Brother Carlin", level = 56, minLevel = 50, map = 1422, x = 39.5, y = 66.8, giver = "Chromie", pre = { 5154 }, turnin = { 1423, 71.7, 50.0 } }
Q[5211] = { name = "Defenders of Darrowshire", level = 55, minLevel = 50, map = 1423, x = 71.7, y = 50.0, giver = "Carlin Redpath", turnin = { 1423, 71.7, 50.0 } }
Q[5212] = { name = "The Flesh Does Not Lie", level = 60, minLevel = 55, map = 1423, x = 71.7, y = 49.9, giver = "Betina Bigglezink", dungeon = "Stratholme", turnin = { 1423, 71.7, 49.9 } }
Q[5213] = { name = "The Active Agent", level = 60, minLevel = 55, map = 1423, x = 71.7, y = 49.9, giver = "Betina Bigglezink", pre = { 5212 }, dungeon = "Stratholme", turnin = { 1423, 71.7, 49.9 } }
Q[5214] = { name = "The Great Ezra Grimm", level = 60, minLevel = 55, map = 1423, x = 70.9, y = 48.4, giver = "Smokey LaRue", dungeon = "Stratholme", turnin = { 1423, 70.9, 48.4 } }
Q[5215] = { name = "The Scourge Cauldrons", level = 53, minLevel = 50, map = 1422, x = 42.7, y = 84.0, giver = "Commander Ashlam Valorfist", faction = "Alliance", pre = { 5092 }, turnin = { 1422, 43.0, 84.5 } }
Q[5216] = { name = "Target: Felstone Field", level = 53, minLevel = 50, map = 1422, x = 43.0, y = 84.5, giver = "High Priestess MacDonnell", faction = "Alliance", pre = { 5215 }, turnin = { 1422, 37.2, 56.8 } }
Q[5217] = { name = "Return to Chillwind Camp", level = 53, minLevel = 50, map = 1422, x = 37.2, y = 56.8, giver = "Scourge Cauldron", faction = "Alliance", pre = { 5216 }, turnin = { 1422, 43.0, 84.5 } }
Q[5219] = { name = "Target: Dalson's Tears", level = 55, minLevel = 50, map = 1422, x = 43.0, y = 84.5, giver = "High Priestess MacDonnell", faction = "Alliance", pre = { 5217 }, turnin = { 1422, 46.2, 51.9 } }
Q[5220] = { name = "Return to Chillwind Camp", level = 55, minLevel = 50, map = 1422, x = 46.2, y = 51.9, giver = "Scourge Cauldron", faction = "Alliance", pre = { 5219 }, turnin = { 1422, 43.0, 84.5 } }
Q[5222] = { name = "Target: Writhing Haunt", level = 55, minLevel = 50, map = 1422, x = 43.0, y = 84.5, giver = "High Priestess MacDonnell", faction = "Alliance", pre = { 5220 }, turnin = { 1422, 53.0, 65.6 } }
Q[5223] = { name = "Return to Chillwind Camp", level = 55, minLevel = 50, map = 1422, x = 53.0, y = 65.6, giver = "Scourge Cauldron", faction = "Alliance", pre = { 5222 }, turnin = { 1422, 43.0, 84.5 } }
Q[5225] = { name = "Target: Gahrron's Withering", level = 58, minLevel = 50, map = 1422, x = 43.0, y = 84.5, giver = "High Priestess MacDonnell", faction = "Alliance", pre = { 5223 }, turnin = { 1422, 62.5, 58.5 } }
Q[5226] = { name = "Return to Chillwind Camp", level = 58, minLevel = 50, map = 1422, x = 62.5, y = 58.5, giver = "Scourge Cauldron", faction = "Alliance", pre = { 5225 }, turnin = { 1422, 43.0, 84.5 } }
Q[5228] = { name = "The Scourge Cauldrons", level = 53, minLevel = 50, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", faction = "Horde", pre = { 5096 }, turnin = { 1420, 83.0, 71.9 } }
Q[5229] = { name = "Target: Felstone Field", level = 53, minLevel = 50, map = 1420, x = 83.0, y = 71.9, giver = "Shadow Priestess Vandis", faction = "Horde", pre = { 5228 }, turnin = { 1422, 37.2, 56.8 } }
Q[5230] = { name = "Return to the Bulwark", level = 53, minLevel = 50, map = 1422, x = 37.2, y = 56.8, giver = "Scourge Cauldron", faction = "Horde", pre = { 5229 }, turnin = { 1420, 83.0, 71.9 } }
Q[5231] = { name = "Target: Dalson's Tears", level = 55, minLevel = 50, map = 1420, x = 83.0, y = 71.9, giver = "Shadow Priestess Vandis", faction = "Horde", pre = { 5230 }, turnin = { 1422, 46.2, 51.9 } }
Q[5232] = { name = "Return to the Bulwark", level = 55, minLevel = 50, map = 1422, x = 46.2, y = 51.9, giver = "Scourge Cauldron", faction = "Horde", pre = { 5231 }, turnin = { 1420, 83.0, 71.9 } }
Q[5233] = { name = "Target: Writhing Haunt", level = 55, minLevel = 50, map = 1420, x = 83.0, y = 71.9, giver = "Shadow Priestess Vandis", faction = "Horde", pre = { 5232 }, turnin = { 1422, 53.0, 65.6 } }
Q[5234] = { name = "Return to the Bulwark", level = 55, minLevel = 50, map = 1422, x = 53.0, y = 65.6, giver = "Scourge Cauldron", faction = "Horde", pre = { 5233 }, turnin = { 1420, 83.0, 71.9 } }
Q[5235] = { name = "Target: Gahrron's Withering", level = 58, minLevel = 50, map = 1420, x = 83.0, y = 71.9, giver = "Shadow Priestess Vandis", faction = "Horde", pre = { 5234 }, turnin = { 1422, 62.5, 58.5 } }
Q[5236] = { name = "Return to the Bulwark", level = 58, minLevel = 50, map = 1422, x = 62.5, y = 58.5, giver = "Scourge Cauldron", faction = "Horde", pre = { 5235 }, turnin = { 1420, 83.0, 71.9 } }
Q[5237] = { name = "Mission Accomplished!", level = 58, minLevel = 50, map = 1422, x = 42.7, y = 84.0, giver = "Commander Ashlam Valorfist", faction = "Alliance", pre = { 5226 }, turnin = { 1422, 42.7, 84.0 } }
Q[5238] = { name = "Mission Accomplished!", level = 58, minLevel = 50, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", faction = "Horde", pre = { 5236 }, turnin = { 1420, 83.1, 68.9 } }
Q[5241] = { name = "Uncle Carlin", level = 56, minLevel = 50, map = 1423, x = 31.1, y = 78.0, giver = "Pamela Redpath", pre = { 5149 }, turnin = { 1423, 71.7, 50.0 } }
Q[5242] = { name = "A Final Blow", level = 58, minLevel = 48, map = 1448, x = 51.2, y = 82.1, giver = "Greta Mosshoof", pre = { 5165 }, turnin = { 1448, 51.2, 82.1 } }
Q[5243] = { name = "Houses of the Holy", level = 60, minLevel = 55, map = 1423, x = 71.9, y = 48.3, giver = "Leonid Barthalomew the Revered", dungeon = "Stratholme", turnin = { 1423, 71.9, 48.3 } }
Q[5244] = { name = "The Ruins of Kel'Theril", level = 56, minLevel = 53, map = 1452, x = 52.0, y = 30.4, giver = "Wynd Nightchaser", faction = "Alliance", turnin = { 1452, 52.1, 30.4 } }
Q[5245] = { name = "Troubled Spirits of Kel'Theril", level = 56, minLevel = 53, map = 1452, x = 52.1, y = 30.4, giver = "Jaron Stoneshaper", faction = "Alliance", pre = { 5244 }, turnin = { 1423, 46.5, 16.0 } }
Q[5246] = { name = "Fragments of the Past", level = 56, minLevel = 53, map = 1423, x = 46.5, y = 16.0, giver = "Aurora Skycaller", faction = "Alliance", pre = { 5245 }, turnin = { 1423, 46.5, 16.0 } }
Q[5247] = { name = "Fragments of the Past", level = 57, minLevel = 53, map = 1423, x = 46.5, y = 16.0, giver = "Aurora Skycaller", faction = "Alliance", pre = { 5246 }, turnin = { 1423, 46.5, 16.0 } }
Q[5248] = { name = "Tormented By the Past", level = 58, minLevel = 53, map = 1423, x = 46.5, y = 16.0, giver = "Aurora Skycaller", faction = "Alliance", pre = { 5247 }, turnin = { 1452, 56.1, 44.4 } }
Q[5249] = { name = "To Winterspring!", level = 56, minLevel = 53, map = 1448, x = 51.0, y = 81.6, giver = "Ivy Leafrunner", faction = "Alliance", turnin = { 1452, 52.0, 30.4 } }
Q[5250] = { name = "Starfall", level = 56, minLevel = 53, map = 1438, x = 55.4, y = 92.2, giver = "Daryn Lightwind", faction = "Alliance", turnin = { 1452, 52.0, 30.4 } }
Q[5251] = { name = "The Archivist", level = 60, minLevel = 55, map = 1423, x = 71.6, y = 50.1, giver = "Duke Nicholas Zverenhoff", dungeon = "Stratholme", turnin = { 1423, 71.6, 50.1 } }
Q[5252] = { name = "Remorseful Highborne", level = 58, minLevel = 53, map = 1452, x = 56.1, y = 44.4, giver = "Remorseful Highborne", faction = "Alliance", pre = { 5248 }, turnin = { 1452, 52.0, 30.4 } }
Q[5253] = { name = "The Crystal of Zin-Malor", level = 58, minLevel = 53, map = 1452, x = 52.0, y = 30.4, giver = "Wynd Nightchaser", faction = "Alliance", pre = { 5252 }, turnin = { 1457, 34.8, 9.3 } }
Q[5261] = { name = "Eagan Peltskinner", level = 2, minLevel = 1, map = 1429, x = 48.2, y = 42.9, giver = "Deputy Willem", faction = "Alliance", pre = { 783 }, turnin = { 1429, 48.9, 40.2 } }
Q[5263] = { name = "Above and Beyond", level = 60, minLevel = 55, map = 1423, x = 71.6, y = 50.1, giver = "Duke Nicholas Zverenhoff", pre = { 5262 }, dungeon = "Stratholme", turnin = { 1423, 71.6, 50.1 } }
Q[5264] = { name = "Lord Maxwell Tyrosus", level = 60, minLevel = 55, map = 1423, x = 71.6, y = 50.1, giver = "Duke Nicholas Zverenhoff", pre = { 5263 }, turnin = { 1423, 71.9, 48.4 } }
Q[5265] = { name = "The Argent Hold", level = 60, minLevel = 55, map = 1423, x = 71.9, y = 48.4, giver = "Lord Maxwell Tyrosus", pre = { 5264 }, turnin = { 1423, 72.0, 48.4 } }
Q[5281] = { name = "The Restless Souls", level = 60, minLevel = 55, map = 1423, x = 69.9, y = 53.7, giver = "Caretaker Alen", turnin = { 1423, 11.4, 26.6 } }
Q[5282] = { name = "The Restless Souls", level = 60, minLevel = 55, map = 1423, x = 11.4, y = 26.6, giver = "Egan", pre = { 5281 }, dungeon = "Stratholme", turnin = { 1423, 11.4, 26.6 } }
Q[5321] = { name = "The Sleeper Has Awakened", level = 20, minLevel = 17, map = 1439, x = 44.4, y = 76.4, giver = "Kerlonian Evershade", faction = "Alliance", turnin = { 1440, 27.3, 35.6 } }
Q[5341] = { name = "Barov Family Fortune", level = 60, minLevel = 52, map = 1420, x = 83.1, y = 71.6, giver = "Alexi Barov", faction = "Horde", dungeon = "Scholomance", turnin = { 1420, 83.1, 71.6 } }
Q[5342] = { name = "The Last Barov", level = 60, minLevel = 52, map = 1420, x = 83.1, y = 71.6, giver = "Alexi Barov", faction = "Horde", pre = { 5341 }, group = true, turnin = { 1420, 83.1, 71.6 } }
Q[5343] = { name = "Barov Family Fortune", level = 60, minLevel = 52, map = 1422, x = 43.5, y = 83.7, giver = "Weldon Barov", faction = "Alliance", dungeon = "Scholomance", turnin = { 1422, 43.5, 83.7 } }
Q[5344] = { name = "The Last Barov", level = 60, minLevel = 52, map = 1422, x = 43.5, y = 83.7, giver = "Weldon Barov", faction = "Alliance", pre = { 5343 }, group = true, turnin = { 1422, 43.5, 83.7 } }
Q[5361] = { name = "Family Tree", level = 35, minLevel = 32, map = 1441, x = 45.7, y = 50.7, giver = "Cliffwatcher Longhorn", faction = "Horde", turnin = { 1443, 55.4, 55.8 } }
Q[5381] = { name = "Hand of Iruxos", level = 38, minLevel = 32, map = 1443, x = 25.8, y = 68.2, giver = "Taiga Wisemane", faction = "Horde", turnin = { 1443, 25.8, 68.2 } }
Q[5382] = { name = "Doctor Theolen Krastinov, the Butcher", level = 60, minLevel = 55, map = 1422, x = 70.2, y = 73.7, giver = "Eva Sarkhoff", dungeon = "Scholomance", turnin = { 1422, 70.2, 73.7 } }
Q[5384] = { name = "Kirtonos the Herald", level = 60, minLevel = 55, map = 1422, x = 70.2, y = 73.7, giver = "Eva Sarkhoff", pre = { 5515 }, dungeon = "Scholomance", turnin = { 1422, 70.2, 73.7 } }
Q[5385] = { name = "The Remains of Trey Lightforge", level = 57, minLevel = 49, map = 1448, x = 38.5, y = 50.4, giver = "Remains of Trey Lightforge", pre = { 5204 }, turnin = { 1448, 51.4, 82.0 } }
Q[5386] = { name = "Catch of the Day", level = 37, minLevel = 32, map = 1443, x = 55.4, y = 55.8, giver = "Nataka Longhorn", faction = "Horde", turnin = { 1443, 55.4, 55.8 } }
Q[5401] = { name = "Argent Dawn Commission", level = 55, minLevel = 50, map = 1422, x = 43.0, y = 83.5, giver = "Argent Officer Pureheart", turnin = { 1422, 43.0, 83.5 } }
Q[5405] = { name = "Argent Dawn Commission", level = 55, minLevel = 50, map = 1420, x = 83.2, y = 68.5, giver = "Argent Officer Garush", turnin = { 1420, 83.2, 68.5 } }
Q[5441] = { name = "Lazy Peons", level = 4, minLevel = 3, map = 1411, x = 44.6, y = 68.7, giver = "Foreman Thazz'ril", faction = "Horde", turnin = { 1411, 44.6, 68.7 } }
Q[5461] = { name = "The Human, Ras Frostwhisper", level = 60, minLevel = 57, map = 1422, x = 70.6, y = 74.1, giver = "Magistrate Marduke", pre = { 5384 }, turnin = { 1422, 70.6, 74.1 } }
Q[5462] = { name = "The Dying, Ras Frostwhisper", level = 60, minLevel = 57, map = 1422, x = 70.6, y = 74.1, giver = "Magistrate Marduke", pre = { 5461 }, turnin = { 1423, 71.9, 48.3 } }
Q[5463] = { name = "Menethil's Gift", level = 60, minLevel = 57, map = 1423, x = 71.9, y = 48.3, giver = "Leonid Barthalomew the Revered", pre = { 5462 }, dungeon = "Stratholme" }
Q[5465] = { name = "Soulbound Keepsake", level = 60, minLevel = 57, map = 1423, x = 71.9, y = 48.3, giver = "Leonid Barthalomew the Revered", pre = { 5464 }, turnin = { 1422, 70.6, 74.1 } }
Q[5466] = { name = "The Lich, Ras Frostwhisper", level = 60, minLevel = 57, map = 1422, x = 70.6, y = 74.1, giver = "Magistrate Marduke", pre = { 5465 }, dungeon = "Scholomance", turnin = { 1422, 70.6, 74.1 } }
Q[5481] = { name = "Gordo's Task", level = 5, minLevel = 5, map = 1420, x = 43.1, y = 54.7, giver = "Gordo", faction = "Horde", turnin = { 1420, 57.4, 48.9 } }
Q[5482] = { name = "Doom Weed", level = 6, minLevel = 5, map = 1420, x = 57.4, y = 48.9, giver = "Junior Apothecary Holland", faction = "Horde", pre = { 5481 }, turnin = { 1420, 57.4, 48.9 } }
Q[5501] = { name = "Bone Collector", level = 39, minLevel = 33, map = 1443, x = 62.3, y = 39.0, giver = "Bibbly F'utzbuckle", turnin = { 1443, 62.3, 39.0 } }
Q[5503] = { name = "Argent Dawn Commission", level = 55, minLevel = 50, map = 1423, x = 71.6, y = 50.1, giver = "Duke Nicholas Zverenhoff", turnin = { 1423, 71.6, 50.1 } }
Q[5504] = { name = "Mantles of the Dawn", level = 60, minLevel = 55, map = 1420, x = 83.3, y = 68.1, giver = "Argent Quartermaster Hasana", faction = "Horde", turnin = { 1420, 83.3, 68.1 } }
Q[5505] = { name = "The Key to Scholomance", level = 60, minLevel = 55, map = 1422, x = 42.7, y = 83.8, giver = "Alchemist Arbington", faction = "Alliance", pre = { 5803 }, turnin = { 1422, 42.7, 83.8 } }
Q[5507] = { name = "Mantles of the Dawn", level = 60, minLevel = 55, map = 1422, x = 42.8, y = 83.7, giver = "Argent Quartermaster Lightspark", faction = "Alliance", turnin = { 1422, 42.8, 83.7 } }
Q[5511] = { name = "The Key to Scholomance", level = 60, minLevel = 55, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", faction = "Horde", pre = { 5804 }, turnin = { 1420, 83.1, 68.9 } }
Q[5513] = { name = "Mantles of the Dawn", level = 60, minLevel = 55, map = 1423, x = 71.8, y = 50.2, giver = "Quartermaster Miranda Breechlock", turnin = { 1423, 71.8, 50.2 } }
Q[5514] = { name = "Mold Rhymes With...", level = 57, minLevel = 55, map = 1420, x = 83.3, y = 69.2, giver = "Apothecary Dithers", faction = "Horde", pre = { 964 }, turnin = { 1446, 51.5, 28.8 } }
Q[5515] = { name = "Krastinov's Bag of Horrors", level = 60, minLevel = 55, map = 1422, x = 70.2, y = 73.7, giver = "Eva Sarkhoff", pre = { 5382 }, dungeon = "Scholomance", turnin = { 1422, 70.2, 73.7 } }
Q[5517] = { name = "Chromatic Mantle of the Dawn", level = 60, minLevel = 55, map = 1423, x = 71.8, y = 50.2, giver = "Quartermaster Miranda Breechlock", turnin = { 1423, 71.8, 50.2 } }
Q[5521] = { name = "Chromatic Mantle of the Dawn", level = 60, minLevel = 55, map = 1422, x = 42.8, y = 83.7, giver = "Argent Quartermaster Lightspark", faction = "Alliance", turnin = { 1422, 42.8, 83.7 } }
Q[5522] = { name = "Leonid Barthalomew", level = 60, minLevel = 57, map = 1428, x = 65.2, y = 24, giver = "Tinkee Steamboil", pre = { 4735 }, turnin = { 1423, 71.9, 48.3 } }
Q[5524] = { name = "Chromatic Mantle of the Dawn", level = 60, minLevel = 55, map = 1420, x = 83.3, y = 68.1, giver = "Argent Quartermaster Hasana", faction = "Horde", turnin = { 1420, 83.3, 68.1 } }
Q[5526] = { name = "Shards of the Felvine", level = 60, minLevel = 56, map = 1450, x = 51.7, y = 45.1, giver = "Rabine Saturna", pre = { 5527 }, turnin = { 1450, 51.7, 45.1 } }
Q[5527] = { name = "A Reliquary of Purity", level = 60, minLevel = 56, map = 1450, x = 51.7, y = 45.1, giver = "Rabine Saturna", turnin = { 1450, 51.7, 45.1 } }
Q[5529] = { name = "Plagued Hatchlings", level = 58, minLevel = 55, map = 1423, x = 71.7, y = 49.9, giver = "Betina Bigglezink", dungeon = "Scholomance", turnin = { 1423, 71.7, 49.9 } }
Q[5531] = { name = "Betina Bigglezink", level = 60, minLevel = 57, map = 1423, x = 71.9, y = 48.3, giver = "Leonid Barthalomew the Revered", pre = { 5522 }, dungeon = "Scholomance", turnin = { 1423, 71.7, 49.9 } }
Q[5533] = { name = "Scholomance", level = 55, minLevel = 55, map = 1422, x = 42.7, y = 84.0, giver = "Commander Ashlam Valorfist", faction = "Alliance", pre = { 5097 }, turnin = { 1422, 42.7, 83.8 } }
Q[5534] = { name = "Kim'jael's \"Missing\" Equipment", level = 53, minLevel = 47, map = 1447, x = 53.5, y = 21.8, giver = "Kim'jael", pre = { 3601 }, turnin = { 1447, 53.5, 21.8 } }
Q[5535] = { name = "Spiritual Unrest", level = 47, minLevel = 45, map = 1447, x = 11.4, y = 78.2, giver = "Loh'atu", turnin = { 1447, 11.4, 78.2 } }
Q[5536] = { name = "A Land Filled with Hatred", level = 47, minLevel = 45, map = 1447, x = 11.4, y = 78.2, giver = "Loh'atu", turnin = { 1447, 11.4, 78.2 } }
Q[5537] = { name = "Skeletal Fragments", level = 57, minLevel = 55, map = 1422, x = 42.7, y = 83.8, giver = "Alchemist Arbington", faction = "Alliance", pre = { 5533 }, group = true, turnin = { 1422, 42.7, 83.8 } }
Q[5538] = { name = "Mold Rhymes With...", level = 57, minLevel = 55, map = 1422, x = 42.7, y = 83.8, giver = "Alchemist Arbington", faction = "Alliance", pre = { 5537 }, turnin = { 1446, 51.5, 28.8 } }
Q[5541] = { name = "Ammo for Rumbleshot", level = 6, minLevel = 5, map = 1426, x = 50.1, y = 49.4, giver = "Loslor Rudge", faction = "Alliance", turnin = { 1426, 40.7, 65.1 } }
Q[5542] = { name = "Demon Dogs", level = 56, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", turnin = { 1423, 5.2, 35.6 } }
Q[5543] = { name = "Blood Tinged Skies", level = 56, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", turnin = { 1423, 5.2, 35.6 } }
Q[5544] = { name = "Carrion Grubbage", level = 56, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", turnin = { 1423, 5.2, 35.6 } }
Q[5545] = { name = "A Bundle of Trouble", level = 9, minLevel = 5, map = 1429, x = 81.4, y = 66.1, giver = "Supervisor Raelen", faction = "Alliance", turnin = { 1429, 81.4, 66.1 } }
Q[5561] = { name = "Kodo Roundup", level = 34, minLevel = 30, map = 1443, x = 60.9, y = 61.9, giver = "Smeed Scrabblescrew", turnin = { 1443, 60.9, 61.9 } }
Q[5581] = { name = "Portals of the Legion", level = 38, minLevel = 32, map = 1443, x = 25.8, y = 68.2, giver = "Taiga Wisemane", faction = "Horde", pre = { 5381 }, turnin = { 1443, 25.8, 68.2 } }
Q[5601] = { name = "Sister Pamela", level = 55, minLevel = 50, map = 1452, x = 61.3, y = 39.0, giver = "Jessica Redpath", turnin = { 1423, 31.1, 78.0 } }
Q[5621] = { name = "Garments of the Moon", level = 4, minLevel = 5, map = 1438, x = 55.6, y = 56.8, giver = "Laurna Morninglight", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1438, 55.6, 56.8 } }
Q[5622] = { name = "In Favor of Elune", level = 4, minLevel = 5, map = 1438, x = 59.2, y = 40.4, giver = "Shanda", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1438, 55.6, 56.8 } }
Q[5623] = { name = "In Favor of the Light", level = 4, minLevel = 5, map = 1429, x = 49.8, y = 39.5, giver = "Priestess Anetta", faction = "Alliance", race = { HUMAN = true }, class = { PRIEST = true }, turnin = { 1429, 43.3, 65.7 } }
Q[5624] = { name = "Garments of the Light", level = 4, minLevel = 5, map = 1429, x = 43.3, y = 65.7, giver = "Priestess Josetta", faction = "Alliance", race = { HUMAN = true }, class = { PRIEST = true }, turnin = { 1429, 43.3, 65.7 } }
Q[5625] = { name = "Garments of the Light", level = 4, minLevel = 5, map = 1426, x = 47.3, y = 52.2, giver = "Maxan Anvol", faction = "Alliance", race = { DWARF = true, GNOME = true }, class = { PRIEST = true }, turnin = { 1426, 47.3, 52.2 } }
Q[5626] = { name = "In Favor of the Light", level = 4, minLevel = 5, map = 1426, x = 28.6, y = 66.4, giver = "Branstock Khalder", faction = "Alliance", race = { DWARF = true, GNOME = true }, class = { PRIEST = true }, turnin = { 1426, 47.3, 52.2 } }
Q[5627] = { name = "Stars of Elune", level = 10, minLevel = 10, map = 1457, x = 39.5, y = 81.2, giver = "Priestess Alathea", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1457, 39.5, 81.2 } }
Q[5628] = { name = "Returning Home", level = 10, minLevel = 10, map = 1429, x = 43.3, y = 65.7, giver = "Priestess Josetta", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1457, 39.5, 81.2 } }
Q[5629] = { name = "Returning Home", level = 10, minLevel = 10, map = 1438, x = 55.6, y = 56.8, giver = "Laurna Morninglight", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1457, 39.5, 81.2 } }
Q[5630] = { name = "Returning Home", level = 10, minLevel = 10, map = 1426, x = 47.3, y = 52.2, giver = "Maxan Anvol", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1457, 39.5, 81.2 } }
Q[5631] = { name = "Returning Home", level = 10, minLevel = 10, map = 1453, x = 49.5, y = 44.6, giver = "High Priestess Laurena", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1457, 39.5, 81.2 } }
Q[5632] = { name = "Returning Home", level = 10, minLevel = 10, map = 1453, x = 35.7, y = 63.2, giver = "Nara Meideros", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1457, 39.5, 81.2 } }
Q[5633] = { name = "Returning Home", level = 10, minLevel = 10, map = 1455, x = 24.7, y = 8.2, giver = "High Priest Rohan", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1457, 39.5, 81.2 } }
Q[5634] = { name = "Desperate Prayer", level = 10, minLevel = 10, map = 1453, x = 49.5, y = 44.6, giver = "High Priestess Laurena", faction = "Alliance", race = { DWARF = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[5635] = { name = "Desperate Prayer", level = 10, minLevel = 10, map = 1429, x = 43.3, y = 65.7, giver = "Priestess Josetta", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[5636] = { name = "Desperate Prayer", level = 10, minLevel = 10, map = 1438, x = 55.6, y = 56.8, giver = "Laurna Morninglight", faction = "Alliance", race = { DWARF = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[5637] = { name = "Desperate Prayer", level = 10, minLevel = 10, map = 1426, x = 47.3, y = 52.2, giver = "Maxan Anvol", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[5638] = { name = "Desperate Prayer", level = 10, minLevel = 10, map = 1453, x = 35.7, y = 63.2, giver = "Nara Meideros", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[5639] = { name = "Desperate Prayer", level = 10, minLevel = 10, map = 1455, x = 24.7, y = 8.2, giver = "High Priest Rohan", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[5640] = { name = "Desperate Prayer", level = 10, minLevel = 10, map = 1457, x = 39.5, y = 81.2, giver = "Priestess Alathea", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[5641] = { name = "A Lack of Fear", level = 20, minLevel = 20, map = 1455, x = 24.7, y = 8.2, giver = "High Priest Rohan", faction = "Alliance", race = { DWARF = true }, class = { PRIEST = true }, turnin = { 1455, 24.7, 8.2 } }
Q[5642] = { name = "Shadowguard", level = 20, minLevel = 20, map = 1456, x = 25.3, y = 15.3, giver = "Miles Welsh", faction = "Horde", race = { TROLL = true }, class = { PRIEST = true }, turnin = { 1454, 35.6, 87.8 } }
Q[5643] = { name = "Shadowguard", level = 20, minLevel = 20, map = 1458, x = 49.3, y = 17.1, giver = "Aelthalyste", faction = "Horde", race = { TROLL = true }, class = { PRIEST = true }, turnin = { 1454, 35.6, 87.8 } }
Q[5644] = { name = "Devouring Plague", level = 20, minLevel = 20, map = 1456, x = 25.3, y = 15.3, giver = "Miles Welsh", faction = "Horde", race = { SCOURGE = true }, class = { PRIEST = true }, turnin = { 1458, 49.3, 17.1 } }
Q[5645] = { name = "A Lack of Fear", level = 20, minLevel = 20, map = 1453, x = 49.5, y = 44.6, giver = "High Priestess Laurena", faction = "Alliance", race = { DWARF = true }, class = { PRIEST = true }, turnin = { 1455, 24.7, 8.2 } }
Q[5646] = { name = "Devouring Plague", level = 20, minLevel = 20, map = 1454, x = 35.6, y = 87.8, giver = "Ur'kyo", faction = "Horde", race = { SCOURGE = true }, class = { PRIEST = true }, turnin = { 1458, 49.3, 17.1 } }
Q[5647] = { name = "A Lack of Fear", level = 20, minLevel = 20, map = 1457, x = 39.5, y = 81.2, giver = "Priestess Alathea", faction = "Alliance", race = { DWARF = true }, class = { PRIEST = true }, turnin = { 1455, 24.7, 8.2 } }
Q[5648] = { name = "Garments of Spirituality", level = 4, minLevel = 5, map = 1411, x = 54.3, y = 42.9, giver = "Tai'jin", faction = "Horde", race = { TROLL = true }, class = { PRIEST = true }, turnin = { 1411, 54.3, 42.9 } }
Q[5649] = { name = "In Favor of Spirituality", level = 4, minLevel = 5, map = 1411, x = 42.4, y = 68.8, giver = "Ken'jai", faction = "Horde", race = { TROLL = true }, class = { PRIEST = true }, turnin = { 1411, 54.3, 42.9 } }
Q[5650] = { name = "Garments of Darkness", level = 4, minLevel = 5, map = 1420, x = 61.6, y = 52.2, giver = "Dark Cleric Beryl", faction = "Horde", race = { SCOURGE = true }, class = { PRIEST = true }, turnin = { 1420, 61.6, 52.2 } }
Q[5651] = { name = "In Favor of Darkness", level = 4, minLevel = 5, map = 1420, x = 31.1, y = 66.0, giver = "Dark Cleric Duesten", faction = "Horde", race = { SCOURGE = true }, class = { PRIEST = true }, turnin = { 1420, 61.6, 52.2 } }
Q[5652] = { name = "Hex of Weakness", level = 10, minLevel = 10, map = 1454, x = 35.6, y = 87.8, giver = "Ur'kyo", faction = "Horde", race = { TROLL = true }, class = { PRIEST = true }, turnin = { 1454, 35.6, 87.8 } }
Q[5654] = { name = "Hex of Weakness", level = 10, minLevel = 10, map = 1411, x = 54.3, y = 42.9, giver = "Tai'jin", faction = "Horde", race = { TROLL = true }, class = { PRIEST = true }, turnin = { 1454, 35.6, 87.8 } }
Q[5655] = { name = "Hex of Weakness", level = 10, minLevel = 10, map = 1412, x = 46.2, y = 62.3, giver = "Var'jun", faction = "Horde", race = { TROLL = true }, class = { PRIEST = true }, turnin = { 1454, 35.6, 87.8 } }
Q[5656] = { name = "Hex of Weakness", level = 10, minLevel = 10, map = 1456, x = 25.3, y = 15.3, giver = "Miles Welsh", faction = "Horde", race = { TROLL = true }, class = { PRIEST = true }, turnin = { 1454, 35.6, 87.8 } }
Q[5657] = { name = "Hex of Weakness", level = 10, minLevel = 10, map = 1458, x = 49.3, y = 17.1, giver = "Aelthalyste", faction = "Horde", race = { TROLL = true }, class = { PRIEST = true }, turnin = { 1454, 35.6, 87.8 } }
Q[5658] = { name = "Touch of Weakness", level = 10, minLevel = 10, map = 1458, x = 49.3, y = 17.1, giver = "Aelthalyste", faction = "Horde", race = { SCOURGE = true }, class = { PRIEST = true }, turnin = { 1458, 49.3, 17.1 } }
Q[5660] = { name = "Touch of Weakness", level = 10, minLevel = 10, map = 1411, x = 54.3, y = 42.9, giver = "Tai'jin", faction = "Horde", race = { SCOURGE = true }, class = { PRIEST = true }, turnin = { 1458, 49.3, 17.1 } }
Q[5661] = { name = "Touch of Weakness", level = 10, minLevel = 10, map = 1412, x = 46.2, y = 62.3, giver = "Var'jun", faction = "Horde", race = { SCOURGE = true }, class = { PRIEST = true }, turnin = { 1458, 49.3, 17.1 } }
Q[5662] = { name = "Touch of Weakness", level = 10, minLevel = 10, map = 1454, x = 35.6, y = 87.8, giver = "Ur'kyo", faction = "Horde", race = { SCOURGE = true }, class = { PRIEST = true }, turnin = { 1458, 49.3, 17.1 } }
Q[5663] = { name = "Touch of Weakness", level = 10, minLevel = 10, map = 1456, x = 25.3, y = 15.3, giver = "Miles Welsh", faction = "Horde", race = { SCOURGE = true }, class = { PRIEST = true }, turnin = { 1458, 49.3, 17.1 } }
Q[5672] = { name = "Elune's Grace", level = 20, minLevel = 20, map = 1457, x = 39.5, y = 81.2, giver = "Priestess Alathea", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1457, 39.5, 81.2 } }
Q[5673] = { name = "Elune's Grace", level = 20, minLevel = 20, map = 1453, x = 49.5, y = 44.6, giver = "High Priestess Laurena", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1457, 39.5, 81.2 } }
Q[5674] = { name = "Elune's Grace", level = 20, minLevel = 20, map = 1453, x = 35.7, y = 63.2, giver = "Nara Meideros", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1457, 39.5, 81.2 } }
Q[5675] = { name = "Elune's Grace", level = 20, minLevel = 20, map = 1455, x = 24.7, y = 8.2, giver = "High Priest Rohan", faction = "Alliance", race = { NIGHTELF = true }, class = { PRIEST = true }, turnin = { 1457, 39.5, 81.2 } }
Q[5676] = { name = "Arcane Feedback", level = 20, minLevel = 20, map = 1453, x = 49.5, y = 44.6, giver = "High Priestess Laurena", faction = "Alliance", race = { HUMAN = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[5677] = { name = "Arcane Feedback", level = 20, minLevel = 20, map = 1455, x = 24.7, y = 8.2, giver = "High Priest Rohan", faction = "Alliance", race = { HUMAN = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[5678] = { name = "Arcane Feedback", level = 20, minLevel = 20, map = 1457, x = 39.5, y = 81.2, giver = "Priestess Alathea", faction = "Alliance", race = { HUMAN = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[5679] = { name = "Devouring Plague", level = 20, minLevel = 20, map = 1458, x = 49.3, y = 17.1, giver = "Aelthalyste", faction = "Horde", race = { SCOURGE = true }, class = { PRIEST = true }, turnin = { 1458, 49.3, 17.1 } }
Q[5680] = { name = "Shadowguard", level = 20, minLevel = 20, map = 1454, x = 35.6, y = 87.8, giver = "Ur'kyo", faction = "Horde", race = { TROLL = true }, class = { PRIEST = true }, turnin = { 1454, 35.6, 87.8 } }
Q[5713] = { name = "One Shot. One Kill.", level = 15, minLevel = 10, map = 1439, x = 45.9, y = 90.3, giver = "Sentinel Aynasha", faction = "Alliance", turnin = { 1440, 26.6, 36.7 } }
Q[5721] = { name = "The Battle of Darrowshire", level = 60, minLevel = 55, map = 1422, x = 39.5, y = 66.8, giver = "Chromie", pre = { 5941 }, turnin = { 1423, 31.1, 78.0 } }
Q[5722] = { name = "Searching for the Lost Satchel", level = 16, minLevel = 9, map = 1456, x = 70.1, y = 29.5, giver = "Rahauro", faction = "Horde", dungeon = "Ragefire Chasm" }
Q[5723] = { name = "Testing an Enemy's Strength", level = 15, minLevel = 9, map = 1456, x = 70.1, y = 29.5, giver = "Rahauro", faction = "Horde", dungeon = "Ragefire Chasm", turnin = { 1456, 70.1, 29.5 } }
Q[5725] = { name = "The Power to Destroy...", level = 16, minLevel = 9, map = 1458, x = 56.2, y = 92.2, giver = "Varimathras", faction = "Horde", dungeon = "Ragefire Chasm", turnin = { 1458, 56.2, 92.2 } }
Q[5726] = { name = "Hidden Enemies", level = 12, minLevel = 9, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", faction = "Horde", turnin = { 1454, 31.7, 37.8 } }
Q[5727] = { name = "Hidden Enemies", level = 12, minLevel = 9, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", faction = "Horde", pre = { 5726 }, turnin = { 1454, 31.7, 37.8 } }
Q[5728] = { name = "Hidden Enemies", level = 16, minLevel = 9, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", faction = "Horde", pre = { 5727 }, dungeon = "Ragefire Chasm", turnin = { 1454, 31.7, 37.8 } }
Q[5729] = { name = "Hidden Enemies", level = 15, minLevel = 9, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", faction = "Horde", pre = { 5728 }, turnin = { 1454, 49.5, 50.6 } }
Q[5730] = { name = "Hidden Enemies", level = 16, minLevel = 9, map = 1454, x = 49.5, y = 50.6, giver = "Neeru Fireblade", faction = "Horde", pre = { 5729 }, turnin = { 1454, 31.7, 37.8 } }
Q[5741] = { name = "Sceptre of Light", level = 33, minLevel = 30, map = 1443, x = 38.9, y = 27.2, giver = "Azore Aldamort", turnin = { 1443, 38.9, 27.2 } }
Q[5742] = { name = "Redemption", level = 56, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", pre = { 5542, 5543, 5544 }, group = true, turnin = { 1423, 5.2, 35.6 } }
Q[5761] = { name = "Slaying the Beast", level = 16, minLevel = 9, map = 1454, x = 49.5, y = 50.6, giver = "Neeru Fireblade", faction = "Horde", dungeon = "Ragefire Chasm", turnin = { 1454, 49.5, 50.6 } }
Q[5762] = { name = "Hemet Nesingwary", level = 31, minLevel = 28, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", turnin = { 1434, 35.7, 10.8 } }
Q[5763] = { name = "Hunting in Stranglethorn", level = 31, minLevel = 28, map = 1443, x = 25.1, y = 72.3, giver = "Roon Wildmane", faction = "Horde", turnin = { 1434, 35.7, 10.8 } }
Q[5781] = { name = "Of Forgotten Memories", level = 57, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", pre = { 5742 }, turnin = { 1423, 5.2, 35.6 } }
Q[5801] = { name = "Fire Plume Forged", level = 57, minLevel = 55, map = 1446, x = 51.5, y = 28.8, giver = "Krinkle Goodsteel", faction = "Alliance", pre = { 5538 }, turnin = { 1422, 42.7, 83.8 } }
Q[5802] = { name = "Fire Plume Forged", level = 57, minLevel = 55, map = 1446, x = 51.5, y = 28.8, giver = "Krinkle Goodsteel", faction = "Horde", pre = { 5514 }, turnin = { 1420, 83.3, 69.2 } }
Q[5803] = { name = "Araj's Scarab", level = 60, minLevel = 55, map = 1422, x = 42.7, y = 83.8, giver = "Alchemist Arbington", faction = "Alliance", pre = { 5801 }, turnin = { 1422, 42.7, 83.8 } }
Q[5804] = { name = "Araj's Scarab", level = 60, minLevel = 55, map = 1420, x = 83.3, y = 69.2, giver = "Apothecary Dithers", faction = "Horde", pre = { 5802 }, turnin = { 1420, 83.3, 69.2 } }
Q[5821] = { name = "Bodyguard for Hire", level = 35, minLevel = 30, map = 1443, x = 66.5, y = 37.5, giver = "Cork Gizelton", turnin = { 1443, 60.9, 61.9 } }
Q[5845] = { name = "Of Lost Honor", level = 58, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", pre = { 5781 }, turnin = { 1423, 5.2, 35.6 } }
Q[5846] = { name = "Of Love and Family", level = 58, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", pre = { 5845 }, turnin = { 1422, 65.8, 75.4 } }
Q[5848] = { name = "Of Love and Family", level = 60, minLevel = 52, map = 1422, x = 65.8, y = 75.4, giver = "Artist Renfray", pre = { 5846 }, dungeon = "Stratholme", turnin = { 1423, 5.2, 35.6 } }
Q[5861] = { name = "Find Myranda", level = 60, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", pre = { 5848 }, turnin = { 1422, 50.8, 77.8 } }
Q[5862] = { name = "Scarlet Subterfuge", level = 60, minLevel = 52, map = 1422, x = 50.8, y = 77.8, giver = "Myranda the Hag", pre = { 5861 }, turnin = { 1422, 42.0, 14.8 } }
Q[5863] = { name = "The Dunemaul Compound", level = 49, minLevel = 44, map = 1446, x = 52.8, y = 27.4, giver = "Andi Lynn", turnin = { 1446, 52.8, 27.4 } }
Q[5881] = { name = "Calling in the Reserves", level = 28, minLevel = 23, map = 1442, x = 47.2, y = 61.2, giver = "Maggran Earthbinder", faction = "Horde", turnin = { 1441, 31.9, 21.7 } }
Q[5882] = { name = "Salve via Hunting", level = 55, minLevel = 48, map = 1448, x = 54.1, y = 86.8, giver = "Arathandris Silversky", faction = "Alliance", pre = { 4101 }, group = true, turnin = { 1448, 54.1, 86.8 } }
Q[5887] = { name = "Salve via Hunting", level = 55, minLevel = 48, map = 1448, x = 46.8, y = 83.1, giver = "Maybess Riverbreeze", faction = "Horde", pre = { 4102 }, group = true, turnin = { 1448, 46.8, 83.1 } }
Q[5901] = { name = "A Plague Upon Thee", level = 55, minLevel = 48, map = 1420, x = 83.3, y = 72.3, giver = "Mickey Levine", faction = "Horde", turnin = { 1420, 83.3, 72.3 } }
Q[5902] = { name = "A Plague Upon Thee", level = 55, minLevel = 48, map = 1420, x = 83.3, y = 72.3, giver = "Mickey Levine", faction = "Horde", pre = { 5901 }, turnin = { 1422, 48.3, 32.0 } }
Q[5903] = { name = "A Plague Upon Thee", level = 55, minLevel = 48, map = 1422, x = 43.4, y = 84.8, giver = "Nathaniel Dumah", faction = "Alliance", turnin = { 1422, 43.4, 84.8 } }
Q[5904] = { name = "A Plague Upon Thee", level = 55, minLevel = 48, map = 1422, x = 43.4, y = 84.8, giver = "Nathaniel Dumah", faction = "Alliance", pre = { 5903 }, turnin = { 1422, 48.3, 32.0 } }
Q[5921] = { name = "Moonglade", level = 10, minLevel = 10, map = 1457, x = 35.4, y = 8.4, giver = "Mathrengyl Bearwalker", faction = "Alliance", race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[5922] = { name = "Moonglade", level = 10, minLevel = 10, map = 1456, x = 76.5, y = 27.2, giver = "Turak Runetotem", faction = "Horde", race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[5923] = { name = "Heeding the Call", level = 10, minLevel = 10, map = 1457, x = 34.8, y = 7.4, giver = "Denatharion", faction = "Alliance", race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1457, 35.4, 8.4 } }
Q[5924] = { name = "Heeding the Call", level = 10, minLevel = 10, map = 1453, x = 36.1, y = 64.4, giver = "Theridran", faction = "Alliance", race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1457, 35.4, 8.4 } }
Q[5925] = { name = "Heeding the Call", level = 10, minLevel = 10, map = 1438, x = 56.0, y = 61.6, giver = "Kal", faction = "Alliance", race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1457, 35.4, 8.4 } }
Q[5926] = { name = "Heeding the Call", level = 10, minLevel = 10, map = 1456, x = 45.8, y = 64.7, giver = "Innkeeper Pala", faction = "Horde", race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1456, 76.5, 27.2 } }
Q[5927] = { name = "Heeding the Call", level = 10, minLevel = 10, map = 1454, x = 54.1, y = 68.4, giver = "Innkeeper Gryshka", faction = "Horde", race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1456, 76.5, 27.2 } }
Q[5928] = { name = "Heeding the Call", level = 10, minLevel = 10, map = 1412, x = 47.5, y = 63.0, giver = "Gennia Runetotem", faction = "Horde", race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1456, 76.5, 27.2 } }
Q[5929] = { name = "Great Bear Spirit", level = 10, minLevel = 10, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Alliance", pre = { 5921 }, race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[5930] = { name = "Great Bear Spirit", level = 10, minLevel = 10, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Horde", pre = { 5922 }, race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[5931] = { name = "Back to Darnassus", level = 10, minLevel = 10, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Alliance", pre = { 5929 }, race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1457, 35.4, 8.4 } }
Q[5932] = { name = "Back to Thunder Bluff", level = 10, minLevel = 10, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Horde", pre = { 5930 }, race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1456, 76.5, 27.2 } }
Q[5941] = { name = "Return to Chromie", level = 60, minLevel = 50, map = 1423, x = 71.7, y = 50.0, giver = "Carlin Redpath", pre = { 5206 }, turnin = { 1422, 39.5, 66.8 } }
Q[5942] = { name = "Hidden Treasures", level = 60, minLevel = 50, map = 1423, x = 31.1, y = 78.0, giver = "Pamela Redpath", pre = { 5721 }, turnin = { 1423, 30.9, 77.8 } }
Q[5943] = { name = "Gizelton Caravan", level = 38, minLevel = 32, map = 1443, x = 45.4, y = 75.3, giver = "Rigger Gizelton", turnin = { 1443, 60.9, 61.9 } }
Q[5944] = { name = "In Dreams", level = 60, minLevel = 52, map = 1422, x = 42.0, y = 14.8, giver = "Highlord Taelan Fordring", pre = { 5862 }, turnin = { 1423, 5.2, 35.6 } }
Q[5961] = { name = "The Champion of the Banshee Queen", level = 56, minLevel = 54, map = 1458, x = 58.0, y = 91.8, giver = "Lady Sylvanas Windrunner", faction = "Horde", turnin = { 1423, 22.2, 63.5 } }
Q[6001] = { name = "Body and Heart", level = 10, minLevel = 10, map = 1457, x = 35.4, y = 8.4, giver = "Mathrengyl Bearwalker", faction = "Alliance", pre = { 5931 }, race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1457, 35.4, 8.4 } }
Q[6002] = { name = "Body and Heart", level = 10, minLevel = 10, map = 1456, x = 76.5, y = 27.2, giver = "Turak Runetotem", faction = "Horde", pre = { 5932 }, race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1456, 76.5, 27.2 } }
Q[6004] = { name = "Unfinished Business", level = 56, minLevel = 50, map = 1422, x = 51.9, y = 28.1, giver = "Kirsta Deepshadow", turnin = { 1422, 51.9, 28.1 } }
Q[6021] = { name = "Zaeldarr the Outcast", level = 55, minLevel = 50, map = 1423, x = 69.9, y = 53.7, giver = "Caretaker Alen", turnin = { 1423, 69.9, 53.7 } }
Q[6022] = { name = "To Kill With Purpose", level = 58, minLevel = 54, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", faction = "Horde", turnin = { 1423, 22.2, 63.5 } }
Q[6023] = { name = "Unfinished Business", level = 57, minLevel = 50, map = 1422, x = 51.9, y = 28.1, giver = "Kirsta Deepshadow", pre = { 6004 }, turnin = { 1422, 51.9, 28.1 } }
Q[6024] = { name = "Hameya's Plea", level = 60, minLevel = 54, map = 1423, x = 22.9, y = 73.0, giver = "Torn Scroll", turnin = { 1423, 23.6, 73.8 } }
Q[6025] = { name = "Unfinished Business", level = 58, minLevel = 50, map = 1422, x = 51.9, y = 28.1, giver = "Kirsta Deepshadow", pre = { 6023 }, turnin = { 1422, 51.9, 28.1 } }
Q[6026] = { name = "That's Asking A Lot", level = 58, minLevel = 54, map = 1423, x = 70.9, y = 48.4, giver = "Smokey LaRue", turnin = { 1423, 70.9, 48.4 } }
Q[6027] = { name = "Book of the Ancients", level = 38, minLevel = 30, map = 1443, x = 38.9, y = 27.2, giver = "Azore Aldamort", pre = { 5741 }, turnin = { 1443, 38.9, 27.2 } }
Q[6028] = { name = "The Everlook Report", level = 52, minLevel = 50, map = 1452, x = 61.4, y = 39.0, giver = "Gregor Greystone", faction = "Alliance", turnin = { 1422, 43.0, 83.5 } }
Q[6029] = { name = "The Everlook Report", level = 52, minLevel = 50, map = 1452, x = 61.4, y = 39.0, giver = "Gregor Greystone", faction = "Horde", turnin = { 1420, 83.2, 68.5 } }
Q[6030] = { name = "Duke Nicholas Zverenhoff", level = 52, minLevel = 50, map = 1452, x = 61.4, y = 39.0, giver = "Gregor Greystone", turnin = { 1423, 71.6, 50.1 } }
Q[6031] = { name = "Runecloth", level = 55, minLevel = 50, map = 1448, x = 65.7, y = 2.8, giver = "Meilosh", turnin = { 1448, 65.7, 2.8 } }
Q[6041] = { name = "When Smokey Sings, I Get Violent", level = 58, minLevel = 54, map = 1423, x = 70.9, y = 48.4, giver = "Smokey LaRue", pre = { 6026 }, turnin = { 1423, 70.9, 48.4 } }
Q[6042] = { name = "Un-Life's Little Annoyances", level = 58, minLevel = 54, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", faction = "Horde", turnin = { 1423, 22.2, 63.5 } }
Q[6061] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1412, x = 46.9, y = 59.6, giver = "Yaw Sharpmane", faction = "Horde", race = { TAUREN = true }, class = { HUNTER = true }, turnin = { 1412, 46.9, 59.6 } }
Q[6062] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1411, x = 51.9, y = 43.5, giver = "Thotar", faction = "Horde", race = { ORC = true, TROLL = true }, class = { HUNTER = true }, turnin = { 1411, 51.9, 43.5 } }
Q[6063] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1438, x = 56.7, y = 59.5, giver = "Dazalar", faction = "Alliance", race = { NIGHTELF = true }, class = { HUNTER = true }, turnin = { 1438, 56.7, 59.5 } }
Q[6064] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1426, x = 45.8, y = 53.0, giver = "Grif Wildheart", faction = "Alliance", race = { DWARF = true }, class = { HUNTER = true }, turnin = { 1426, 45.8, 53.0 } }
Q[6065] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1456, x = 58.5, y = 88.3, giver = "Kary Thunderhorn", faction = "Horde", race = { TAUREN = true }, class = { HUNTER = true }, turnin = { 1412, 46.9, 59.6 } }
Q[6066] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1454, x = 68.0, y = 17.8, giver = "Sian'dur", faction = "Horde", race = { TAUREN = true }, class = { HUNTER = true }, turnin = { 1412, 46.9, 59.6 } }
Q[6067] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1411, x = 51.9, y = 43.5, giver = "Thotar", faction = "Horde", race = { TAUREN = true }, class = { HUNTER = true }, turnin = { 1412, 46.9, 59.6 } }
Q[6068] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1454, x = 68.0, y = 17.8, giver = "Sian'dur", faction = "Horde", race = { ORC = true, TROLL = true }, class = { HUNTER = true }, turnin = { 1411, 51.9, 43.5 } }
Q[6069] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1411, x = 56.1, y = 74.2, giver = "Kali Remik", faction = "Horde", race = { ORC = true, TROLL = true }, class = { HUNTER = true }, turnin = { 1411, 51.9, 43.5 } }
Q[6070] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1456, x = 58.5, y = 88.3, giver = "Kary Thunderhorn", faction = "Horde", race = { ORC = true, TROLL = true }, class = { HUNTER = true }, turnin = { 1411, 51.9, 43.5 } }
Q[6071] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1457, x = 40.4, y = 8.6, giver = "Jocaste", faction = "Alliance", race = { NIGHTELF = true }, class = { HUNTER = true }, turnin = { 1438, 56.7, 59.5 } }
Q[6072] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1438, x = 58.7, y = 40.5, giver = "Ayanna Everstride", faction = "Alliance", race = { NIGHTELF = true }, class = { HUNTER = true }, turnin = { 1438, 56.7, 59.5 } }
Q[6073] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1453, x = 67.3, y = 36.2, giver = "Einris Brightspear", faction = "Alliance", race = { NIGHTELF = true }, class = { HUNTER = true }, turnin = { 1438, 56.7, 59.5 } }
Q[6074] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1455, x = 70.9, y = 83.6, giver = "Olmin Burningbeard", faction = "Alliance", race = { DWARF = true }, class = { HUNTER = true }, turnin = { 1426, 45.8, 53.0 } }
Q[6075] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1426, x = 31.4, y = 44.4, giver = "Tristane Shadowstone", faction = "Alliance", race = { DWARF = true }, class = { HUNTER = true }, turnin = { 1426, 45.8, 53.0 } }
Q[6076] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1453, x = 67.3, y = 36.2, giver = "Einris Brightspear", faction = "Alliance", race = { DWARF = true }, class = { HUNTER = true }, turnin = { 1426, 45.8, 53.0 } }
Q[6081] = { name = "Training the Beast", level = 10, minLevel = 10, map = 1411, x = 51.9, y = 43.5, giver = "Thotar", faction = "Horde", pre = { 6082 }, race = { ORC = true, TROLL = true }, class = { HUNTER = true }, turnin = { 1454, 66.0, 18.5 } }
Q[6082] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1411, x = 51.9, y = 43.5, giver = "Thotar", faction = "Horde", pre = { 6083 }, race = { ORC = true, TROLL = true }, class = { HUNTER = true }, turnin = { 1411, 51.9, 43.5 } }
Q[6083] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1411, x = 51.9, y = 43.5, giver = "Thotar", faction = "Horde", pre = { 6062 }, race = { ORC = true, TROLL = true }, class = { HUNTER = true }, turnin = { 1411, 51.9, 43.5 } }
Q[6084] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1426, x = 45.8, y = 53.0, giver = "Grif Wildheart", faction = "Alliance", pre = { 6064 }, race = { DWARF = true }, class = { HUNTER = true }, turnin = { 1426, 45.8, 53.0 } }
Q[6085] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1426, x = 45.8, y = 53.0, giver = "Grif Wildheart", faction = "Alliance", pre = { 6084 }, race = { DWARF = true }, class = { HUNTER = true }, turnin = { 1426, 45.8, 53.0 } }
Q[6086] = { name = "Training the Beast", level = 10, minLevel = 10, map = 1426, x = 45.8, y = 53.0, giver = "Grif Wildheart", faction = "Alliance", pre = { 6085 }, race = { DWARF = true }, class = { HUNTER = true }, turnin = { 1455, 70.9, 85.8 } }
Q[6087] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1412, x = 46.9, y = 59.6, giver = "Yaw Sharpmane", faction = "Horde", pre = { 6061 }, race = { TAUREN = true }, class = { HUNTER = true }, turnin = { 1412, 46.9, 59.6 } }
Q[6088] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1412, x = 46.9, y = 59.6, giver = "Yaw Sharpmane", faction = "Horde", pre = { 6087 }, race = { TAUREN = true }, class = { HUNTER = true }, turnin = { 1412, 46.9, 59.6 } }
Q[6089] = { name = "Training the Beast", level = 10, minLevel = 10, map = 1412, x = 46.9, y = 59.6, giver = "Yaw Sharpmane", faction = "Horde", pre = { 6088 }, race = { TAUREN = true }, class = { HUNTER = true }, turnin = { 1456, 57.3, 89.8 } }
Q[6101] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1438, x = 56.7, y = 59.5, giver = "Dazalar", faction = "Alliance", pre = { 6063 }, race = { NIGHTELF = true }, class = { HUNTER = true }, turnin = { 1438, 56.7, 59.5 } }
Q[6102] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1438, x = 56.7, y = 59.5, giver = "Dazalar", faction = "Alliance", pre = { 6101 }, race = { NIGHTELF = true }, class = { HUNTER = true }, turnin = { 1438, 56.7, 59.5 } }
Q[6103] = { name = "Training the Beast", level = 10, minLevel = 10, map = 1438, x = 56.7, y = 59.5, giver = "Dazalar", faction = "Alliance", pre = { 6102 }, race = { NIGHTELF = true }, class = { HUNTER = true }, turnin = { 1457, 40.4, 8.6 } }
Q[6121] = { name = "Lessons Anew", level = 14, minLevel = 14, map = 1457, x = 35.4, y = 8.4, giver = "Mathrengyl Bearwalker", faction = "Alliance", race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[6122] = { name = "The Principal Source", level = 14, minLevel = 14, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Alliance", pre = { 6121 }, race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1439, 37.7, 40.7 } }
Q[6123] = { name = "Gathering the Cure", level = 14, minLevel = 14, map = 1439, x = 37.7, y = 40.7, giver = "Alanndarian Nightsong", faction = "Alliance", pre = { 6122 }, race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1439, 37.7, 40.7 } }
Q[6124] = { name = "Curing the Sick", level = 14, minLevel = 14, map = 1439, x = 37.7, y = 40.7, giver = "Alanndarian Nightsong", faction = "Alliance", pre = { 6123 }, race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[6125] = { name = "Power over Poison", level = 14, minLevel = 14, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Alliance", pre = { 6124 }, race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1457, 35.4, 8.4 } }
Q[6126] = { name = "Lessons Anew", level = 14, minLevel = 14, map = 1456, x = 76.5, y = 27.2, giver = "Turak Runetotem", faction = "Horde", race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[6127] = { name = "The Principal Source", level = 14, minLevel = 14, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Horde", pre = { 6126 }, race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1413, 52.3, 31.9 } }
Q[6128] = { name = "Gathering the Cure", level = 14, minLevel = 14, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", faction = "Horde", pre = { 6127 }, race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1413, 52.3, 31.9 } }
Q[6129] = { name = "Curing the Sick", level = 14, minLevel = 14, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", faction = "Horde", pre = { 6128 }, race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[6130] = { name = "Power over Poison", level = 14, minLevel = 14, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Horde", pre = { 6129 }, race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1456, 76.5, 27.2 } }
Q[6132] = { name = "Get Me Out of Here!", level = 39, minLevel = 34, map = 1443, x = 34.0, y = 53.5, giver = "Melizza Brimbuzzle", turnin = { 1443, 47.8, 61.8 } }
Q[6133] = { name = "The Ranger Lord's Behest", level = 60, minLevel = 54, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", faction = "Horde", turnin = { 1423, 22.2, 63.5 } }
Q[6134] = { name = "Ghost-o-plasm Round Up", level = 39, minLevel = 34, map = 1443, x = 47.8, y = 61.8, giver = "Hornizz Brimbuzzle", turnin = { 1443, 47.8, 61.8 } }
Q[6135] = { name = "Duskwing, Oh How I Hate Thee...", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", faction = "Horde", pre = { 6022, 6042, 6133 }, group = true, turnin = { 1423, 22.2, 63.5 } }
Q[6136] = { name = "The Corpulent One", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", faction = "Horde", pre = { 6022, 6042, 6133 }, group = true, turnin = { 1423, 22.2, 63.5 } }
Q[6141] = { name = "Brother Anton", level = 39, minLevel = 34, map = 1453, x = 52.6, y = 43.2, giver = "Brother Crowley", faction = "Alliance", turnin = { 1443, 66.5, 7.9 } }
Q[6142] = { name = "Clam Bait", level = 35, minLevel = 31, map = 1443, x = 22.6, y = 72.0, giver = "Mai'Lahii", faction = "Horde", turnin = { 1443, 22.6, 72.0 } }
Q[6143] = { name = "Other Fish to Fry", level = 36, minLevel = 32, map = 1443, x = 23.3, y = 72.9, giver = "Drulzegar Skraghook", faction = "Horde", turnin = { 1443, 23.3, 72.9 } }
Q[6144] = { name = "The Call to Command", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", faction = "Horde", pre = { 6135, 6136 }, turnin = { 1458, 56.2, 92.2 } }
Q[6145] = { name = "The Crimson Courier", level = 60, minLevel = 56, map = 1458, x = 56.2, y = 92.2, giver = "Varimathras", faction = "Horde", pre = { 6144 }, group = true, turnin = { 1423, 22.2, 63.5 } }
Q[6146] = { name = "Nathanos' Ruse", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", faction = "Horde", pre = { 6145 }, turnin = { 1423, 75.2, 71.2 } }
Q[6147] = { name = "Return to Nathanos", level = 60, minLevel = 56, map = 1423, x = 75.2, y = 71.2, giver = "Crusader Lord Valdelmar", faction = "Horde", pre = { 6146 }, turnin = { 1423, 22.2, 63.5 } }
Q[6148] = { name = "The Scarlet Oracle, Demetria", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", faction = "Horde", pre = { 6147 }, group = true, turnin = { 1423, 22.2, 63.5 } }
Q[6161] = { name = "Claim Rackmore's Treasure!", level = 36, minLevel = 30, map = 1443, x = 36.1, y = 30.4, giver = "Rackmore's Log", turnin = { 1443, 30, 8.7 } }
Q[6162] = { name = "A Husband's Last Battle", level = 51, minLevel = 46, map = 1448, x = 34.8, y = 52.7, giver = "Dreka'Sur", faction = "Horde", turnin = { 1448, 34.8, 52.7 } }
Q[6163] = { name = "Ramstein", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", faction = "Horde", pre = { 6135, 6136 }, dungeon = "Stratholme", turnin = { 1423, 22.2, 63.5 } }
Q[6164] = { name = "Augustus' Receipt Book", level = 55, minLevel = 50, map = 1423, x = 11.4, y = 26.4, giver = "Augustus the Touched", turnin = { 1423, 11.4, 26.4 } }
Q[6181] = { name = "A Swift Message", level = 10, minLevel = 10, map = 1436, x = 57, y = 47.2, giver = "Quartermaster Lewis", faction = "Alliance", race = { HUMAN = true }, turnin = { 1436, 56.5, 52.6 } }
Q[6182] = { name = "The First and the Last", level = 60, minLevel = 56, map = 1453, x = 80.2, y = 38.4, giver = "Highlord Bolvar Fordragon", faction = "Alliance", turnin = { 1453, 78.3, 70.7 } }
Q[6183] = { name = "Honor the Dead", level = 60, minLevel = 56, map = 1453, x = 78.3, y = 70.7, giver = "Master Mathias Shaw", faction = "Alliance", pre = { 6182 }, turnin = { 1453, 78.3, 70.7 } }
Q[6184] = { name = "Flint Shadowmore", level = 60, minLevel = 56, map = 1453, x = 78.3, y = 70.7, giver = "Master Mathias Shaw", faction = "Alliance", pre = { 6183 }, turnin = { 1422, 43.6, 84.5 } }
Q[6185] = { name = "The Eastern Plagues", level = 60, minLevel = 56, map = 1422, x = 43.6, y = 84.5, giver = "Flint Shadowmore", faction = "Alliance", pre = { 6184 }, turnin = { 1422, 43.6, 84.5 } }
Q[6186] = { name = "The Blightcaller Cometh", level = 60, minLevel = 56, map = 1422, x = 43.6, y = 84.5, giver = "Flint Shadowmore", faction = "Alliance", pre = { 6185 }, turnin = { 1453, 80.2, 38.4 } }
Q[6187] = { name = "Order Must Be Restored", level = 60, minLevel = 56, map = 1453, x = 80.2, y = 38.4, giver = "Highlord Bolvar Fordragon", faction = "Alliance", pre = { 6186 }, group = true, turnin = { 1453, 80.2, 38.4 } }
Q[6261] = { name = "Dungar Longdrink", level = 10, minLevel = 10, map = 1453, x = 77.2, y = 61.0, giver = "Osric Strang", faction = "Alliance", pre = { 6281 }, race = { HUMAN = true }, turnin = { 1453, 71.0, 72.5 } }
Q[6281] = { name = "Continue to Stormwind", level = 10, minLevel = 10, map = 1436, x = 56.5, y = 52.6, giver = "Thor", faction = "Alliance", pre = { 6181 }, race = { HUMAN = true }, turnin = { 1453, 77.2, 61.0 } }
Q[6282] = { name = "Harpies Threaten", level = 26, minLevel = 18, map = 1442, x = 47.2, y = 61.2, giver = "Maggran Earthbinder", faction = "Horde", turnin = { 1442, 47.2, 61.2 } }
Q[6283] = { name = "Bloodfury Bloodline", level = 26, minLevel = 18, map = 1442, x = 47.2, y = 61.2, giver = "Maggran Earthbinder", faction = "Horde", pre = { 6282 }, group = true, turnin = { 1442, 47.2, 61.2 } }
Q[6284] = { name = "Arachnophobia", level = 21, minLevel = 15, map = 1442, x = 59.1, y = 75.7, giver = "Wanted Poster: Besseleth", faction = "Horde", group = true, turnin = { 1442, 47.2, 61.2 } }
Q[6285] = { name = "Return to Lewis", level = 10, minLevel = 10, map = 1453, x = 71.0, y = 72.5, giver = "Dungar Longdrink", faction = "Alliance", pre = { 6261 }, race = { HUMAN = true }, turnin = { 1436, 57, 47.2 } }
Q[6301] = { name = "Cycle of Rebirth", level = 23, minLevel = 17, map = 1442, x = 47.5, y = 58.4, giver = "Tammra Windfield", faction = "Horde", turnin = { 1442, 47.5, 58.4 } }
Q[6321] = { name = "Supplying the Sepulcher", level = 10, minLevel = 10, map = 1421, x = 43.4, y = 41.7, giver = "Deathguard Podrig", faction = "Horde", race = { SCOURGE = true }, turnin = { 1421, 45.6, 42.6 } }
Q[6322] = { name = "Michael Garrett", level = 10, minLevel = 10, map = 1458, x = 61.5, y = 41.8, giver = "Gordon Wendham", faction = "Horde", pre = { 6323 }, race = { SCOURGE = true }, turnin = { 1458, 63.2, 48.6 } }
Q[6323] = { name = "Ride to the Undercity", level = 10, minLevel = 10, map = 1421, x = 45.6, y = 42.6, giver = "Karos Razok", faction = "Horde", pre = { 6321 }, race = { SCOURGE = true }, turnin = { 1458, 61.5, 41.8 } }
Q[6324] = { name = "Return to Podrig", level = 10, minLevel = 10, map = 1458, x = 63.2, y = 48.6, giver = "Michael Garrett", faction = "Horde", pre = { 6322 }, race = { SCOURGE = true }, turnin = { 1421, 43.4, 41.7 } }
Q[6341] = { name = "The Bounty of Teldrassil", level = 10, minLevel = 10, map = 1438, x = 56.3, y = 92.4, giver = "Nessa Shadowsong", faction = "Alliance", race = { NIGHTELF = true }, turnin = { 1438, 58.4, 94.0 } }
Q[6342] = { name = "Flight to Auberdine", level = 10, minLevel = 10, map = 1438, x = 58.4, y = 94.0, giver = "Vesprystus", faction = "Alliance", pre = { 6341 }, race = { NIGHTELF = true }, turnin = { 1439, 36.8, 44.3 } }
Q[6343] = { name = "Return to Nessa", level = 10, minLevel = 10, map = 1439, x = 36.8, y = 44.3, giver = "Laird", faction = "Alliance", pre = { 6342 }, race = { NIGHTELF = true }, turnin = { 1438, 56.3, 92.4 } }
Q[6344] = { name = "Nessa Shadowsong", level = 10, minLevel = 10, map = 1457, x = 70.7, y = 45.4, giver = "Mydrannul", faction = "Alliance", race = { NIGHTELF = true }, turnin = { 1438, 56.3, 92.4 } }
Q[6361] = { name = "A Bundle of Hides", level = 10, minLevel = 10, map = 1413, x = 51.2, y = 29.1, giver = "Jahan Hawkwing", faction = "Horde", race = { TAUREN = true }, turnin = { 1413, 51.5, 30.3 } }
Q[6362] = { name = "Ride to Thunder Bluff", level = 10, minLevel = 10, map = 1413, x = 51.5, y = 30.3, giver = "Devrak", faction = "Horde", pre = { 6361 }, race = { TAUREN = true }, turnin = { 1456, 45.8, 55.8 } }
Q[6363] = { name = "Tal the Wind Rider Master", level = 10, minLevel = 10, map = 1456, x = 45.8, y = 55.8, giver = "Ahanu", faction = "Horde", pre = { 6362 }, race = { TAUREN = true }, turnin = { 1456, 47, 49.8 } }
Q[6364] = { name = "Return to Jahan", level = 10, minLevel = 10, map = 1456, x = 47, y = 49.8, giver = "Tal", faction = "Horde", pre = { 6363 }, race = { TAUREN = true }, turnin = { 1413, 51.2, 29.1 } }
Q[6365] = { name = "Meats to Orgrimmar", level = 10, minLevel = 10, map = 1413, x = 52.6, y = 29.8, giver = "Zargh", faction = "Horde", race = { ORC = true, TROLL = true }, turnin = { 1413, 51.5, 30.3 } }
Q[6381] = { name = "New Life", level = 25, minLevel = 17, map = 1442, x = 47.5, y = 58.4, giver = "Tammra Windfield", faction = "Horde", pre = { 6301 }, turnin = { 1442, 47.5, 58.4 } }
Q[6382] = { name = "The Ashenvale Hunt", level = 20, minLevel = 20, map = 1413, x = 44.9, y = 59.1, giver = "Jorn Skyseer", faction = "Horde", pre = { 882 }, turnin = { 1440, 73.8, 61.5 } }
Q[6383] = { name = "The Ashenvale Hunt", level = 20, minLevel = 20, map = 1440, x = 73.8, y = 61.5, giver = "Senani Thunderheart", faction = "Horde", turnin = { 1440, 73.8, 61.5 } }
Q[6384] = { name = "Ride to Orgrimmar", level = 10, minLevel = 10, map = 1413, x = 51.5, y = 30.3, giver = "Devrak", faction = "Horde", pre = { 6365 }, race = { ORC = true, TROLL = true }, turnin = { 1454, 54.1, 68.4 } }
Q[6385] = { name = "Doras the Wind Rider Master", level = 10, minLevel = 10, map = 1454, x = 54.1, y = 68.4, giver = "Innkeeper Gryshka", faction = "Horde", pre = { 6384 }, race = { ORC = true, TROLL = true }, turnin = { 1454, 45.1, 63.9 } }
Q[6386] = { name = "Return to the Crossroads.", level = 10, minLevel = 10, map = 1454, x = 45.1, y = 63.9, giver = "Doras", faction = "Horde", pre = { 6385 }, race = { ORC = true, TROLL = true }, turnin = { 1413, 52.6, 29.8 } }
Q[6387] = { name = "Honor Students", level = 10, minLevel = 10, map = 1432, x = 37.0, y = 47.8, giver = "Brock Stoneseeker", faction = "Alliance", race = { DWARF = true, GNOME = true }, turnin = { 1432, 33.9, 51.0 } }
Q[6388] = { name = "Gryth Thurden", level = 10, minLevel = 10, map = 1455, x = 51.5, y = 26.3, giver = "Golnir Bouldertoe", faction = "Alliance", pre = { 6391 }, race = { DWARF = true, GNOME = true }, turnin = { 1455, 55.5, 47.7 } }
Q[6389] = { name = "A Plague Upon Thee", level = 55, minLevel = 48, map = 1422, x = 48.3, y = 32.0, giver = "Termite Barrel", faction = "Alliance", pre = { 5904 }, turnin = { 1422, 43.4, 84.8 } }
Q[6390] = { name = "A Plague Upon Thee", level = 55, minLevel = 48, map = 1422, x = 48.3, y = 32.0, giver = "Termite Barrel", faction = "Horde", pre = { 5902 }, turnin = { 1420, 83.3, 72.3 } }
Q[6391] = { name = "Ride to Ironforge", level = 10, minLevel = 10, map = 1432, x = 33.9, y = 51.0, giver = "Thorgrum Borrelson", faction = "Alliance", pre = { 6387 }, race = { DWARF = true, GNOME = true }, turnin = { 1455, 51.5, 26.3 } }
Q[6392] = { name = "Return to Brock", level = 10, minLevel = 10, map = 1455, x = 55.5, y = 47.7, giver = "Gryth Thurden", faction = "Alliance", pre = { 6388 }, race = { DWARF = true, GNOME = true }, turnin = { 1432, 37.0, 47.8 } }
Q[6393] = { name = "Elemental War", level = 25, minLevel = 19, map = 1442, x = 47.4, y = 64.2, giver = "Tsunaman", faction = "Horde", turnin = { 1442, 47.4, 64.2 } }
Q[6394] = { name = "Thazz'ril's Pick", level = 4, minLevel = 3, map = 1411, x = 44.6, y = 68.7, giver = "Foreman Thazz'ril", faction = "Horde", pre = { 5441 }, turnin = { 1411, 44.6, 68.7 } }
Q[6395] = { name = "Marla's Last Wish", level = 5, minLevel = 3, map = 1420, x = 30.9, y = 66.0, giver = "Novice Elreth", faction = "Horde", pre = { 376 }, turnin = { 1420, 30.9, 66.0 } }
Q[6401] = { name = "Kaya's Alive", level = 18, minLevel = 12, map = 1413, x = 35.2, y = 27.8, giver = "Makaba Flathoof", faction = "Horde", pre = { 6523 }, turnin = { 1442, 47.5, 58.4 } }
Q[6402] = { name = "Stormwind Rendezvous", level = 60, minLevel = 50, map = 1428, x = 84.7, y = 69.0, giver = "Marshal Maxwell", faction = "Alliance", pre = { 4322 }, turnin = { 1453, 73.6, 91.0 } }
Q[6403] = { name = "The Great Masquerade", level = 60, minLevel = 50, map = 1453, x = 73.6, y = 91.0, giver = "Reginald Windsor", faction = "Alliance", pre = { 6402 }, turnin = { 1453, 80.2, 38.4 } }
Q[6421] = { name = "Boulderslide Ravine", level = 18, minLevel = 14, map = 1442, x = 47.2, y = 64.0, giver = "Mor'rogal", faction = "Horde", turnin = { 1442, 47.2, 64.0 } }
Q[6441] = { name = "Satyr Horns", level = 26, minLevel = 21, map = 1440, x = 73.1, y = 61.5, giver = "Pixel", faction = "Horde", turnin = { 1440, 73.1, 61.5 } }
Q[6442] = { name = "Naga at the Zoram Strand", level = 19, minLevel = 14, map = 1440, x = 11.7, y = 34.9, giver = "Marukai", faction = "Horde", turnin = { 1440, 11.7, 34.9 } }
Q[6461] = { name = "Blood Feeders", level = 19, minLevel = 13, map = 1442, x = 71.2, y = 95.0, giver = "Xen'Zilla", faction = "Horde", turnin = { 1442, 71.2, 95.0 } }
Q[6462] = { name = "Troll Charm", level = 24, minLevel = 19, map = 1440, x = 11.7, y = 34.9, giver = "Mitsuwa", faction = "Horde", turnin = { 1440, 11.7, 34.9 } }
Q[6481] = { name = "Earthen Arise", level = 20, minLevel = 14, map = 1442, x = 47.2, y = 64.0, giver = "Mor'rogal", faction = "Horde", pre = { 6421 }, group = true, turnin = { 1442, 47.2, 64.0 } }
Q[6482] = { name = "Freedom to Ruul", level = 24, minLevel = 19, map = 1440, x = 41.5, y = 34.5, giver = "Ruul Snowhoof", faction = "Horde", turnin = { 1440, 74.1, 60.9 } }
Q[6501] = { name = "The Dragon's Eye", level = 60, minLevel = 50, map = 1453, x = 80.2, y = 38.4, giver = "Highlord Bolvar Fordragon", faction = "Alliance", pre = { 6403 }, turnin = { 1452, 54.5, 51.2 } }
Q[6503] = { name = "Ashenvale Outrunners", level = 24, minLevel = 19, map = 1440, x = 71.1, y = 68.1, giver = "Kuray'bin", faction = "Horde", turnin = { 1440, 71.1, 68.1 } }
Q[6504] = { name = "The Lost Pages", level = 30, minLevel = 23, map = 1440, x = 70.0, y = 71.2, giver = "Gurda Ragescar", faction = "Horde", turnin = { 1440, 70.0, 71.2 } }
Q[6521] = { name = "An Unholy Alliance", level = 36, minLevel = 28, map = 1458, x = 56.2, y = 92.2, giver = "Varimathras", faction = "Horde", pre = { 6522 }, dungeon = "Razorfen Downs", turnin = { 1458, 56.2, 92.2 } }
Q[6523] = { name = "Protect Kaya", level = 18, minLevel = 12, map = 1442, x = 73.5, y = 85.6, giver = "Kaya Flathoof", faction = "Horde", turnin = { 1413, 35.2, 27.8 } }
Q[6541] = { name = "Report to Kadrak", level = 19, minLevel = 17, map = 1413, x = 51.5, y = 30.9, giver = "Thork", faction = "Horde", turnin = { 1413, 48.1, 5.4 } }
Q[6542] = { name = "Report to Kadrak", level = 19, minLevel = 17, map = 1442, x = 73.2, y = 94.9, giver = "Darn Talongrip", faction = "Horde", turnin = { 1413, 48.1, 5.4 } }
Q[6543] = { name = "The Warsong Reports", level = 19, minLevel = 17, map = 1413, x = 48.1, y = 5.4, giver = "Kadrak", faction = "Horde", turnin = { 1413, 48.1, 5.4 } }
Q[6544] = { name = "Torek's Assault", level = 24, minLevel = 20, map = 1440, x = 68.3, y = 75.3, giver = "Torek", faction = "Horde", turnin = { 1440, 73.0, 62.5 } }
Q[6548] = { name = "Avenge My Village", level = 18, minLevel = 12, map = 1413, x = 35.2, y = 27.8, giver = "Makaba Flathoof", faction = "Horde", turnin = { 1413, 35.2, 27.8 } }
Q[6562] = { name = "Trouble in the Deeps", level = 22, minLevel = 17, map = 1442, x = 47.4, y = 64.2, giver = "Tsunaman", faction = "Horde", dungeon = "Blackfathom Deeps", turnin = { 1440, 11.6, 34.3 } }
Q[6563] = { name = "The Essence of Aku'Mai", level = 22, minLevel = 17, map = 1440, x = 11.6, y = 34.3, giver = "Je'neu Sancrea", faction = "Horde", dungeon = "Blackfathom Deeps", turnin = { 1440, 11.6, 34.3 } }
Q[6565] = { name = "Allegiance to the Old Gods", level = 26, minLevel = 17, map = 1440, x = 11.6, y = 34.3, giver = "Je'neu Sancrea", faction = "Horde", pre = { 6564 }, dungeon = "Blackfathom Deeps", turnin = { 1440, 11.6, 34.3 } }
Q[6566] = { name = "What the Wind Carries", level = 60, minLevel = 55, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", faction = "Horde", pre = { 4974 }, turnin = { 1454, 31.7, 37.8 } }
Q[6567] = { name = "The Champion of the Horde", level = 60, minLevel = 55, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", faction = "Horde", pre = { 6566 }, turnin = { 1443, 54, 2 } }
Q[6568] = { name = "The Testament of Rexxar", level = 60, minLevel = 55, map = 1443, x = 54, y = 2, giver = "Rexxar", faction = "Horde", pre = { 6567 }, turnin = { 1422, 50.8, 77.8 } }
Q[6570] = { name = "Emberstrife", level = 60, minLevel = 55, map = 1422, x = 50.8, y = 77.8, giver = "Myranda the Hag", faction = "Horde", pre = { 6569 }, turnin = { 1445, 56.7, 87.7 } }
Q[6571] = { name = "Warsong Supplies", level = 27, minLevel = 22, map = 1440, x = 71.4, y = 67.6, giver = "Locke Okarr", faction = "Horde", turnin = { 1440, 71.4, 67.6 } }
Q[6582] = { name = "The Test of Skulls, Scryer", level = 60, minLevel = 55, map = 1445, x = 56.7, y = 87.7, giver = "Emberstrife", faction = "Horde", pre = { 6570 }, group = true, turnin = { 1445, 56.7, 87.7 } }
Q[6583] = { name = "The Test of Skulls, Somnus", level = 60, minLevel = 55, map = 1445, x = 56.7, y = 87.7, giver = "Emberstrife", faction = "Horde", pre = { 6570 }, group = true, turnin = { 1445, 56.7, 87.7 } }
Q[6584] = { name = "The Test of Skulls, Chronalis", level = 60, minLevel = 55, map = 1445, x = 56.7, y = 87.7, giver = "Emberstrife", faction = "Horde", pre = { 6570 }, group = true, turnin = { 1445, 56.7, 87.7 } }
Q[6585] = { name = "The Test of Skulls, Axtroz", level = 60, minLevel = 55, map = 1445, x = 56.7, y = 87.7, giver = "Emberstrife", faction = "Horde", pre = { 6582, 6583, 6584 }, group = true, turnin = { 1445, 56.7, 87.7 } }
Q[6601] = { name = "Ascension...", level = 60, minLevel = 55, map = 1445, x = 56.7, y = 87.7, giver = "Emberstrife", faction = "Horde", pre = { 6585 }, turnin = { 1443, 54, 2 } }
Q[6603] = { name = "Trouble in Winterspring!", level = 56, minLevel = 52, map = 1452, x = 60.7, y = 38.2, giver = "Meggi Peppinrocker", turnin = { 1452, 31.3, 45.2 } }
Q[6604] = { name = "Enraged Wildkin", level = 59, minLevel = 53, map = 1452, x = 61.1, y = 38.4, giver = "Harlo Wigglesworth", faction = "Alliance", turnin = { 1452, 52.1, 30.4 } }
Q[6605] = { name = "A Strange One", level = 54, minLevel = 49, map = 1452, x = 61.1, y = 38.4, giver = "Harlo Wigglesworth", faction = "Horde", turnin = { 1448, 34.2, 52.3 } }
Q[6606] = { name = "A Little Luck", level = 60, minLevel = 55, map = 1452, x = 61.1, y = 38.4, giver = "Harlo Wigglesworth", turnin = { 1452, 61.9, 38.3 } }
Q[6621] = { name = "King of the Foulweald", level = 26, minLevel = 21, map = 1440, x = 11.9, y = 34.5, giver = "Karang Amakkar", faction = "Horde", pre = { 216 }, turnin = { 1440, 11.9, 34.5 } }
Q[6626] = { name = "A Host of Evil", level = 35, minLevel = 28, map = 1413, x = 49.0, y = 94.9, giver = "Myriam Moonsinger", dungeon = "Razorfen Downs", turnin = { 1413, 49.0, 94.9 } }
Q[6627] = { name = "Test of Lore", level = 30, minLevel = 25, map = 1442, x = 78.8, y = 45.7, giver = "Braug Dimspirit", faction = "Horde", pre = { 1154 }, turnin = { 1442, 78.8, 45.7 } }
Q[6628] = { name = "Test of Lore", level = 30, minLevel = 25, map = 1458, x = 57.8, y = 65.4, giver = "Parqual Fintallas", faction = "Horde", pre = { 1160 }, turnin = { 1458, 57.8, 65.4 } }
Q[6629] = { name = "Kill Grundig Darkcloud", level = 18, minLevel = 12, map = 1413, x = 35.2, y = 27.8, giver = "Makaba Flathoof", faction = "Horde", pre = { 6548 }, turnin = { 1413, 35.2, 27.8 } }
Q[6641] = { name = "Vorsha the Lasher", level = 23, minLevel = 20, map = 1440, x = 12.1, y = 34.6, giver = "Muglash", faction = "Horde", turnin = { 1440, 12.2, 34.2 } }
Q[6681] = { name = "The Manor, Ravenholdt", level = 24, minLevel = 24, map = 1454, x = 43.0, y = 53.7, giver = "Drop: Elegant Letter", class = { ROGUE = true }, turnin = { 1416, 84.5, 80.3 } }
Q[6721] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1455, x = 70.9, y = 83.6, giver = "Olmin Burningbeard", faction = "Alliance", race = { NIGHTELF = true }, class = { HUNTER = true }, turnin = { 1438, 56.7, 59.5 } }
Q[6722] = { name = "The Hunter's Path", level = 10, minLevel = 10, map = 1426, x = 45.8, y = 53.0, giver = "Grif Wildheart", faction = "Alliance", race = { NIGHTELF = true }, class = { HUNTER = true }, turnin = { 1438, 56.7, 59.5 } }
Q[6761] = { name = "The New Frontier", level = 55, minLevel = 54, map = 1457, x = 34.8, y = 9.3, giver = "Arch Druid Fandral Staghelm", faction = "Alliance", turnin = { 1457, 35.4, 8.4 } }
Q[6762] = { name = "Rabine Saturna", level = 55, minLevel = 54, map = 1457, x = 35.4, y = 8.4, giver = "Mathrengyl Bearwalker", faction = "Alliance", pre = { 6761 }, turnin = { 1450, 51.7, 45.1 } }
Q[6804] = { name = "Poisoned Water", level = 56, minLevel = 55, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", turnin = { 1447, 79.3, 73.7 } }
Q[6805] = { name = "Stormers and Rumblers", level = 57, minLevel = 55, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", turnin = { 1447, 79.3, 73.7 } }
Q[6821] = { name = "Eye of the Emberseer", level = 60, minLevel = 56, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", pre = { 6804, 6805 }, group = true, turnin = { 1447, 79.3, 73.7 } }
Q[6822] = { name = "The Molten Core", level = 60, minLevel = 57, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", pre = { 6821 }, group = true, turnin = { 1447, 79.3, 73.7 } }
Q[6823] = { name = "Agent of Hydraxis", level = 60, minLevel = 60, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", pre = { 6822 }, turnin = { 1447, 79.3, 73.7 } }
Q[6824] = { name = "Hands of the Enemy", level = 60, minLevel = 60, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", pre = { 6823 }, group = true, turnin = { 1447, 79.3, 73.7 } }
Q[6844] = { name = "Umber, Archivist", level = 57, minLevel = 54, map = 1451, x = 81.9, y = 18.9, giver = "Layo Starstrike", pre = { 1126 }, turnin = { 1450, 44.9, 35.6 } }
Q[6845] = { name = "Uncovering Past Secrets", level = 57, minLevel = 54, map = 1450, x = 44.9, y = 35.6, giver = "Umber", pre = { 6844 }, turnin = { 1450, 51.7, 45.1 } }
Q[6921] = { name = "Amongst the Ruins", level = 27, minLevel = 21, map = 1440, x = 11.6, y = 34.3, giver = "Je'neu Sancrea", faction = "Horde", dungeon = "Blackfathom Deeps", turnin = { 1440, 11.6, 34.3 } }
Q[7003] = { name = "Zapped Giants", level = 48, minLevel = 45, map = 1444, x = 44.8, y = 43.4, giver = "Zorbin Fandazzle", group = true, turnin = { 1444, 44.8, 43.4 } }
Q[7028] = { name = "Twisted Evils", level = 47, minLevel = 41, map = 1443, x = 62.2, y = 39.6, giver = "Willow", dungeon = "Maraudon", turnin = { 1443, 62.2, 39.6 } }
Q[7029] = { name = "Vyletongue Corruption", level = 47, minLevel = 41, map = 1443, x = 23.2, y = 70.3, giver = "Vark Battlescar", faction = "Horde", dungeon = "Maraudon", turnin = { 1443, 23.2, 70.3 } }
Q[7041] = { name = "Vyletongue Corruption", level = 47, minLevel = 41, map = 1443, x = 68.5, y = 8.9, giver = "Talendria", faction = "Alliance", dungeon = "Maraudon", turnin = { 1443, 68.5, 8.9 } }
Q[7044] = { name = "Legends of Maraudon", level = 49, minLevel = 41, map = 1443, x = 31.9, y = 63.8, giver = "Cavindra", dungeon = "Maraudon" }
Q[7064] = { name = "Corruption of Earth and Seed", level = 51, minLevel = 45, map = 1443, x = 26.9, y = 77.7, giver = "Selendra", faction = "Horde", dungeon = "Maraudon", turnin = { 1443, 26.9, 77.7 } }
Q[7065] = { name = "Corruption of Earth and Seed", level = 51, minLevel = 45, map = 1443, x = 63.8, y = 10.7, giver = "Keeper Marandis", faction = "Alliance", dungeon = "Maraudon", turnin = { 1443, 63.8, 10.7 } }
Q[7067] = { name = "The Pariah's Instructions", level = 48, minLevel = 39, map = 1443, x = 50.4, y = 86.7, giver = "Centaur Pariah", dungeon = "Maraudon", turnin = { 1443, 50.4, 86.7 } }
Q[7068] = { name = "Shadowshard Fragments", level = 42, minLevel = 39, map = 1454, x = 39.2, y = 86.3, giver = "Uthel'nay", faction = "Horde", dungeon = "Maraudon", turnin = { 1454, 39.2, 86.3 } }
Q[7070] = { name = "Shadowshard Fragments", level = 42, minLevel = 39, map = 1445, x = 66.4, y = 49.3, giver = "Archmage Tervosh", faction = "Alliance", dungeon = "Maraudon", turnin = { 1445, 66.4, 49.3 } }
Q[7201] = { name = "The Last Element", level = 54, minLevel = 48, map = 1418, x = 2.9, y = 47.8, giver = "Shadowmage Vivian Lagrave", faction = "Horde", pre = { 3906 }, dungeon = "Blackrock Depths", turnin = { 1418, 2.9, 47.8 } }
Q[7383] = { name = "Crown of the Earth", level = 11, minLevel = 1, map = 1438, x = 56.1, y = 61.7, giver = "Corithras Moonrage", faction = "Alliance", pre = { 933 }, turnin = { 1438, 56.1, 61.7 } }
Q[7441] = { name = "Pusillin and the Elder Azj'Tordin", level = 58, minLevel = 54, map = 1444, x = 76.9, y = 37.4, giver = "Azj'Tordin", dungeon = "Dire Maul", turnin = { 1444, 76.9, 37.4 } }
Q[7481] = { name = "Elven Legends", level = 60, minLevel = 54, map = 1444, x = 74.4, y = 44, giver = "Sage Korolusk", faction = "Horde", dungeon = "Dire Maul", turnin = { 1444, 74.4, 44 } }
Q[7482] = { name = "Elven Legends", level = 60, minLevel = 54, map = 1444, x = 31.6, y = 43.5, giver = "Scholar Runethorn", faction = "Alliance", dungeon = "Dire Maul", turnin = { 1444, 31.6, 43.5 } }
Q[7486] = { name = "A Hero's Reward", level = 60, minLevel = 60, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", pre = { 6824 }, turnin = { 1447, 79.2, 74.9 } }
Q[7488] = { name = "Lethtendris's Web", level = 57, minLevel = 54, map = 1444, x = 30.4, y = 46.2, giver = "Latronicus Moonspear", faction = "Alliance", dungeon = "Dire Maul", turnin = { 1444, 30.4, 46.2 } }
Q[7489] = { name = "Lethtendris's Web", level = 57, minLevel = 54, map = 1444, x = 76.2, y = 43.8, giver = "Talo Thornhoof", faction = "Horde", dungeon = "Dire Maul", turnin = { 1444, 76.2, 43.8 } }
Q[7491] = { name = "For All To See", level = 60, minLevel = 60, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", faction = "Horde", pre = { 7490 }, turnin = { 1454, 51.7, 75.5 } }
Q[7492] = { name = "Camp Mojache", level = 57, minLevel = 54, map = 1458, x = 63.9, y = 44.1, giver = "Harbinger Balthazad", faction = "Horde", dungeon = "Dire Maul", turnin = { 1444, 76.2, 43.8 } }
Q[7494] = { name = "Feathermoon Stronghold", level = 57, minLevel = 54, map = 1453, x = 56.4, y = 74.1, giver = "Crier Goodman", faction = "Alliance", dungeon = "Dire Maul", turnin = { 1444, 30.4, 46.2 } }
Q[7496] = { name = "Celebrating Good Times", level = 60, minLevel = 60, map = 1453, x = 80.2, y = 38.4, giver = "Highlord Bolvar Fordragon", faction = "Alliance", pre = { 7495 }, turnin = { 1453, 67.2, 85.5 } }
Q[7541] = { name = "Service to the Horde", level = 40, minLevel = 30, map = 1454, x = 38.9, y = 38.4, giver = "Zor Lonetree", faction = "Horde", pre = { 1262 }, turnin = { 1454, 38.9, 38.4 } }
Q[7562] = { name = "Mor'zul Bloodbringer", level = 58, minLevel = 60, map = 1454, x = 47.5, y = 46.7, giver = "Kurgul", alliance = { map = 1453, x = 39.5, y = 84.5, giver = "Spackle Thornberry" }, class = { WARLOCK = true }, turnin = { 1428, 12.7, 31.6 } }
Q[7563] = { name = "Rage of Blood", level = 58, minLevel = 60, map = 1428, x = 12.7, y = 31.6, giver = "Mor'zul Bloodbringer", class = { WARLOCK = true }, turnin = { 1428, 12.7, 31.6 } }
Q[7564] = { name = "Wildeyes", level = 58, minLevel = 60, map = 1428, x = 12.7, y = 31.6, giver = "Mor'zul Bloodbringer", pre = { 7563 }, class = { WARLOCK = true }, turnin = { 1428, 12.4, 31.6 } }
Q[7581] = { name = "The Prison's Bindings", level = 60, minLevel = 60, map = 1419, x = 34.1, y = 50.1, giver = "Daio the Decrepit", class = { WARLOCK = true }, group = true, turnin = { 1419, 34.1, 50.1 } }
Q[7582] = { name = "The Prison's Casing", level = 60, minLevel = 60, map = 1419, x = 34.1, y = 50.1, giver = "Daio the Decrepit", class = { WARLOCK = true }, group = true, turnin = { 1419, 34.1, 50.1 } }
Q[7583] = { name = "Suppression", level = 60, minLevel = 60, map = 1419, x = 34.1, y = 50.1, giver = "Daio the Decrepit", pre = { 7581, 7582 }, class = { WARLOCK = true }, turnin = { 1419, 34.1, 50.1 } }
Q[7601] = { name = "What Niby Commands", level = 50, minLevel = 50, map = 1448, x = 41.4, y = 44.9, giver = "Niby the Almighty", class = { WARLOCK = true }, turnin = { 1448, 41.4, 45.0 } }
Q[7602] = { name = "Flawless Fel Essence", level = 55, minLevel = 50, map = 1448, x = 41.4, y = 45.0, giver = "Impsy", pre = { 7601 }, class = { WARLOCK = true }, turnin = { 1448, 41.4, 45.0 } }
Q[7603] = { name = "Kroshius' Infernal Core", level = 55, minLevel = 50, map = 1448, x = 41.4, y = 45.0, giver = "Impsy", pre = { 7602 }, class = { WARLOCK = true }, group = true, turnin = { 1448, 41.4, 44.9 } }
Q[7621] = { name = "A Warning", level = 60, minLevel = 60, map = 1423, x = 17.2, y = 12.8, giver = "Eris Havenfire", class = { PRIEST = true }, turnin = { 1423, 17.2, 12.8 } }
Q[7622] = { name = "The Balance of Light and Shadow", level = 60, minLevel = 60, map = 1423, x = 17.2, y = 12.8, giver = "Eris Havenfire", class = { PRIEST = true }, turnin = { 1423, 17.2, 12.8 } }
Q[7623] = { name = "Lord Banehollow", level = 58, minLevel = 60, map = 1428, x = 12.4, y = 31.6, giver = "Gorzeeki Wildeyes", class = { WARLOCK = true }, turnin = { 1448, 35.9, 44.4 } }
Q[7624] = { name = "Ulathek the Traitor", level = 58, minLevel = 60, map = 1448, x = 35.9, y = 44.4, giver = "Lord Banehollow", pre = { 7623 }, class = { WARLOCK = true }, turnin = { 1448, 35.9, 44.4 } }
Q[7625] = { name = "Xorothian Stardust", level = 60, minLevel = 60, map = 1448, x = 35.9, y = 44.4, giver = "Lord Banehollow", pre = { 7624 }, class = { WARLOCK = true }, turnin = { 1428, 12.4, 31.6 } }
Q[7626] = { name = "Bell of Dethmoora", level = 60, minLevel = 60, map = 1428, x = 12.7, y = 31.6, giver = "Mor'zul Bloodbringer", pre = { 7564 }, class = { WARLOCK = true }, turnin = { 1428, 12.4, 31.6 } }
Q[7627] = { name = "Wheel of the Black March", level = 60, minLevel = 60, map = 1428, x = 12.7, y = 31.6, giver = "Mor'zul Bloodbringer", pre = { 7564 }, class = { WARLOCK = true }, turnin = { 1428, 12.4, 31.6 } }
Q[7628] = { name = "Doomsday Candle", level = 60, minLevel = 60, map = 1428, x = 12.7, y = 31.6, giver = "Mor'zul Bloodbringer", pre = { 7564 }, class = { WARLOCK = true }, group = true, turnin = { 1428, 12.4, 31.6 } }
Q[7629] = { name = "Imp Delivery", level = 60, minLevel = 60, map = 1428, x = 12.4, y = 31.6, giver = "Gorzeeki Wildeyes", pre = { 7625 }, class = { WARLOCK = true }, turnin = { 1428, 12.4, 31.6 } }
Q[7630] = { name = "Arcanite", level = 60, minLevel = 60, map = 1428, x = 12.4, y = 31.6, giver = "Gorzeeki Wildeyes", pre = { 7626, 7627, 7628 }, class = { WARLOCK = true }, turnin = { 1428, 12.4, 31.6 } }
Q[7631] = { name = "Dreadsteed of Xoroth", level = 60, minLevel = 60, map = 1428, x = 12.7, y = 31.6, giver = "Mor'zul Bloodbringer", pre = { 7629, 7630 }, class = { WARLOCK = true }, group = true }
Q[7633] = { name = "An Introduction", level = 60, minLevel = 60, map = 1448, x = 47.8, y = 24.1, giver = "Vartrus the Ancient", pre = { 7632 }, class = { HUNTER = true }, turnin = { 1448, 47.8, 24.1 } }
Q[7634] = { name = "Ancient Sinew Wrapped Lamina", level = 60, minLevel = 60, map = 1448, x = 46.7, y = 24.1, giver = "Hastat the Ancient", pre = { 7632 }, class = { HUNTER = true }, group = true, turnin = { 1448, 46.7, 24.1 } }
Q[7635] = { name = "A Proper String", level = 60, minLevel = 60, map = 1448, x = 48.4, y = 22.3, giver = "Stoma the Ancient", pre = { 7632 }, class = { HUNTER = true }, group = true, turnin = { 1448, 48.4, 22.3 } }
Q[7636] = { name = "Stave of the Ancients", level = 60, minLevel = 60, map = 1448, x = 47.8, y = 24.1, giver = "Vartrus the Ancient", pre = { 7632 }, class = { HUNTER = true }, group = true, turnin = { 1448, 47.8, 24.1 } }
Q[7637] = { name = "Emphasis on Sacrifice", level = 60, minLevel = 60, map = 1453, x = 48.4, y = 50.2, giver = "Lord Grayson Shadowbreaker", faction = "Alliance", pre = { 7638 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1455, 24.7, 8.2 } }
Q[7638] = { name = "Lord Grayson Shadowbreaker", level = 60, minLevel = 60, map = 1453, x = 50.5, y = 47.5, giver = "Duthorian Rall", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 48.4, 50.2 } }
Q[7639] = { name = "To Show Due Judgment", level = 60, minLevel = 60, map = 1455, x = 24.7, y = 8.2, giver = "High Priest Rohan", faction = "Alliance", pre = { 7637 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 48.4, 50.2 } }
Q[7640] = { name = "Exorcising Terrordale", level = 60, minLevel = 60, map = 1453, x = 48.4, y = 50.2, giver = "Lord Grayson Shadowbreaker", faction = "Alliance", pre = { 7639 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 48.4, 50.2 } }
Q[7641] = { name = "The Work of Grimand Elmore", level = 60, minLevel = 60, map = 1453, x = 48.4, y = 50.2, giver = "Lord Grayson Shadowbreaker", faction = "Alliance", pre = { 7640 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 59.7, 33.8 } }
Q[7642] = { name = "Collection of Goods", level = 60, minLevel = 60, map = 1453, x = 59.7, y = 33.8, giver = "Grimand Elmore", faction = "Alliance", pre = { 7641 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 59.7, 33.8 } }
Q[7643] = { name = "Ancient Equine Spirit", level = 60, minLevel = 60, map = 1453, x = 48.4, y = 50.2, giver = "Lord Grayson Shadowbreaker", faction = "Alliance", pre = { 7642 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true } }
Q[7645] = { name = "Manna-Enriched Horse Feed", level = 60, minLevel = 60, map = 1424, x = 52.2, y = 55.5, giver = "Merideth Carlson", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1424, 52.2, 55.5 } }
Q[7646] = { name = "The Divination Scryer", level = 60, minLevel = 60, map = 1453, x = 48.4, y = 50.2, giver = "Lord Grayson Shadowbreaker", faction = "Alliance", pre = { 7644 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, group = true, turnin = { 1453, 48.4, 50.2 } }
Q[7647] = { name = "Judgment and Redemption", level = 60, minLevel = 60, map = 1453, x = 48.4, y = 50.2, giver = "Lord Grayson Shadowbreaker", faction = "Alliance", pre = { 7646 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, group = true }
Q[7648] = { name = "Grimand's Finest Work", level = 60, minLevel = 60, map = 1453, x = 59.7, y = 33.8, giver = "Grimand Elmore", faction = "Alliance", pre = { 7642 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 48.4, 50.2 } }
Q[7667] = { name = "Material Assistance", level = 60, minLevel = 58, map = 1454, x = 38.7, y = 35.9, giver = "Sagorne Creststrider", faction = "Horde", class = { SHAMAN = true }, group = true, turnin = { 1454, 38.7, 35.9 } }
Q[7668] = { name = "The Darkreaver Menace", level = 60, minLevel = 58, map = 1454, x = 38.7, y = 35.9, giver = "Sagorne Creststrider", faction = "Horde", pre = { 7667 }, class = { SHAMAN = true }, group = true, turnin = { 1454, 38.7, 35.9 } }
Q[7670] = { name = "Lord Grayson Shadowbreaker", level = 60, minLevel = 60, map = 1455, x = 23.1, y = 6.1, giver = "Brandur Ironhammer", faction = "Alliance", class = { PALADIN = true }, turnin = { 1453, 48.4, 50.2 } }
Q[7701] = { name = "WANTED: Overseer Maltorius", level = 50, minLevel = 45, map = 1427, x = 37.6, y = 26.5, giver = "Wanted/Missing/Lost & Found", group = true, turnin = { 1427, 37.7, 26.6 } }
Q[7721] = { name = "Fuel for the Zapping", level = 48, minLevel = 45, map = 1444, x = 44.8, y = 43.4, giver = "Zorbin Fandazzle", turnin = { 1444, 44.8, 43.4 } }
Q[7722] = { name = "What the Flux?", level = 50, minLevel = 45, map = 1427, x = 38.8, y = 28.5, giver = "Master Smith Burninate", turnin = { 1427, 38.8, 28.5 } }
Q[7723] = { name = "Curse These Fat Fingers", level = 49, minLevel = 45, map = 1427, x = 38.6, y = 27.8, giver = "Hansel Heavyhands", turnin = { 1427, 38.6, 27.8 } }
Q[7724] = { name = "Fiery Menace!", level = 49, minLevel = 45, map = 1427, x = 38.6, y = 27.8, giver = "Hansel Heavyhands", turnin = { 1427, 38.6, 27.8 } }
Q[7727] = { name = "Incendosaurs? Whateverosaur is More Like It", level = 49, minLevel = 45, map = 1427, x = 38.6, y = 27.8, giver = "Hansel Heavyhands", turnin = { 1427, 38.6, 27.8 } }
Q[7728] = { name = "STOLEN: Smithing Tuyere and Lookout's Spyglass", level = 48, minLevel = 45, map = 1427, x = 37.6, y = 26.5, giver = "Wanted/Missing/Lost & Found", turnin = { 1427, 39.0, 27.5 } }
Q[7729] = { name = "JOB OPPORTUNITY: Culling the Competition", level = 48, minLevel = 45, map = 1427, x = 37.6, y = 26.5, giver = "Wanted/Missing/Lost & Found", turnin = { 1427, 39.0, 27.5 } }
Q[7730] = { name = "Zukk'ash Infestation", level = 45, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", faction = "Horde", pre = { 2903 }, turnin = { 1444, 74.9, 42.5 } }
Q[7731] = { name = "Stinglasher", level = 47, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", faction = "Horde", pre = { 2903 }, turnin = { 1444, 74.9, 42.5 } }
Q[7732] = { name = "Zukk'ash Report", level = 48, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", faction = "Horde", pre = { 7730, 7731 }, turnin = { 1454, 56.3, 46.7 } }
Q[7733] = { name = "Improved Quality", level = 48, minLevel = 40, map = 1444, x = 30.6, y = 42.7, giver = "Pratt McGrubben", faction = "Alliance", pre = { 2821 }, turnin = { 1444, 30.6, 42.7 } }
Q[7734] = { name = "Improved Quality", level = 48, minLevel = 40, map = 1444, x = 74.4, y = 42.9, giver = "Jangdor Swiftstrider", faction = "Horde", pre = { 2822 }, turnin = { 1444, 74.4, 42.9 } }
Q[7782] = { name = "The Lord of Blackrock", level = 60, minLevel = 60, map = 1453, x = 80.2, y = 38.4, giver = "Highlord Bolvar Fordragon", faction = "Alliance", pre = { 7781 }, turnin = { 1453, 71.5, 80.5 } }
Q[7784] = { name = "The Lord of Blackrock", level = 60, minLevel = 60, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", faction = "Horde", pre = { 7783 }, turnin = { 1454, 51.0, 75.7 } }
Q[7795] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1453, x = 53.9, y = 81.7, giver = "Clavicus Knavingham", faction = "Alliance", pre = { 7791, 7793, 7794 }, turnin = { 1453, 53.9, 81.7 } }
Q[7800] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1457, x = 64.0, y = 23, giver = "Raedon Duskstriker", faction = "Alliance", pre = { 7792, 7798, 7799 }, turnin = { 1457, 64.0, 23 } }
Q[7805] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1455, x = 43.2, y = 31.6, giver = "Mistina Steelshield", faction = "Alliance", pre = { 7802, 7803, 7804 }, turnin = { 1455, 43.2, 31.6 } }
Q[7811] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1455, x = 74.1, y = 48.2, giver = "Bubulo Acerbus", faction = "Alliance", pre = { 7807, 7808, 7809 }, turnin = { 1455, 74.1, 48.2 } }
Q[7815] = { name = "Snapjaws, Mon!", level = 50, minLevel = 44, map = 1425, x = 80.3, y = 81.5, giver = "Katoom the Angler", faction = "Horde", turnin = { 1425, 80.3, 81.5 } }
Q[7816] = { name = "Gammerita, Mon!", level = 48, minLevel = 44, map = 1425, x = 80.3, y = 81.5, giver = "Katoom the Angler", faction = "Horde", group = true, turnin = { 1425, 80.3, 81.5 } }
Q[7818] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1458, x = 71.7, y = 29.2, giver = "Ralston Farnsley", faction = "Horde", pre = { 7813, 7814, 7817 }, turnin = { 1458, 71.7, 29.2 } }
Q[7823] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1456, x = 43.0, y = 42.7, giver = "Rumstag Proudstrider", faction = "Horde", pre = { 7820, 7821, 7822 }, turnin = { 1456, 43.0, 42.7 } }
Q[7824] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1454, x = 63.6, y = 51.2, giver = "Rashona Straglash", faction = "Horde", pre = { 7826, 7827, 7831 }, turnin = { 1454, 63.6, 51.2 } }
Q[7828] = { name = "Stalking the Stalkers", level = 48, minLevel = 44, map = 1425, x = 79.2, y = 79.5, giver = "Huntsman Markhor", faction = "Horde", turnin = { 1425, 79.2, 79.5 } }
Q[7829] = { name = "Hunt the Savages", level = 48, minLevel = 44, map = 1425, x = 79.2, y = 79.5, giver = "Huntsman Markhor", faction = "Horde", turnin = { 1425, 79.2, 79.5 } }
Q[7830] = { name = "Avenging the Fallen", level = 48, minLevel = 44, map = 1425, x = 79.2, y = 79.5, giver = "Huntsman Markhor", faction = "Horde", turnin = { 1425, 79.2, 79.5 } }
Q[7836] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1454, x = 37.7, y = 87.9, giver = "Vehena", faction = "Horde", pre = { 7833, 7834, 7835 }, turnin = { 1454, 37.7, 87.9 } }
Q[7839] = { name = "Vilebranch Hooligans", level = 48, minLevel = 44, map = 1425, x = 77.2, y = 80.1, giver = "Smith Slagtree", faction = "Horde", turnin = { 1425, 77.2, 80.1 } }
Q[7840] = { name = "Lard Lost His Lunch", level = 49, minLevel = 44, map = 1425, x = 78.1, y = 81.4, giver = "Lard", faction = "Horde", turnin = { 1425, 78.1, 81.4 } }
Q[7841] = { name = "Message to the Wildhammer", level = 48, minLevel = 44, map = 1425, x = 79.4, y = 79.1, giver = "Otho Moji'ko", faction = "Horde", turnin = { 1425, 79.4, 79.1 } }
Q[7842] = { name = "Another Message to the Wildhammer", level = 48, minLevel = 44, map = 1425, x = 79.4, y = 79.1, giver = "Otho Moji'ko", faction = "Horde", pre = { 7841 }, turnin = { 1425, 79.4, 79.1 } }
Q[7843] = { name = "The Final Message to the Wildhammer", level = 50, minLevel = 44, map = 1425, x = 79.4, y = 79.1, giver = "Otho Moji'ko", faction = "Horde", pre = { 7842 }, turnin = { 1425, 79.4, 79.1 } }
Q[7844] = { name = "Cannibalistic Cousins", level = 48, minLevel = 44, map = 1425, x = 78.8, y = 78.2, giver = "Mystic Yayo'jin", faction = "Horde", turnin = { 1425, 78.8, 78.2 } }
Q[7845] = { name = "Kidnapped Elder Torntusk!", level = 51, minLevel = 46, map = 1425, x = 78.2, y = 81.2, giver = "Primal Torntusk", faction = "Horde", turnin = { 1425, 59.7, 77.8 } }
Q[7846] = { name = "Recover the Key!", level = 51, minLevel = 46, map = 1425, x = 59.7, y = 77.8, giver = "Elder Torntusk", faction = "Horde", pre = { 7845 }, group = true, turnin = { 1425, 59.7, 77.8 } }
Q[7847] = { name = "Return to Primal Torntusk", level = 51, minLevel = 46, map = 1425, x = 59.7, y = 77.8, giver = "Elder Torntusk", faction = "Horde", pre = { 7846 }, turnin = { 1425, 78.2, 81.2 } }
Q[7849] = { name = "Separation Anxiety", level = 50, minLevel = 46, map = 1425, x = 79.2, y = 79.5, giver = "Huntsman Markhor", faction = "Horde", turnin = { 1425, 79.2, 79.5 } }
Q[7850] = { name = "Dark Vessels", level = 50, minLevel = 46, map = 1425, x = 78.2, y = 81.2, giver = "Primal Torntusk", faction = "Horde", turnin = { 1425, 78.2, 81.2 } }
Q[7861] = { name = "Wanted: Vile Priestess Hexx and Her Minions", level = 51, minLevel = 46, map = 1425, x = 79.1, y = 79.0, giver = "Call to Arms!", faction = "Horde", group = true, turnin = { 1425, 78.2, 81.2 } }
Q[7862] = { name = "Job Opening: Guard Captain of Revantusk Village", level = 51, minLevel = 46, map = 1425, x = 79.1, y = 79.0, giver = "Call to Arms!", faction = "Horde", group = true, turnin = { 1425, 78.2, 81.2 } }
Q[8151] = { name = "The Hunter's Charm", level = 52, minLevel = 50, map = 1456, x = 57.3, y = 89.8, giver = "Holt Thunderhorn", alliance = { map = 1457, x = 42.2, y = 7.3, giver = "Dorion" }, class = { HUNTER = true }, turnin = { 1447, 42.4, 42.6 } }
Q[8153] = { name = "Courser Antlers", level = 52, minLevel = 50, map = 1447, x = 42.4, y = 42.6, giver = "Ogtinc", pre = { 8151 }, class = { HUNTER = true }, turnin = { 1447, 42.4, 42.6 } }
Q[8231] = { name = "Wavethrashing", level = 52, minLevel = 50, map = 1447, x = 42.4, y = 42.6, giver = "Ogtinc", pre = { 8153 }, class = { HUNTER = true }, turnin = { 1447, 42.4, 42.6 } }
Q[8232] = { name = "The Green Drake", level = 52, minLevel = 50, map = 1447, x = 42.4, y = 42.6, giver = "Ogtinc", pre = { 8231 }, class = { HUNTER = true }, group = true, turnin = { 1447, 42.4, 42.6 } }
Q[8233] = { name = "A Simple Request", level = 52, minLevel = 50, map = 1454, x = 43.9, y = 54.6, giver = "Ormok", alliance = { map = 1453, x = 77.4, y = 65.3, giver = "Osborne the Night Man" }, class = { ROGUE = true }, turnin = { 1416, 86.0, 78.9 } }
Q[8234] = { name = "Sealed Azure Bag", level = 52, minLevel = 50, map = 1416, x = 86.0, y = 78.9, giver = "Lord Jorach Ravenholdt", class = { ROGUE = true }, turnin = { 1447, 29.2, 40.2 } }
Q[8235] = { name = "Encoded Fragments", level = 52, minLevel = 50, map = 1447, x = 29.2, y = 40.2, giver = "Archmage Xylem", pre = { 8234 }, class = { ROGUE = true }, turnin = { 1447, 29.2, 40.2 } }
Q[8236] = { name = "The Azure Key", level = 52, minLevel = 50, map = 1447, x = 29.2, y = 40.2, giver = "Archmage Xylem", pre = { 8235 }, class = { ROGUE = true }, group = true, turnin = { 1416, 86.0, 78.9 } }
Q[8250] = { name = "Magecraft", level = 52, minLevel = 50, map = 1456, x = 22.8, y = 14.5, giver = "Archmage Shymm", alliance = { map = 1453, x = 49.2, y = 87.8, giver = "Maginor Dumas" }, class = { MAGE = true }, turnin = { 1447, 28.1, 50.1 } }
Q[8251] = { name = "Magic Dust", level = 52, minLevel = 50, map = 1447, x = 29.2, y = 40.2, giver = "Archmage Xylem", class = { MAGE = true }, turnin = { 1447, 29.2, 40.2 } }
Q[8252] = { name = "The Siren's Coral", level = 52, minLevel = 50, map = 1447, x = 29.2, y = 40.2, giver = "Archmage Xylem", pre = { 8251 }, class = { MAGE = true }, turnin = { 1447, 29.2, 40.2 } }
Q[8253] = { name = "Destroy Morphaz", level = 52, minLevel = 50, map = 1447, x = 29.2, y = 40.2, giver = "Archmage Xylem", pre = { 8252 }, class = { MAGE = true }, group = true, turnin = { 1447, 29.2, 40.2 } }
Q[8254] = { name = "Cenarion Aid", level = 52, minLevel = 50, map = 1456, x = 24.6, y = 22.6, giver = "Malakai Cross", alliance = { map = 1453, x = 49.5, y = 45.2, giver = "Brother Joshua" }, class = { PRIEST = true }, turnin = { 1447, 42.4, 42.6 } }
Q[8255] = { name = "Of Coursers We Know", level = 52, minLevel = 50, map = 1447, x = 42.4, y = 42.6, giver = "Ogtinc", pre = { 8254 }, class = { PRIEST = true }, turnin = { 1447, 42.4, 42.6 } }
Q[8256] = { name = "The Ichor of Undeath", level = 52, minLevel = 50, map = 1447, x = 42.4, y = 42.6, giver = "Ogtinc", pre = { 8255 }, class = { PRIEST = true }, group = true, turnin = { 1447, 42.4, 42.6 } }
Q[8257] = { name = "Blood of Morphaz", level = 52, minLevel = 50, map = 1447, x = 42.4, y = 42.6, giver = "Ogtinc", pre = { 8256 }, class = { PRIEST = true }, group = true, turnin = { 1448, 51.2, 82.1 } }
Q[8258] = { name = "The Darkreaver Menace", level = 60, minLevel = 60, map = 1454, x = 38.7, y = 35.9, giver = "Sagorne Creststrider", faction = "Horde", pre = { 7667 }, class = { SHAMAN = true }, group = true, turnin = { 1454, 38.7, 35.9 } }
Q[8273] = { name = "Oran's Gratitude", level = 47, minLevel = 42, map = 1458, x = 73.1, y = 32.9, giver = "Oran Snakewrithe", faction = "Horde", pre = { 2782 }, turnin = { 1458, 73.1, 32.9 } }
Q[8275] = { name = "Taking Back Silithus", level = 55, minLevel = 54, map = 1455, x = 58.5, y = 47.3, giver = "Cenarion Emissary Jademoon", faction = "Alliance", turnin = { 1451, 51.1, 38.3 } }
Q[8276] = { name = "Taking Back Silithus", level = 55, minLevel = 54, map = 1454, x = 47.6, y = 65.8, giver = "Cenarion Emissary Blackhoof", faction = "Horde", turnin = { 1451, 51.1, 38.3 } }
Q[8277] = { name = "Deadly Desert Venom", level = 55, minLevel = 54, map = 1451, x = 51.6, y = 38.6, giver = "Beetix Ficklespragg", turnin = { 1451, 51.6, 38.6 } }
Q[8278] = { name = "Noggle's Last Hope", level = 57, minLevel = 54, map = 1451, x = 51.6, y = 38.6, giver = "Beetix Ficklespragg", pre = { 8277 }, turnin = { 1451, 51.6, 38.6 } }
Q[8279] = { name = "The Twilight Lexicon", level = 60, minLevel = 54, map = 1451, x = 67.2, y = 69.8, giver = "Hermit Ortell", pre = { 8285 }, turnin = { 1451, 67.2, 69.8 } }
Q[8280] = { name = "Securing the Supply Lines", level = 55, minLevel = 54, map = 1451, x = 51.1, y = 38.3, giver = "Windcaller Proudhorn", turnin = { 1451, 51.1, 38.3 } }
Q[8281] = { name = "Stepping Up Security", level = 57, minLevel = 54, map = 1451, x = 51.1, y = 38.3, giver = "Windcaller Proudhorn", pre = { 8280 }, turnin = { 1451, 51.1, 38.3 } }
Q[8282] = { name = "Noggle's Lost Satchel", level = 58, minLevel = 54, map = 1451, x = 51.6, y = 38.5, giver = "Noggle Ficklespragg", pre = { 8278 }, turnin = { 1451, 51.6, 38.5 } }
Q[8283] = { name = "Wanted - Deathclasp, Terror of the Sands", level = 59, minLevel = 54, map = 1451, x = 51.4, y = 38.3, giver = "Wanted Poster: Deathclasp", group = true, turnin = { 1451, 50.8, 33.6 } }
Q[8284] = { name = "The Twilight Mystery", level = 58, minLevel = 54, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", turnin = { 1451, 49.7, 37.5 } }
Q[8285] = { name = "The Deserter", level = 59, minLevel = 54, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8284 }, turnin = { 1451, 67.2, 69.8 } }
Q[8286] = { name = "What Tomorrow Brings", level = 60, minLevel = 60, map = 1451, x = 49.5, y = 36.5, giver = "Baristolth of the Shifting Sands", group = true, turnin = { 1451, 49.5, 36.5 } }
Q[8287] = { name = "A Terrible Purpose", level = 60, minLevel = 54, map = 1451, x = 67.2, y = 69.8, giver = "Hermit Ortell", pre = { 8279 }, turnin = { 1451, 49.2, 34.2 } }
Q[8301] = { name = "The Path of the Righteous", level = 60, minLevel = 60, map = 1451, x = 49.5, y = 36.5, giver = "Baristolth of the Shifting Sands", pre = { 8288 }, group = true, turnin = { 1451, 49.5, 36.5 } }
Q[8303] = { name = "Anachronos", level = 60, minLevel = 60, map = 1451, x = 49.5, y = 36.5, giver = "Baristolth of the Shifting Sands", pre = { 8301 }, turnin = { 1446, 65.3, 50.0 } }
Q[8304] = { name = "Dearest Natalia", level = 60, minLevel = 58, map = 1451, x = 49.2, y = 34.2, giver = "Commander Mar'alith", turnin = { 1451, 49.2, 34.2 } }
Q[8305] = { name = "Long Forgotten Memories", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8303 }, turnin = { 1451, 28.7, 89.1 } }
Q[8306] = { name = "Into The Maw of Madness", level = 60, minLevel = 58, map = 1451, x = 49.2, y = 34.2, giver = "Commander Mar'alith", pre = { 8304 }, group = true, turnin = { 1451, 49.2, 34.2 } }
Q[8308] = { name = "Brann Bronzebeard's Lost Letter", level = 60, minLevel = 58, map = 1451, x = 36.7, y = 63.2, giver = "Drop: Brann Bronzebeard's Lost Letter", turnin = { 1451, 41.3, 88.5 } }
Q[8309] = { name = "Glyph Chasing", level = 60, minLevel = 58, map = 1451, x = 41.3, y = 88.5, giver = "Rutgar Glyphshaper", pre = { 8304 }, turnin = { 1451, 41.3, 88.5 } }
Q[8310] = { name = "Breaking the Code", level = 60, minLevel = 58, map = 1451, x = 40.8, y = 88.9, giver = "Frankal Stonebridge", pre = { 8304 }, group = true, turnin = { 1451, 40.8, 88.9 } }
Q[8314] = { name = "Unraveling the Mystery", level = 60, minLevel = 58, map = 1451, x = 41.3, y = 88.5, giver = "Rutgar Glyphshaper", pre = { 8309, 8310 }, turnin = { 1451, 49.7, 37.5 } }
Q[8315] = { name = "The Calling", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8314 }, group = true, turnin = { 1451, 49.7, 37.5 } }
Q[8316] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { WARRIOR = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8318] = { name = "Secret Communication", level = 60, minLevel = 57, map = 1451, x = 48.6, y = 37.8, giver = "Bor Wildmane", group = true, turnin = { 1451, 48.6, 37.8 } }
Q[8320] = { name = "Twilight Geolords", level = 60, minLevel = 60, map = 1451, x = 48.6, y = 37.9, giver = "Huum Wildmane", turnin = { 1451, 48.6, 37.9 } }
Q[8321] = { name = "Vyral the Vile", level = 60, minLevel = 60, map = 1451, x = 48.6, y = 37.9, giver = "Huum Wildmane", pre = { 8320 }, turnin = { 1451, 48.6, 37.9 } }
Q[8323] = { name = "True Believers", level = 59, minLevel = 54, map = 1451, x = 67.2, y = 69.8, giver = "Hermit Ortell", pre = { 8279 }, group = true, turnin = { 1451, 67.2, 69.8 } }
Q[8331] = { name = "Aurel Goldleaf", level = 60, minLevel = 60, map = 1451, x = 48.6, y = 37.9, giver = "Huum Wildmane", turnin = { 1451, 52.0, 38.2 } }
Q[8332] = { name = "Dukes of the Council", level = 60, minLevel = 60, map = 1451, x = 52.0, y = 38.2, giver = "Aurel Goldleaf", group = true, turnin = { 1451, 52.0, 38.2 } }
Q[8341] = { name = "Lords of the Council", level = 60, minLevel = 60, map = 1451, x = 52.0, y = 38.2, giver = "Aurel Goldleaf", group = true, turnin = { 1451, 52.0, 38.2 } }
Q[8343] = { name = "Goldleaf's Discovery", level = 60, minLevel = 60, map = 1451, x = 48.6, y = 37.9, giver = "Huum Wildmane", turnin = { 1451, 52.0, 38.2 } }
Q[8348] = { name = "Signet of the Dukes", level = 60, minLevel = 60, map = 1451, x = 48.6, y = 37.8, giver = "Bor Wildmane", pre = { 8332 }, group = true, turnin = { 1451, 48.6, 37.8 } }
Q[8349] = { name = "Bor Wildmane", level = 60, minLevel = 60, map = 1451, x = 52.0, y = 38.2, giver = "Aurel Goldleaf", pre = { 8332 }, turnin = { 1451, 48.6, 37.8 } }
Q[8351] = { name = "Bor Wishes to Speak", level = 60, minLevel = 60, map = 1451, x = 52.0, y = 38.2, giver = "Aurel Goldleaf", pre = { 8341 }, turnin = { 1451, 48.6, 37.8 } }
Q[8352] = { name = "Scepter of the Council", level = 60, minLevel = 60, map = 1451, x = 48.6, y = 37.8, giver = "Bor Wildmane", pre = { 8341 }, group = true, turnin = { 1451, 48.6, 37.8 } }
Q[8361] = { name = "Abyssal Contacts", level = 60, minLevel = 60, map = 1451, x = 48.6, y = 37.8, giver = "Bor Wildmane", group = true, turnin = { 1451, 48.6, 37.8 } }
Q[8365] = { name = "Pirate Hats Ahoy!", level = 45, minLevel = 40, map = 1446, x = 66.6, y = 22.3, giver = "Haughty Modiste", turnin = { 1446, 66.6, 22.3 } }
Q[8366] = { name = "Southsea Shakedown", level = 45, minLevel = 40, map = 1446, x = 67.1, y = 23.9, giver = "Security Chief Bilgewhizzle", turnin = { 1446, 67.1, 23.9 } }
Q[8367] = { name = "For Great Honor", level = 60, minLevel = 51, map = 1416, x = 63.1, y = 59.9, giver = "Horde Warbringer", faction = "Horde", turnin = { 1416, 63.1, 59.9 } }
Q[8371] = { name = "Concerted Efforts", level = 60, minLevel = 51, map = 1416, x = 39.3, y = 82.3, giver = "Alliance Brigadier General", faction = "Alliance", turnin = { 1416, 39.3, 82.3 } }
Q[8376] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", faction = "Alliance", pre = { 8315 }, class = { PALADIN = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8377] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { HUNTER = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8378] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { ROGUE = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8379] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { PRIEST = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8380] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", faction = "Horde", pre = { 8315 }, class = { SHAMAN = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8381] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { MAGE = true, WARLOCK = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8382] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { DRUID = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8410] = { name = "Elemental Mastery", level = 50, minLevel = 50, map = 1456, x = 22.0, y = 18.8, giver = "Beram Skychaser", faction = "Horde", class = { SHAMAN = true }, group = true, turnin = { 1416, 80.5, 66.9 } }
Q[8411] = { name = "Mastering the Elements", level = 50, minLevel = 50, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", faction = "Horde", class = { SHAMAN = true }, group = true, turnin = { 1416, 80.5, 66.9 } }
Q[8412] = { name = "Spirit Totem", level = 52, minLevel = 50, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", faction = "Horde", class = { SHAMAN = true }, turnin = { 1416, 80.5, 66.9 } }
Q[8413] = { name = "Da Voodoo", level = 52, minLevel = 50, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", faction = "Horde", pre = { 8412 }, class = { SHAMAN = true }, group = true, turnin = { 1416, 80.5, 66.9 } }
Q[8414] = { name = "Dispelling Evil", level = 52, minLevel = 50, map = 1422, x = 42.7, y = 84.0, giver = "Commander Ashlam Valorfist", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, group = true, turnin = { 1422, 52.0, 83.3 } }
Q[8415] = { name = "Chillwind Point", level = 52, minLevel = 50, map = 1453, x = 48.4, y = 50.2, giver = "Lord Grayson Shadowbreaker", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1422, 42.7, 84.0 } }
Q[8416] = { name = "Inert Scourgestones", level = 52, minLevel = 50, map = 1422, x = 52.0, y = 83.3, giver = "High Priest Thel'danis", faction = "Alliance", pre = { 8414 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1422, 42.7, 84.0 } }
Q[8417] = { name = "A Troubled Spirit", level = 50, minLevel = 50, map = 1456, x = 57.2, y = 87.4, giver = "Torm Ragetotem", alliance = { map = 1455, x = 70.3, y = 90.7, giver = "Kelv Sternhammer" }, class = { WARRIOR = true }, turnin = { 1435, 34.3, 66.1 } }
Q[8418] = { name = "Forging the Mightstone", level = 52, minLevel = 50, map = 1422, x = 42.7, y = 84.0, giver = "Commander Ashlam Valorfist", faction = "Alliance", pre = { 8416 }, race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, group = true, turnin = { 1422, 42.7, 84.0 } }
Q[8419] = { name = "An Imp's Request", level = 52, minLevel = 50, map = 1454, x = 48.5, y = 45.4, giver = "Zevrost", alliance = { map = 1453, x = 39.2, y = 85.0, giver = "Demisette Cloyce" }, class = { WARLOCK = true }, group = true, turnin = { 1448, 41.4, 45.0 } }
Q[8420] = { name = "Hot and Itchy", level = 52, minLevel = 50, map = 1448, x = 41.4, y = 45.0, giver = "Impsy", class = { WARLOCK = true }, group = true, turnin = { 1448, 41.4, 45.0 } }
Q[8421] = { name = "The Wrong Stuff", level = 52, minLevel = 50, map = 1448, x = 41.4, y = 45.0, giver = "Impsy", class = { WARLOCK = true }, turnin = { 1448, 41.4, 45.0 } }
Q[8422] = { name = "Trolls of a Feather", level = 52, minLevel = 50, map = 1448, x = 41.4, y = 45.0, giver = "Impsy", pre = { 8421 }, class = { WARLOCK = true }, group = true, turnin = { 1448, 41.4, 45.0 } }
Q[8423] = { name = "Warrior Kinship", level = 52, minLevel = 50, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", class = { WARRIOR = true }, turnin = { 1435, 34.3, 66.1 } }
Q[8424] = { name = "War on the Shadowsworn", level = 52, minLevel = 50, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", pre = { 8423 }, class = { WARRIOR = true }, turnin = { 1435, 34.3, 66.1 } }
Q[8425] = { name = "Voodoo Feathers", level = 52, minLevel = 50, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", pre = { 8424 }, class = { WARRIOR = true }, group = true, turnin = { 1435, 34.3, 66.1 } }
Q[8460] = { name = "Timbermaw Ally", level = 48, minLevel = 45, map = 1448, x = 50.9, y = 85.0, giver = "Grazle", turnin = { 1448, 50.9, 85.0 } }
Q[8461] = { name = "Deadwood of the North", level = 55, minLevel = 45, map = 1448, x = 64.8, y = 8.1, giver = "Nafien", turnin = { 1448, 64.8, 8.1 } }
Q[8462] = { name = "Speak to Nafien", level = 55, minLevel = 45, map = 1448, x = 50.9, y = 85.0, giver = "Grazle", pre = { 8460 }, turnin = { 1448, 64.8, 8.1 } }
Q[8465] = { name = "Speak to Salfa", level = 55, minLevel = 45, map = 1448, x = 64.8, y = 8.1, giver = "Nafien", pre = { 8461 }, turnin = { 1452, 27.7, 34.5 } }
Q[8470] = { name = "Deadwood Ritual Totem", level = 55, minLevel = 45, map = 1448, x = 62.3, y = 9.2, giver = "Drop: Deadwood Ritual Totem", turnin = { 1448, 65.5, 3.5 } }
Q[8471] = { name = "Winterfall Ritual Totem", level = 56, minLevel = 50, map = 1452, x = 40.8, y = 43.8, giver = "Drop: Winterfall Ritual Totem", turnin = { 1448, 65.5, 3.5 } }
Q[8519] = { name = "A Pawn on the Eternal Board", level = 60, minLevel = 60, map = 1451, x = 28.7, y = 89.1, giver = "Crystalline Tear", pre = { 8305 }, turnin = { 1446, 65.3, 50.0 } }
Q[8551] = { name = "The Captain's Chest", level = 47, minLevel = 35, map = 1434, x = 26.7, y = 73.6, giver = "Captain Hecklebury Smotts", group = true, turnin = { 1434, 26.7, 73.6 } }
Q[8553] = { name = "The Captain's Cutlass", level = 50, minLevel = 40, map = 1434, x = 26.7, y = 73.6, giver = "Captain Hecklebury Smotts", pre = { 8552 }, turnin = { 1434, 26.7, 73.6 } }
Q[8554] = { name = "Facing Negolash", level = 50, minLevel = 40, map = 1434, x = 26.7, y = 73.6, giver = "Sprogger", pre = { 8553 }, group = true, turnin = { 1434, 26.7, 73.6 } }
Q[8555] = { name = "The Charge of the Dragonflights", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8519 }, turnin = { 1446, 65.3, 50.0 } }
Q[8575] = { name = "Azuregos's Magical Ledger", level = 60, minLevel = 60, map = 1447, x = 53.0, y = 81.7, giver = "Spirit of Azuregos", pre = { 8555 }, turnin = { 1446, 65.2, 18.6 } }
Q[8576] = { name = "Translating the Ledger", level = 60, minLevel = 60, map = 1446, x = 65.2, y = 18.6, giver = "Narain Soothfancy", pre = { 8575 }, turnin = { 1446, 65.2, 18.6 } }
Q[8577] = { name = "Stewvul, Ex-B.F.F.", level = 60, minLevel = 60, map = 1446, x = 65.2, y = 18.6, giver = "Narain Soothfancy", pre = { 8576 }, turnin = { 1421, 46.2, 86.7 } }
Q[8584] = { name = "Never Ask Me About My Business", level = 60, minLevel = 60, map = 1446, x = 65.2, y = 18.6, giver = "Narain Soothfancy", pre = { 8576 }, turnin = { 1446, 52.6, 28.1 } }
Q[8585] = { name = "The Isle of Dread!", level = 60, minLevel = 60, map = 1446, x = 52.6, y = 28.1, giver = "Dirge Quikcleave", pre = { 8584 }, group = true, turnin = { 1446, 52.6, 28.1 } }
Q[8586] = { name = "Dirge's Kickin' Chimaerok Chops", level = 60, minLevel = 60, map = 1446, x = 52.6, y = 28.1, giver = "Dirge Quikcleave", pre = { 8585 }, group = true, turnin = { 1446, 52.6, 28.1 } }
Q[8587] = { name = "Return to Narain", level = 60, minLevel = 60, map = 1446, x = 52.6, y = 28.1, giver = "Dirge Quikcleave", pre = { 8586 }, turnin = { 1446, 65.2, 18.6 } }
Q[8597] = { name = "Draconic for Dummies", level = 60, minLevel = 60, map = 1446, x = 65.2, y = 18.6, giver = "Narain Soothfancy", pre = { 8576 }, turnin = { 947, 30.0, 89.2 } }
Q[8598] = { name = "rAnS0m", level = 60, minLevel = 60, map = 947, x = 30.0, y = 89.2, giver = "Freshly Dug Dirt", pre = { 8597 }, turnin = { 1446, 65.2, 18.6 } }
Q[8599] = { name = "Love Song for Narain", level = 60, minLevel = 60, map = 1446, x = 59.4, y = 96.0, giver = "Meridith the Mermaiden", turnin = { 1446, 65.2, 18.6 } }
Q[8606] = { name = "Decoy!", level = 60, minLevel = 60, map = 1446, x = 65.2, y = 18.6, giver = "Narain Soothfancy", pre = { 8598 }, group = true, turnin = { 1446, 65.2, 18.6 } }
Q[8620] = { name = "The Only Prescription", level = 60, minLevel = 60, map = 1446, x = 65.2, y = 18.6, giver = "Narain Soothfancy", pre = { 8606 }, turnin = { 1446, 65.2, 18.6 } }
Q[8728] = { name = "The Good News and The Bad News", level = 60, minLevel = 60, map = 1446, x = 65.2, y = 18.6, giver = "Narain Soothfancy", pre = { 8578, 8587, 8620 }, group = true, turnin = { 1446, 65.2, 18.6 } }
Q[8729] = { name = "The Wrath of Neptulon", level = 60, minLevel = 60, map = 1446, x = 65.2, y = 18.6, giver = "Narain Soothfancy", pre = { 8728 }, group = true, turnin = { 1446, 65.3, 50.0 } }
Q[8734] = { name = "Tyrande and Remulos", level = 60, minLevel = 60, map = 1438, x = 37.5, y = 47.9, giver = "Forest Wisp", pre = { 8733 }, turnin = { 1450, 36.2, 41.8 } }
Q[8735] = { name = "The Nightmare's Corruption", level = 60, minLevel = 60, map = 1450, x = 36.2, y = 41.8, giver = "Keeper Remulos", pre = { 8734 }, group = true, turnin = { 1450, 36.2, 41.8 } }
Q[8736] = { name = "The Nightmare Manifests", level = 60, minLevel = 60, map = 1450, x = 36.2, y = 41.8, giver = "Keeper Remulos", pre = { 8735 }, turnin = { 1450, 36.2, 41.8 } }
Q[8741] = { name = "The Champion Returns", level = 60, minLevel = 60, map = 1450, x = 36.2, y = 41.8, giver = "Keeper Remulos", pre = { 8736 }, turnin = { 1446, 65.3, 50.0 } }
Q[8742] = { name = "The Might of Kalimdor", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8729, 8730, 8741 }, turnin = { 1446, 65.3, 50.0 } }
Q[8743] = { name = "Bang a Gong!", level = 60, minLevel = 60, map = 1451, x = 25.7, y = 90.9, giver = "The Scarab Gong", pre = { 8742 }, turnin = { 1451, 25.7, 90.9 } }
Q[8745] = { name = "Treasure of the Timeless One", level = 60, minLevel = 60, map = 1451, x = 25.9, y = 91.0, giver = "Jonathan the Revelator", pre = { 8742 }, turnin = { 1451, 25.9, 91.0 } }
Q[8747] = { name = "The Path of the Protector", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", turnin = { 1446, 65.3, 50.0 } }
Q[8748] = { name = "The Path of the Protector", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8747 }, turnin = { 1446, 65.3, 50.0 } }
Q[8749] = { name = "The Path of the Protector", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8748 }, turnin = { 1446, 65.3, 50.0 } }
Q[8750] = { name = "The Path of the Protector", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8749 }, turnin = { 1446, 65.3, 50.0 } }
Q[8751] = { name = "The Protector of Kalimdor", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8750 }, turnin = { 1446, 65.3, 50.0 } }
Q[8752] = { name = "The Path of the Conqueror", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", turnin = { 1446, 65.3, 50.0 } }
Q[8753] = { name = "The Path of the Conqueror", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8752 }, turnin = { 1446, 65.3, 50.0 } }
Q[8754] = { name = "The Path of the Conqueror", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8753 }, turnin = { 1446, 65.3, 50.0 } }
Q[8755] = { name = "The Path of the Conqueror", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8754 }, turnin = { 1446, 65.3, 50.0 } }
Q[8756] = { name = "The Qiraji Conqueror", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8755 }, turnin = { 1446, 65.3, 50.0 } }
Q[8757] = { name = "The Path of the Invoker", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", turnin = { 1446, 65.3, 50.0 } }
Q[8758] = { name = "The Path of the Invoker", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8757 }, turnin = { 1446, 65.3, 50.0 } }
Q[8759] = { name = "The Path of the Invoker", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8758 }, turnin = { 1446, 65.3, 50.0 } }
Q[8760] = { name = "The Path of the Invoker", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8759 }, turnin = { 1446, 65.3, 50.0 } }
Q[8761] = { name = "The Grand Invoker", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 8760 }, turnin = { 1446, 65.3, 50.0 } }
Q[8800] = { name = "Cenarion Battlegear", level = 60, minLevel = 60, map = 1451, x = 50.0, y = 36.4, giver = "Windcaller Kaldon", turnin = { 1451, 51.2, 38.9 } }
Q[8857] = { name = "Secrets of the Colossus - Ashi", level = 60, minLevel = 51, map = 1451, x = 49.5, y = 37.2, giver = "Colossus Researcher Nestor", turnin = { 1434, 28.4, 76.3 } }
Q[8858] = { name = "Secrets of the Colossus - Regal", level = 60, minLevel = 51, map = 1451, x = 49.5, y = 37.3, giver = "Colossus Researcher Eazel", turnin = { 1427, 38.1, 27.0 } }
Q[8859] = { name = "Secrets of the Colossus - Zora", level = 60, minLevel = 51, map = 1451, x = 49.5, y = 37.3, giver = "Colossus Researcher Sophia", turnin = { 1423, 71.9, 48.4 } }
Q[8905] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", class = { DRUID = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8906] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", class = { HUNTER = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8907] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", class = { MAGE = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8908] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", class = { PALADIN = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8909] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", class = { PRIEST = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8910] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", class = { ROGUE = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8911] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", class = { WARLOCK = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8912] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", class = { WARRIOR = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8913] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", class = { DRUID = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8914] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", class = { HUNTER = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8915] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", class = { MAGE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8916] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", class = { PRIEST = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8917] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", class = { ROGUE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8918] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", class = { SHAMAN = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8919] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", class = { WARLOCK = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8920] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", class = { WARRIOR = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8921] = { name = "The Ectoplasmic Distiller", level = 60, minLevel = 58, map = 1446, x = 52.5, y = 27.2, giver = "Mux Manascrambler", turnin = { 1446, 52.5, 27.2 } }
Q[8922] = { name = "A Supernatural Device", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", turnin = { 1446, 52.5, 27.2 } }
Q[8923] = { name = "A Supernatural Device", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", turnin = { 1446, 52.5, 27.2 } }
Q[8924] = { name = "Hunting for Ectoplasm", level = 60, minLevel = 58, map = 1446, x = 52.5, y = 27.2, giver = "Mux Manascrambler", pre = { 8921 }, turnin = { 1446, 52.5, 27.2 } }
Q[8925] = { name = "A Portable Power Source", level = 60, minLevel = 58, map = 1446, x = 52.5, y = 27.2, giver = "Mux Manascrambler", pre = { 8924 }, turnin = { 1446, 52.5, 27.2 } }
Q[8926] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8977 }, class = { DRUID = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8927] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8978 }, class = { DRUID = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8928] = { name = "A Shifty Merchant", level = 60, minLevel = 58, map = 1446, x = 52.5, y = 27.2, giver = "Mux Manascrambler", pre = { 8925 }, turnin = { 1446, 52.5, 27.2 } }
Q[8929] = { name = "In Search of Anthion", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", turnin = { 1423, 26.1, 11.3 } }
Q[8930] = { name = "In Search of Anthion", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", turnin = { 1423, 26.1, 11.3 } }
Q[8931] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8977 }, class = { HUNTER = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8932] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8977 }, class = { MAGE = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8933] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8977 }, class = { PALADIN = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8934] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8977 }, class = { PRIEST = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8935] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8977 }, class = { ROGUE = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8936] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8977 }, class = { WARLOCK = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8937] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8977 }, class = { WARRIOR = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8938] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8978 }, class = { HUNTER = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8939] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8978 }, class = { MAGE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8940] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8978 }, class = { PRIEST = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8941] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8978 }, class = { ROGUE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8942] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8978 }, class = { SHAMAN = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8943] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8978 }, class = { WARLOCK = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8944] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8978 }, class = { WARRIOR = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8945] = { name = "Dead Man's Plea", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", dungeon = "Stratholme" }
Q[8947] = { name = "Anthion's Strange Request", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 8946 }, turnin = { 1423, 26.1, 11.3 } }
Q[8948] = { name = "Anthion's Old Friend", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 8947 }, dungeon = "Dire Maul" }
Q[8951] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Alliance", pre = { 9015 }, class = { DRUID = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8952] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Alliance", pre = { 9015 }, class = { HUNTER = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8953] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Alliance", pre = { 9015 }, class = { MAGE = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8954] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Alliance", pre = { 9015 }, class = { PALADIN = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8955] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Alliance", pre = { 9015 }, class = { PRIEST = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8956] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Alliance", pre = { 9015 }, class = { ROGUE = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8957] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Horde", pre = { 9015 }, class = { SHAMAN = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8958] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Alliance", pre = { 9015 }, class = { WARLOCK = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8959] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Alliance", pre = { 9015 }, class = { WARRIOR = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[8960] = { name = "Bodley's Unfortunate Fate", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", turnin = { 1415, 48.9, 63.9 } }
Q[8961] = { name = "Three Kings of Flame", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8962] = { name = "Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8961 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8963] = { name = "Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8961 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8964] = { name = "Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8961 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8965] = { name = "Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8961 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8967] = { name = "The Left Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Dire Maul", turnin = { 1415, 48.9, 63.9 } }
Q[8968] = { name = "The Left Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Stratholme", turnin = { 1415, 48.9, 63.9 } }
Q[8969] = { name = "The Left Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Scholomance", turnin = { 1415, 48.9, 63.9 } }
Q[8970] = { name = "I See Alcaz Island In Your Future...", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8977] = { name = "Return to Deliana", level = 60, minLevel = 58, map = 1446, x = 52.5, y = 27.2, giver = "Mux Manascrambler", faction = "Alliance", pre = { 8928 }, turnin = { 1455, 43.5, 52.6 } }
Q[8978] = { name = "Return to Mokvar", level = 60, minLevel = 58, map = 1446, x = 52.5, y = 27.2, giver = "Mux Manascrambler", faction = "Horde", pre = { 8928 }, turnin = { 1454, 35.0, 38.3 } }
Q[8985] = { name = "More Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8970 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8986] = { name = "More Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8970 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8987] = { name = "More Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8970 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8988] = { name = "More Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8970 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8990] = { name = "The Right Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Dire Maul", turnin = { 1415, 48.9, 63.9 } }
Q[8991] = { name = "The Right Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Stratholme", turnin = { 1415, 48.9, 63.9 } }
Q[8992] = { name = "The Right Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Scholomance", turnin = { 1415, 48.9, 63.9 } }
Q[8994] = { name = "Final Preparations", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8997] = { name = "Back to the Beginning", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", faction = "Alliance", pre = { 8996 }, turnin = { 1455, 43.5, 52.6 } }
Q[8998] = { name = "Back to the Beginning", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", faction = "Horde", pre = { 8996 }, turnin = { 1454, 35.0, 38.3 } }
Q[8999] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8997 }, class = { DRUID = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[9000] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8997 }, class = { HUNTER = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[9001] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8997 }, class = { MAGE = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[9002] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8997 }, class = { PALADIN = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[9003] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8997 }, class = { PRIEST = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[9004] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8997 }, class = { ROGUE = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[9005] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8997 }, class = { WARLOCK = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[9006] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1455, x = 43.5, y = 52.6, giver = "Deliana", faction = "Alliance", pre = { 8997 }, class = { WARRIOR = true }, group = true, turnin = { 1455, 43.5, 52.6 } }
Q[9007] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8998 }, class = { DRUID = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9008] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8998 }, class = { HUNTER = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9009] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8998 }, class = { PRIEST = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9010] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8998 }, class = { ROGUE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9011] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8998 }, class = { SHAMAN = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9012] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8998 }, class = { WARLOCK = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9013] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8998 }, class = { WARRIOR = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9014] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", pre = { 8998 }, class = { MAGE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9016] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Horde", pre = { 9015 }, class = { DRUID = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9017] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Horde", pre = { 9015 }, class = { HUNTER = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9018] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Horde", pre = { 9015 }, class = { MAGE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9019] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Horde", pre = { 9015 }, class = { PRIEST = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9020] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Horde", pre = { 9015 }, class = { ROGUE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9021] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Horde", pre = { 9015 }, class = { WARLOCK = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9022] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", faction = "Horde", pre = { 9015 }, class = { WARRIOR = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9023] = { name = "The Perfect Poison", level = 60, minLevel = 60, map = 1451, x = 52.1, y = 39.1, giver = "Dirk Thunderwood", group = true, turnin = { 1451, 52.1, 39.1 } }
Q[9032] = { name = "Bodley's Unfortunate Fate", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", faction = "Horde", turnin = { 1415, 48.9, 63.9 } }
Q[9051] = { name = "Toxic Test", level = 52, minLevel = 50, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", pre = { 9052 }, class = { DRUID = true }, turnin = { 1449, 71.6, 76.0 } }
Q[9052] = { name = "Bloodpetal Poison", level = 52, minLevel = 50, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", class = { DRUID = true }, turnin = { 1449, 71.6, 76.0 } }
Q[9053] = { name = "A Better Ingredient", level = 52, minLevel = 50, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", pre = { 9051 }, class = { DRUID = true }, group = true, turnin = { 1449, 71.6, 76.0 } }
Q[9063] = { name = "Torwa Pathfinder", level = 52, minLevel = 50, map = 1456, x = 76.5, y = 27.2, giver = "Turak Runetotem", alliance = { map = 1457, x = 35.4, y = 8.4, giver = "Mathrengyl Bearwalker" }, class = { DRUID = true }, turnin = { 1449, 71.6, 76.0 } }
Q[9121] = { name = "The Dread Citadel - Naxxramas", level = 60, minLevel = 60, map = 1423, x = 71.7, y = 48.7, giver = "Archmage Angela Dosantos", group = true, turnin = { 1423, 71.7, 48.7 } }
Q[9122] = { name = "The Dread Citadel - Naxxramas", level = 60, minLevel = 60, map = 1423, x = 71.7, y = 48.7, giver = "Archmage Angela Dosantos", turnin = { 1423, 71.7, 48.7 } }
Q[9123] = { name = "The Dread Citadel - Naxxramas", level = 60, minLevel = 60, map = 1423, x = 71.7, y = 48.7, giver = "Archmage Angela Dosantos", turnin = { 1423, 71.7, 48.7 } }
Q[9124] = { name = "Cryptstalker Armor Doesn't Make Itself...", level = 60, minLevel = 55, map = 1423, x = 71.7, y = 48.9, giver = "Huntsman Leopold", group = true, turnin = { 1423, 71.7, 48.9 } }
Q[9126] = { name = "Bonescythe Digs", level = 60, minLevel = 55, map = 1423, x = 71.6, y = 48.9, giver = "Rohan the Assassin", group = true, turnin = { 1423, 71.6, 48.9 } }
Q[9128] = { name = "The Elemental Equation", level = 60, minLevel = 55, map = 1423, x = 71.7, y = 48.7, giver = "Archmage Angela Dosantos", group = true, turnin = { 1423, 71.7, 48.7 } }
Q[9131] = { name = "Binding the Dreadnaught", level = 60, minLevel = 55, map = 1423, x = 72.0, y = 48.5, giver = "Korfax, Champion of the Light", group = true, turnin = { 1423, 72.0, 48.5 } }
Q[9136] = { name = "Savage Flora", level = 60, minLevel = 55, map = 1423, x = 71.4, y = 49.4, giver = "Rayne", group = true, turnin = { 1423, 71.4, 49.4 } }
Q[9141] = { name = "They Call Me \"The Rooster\"", level = 60, minLevel = 55, map = 1423, x = 71.3, y = 48.0, giver = "Dispatch Commander Metz", turnin = { 1423, 71.3, 48.0 } }
Q[9248] = { name = "A Humble Offering", level = 60, minLevel = 58, map = 1451, x = 52.0, y = 38.2, giver = "Aurel Goldleaf", group = true, turnin = { 1451, 52.0, 38.2 } }
Q[9257] = { name = "Atiesh, Greatstaff of the Guardian", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 9251 }, class = { PRIEST = true }, group = true, turnin = { 1446, 65.3, 50.0 } }
Q[9269] = { name = "Atiesh, Greatstaff of the Guardian", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 9251 }, class = { DRUID = true }, group = true, turnin = { 1446, 65.3, 50.0 } }
Q[9270] = { name = "Atiesh, Greatstaff of the Guardian", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 9251 }, class = { MAGE = true }, group = true, turnin = { 1446, 65.3, 50.0 } }
Q[9271] = { name = "Atiesh, Greatstaff of the Guardian", level = 60, minLevel = 60, map = 1446, x = 65.3, y = 50.0, giver = "Anachronos", pre = { 9251 }, class = { WARLOCK = true }, group = true, turnin = { 1446, 65.3, 50.0 } }
Q[9272] = { name = "Dressing the Part", level = 55, minLevel = 49, map = 1434, x = 30.6, y = 90.6, giver = "Fleet Master Firallon", turnin = { 1434, 30.6, 90.6 } }
Q[9362] = { name = "Warlord Krellian", level = 60, minLevel = 60, map = 1447, x = 29.2, y = 40.2, giver = "Archmage Xylem", class = { MAGE = true }, group = true, turnin = { 1447, 29.2, 40.2 } }
Q[9364] = { name = "Fragmented Magic", level = 60, minLevel = 60, map = 1447, x = 29.2, y = 40.2, giver = "Archmage Xylem", pre = { 9362 }, class = { MAGE = true }, turnin = { 1447, 29.2, 40.2 } }
Q[9664] = { name = "Establishing New Outposts", level = 60, minLevel = 55, map = 1423, x = 71.5, y = 49.7, giver = "Emmisary Whitebeard", faction = "Alliance", turnin = { 1423, 71.5, 49.7 } }
Q[9665] = { name = "Bolstering Our Defenses", level = 60, minLevel = 55, map = 1423, x = 70.4, y = 47.9, giver = "Emmisary Gormok", faction = "Horde", turnin = { 1423, 70.4, 47.9 } }
Q[65593] = { name = "Hearts of the Lovers", level = 20, minLevel = 20, map = 1458, x = 84.8, y = 14.8, giver = "Godrick Farsan", faction = "Horde", pre = { 1472 }, class = { WARLOCK = true }, turnin = { 1458, 85.1, 26.0 } }
Q[65597] = { name = "The Binding", level = 20, minLevel = 20, map = 1458, x = 85.1, y = 26.0, giver = "Carendin Halgar", faction = "Horde", pre = { 65593 }, class = { WARLOCK = true }, turnin = { 1458, 85.1, 26.0 } }
Q[65601] = { name = "Love Hurts", level = 20, minLevel = 20, map = 1454, x = 47.1, y = 46.4, giver = "Cazul", faction = "Horde", pre = { 1507 }, class = { WARLOCK = true }, turnin = { 1454, 63.6, 49.9 } }
Q[65602] = { name = "What Is Love?", level = 20, minLevel = 20, map = 1413, x = 49.3, y = 57.1, giver = "Takar the Seer", faction = "Alliance", pre = { 1716 }, class = { WARLOCK = true }, turnin = { 1453, 39.2, 85.2 } }
Q[65603] = { name = "The Binding", level = 20, minLevel = 20, map = 1453, x = 39.2, y = 85.2, giver = "Gakin the Darkbinder", faction = "Alliance", pre = { 65602 }, class = { WARLOCK = true }, turnin = { 1453, 39.2, 85.2 } }
Q[65604] = { name = "The Binding", level = 20, minLevel = 20, map = 1454, x = 48.2, y = 45.3, giver = "Gan'rul Bloodeye", faction = "Horde", pre = { 65610 }, class = { WARLOCK = true }, turnin = { 1454, 48.2, 45.3 } }
Q[65610] = { name = "Wish You Were Here", level = 27, minLevel = 20, map = 1454, x = 63.6, y = 49.9, giver = "Magar", faction = "Horde", pre = { 65601 }, class = { WARLOCK = true }, turnin = { 1454, 48.2, 45.3 } }
Q[76156] = { name = "Stalk With The Earthmother", level = 10, minLevel = 4, map = 1456, x = 39.4, y = 65.8, giver = "Boarton Shadetotem", faction = "Horde", turnin = { 1456, 39.4, 65.8 } }
Q[76160] = { name = "Stalk With The Earthmother", level = 11, minLevel = 4, map = 1456, x = 39.4, y = 65.8, giver = "Boarton Shadetotem", faction = "Horde", pre = { 76156 }, turnin = { 1456, 39.4, 65.8 } }
Q[76240] = { name = "Stalk With The Earthmother", level = 11, minLevel = 4, map = 1456, x = 39.4, y = 65.8, giver = "Boarton Shadetotem", faction = "Horde", pre = { 76160 }, turnin = { 1456, 39.4, 65.8 } }
Q[78089] = { name = "Advice From Stormwind", level = 30, minLevel = 22, map = 1440, x = 26.2, y = 38.7, giver = "Delgren the Purifier", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 48.5, 49.1 } }
Q[78090] = { name = "A Second Opinion", level = 30, minLevel = 22, map = 1453, x = 48.5, y = 49.1, giver = "Katherine the Pure", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1453, 39.9, 84.2 } }
Q[78091] = { name = "Earning Your Salt", level = 30, minLevel = 22, map = 1453, x = 39.9, y = 84.2, giver = "Ursula Deline", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, group = true, turnin = { 1453, 39.9, 84.2 } }
Q[78092] = { name = "It Must Be Destroyed", level = 30, minLevel = 22, map = 1453, x = 39.9, y = 84.2, giver = "Ursula Deline", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1440, 89.4, 77.1 } }
Q[78093] = { name = "Return to Delgren", level = 30, minLevel = 22, map = 1440, x = 89.4, y = 77, giver = "Shattered Orb", faction = "Alliance", race = { HUMAN = true, DWARF = true }, class = { PALADIN = true }, turnin = { 1440, 26.2, 38.7 } }
Q[78676] = { name = "The Eye of Bhossca", level = 35, minLevel = 25, map = 1421, x = 47.1, y = 71.0, giver = "Dead Drop", class = { ROGUE = true }, turnin = { 1421, 47.1, 71.0 } }
Q[79008] = { name = "... and that note you found", level = 22, minLevel = 14, map = 1436, x = 37.4, y = 50.6, giver = "Burned-Out Remains", faction = "Alliance", turnin = { 1413, 46.4, 73.9 } }
Q[79192] = { name = "Stepping Stones", level = 24, minLevel = 14, map = 1413, x = 46.4, y = 73.9, giver = "Burned-Out Remains", turnin = { 1442, 40.8, 52.6 } }
Q[79358] = { name = "Storm, Earth, and Fire", level = 38, minLevel = 30, map = 1417, x = 59.8, y = 27.6, giver = "Veyric Thunderhame", class = { SHAMAN = true }, turnin = { 1441, 46.1, 51.7 } }
Q[79360] = { name = "Elemental Aid", level = 33, minLevel = 30, map = 1441, x = 46.1, y = 51.7, giver = "Rau Cliffrunner", faction = "Horde", class = { SHAMAN = true }, group = true, turnin = { 1416, 80.5, 66.9 } }
Q[79361] = { name = "Storm, Earth, and Fire", level = 38, minLevel = 30, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", faction = "Horde", race = { ORC = true, TAUREN = true, TROLL = true }, class = { SHAMAN = true }, turnin = { 1416, 80.5, 66.9 } }
Q[79362] = { name = "Grant's Shield", level = 25, minLevel = 18, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", faction = "Horde", race = { ORC = true, TAUREN = true, TROLL = true }, class = { SHAMAN = true }, turnin = { 1416, 80.5, 66.9 } }
Q[79363] = { name = "Silvia's Sword", level = 26, minLevel = 18, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", faction = "Horde", race = { ORC = true, TAUREN = true, TROLL = true }, class = { SHAMAN = true }, turnin = { 1416, 80.5, 66.9 } }
Q[79364] = { name = "Eyes on the Sky", level = 33, minLevel = 30, map = 1441, x = 46.1, y = 51.7, giver = "Rau Cliffrunner", faction = "Horde", class = { SHAMAN = true }, turnin = { 1441, 53.5, 42.6 } }
Q[79366] = { name = "Heed My Call", level = 40, minLevel = 30, map = 1441, x = 46.1, y = 51.7, giver = "Rau Cliffrunner", faction = "Horde", class = { SHAMAN = true }, turnin = { 1441, 46.1, 51.7 } }
Q[79442] = { name = "The Tempest's Weapons", level = 40, minLevel = 30, map = 1441, x = 46.1, y = 51.7, giver = "Rau Cliffrunner", faction = "Horde", race = { ORC = true, TAUREN = true, TROLL = true }, class = { SHAMAN = true }, turnin = { 1416, 80.5, 66.9 } }
Q[79980] = { name = "Scramble", level = 24, minLevel = 14, map = 1442, x = 40.8, y = 52.6, giver = "Pocket Litter", turnin = { 1442, 39.6, 49.9 } }
Q[86574] = { name = "Stonetalon Supply Run", level = 24, minLevel = 20, map = 1442, x = 48.7, y = 39.9, giver = "Night Elf Courier", faction = "Alliance", turnin = { 1442, 35.8, 5.7 } }
Q[86576] = { name = "Bloodfury Trinkets", level = 26, minLevel = 18, map = 1442, x = 47.2, y = 61.2, giver = "Maggran Earthbinder", faction = "Horde", group = true, turnin = { 1442, 47.2, 64.0 } }
Q[86585] = { name = "Banner of the Fallen", level = 17, minLevel = 10, map = 1432, x = 31.8, y = 86.5, giver = "Mountaineer Ylva", faction = "Alliance", turnin = { 1432, 23.2, 73.7 } }
Q[86613] = { name = "Excavation Tools", level = 18, minLevel = 13, map = 1432, x = 69.4, y = 67.5, giver = "Drop: Excavation Tools", faction = "Alliance", turnin = { 1432, 65.9, 65.6 } }
Q[86614] = { name = "Silver of the Waves", level = 20, minLevel = 13, map = 1432, x = 48.0, y = 39.9, giver = "Discarded Fishing Toolbox", faction = "Alliance", turnin = { 1432, 40.3, 39.3 } }
Q[86667] = { name = "Snowbound", level = 10, minLevel = 10, map = 1432, x = 36.5, y = 48.3, giver = "Grenhild Darktalon", faction = "Alliance", turnin = { 1432, 41.8, 19.1 } }
Q[86757] = { name = "Slowing the Orc Advance", level = 32, minLevel = 27, map = 1440, x = 49.5, y = 67.1, giver = "Shandrina", faction = "Alliance", turnin = { 1440, 49.5, 67.1 } }
Q[86758] = { name = "Twisting the Knife", level = 16, minLevel = 12, map = 1432, x = 81.8, y = 61.7, giver = "Marek Ironheart", faction = "Alliance", turnin = { 1432, 81.8, 61.7 } }
Q[86784] = { name = "Sticks and Bones", level = 7, minLevel = 4, map = 1420, x = 58.5, y = 51.4, giver = "Deathguard Bartholomew", faction = "Horde", turnin = { 1420, 57.3, 55.5 } }
Q[87288] = { name = "Soft Saber Pelts", level = 7, minLevel = 4, map = 1438, x = 55.5, y = 57.1, giver = "Aldia", faction = "Alliance", turnin = { 1438, 55.5, 57.1 } }
Q[87318] = { name = "Hearts of the Lost", level = 33, minLevel = 28, map = 1437, x = 49.9, y = 12.6, giver = "Comar Villard", faction = "Alliance", turnin = { 1437, 51.5, 9 } }
Q[87491] = { name = "Spark of Freedom", level = 32, minLevel = 27, map = 1437, x = 45.6, y = 16.6, giver = "Captive Fire Elemental", faction = "Alliance", turnin = { 1437, 49.9, 18.1 } }
Q[87760] = { name = "Holy Diver", level = 20, minLevel = 15, map = 1439, x = 36.6, y = 45.6, giver = "Gwennyth Bly'Leggonde", faction = "Alliance", turnin = { 1439, 36.6, 45.6 } }
Q[88756] = { name = "Bring Back a Bang", level = 32, minLevel = 27, map = 1437, x = 50.0, y = 18.2, giver = "Ashlan Stonesmirk", faction = "Alliance", turnin = { 1437, 50.0, 18.2 } }
Q[88757] = { name = "Accessories of the Lost", level = 33, minLevel = 28, map = 1437, x = 51.5, y = 9, giver = "Essene Villard", faction = "Alliance", turnin = { 1437, 51.5, 9 } }
Q[88758] = { name = "Sentiments of the Lost", level = 33, minLevel = 28, map = 1437, x = 51.5, y = 9, giver = "Essene Villard", faction = "Alliance", turnin = { 1437, 49.9, 12.6 } }
Q[90902] = { name = "Rediscovering the Light", level = 2, minLevel = 2, map = 1420, x = 31.1, y = 66.4, giver = "Aramis Hammerhand", faction = "Horde", pre = { 364 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 31.1, 66.4 } }
Q[91208] = { name = "Coming to Terms", level = 4, minLevel = 4, map = 1420, x = 31.1, y = 66.4, giver = "Aramis Hammerhand", faction = "Horde", pre = { 90902 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 31.1, 66.4 } }
Q[91209] = { name = "Continue Your Training", level = 4, minLevel = 4, map = 1420, x = 31.1, y = 66.4, giver = "Aramis Hammerhand", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 60.2, 52.7 } }
Q[91282] = { name = "A Second Home", level = 11, minLevel = 8, map = 1420, x = 60.2, y = 52.7, giver = "Shari Stilwell", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 21.9, 45.2 } }
Q[91285] = { name = "Murlocs at the Gates", level = 11, minLevel = 7, map = 1420, x = 21.9, y = 45.2, giver = "Breton Samuels", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 21.9, 45.2 } }
Q[91294] = { name = "Touring the Grounds", level = 11, minLevel = 8, map = 1420, x = 21.9, y = 45.2, giver = "Breton Samuels", faction = "Horde", pre = { 91285 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 22.1, 44.7 } }
Q[91316] = { name = "Making Repairs", level = 11, minLevel = 8, map = 1420, x = 22.7, y = 44.7, giver = "Jorin Croge", faction = "Horde", pre = { 91294 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 22.7, 44.7 } }
Q[91317] = { name = "The Tarnished", level = 12, minLevel = 9, map = 1420, x = 22.1, y = 44.7, giver = "Danitha Morr", faction = "Horde", pre = { 91294 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 22.1, 44.7 } }
Q[91723] = { name = "Delicate Instruments", level = 10, minLevel = 7, map = 1429, x = 65.1, y = 69.8, giver = "Hamish Bergwort", faction = "Alliance", turnin = { 1429, 65.1, 69.8 } }
Q[91724] = { name = "Delicate Instruments", level = 10, minLevel = 7, map = 1429, x = 65.1, y = 69.8, giver = "Hamish Bergwort", faction = "Alliance", pre = { 91723 }, turnin = { 1429, 65.1, 69.8 } }
Q[91725] = { name = "Stolen Enchanting Supplies", level = 10, minLevel = 7, map = 1429, x = 63.2, y = 72.6, giver = "Blixie Fitzwink", faction = "Alliance", turnin = { 1429, 63.2, 72.6 } }
Q[91732] = { name = "Good Steel", level = 10, minLevel = 7, map = 1429, x = 82.5, y = 63.8, giver = "Hagar Lowe", faction = "Alliance", turnin = { 1429, 82.5, 63.8 } }
Q[91733] = { name = "Downstream", level = 10, minLevel = 7, map = 1429, x = 76.5, y = 71.9, giver = "Ormin Pelford", faction = "Alliance", turnin = { 1429, 76.5, 71.9 } }
Q[91738] = { name = "An Apple Treat", level = 10, minLevel = 7, map = 1429, x = 24.1, y = 73.2, giver = "Sergeant De Vries", faction = "Alliance", turnin = { 1429, 24.1, 73.2 } }
Q[91740] = { name = "Croaky's Head", level = 10, minLevel = 7, map = 1429, x = 76.7, y = 85.7, giver = "Drop: Croaky's Head", faction = "Alliance", turnin = { 1429, 84.8, 79.3 } }
Q[91741] = { name = "Nibbled-On Book", level = 2, minLevel = 1, map = 1429, x = 48.4, y = 33.6, giver = "Drop: Nibbled-On Book", faction = "Alliance", turnin = { 1429, 49.6, 40.4 } }
Q[91743] = { name = "Rascally Rodents", level = 2, minLevel = 1, map = 1429, x = 49.6, y = 40.4, giver = "Brother Paxton", faction = "Alliance", pre = { 92124 }, turnin = { 1429, 49.6, 40.4 } }
Q[91745] = { name = "Mining Consultant", level = 3, minLevel = 1, map = 1429, x = 49.6, y = 40.4, giver = "Brother Paxton", faction = "Alliance", pre = { 91743 }, turnin = { 1429, 47.2, 32.2 } }
Q[91746] = { name = "Elmpaw's Head", level = 10, minLevel = 7, map = 1429, x = 74.3, y = 40.3, giver = "Drop: Elmpaw's Head", faction = "Alliance", turnin = { 1429, 46.2, 62.2 } }
Q[91752] = { name = "The Big Picture", level = 3, minLevel = 1, map = 1429, x = 47.2, y = 32.2, giver = "Kelsey Fargo", faction = "Alliance", pre = { 91745 }, turnin = { 1429, 48.9, 41.6 } }
Q[91758] = { name = "Follow That Kobold!", level = 4, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 91752 }, turnin = { 1429, 51.2, 40.8 } }
Q[91772] = { name = "Shhh! We're Hunting Kobolds", level = 4, minLevel = 1, map = 1429, x = 51.2, y = 40.8, giver = "Tordrin Sternblade", faction = "Alliance", pre = { 91758 }, turnin = { 1429, 42.1, 65.9 } }
Q[91775] = { name = "Book Return", level = 6, minLevel = 1, map = 1429, x = 42.1, y = 65.9, giver = "Marshal Dughan", faction = "Alliance", pre = { 91772 }, turnin = { 1429, 42.1, 65.9 } }
Q[91777] = { name = "Rare Books", level = 7, minLevel = 1, map = 1429, x = 42.1, y = 65.9, giver = "Marshal Dughan", faction = "Alliance", pre = { 91775 }, turnin = { 1429, 49.6, 40.4 } }
Q[91858] = { name = "Diplomatic Incident", level = 22, minLevel = 18, map = 1420, x = 22.1, y = 44.7, giver = "Danitha Morr", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1421, 43.3, 41.0 } }
Q[91859] = { name = "A Curious Pair", level = 22, minLevel = 18, map = 1421, x = 43.3, y = 41.0, giver = "Trevan Rol", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1421, 45.8, 41.9 } }
Q[91860] = { name = "A Grim Fate", level = 22, minLevel = 18, map = 1421, x = 45.8, y = 41.9, giver = "Deathguard Baldren", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1421, 64.9, 34.3 } }
Q[91861] = { name = "Into Fenris Keep", level = 22, minLevel = 18, map = 1421, x = 64.9, y = 34.3, giver = "Charred Remains", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1421, 65.6, 23.4 } }
Q[91862] = { name = "Lumina Windsinger", level = 22, minLevel = 18, map = 1421, x = 65.6, y = 23.4, giver = "Lumina Windsinger", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1421, 65.6, 23.4 } }
Q[91920] = { name = "Wild Eyes", level = 11, minLevel = 10, map = 1421, x = 53.4, y = 12.6, giver = "Quinn Yorick", faction = "Horde", turnin = { 1421, 42.8, 40.9 } }
Q[91921] = { name = "Return to Quinn (Again)", level = 11, minLevel = 10, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", faction = "Horde", turnin = { 1421, 53.4, 12.6 } }
Q[92109] = { name = "My First Alchemy Set", level = 10, minLevel = 10, map = 1436, x = 43.0, y = 72.9, giver = "Odd Child", faction = "Alliance", group = true, turnin = { 1436, 43.0, 72.9 } }
Q[92110] = { name = "My First Real Potion", level = 10, minLevel = 10, map = 1436, x = 43.0, y = 72.9, giver = "Odd Child", faction = "Alliance", turnin = { 1436, 43.0, 72.9 } }
Q[92124] = { name = "Book Inventory", level = 2, minLevel = 1, map = 1429, x = 49.6, y = 40.4, giver = "Brother Paxton", faction = "Alliance", pre = { 91741 }, turnin = { 1429, 49.5, 40.7 } }
Q[92401] = { name = "A Frightened Request", level = 22, minLevel = 15, map = 1421, x = 44.5, y = 43.0, giver = "Tabitha Heartweaver", faction = "Horde", dungeon = "Ruins of Lordaeron", turnin = { 1421, 44.5, 43.0 } }
Q[92421] = { name = "Light's Justice", level = 22, minLevel = 15, map = 1458, x = 58.1, y = 89.5, giver = "Morbin Lightbane", faction = "Horde", dungeon = "Ruins of Lordaeron", turnin = { 1458, 58.1, 89.5 } }
Q[92422] = { name = "The Wrath of Rath'mael", level = 22, minLevel = 15, map = 1420, x = 65.2, y = 60.2, giver = "Deathguard Kristof", faction = "Horde", dungeon = "Ruins of Lordaeron", turnin = { 1420, 65.2, 60.2 } }
Q[92432] = { name = "An Alarming Request", level = 33, minLevel = 30, map = 1424, x = 48.3, y = 60, giver = "Emissary Jacques", faction = "Alliance", turnin = { 1421, 68.6, 45.1 } }
Q[92434] = { name = "Blood in the Streets", level = 34, minLevel = 30, map = 1424, x = 61.6, y = 20.9, giver = "Magus Wordeen Voidglare", faction = "Horde", turnin = { 1421, 68.6, 45.1 } }
Q[92456] = { name = "A Green Sample", level = 33, minLevel = 24, map = 1453, x = 31.5, y = 62.6, giver = "Shylamiir", faction = "Alliance", dungeon = "City of Dalaran", turnin = { 1453, 31.5, 62.6 } }
Q[92457] = { name = "Starving Arcane", level = 33, minLevel = 24, map = 1421, x = 68.6, y = 45.1, giver = "Image of Archmage Modera", faction = "Alliance", dungeon = "City of Dalaran", turnin = { 1421, 68.6, 45.1 } }
Q[92458] = { name = "Heart of Disruption", level = 33, minLevel = 24, map = 1421, x = 68.6, y = 45.1, giver = "Image of Archmage Modera", faction = "Alliance", dungeon = "City of Dalaran", turnin = { 1421, 68.6, 45.1 } }
Q[92459] = { name = "Friend of the Kirin Tor", level = 33, minLevel = 24, map = 1421, x = 68.6, y = 45.1, giver = "Image of Archmage Modera", faction = "Alliance", turnin = { 1416, 14.2, 60.0 } }
Q[92460] = { name = "Coming of Age", level = 1, minLevel = 1, map = 2521, x = 42.8, y = 23.4, giver = "Ailee Farheart", turnin = { 2521, 42.0, 23.5 } }
Q[92461] = { name = "Harmony in Balance", level = 1, minLevel = 1, map = 2521, x = 42.0, y = 23.5, giver = "Rorian the Dayseeker", pre = { 92460 }, turnin = { 2521, 42.0, 23.5 } }
Q[92462] = { name = "Infestation Investigation", level = 2, minLevel = 1, map = 2521, x = 43.4, y = 24.8, giver = "Elatrell Featherlight", pre = { 92460 }, turnin = { 2521, 43.4, 24.8 } }
Q[92463] = { name = "The Cirrusfly Queen", level = 3, minLevel = 2, map = 2521, x = 43.4, y = 24.8, giver = "Elatrell Featherlight", pre = { 92462 }, turnin = { 2521, 43.4, 24.8 } }
Q[92464] = { name = "Elemental Unrest", level = 3, minLevel = 2, map = 2521, x = 42.0, y = 23.5, giver = "Rorian the Dayseeker", turnin = { 2521, 47.2, 22.0 } }
Q[92465] = { name = "Agitators", level = 3, minLevel = 2, map = 2521, x = 47.2, y = 22.0, giver = "Yala Windwatcher", turnin = { 2521, 47.2, 22.0 } }
Q[92466] = { name = "Call of Earth", level = 4, minLevel = 3, map = 2521, x = 42.8, y = 23.6, giver = "Windshaper Boro", faction = "Horde", class = { SHAMAN = true }, turnin = { 2521, 42.8, 23.6 } }
Q[92467] = { name = "Call of Earth", level = 4, minLevel = 3, map = 2521, x = 42.8, y = 23.6, giver = "Windshaper Boro", faction = "Horde", class = { SHAMAN = true }, turnin = { 2521, 49.7, 23.8 } }
Q[92468] = { name = "Call of Earth", level = 4, minLevel = 3, map = 2521, x = 49.7, y = 23.8, giver = "Minor Manifestation of Earth", faction = "Horde", pre = { 92467 }, class = { SHAMAN = true }, turnin = { 2521, 42.8, 23.6 } }
Q[92469] = { name = "Return to Rorian", level = 4, minLevel = 3, map = 2521, x = 47.2, y = 22.0, giver = "Yala Windwatcher", pre = { 92465 }, turnin = { 2521, 42.0, 23.5 } }
Q[92470] = { name = "Foul Matriarch", level = 5, minLevel = 2, map = 2521, x = 42.8, y = 23.7, giver = "Aetheen of the Gales", pre = { 92471 }, turnin = { 2521, 42.8, 23.7 } }
Q[92471] = { name = "Aetheen of the Gales", level = 4, minLevel = 4, map = 2521, x = 42.0, y = 23.5, giver = "Rorian the Dayseeker", turnin = { 2521, 42.8, 23.7 } }
Q[92472] = { name = "The Next Step", level = 5, minLevel = 3, map = 2521, x = 42.8, y = 23.7, giver = "Aetheen of the Gales", pre = { 92470 }, turnin = { 2521, 45.7, 45.5 } }
Q[92473] = { name = "Aggressive Encroachment", level = 4, minLevel = 3, map = 2521, x = 42.4, y = 25.2, giver = "Valreaa Valewind", pre = { 92471 }, turnin = { 2521, 42.4, 25.2 } }
Q[92479] = { name = "A Scribbled Letter", level = 1, minLevel = 1, map = 1429, x = 48.9, y = 41.6, giver = "Marshal McBride", faction = "Alliance", pre = { 7 }, race = { HUMAN = true }, class = { HUNTER = true }, turnin = { 1429, 51.2, 40.8 } }
Q[92481] = { name = "A Student of the Arcane", level = 2, minLevel = 2, map = 2521, x = 42.0, y = 23.5, giver = "Rorian the Dayseeker", faction = "Alliance", pre = { 92461 }, class = { MAGE = true }, turnin = { 2521, 41.5, 23.7 } }
Q[92482] = { name = "The Way of the Hunter", level = 2, minLevel = 2, map = 2521, x = 42.0, y = 23.5, giver = "Rorian the Dayseeker", pre = { 92461 }, class = { HUNTER = true }, turnin = { 2521, 42.5, 23.8 } }
Q[92483] = { name = "At Home in the Shadows", level = 2, minLevel = 2, map = 2521, x = 42.0, y = 23.5, giver = "Rorian the Dayseeker", pre = { 92461 }, class = { ROGUE = true }, turnin = { 2521, 43.7, 24.4 } }
Q[92484] = { name = "Embracing the Elements", level = 2, minLevel = 2, map = 2521, x = 42.0, y = 23.5, giver = "Rorian the Dayseeker", faction = "Horde", pre = { 92461 }, class = { SHAMAN = true }, turnin = { 2521, 42.8, 23.6 } }
Q[92485] = { name = "A Student of Nature", level = 2, minLevel = 2, map = 2521, x = 42.0, y = 23.5, giver = "Rorian the Dayseeker", pre = { 92461 }, class = { DRUID = true }, turnin = { 2521, 41.7, 23.3 } }
Q[92489] = { name = "Power Overwhelming", level = 33, minLevel = 24, map = 1453, x = 48.7, y = 87.6, giver = "High Sorcerer Andromath", faction = "Alliance", dungeon = "City of Dalaran", turnin = { 1453, 48.7, 87.6 } }
Q[92514] = { name = "Welcome to Shen'dar Village", level = 6, minLevel = 4, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", faction = "Horde", turnin = { 2521, 45.7, 45.5 } }
Q[92515] = { name = "The Problem With Prideclaws", level = 6, minLevel = 4, map = 2521, x = 44.7, y = 44.5, giver = "Indari Sunseam", turnin = { 2521, 44.7, 44.5 } }
Q[92516] = { name = "Hippogryph Harrassment", level = 7, minLevel = 4, map = 2521, x = 44.5, y = 45.0, giver = "Teeri Wellwind", turnin = { 2521, 44.5, 45.0 } }
Q[92517] = { name = "The Criminal Element", level = 7, minLevel = 4, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", turnin = { 2521, 45.7, 45.5 } }
Q[92528] = { name = "Among the Faithful", level = 8, minLevel = 5, map = 2521, x = 46.9, y = 56.2, giver = "Missionary Jasaan", pre = { 92529 }, turnin = { 2521, 45.7, 45.5 } }
Q[92529] = { name = "Falaath Village", level = 8, minLevel = 5, map = 2521, x = 44.9, y = 45.5, giver = "Sania Silverstream", pre = { 93036 }, turnin = { 2521, 46.9, 56.2 } }
Q[92532] = { name = "The Warrior's Path", level = 2, minLevel = 2, map = 2521, x = 42.0, y = 23.5, giver = "Rorian the Dayseeker", pre = { 92461 }, class = { WARRIOR = true }, turnin = { 2521, 43.6, 24.1 } }
Q[92544] = { name = "Al'Aketh Thugs", level = 5, minLevel = 2, map = 2521, x = 38.3, y = 30.2, giver = "Hanaa Nightwind", turnin = { 2521, 38.3, 30.2 } }
Q[92550] = { name = "Havoc in the Highlands", level = 8, minLevel = 5, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", pre = { 92528 }, turnin = { 2521, 45.7, 45.5 } }
Q[92551] = { name = "Stolen Supplies", level = 8, minLevel = 5, map = 2521, x = 45.2, y = 45.2, giver = "Danarii Bellowveil", pre = { 92528 }, turnin = { 2521, 45.2, 45.2 } }
Q[92553] = { name = "Restocking the Larders", level = 6, minLevel = 4, map = 2521, x = 43.9, y = 43.9, giver = "Zerril Softbreeze", turnin = { 2521, 43.9, 43.9 } }
Q[92579] = { name = "To Valanaar", level = 8, minLevel = 6, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", faction = "Horde", pre = { 92550, 93927 }, turnin = { 2521, 66.1, 76.7 } }
Q[92595] = { name = "The Windshapers", level = 6, minLevel = 4, map = 2521, x = 43.5, y = 44.8, giver = "Illaya Amberwind", faction = "Horde", turnin = { 2521, 43.5, 44.8 } }
Q[92596] = { name = "The High Order", level = 6, minLevel = 4, map = 2521, x = 45.0, y = 46.4, giver = "Rathiril Sunlance", faction = "Alliance", turnin = { 2521, 45.0, 46.4 } }
Q[92640] = { name = "Desperate Times", level = 11, minLevel = 6, map = 2521, x = 66.2, y = 76.5, giver = "Talaanis Shadowsong", pre = { 94568 }, turnin = { 2521, 66.1, 76.7 } }
Q[92642] = { name = "Disrupting Logistics", level = 11, minLevel = 6, map = 2521, x = 69.7, y = 67.1, giver = "Yorana Windyreed", pre = { 93320 }, turnin = { 2521, 69.7, 67.1 } }
Q[92643] = { name = "The Turncoat", level = 11, minLevel = 6, map = 2521, x = 66.2, y = 76.5, giver = "Talaanis Shadowsong", pre = { 92881 }, turnin = { 2521, 56.0, 58.8 } }
Q[92644] = { name = "Unfortunate News", level = 11, minLevel = 6, map = 2521, x = 56.0, y = 58.8, giver = "Dead Cultist", pre = { 92643 }, turnin = { 2521, 66.2, 76.5 } }
Q[92645] = { name = "Breaking the Breaker", level = 11, minLevel = 6, map = 2521, x = 69.7, y = 67.1, giver = "Yorana Windyreed", pre = { 93320 }, turnin = { 2521, 69.7, 67.1 } }
Q[92646] = { name = "Confront Lorthuna", level = 12, minLevel = 7, map = 2521, x = 65.2, y = 50.4, giver = "Valennia Stormfist", faction = "Horde", pre = { 93958 }, turnin = { 2521, 59.1, 79.8 } }
Q[92679] = { name = "Blood Tithe", level = 9, minLevel = 5, map = 2521, x = 62.1, y = 73.2, giver = "Alvarion Windfield", turnin = { 2521, 46.7, 82.0 } }
Q[92682] = { name = "Make Yourself Useful", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92679 }, turnin = { 2521, 46.7, 82.0 } }
Q[92683] = { name = "Flutterfly Dust", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92679 }, turnin = { 2521, 46.7, 82.0 } }
Q[92684] = { name = "Ornery Ornery Galestriders", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92679 }, turnin = { 2521, 46.7, 82.0 } }
Q[92685] = { name = "The Hills Have Eyes", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92682, 92683, 92684 }, turnin = { 2521, 46.7, 82.0 } }
Q[92693] = { name = "Standing Our Ground", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92685 }, turnin = { 2521, 46.7, 82.0 } }
Q[92698] = { name = "What Is My Purpose?", level = 9, minLevel = 5, map = 2521, x = 48.6, y = 78.4, giver = "Malfunctioning Cyclone Construct", pre = { 92679 }, turnin = { 2521, 46.7, 82.0 } }
Q[92699] = { name = "The Supreme Magister", level = 9, minLevel = 4, map = 2521, x = 66.1, y = 76.7, giver = "Valennia Stormfist", faction = "Alliance", pre = { 92701 }, turnin = { 2521, 66.6, 80.0 } }
Q[92700] = { name = "The Grand Skyseer", level = 9, minLevel = 4, map = 2521, x = 66.1, y = 76.7, giver = "Valennia Stormfist", faction = "Horde", pre = { 92579 }, turnin = { 2521, 59.1, 79.8 } }
Q[92701] = { name = "To Valanaar", level = 9, minLevel = 6, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", faction = "Alliance", pre = { 92550, 93927 }, turnin = { 2521, 66.1, 76.7 } }
Q[92703] = { name = "Deliver the News", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92693 }, turnin = { 2521, 62.1, 73.2 } }
Q[92706] = { name = "WANTED: Bruuz", level = 20, minLevel = 15, map = 1413, x = 62.6, y = 37.5, giver = "WANTED", faction = "Horde", turnin = { 1413, 62.7, 36.2 } }
Q[92708] = { name = "A Grand Adventure", level = 12, minLevel = 7, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", faction = "Horde", pre = { 92700 }, turnin = { 2521, 59.1, 79.8 } }
Q[92709] = { name = "A Grand Adventure", level = 12, minLevel = 7, map = 2521, x = 66.6, y = 80.0, giver = "Elaadrin Evengale", faction = "Alliance", pre = { 92699 }, turnin = { 2521, 66.6, 80.0 } }
Q[92727] = { name = "The Missing Scholar", level = 10, minLevel = 4, map = 2521, x = 66.3, y = 79.8, giver = "Dondallion Whisperwind", faction = "Alliance", pre = { 92699 }, turnin = { 2521, 53.3, 72.1 } }
Q[92741] = { name = "Unwelcome Visitors", level = 13, minLevel = 8, map = 2521, x = 66.3, y = 79.5, giver = "Iaadaria Bitterwind", faction = "Alliance", pre = { 92699 }, turnin = { 2521, 66.3, 79.5 } }
Q[92742] = { name = "Testing the Wells", level = 12, minLevel = 9, map = 1436, x = 52.5, y = 53.0, giver = "Alba Fairmoon", faction = "Alliance", turnin = { 1436, 52.5, 53.0 } }
Q[92743] = { name = "A Conqueror's Crown", level = 40, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", turnin = { 1443, 75.0, 68.2 } }
Q[92744] = { name = "Murloc Gills", level = 12, minLevel = 9, map = 1436, x = 52.5, y = 53.0, giver = "Alba Fairmoon", faction = "Alliance", turnin = { 1436, 52.5, 53.0 } }
Q[92745] = { name = "The State of the Mines", level = 14, minLevel = 9, map = 1436, x = 52.5, y = 53.0, giver = "Alba Fairmoon", faction = "Alliance", turnin = { 1436, 52.5, 53.0 } }
Q[92747] = { name = "Moonbrook Espionage", level = 15, minLevel = 9, map = 1436, x = 52.5, y = 53.0, giver = "Alba Fairmoon", faction = "Alliance", turnin = { 1436, 52.5, 53.0 } }
Q[92748] = { name = "Explosive Consultation", level = 16, minLevel = 9, map = 1436, x = 52.5, y = 53.0, giver = "Alba Fairmoon", faction = "Alliance", turnin = { 1453, 61.9, 30.6 } }
Q[92749] = { name = "A Dynamite Plan", level = 16, minLevel = 9, map = 1453, x = 61.9, y = 30.6, giver = "Sprite Jumpsprocket", faction = "Alliance", turnin = { 1453, 61.9, 30.6 } }
Q[92750] = { name = "Detonation at a Distance", level = 16, minLevel = 9, map = 1453, x = 61.9, y = 30.6, giver = "Sprite Jumpsprocket", faction = "Alliance", turnin = { 1453, 80.3, 70.1 } }
Q[92751] = { name = "Detonation at a Distance", level = 16, minLevel = 9, map = 1453, x = 80.3, y = 70.1, giver = "Jasper Fel", faction = "Alliance", turnin = { 1453, 61.9, 30.6 } }
Q[92752] = { name = "Explosive Consultation", level = 16, minLevel = 9, map = 1453, x = 61.9, y = 30.6, giver = "Sprite Jumpsprocket", faction = "Alliance", turnin = { 1436, 52.5, 53.0 } }
Q[92753] = { name = "Destruction in Deadmines", level = 18, minLevel = 9, map = 1436, x = 52.5, y = 53.0, giver = "Alba Fairmoon", faction = "Alliance", dungeon = "The Deadmines", turnin = { 1436, 38.7, 83.7 } }
Q[92819] = { name = "Destruction in Deadmines", level = 18, minLevel = 9, map = 1436, x = 38.7, y = 83.7, giver = "Alba Fairmoon", faction = "Alliance", turnin = { 1436, 38.7, 83.7 } }
Q[92834] = { name = "Avenged Tenfold", level = 11, minLevel = 6, map = 2521, x = 66.6, y = 80.0, giver = "Elaadrin Evengale", faction = "Alliance", pre = { 92840 }, turnin = { 2521, 66.6, 80.0 } }
Q[92840] = { name = "Catching Wind", level = 11, minLevel = 5, map = 2521, x = 66.6, y = 80.0, giver = "Elaadrin Evengale", faction = "Alliance", pre = { 99260 }, turnin = { 2521, 66.6, 80.0 } }
Q[92841] = { name = "Valley of Bones", level = 40, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", faction = "Alliance", turnin = { 2652, 35.8, 13 } }
Q[92844] = { name = "Mountain of Bones", level = 42, minLevel = 30, map = 2652, x = 35.8, y = 13, giver = "Orgrul", faction = "Alliance", turnin = { 2652, 35.8, 13 } }
Q[92846] = { name = "Outcast Necromancers", level = 40, minLevel = 30, map = 2652, x = 35.8, y = 13, giver = "Orgrul", faction = "Alliance" }
Q[92849] = { name = "The Missing Scholar", level = 10, minLevel = 4, map = 2521, x = 53.3, y = 72.1, giver = "Bloodstained Satchel", faction = "Alliance", pre = { 92727 }, turnin = { 2521, 52.1, 69.4 } }
Q[92850] = { name = "The Missing Scholar", level = 10, minLevel = 4, map = 2521, x = 52.1, y = 69.4, giver = "Fillion Flamebreeze", faction = "Alliance", pre = { 92849 }, turnin = { 2521, 66.2, 79.9 } }
Q[92860] = { name = "In Service of Zephras", level = 12, minLevel = 6, map = 2521, x = 66.6, y = 80.0, giver = "Elaadrin Evengale", faction = "Alliance", pre = { 92840 }, turnin = { 2521, 66.1, 76.7 } }
Q[92871] = { name = "In Service of Zephras", level = 11, minLevel = 6, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", faction = "Horde", pre = { 93746 }, turnin = { 2521, 66.1, 76.7 } }
Q[92880] = { name = "Return to Valanaar", level = 11, minLevel = 6, map = 2521, x = 69.7, y = 67.1, giver = "Yorana Windyreed", pre = { 92642, 92645 }, turnin = { 2521, 66.1, 76.7 } }
Q[92881] = { name = "The High Elder's Request", level = 11, minLevel = 6, map = 2521, x = 66.1, y = 76.7, giver = "Valennia Stormfist", pre = { 92880 }, turnin = { 2521, 66.2, 76.5 } }
Q[92909] = { name = "Harvesting the Harvesters", level = 15, minLevel = 8, map = 1436, x = 51.5, y = 32.3, giver = "Ozwin Ironsprocket", faction = "Alliance", turnin = { 1436, 51.5, 32.3 } }
Q[92910] = { name = "Harvesting the Harvesters", level = 15, minLevel = 8, map = 1436, x = 37.4, y = 49.3, giver = "Drop: Precessive Autocognition Assembly", faction = "Alliance", turnin = { 1436, 51.5, 32.3 } }
Q[92911] = { name = "Harvesting the Harvesters", level = 15, minLevel = 8, map = 1436, x = 51.5, y = 32.3, giver = "Ozwin Ironsprocket", faction = "Alliance", group = true, turnin = { 1436, 51.5, 32.3 } }
Q[92947] = { name = "Making Our Move", level = 12, minLevel = 7, map = 2521, x = 61.2, y = 71.0, giver = "Valennia Stormfist", pre = { 93065 }, turnin = { 2521, 63.8, 50.5 } }
Q[93034] = { name = "Valley of Bones", level = 38, minLevel = 30, map = 1443, x = 36.2, y = 79.2, giver = "Uthek the Wise", turnin = { 2652, 21.2, 23.2 } }
Q[93035] = { name = "Ravaging Ravagers", level = 38, minLevel = 30, map = 2652, x = 21.2, y = 23.2, giver = "Nerlokh", turnin = { 2652, 21.2, 23.2 } }
Q[93036] = { name = "Infiltrating the Cult", level = 8, minLevel = 5, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", pre = { 92517 }, turnin = { 2521, 44.9, 45.5 } }
Q[93037] = { name = "Outing Outcasts", level = 40, minLevel = 30, map = 2652, x = 21.2, y = 23.2, giver = "Nerlokh", turnin = { 2652, 21.2, 23.2 } }
Q[93041] = { name = "Facing the Truth", level = 38, minLevel = 30, map = 2652, x = 21.2, y = 23.2, giver = "Nerlokh", turnin = { 1443, 36.2, 79.2 } }
Q[93065] = { name = "Prepare for Battle", level = 12, minLevel = 7, map = 2521, x = 66.1, y = 76.7, giver = "Valennia Stormfist", pre = { 92640 }, turnin = { 2521, 61.2, 71.0 } }
Q[93089] = { name = "What Comes Next", level = 13, minLevel = 7, map = 2521, x = 66.2, y = 76.5, giver = "Talaanis Shadowsong", faction = "Alliance", pre = { 94369 }, turnin = { 2521, 66.6, 80.0 } }
Q[93090] = { name = "What Comes Next", level = 13, minLevel = 7, map = 2521, x = 66.2, y = 76.5, giver = "Talaanis Shadowsong", faction = "Horde", pre = { 93836 }, turnin = { 2521, 59.1, 79.8 } }
Q[93128] = { name = "Khan Jehn", level = 42, minLevel = 30, map = 2652, x = 21.2, y = 23.2, giver = "Nerlokh", turnin = { 1443, 36.2, 79.2 } }
Q[93159] = { name = "The Strange Hermit", level = 13, minLevel = 8, map = 2521, x = 54.0, y = 38.9, giver = "Strange Hermit", turnin = { 2521, 54.0, 38.9 } }
Q[93160] = { name = "The Forest's Bounty", level = 13, minLevel = 8, map = 2521, x = 54.0, y = 38.9, giver = "Strange Hermit", pre = { 93159 }, turnin = { 2521, 54.0, 38.9 } }
Q[93165] = { name = "Mercy Falls on Deaf Ears", level = 13, minLevel = 8, map = 2521, x = 63.8, y = 36.0, giver = "Vayn Moongaze", turnin = { 2521, 63.8, 36.0 } }
Q[93172] = { name = "Free the Hollows", level = 13, minLevel = 8, map = 2521, x = 54.0, y = 38.9, giver = "Strange Hermit", pre = { 93159 }, turnin = { 2521, 54.0, 38.9 } }
Q[93176] = { name = "My Little Friends", level = 35, minLevel = 25, map = 1435, x = 25.2, y = 54.2, giver = "Amaryllis Webb", turnin = { 1435, 25.2, 54.2 } }
Q[93224] = { name = "Carved Centaur Totems", level = 40, minLevel = 30, map = 1443, x = 66.7, y = 10.9, giver = "Captain Pentigast", faction = "Alliance", turnin = { 1443, 66.7, 10.9 } }
Q[93225] = { name = "Carved Centaur Totems", level = 40, minLevel = 30, map = 1443, x = 56.3, y = 59.7, giver = "Gurda Wildmane", faction = "Horde", turnin = { 1443, 56.3, 59.7 } }
Q[93317] = { name = "Crab Season", level = 9, minLevel = 4, map = 2521, x = 60.5, y = 73.1, giver = "Nyalah Brightfire", turnin = { 2521, 60.5, 73.1 } }
Q[93318] = { name = "WANTED: Vulgara the Insatiable", level = 9, minLevel = 4, map = 2521, x = 43.4, y = 45.8, giver = "Bounty Available: Vulgara the Insatiable!", turnin = { 2521, 45.2, 45.2 } }
Q[93319] = { name = "Pilfered Windstones", level = 7, minLevel = 4, map = 2521, x = 44.5, y = 45.0, giver = "Teeri Wellwind", turnin = { 2521, 44.5, 45.0 } }
Q[93320] = { name = "Tower Defense", level = 11, minLevel = 6, map = 2521, x = 66.1, y = 76.7, giver = "Valennia Stormfist", turnin = { 2521, 69.7, 67.1 } }
Q[93461] = { name = "Welcome to Shen'dar Village", level = 6, minLevel = 4, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", faction = "Alliance", turnin = { 2521, 45.7, 45.5 } }
Q[93552] = { name = "Harvesting Windstones", level = 4, minLevel = 2, map = 2521, x = 43.4, y = 24.0, giver = "Dalia the Collector", pre = { 92461 }, turnin = { 2521, 43.4, 24.0 } }
Q[93585] = { name = "This Light of Mine", level = 34, minLevel = 30, map = 1435, x = 22.2, y = 50.2, giver = "Father Tuttle", faction = "Alliance" }
Q[93663] = { name = "Lost in Transit", level = 35, minLevel = 30, map = 1435, x = 44.7, y = 57.2, giver = "Dar", faction = "Horde", turnin = { 1435, 26.0, 31.4 } }
Q[93680] = { name = "Key to the City", level = 33, minLevel = 30, map = 1424, x = 61.6, y = 20.9, giver = "Magus Wordeen Voidglare", faction = "Horde", turnin = { 1424, 61.6, 20.9 } }
Q[93735] = { name = "The Broken Construct", level = 9, minLevel = 4, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", faction = "Horde", pre = { 92700 }, turnin = { 2521, 59.1, 73.0 } }
Q[93736] = { name = "Unwelcome Spirits", level = 9, minLevel = 4, map = 2521, x = 58.1, y = 78.3, giver = "Endaria Mistgaze", faction = "Horde", pre = { 92700 }, turnin = { 2521, 58.1, 78.3 } }
Q[93737] = { name = "The Broken Construct", level = 9, minLevel = 4, map = 2521, x = 59.1, y = 73.0, giver = "Riaani Nightwind", faction = "Horde", pre = { 93735 }, turnin = { 2521, 59.1, 73.0 } }
Q[93738] = { name = "The Broken Construct", level = 9, minLevel = 4, map = 2521, x = 59.1, y = 73.0, giver = "Riaani Nightwind", faction = "Horde", pre = { 93737 }, turnin = { 2521, 59.1, 79.8 } }
Q[93740] = { name = "Blood for Blood", level = 11, minLevel = 6, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", faction = "Horde", pre = { 93746 }, turnin = { 2521, 59.1, 79.8 } }
Q[93746] = { name = "A Firm Response", level = 9, minLevel = 4, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", faction = "Horde", pre = { 93738 }, turnin = { 2521, 59.1, 79.8 } }
Q[93791] = { name = "Speak with Belann", level = 10, minLevel = 10, map = 2521, x = 65.9, y = 80.5, giver = "Anathamaas Aetherwind", faction = "Alliance", class = { MAGE = true }, turnin = { 2521, 61.5, 75.5 } }
Q[93835] = { name = "Confront Lorthuna", level = 12, minLevel = 7, map = 2521, x = 65.2, y = 50.4, giver = "Valennia Stormfist", faction = "Alliance", pre = { 93958 }, turnin = { 2521, 66.6, 80.0 } }
Q[93836] = { name = "The Fate of Zephras", level = 12, minLevel = 7, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", faction = "Horde", pre = { 92646 }, turnin = { 2521, 66.2, 76.5 } }
Q[93926] = { name = "The Western Watch", level = 8, minLevel = 5, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", pre = { 92528 }, turnin = { 2521, 42.4, 62.0 } }
Q[93927] = { name = "A Last Request", level = 8, minLevel = 5, map = 2521, x = 42.4, y = 62.0, giver = "Peacekeeper Vaaniel", pre = { 93926 }, turnin = { 2521, 45.7, 45.5 } }
Q[93928] = { name = "Of Mice and Milk", level = 15, minLevel = 15, map = 1436, x = 32.5, y = 71.8, giver = "Mouse", faction = "Alliance", turnin = { 1434, 35.7, 10.8 } }
Q[93948] = { name = "Deliver the Signet", level = 9, minLevel = 6, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", pre = { 92550, 93927 }, turnin = { 2521, 66.2, 76.5 } }
Q[93949] = { name = "Bugged", level = 8, minLevel = 6, map = 2521, x = 66.1, y = 76.7, giver = "Valennia Stormfist", pre = { 93948 }, turnin = { 2521, 66.1, 76.7 } }
Q[93951] = { name = "A Little Beauty", level = 7, minLevel = 4, map = 2521, x = 44.9, y = 44.2, giver = "Taleen Shimmerthread", turnin = { 2521, 44.9, 44.2 } }
Q[93958] = { name = "The Inner Sanctum", level = 12, minLevel = 7, map = 2521, x = 63.8, y = 50.5, giver = "Hyusaa Quickbreeze", pre = { 92947 }, turnin = { 2521, 65.2, 50.4 } }
Q[94369] = { name = "The Fate of Zephras", level = 12, minLevel = 7, map = 2521, x = 66.6, y = 80.0, giver = "Elaadrin Evengale", faction = "Alliance", pre = { 93835 }, turnin = { 2521, 66.2, 76.5 } }
Q[94373] = { name = "Call of Earth", level = 4, minLevel = 4, map = 1426, x = 28.8, y = 66.2, giver = "Teo Hammerstorm", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1426, 28.8, 66.2 } }
Q[94374] = { name = "Call of Earth", level = 4, minLevel = 4, map = 1426, x = 28.8, y = 66.2, giver = "Teo Hammerstorm", faction = "Alliance", pre = { 94373 }, class = { SHAMAN = true }, turnin = { 1426, 24.8, 61.9 } }
Q[94375] = { name = "Call of Earth", level = 4, minLevel = 4, map = 1426, x = 24.8, y = 61.9, giver = "Minor Manifestation of Earth", faction = "Alliance", pre = { 94374 }, class = { SHAMAN = true }, turnin = { 1426, 28.8, 66.2 } }
Q[94411] = { name = "Meddlesome Mages", level = 6, minLevel = 4, map = 2521, x = 43.5, y = 44.8, giver = "Illaya Amberwind", faction = "Horde", pre = { 92595 }, turnin = { 2521, 43.5, 44.8 } }
Q[94413] = { name = "A Magical Affront", level = 6, minLevel = 4, map = 2521, x = 45.0, y = 46.4, giver = "Rathiril Sunlance", faction = "Alliance", pre = { 92596 }, turnin = { 2521, 45.0, 46.4 } }
Q[94414] = { name = "The Anchors of Zephras", level = 2, minLevel = 2, map = 2521, x = 43.8, y = 24.1, giver = "Halaan Hawk-Eye", turnin = { 2521, 43.8, 24.1 } }
Q[94427] = { name = "A Lesson in Divinity", level = 12, minLevel = 12, map = 1420, x = 22.1, y = 44.7, giver = "Danitha Morr", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1458, 65.5, 37.5 } }
Q[94434] = { name = "A Lesson in Divinity", level = 12, minLevel = 12, map = 1458, x = 65.5, y = 37.5, giver = "Tanis Alderwood", faction = "Horde", pre = { 94427 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1458, 65.5, 37.5 } }
Q[94435] = { name = "A Lesson in Divinity", level = 12, minLevel = 12, map = 1458, x = 65.5, y = 37.5, giver = "Tanis Alderwood", faction = "Horde", pre = { 94434 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 22.1, 44.7 } }
Q[94436] = { name = "A Lesson in Divinity", level = 12, minLevel = 12, map = 1420, x = 22.1, y = 44.7, giver = "Danitha Morr", faction = "Horde", pre = { 94435 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 21.9, 44.5 } }
Q[94438] = { name = "A Lesson in Divinity", level = 12, minLevel = 12, map = 1420, x = 21.9, y = 44.5, giver = "Deathguard Billmuth", faction = "Horde", pre = { 94436 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 86.7, 47.7 } }
Q[94440] = { name = "A Lesson in Divinity", level = 12, minLevel = 12, map = 1420, x = 86.7, y = 47.7, giver = "Deathguard Falgan", faction = "Horde", pre = { 94438 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 21.9, 44.5 } }
Q[94441] = { name = "A Lesson in Divinity", level = 12, minLevel = 12, map = 1420, x = 21.9, y = 44.5, giver = "Deathguard Billmuth", faction = "Horde", pre = { 94440 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 22.1, 44.7 } }
Q[94449] = { name = "Call of Fire", level = 10, minLevel = 10, map = 1455, x = 47.1, y = 13.8, giver = "Eldrun Stormbreaker", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1426, 87.9, 44.8 } }
Q[94465] = { name = "Call of Fire", level = 11, minLevel = 10, map = 1426, x = 87.9, y = 44.8, giver = "Bruegs Kindleborn", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1432, 32.2, 66.0 } }
Q[94466] = { name = "Call of Fire", level = 14, minLevel = 10, map = 1432, x = 32.2, y = 66.0, giver = "Braldir Ashmantle", faction = "Alliance", pre = { 94465 }, class = { SHAMAN = true }, turnin = { 1432, 32.2, 66.0 } }
Q[94467] = { name = "Call of Fire", level = 14, minLevel = 10, map = 1432, x = 32.2, y = 66.0, giver = "Braldir Ashmantle", faction = "Alliance", pre = { 94466 }, class = { SHAMAN = true }, turnin = { 1432, 31.8, 64.5 } }
Q[94468] = { name = "Call of Fire", level = 14, minLevel = 10, map = 1432, x = 31.8, y = 64.5, giver = "Brazier of the Dormant Flame", faction = "Alliance", pre = { 94467 }, class = { SHAMAN = true }, turnin = { 1426, 87.9, 44.8 } }
Q[94484] = { name = "Unnerving Silence", level = 11, minLevel = 8, map = 2521, x = 64.0, y = 75.1, giver = "Lotheluum Starbreeze", turnin = { 2521, 61.7, 39.2 } }
Q[94485] = { name = "Tears of the Lady", level = 12, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", turnin = { 2521, 61.7, 39.2 } }
Q[94486] = { name = "Feathers for Binding", level = 11, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", turnin = { 2521, 61.7, 39.2 } }
Q[94487] = { name = "Unwanted and Unworthy", level = 11, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", turnin = { 2521, 61.7, 39.2 } }
Q[94488] = { name = "The Ties That Bind", level = 11, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", pre = { 94485, 94486, 94487 }, turnin = { 2521, 61.7, 39.2 } }
Q[94489] = { name = "The Wounds of Betrayal", level = 12, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", pre = { 94485, 94486, 94487 }, turnin = { 2521, 61.7, 39.2 } }
Q[94490] = { name = "Ripped Missive", level = 12, minLevel = 9, map = 2521, x = 65.5, y = 36.3, giver = "Drop: Ripped Missive", pre = { 94485, 94486, 94487 }, turnin = { 2521, 61.7, 39.2 } }
Q[94491] = { name = "The Fate of the Den", level = 12, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", pre = { 94490 }, turnin = { 2521, 64.0, 75.1 } }
Q[94493] = { name = "A Sacrifice in Vain", level = 11, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", turnin = { 2521, 61.7, 39.2 } }
Q[94494] = { name = "Call of Water", level = 20, minLevel = 20, map = 1455, x = 47.1, y = 13.8, giver = "Eldrun Stormbreaker", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1432, 41.8, 19.1 } }
Q[94495] = { name = "Call of Water", level = 22, minLevel = 20, map = 1432, x = 41.8, y = 19.1, giver = "Norric Lochthane", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1437, 65.8, 76.5 } }
Q[94497] = { name = "Call of Water", level = 22, minLevel = 20, map = 1437, x = 65.8, y = 76.5, giver = "Hervdana Saegrund", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1437, 65.8, 76.5 } }
Q[94499] = { name = "Call of Water", level = 22, minLevel = 20, map = 1437, x = 65.8, y = 76.5, giver = "Hervdana Saegrund", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1437, 65.8, 76.5 } }
Q[94500] = { name = "Call of Water", level = 23, minLevel = 20, map = 1437, x = 65.8, y = 76.5, giver = "Hervdana Saegrund", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1437, 65.8, 76.5 } }
Q[94501] = { name = "Call of Water", level = 23, minLevel = 20, map = 1437, x = 65.8, y = 76.5, giver = "Hervdana Saegrund", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1432, 41.8, 19.1 } }
Q[94502] = { name = "Call of Water", level = 23, minLevel = 20, map = 1432, x = 41.8, y = 19.1, giver = "Norric Lochthane", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1436, 45.6, 59.9 } }
Q[94503] = { name = "Call of Water", level = 23, minLevel = 20, map = 1436, x = 45.6, y = 59.9, giver = "Forgotten Shrine", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1421, 38.6, 44.6 } }
Q[94505] = { name = "Call of Water", level = 23, minLevel = 20, map = 1421, x = 38.6, y = 44.6, giver = "Minor Manifestation of Water", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1432, 41.8, 19.1 } }
Q[94568] = { name = "The Cult's True Plans", level = 11, minLevel = 6, map = 2521, x = 66.2, y = 76.5, giver = "Talaanis Shadowsong", pre = { 92644 }, turnin = { 2521, 66.2, 76.5 } }
Q[94616] = { name = "Water Sapta", level = 20, minLevel = 20, map = 1432, x = 41.8, y = 19.1, giver = "Norric Lochthane", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1432, 41.8, 19.1 } }
Q[94773] = { name = "Divine Grace", level = 10, minLevel = 10, map = 1453, x = 49.5, y = 44.6, giver = "High Priestess Laurena", faction = "Alliance", race = { HUMAN = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[94774] = { name = "Divine Grace", level = 10, minLevel = 10, map = 1429, x = 43.3, y = 65.7, giver = "Priestess Josetta", faction = "Alliance", race = { HUMAN = true }, class = { PRIEST = true }, turnin = { 1453, 49.5, 44.6 } }
Q[94789] = { name = "Call of Air", level = 30, minLevel = 30, map = 1455, x = 47.1, y = 13.8, giver = "Eldrun Stormbreaker", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1417, 59.8, 27.6 } }
Q[94792] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1429, x = 42.8, y = 66.4, giver = "Josephine Carson", faction = "Alliance", class = { HUNTER = true }, turnin = { 1429, 42.8, 66.4 } }
Q[94793] = { name = "Training the Beast", level = 10, minLevel = 10, map = 1429, x = 42.8, y = 66.4, giver = "Josephine Carson", faction = "Alliance", pre = { 94864 }, class = { HUNTER = true }, turnin = { 1429, 41.7, 66.4 } }
Q[94817] = { name = "Confounding Flash", level = 10, minLevel = 10, map = 1455, x = 25.0, y = 10.0, giver = "High Priestess Mims", faction = "Alliance", race = { GNOME = true }, class = { PRIEST = true }, turnin = { 1455, 25.0, 10.0 } }
Q[94819] = { name = "Contingency Plan", level = 20, minLevel = 20, map = 1453, x = 49.5, y = 44.6, giver = "High Priestess Laurena", faction = "Alliance", race = { GNOME = true }, class = { PRIEST = true }, turnin = { 1455, 25.0, 10.0 } }
Q[94820] = { name = "Contingency Plan", level = 20, minLevel = 20, map = 1457, x = 39.5, y = 81.2, giver = "Priestess Alathea", faction = "Alliance", race = { GNOME = true }, class = { PRIEST = true } }
Q[94824] = { name = "Confounding Flash", level = 10, minLevel = 10, map = 1426, x = 47.3, y = 52.2, giver = "Maxan Anvol", faction = "Alliance", race = { GNOME = true }, class = { PRIEST = true }, turnin = { 1455, 25.0, 10.0 } }
Q[94863] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1429, x = 42.8, y = 66.4, giver = "Josephine Carson", faction = "Alliance", pre = { 94792 }, class = { HUNTER = true }, turnin = { 1429, 42.8, 66.4 } }
Q[94864] = { name = "Taming the Beast", level = 10, minLevel = 10, map = 1429, x = 42.8, y = 66.4, giver = "Josephine Carson", faction = "Alliance", pre = { 94863 }, class = { HUNTER = true }, turnin = { 1429, 42.8, 66.4 } }
Q[94896] = { name = "Aid For The Refugees", level = 11, minLevel = 8, map = 2521, x = 66.0, y = 74.4, giver = "Ealaane Nimbuswalker", turnin = { 2521, 66.0, 74.4 } }
Q[94897] = { name = "The Fate of a Loved One", level = 11, minLevel = 8, map = 2521, x = 66.0, y = 74.4, giver = "Ealaane Nimbuswalker", turnin = { 2521, 66.0, 74.4 } }
Q[94946] = { name = "The Magical City of Dalaran", level = 13, minLevel = 7, map = 2521, x = 66.6, y = 80.0, giver = "Elaadrin Evengale", faction = "Alliance", pre = { 93089 }, turnin = { 1416, 12.3, 56.3 } }
Q[95034] = { name = "The Debt", level = 24, minLevel = 18, map = 1421, x = 43.3, y = 41.0, giver = "Lumina Windsinger", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1421, 43.3, 41.0 } }
Q[95036] = { name = "A Moon-Kissed Blade", level = 25, minLevel = 20, map = 1421, x = 43.3, y = 41.0, giver = "Lumina Windsinger", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, group = true, turnin = { 1421, 43.3, 41.0 } }
Q[95041] = { name = "Data Hoarders", level = 10, minLevel = 7, map = 1455, x = 67.7, y = 44.2, giver = "Jemma Quikswitch", faction = "Alliance", turnin = { 1455, 67.7, 44.2 } }
Q[95042] = { name = "Seeking the Kor Gem", level = 25, minLevel = 20, map = 1440, x = 11.8, y = 34.5, giver = "Ulric Frostveil", faction = "Horde", class = { PALADIN = true }, group = true, turnin = { 1440, 11.8, 34.5 } }
Q[95065] = { name = "Fishin' Time", level = 12, minLevel = 7, map = 1453, x = 26.1, y = 47.1, giver = "Gilbert Gray", faction = "Alliance", group = true, turnin = { 1453, 26.1, 47.1 } }
Q[95111] = { name = "An Underrated Talent", level = 25, minLevel = 20, map = 1421, x = 43.3, y = 41.0, giver = "Trevan Rol", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1424, 60.4, 26.2 } }
Q[95125] = { name = "Ott's Masterwork", level = 25, minLevel = 20, map = 1424, x = 60.4, y = 26.2, giver = "Ott", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1424, 60.4, 26.2 } }
Q[95126] = { name = "The Moonsilver Blade", level = 25, minLevel = 20, map = 1424, x = 60.4, y = 26.2, giver = "Ott", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1421, 43.3, 41.0 } }
Q[95140] = { name = "Old Fire-Eye", level = 26, minLevel = 20, map = 1421, x = 43.3, y = 41.0, giver = "Lumina Windsinger", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1421, 43.3, 41.0 } }
Q[95161] = { name = "Remember That I Love You", level = 22, minLevel = 15, map = 1453, x = 56.3, y = 54.0, giver = "Orphan Matron Nightingale", faction = "Alliance", turnin = { 1431, 73.0, 44.4 } }
Q[95212] = { name = "Never Saddle on Quality", level = 10, minLevel = 7, map = 1426, x = 63.1, y = 49.9, giver = "Rudra Amberstill", faction = "Alliance", turnin = { 1426, 63.1, 49.9 } }
Q[95213] = { name = "Stolen Blasting Powder", level = 10, minLevel = 7, map = 1426, x = 74.5, y = 56.2, giver = "Drop: Empty Powder Keg", faction = "Alliance", turnin = { 1426, 69.2, 54.8 } }
Q[95214] = { name = "Stolen Blasting Powder", level = 10, minLevel = 7, map = 1426, x = 69.2, y = 54.8, giver = "Quarrymaster Thesten", faction = "Alliance", pre = { 95213 }, turnin = { 1426, 69.2, 54.8 } }
Q[95216] = { name = "The New Plague", level = 22, minLevel = 16, map = 1458, x = 46.3, y = 71.9, giver = "Theodore Griffs", faction = "Horde", dungeon = "Ruins of Lordaeron", turnin = { 1458, 46.3, 71.9 } }
Q[95314] = { name = "That Shadowvale Green Elixir", level = 10, minLevel = 7, map = 1420, x = 59.4, y = 52.2, giver = "Carolai Anise", faction = "Horde", turnin = { 1420, 59.4, 52.2 } }
Q[95328] = { name = "Whispering Horror Residue", level = 10, minLevel = 7, map = 1420, x = 9.2, y = 60.6, giver = "Drop: Whispering Horror Residue", faction = "Horde", turnin = { 1458, 49.1, 14.6 } }
Q[95349] = { name = "The Earthen Ring", level = 13, minLevel = 7, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", faction = "Horde", pre = { 93090 }, turnin = { 1412, 33.4, 22.6 } }
Q[95494] = { name = "Bruised Pride and Lion Hides", level = 18, minLevel = 14, map = 1413, x = 43.8, y = 12.2, giver = "Vrang Wildgore", faction = "Horde", turnin = { 1413, 43.8, 12.2 } }
Q[95495] = { name = "The Hermit Tanner", level = 18, minLevel = 14, map = 1413, x = 43.8, y = 12.2, giver = "Vrang Wildgore", faction = "Horde", turnin = { 1413, 42.0, 11.4 } }
Q[95507] = { name = "Vrang's Game", level = 18, minLevel = 14, map = 1413, x = 43.8, y = 12.2, giver = "Vrang Wildgore", faction = "Horde", turnin = { 1413, 43.8, 12.2 } }
Q[95508] = { name = "Unwelcome Guests", level = 18, minLevel = 14, map = 1413, x = 42.0, y = 11.4, giver = "Walton", faction = "Horde", turnin = { 1413, 42.0, 11.4 } }
Q[95621] = { name = "Trouble in the Valley", level = 18, minLevel = 14, map = 1413, x = 42.0, y = 11.4, giver = "Walton", faction = "Horde", turnin = { 1413, 42.0, 11.4 } }
Q[95646] = { name = "Horrors in the Highland", level = 31, minLevel = 24, map = 1437, x = 56.4, y = 40.4, giver = "Rethiel the Greenwarden", faction = "Alliance", dungeon = "Excavation Site: Wetlands", turnin = { 1437, 56.4, 40.4 } }
Q[95647] = { name = "Lost in the Thicket Things", level = 31, minLevel = 24, map = 1437, x = 11.9, y = 58.8, giver = "Caitlin Grassman", faction = "Alliance", dungeon = "Excavation Site: Wetlands" }
Q[95663] = { name = "Dragonmaw Rumors", level = 31, minLevel = 24, map = 1417, x = 74.5, y = 35.6, giver = "Zaruk", faction = "Horde", dungeon = "Excavation Site: Wetlands" }
Q[95697] = { name = "Changing Tastes", level = 31, minLevel = 24, map = 1454, x = 57.2, y = 53.3, giver = "Borstan", faction = "Horde", dungeon = "Excavation Site: Wetlands", turnin = { 1454, 57.2, 53.3 } }
Q[95737] = { name = "Seeking Caitlin", level = 31, minLevel = 24, map = 1440, x = 35.0, y = 48.5, giver = "Llana", faction = "Alliance", dungeon = "Excavation Site: Wetlands", turnin = { 1437, 11.9, 58.8 } }
Q[95772] = { name = "Songblade Search", level = 31, minLevel = 24, map = 1433, x = 25.8, y = 46.4, giver = "Dorin Songblade", faction = "Alliance", dungeon = "Excavation Site: Wetlands" }
Q[95774] = { name = "Her Name Is Olgra", level = 20, minLevel = 14, map = 1413, x = 52.0, y = 31.6, giver = "Mankrik", faction = "Horde", turnin = { 1413, 52.0, 31.6 } }
Q[95803] = { name = "A Token of Good Faith", level = 12, minLevel = 9, map = 1420, x = 22.1, y = 44.7, giver = "Danitha Morr", faction = "Horde", pre = { 91317 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1458, 58.0, 91.8 } }
Q[95805] = { name = "Grace of An'she and Mu'sha", level = 4, minLevel = 1, map = 1412, x = 42.5, y = 90.1, giver = "Seer Graytongue", faction = "Horde", pre = { 755 }, turnin = { 1412, 56.6, 88.7 } }
Q[95883] = { name = "The Tortured Soul", level = 23, minLevel = 20, map = 1421, x = 58.1, y = 69.8, giver = "Offering Stone", faction = "Horde", turnin = { 1421, 58.1, 69.8 } }
Q[95884] = { name = "The Offering Stone", level = 23, minLevel = 20, map = 1421, x = 58.7, y = 71.3, giver = "Drop: Note Scrap", faction = "Horde", turnin = { 1421, 58.1, 69.8 } }
Q[95885] = { name = "The Offering of Blood", level = 23, minLevel = 20, map = 1421, x = 58.1, y = 69.8, giver = "Offering Stone", faction = "Horde", turnin = { 1421, 58.1, 69.8 } }
Q[95981] = { name = "Watching the Roads", level = 20, minLevel = 10, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", faction = "Horde", turnin = { 1421, 44.0, 40.9 } }
Q[95999] = { name = "WANTED: Incinerator Gar'im", level = 25, minLevel = 16, map = 1433, x = 24.4, y = 46.1, giver = "Wanted: Incinerator Gar'im", faction = "Alliance", turnin = { 1433, 24.9, 44.5 } }
Q[96016] = { name = "The Tempest's Weapons", level = 40, minLevel = 30, map = 1417, x = 59.8, y = 27.6, giver = "Veyric Thunderhame", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1416, 80.5, 66.9 } }
Q[96130] = { name = "Chakuyak", level = 5, minLevel = 4, map = 1412, x = 46.9, y = 59.6, giver = "Yaw Sharpmane", faction = "Horde", turnin = { 1412, 46.9, 59.6 } }
Q[96135] = { name = "Heed My Call", level = 40, minLevel = 30, map = 1417, x = 59.8, y = 27.6, giver = "Veyric Thunderhame", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1417, 59.8, 27.6 } }
Q[96137] = { name = "Ira's Dagger", level = 24, minLevel = 18, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", faction = "Alliance", turnin = { 1431, 72.6, 47.6 } }
Q[96138] = { name = "Merrick's Bow", level = 28, minLevel = 18, map = 1431, x = 61.9, y = 64.2, giver = "Drop: Merrick's Bow", faction = "Alliance", turnin = { 1431, 72.6, 47.6 } }
Q[96139] = { name = "The Valor Family", level = 22, minLevel = 18, map = 1431, x = 72.6, y = 47.6, giver = "Sirra Von'Indi", faction = "Alliance", turnin = { 1431, 72.6, 47.6 } }
Q[96204] = { name = "The Windshaper's Wrath", level = 22, minLevel = 18, map = 1421, x = 65.6, y = 23.4, giver = "Lumina Windsinger", faction = "Horde", race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1421, 43.3, 41.0 } }
Q[96222] = { name = "Khan Hratha", level = 42, minLevel = 30, map = 1443, x = 43.5, y = 78.9, giver = "Umarak", faction = "Horde", group = true }
Q[96241] = { name = "Talkin' bout Toxins, Mon", level = 30, minLevel = 23, map = 1412, x = 32.5, y = 20.7, giver = "Mazu'kon", faction = "Horde", turnin = { 1412, 32.5, 20.7 } }
Q[96243] = { name = "Call of Earth", level = 10, minLevel = 10, map = 1455, x = 47.1, y = 13.8, giver = "Eldrun Stormbreaker", faction = "Alliance", class = { SHAMAN = true }, turnin = { 1426, 28.8, 66.2 } }
Q[96259] = { name = "Defending the Dead", level = 30, minLevel = 23, map = 1412, x = 33.4, y = 22.6, giver = "Muln Earthfury", faction = "Horde", turnin = { 1412, 33.4, 22.6 } }
Q[96260] = { name = "Stronger than Steel", level = 30, minLevel = 23, map = 1412, x = 32.5, y = 20.0, giver = "Yorn Grimtotem", faction = "Horde", turnin = { 1412, 32.5, 20.0 } }
Q[96261] = { name = "The Broodmother", level = 31, minLevel = 23, map = 1412, x = 33.4, y = 22.6, giver = "Muln Earthfury", faction = "Horde", turnin = { 1412, 33.4, 22.6 } }
Q[96264] = { name = "Elemental Aid", level = 33, minLevel = 30, map = 1417, x = 59.8, y = 27.6, giver = "Veyric Thunderhame", faction = "Alliance", class = { SHAMAN = true }, group = true, turnin = { 1417, 59.8, 27.6 } }
Q[96294] = { name = "A Darker Truth", level = 30, minLevel = 23, map = 1412, x = 33.4, y = 7.5, giver = "Drop: Bloody Parchment", faction = "Horde", turnin = { 1412, 33.4, 22.6 } }
Q[96390] = { name = "Nip 'Em in the Bud", level = 13, minLevel = 9, map = 1426, x = 64.9, y = 58.5, giver = "Earthseer Farsen", faction = "Alliance", pre = { 96392 }, turnin = { 1426, 64.9, 58.5 } }
Q[96391] = { name = "Underground Map", level = 15, minLevel = 9, map = 1426, x = 77.4, y = 61.3, giver = "Drop: Dark Iron Map", faction = "Alliance", turnin = { 1426, 64.9, 58.5 } }
Q[96392] = { name = "Farsen's Watch", level = 13, minLevel = 9, map = 1426, x = 64.9, y = 58.5, giver = "Earthseer Farsen", faction = "Alliance", turnin = { 1426, 64.9, 58.5 } }
Q[96393] = { name = "Old Ironforge Incursion", level = 16, minLevel = 9, map = 1426, x = 64.9, y = 58.5, giver = "Earthseer Farsen", faction = "Alliance", pre = { 96391 }, dungeon = "The Hall of Thanes", turnin = { 1455, 39.1, 56.2 } }
Q[96394] = { name = "The Restless Dead", level = 15, minLevel = 10, map = 1455, x = 33.1, y = 47.9, giver = "Afadra Dunwall", faction = "Alliance", dungeon = "The Hall of Thanes", turnin = { 1455, 33.1, 47.9 } }
Q[96403] = { name = "Important Heirlooms", level = 15, minLevel = 10, map = 1455, x = 32.2, y = 44.5, giver = "Thom Filch", faction = "Alliance", dungeon = "The Hall of Thanes", turnin = { 1455, 32.2, 44.5 } }
Q[96408] = { name = "A Visitor to Dun Morogh", level = 13, minLevel = 9, map = 1426, x = 50.4, y = 49.1, giver = "Beldin Steelgrill", faction = "Alliance", turnin = { 1426, 64.9, 58.5 } }
Q[96779] = { name = "Syndicate Sabotage", level = 24, minLevel = 24, map = 1416, x = 84.9, y = 80.4, giver = "Myrokos Silentform", class = { ROGUE = true }, turnin = { 1416, 84.9, 80.4 } }
Q[96781] = { name = "What's the Big Idea?", level = 36, minLevel = 24, map = 1416, x = 84.9, y = 80.4, giver = "Myrokos Silentform", class = { ROGUE = true }, turnin = { 1416, 84.9, 80.4 } }
Q[96783] = { name = "A Way In", level = 34, minLevel = 24, map = 1416, x = 84.9, y = 80.4, giver = "Myrokos Silentform", class = { ROGUE = true } }
Q[96800] = { name = "Past Due", level = 38, minLevel = 30, map = 1416, x = 10.7, y = 64.1, giver = "Magus Olvek", faction = "Alliance", dungeon = "Scarlet Monastery", turnin = { 1416, 10.7, 64.1 } }
Q[96821] = { name = "Legging It", level = 6, minLevel = 1, map = 1411, x = 56.0, y = 73.9, giver = "Vel'rin Fang", faction = "Horde", turnin = { 1411, 52.0, 43.5 } }
Q[96822] = { name = "For Honor", level = 6, minLevel = 3, map = 1411, x = 54.0, y = 42.6, giver = "Turroc", faction = "Horde", turnin = { 1411, 54.0, 42.6 } }
Q[96825] = { name = "This Fruit Could Bite Back", level = 6, minLevel = 3, map = 1411, x = 51.1, y = 42.5, giver = "Cook Torka", faction = "Horde", turnin = { 1411, 51.1, 42.5 } }
Q[96876] = { name = "Ukor's Lost Pack", level = 8, minLevel = 5, map = 1411, x = 50.7, y = 56.3, giver = "Drop: Ukor's Lost Pack", faction = "Horde", turnin = { 1411, 52.1, 68.3 } }
Q[96877] = { name = "Halikor's Hoof", level = 12, minLevel = 6, map = 1411, x = 41.9, y = 25.9, giver = "Drop: Halikor's Hoof", faction = "Horde", turnin = { 1454, 63.3, 44.8 } }
Q[96895] = { name = "The Argent Emissary", level = 13, minLevel = 10, map = 1420, x = 61.5, y = 53.5, giver = "Deathguard Terrence", faction = "Horde", turnin = { 1420, 65.9, 61.1 } }
Q[96896] = { name = "A Righteous Cause", level = 13, minLevel = 10, map = 1420, x = 22.0, y = 44.7, giver = "Leonid Barthalomew the Revered", faction = "Horde", pre = { 96899 }, turnin = { 1420, 22.0, 44.7 } }
Q[96897] = { name = "The Cult of the Damned", level = 13, minLevel = 10, map = 1420, x = 65.9, y = 61.1, giver = "Hadric Harlson", faction = "Horde", pre = { 96895 }, turnin = { 1420, 65.9, 61.1 } }
Q[96898] = { name = "Remnants of War", level = 13, minLevel = 10, map = 1420, x = 65.9, y = 61.1, giver = "Hadric Harlson", faction = "Horde", pre = { 96895 }, turnin = { 1420, 65.9, 61.1 } }
Q[96899] = { name = "Bandarion Keep", level = 13, minLevel = 10, map = 1420, x = 65.9, y = 61.1, giver = "Hadric Harlson", faction = "Horde", pre = { 96897, 96898 }, turnin = { 1420, 22.0, 44.7 } }
Q[96984] = { name = "Heart of Disruption", level = 33, minLevel = 24, map = 1421, x = 68.6, y = 45.1, giver = "Image of Archmage Modera", faction = "Horde", dungeon = "City of Dalaran", turnin = { 1424, 61.6, 20.9 } }
Q[96986] = { name = "The Grave Knight", level = 33, minLevel = 24, map = 1424, x = 62.6, y = 20.6, giver = "Melisara", faction = "Horde", dungeon = "City of Dalaran", turnin = { 1424, 62.6, 20.6 } }
Q[96988] = { name = "Source of Power", level = 33, minLevel = 24, map = 1458, x = 46.6, y = 74.1, giver = "Doctor Martin Felben", faction = "Horde", dungeon = "City of Dalaran", turnin = { 1458, 46.6, 74.1 } }
Q[97003] = { name = "Chol'aruk the Ravener", level = 21, minLevel = 15, map = 1413, x = 52.6, y = 29.1, giver = "Gur'ak", faction = "Horde", turnin = { 1413, 52.6, 29.1 } }
Q[97005] = { name = "Chol'aruk the Ravener", level = 21, minLevel = 15, map = 1413, x = 61.9, y = 39.4, giver = "Bainham", faction = "Alliance", turnin = { 1413, 61.9, 39.4 } }
Q[97220] = { name = "Philmor's Favor", level = 15, minLevel = 9, map = 1453, x = 30.4, y = 28.8, giver = "Manifest Clerk Philmor", faction = "Alliance", turnin = { 1453, 66.6, 73.4 } }
Q[97222] = { name = "Gatehouse Goods", level = 15, minLevel = 9, map = 1453, x = 66.6, y = 73.4, giver = "Elaine Trias", faction = "Alliance", turnin = { 1453, 66.6, 73.4 } }
Q[97223] = { name = "Bloodtalon Matriarch", level = 8, minLevel = 5, map = 1411, x = 55.3, y = 75.5, giver = "Xar'Ti", faction = "Horde", turnin = { 1411, 55.3, 75.5 } }
Q[97225] = { name = "Forgotten Loa Idols", level = 9, minLevel = 4, map = 1411, x = 55.9, y = 74.4, giver = "Master Vornal", faction = "Horde", turnin = { 1411, 56.0, 74.7 } }
Q[97234] = { name = "Reading Room", level = 18, minLevel = 13, map = 1453, x = 38.8, y = 62.4, giver = "Roy Lewells", faction = "Alliance", turnin = { 1453, 75.0, 30.1 } }
Q[97236] = { name = "Fang of Githyiss", level = 5, minLevel = 1, map = 1438, x = 56.6, y = 26.3, giver = "Drop: Fang of Githyiss", faction = "Alliance", turnin = { 1438, 57.8, 41.6 } }
Q[97237] = { name = "Shelf Picked", level = 18, minLevel = 13, map = 1453, x = 75.0, y = 30.1, giver = "Donyal Tovald", faction = "Alliance", turnin = { 1453, 38.8, 62.4 } }
Q[97242] = { name = "Yelmak's Medley", level = 15, minLevel = 9, map = 1454, x = 56.0, y = 34.1, giver = "Kor'geld", faction = "Horde", turnin = { 1454, 56.0, 34.1 } }
Q[97246] = { name = "Meal Appeal", level = 15, minLevel = 5, map = 1454, x = 55.7, y = 72.2, giver = "Thatog", faction = "Horde", turnin = { 1454, 57.2, 53.3 } }
Q[97249] = { name = "Favorite Food", level = 15, minLevel = 5, map = 1454, x = 57.2, y = 53.3, giver = "Borstan", faction = "Horde", turnin = { 1454, 36.5, 29.1 } }
Q[97250] = { name = "Wrongly Blamed, Justly Corrected", level = 23, minLevel = 18, map = 1413, x = 44.6, y = 59.3, giver = "Grunt Logmar", faction = "Horde", turnin = { 1413, 44.6, 59.3 } }
Q[97253] = { name = "Parts and Pieces", level = 14, minLevel = 9, map = 1413, x = 63.1, y = 36.3, giver = "Wrenix the Wretched", faction = "Horde", turnin = { 1413, 63.1, 36.3 } }
Q[97263] = { name = "Your Package Has Arrived", level = 2, minLevel = 1, map = 1455, x = 72.3, y = 48.6, giver = "Misplaced Packages", faction = "Alliance", turnin = { 1455, 47.1, 13.8 } }
Q[97265] = { name = "Hate the Hatefury", level = 33, minLevel = 28, map = 1443, x = 25.4, y = 67.2, giver = "Aka'rai", faction = "Horde" }
Q[97275] = { name = "Whuut's the Rush", level = 15, minLevel = 9, map = 1454, x = 56.8, y = 33.0, giver = "Yelmak", faction = "Horde", turnin = { 1454, 55.8, 32.9 } }
Q[97277] = { name = "Grund and Gozwin", level = 6, minLevel = 4, map = 1426, x = 28.7, y = 67.5, giver = "Grund Drokda", faction = "Alliance", turnin = { 1426, 28.7, 67.5 } }
Q[97279] = { name = "Wayward Weapons", level = 2, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", turnin = { 1411, 40.5, 68 } }
Q[97281] = { name = "A Simmering Storm", level = 11, minLevel = 7, map = 1411, x = 52.0, y = 21.4, giver = "Drop: Dull Storm Orb", faction = "Horde", turnin = { 1411, 46.4, 22.9 } }
Q[97282] = { name = "Stormy Potential", level = 11, minLevel = 7, map = 1411, x = 46.4, y = 22.9, giver = "Rezlak", faction = "Horde", pre = { 97281 }, turnin = { 1411, 46.4, 22.9 } }
Q[97287] = { name = "Shrewd Negotiations", level = 33, minLevel = 24, map = 1424, x = 61.6, y = 20.9, giver = "Magus Wordeen Voidglare", faction = "Horde" }
Q[97289] = { name = "Unending Torment", level = 21, minLevel = 16, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", faction = "Horde", dungeon = "Ruins of Lordaeron", turnin = { 1458, 45.9, 61.7 } }
Q[97290] = { name = "Unending Torment", level = 21, minLevel = 16, map = 1458, x = 45.9, y = 61.7, giver = "Unfinished Abomination", faction = "Horde", turnin = { 1458, 48.8, 69.3 } }
Q[97291] = { name = "Unending Torment", level = 21, minLevel = 16, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", faction = "Horde", dungeon = "Ruins of Lordaeron", turnin = { 1458, 48.8, 69.3 } }
Q[97292] = { name = "Unending Torment", level = 21, minLevel = 16, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", faction = "Horde", dungeon = "Ruins of Lordaeron", turnin = { 1458, 48.8, 69.3 } }
Q[97326] = { name = "Rocks to Rests", level = 15, minLevel = 5, map = 1454, x = 36.8, y = 29.1, giver = "Thra", faction = "Horde", turnin = { 1454, 36.8, 29.1 } }
Q[97485] = { name = "Traditions of the Bluff", level = 10, minLevel = 3, map = 1456, x = 38, y = 55.9, giver = "Eylah Sunhorn", faction = "Horde", turnin = { 1456, 38, 55.9 } }
Q[97538] = { name = "Pigments for Paints", level = 26, minLevel = 20, map = 1456, x = 54.1, y = 47.0, giver = "Tah Winterhoof", faction = "Horde", turnin = { 1456, 54.1, 47.0 } }
Q[97539] = { name = "Silky Sutures", level = 36, minLevel = 30, map = 1417, x = 73.4, y = 36.9, giver = "Doctor Gregory Victor", faction = "Horde" }
Q[97558] = { name = "Hides for the Forsaken", level = 11, minLevel = 6, map = 1420, x = 65.4, y = 60.1, giver = "Shelene Rhobart", faction = "Horde", turnin = { 1420, 65.4, 60.1 } }
Q[97891] = { name = "Prompt Potion Runner", level = 16, minLevel = 9, map = 1458, x = 58.6, y = 54.7, giver = "Alessandro Luca", faction = "Horde", turnin = { 1458, 46.6, 74.1 } }
Q[97894] = { name = "Business in Auberdine", level = 17, minLevel = 13, map = 1453, x = 59.4, y = 34.3, giver = "Borgus Steelhand", faction = "Alliance", turnin = { 1439, 38.1, 41.2 } }
Q[97914] = { name = "Expanding Horizons", level = 17, minLevel = 13, map = 1439, x = 37.4, y = 40.1, giver = "Thundris Windweaver", faction = "Alliance", turnin = { 1453, 57.7, 47.9 } }
Q[97926] = { name = "Making Do", level = 17, minLevel = 13, map = 1453, x = 57.7, y = 47.9, giver = "Baros Alexston", faction = "Alliance", turnin = { 1439, 37.4, 40.1 } }
Q[97977] = { name = "Nature's Call", level = 3, minLevel = 1, map = 1438, x = 57.8, y = 45.2, giver = "Tarindrella", faction = "Alliance", pre = { 458 }, turnin = { 1438, 57.8, 45.2 } }
Q[97985] = { name = "Thundering Hearts", level = 33, minLevel = 25, map = 1458, x = 49.1, y = 70.1, giver = "Calder Gray", faction = "Horde", turnin = { 1458, 49.1, 70.1 } }
Q[98013] = { name = "Swelling Forces", level = 20, minLevel = 12, map = 1439, x = 43.8, y = 76.5, giver = "Arbal", faction = "Alliance", turnin = { 1439, 43.8, 76.5 } }
Q[98025] = { name = "WANTED: Jai'vhanel", level = 13, minLevel = 10, map = 1439, x = 37.2, y = 44.2, giver = "WANTED: Murkdeep!", faction = "Alliance", turnin = { 1439, 37.7, 43.4 } }
Q[98027] = { name = "Gleaming Crescent Necklace", level = 29, minLevel = 25, map = 1440, x = 63.0, y = 71.5, giver = "Gleaming Crescent Pendant", faction = "Alliance", turnin = { 1440, 36.6, 50.0 } }
Q[98028] = { name = "Baron Marinous", level = 21, minLevel = 17, map = 1439, x = 59.3, y = 22.7, giver = "Drop: Clouded Water Globe", faction = "Alliance", turnin = { 1439, 43.5, 76.3 } }
Q[98042] = { name = "It's All Fun and Games Until...", level = 17, minLevel = 12, map = 1439, x = 38.5, y = 86.0, giver = "Twilight Tome", faction = "Alliance", turnin = { 1439, 37.4, 40.1 } }
Q[98046] = { name = "Crown of the Earth", level = 11, minLevel = 1, map = 1457, x = 34.8, y = 9.3, giver = "Arch Druid Fandral Staghelm", faction = "Alliance", pre = { 935 }, turnin = { 1457, 40.4, 88.7 } }
Q[98059] = { name = "Hillsbrad's Hoard", level = 27, minLevel = 23, map = 1424, x = 46.4, y = 50.2, giver = "Captain McManus", faction = "Alliance", turnin = { 1424, 46.4, 50.2 } }
Q[98065] = { name = "Crown of the Earth", level = 11, minLevel = 1, map = 1457, x = 40.4, y = 88.7, giver = "Lariia", faction = "Alliance", pre = { 98046 }, turnin = { 1457, 39.1, 81.6 } }
Q[98067] = { name = "Eyes of the Sentinels", level = 11, minLevel = 1, map = 1457, x = 39.6, y = 89.5, giver = "Sentinel Dalia Sunblade", faction = "Alliance", turnin = { 1457, 39.6, 89.5 } }
Q[98069] = { name = "Stolen Freewind Supplies", level = 31, minLevel = 27, map = 1441, x = 46.2, y = 51.5, giver = "Jandia", faction = "Horde", turnin = { 1441, 46.2, 51.5 } }
Q[98070] = { name = "Stop the Screeching", level = 31, minLevel = 27, map = 1441, x = 46.2, y = 51.5, giver = "Jandia", faction = "Horde", turnin = { 1441, 46.2, 51.5 } }
Q[98071] = { name = "Brewer's Trade", level = 27, minLevel = 23, map = 1424, x = 52.1, y = 58.7, giver = "Brewmeister Bilger", faction = "Alliance", turnin = { 1424, 52.1, 58.7 } }
Q[98094] = { name = "Scout Support", level = 25, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", faction = "Horde", turnin = { 1424, 63.6, 53.1 } }
Q[98095] = { name = "Valuable Vantages", level = 25, minLevel = 19, map = 1424, x = 63.6, y = 53.1, giver = "Deathstalker Masoj", faction = "Horde", turnin = { 1424, 63.6, 53.1 } }
Q[98155] = { name = "Pristine Pesterhide Pelts", level = 31, minLevel = 27, map = 1444, x = 89.4, y = 46.0, giver = "Kristy Grant", faction = "Alliance", turnin = { 1444, 89.4, 46.0 } }
Q[98189] = { name = "Return the Statuette", level = 25, minLevel = 20, map = 1437, x = 8.3, y = 58.6, giver = "Karl Boran", faction = "Alliance", turnin = { 1437, 9.9, 57.5 } }
Q[98190] = { name = "A Friend of the Family", level = 25, minLevel = 20, map = 1437, x = 9.9, y = 57.5, giver = "Captain Stoutfist", faction = "Alliance", turnin = { 1453, 80.2, 38.4 } }
Q[98191] = { name = "A Friend of the Family", level = 25, minLevel = 20, map = 1453, x = 80.2, y = 38.4, giver = "Highlord Bolvar Fordragon", faction = "Alliance", turnin = { 1453, 48.4, 50.2 } }
Q[98197] = { name = "Spoils of War", level = 22, minLevel = 18, map = 1437, x = 10.1, y = 56.9, giver = "Valstag Ironjaw", faction = "Alliance", turnin = { 1437, 10.1, 56.9 } }
Q[98209] = { name = "Bloom of the Heavens", level = 29, minLevel = 22, map = 1437, x = 7.9, y = 55.8, giver = "Sylessa Duskwhisper", faction = "Alliance", turnin = { 1439, 37.4, 40.1 } }
Q[98216] = { name = "Understanding Our Present", level = 31, minLevel = 23, map = 1437, x = 38.8, y = 52.4, giver = "Prospector Whelgar", faction = "Alliance", turnin = { 1437, 38.8, 52.4 } }
Q[98219] = { name = "The Shamed Lieutenant", level = 30, minLevel = 20, map = 1453, x = 48.4, y = 50.2, giver = "Lord Grayson Shadowbreaker", faction = "Alliance", turnin = { 1424, 51.5, 58.4 } }
Q[98221] = { name = "From the Ashes", level = 28, minLevel = 23, map = 1437, x = 9.9, y = 57.5, giver = "Captain Stoutfist", faction = "Alliance", turnin = { 1437, 9.9, 57.5 } }
Q[98223] = { name = "Old Habits", level = 31, minLevel = 23, map = 1437, x = 53.5, y = 54.5, giver = "Tattered Spellbook", faction = "Alliance", turnin = { 1437, 9.9, 57.5 } }
Q[98230] = { name = "This Land Was Their Land", level = 29, minLevel = 22, map = 1437, x = 9.9, y = 57.5, giver = "Captain Stoutfist", faction = "Alliance", turnin = { 1437, 49.4, 42.1 } }
Q[98240] = { name = "Crimson Crate Delivery", level = 29, minLevel = 19, map = 1437, x = 8.6, y = 55.7, giver = "James Halloran", faction = "Alliance", turnin = { 1437, 49.4, 42.1 } }
Q[98245] = { name = "Razormaw Needling", level = 29, minLevel = 21, map = 1437, x = 49.4, y = 42.1, giver = "Howin Kindfeather", faction = "Alliance", turnin = { 1437, 49.4, 42.1 } }
Q[98246] = { name = "Trying Times", level = 29, minLevel = 21, map = 1437, x = 49.4, y = 42.1, giver = "Howin Kindfeather", faction = "Alliance", turnin = { 1437, 49.4, 42.1 } }
Q[98251] = { name = "Never Coming Back", level = 22, minLevel = 18, map = 1440, x = 40.4, y = 61.5, giver = "Va'xug Firefure", faction = "Horde", turnin = { 1440, 40.4, 61.5 } }
Q[98252] = { name = "A Void Path", level = 22, minLevel = 18, map = 1440, x = 40.4, y = 61.5, giver = "Va'xug Firefure", faction = "Horde", turnin = { 1440, 38.9, 57.9 } }
Q[98282] = { name = "Alchemical Hazards", level = 22, minLevel = 20, map = 1437, x = 11.9, y = 58.8, giver = "Caitlin Grassman", faction = "Alliance", turnin = { 1437, 11.9, 58.8 } }
Q[98283] = { name = "Carnage", level = 30, minLevel = 22, map = 1437, x = 56.4, y = 40.4, giver = "Rethiel the Greenwarden", faction = "Alliance", turnin = { 1437, 56.4, 40.4 } }
Q[98291] = { name = "Death to the Dragonmaw", level = 30, minLevel = 22, map = 1437, x = 49.4, y = 42.1, giver = "Howin Kindfeather", faction = "Alliance", turnin = { 1437, 49.4, 42.1 } }
Q[98293] = { name = "Forced Disarmament", level = 30, minLevel = 22, map = 1437, x = 58.8, y = 45.0, giver = "Dragonmaw Armaments", faction = "Alliance", turnin = { 1437, 9.9, 57.5 } }
Q[98297] = { name = "Stopping the Cycle", level = 34, minLevel = 24, map = 1437, x = 49.4, y = 42.1, giver = "Howin Kindfeather", faction = "Alliance", turnin = { 1437, 49.4, 42.1 } }
Q[98298] = { name = "Arugal's Folly", level = 16, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", faction = "Horde", turnin = { 1421, 44.2, 39.8 } }
Q[98299] = { name = "Stop the Spread", level = 20, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", faction = "Horde", turnin = { 1421, 44.2, 39.8 } }
Q[98300] = { name = "Word to Ironforge", level = 34, minLevel = 24, map = 1437, x = 49.4, y = 42.1, giver = "Howin Kindfeather", faction = "Alliance", turnin = { 1455, 39.1, 56.2 } }
Q[98310] = { name = "Gleaning Our Future", level = 32, minLevel = 24, map = 1437, x = 38.8, y = 52.4, giver = "Prospector Whelgar", faction = "Alliance", turnin = { 1437, 38.8, 52.4 } }
Q[98313] = { name = "For Further Study", level = 32, minLevel = 24, map = 1437, x = 38.8, y = 52.4, giver = "Prospector Whelgar", faction = "Alliance", turnin = { 1455, 77.5, 11.8 } }
Q[98319] = { name = "Secure the Mountain", level = 8, minLevel = 4, map = 1426, x = 44.1, y = 57.1, giver = "Mountaineer Gretchen", faction = "Alliance", pre = { 98322 }, turnin = { 1426, 44.1, 57.1 } }
Q[98321] = { name = "Flintfire's Shipment", level = 7, minLevel = 4, map = 1426, x = 45.3, y = 51.9, giver = "Tognus Flintfire", faction = "Alliance", turnin = { 1426, 45.3, 51.9 } }
Q[98322] = { name = "Secure the Mountain", level = 8, minLevel = 4, map = 1426, x = 46.7, y = 53.8, giver = "Senir Whitebeard", faction = "Alliance", turnin = { 1426, 44.1, 57.1 } }
Q[98323] = { name = "Secure the Mountain", level = 8, minLevel = 4, map = 1426, x = 44.1, y = 57.1, giver = "Mountaineer Gretchen", faction = "Alliance", pre = { 98319 }, turnin = { 1426, 46.7, 53.8 } }
Q[98326] = { name = "Frosthowl", level = 9, minLevel = 5, map = 1426, x = 31.5, y = 44.6, giver = "Gretta Ganter", faction = "Alliance", turnin = { 1426, 31.5, 44.6 } }
Q[98340] = { name = "The Great Cat Spirit", level = 20, minLevel = 20, map = 1456, x = 76.5, y = 27.2, giver = "Turak Runetotem", faction = "Horde", race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[98342] = { name = "The Great Cat Spirit", level = 20, minLevel = 20, map = 1450, x = 58.4, y = 73.5, giver = "Great Cat Spirit", faction = "Horde", race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1450, 58.4, 73.5 } }
Q[98362] = { name = "To Thunder Bluff", level = 20, minLevel = 20, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Horde", race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1456, 76.5, 27.2 } }
Q[98386] = { name = "Alther's Mill", level = 21, minLevel = 15, map = 1433, x = 27.1, y = 48.6, giver = "Foreman Oslow", faction = "Alliance", turnin = { 1433, 27.1, 48.6 } }
Q[98387] = { name = "Blackrock Blockade", level = 21, minLevel = 18, map = 1433, x = 28.4, y = 49.0, giver = "Marshal Marris", faction = "Alliance", turnin = { 1433, 28.4, 49.0 } }
Q[98389] = { name = "A Light in the Darkness", level = 4, minLevel = 2, map = 1420, x = 31.1, y = 66.4, giver = "Aramis Hammerhand", faction = "Horde", turnin = { 1420, 31.1, 66.4 } }
Q[98391] = { name = "The Sisterhood of Elune", level = 10, minLevel = 5, map = 1438, x = 55.6, y = 56.8, giver = "Laurna Morninglight", faction = "Alliance", turnin = { 1457, 28.9, 45.8 } }
Q[98392] = { name = "Darkness in the Glade", level = 12, minLevel = 6, map = 1438, x = 38.3, y = 34.4, giver = "Sentinel Arynia Cloudsbreak", faction = "Alliance", pre = { 937 }, turnin = { 1438, 38.3, 34.4 } }
Q[98393] = { name = "The Great Cat Spirit", level = 20, minLevel = 20, map = 1457, x = 35.4, y = 8.4, giver = "Mathrengyl Bearwalker", faction = "Alliance", race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[98394] = { name = "The Great Cat Spirit", level = 20, minLevel = 20, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Alliance", race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1450, 58.4, 73.5 } }
Q[98396] = { name = "The Great Cat Spirit", level = 20, minLevel = 20, map = 1450, x = 58.4, y = 73.5, giver = "Great Cat Spirit", faction = "Alliance", race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1450, 58.4, 73.5 } }
Q[98397] = { name = "To Darnassus", level = 20, minLevel = 20, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Alliance", race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1457, 35.4, 8.4 } }
Q[98398] = { name = "The Oracle Tree", level = 12, minLevel = 6, map = 1438, x = 38.3, y = 34.4, giver = "Sentinel Arynia Cloudsbreak", faction = "Alliance", pre = { 98392 }, turnin = { 1438, 37.0, 34.0 } }
Q[98403] = { name = "Twisted Hatred", level = 12, minLevel = 4, map = 1438, x = 55.6, y = 57.0, giver = "Tallonkai Swiftroot", faction = "Alliance", pre = { 932 }, turnin = { 1438, 55.6, 57.0 } }
Q[98405] = { name = "The Great Cat Spirit", level = 20, minLevel = 20, map = 1450, x = 56.2, y = 30.6, giver = "Dendrite Starblaze", faction = "Horde", race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1450, 58.4, 73.5 } }
Q[98407] = { name = "Show of Force", level = 17, minLevel = 11, map = 1433, x = 25.6, y = 60, giver = "Deputy Feldon", faction = "Alliance", turnin = { 1433, 25.6, 60 } }
Q[98417] = { name = "Vengeful Trail", level = 30, minLevel = 23, map = 1440, x = 86.3, y = 45.7, giver = "Maseara Autumnmoon", faction = "Alliance", turnin = { 1440, 86.3, 45.7 } }
Q[98418] = { name = "Shared Fury", level = 30, minLevel = 23, map = 1440, x = 86.3, y = 45.7, giver = "Maseara Autumnmoon", faction = "Alliance", turnin = { 1440, 86.3, 45.7 } }
Q[98424] = { name = "Fizsprocket's Notes", level = 10, minLevel = 5, map = 1412, x = 61.2, y = 49.3, giver = "Drop: Mulgore Expansion Plans", faction = "Horde", turnin = { 1412, 54.8, 64.3 } }
Q[98427] = { name = "Ceasing Operations", level = 12, minLevel = 5, map = 1412, x = 54.8, y = 64.3, giver = "Morin Cloudstalker", faction = "Horde", pre = { 98424 }, turnin = { 1412, 54.8, 64.3 } }
Q[98430] = { name = "The Longwalkers", level = 8, minLevel = 1, map = 1412, x = 33.1, y = 65.9, giver = "Perith Stormhoof", faction = "Horde", turnin = { 1456, 60.3, 51.7 } }
Q[98435] = { name = "Thunderhorn's Report", level = 10, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", faction = "Horde", pre = { 760 }, turnin = { 1456, 78.6, 28.6 } }
Q[98459] = { name = "A Lack of Virtue", level = 21, minLevel = 18, map = 1424, x = 51.2, y = 66.4, giver = "Tom \"Half-fish\" Wilson", faction = "Alliance", turnin = { 1437, 9.4, 58.8 } }
Q[98461] = { name = "Unrequited Love", level = 21, minLevel = 18, map = 1439, x = 37.4, y = 41.8, giver = "Archaeologist Hollee", faction = "Alliance", turnin = { 1437, 11.5, 52.2 } }
Q[98463] = { name = "Talk of the Town", level = 33, minLevel = 28, map = 1424, x = 51.6, y = 58.6, giver = "Barkeep Kelly", faction = "Alliance", turnin = { 1434, 27.0, 77.2 } }
Q[98512] = { name = "Al'Aketh Assassins", level = 11, minLevel = 6, map = 2521, x = 56.8, y = 61.1, giver = "Fendaal Windstone", turnin = { 2521, 56.8, 61.1 } }
Q[98545] = { name = "Leonid's Letter", level = 13, minLevel = 10, map = 1420, x = 22.0, y = 44.7, giver = "Leonid Barthalomew the Revered", faction = "Horde", pre = { 96896 }, turnin = { 1458, 70.1, 47.3 } }
Q[98574] = { name = "Hallowed Memorandum", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, race = { GNOME = true }, class = { PRIEST = true }, turnin = { 1426, 28.6, 66.4 } }
Q[98575] = { name = "Tainted Tablet", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { TROLL = true }, class = { WARLOCK = true }, turnin = { 1411, 40.6, 68.5 } }
Q[98576] = { name = "Glyphic Parchment", level = 1, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", faction = "Horde", pre = { 788 }, race = { ORC = true }, class = { MAGE = true }, turnin = { 1411, 42.5, 69.0 } }
Q[98581] = { name = "Archaic Rune", level = 1, minLevel = 1, map = 1426, x = 29.9, y = 71.2, giver = "Sten Stoutarm", faction = "Alliance", pre = { 179 }, race = { DWARF = true }, class = { SHAMAN = true }, turnin = { 1426, 28.8, 66.2 } }
Q[98601] = { name = "A Difficult Path", level = 1, minLevel = 1, map = 1420, x = 30.8, y = 66.2, giver = "Shadow Priest Sarvis", faction = "Horde", pre = { 364 }, race = { SCOURGE = true }, class = { PALADIN = true }, turnin = { 1420, 31.1, 66.4 } }
Q[98731] = { name = "Blessings of the Great Cat Spirit", level = 20, minLevel = 20, map = 1450, x = 58.4, y = 73.5, giver = "Great Cat Spirit", faction = "Alliance", race = { NIGHTELF = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[98739] = { name = "Blessings of the Great Cat Spirit", level = 20, minLevel = 20, map = 1450, x = 58.4, y = 73.5, giver = "Great Cat Spirit", faction = "Horde", race = { TAUREN = true }, class = { DRUID = true }, turnin = { 1450, 56.2, 30.6 } }
Q[98815] = { name = "Highland Hides", level = 28, minLevel = 24, map = 1437, x = 8.6, y = 55.7, giver = "James Halloran", faction = "Alliance", dungeon = "Excavation Site: Wetlands", turnin = { 1437, 8.6, 55.7 } }
Q[98823] = { name = "Earthen Echo", level = 31, minLevel = 24, map = 1456, x = 71.1, y = 34.2, giver = "Bashana Runetotem", faction = "Horde", dungeon = "Excavation Site: Wetlands", turnin = { 1412, 33.4, 22.6 } }
Q[98824] = { name = "Prehistoric Prism", level = 31, minLevel = 24, map = 1437, x = 38.8, y = 52.4, giver = "Prospector Whelgar", faction = "Alliance", dungeon = "Excavation Site: Wetlands", turnin = { 1455, 69.9, 18.6 } }
Q[99046] = { name = "The Lost Runner", level = 9, minLevel = 4, map = 1438, x = 56, y = 59.5, giver = "Sentinel Kyra Starsong", faction = "Alliance", turnin = { 1438, 37.5, 36.8 } }
Q[99047] = { name = "Not Dead Yet", level = 9, minLevel = 4, map = 1438, x = 37.5, y = 36.8, giver = "Sentinel Eralya Leafshadow", faction = "Alliance", turnin = { 1438, 55.3, 56.8 } }
Q[99048] = { name = "A Missing Hand", level = 11, minLevel = 9, map = 1411, x = 52.2, y = 43.1, giver = "Orgnil Soulscar", faction = "Horde", turnin = { 1411, 58.6, 45.6 } }
Q[99049] = { name = "Threat from Below", level = 11, minLevel = 9, map = 1411, x = 58.6, y = 45.6, giver = "Heglan Shadeeye", faction = "Horde", pre = { 99048 }, turnin = { 1411, 52.2, 43.1 } }
Q[99050] = { name = "The Great Tree Provides", level = 10, minLevel = 4, map = 1438, x = 55.3, y = 56.8, giver = "Byancie", faction = "Alliance", pre = { 99047 }, turnin = { 1438, 55.3, 56.8 } }
Q[99051] = { name = "Threat from Below", level = 11, minLevel = 9, map = 1411, x = 52.2, y = 43.1, giver = "Orgnil Soulscar", faction = "Horde", pre = { 99049 }, turnin = { 1411, 52.2, 43.1 } }
Q[99052] = { name = "Threat from Below", level = 12, minLevel = 10, map = 1411, x = 52.2, y = 43.1, giver = "Orgnil Soulscar", faction = "Horde", pre = { 99051 }, turnin = { 1411, 52.2, 43.1 } }
Q[99053] = { name = "Escaping Ban'ethil", level = 9, minLevel = 4, map = 1438, x = 44.7, y = 58.9, giver = "Sentinel Lynessa Duskblossom", faction = "Alliance", turnin = { 1438, 56, 59.5 } }
Q[99073] = { name = "Easing Suffering", level = 10, minLevel = 4, map = 1438, x = 55.3, y = 56.8, giver = "Byancie", faction = "Alliance", pre = { 99050 }, turnin = { 1438, 37.5, 36.8 } }
Q[99079] = { name = "Longwalker Malah", level = 9, minLevel = 4, map = 1412, x = 46.7, y = 63.8, giver = "Brave Wildrunner", faction = "Horde", turnin = { 1412, 57.6, 63.2 } }
Q[99080] = { name = "Drive Them Out", level = 9, minLevel = 4, map = 1412, x = 46.7, y = 63.4, giver = "Baine Bloodhoof", faction = "Horde", pre = { 99101 }, turnin = { 1412, 46.7, 63.4 } }
Q[99081] = { name = "Grim Tidings", level = 9, minLevel = 4, map = 1412, x = 57.6, y = 63.2, giver = "Malah Longwind", faction = "Horde", pre = { 99079 }, turnin = { 1412, 46.7, 63.8 } }
Q[99082] = { name = "The High Chieftain", level = 9, minLevel = 4, map = 1412, x = 46.7, y = 63.4, giver = "Baine Bloodhoof", faction = "Horde", pre = { 99080 }, turnin = { 1456, 60.3, 51.7 } }
Q[99101] = { name = "Our Ancient Enemy", level = 9, minLevel = 4, map = 1412, x = 46.7, y = 63.8, giver = "Brave Wildrunner", faction = "Horde", pre = { 99081 }, turnin = { 1412, 46.7, 63.4 } }
Q[99108] = { name = "Sparring Match", level = 6, minLevel = 4, map = 1412, x = 48.4, y = 63.7, giver = "Krang Stonehoof", faction = "Horde", turnin = { 1412, 48.4, 63.7 } }
Q[99123] = { name = "Lost in the Shadows", level = 8, minLevel = 4, map = 1411, x = 46.3, y = 78.6, giver = "Pal'juh", faction = "Horde", turnin = { 1411, 55.9, 74.4 } }
Q[99127] = { name = "A Net Disaster", level = 7, minLevel = 4, map = 1429, x = 47.5, y = 62.2, giver = "Jason Mathers", faction = "Alliance", turnin = { 1429, 47.5, 62.2 } }
Q[99128] = { name = "Slimy Menace", level = 7, minLevel = 4, map = 1429, x = 47.5, y = 62.2, giver = "Jason Mathers", faction = "Alliance", pre = { 99127 }, turnin = { 1429, 47.5, 62.2 } }
Q[99129] = { name = "A Man About a Murloc", level = 7, minLevel = 4, map = 1429, x = 47.5, y = 62.2, giver = "Jason Mathers", faction = "Alliance", pre = { 99128 }, turnin = { 1429, 42.1, 67.3 } }
Q[99130] = { name = "An Enticing Offer", level = 7, minLevel = 4, map = 1429, x = 42.1, y = 67.3, giver = "Remy \"Two Times\"", faction = "Alliance", pre = { 99129 }, turnin = { 1429, 42.1, 67.3 } }
Q[99131] = { name = "Baited for Success", level = 7, minLevel = 4, map = 1429, x = 42.1, y = 67.3, giver = "Remy \"Two Times\"", faction = "Alliance", pre = { 99130 }, turnin = { 1429, 47.5, 62.2 } }
Q[99134] = { name = "Discipline", level = 6, minLevel = 4, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", faction = "Horde", turnin = { 1420, 60.6, 51.8 } }
Q[99141] = { name = "Patience", level = 6, minLevel = 4, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", faction = "Horde", turnin = { 1420, 60.6, 51.8 } }
Q[99142] = { name = "Tomb Weed", level = 11, minLevel = 5, map = 1420, x = 57.4, y = 48.9, giver = "Junior Apothecary Holland", faction = "Horde", pre = { 5482 }, turnin = { 1420, 57.4, 48.9 } }
Q[99143] = { name = "Bottles and Baubles", level = 7, minLevel = 4, map = 1429, x = 47.6, y = 62.3, giver = "Lee Brown", faction = "Alliance", turnin = { 1429, 47.6, 62.3 } }
Q[99144] = { name = "Seeking Refuge", level = 7, minLevel = 5, map = 1420, x = 32.0, y = 46.3, giver = "Bareth Dawnstone", faction = "Horde", turnin = { 1420, 60.2, 52.7 } }
Q[99152] = { name = "As Above, So Below", level = 10, minLevel = 7, map = 1420, x = 22.0, y = 47.2, giver = "Hilda the Breaker", faction = "Horde", pre = { 96896 }, turnin = { 1420, 22.0, 47.2 } }
Q[99153] = { name = "The One That Got Away", level = 10, minLevel = 7, map = 1420, x = 20.2, y = 46.5, giver = "Ephram Barbaro", faction = "Horde", pre = { 96896 }, turnin = { 1420, 20.2, 46.5 } }
Q[99156] = { name = "Rear Guard Patrol", level = 13, minLevel = 6, map = 1420, x = 65.5, y = 60.2, giver = "Deathguard Linnea", faction = "Horde", pre = { 356 }, turnin = { 1420, 65.5, 60.2 } }
Q[99158] = { name = "Dawn in the Mountains", level = 8, minLevel = 5, map = 1426, x = 47.3, y = 52.2, giver = "Maxan Anvol", faction = "Alliance", turnin = { 1426, 57.7, 44.9 } }
Q[99159] = { name = "Finding Warmth", level = 8, minLevel = 5, map = 1426, x = 57.7, y = 44.9, giver = "Father Gavin", faction = "Alliance", turnin = { 1426, 57.7, 44.9 } }
Q[99160] = { name = "Rime's Wrath", level = 8, minLevel = 5, map = 1426, x = 57.7, y = 44.9, giver = "Father Gavin", faction = "Alliance", pre = { 99159 }, turnin = { 1426, 57.7, 44.9 } }
Q[99161] = { name = "Rime's Wrath", level = 8, minLevel = 5, map = 1426, x = 57.7, y = 44.9, giver = "Father Gavin", faction = "Alliance", pre = { 99160 }, turnin = { 1426, 57.7, 44.9 } }
Q[99162] = { name = "Treacherous Cold", level = 8, minLevel = 5, map = 1426, x = 57.7, y = 44.9, giver = "Father Gavin", faction = "Alliance", pre = { 99159 }, turnin = { 1426, 57.7, 44.9 } }
Q[99260] = { name = "Fillion's Mission", level = 10, minLevel = 5, map = 2521, x = 66.2, y = 79.9, giver = "Fillion Flamebreeze", faction = "Alliance", pre = { 92850 }, turnin = { 2521, 66.6, 80.0 } }
Q[99411] = { name = "Kyle's Gone Missing!", level = 7, minLevel = 5, map = 1412, x = 47.3, y = 57.6, giver = "Ahab Wheathoof", faction = "Horde", turnin = { 1412, 47.3, 57.6 } }
