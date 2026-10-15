--[[
    MittenQuest - Data/Quests.lua  (GENERATED - do not hand-edit; see tools/generator/)

    Horde-available quests from the QuestieDB Forever dataset (Classic base + Forever
    corrections + in-game Forever traces). QuestieDB derives from Questie (GPL-3.0);
    see CREDITS.md. Fields: name, level, minLevel, map/x/y (giver), giver, pre (must be
    turned in first), race/class (file-name sets), dungeon, group (elite), turnin {map,x,y}.
]]

local _, ns = ...
ns.QuestDB = ns.QuestDB or {}
local Q = ns.QuestDB

Q[2] = { name = "Sharptalon's Claw", level = 30, minLevel = 20, map = 1440, x = 75.0, y = 70.1, giver = "Drop: Sharptalon's Claw", pre = { 6383 }, turnin = { 1440, 73.8, 61.5 } }
Q[8] = { name = "A Rogue's Deal", level = 5, minLevel = 1, map = 1420, x = 38.2, y = 56.8, giver = "Calvin Montague", turnin = { 1420, 61.7, 52.0 } }
Q[10] = { name = "The Scrimshank Redemption", level = 48, minLevel = 39, map = 1446, x = 50.2, y = 27.5, giver = "Senior Surveyor Fizzledowser", pre = { 82 }, turnin = { 1446, 50.2, 27.5 } }
Q[23] = { name = "Ursangous's Paw", level = 24, minLevel = 20, map = 1440, x = 39.8, y = 65.2, giver = "Drop: Ursangous's Paw", pre = { 6383 }, turnin = { 1440, 73.8, 61.5 } }
Q[24] = { name = "Shadumbra's Head", level = 27, minLevel = 20, map = 1440, x = 57.5, y = 56.0, giver = "Drop: Shadumbra's Head", pre = { 6383 }, turnin = { 1440, 73.8, 61.5 } }
Q[25] = { name = "Stonetalon Standstill", level = 25, minLevel = 23, map = 1440, x = 73.7, y = 60, giver = "Mastok Wrilehiss", turnin = { 1440, 73.7, 60 } }
Q[32] = { name = "Rise of the Silithid", level = 48, minLevel = 39, map = 1446, x = 50.2, y = 27.5, giver = "Senior Surveyor Fizzledowser", pre = { 113 }, turnin = { 1454, 56.3, 46.7 } }
Q[77] = { name = "A Sticky Situation", level = 48, minLevel = 42, map = 1425, x = 26.7, y = 48.6, giver = "Gilveradin Sunchaser", pre = { 650 }, turnin = { 1425, 26.7, 48.6 } }
Q[81] = { name = "Ripple Delivery", level = 48, minLevel = 42, map = 1425, x = 26.7, y = 48.6, giver = "Gilveradin Sunchaser", pre = { 77 }, turnin = { 1454, 59.5, 36.6 } }
Q[82] = { name = "Noxious Lair Investigation", level = 47, minLevel = 39, map = 1446, x = 50.2, y = 27.5, giver = "Senior Surveyor Fizzledowser", pre = { 992 }, turnin = { 1446, 50.9, 27.0 } }
Q[99] = { name = "Arugal's Folly", level = 15, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", pre = { 424 }, group = true, turnin = { 1421, 44.2, 39.8 } }
Q[103] = { name = "Keeper of the Flame", level = 16, minLevel = 10, map = 1436, x = 30.0, y = 86.0, giver = "Captain Grayson", group = true, turnin = { 1436, 30.0, 86.0 } }
Q[104] = { name = "The Coastal Menace", level = 20, minLevel = 15, map = 1436, x = 30.0, y = 86.0, giver = "Captain Grayson", turnin = { 1436, 30.0, 86.0 } }
Q[105] = { name = "Alas, Andorhal", level = 60, minLevel = 50, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", pre = { 5098 }, turnin = { 1420, 83.1, 68.9 } }
Q[110] = { name = "Insect Part Analysis", level = 48, minLevel = 39, map = 1446, x = 50.2, y = 27.5, giver = "Senior Surveyor Fizzledowser", pre = { 10 }, turnin = { 1446, 50.9, 27.0 } }
Q[113] = { name = "Insect Part Analysis", level = 48, minLevel = 39, map = 1446, x = 50.9, y = 27.0, giver = "Alchemist Pestlezugg", pre = { 110 }, turnin = { 1446, 50.2, 27.5 } }
Q[136] = { name = "Captain Sander's Hidden Treasure", level = 16, minLevel = 10, map = 1436, x = 35.0, y = 16.9, giver = "Drop: Captain Sander's Treasure Map", turnin = { 1436, 25.9, 47.8 } }
Q[138] = { name = "Captain Sander's Hidden Treasure", level = 16, minLevel = 10, map = 1436, x = 25.9, y = 47.8, giver = "Captain's Footlocker", pre = { 136 }, turnin = { 1436, 40.5, 47.8 } }
Q[139] = { name = "Captain Sander's Hidden Treasure", level = 16, minLevel = 10, map = 1436, x = 40.5, y = 47.8, giver = "Broken Barrel", pre = { 138 }, turnin = { 1436, 40.6, 17.0 } }
Q[140] = { name = "Captain Sander's Hidden Treasure", level = 16, minLevel = 10, map = 1436, x = 40.6, y = 17.0, giver = "Old Jug", pre = { 139 }, turnin = { 1436, 26.0, 16.9 } }
Q[152] = { name = "The Coast Isn't Clear", level = 19, minLevel = 10, map = 1436, x = 30.0, y = 86.0, giver = "Captain Grayson", turnin = { 1436, 30.0, 86.0 } }
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
Q[201] = { name = "Investigate the Camp", level = 32, minLevel = 28, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", turnin = { 1434, 26.9, 77.2 } }
Q[209] = { name = "Skullsplitter Tusks", level = 42, minLevel = 37, map = 1434, x = 27, y = 77.1, giver = "Kebok", pre = { 189 }, turnin = { 1434, 27, 77.1 } }
Q[213] = { name = "Hostile Takeover", level = 36, minLevel = 31, map = 1434, x = 27, y = 77.1, giver = "Kebok", turnin = { 1434, 27, 77.1 } }
Q[216] = { name = "Between a Rock and a Thistlefur", level = 24, minLevel = 21, map = 1440, x = 11.9, y = 34.5, giver = "Karang Amakkar", turnin = { 1440, 11.9, 34.5 } }
Q[232] = { name = "Errand for Apothecary Zinge", level = 45, minLevel = 38, map = 1458, x = 50.1, y = 68.0, giver = "Apothecary Zinge", turnin = { 1458, 58.6, 54.7 } }
Q[235] = { name = "The Ashenvale Hunt", level = 20, minLevel = 20, map = 1454, x = 37.7, y = 75.2, giver = "Warcaller Gorlach", turnin = { 1440, 73.8, 61.5 } }
Q[238] = { name = "Errand for Apothecary Zinge", level = 45, minLevel = 38, map = 1458, x = 58.6, y = 54.7, giver = "Alessandro Luca", pre = { 232 }, turnin = { 1458, 50.1, 68.0 } }
Q[243] = { name = "Into the Field", level = 46, minLevel = 38, map = 1458, x = 50.1, y = 68.0, giver = "Apothecary Zinge", pre = { 238 }, turnin = { 1446, 52.5, 28.5 } }
Q[247] = { name = "The Hunt Completed", level = 30, minLevel = 20, map = 1440, x = 73.8, y = 61.5, giver = "Senani Thunderheart", pre = { 2, 23, 24 }, turnin = { 1440, 73.8, 61.5 } }
Q[264] = { name = "Until Death Do Us Part", level = 15, minLevel = 12, map = 1456, x = 27.2, y = 24.4, giver = "Clarice Foster", turnin = { 1421, 44.2, 42.7 } }
Q[338] = { name = "The Green Hills of Stranglethorn", level = 40, minLevel = 30, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", pre = { 583 }, turnin = { 1434, 35.7, 10.5 } }
Q[339] = { name = "Chapter I", level = 40, minLevel = 30, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", group = true, turnin = { 1434, 35.7, 10.5 } }
Q[340] = { name = "Chapter II", level = 40, minLevel = 30, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", group = true, turnin = { 1434, 35.7, 10.5 } }
Q[341] = { name = "Chapter III", level = 40, minLevel = 30, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", group = true, turnin = { 1434, 35.7, 10.5 } }
Q[342] = { name = "Chapter IV", level = 40, minLevel = 30, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", group = true, turnin = { 1434, 35.7, 10.5 } }
Q[348] = { name = "Stranglethorn Fever", level = 45, minLevel = 40, map = 1434, x = 27.6, y = 76.7, giver = "Fin Fizracket", turnin = { 1434, 27.6, 76.7 } }
Q[351] = { name = "Find OOX-17/TN!", level = 48, minLevel = 43, map = 1446, x = 74.0, y = 46.6, giver = "Drop: OOX-17/TN Distress Beacon", turnin = { 1446, 60.2, 64.7 } }
Q[354] = { name = "Deaths in the Family", level = 11, minLevel = 7, map = 1420, x = 61.7, y = 52.3, giver = "Coleman Farthing", turnin = { 1420, 61.7, 52.3 } }
Q[355] = { name = "Speak with Sevren", level = 10, minLevel = 7, map = 1420, x = 61.7, y = 52.3, giver = "Coleman Farthing", pre = { 354, 362 }, turnin = { 1420, 61.3, 50.8 } }
Q[356] = { name = "Rear Guard Patrol", level = 11, minLevel = 6, map = 1420, x = 65.5, y = 60.2, giver = "Deathguard Linnea", turnin = { 1420, 65.5, 60.2 } }
Q[357] = { name = "The Lich's Identity", level = 8, minLevel = 5, map = 1458, x = 84.1, y = 17.4, giver = "Bethor Iceshard", pre = { 405 }, turnin = { 1458, 84.1, 17.4 } }
Q[358] = { name = "Graverobbers", level = 8, minLevel = 4, map = 1420, x = 61.3, y = 50.8, giver = "Magistrate Sevren", turnin = { 1420, 61.3, 50.8 } }
Q[359] = { name = "Forsaken Duties", level = 9, minLevel = 6, map = 1420, x = 61.3, y = 50.8, giver = "Magistrate Sevren", pre = { 358 }, turnin = { 1420, 65.5, 60.2 } }
Q[360] = { name = "Return to the Magistrate", level = 9, minLevel = 6, map = 1420, x = 65.5, y = 60.2, giver = "Deathguard Linnea", pre = { 359 }, turnin = { 1420, 61.3, 50.8 } }
Q[361] = { name = "A Letter Undelivered", level = 7, minLevel = 4, map = 1420, x = 9.2, y = 61.8, giver = "Drop: A Letter to Yvette", turnin = { 1420, 61.6, 52.6 } }
Q[362] = { name = "The Haunted Mills", level = 10, minLevel = 7, map = 1420, x = 61.7, y = 52.3, giver = "Coleman Farthing", turnin = { 1420, 61.7, 52.3 } }
Q[363] = { name = "Rude Awakening", level = 1, minLevel = 1, map = 1420, x = 30.2, y = 71.7, giver = "Undertaker Mordo", race = { SCOURGE = true }, turnin = { 1420, 30.8, 66.2 } }
Q[364] = { name = "The Mindless Ones", level = 2, minLevel = 1, map = 1420, x = 30.8, y = 66.2, giver = "Shadow Priest Sarvis", turnin = { 1420, 30.8, 66.2 } }
Q[365] = { name = "Fields of Grief", level = 7, minLevel = 4, map = 1420, x = 40.9, y = 54.2, giver = "Deathguard Simmer", turnin = { 1420, 59.5, 52.4 } }
Q[366] = { name = "Return the Book", level = 8, minLevel = 5, map = 1458, x = 84.1, y = 17.4, giver = "Bethor Iceshard", pre = { 357 }, turnin = { 1420, 68.2, 41.9 } }
Q[367] = { name = "A New Plague", level = 6, minLevel = 6, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", turnin = { 1420, 59.5, 52.4 } }
Q[368] = { name = "A New Plague", level = 9, minLevel = 6, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", pre = { 367 }, turnin = { 1420, 59.5, 52.4 } }
Q[369] = { name = "A New Plague", level = 11, minLevel = 6, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", pre = { 368 }, turnin = { 1420, 59.5, 52.4 } }
Q[370] = { name = "At War With The Scarlet Crusade", level = 9, minLevel = 5, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", pre = { 427 }, turnin = { 1420, 60.6, 51.8 } }
Q[371] = { name = "At War With The Scarlet Crusade", level = 10, minLevel = 5, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", pre = { 370 }, turnin = { 1420, 60.6, 51.8 } }
Q[372] = { name = "At War With The Scarlet Crusade", level = 12, minLevel = 5, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", pre = { 371 }, turnin = { 1420, 60.6, 51.8 } }
Q[374] = { name = "Proof of Demise", level = 7, minLevel = 5, map = 1420, x = 60.9, y = 52.0, giver = "Deathguard Burgess", pre = { 427 }, turnin = { 1420, 60.9, 52.0 } }
Q[375] = { name = "The Chill of Death", level = 8, minLevel = 7, map = 1420, x = 61.9, y = 52.7, giver = "Gretchen Dedmar", turnin = { 1420, 61.9, 52.7 } }
Q[376] = { name = "The Damned", level = 2, minLevel = 2, map = 1420, x = 30.9, y = 66.0, giver = "Novice Elreth", turnin = { 1420, 30.9, 66.0 } }
Q[379] = { name = "Slake That Thirst", level = 46, minLevel = 38, map = 1446, x = 52.5, y = 28.5, giver = "Chief Engineer Bilgewhizzle", pre = { 243 }, turnin = { 1446, 52.5, 28.5 } }
Q[380] = { name = "Night Web's Hollow", level = 4, minLevel = 2, map = 1420, x = 32.1, y = 66.0, giver = "Executor Arren", pre = { 376 }, turnin = { 1420, 32.1, 66.0 } }
Q[381] = { name = "The Scarlet Crusade", level = 4, minLevel = 2, map = 1420, x = 32.1, y = 66.0, giver = "Executor Arren", pre = { 380 }, turnin = { 1420, 32.1, 66.0 } }
Q[382] = { name = "The Red Messenger", level = 5, minLevel = 2, map = 1420, x = 32.1, y = 66.0, giver = "Executor Arren", pre = { 381 }, turnin = { 1420, 32.1, 66.0 } }
Q[383] = { name = "Vital Intelligence", level = 5, minLevel = 2, map = 1420, x = 32.1, y = 66.0, giver = "Executor Arren", pre = { 382 }, turnin = { 1420, 60.6, 51.8 } }
Q[398] = { name = "Wanted: Maggot Eye", level = 10, minLevel = 6, map = 1420, x = 60.7, y = 51.5, giver = "Wanted!", turnin = { 1420, 60.6, 51.8 } }
Q[404] = { name = "A Putrid Task", level = 6, minLevel = 4, map = 1420, x = 58.2, y = 51.5, giver = "Deathguard Dillinger", turnin = { 1420, 58.2, 51.5 } }
Q[405] = { name = "The Prodigal Lich", level = 8, minLevel = 5, map = 1420, x = 61.3, y = 50.8, giver = "Magistrate Sevren", pre = { 358 }, turnin = { 1458, 84.1, 17.4 } }
Q[407] = { name = "Fields of Grief", level = 7, minLevel = 4, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", pre = { 365 }, turnin = { 1420, 62.0, 51.3 } }
Q[408] = { name = "The Family Crypt", level = 13, minLevel = 7, map = 1420, x = 61.3, y = 50.8, giver = "Magistrate Sevren", pre = { 355 }, turnin = { 1420, 61.3, 50.8 } }
Q[409] = { name = "Proving Allegiance", level = 12, minLevel = 5, map = 1420, x = 68.2, y = 41.9, giver = "Gunther Arcanus", pre = { 366 }, turnin = { 1420, 68.2, 41.9 } }
Q[411] = { name = "The Prodigal Lich Returns", level = 12, minLevel = 5, map = 1420, x = 68.2, y = 41.9, giver = "Gunther Arcanus", pre = { 409 }, turnin = { 1458, 84.1, 17.4 } }
Q[421] = { name = "Prove Your Worth", level = 10, minLevel = 12, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", turnin = { 1421, 44.2, 39.8 } }
Q[422] = { name = "Arugal's Folly", level = 11, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", pre = { 421 }, turnin = { 1421, 44.2, 39.8 } }
Q[423] = { name = "Arugal's Folly", level = 14, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", pre = { 422 }, turnin = { 1421, 44.2, 39.8 } }
Q[424] = { name = "Arugal's Folly", level = 15, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", pre = { 423 }, turnin = { 1421, 44.2, 39.8 } }
Q[425] = { name = "Ivar the Foul", level = 12, minLevel = 10, map = 1421, x = 53.5, y = 13.4, giver = "Rane Yorick", pre = { 430 }, turnin = { 1421, 53.5, 13.4 } }
Q[426] = { name = "The Mills Overrun", level = 8, minLevel = 6, map = 1420, x = 58.2, y = 51.5, giver = "Deathguard Dillinger", pre = { 404 }, turnin = { 1420, 58.2, 51.5 } }
Q[427] = { name = "At War With The Scarlet Crusade", level = 8, minLevel = 5, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", turnin = { 1420, 60.6, 51.8 } }
Q[428] = { name = "Lost Deathstalkers", level = 12, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", turnin = { 1421, 53.5, 13.4 } }
Q[429] = { name = "Wild Hearts", level = 11, minLevel = 10, map = 1421, x = 53.5, y = 13.4, giver = "Rane Yorick", turnin = { 1421, 42.8, 40.9 } }
Q[430] = { name = "Return to Quinn", level = 11, minLevel = 10, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", pre = { 429 }, turnin = { 1421, 53.4, 12.6 } }
Q[435] = { name = "Escorting Erland", level = 11, minLevel = 10, map = 1421, x = 56.2, y = 9.2, giver = "Deathstalker Erland", turnin = { 1421, 53.5, 13.4 } }
Q[437] = { name = "The Dead Fields", level = 14, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", turnin = { 1421, 43.4, 40.9 } }
Q[438] = { name = "The Decrepit Ferry", level = 16, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", pre = { 437 }, turnin = { 1421, 58.4, 34.9 } }
Q[439] = { name = "Rot Hide Clues", level = 16, minLevel = 10, map = 1421, x = 58.4, y = 34.9, giver = "Corpse Laden Boat", pre = { 438 }, turnin = { 1421, 43.4, 40.9 } }
Q[440] = { name = "The Engraved Ring", level = 16, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", pre = { 439 }, turnin = { 1420, 61.3, 50.8 } }
Q[441] = { name = "Raleigh and the Undercity", level = 16, minLevel = 10, map = 1420, x = 61.3, y = 50.8, giver = "Magistrate Sevren", pre = { 440 }, turnin = { 1458, 62.0, 42.8 } }
Q[443] = { name = "Rot Hide Ichor", level = 17, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", pre = { 439 }, turnin = { 1421, 42.8, 40.9 } }
Q[444] = { name = "Rot Hide Origins", level = 17, minLevel = 10, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", pre = { 443 }, turnin = { 1458, 84.1, 17.4 } }
Q[445] = { name = "Delivery to Silverpine Forest", level = 10, minLevel = 9, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", turnin = { 1421, 42.8, 40.9 } }
Q[446] = { name = "Thule Ravenclaw", level = 16, minLevel = 10, map = 1458, x = 84.1, y = 17.4, giver = "Bethor Iceshard", pre = { 444 }, turnin = { 1421, 42.8, 40.9 } }
Q[447] = { name = "A Recipe For Death", level = 12, minLevel = 9, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", turnin = { 1458, 48.8, 69.3 } }
Q[448] = { name = "Report to Hadrec", level = 16, minLevel = 10, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", pre = { 446 }, turnin = { 1421, 43.4, 40.9 } }
Q[449] = { name = "The Deathstalkers' Report", level = 11, minLevel = 10, map = 1421, x = 53.5, y = 13.4, giver = "Rane Yorick", pre = { 435 }, turnin = { 1421, 43.4, 40.9 } }
Q[450] = { name = "A Recipe For Death", level = 15, minLevel = 9, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", pre = { 447 }, turnin = { 1421, 42.8, 40.9 } }
Q[451] = { name = "A Recipe For Death", level = 18, minLevel = 9, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", pre = { 450 }, turnin = { 1458, 48.8, 69.3 } }
Q[452] = { name = "Pyrewood Ambush", level = 15, minLevel = 12, map = 1421, x = 46.5, y = 74.4, giver = "Deathstalker Faerleia", group = true, turnin = { 1421, 46.5, 74.4 } }
Q[460] = { name = "Resting in Pieces", level = 17, minLevel = 12, map = 1421, x = 65.7, y = 24.0, giver = "Drop: A Talking Head", turnin = { 1421, 67.9, 24.9 } }
Q[461] = { name = "The Hidden Niche", level = 18, minLevel = 12, map = 1421, x = 67.9, y = 24.9, giver = "Shallow Grave", pre = { 460 }, turnin = { 1421, 65.4, 24.8 } }
Q[477] = { name = "Border Crossings", level = 14, minLevel = 10, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", turnin = { 1421, 49.9, 60.3 } }
Q[478] = { name = "Maps and Runes", level = 14, minLevel = 10, map = 1421, x = 49.9, y = 60.3, giver = "Dalaran Crate", pre = { 477 }, turnin = { 1421, 44.0, 40.9 } }
Q[479] = { name = "Ambermill Investigations", level = 16, minLevel = 10, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", pre = { 482 }, turnin = { 1421, 44.0, 40.9 } }
Q[480] = { name = "The Weaver", level = 22, minLevel = 10, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", pre = { 479 }, turnin = { 1421, 44.0, 40.9 } }
Q[481] = { name = "Dalar's Analysis", level = 14, minLevel = 10, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", pre = { 478 }, turnin = { 1421, 44.2, 39.8 } }
Q[482] = { name = "Dalaran's Intentions", level = 14, minLevel = 10, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", pre = { 481 }, turnin = { 1421, 44.0, 40.9 } }
Q[485] = { name = "Find OOX-09/HL!", level = 48, minLevel = 43, map = 1425, x = 56.8, y = 50.8, giver = "Drop: OOX-09/HL Distress Beacon", turnin = { 1425, 49.4, 37.7 } }
Q[491] = { name = "Wand to Bethor", level = 18, minLevel = 12, map = 1421, x = 65.4, y = 24.8, giver = "Dusty Shelf", pre = { 461 }, turnin = { 1458, 84.1, 17.4 } }
Q[492] = { name = "A New Plague", level = 11, minLevel = 6, map = 1420, x = 59.5, y = 52.4, giver = "Apothecary Johaan", pre = { 369 }, turnin = { 1420, 61.9, 51.4 } }
Q[493] = { name = "Journey to Hillsbrad Foothills", level = 20, minLevel = 19, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", turnin = { 1424, 61.4, 19.1 } }
Q[494] = { name = "Time To Strike", level = 20, minLevel = 19, map = 1424, x = 20.8, y = 47.4, giver = "Deathstalker Lesh", turnin = { 1424, 62.3, 20.4 } }
Q[495] = { name = "The Crown of Will", level = 39, minLevel = 34, map = 1458, x = 57.6, y = 93.8, giver = "Sharlindra", turnin = { 1424, 62.6, 20.6 } }
Q[496] = { name = "Elixir of Suffering", level = 22, minLevel = 19, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", turnin = { 1424, 61.4, 19.1 } }
Q[498] = { name = "The Rescue", level = 22, minLevel = 17, map = 1424, x = 63.2, y = 20.7, giver = "Krusk", turnin = { 1424, 63.2, 20.7 } }
Q[499] = { name = "Elixir of Suffering", level = 22, minLevel = 19, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", pre = { 496 }, turnin = { 1424, 61.5, 19.1 } }
Q[501] = { name = "Elixir of Pain", level = 24, minLevel = 21, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", turnin = { 1424, 61.4, 19.1 } }
Q[502] = { name = "Elixir of Pain", level = 24, minLevel = 21, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", pre = { 501 }, turnin = { 1424, 32.7, 35.3 } }
Q[503] = { name = "Gol'dir", level = 36, minLevel = 29, map = 1424, x = 63.2, y = 20.7, giver = "Krusk", pre = { 533 }, turnin = { 1416, 60.0, 43.7 } }
Q[506] = { name = "Blackmoore's Legacy", level = 36, minLevel = 29, map = 1416, x = 60.0, y = 43.7, giver = "Gol'dir", pre = { 503 }, turnin = { 1424, 63.2, 20.7 } }
Q[508] = { name = "Taretha's Gift", level = 40, minLevel = 29, map = 1416, x = 39.3, y = 14.3, giver = "Elysa", pre = { 507 }, turnin = { 1424, 63.2, 20.7 } }
Q[509] = { name = "Elixir of Agony", level = 28, minLevel = 24, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", turnin = { 1424, 61.4, 19.1 } }
Q[513] = { name = "Elixir of Agony", level = 28, minLevel = 24, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", pre = { 509 }, turnin = { 1458, 48.8, 69.3 } }
Q[515] = { name = "Elixir of Agony", level = 30, minLevel = 24, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", pre = { 513 }, turnin = { 1424, 61.4, 19.1 } }
Q[516] = { name = "Beren's Peril", level = 21, minLevel = 16, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", turnin = { 1421, 44.0, 40.9 } }
Q[517] = { name = "Elixir of Agony", level = 30, minLevel = 24, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", pre = { 515 }, turnin = { 1424, 61.4, 19.1 } }
Q[518] = { name = "The Crown of Will", level = 39, minLevel = 34, map = 1424, x = 62.6, y = 20.6, giver = "Melisara", group = true, turnin = { 1424, 62.6, 20.6 } }
Q[519] = { name = "The Crown of Will", level = 41, minLevel = 34, map = 1424, x = 62.6, y = 20.6, giver = "Melisara", pre = { 518 }, group = true, turnin = { 1424, 62.6, 20.6 } }
Q[520] = { name = "The Crown of Will", level = 43, minLevel = 34, map = 1424, x = 62.6, y = 20.6, giver = "Melisara", pre = { 519 }, group = true, turnin = { 1424, 62.6, 20.6 } }
Q[521] = { name = "The Crown of Will", level = 43, minLevel = 34, map = 1424, x = 62.6, y = 20.6, giver = "Melisara", pre = { 520 }, turnin = { 1458, 57.6, 93.8 } }
Q[524] = { name = "Elixir of Agony", level = 30, minLevel = 24, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", pre = { 517 }, turnin = { 1424, 62.8, 18.7 } }
Q[527] = { name = "Battle of Hillsbrad", level = 24, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", turnin = { 1424, 62.3, 20.4 } }
Q[528] = { name = "Battle of Hillsbrad", level = 25, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", pre = { 527 }, turnin = { 1424, 62.3, 20.4 } }
Q[529] = { name = "Battle of Hillsbrad", level = 26, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", pre = { 528 }, turnin = { 1424, 62.3, 20.4 } }
Q[530] = { name = "A Husband's Revenge", level = 20, minLevel = 10, map = 1458, x = 62.0, y = 42.8, giver = "Raleigh Andrean", pre = { 441 }, turnin = { 1458, 62.0, 42.8 } }
Q[532] = { name = "Battle of Hillsbrad", level = 26, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", pre = { 529 }, turnin = { 1424, 62.3, 20.4 } }
Q[533] = { name = "Infiltration", level = 34, minLevel = 29, map = 1424, x = 63.2, y = 20.7, giver = "Krusk", pre = { 498 }, turnin = { 1424, 63.2, 20.7 } }
Q[535] = { name = "Valik", level = 34, minLevel = 29, map = 1416, x = 57.2, y = 69.5, giver = "Henchman Valik", turnin = { 1416, 57.2, 69.5 } }
Q[539] = { name = "Battle of Hillsbrad", level = 28, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", pre = { 532 }, turnin = { 1424, 62.3, 20.4 } }
Q[541] = { name = "Battle of Hillsbrad", level = 30, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", pre = { 539 }, group = true, turnin = { 1424, 62.3, 20.4 } }
Q[544] = { name = "Prison Break In", level = 34, minLevel = 30, map = 1424, x = 61.6, y = 20.9, giver = "Magus Wordeen Voidglare", turnin = { 1424, 61.6, 20.9 } }
Q[545] = { name = "Dalaran Patrols", level = 35, minLevel = 30, map = 1424, x = 61.6, y = 20.9, giver = "Magus Wordeen Voidglare", pre = { 544 }, turnin = { 1424, 61.6, 20.9 } }
Q[546] = { name = "Souvenirs of Death", level = 25, minLevel = 20, map = 1424, x = 62.1, y = 19.7, giver = "Deathguard Samsa", pre = { 527 }, turnin = { 1424, 62.1, 19.7 } }
Q[547] = { name = "Humbert's Sword", level = 30, minLevel = 26, map = 1424, x = 62.8, y = 20.2, giver = "Deathguard Humbert", group = true, turnin = { 1424, 62.8, 20.2 } }
Q[549] = { name = "WANTED: Syndicate Personnel", level = 22, minLevel = 17, map = 1424, x = 62.6, y = 20.8, giver = "WANTED", turnin = { 1424, 62.3, 20.4 } }
Q[552] = { name = "Helcular's Revenge", level = 33, minLevel = 29, map = 1424, x = 63.9, y = 19.7, giver = "Novice Thaivand", turnin = { 1424, 63.9, 19.7 } }
Q[553] = { name = "Helcular's Revenge", level = 33, minLevel = 29, map = 1424, x = 63.9, y = 19.7, giver = "Novice Thaivand", pre = { 552 }, turnin = { 1424, 52.8, 53.4 } }
Q[556] = { name = "Stone Tokens", level = 32, minLevel = 30, map = 1424, x = 61.5, y = 20.9, giver = "Keeper Bel'varil", turnin = { 1424, 61.5, 20.9 } }
Q[557] = { name = "Bracers of Binding", level = 34, minLevel = 30, map = 1424, x = 61.5, y = 20.9, giver = "Keeper Bel'varil", pre = { 556 }, turnin = { 1424, 61.5, 20.9 } }
Q[566] = { name = "WANTED: Baron Vardus", level = 40, minLevel = 35, map = 1424, x = 62.6, y = 20.8, giver = "WANTED", pre = { 549 }, turnin = { 1424, 62.3, 20.4 } }
Q[567] = { name = "Dangerous!", level = 28, minLevel = 19, map = 1424, x = 62.6, y = 19.7, giver = "Dangerous!", turnin = { 1424, 62.3, 20.4 } }
Q[568] = { name = "The Defense of Grom'gol", level = 36, minLevel = 33, map = 1434, x = 32.2, y = 28.9, giver = "Commander Aggro'gosh", turnin = { 1434, 32.2, 28.9 } }
Q[569] = { name = "The Defense of Grom'gol", level = 37, minLevel = 33, map = 1434, x = 32.2, y = 28.9, giver = "Commander Aggro'gosh", pre = { 568 }, turnin = { 1434, 32.2, 28.9 } }
Q[570] = { name = "Mok'thardin's Enchantment", level = 38, minLevel = 33, map = 1434, x = 32.1, y = 29.2, giver = "Far Seer Mok'thardin", turnin = { 1434, 32.1, 29.2 } }
Q[571] = { name = "Mok'thardin's Enchantment", level = 41, minLevel = 33, map = 1434, x = 32.1, y = 29.2, giver = "Far Seer Mok'thardin", pre = { 572 }, turnin = { 1434, 32.1, 29.2 } }
Q[572] = { name = "Mok'thardin's Enchantment", level = 41, minLevel = 33, map = 1434, x = 32.1, y = 29.2, giver = "Far Seer Mok'thardin", pre = { 570 }, turnin = { 1434, 32.1, 29.2 } }
Q[573] = { name = "Mok'thardin's Enchantment", level = 44, minLevel = 33, map = 1434, x = 32.1, y = 29.2, giver = "Far Seer Mok'thardin", pre = { 571 }, turnin = { 1434, 32.1, 29.2 } }
Q[575] = { name = "Supply and Demand", level = 31, minLevel = 26, map = 1434, x = 28.3, y = 77.6, giver = "Drizzlik", turnin = { 1434, 28.3, 77.6 } }
Q[576] = { name = "Keep An Eye Out", level = 42, minLevel = 37, map = 1434, x = 28.6, y = 75.9, giver = "Dizzy One-Eye", pre = { 597 }, turnin = { 1434, 28.6, 75.9 } }
Q[577] = { name = "Some Assembly Required", level = 36, minLevel = 31, map = 1434, x = 28.3, y = 77.6, giver = "Drizzlik", pre = { 575 }, turnin = { 1434, 28.3, 77.6 } }
Q[580] = { name = "Whiskey Slim's Lost Grog", level = 50, minLevel = 40, map = 1434, x = 27.1, y = 77.5, giver = "Whiskey Slim", turnin = { 1434, 27.1, 77.5 } }
Q[581] = { name = "Hunt for Yenniku", level = 34, minLevel = 30, map = 1434, x = 32.2, y = 27.7, giver = "Nimboya", turnin = { 1434, 32.2, 27.7 } }
Q[582] = { name = "Headhunting", level = 37, minLevel = 30, map = 1434, x = 32.2, y = 27.7, giver = "Nimboya", pre = { 581 }, turnin = { 1434, 32.2, 27.7 } }
Q[583] = { name = "Welcome to the Jungle", level = 30, minLevel = 28, map = 1434, x = 35.7, y = 10.5, giver = "Barnil Stonepot", turnin = { 1434, 35.7, 10.8 } }
Q[584] = { name = "Bloodscalp Clan Heads", level = 41, minLevel = 30, map = 1434, x = 32.2, y = 27.7, giver = "Nimboya", pre = { 582 }, turnin = { 1434, 32.2, 27.6 } }
Q[585] = { name = "Speaking with Nezzliok", level = 40, minLevel = 30, map = 1434, x = 32.2, y = 27.6, giver = "Bubbling Cauldron", pre = { 584 }, turnin = { 1434, 32.2, 27.6 } }
Q[587] = { name = "Up to Snuff", level = 41, minLevel = 37, map = 1434, x = 26.9, y = 77.3, giver = "Deeg", pre = { 597 }, turnin = { 1434, 26.9, 77.3 } }
Q[590] = { name = "A Rogue's Deal", level = 5, minLevel = 1, map = 1420, x = 38.2, y = 56.8, giver = "Calvin Montague", pre = { 8 }, turnin = { 1420, 38.2, 56.8 } }
Q[594] = { name = "Message in a Bottle", level = 45, minLevel = 45, map = 1434, x = 36.6, y = 77.1, giver = "Drop: Carefully Folded Note", turnin = { 1434, 38.5, 80.6 } }
Q[595] = { name = "The Bloodsail Buccaneers", level = 41, minLevel = 37, map = 1434, x = 28.1, y = 76.2, giver = "First Mate Crazz", turnin = { 1434, 27.3, 69.5 } }
Q[596] = { name = "Bloody Bone Necklaces", level = 37, minLevel = 30, map = 1434, x = 32.3, y = 27.7, giver = "Kin'weelay", turnin = { 1434, 32.3, 27.7 } }
Q[597] = { name = "The Bloodsail Buccaneers", level = 41, minLevel = 37, map = 1434, x = 27.3, y = 69.5, giver = "Bloodsail Correspondence", pre = { 595 }, turnin = { 1434, 28.1, 76.2 } }
Q[598] = { name = "Split Bone Necklace", level = 42, minLevel = 30, map = 1434, x = 32.3, y = 27.7, giver = "Kin'weelay", pre = { 596, 629 }, turnin = { 1434, 32.3, 27.7 } }
Q[599] = { name = "The Bloodsail Buccaneers", level = 41, minLevel = 37, map = 1434, x = 28.1, y = 76.2, giver = "First Mate Crazz", pre = { 597 }, turnin = { 1434, 27.2, 77.0 } }
Q[600] = { name = "Venture Company Mining", level = 41, minLevel = 30, map = 1434, x = 27.1, y = 77.2, giver = "Crank Fizzlebub", pre = { 605 }, turnin = { 1434, 27.1, 77.2 } }
Q[604] = { name = "The Bloodsail Buccaneers", level = 43, minLevel = 37, map = 1434, x = 27.2, y = 77.0, giver = "Fleet Master Seahorn", pre = { 599 }, turnin = { 1434, 27.2, 77.0 } }
Q[605] = { name = "Singing Blue Shards", level = 35, minLevel = 30, map = 1434, x = 27.1, y = 77.2, giver = "Crank Fizzlebub", turnin = { 1434, 27.1, 77.2 } }
Q[606] = { name = "Scaring Shaky", level = 41, minLevel = 30, map = 1434, x = 27.8, y = 77.1, giver = "\"Sea Wolf\" MacKinley", turnin = { 1434, 26.9, 73.6 } }
Q[607] = { name = "Return to MacKinley", level = 41, minLevel = 30, map = 1434, x = 26.9, y = 73.6, giver = "\"Shaky\" Phillipe", pre = { 606 }, turnin = { 1434, 27.8, 77.1 } }
Q[608] = { name = "The Bloodsail Buccaneers", level = 45, minLevel = 37, map = 1434, x = 27.2, y = 77.0, giver = "Fleet Master Seahorn", pre = { 604 }, turnin = { 1434, 27.2, 77.0 } }
Q[617] = { name = "Akiris by the Bundle", level = 43, minLevel = 38, map = 1434, x = 26.8, y = 76.4, giver = "Privateer Bloads", turnin = { 1434, 26.8, 76.4 } }
Q[621] = { name = "Zanzil's Secret", level = 44, minLevel = 35, map = 1434, x = 27.1, y = 77.2, giver = "Crank Fizzlebub", turnin = { 1434, 27.1, 77.2 } }
Q[624] = { name = "Cortello's Riddle", level = 43, minLevel = 35, map = 1434, x = 29.2, y = 88.6, giver = "Drop: Cortello's Riddle", turnin = { 1435, 22.9, 48.2 } }
Q[625] = { name = "Cortello's Riddle", level = 43, minLevel = 35, map = 1435, x = 22.9, y = 48.2, giver = "A Soggy Scroll", pre = { 624 }, turnin = { 1445, 31.1, 66.1 } }
Q[628] = { name = "Excelsior", level = 38, minLevel = 31, map = 1434, x = 28.3, y = 77.6, giver = "Drizzlik", pre = { 577 }, group = true, turnin = { 1434, 28.3, 77.6 } }
Q[629] = { name = "The Vile Reef", level = 37, minLevel = 30, map = 1434, x = 32.3, y = 27.7, giver = "Kin'weelay", turnin = { 1434, 32.3, 27.7 } }
Q[630] = { name = "Message in a Bottle", level = 51, minLevel = 45, map = 1434, x = 38.5, y = 80.6, giver = "Princess Poobah", pre = { 594 }, group = true, turnin = { 1434, 38.5, 80.6 } }
Q[635] = { name = "Crystal in the Mountains", level = 35, minLevel = 30, map = 1443, x = 54.8, y = 27.8, giver = "Drop: Pendant of Myzrael", turnin = { 1417, 62.5, 33.7 } }
Q[638] = { name = "Trollbane", level = 37, minLevel = 32, map = 1434, x = 32.2, y = 27.7, giver = "Nimboya", turnin = { 1417, 73.8, 34.0 } }
Q[639] = { name = "Sigil of Strom", level = 37, minLevel = 32, map = 1417, x = 73.8, y = 34.0, giver = "Zengu", group = true, turnin = { 1417, 73.8, 34.0 } }
Q[640] = { name = "The Broken Sigil", level = 40, minLevel = 32, map = 1417, x = 73.8, y = 34.0, giver = "Zengu", pre = { 639 }, group = true, turnin = { 1417, 74.7, 36.3 } }
Q[641] = { name = "Sigil of Thoradin", level = 40, minLevel = 32, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", pre = { 640 }, turnin = { 1417, 73.8, 34.0 } }
Q[642] = { name = "The Princess Trapped", level = 37, minLevel = 30, map = 1417, x = 62.5, y = 33.7, giver = "Shards of Myzrael", turnin = { 1417, 84.3, 30.9 } }
Q[643] = { name = "Sigil of Arathor", level = 41, minLevel = 32, map = 1417, x = 73.8, y = 34.0, giver = "Zengu", pre = { 641 }, group = true, turnin = { 1417, 73.8, 34.0 } }
Q[644] = { name = "Sigil of Trollbane", level = 42, minLevel = 32, map = 1417, x = 73.8, y = 34.0, giver = "Zengu", pre = { 643 }, group = true, turnin = { 1417, 73.8, 34.0 } }
Q[645] = { name = "Trol'kalar", level = 42, minLevel = 32, map = 1417, x = 73.8, y = 34.0, giver = "Zengu", pre = { 644 }, turnin = { 1417, 28.9, 59.6 } }
Q[646] = { name = "Trol'kalar", level = 42, minLevel = 32, map = 1417, x = 28.9, y = 59.6, giver = "Trollbane's Tomb", pre = { 645 }, turnin = { 1417, 73.8, 34.0 } }
Q[648] = { name = "Rescue OOX-17/TN!", level = 48, minLevel = 43, map = 1446, x = 60.2, y = 64.7, giver = "Homing Robot OOX-17/TN", pre = { 351 }, turnin = { 1434, 28.4, 76.3 } }
Q[649] = { name = "Ripple Recovery", level = 48, minLevel = 42, map = 1454, x = 59.5, y = 36.6, giver = "Dran Droffers", turnin = { 1454, 59.6, 36.9 } }
Q[650] = { name = "Ripple Recovery", level = 48, minLevel = 42, map = 1454, x = 59.6, y = 36.9, giver = "Malton Droffers", pre = { 649 }, turnin = { 1425, 26.7, 48.6 } }
Q[651] = { name = "Stones of Binding", level = 38, minLevel = 30, map = 1417, x = 84.3, y = 30.9, giver = "Iridescent Shards", pre = { 642 }, turnin = { 1417, 36.2, 57.4 } }
Q[652] = { name = "Breaking the Keystone", level = 42, minLevel = 30, map = 1417, x = 36.2, y = 57.4, giver = "Stone of Inner Binding", pre = { 651 }, group = true, turnin = { 1417, 36.1, 58.1 } }
Q[655] = { name = "Hammerfall", level = 34, minLevel = 29, map = 1417, x = 72.6, y = 33.9, giver = "Gor'mul", turnin = { 1417, 74.7, 36.3 } }
Q[662] = { name = "Deep Sea Salvage", level = 40, minLevel = 35, map = 1417, x = 32.8, y = 81.5, giver = "First Mate Nilzlix", pre = { 663 }, turnin = { 1417, 32.8, 81.5 } }
Q[663] = { name = "Land Ho!", level = 35, minLevel = 35, map = 1417, x = 31.8, y = 82.7, giver = "Lolo the Lookout", turnin = { 1417, 32.3, 81.4 } }
Q[664] = { name = "Drowned Sorrows", level = 40, minLevel = 35, map = 1417, x = 34, y = 80.8, giver = "Captain Steelgut", pre = { 663 }, turnin = { 1417, 34, 80.8 } }
Q[665] = { name = "Sunken Treasure", level = 40, minLevel = 35, map = 1417, x = 33.9, y = 80.5, giver = "Professor Phizzlethorpe", pre = { 663 }, turnin = { 1417, 33.9, 80.5 } }
Q[666] = { name = "Sunken Treasure", level = 40, minLevel = 35, map = 1417, x = 33.9, y = 80.5, giver = "Doctor Draxlegauge", pre = { 665 }, turnin = { 1417, 33.9, 80.5 } }
Q[667] = { name = "Death From Below", level = 44, minLevel = 35, map = 1417, x = 32.3, y = 81.4, giver = "Shakes O'Breen", pre = { 670 }, turnin = { 1417, 32.3, 81.4 } }
Q[668] = { name = "Sunken Treasure", level = 40, minLevel = 35, map = 1417, x = 33.9, y = 80.5, giver = "Doctor Draxlegauge", pre = { 666 }, turnin = { 1417, 32.3, 81.4 } }
Q[669] = { name = "Sunken Treasure", level = 40, minLevel = 35, map = 1417, x = 32.3, y = 81.4, giver = "Shakes O'Breen", pre = { 668 }, turnin = { 1434, 27.2, 77.0 } }
Q[670] = { name = "Sunken Treasure", level = 40, minLevel = 35, map = 1434, x = 27.2, y = 77.0, giver = "Fleet Master Seahorn", pre = { 669 }, turnin = { 1417, 32.3, 81.4 } }
Q[671] = { name = "Foul Magics", level = 33, minLevel = 30, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", turnin = { 1417, 74.7, 36.3 } }
Q[672] = { name = "Raising Spirits", level = 34, minLevel = 29, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", pre = { 655 }, turnin = { 1417, 74.7, 36.3 } }
Q[673] = { name = "Foul Magics", level = 40, minLevel = 35, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", pre = { 671 }, group = true, turnin = { 1417, 74.7, 36.3 } }
Q[674] = { name = "Raising Spirits", level = 34, minLevel = 29, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", pre = { 672 }, turnin = { 1417, 72.6, 33.9 } }
Q[675] = { name = "Raising Spirits", level = 34, minLevel = 29, map = 1417, x = 72.6, y = 33.9, giver = "Gor'mul", pre = { 674 }, turnin = { 1417, 74.7, 36.3 } }
Q[676] = { name = "The Hammer May Fall", level = 32, minLevel = 30, map = 1424, x = 61.9, y = 19.6, giver = "Tallow", turnin = { 1417, 74.2, 33.9 } }
Q[677] = { name = "Call to Arms", level = 32, minLevel = 30, map = 1417, x = 74.2, y = 33.9, giver = "Drum Fel", turnin = { 1417, 74.2, 33.9 } }
Q[678] = { name = "Call to Arms", level = 38, minLevel = 30, map = 1417, x = 74.2, y = 33.9, giver = "Drum Fel", pre = { 677 }, turnin = { 1417, 74.2, 33.9 } }
Q[679] = { name = "Call to Arms", level = 40, minLevel = 30, map = 1417, x = 74.2, y = 33.9, giver = "Drum Fel", pre = { 678 }, group = true, turnin = { 1417, 74.2, 33.9 } }
Q[680] = { name = "The Real Threat", level = 40, minLevel = 30, map = 1417, x = 74.0, y = 33.1, giver = "Korin Fel", pre = { 678 }, group = true, turnin = { 1417, 74.0, 33.1 } }
Q[687] = { name = "Theldurin the Lost", level = 40, minLevel = 30, map = 1417, x = 74.5, y = 35.6, giver = "Zaruk", turnin = { 1418, 51.4, 76.9 } }
Q[688] = { name = "Myzrael's Allies", level = 40, minLevel = 30, map = 1417, x = 36.1, y = 58.1, giver = "Keystone", pre = { 652 }, turnin = { 1417, 74.5, 35.6 } }
Q[692] = { name = "The Lost Fragments", level = 41, minLevel = 30, map = 1418, x = 51.4, y = 76.9, giver = "Theldurin the Lost", pre = { 687 }, turnin = { 1418, 51.4, 76.9 } }
Q[698] = { name = "Lack of Surplus", level = 40, minLevel = 35, map = 1435, x = 44.7, y = 57.2, giver = "Dar", turnin = { 1435, 81.3, 81.0 } }
Q[699] = { name = "Lack of Surplus", level = 42, minLevel = 35, map = 1435, x = 81.3, y = 81.0, giver = "Tok'Kar", pre = { 698 }, turnin = { 1435, 81.3, 81.0 } }
Q[701] = { name = "Guile of the Raptor", level = 37, minLevel = 29, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", pre = { 675 }, turnin = { 1417, 74.7, 36.3 } }
Q[702] = { name = "Guile of the Raptor", level = 37, minLevel = 29, map = 1417, x = 74.7, y = 36.3, giver = "Tor'gan", pre = { 701 }, turnin = { 1417, 72.6, 33.9 } }
Q[703] = { name = "Barbecued Buzzard Wings", level = 40, minLevel = 33, map = 1418, x = 42.4, y = 52.9, giver = "Rigglefuzz", group = true, turnin = { 1418, 42.4, 52.9 } }
Q[705] = { name = "Pearl Diving", level = 37, minLevel = 30, map = 1418, x = 42.4, y = 52.9, giver = "Rigglefuzz", turnin = { 1418, 42.4, 52.9 } }
Q[709] = { name = "Solution to Doom", level = 40, minLevel = 30, map = 1418, x = 51.4, y = 76.9, giver = "Theldurin the Lost", dungeon = "Uldaman", turnin = { 1418, 51.4, 76.9 } }
Q[710] = { name = "Study of the Elements: Rock", level = 37, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", turnin = { 1418, 25.9, 44.9 } }
Q[711] = { name = "Study of the Elements: Rock", level = 39, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", pre = { 710 }, turnin = { 1418, 25.9, 44.9 } }
Q[712] = { name = "Study of the Elements: Rock", level = 42, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", pre = { 711 }, turnin = { 1418, 25.9, 44.9 } }
Q[713] = { name = "Coolant Heads Prevail", level = 37, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", turnin = { 1418, 25.9, 44.9 } }
Q[714] = { name = "Gyro... What?", level = 37, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", pre = { 713 }, turnin = { 1418, 25.9, 44.9 } }
Q[715] = { name = "Liquid Stone", level = 37, minLevel = 35, map = 1418, x = 25.8, y = 44.2, giver = "Lucien Tosselwrench", pre = { 714 }, group = true, turnin = { 1418, 25.8, 44.2 } }
Q[716] = { name = "Stone Is Better than Cloth", level = 42, minLevel = 35, map = 1418, x = 25.8, y = 44.2, giver = "Lucien Tosselwrench", pre = { 712 }, turnin = { 1418, 25.8, 44.2 } }
Q[728] = { name = "To the Undercity for Yagyin's Digest", level = 40, minLevel = 30, map = 1418, x = 51.4, y = 76.9, giver = "Theldurin the Lost", pre = { 709 }, turnin = { 1458, 53.7, 54.5 } }
Q[734] = { name = "This Is Going to Be Hard", level = 42, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", pre = { 712, 714 }, turnin = { 1418, 25.8, 44.2 } }
Q[737] = { name = "Forbidden Knowledge", level = 40, minLevel = 30, map = 1458, x = 53.7, y = 54.5, giver = "Keeper Bel'dugur", turnin = { 1418, 51.4, 76.9 } }
Q[742] = { name = "The Ashenvale Hunt", level = 20, minLevel = 20, map = 1456, x = 44.3, y = 58.8, giver = "Bluff Runner Windstrider", turnin = { 1440, 73.8, 61.5 } }
Q[743] = { name = "Dangers of the Windfury", level = 8, minLevel = 5, map = 1412, x = 46.5, y = 64.9, giver = "Ruul Eagletalon", turnin = { 1412, 46.5, 64.9 } }
Q[744] = { name = "Preparation for Ceremony", level = 11, minLevel = 7, map = 1456, x = 37.8, y = 59.6, giver = "Eyahn Eagletalon", turnin = { 1456, 37.8, 59.6 } }
Q[745] = { name = "Sharing the Land", level = 8, minLevel = 1, map = 1412, x = 46.7, y = 63.4, giver = "Baine Bloodhoof", turnin = { 1412, 46.7, 63.4 } }
Q[746] = { name = "Dwarven Digging", level = 8, minLevel = 6, map = 1412, x = 46.7, y = 63.4, giver = "Baine Bloodhoof", turnin = { 1412, 46.7, 63.4 } }
Q[747] = { name = "The Hunt Begins", level = 2, minLevel = 1, map = 1412, x = 44.5, y = 77.5, giver = "Grull Hawkwind", turnin = { 1412, 44.5, 77.5 } }
Q[748] = { name = "Poison Water", level = 5, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[749] = { name = "The Ravaged Caravan", level = 8, minLevel = 5, map = 1412, x = 54.8, y = 64.3, giver = "Morin Cloudstalker", turnin = { 1412, 51.9, 53.4 } }
Q[750] = { name = "The Hunt Continues", level = 3, minLevel = 1, map = 1412, x = 44.5, y = 77.5, giver = "Grull Hawkwind", pre = { 747 }, turnin = { 1412, 44.5, 77.5 } }
Q[751] = { name = "The Ravaged Caravan", level = 8, minLevel = 5, map = 1412, x = 51.9, y = 53.4, giver = "Sealed Supply Crate", pre = { 749 }, turnin = { 1412, 54.8, 64.3 } }
Q[752] = { name = "A Humble Task", level = 2, minLevel = 1, map = 1412, x = 43.9, y = 76.7, giver = "Chief Hawkwind", turnin = { 1412, 48.8, 80.9 } }
Q[753] = { name = "A Humble Task", level = 3, minLevel = 1, map = 1412, x = 48.8, y = 80.9, giver = "Greatmother Hawkwind", turnin = { 1412, 43.9, 76.7 } }
Q[754] = { name = "Winterhoof Cleansing", level = 6, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", pre = { 748 }, race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[755] = { name = "Rites of the Earthmother", level = 3, minLevel = 1, map = 1412, x = 43.9, y = 76.7, giver = "Chief Hawkwind", pre = { 753 }, turnin = { 1412, 42.5, 90.1 } }
Q[756] = { name = "Thunderhorn Totem", level = 7, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", pre = { 754 }, race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[757] = { name = "Rite of Strength", level = 4, minLevel = 1, map = 1412, x = 42.5, y = 90.1, giver = "Seer Graytongue", pre = { 755 }, turnin = { 1412, 43.9, 76.7 } }
Q[758] = { name = "Thunderhorn Cleansing", level = 8, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", pre = { 756 }, race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[759] = { name = "Wildmane Totem", level = 10, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", pre = { 758 }, race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[760] = { name = "Wildmane Cleansing", level = 10, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", pre = { 759 }, race = { TAUREN = true }, turnin = { 1412, 47.5, 63.6 } }
Q[761] = { name = "Swoop Hunting", level = 6, minLevel = 4, map = 1412, x = 47.7, y = 62.7, giver = "Harken Windtotem", turnin = { 1412, 47.7, 62.7 } }
Q[763] = { name = "Rites of the Earthmother", level = 5, minLevel = 1, map = 1412, x = 43.9, y = 76.7, giver = "Chief Hawkwind", pre = { 757 }, turnin = { 1412, 46.7, 63.4 } }
Q[764] = { name = "The Venture Co.", level = 10, minLevel = 5, map = 1412, x = 54.8, y = 64.3, giver = "Morin Cloudstalker", pre = { 751 }, turnin = { 1412, 54.8, 64.3 } }
Q[765] = { name = "Supervisor Fizsprocket", level = 12, minLevel = 5, map = 1412, x = 54.8, y = 64.3, giver = "Morin Cloudstalker", pre = { 751 }, turnin = { 1412, 54.8, 64.3 } }
Q[766] = { name = "Mazzranache", level = 8, minLevel = 5, map = 1412, x = 46.2, y = 60.8, giver = "Maur Raincaller", turnin = { 1412, 46.2, 60.8 } }
Q[767] = { name = "Rite of Vision", level = 6, minLevel = 3, map = 1412, x = 46.7, y = 63.4, giver = "Baine Bloodhoof", turnin = { 1412, 46.9, 61.2 } }
Q[771] = { name = "Rite of Vision", level = 7, minLevel = 3, map = 1412, x = 46.9, y = 61.2, giver = "Zarlman Two-Moons", pre = { 767 }, group = true, turnin = { 1412, 46.9, 61.2 } }
Q[772] = { name = "Rite of Vision", level = 7, minLevel = 3, map = 1412, x = 46.9, y = 61.2, giver = "Zarlman Two-Moons", pre = { 771 }, turnin = { 1412, 34.3, 43.3 } }
Q[773] = { name = "Rite of Wisdom", level = 10, minLevel = 3, map = 1412, x = 34.3, y = 43.3, giver = "Seer Wiserunner", pre = { 772 }, turnin = { 1412, 58.3, 30.7 } }
Q[775] = { name = "Journey into Thunder Bluff", level = 10, minLevel = 3, map = 1412, x = 58.3, y = 30.7, giver = "Ancestral Spirit", pre = { 773 }, turnin = { 1456, 60.3, 51.7 } }
Q[776] = { name = "Rites of the Earthmother", level = 14, minLevel = 3, map = 1456, x = 60.3, y = 51.7, giver = "Cairne Bloodhoof", pre = { 775 }, turnin = { 1456, 60.3, 51.7 } }
Q[777] = { name = "This Is Going to Be Hard", level = 42, minLevel = 35, map = 1418, x = 25.8, y = 44.2, giver = "Lucien Tosselwrench", pre = { 734 }, turnin = { 1418, 25.9, 44.9 } }
Q[778] = { name = "This Is Going to Be Hard", level = 45, minLevel = 35, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", pre = { 777 }, turnin = { 1418, 25.9, 44.9 } }
Q[780] = { name = "The Battleboars", level = 4, minLevel = 1, map = 1412, x = 44.5, y = 77.5, giver = "Grull Hawkwind", pre = { 750 }, turnin = { 1412, 44.5, 77.5 } }
Q[781] = { name = "Attack on Camp Narache", level = 4, minLevel = 1, map = 1412, x = 59.8, y = 82.2, giver = "Drop: Dirt-stained Map", turnin = { 1412, 43.9, 76.7 } }
Q[782] = { name = "Broken Alliances", level = 43, minLevel = 40, map = 1418, x = 2.9, y = 45.6, giver = "Gorn", turnin = { 1418, 2.9, 45.6 } }
Q[784] = { name = "Vanquish the Betrayers", level = 7, minLevel = 3, map = 1411, x = 52.0, y = 43.5, giver = "Gar'Thok", turnin = { 1411, 52.0, 43.5 } }
Q[786] = { name = "Thwarting Kolkar Aggression", level = 8, minLevel = 5, map = 1411, x = 54.4, y = 74.3, giver = "Lar Prowltusk", turnin = { 1411, 54.4, 74.3 } }
Q[787] = { name = "The New Horde", level = 1, minLevel = 1, map = 1454, x = 34.3, y = 39.4, giver = "Eitrigg", turnin = { 1411, 42.1, 68.3 } }
Q[788] = { name = "Cutting Teeth", level = 2, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", turnin = { 1411, 42.1, 68.3 } }
Q[789] = { name = "Sting of the Scorpid", level = 3, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", pre = { 788 }, turnin = { 1411, 42.1, 68.3 } }
Q[790] = { name = "Sarkoth", level = 5, minLevel = 1, map = 1411, x = 40.6, y = 62.6, giver = "Hana'zua", turnin = { 1411, 40.6, 62.6 } }
Q[791] = { name = "Carry Your Weight", level = 7, minLevel = 4, map = 1411, x = 49.9, y = 40.4, giver = "Furl Scornbrow", turnin = { 1411, 49.9, 40.4 } }
Q[792] = { name = "Vile Familiars", level = 4, minLevel = 2, map = 1411, x = 42.9, y = 69.2, giver = "Zureetha Fargaze", class = { WARRIOR = true, PALADIN = true, HUNTER = true, ROGUE = true, PRIEST = true, SHAMAN = true, MAGE = true, DRUID = true }, turnin = { 1411, 42.9, 69.2 } }
Q[793] = { name = "Broken Alliances", level = 50, minLevel = 40, map = 1418, x = 2.9, y = 45.6, giver = "Gorn", pre = { 782 }, group = true, turnin = { 1418, 2.9, 45.6 } }
Q[794] = { name = "Burning Blade Medallion", level = 5, minLevel = 1, map = 1411, x = 42.9, y = 69.2, giver = "Zureetha Fargaze", turnin = { 1411, 42.9, 69.2 } }
Q[804] = { name = "Sarkoth", level = 5, minLevel = 1, map = 1411, x = 40.6, y = 62.6, giver = "Hana'zua", pre = { 790 }, turnin = { 1411, 42.1, 68.3 } }
Q[805] = { name = "Report to Sen'jin Village", level = 5, minLevel = 1, map = 1411, x = 42.9, y = 69.2, giver = "Zureetha Fargaze", pre = { 794 }, turnin = { 1411, 56.0, 74.7 } }
Q[806] = { name = "Dark Storms", level = 12, minLevel = 4, map = 1411, x = 52.2, y = 43.1, giver = "Orgnil Soulscar", pre = { 823 }, turnin = { 1411, 52.2, 43.1 } }
Q[808] = { name = "Minshina's Skull", level = 9, minLevel = 4, map = 1411, x = 56.0, y = 74.7, giver = "Master Gadrin", turnin = { 1411, 56.0, 74.7 } }
Q[809] = { name = "Ak'Zeloth", level = 13, minLevel = 4, map = 1454, x = 49.5, y = 50.6, giver = "Neeru Fireblade", pre = { 829 }, turnin = { 1413, 62.3, 20.1 } }
Q[812] = { name = "Need for a Cure", level = 9, minLevel = 7, map = 1411, x = 41.5, y = 18.6, giver = "Rhinag", turnin = { 1411, 41.5, 18.6 } }
Q[815] = { name = "Break a Few Eggs", level = 8, minLevel = 6, map = 1411, x = 51.1, y = 42.5, giver = "Cook Torka", turnin = { 1411, 51.1, 42.5 } }
Q[816] = { name = "Lost But Not Forgotten", level = 11, minLevel = 8, map = 1411, x = 43.1, y = 30.2, giver = "Misha Tor'kren", turnin = { 1411, 43.1, 30.2 } }
Q[817] = { name = "Practical Prey", level = 8, minLevel = 5, map = 1411, x = 56.0, y = 73.9, giver = "Vel'rin Fang", turnin = { 1411, 56.0, 73.9 } }
Q[818] = { name = "A Solvent Spirit", level = 7, minLevel = 5, map = 1411, x = 55.9, y = 74.4, giver = "Master Vornal", turnin = { 1411, 55.9, 74.4 } }
Q[819] = { name = "Chen's Empty Keg", level = 15, minLevel = 11, map = 1413, x = 43.8, y = 12.2, giver = "Drop: Chen's Empty Keg", turnin = { 1413, 62.3, 38.4 } }
Q[821] = { name = "Chen's Empty Keg", level = 15, minLevel = 11, map = 1413, x = 62.3, y = 38.4, giver = "Brewmaster Drohn", pre = { 819 }, group = true, turnin = { 1413, 62.3, 38.4 } }
Q[823] = { name = "Report to Orgnil", level = 7, minLevel = 4, map = 1411, x = 56.0, y = 74.7, giver = "Master Gadrin", turnin = { 1411, 52.2, 43.1 } }
Q[824] = { name = "Je'neu of the Earthen Ring", level = 27, minLevel = 23, map = 1440, x = 73.7, y = 60, giver = "Mastok Wrilehiss", pre = { 1918 }, turnin = { 1440, 11.6, 34.3 } }
Q[825] = { name = "From The Wreckage....", level = 8, minLevel = 3, map = 1411, x = 52.0, y = 43.5, giver = "Gar'Thok", pre = { 784 }, turnin = { 1411, 52.0, 43.5 } }
Q[826] = { name = "Zalazane", level = 10, minLevel = 4, map = 1411, x = 56.0, y = 74.7, giver = "Master Gadrin", turnin = { 1411, 56.0, 74.7 } }
Q[827] = { name = "Skull Rock", level = 12, minLevel = 4, map = 1411, x = 56.4, y = 20.0, giver = "Margoz", pre = { 828 }, turnin = { 1411, 56.4, 20.0 } }
Q[828] = { name = "Margoz", level = 12, minLevel = 4, map = 1411, x = 52.2, y = 43.1, giver = "Orgnil Soulscar", pre = { 806 }, turnin = { 1411, 56.4, 20.0 } }
Q[829] = { name = "Neeru Fireblade", level = 12, minLevel = 4, map = 1411, x = 56.4, y = 20.0, giver = "Margoz", pre = { 827 }, turnin = { 1454, 49.5, 50.6 } }
Q[830] = { name = "The Admiral's Orders", level = 7, minLevel = 1, map = 1411, x = 59.3, y = 57.6, giver = "Drop: Aged Envelope", turnin = { 1411, 52.0, 43.5 } }
Q[831] = { name = "The Admiral's Orders", level = 7, minLevel = 1, map = 1411, x = 52.0, y = 43.5, giver = "Gar'Thok", pre = { 830 }, turnin = { 1454, 32.3, 35.8 } }
Q[832] = { name = "Burning Shadows", level = 12, minLevel = 4, map = 1411, x = 52.6, y = 8.8, giver = "Drop: Eye of Burning Shadow", turnin = { 1454, 49.5, 50.6 } }
Q[833] = { name = "A Sacred Burial", level = 10, minLevel = 7, map = 1412, x = 57.0, y = 34.5, giver = "Lorekeeper Raintotem", turnin = { 1412, 57.0, 34.5 } }
Q[834] = { name = "Winds in the Desert", level = 9, minLevel = 7, map = 1411, x = 46.4, y = 22.9, giver = "Rezlak", turnin = { 1411, 46.4, 22.9 } }
Q[835] = { name = "Securing the Lines", level = 11, minLevel = 7, map = 1411, x = 46.4, y = 22.9, giver = "Rezlak", pre = { 834 }, turnin = { 1411, 46.4, 22.9 } }
Q[836] = { name = "Rescue OOX-09/HL!", level = 48, minLevel = 43, map = 1425, x = 49.4, y = 37.7, giver = "Homing Robot OOX-09/HL", pre = { 485 }, turnin = { 1434, 28.4, 76.3 } }
Q[837] = { name = "Encroachment", level = 10, minLevel = 6, map = 1411, x = 52.0, y = 43.5, giver = "Gar'Thok", turnin = { 1411, 52.0, 43.5 } }
Q[838] = { name = "Scholomance", level = 55, minLevel = 55, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", pre = { 5098 }, turnin = { 1420, 83.3, 69.2 } }
Q[840] = { name = "Conscript of the Horde", level = 12, minLevel = 10, map = 1411, x = 50.8, y = 43.6, giver = "Takrin Pathseeker", turnin = { 1413, 62.3, 19.4 } }
Q[842] = { name = "Crossroads Conscription", level = 12, minLevel = 10, map = 1413, x = 62.3, y = 19.4, giver = "Kargal Battlescar", pre = { 840 }, turnin = { 1413, 52.2, 31.0 } }
Q[843] = { name = "Gann's Reclamation", level = 23, minLevel = 17, map = 1413, x = 45.9, y = 77, giver = "Gann Stonespire", turnin = { 1413, 45.9, 77 } }
Q[844] = { name = "Plainstrider Menace", level = 12, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", turnin = { 1413, 52.2, 31.0 } }
Q[845] = { name = "The Zhevra", level = 13, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", pre = { 844 }, turnin = { 1413, 52.2, 31.0 } }
Q[846] = { name = "Revenge of Gann", level = 26, minLevel = 17, map = 1413, x = 45.9, y = 77, giver = "Gann Stonespire", pre = { 843 }, turnin = { 1413, 45.9, 77 } }
Q[847] = { name = "Guile of the Raptor", level = 37, minLevel = 29, map = 1417, x = 72.6, y = 33.9, giver = "Gor'mul", pre = { 702 }, turnin = { 1417, 74.7, 36.3 } }
Q[848] = { name = "Fungal Spores", level = 15, minLevel = 10, map = 1413, x = 51.4, y = 30.1, giver = "Apothecary Helbrim", turnin = { 1413, 51.4, 30.1 } }
Q[849] = { name = "Revenge of Gann", level = 26, minLevel = 17, map = 1413, x = 45.9, y = 77, giver = "Gann Stonespire", pre = { 846 }, turnin = { 1413, 45.9, 77 } }
Q[850] = { name = "Kolkar Leaders", level = 16, minLevel = 11, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", turnin = { 1413, 45.3, 28.4 } }
Q[851] = { name = "Verog the Dervish", level = 18, minLevel = 11, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", pre = { 850 }, turnin = { 1413, 45.3, 28.4 } }
Q[852] = { name = "Hezrul Bloodmark", level = 19, minLevel = 11, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", pre = { 851 }, turnin = { 1413, 45.3, 28.4 } }
Q[853] = { name = "Apothecary Zamah", level = 15, minLevel = 10, map = 1413, x = 51.4, y = 30.1, giver = "Apothecary Helbrim", pre = { 848 }, turnin = { 1456, 22.8, 20.9 } }
Q[854] = { name = "Journey to the Crossroads", level = 12, minLevel = 9, map = 1413, x = 44.9, y = 58.6, giver = "Kirge Sternhorn", race = { TAUREN = true }, turnin = { 1413, 51.5, 30.9 } }
Q[855] = { name = "Centaur Bracers", level = 14, minLevel = 9, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", group = true, turnin = { 1413, 45.3, 28.4 } }
Q[857] = { name = "The Tear of the Moons", level = 30, minLevel = 22, map = 1413, x = 49.0, y = 86.3, giver = "Feegly the Exiled", turnin = { 1413, 49.0, 86.3 } }
Q[858] = { name = "Ignition", level = 18, minLevel = 13, map = 1413, x = 56.5, y = 7.5, giver = "Wizzlecrank's Shredder", turnin = { 1413, 56.5, 7.5 } }
Q[860] = { name = "Sergra Darkthorn", level = 10, minLevel = 10, map = 1456, x = 61.5, y = 80.9, giver = "Melor Stonehoof", pre = { 861 }, turnin = { 1413, 52.2, 31.0 } }
Q[861] = { name = "The Hunter's Way", level = 10, minLevel = 10, map = 1412, x = 46.0, y = 63.4, giver = "Skorn Whitecloud", turnin = { 1456, 61.5, 80.9 } }
Q[863] = { name = "The Escape", level = 18, minLevel = 13, map = 1413, x = 56.5, y = 7.5, giver = "Wizzlecrank's Shredder", pre = { 858 }, turnin = { 1413, 63.0, 37.2 } }
Q[864] = { name = "Return to Apothecary Zinge", level = 46, minLevel = 38, map = 1446, x = 52.5, y = 28.5, giver = "Chief Engineer Bilgewhizzle", pre = { 654 }, turnin = { 1458, 50.1, 68.0 } }
Q[865] = { name = "Raptor Horns", level = 18, minLevel = 13, map = 1413, x = 62.4, y = 37.6, giver = "Mebok Mizzyrix", group = true, turnin = { 1413, 62.4, 37.6 } }
Q[867] = { name = "Harpy Raiders", level = 15, minLevel = 12, map = 1413, x = 51.6, y = 30.9, giver = "Darsok Swiftdagger", turnin = { 1413, 51.6, 30.9 } }
Q[868] = { name = "Egg Hunt", level = 22, minLevel = 17, map = 1413, x = 51.1, y = 29.6, giver = "Korran", turnin = { 1413, 51.1, 29.6 } }
Q[869] = { name = "Raptor Thieves", level = 13, minLevel = 9, map = 1413, x = 51.9, y = 30.3, giver = "Gazrog", group = true, turnin = { 1413, 51.9, 30.3 } }
Q[870] = { name = "The Forgotten Pools", level = 13, minLevel = 10, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", turnin = { 1413, 52.3, 31.9 } }
Q[871] = { name = "Disrupt the Attacks", level = 12, minLevel = 9, map = 1413, x = 51.5, y = 30.9, giver = "Thork", turnin = { 1413, 51.5, 30.9 } }
Q[872] = { name = "The Disruption Ends", level = 15, minLevel = 9, map = 1413, x = 51.5, y = 30.9, giver = "Thork", pre = { 871 }, turnin = { 1413, 51.5, 30.9 } }
Q[875] = { name = "Harpy Lieutenants", level = 16, minLevel = 12, map = 1413, x = 51.6, y = 30.9, giver = "Darsok Swiftdagger", pre = { 867 }, turnin = { 1413, 51.6, 30.9 } }
Q[876] = { name = "Serena Bloodfeather", level = 20, minLevel = 12, map = 1413, x = 51.6, y = 30.9, giver = "Darsok Swiftdagger", pre = { 875 }, turnin = { 1413, 51.6, 30.9 } }
Q[877] = { name = "The Stagnant Oasis", level = 16, minLevel = 10, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", pre = { 870 }, turnin = { 1413, 52.3, 31.9 } }
Q[878] = { name = "Tribes at War", level = 21, minLevel = 14, map = 1413, x = 44.5, y = 59.3, giver = "Mangletooth", turnin = { 1413, 44.5, 59.3 } }
Q[879] = { name = "Betrayal from Within", level = 25, minLevel = 17, map = 1413, x = 44.5, y = 59.3, giver = "Mangletooth", pre = { 5052 }, turnin = { 1413, 44.5, 59.3 } }
Q[880] = { name = "Altered Beings", level = 16, minLevel = 10, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", pre = { 877 }, turnin = { 1413, 52.3, 31.9 } }
Q[881] = { name = "Echeyakee", level = 16, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", pre = { 903 }, turnin = { 1413, 52.2, 31.0 } }
Q[882] = { name = "Ishamuhale", level = 19, minLevel = 10, map = 1413, x = 44.9, y = 59.1, giver = "Jorn Skyseer", pre = { 3261 }, turnin = { 1413, 44.9, 59.1 } }
Q[883] = { name = "Lakota'mani", level = 22, minLevel = 10, map = 1413, x = 47.4, y = 51.3, giver = "Drop: Hoof of Lakota'mani", turnin = { 1413, 44.9, 59.1 } }
Q[886] = { name = "The Barrens Oases", level = 10, minLevel = 10, map = 1456, x = 78.6, y = 28.6, giver = "Arch Druid Hamuul Runetotem", turnin = { 1413, 52.3, 31.9 } }
Q[887] = { name = "Southsea Freebooters", level = 14, minLevel = 9, map = 1413, x = 62.7, y = 36.2, giver = "Gazlowe", turnin = { 1413, 62.7, 36.2 } }
Q[888] = { name = "Stolen Booty", level = 16, minLevel = 9, map = 1413, x = 62.7, y = 36.2, giver = "Gazlowe", pre = { 892 }, turnin = { 1413, 62.7, 36.2 } }
Q[890] = { name = "The Missing Shipment", level = 14, minLevel = 9, map = 1413, x = 62.7, y = 36.2, giver = "Gazlowe", pre = { 887 }, turnin = { 1413, 63.4, 38.5 } }
Q[891] = { name = "The Guns of Northwatch", level = 20, minLevel = 13, map = 1413, x = 62.3, y = 39.0, giver = "Captain Thalo'thas Brightsun", turnin = { 1413, 62.3, 39.0 } }
Q[892] = { name = "The Missing Shipment", level = 14, minLevel = 9, map = 1413, x = 63.4, y = 38.5, giver = "Wharfmaster Dizzywig", pre = { 890 }, turnin = { 1413, 62.7, 36.2 } }
Q[893] = { name = "Weapons of Choice", level = 24, minLevel = 17, map = 1413, x = 45.1, y = 57.7, giver = "Tatternack Steelforge", turnin = { 1413, 45.1, 57.7 } }
Q[894] = { name = "Samophlange", level = 14, minLevel = 10, map = 1413, x = 63.0, y = 37.2, giver = "Sputtervalve", turnin = { 1413, 52.4, 11.7 } }
Q[895] = { name = "WANTED: Baron Longshore", level = 16, minLevel = 11, map = 1413, x = 62.6, y = 37.5, giver = "WANTED", turnin = { 1413, 62.7, 36.2 } }
Q[896] = { name = "Miner's Fortune", level = 18, minLevel = 13, map = 1413, x = 63.4, y = 38.5, giver = "Wharfmaster Dizzywig", turnin = { 1413, 63.4, 38.5 } }
Q[898] = { name = "Free From the Hold", level = 20, minLevel = 13, map = 1413, x = 62.0, y = 55.0, giver = "Gilthares Firebough", turnin = { 1413, 62.3, 39.0 } }
Q[899] = { name = "Consumed by Hatred", level = 20, minLevel = 14, map = 1413, x = 52.0, y = 31.6, giver = "Mankrik", turnin = { 1413, 52.0, 31.6 } }
Q[900] = { name = "Samophlange", level = 14, minLevel = 10, map = 1413, x = 52.4, y = 11.7, giver = "Control Console", pre = { 894 }, turnin = { 1413, 52.4, 11.7 } }
Q[901] = { name = "Samophlange", level = 14, minLevel = 10, map = 1413, x = 52.4, y = 11.7, giver = "Control Console", pre = { 900 }, turnin = { 1413, 52.4, 11.7 } }
Q[902] = { name = "Samophlange", level = 16, minLevel = 10, map = 1413, x = 52.4, y = 11.7, giver = "Control Console", pre = { 901 }, turnin = { 1413, 63.0, 37.2 } }
Q[903] = { name = "Prowlers of the Barrens", level = 15, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", pre = { 845 }, turnin = { 1413, 52.2, 31.0 } }
Q[905] = { name = "The Angry Scytheclaws", level = 17, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", pre = { 881 }, turnin = { 1413, 52.2, 31.0 } }
Q[906] = { name = "Betrayal from Within", level = 25, minLevel = 17, map = 1413, x = 44.5, y = 59.3, giver = "Mangletooth", pre = { 879 }, turnin = { 1413, 51.5, 30.9 } }
Q[907] = { name = "Enraged Thunder Lizards", level = 18, minLevel = 10, map = 1413, x = 44.9, y = 59.1, giver = "Jorn Skyseer", pre = { 882 }, turnin = { 1413, 44.9, 59.1 } }
Q[913] = { name = "Cry of the Thunderhawk", level = 20, minLevel = 10, map = 1413, x = 44.9, y = 59.1, giver = "Jorn Skyseer", pre = { 907 }, turnin = { 1413, 44.9, 59.1 } }
Q[914] = { name = "Leaders of the Fang", level = 22, minLevel = 11, map = 1456, x = 75.7, y = 31.6, giver = "Nara Wildmane", pre = { 1490 }, dungeon = "Wailing Caverns", turnin = { 1456, 75.7, 31.6 } }
Q[924] = { name = "The Demon Seed", level = 14, minLevel = 9, map = 1413, x = 62.3, y = 20.1, giver = "Ak'Zeloth", pre = { 809 }, turnin = { 1413, 62.3, 20.1 } }
Q[936] = { name = "Assisting Arch Druid Runetotem", level = 50, minLevel = 47, map = 1454, x = 54.1, y = 68.4, giver = "Innkeeper Gryshka", turnin = { 1456, 78.6, 28.6 } }
Q[959] = { name = "Trouble at the Docks", level = 18, minLevel = 14, map = 1413, x = 63.1, y = 37.6, giver = "Crane Operator Bigglefuzz", dungeon = "Wailing Caverns", turnin = { 1413, 63.1, 37.6 } }
Q[962] = { name = "Serpentbloom", level = 18, minLevel = 14, map = 1456, x = 22.8, y = 20.9, giver = "Apothecary Zamah", dungeon = "Wailing Caverns", turnin = { 1456, 22.8, 20.9 } }
Q[964] = { name = "Skeletal Fragments", level = 57, minLevel = 55, map = 1420, x = 83.3, y = 69.2, giver = "Apothecary Dithers", pre = { 838 }, group = true, turnin = { 1420, 83.3, 69.2 } }
Q[969] = { name = "Luck Be With You", level = 60, minLevel = 55, map = 1452, x = 61.9, y = 38.3, giver = "Witch Doctor Mau'ari", group = true, turnin = { 1452, 61.9, 38.3 } }
Q[974] = { name = "Finding the Source", level = 55, minLevel = 51, map = 1449, x = 30.9, y = 50.4, giver = "Krakle", turnin = { 1449, 30.9, 50.4 } }
Q[975] = { name = "Cache of Mau'ari", level = 60, minLevel = 55, map = 1452, x = 61.9, y = 38.3, giver = "Witch Doctor Mau'ari", pre = { 969 }, turnin = { 1452, 61.9, 38.3 } }
Q[977] = { name = "Are We There, Yeti?", level = 58, minLevel = 52, map = 1452, x = 60.9, y = 37.6, giver = "Umi Rumplesnicker", pre = { 3783 }, turnin = { 1452, 60.9, 37.6 } }
Q[980] = { name = "The New Springs", level = 55, minLevel = 51, map = 1449, x = 30.9, y = 50.4, giver = "Krakle", pre = { 974 }, turnin = { 1452, 31.3, 45.2 } }
Q[992] = { name = "Gadgetzan Water Survey", level = 46, minLevel = 38, map = 1446, x = 50.2, y = 27.5, giver = "Senior Surveyor Fizzledowser", turnin = { 1446, 50.2, 27.5 } }
Q[1000] = { name = "The New Frontier", level = 55, minLevel = 54, map = 1456, x = 44.3, y = 58.8, giver = "Bluff Runner Windstrider", turnin = { 1456, 78.6, 28.6 } }
Q[1004] = { name = "The New Frontier", level = 55, minLevel = 54, map = 1458, x = 63.9, y = 44.1, giver = "Harbinger Balthazad", turnin = { 1456, 78.6, 28.6 } }
Q[1013] = { name = "The Book of Ur", level = 26, minLevel = 16, map = 1458, x = 53.7, y = 54.5, giver = "Keeper Bel'dugur", dungeon = "Shadowfang Keep", turnin = { 1458, 53.7, 54.5 } }
Q[1014] = { name = "Arugal Must Die", level = 27, minLevel = 18, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", dungeon = "Shadowfang Keep", turnin = { 1421, 44.2, 39.8 } }
Q[1018] = { name = "The New Frontier", level = 55, minLevel = 54, map = 1454, x = 37.7, y = 75.2, giver = "Warcaller Gorlach", turnin = { 1456, 78.6, 28.6 } }
Q[1036] = { name = "Avast Ye, Scallywag", level = 60, minLevel = 55, map = 1434, x = 27.4, y = 69.4, giver = "\"Pretty Boy\" Duncan", turnin = { 1434, 30.6, 90.6 } }
Q[1048] = { name = "Into The Scarlet Monastery", level = 42, minLevel = 33, map = 1458, x = 56.2, y = 92.2, giver = "Varimathras", dungeon = "Scarlet Monastery", turnin = { 1458, 56.2, 92.2 } }
Q[1049] = { name = "Compendium of the Fallen", level = 38, minLevel = 28, map = 1456, x = 34.4, y = 46.9, giver = "Sage Truthseeker", race = { ORC = true, TAUREN = true, TROLL = true }, dungeon = "Scarlet Monastery", turnin = { 1456, 34.4, 46.9 } }
Q[1058] = { name = "Jin'Zil's Forest Magic", level = 26, minLevel = 20, map = 1442, x = 74.5, y = 97.9, giver = "Witch Doctor Jin'Zil", group = true, turnin = { 1442, 74.5, 97.9 } }
Q[1060] = { name = "Letter to Jin'Zil", level = 20, minLevel = 15, map = 1413, x = 51.6, y = 30.9, giver = "Darsok Swiftdagger", pre = { 876 }, turnin = { 1442, 74.5, 97.9 } }
Q[1061] = { name = "The Spirits of Stonetalon", level = 17, minLevel = 13, map = 1454, x = 38.9, y = 38.4, giver = "Zor Lonetree", turnin = { 1413, 35.3, 27.9 } }
Q[1062] = { name = "Goblin Invaders", level = 19, minLevel = 13, map = 1413, x = 35.3, y = 27.9, giver = "Seereth Stonebreak", turnin = { 1413, 35.3, 27.9 } }
Q[1063] = { name = "The Elder Crone", level = 18, minLevel = 13, map = 1413, x = 35.3, y = 27.9, giver = "Seereth Stonebreak", pre = { 1062 }, turnin = { 1456, 69.8, 30.9 } }
Q[1064] = { name = "Forsaken Aid", level = 18, minLevel = 13, map = 1456, x = 69.8, y = 30.9, giver = "Magatha Grimtotem", pre = { 1063 }, turnin = { 1456, 22.8, 20.9 } }
Q[1065] = { name = "Journey to Tarren Mill", level = 18, minLevel = 13, map = 1456, x = 22.8, y = 20.9, giver = "Apothecary Zamah", pre = { 1064 }, turnin = { 1424, 61.4, 19.1 } }
Q[1066] = { name = "Blood of Innocents", level = 23, minLevel = 13, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", pre = { 1065 }, turnin = { 1424, 61.4, 19.1 } }
Q[1067] = { name = "Return to Thunder Bluff", level = 23, minLevel = 13, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", pre = { 1066 }, turnin = { 1456, 22.8, 20.9 } }
Q[1068] = { name = "Shredding Machines", level = 23, minLevel = 13, map = 1413, x = 35.3, y = 27.9, giver = "Seereth Stonebreak", pre = { 1062 }, turnin = { 1413, 35.3, 27.9 } }
Q[1069] = { name = "Deepmoss Spider Eggs", level = 20, minLevel = 15, map = 1413, x = 62.4, y = 37.6, giver = "Mebok Mizzyrix", turnin = { 1413, 62.4, 37.6 } }
Q[1086] = { name = "The Flying Machine Airport", level = 23, minLevel = 13, map = 1456, x = 22.8, y = 20.9, giver = "Apothecary Zamah", pre = { 1067 }, turnin = { 1456, 22.8, 20.9 } }
Q[1087] = { name = "Cenarius' Legacy", level = 25, minLevel = 20, map = 1442, x = 45.9, y = 60.4, giver = "Braelyn Firehand", turnin = { 1442, 45.9, 60.4 } }
Q[1088] = { name = "Ordanus", level = 29, minLevel = 20, map = 1442, x = 45.9, y = 60.4, giver = "Braelyn Firehand", pre = { 1087 }, turnin = { 1442, 45.9, 60.4 } }
Q[1089] = { name = "The Den", level = 29, minLevel = 20, map = 1442, x = 45.9, y = 60.4, giver = "Braelyn Firehand", pre = { 1088 }, turnin = { 1442, 26.6, 10.9 } }
Q[1090] = { name = "Gerenzo's Orders", level = 22, minLevel = 17, map = 1442, x = 71.9, y = 60, giver = "Piznik", turnin = { 1442, 71.9, 60 } }
Q[1092] = { name = "Gerenzo's Orders", level = 22, minLevel = 17, map = 1442, x = 71.9, y = 60, giver = "Piznik", pre = { 1090 }, turnin = { 1442, 59.0, 62.6 } }
Q[1093] = { name = "Super Reaper 6000", level = 21, minLevel = 16, map = 1442, x = 59.0, y = 62.6, giver = "Ziz Fizziks", turnin = { 1442, 59.0, 62.6 } }
Q[1094] = { name = "Further Instructions", level = 21, minLevel = 16, map = 1442, x = 59.0, y = 62.6, giver = "Ziz Fizziks", pre = { 1093 }, turnin = { 1413, 63.0, 37.2 } }
Q[1095] = { name = "Further Instructions", level = 27, minLevel = 16, map = 1413, x = 63.0, y = 37.2, giver = "Sputtervalve", pre = { 1094 }, turnin = { 1442, 59.0, 62.6 } }
Q[1096] = { name = "Gerenzo Wrenchwhistle", level = 27, minLevel = 16, map = 1442, x = 59.0, y = 62.6, giver = "Ziz Fizziks", pre = { 1095 }, turnin = { 1442, 59.0, 62.6 } }
Q[1098] = { name = "Deathstalkers in Shadowfang", level = 25, minLevel = 18, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", dungeon = "Shadowfang Keep" }
Q[1102] = { name = "A Vengeful Fate", level = 34, minLevel = 29, map = 1456, x = 36.0, y = 59.9, giver = "Auld Stonespire", dungeon = "Razorfen Kraul", turnin = { 1456, 36.0, 59.9 } }
Q[1104] = { name = "Salt Flat Venom", level = 30, minLevel = 28, map = 1441, x = 78.1, y = 77.1, giver = "Fizzle Brassbolts", group = true, turnin = { 1441, 78.1, 77.1 } }
Q[1105] = { name = "Hardened Shells", level = 30, minLevel = 28, map = 1441, x = 78.1, y = 77.1, giver = "Wizzle Brassbolts", turnin = { 1441, 78.1, 77.1 } }
Q[1106] = { name = "Martek the Exiled", level = 35, minLevel = 26, map = 1441, x = 78.1, y = 77.1, giver = "Fizzle Brassbolts", pre = { 1104, 1105 }, turnin = { 1418, 42.2, 52.7 } }
Q[1107] = { name = "Encrusted Tail Fins", level = 35, minLevel = 28, map = 1441, x = 78.1, y = 77.1, giver = "Wizzle Brassbolts", pre = { 1104, 1105 }, group = true, turnin = { 1441, 78.1, 77.1 } }
Q[1108] = { name = "Indurium", level = 39, minLevel = 28, map = 1418, x = 42.2, y = 52.7, giver = "Martek the Exiled", pre = { 1106 }, group = true, turnin = { 1418, 42.2, 52.7 } }
Q[1109] = { name = "Going, Going, Guano!", level = 33, minLevel = 30, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", dungeon = "Razorfen Kraul", turnin = { 1458, 48.8, 69.3 } }
Q[1110] = { name = "Rocket Car Parts", level = 31, minLevel = 28, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", turnin = { 1441, 77.8, 77.3 } }
Q[1111] = { name = "Wharfmaster Dizzywig", level = 36, minLevel = 30, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", turnin = { 1413, 63.4, 38.5 } }
Q[1112] = { name = "Parts for Kravel", level = 36, minLevel = 30, map = 1413, x = 63.4, y = 38.5, giver = "Wharfmaster Dizzywig", pre = { 1111 }, turnin = { 1441, 77.8, 77.3 } }
Q[1113] = { name = "Hearts of Zeal", level = 33, minLevel = 30, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", pre = { 1109 }, dungeon = "Scarlet Monastery", turnin = { 1458, 48.8, 69.3 } }
Q[1114] = { name = "Delivery to the Gnomes", level = 36, minLevel = 30, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", pre = { 1112 }, turnin = { 1441, 78.1, 77.1 } }
Q[1115] = { name = "The Rumormonger", level = 36, minLevel = 30, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", pre = { 1114 }, turnin = { 1434, 26.9, 77.2 } }
Q[1116] = { name = "Dream Dust in the Swamp", level = 36, minLevel = 30, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", pre = { 1115 }, group = true, turnin = { 1434, 26.9, 77.2 } }
Q[1117] = { name = "Rumors for Kravel", level = 36, minLevel = 30, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", pre = { 1116 }, turnin = { 1441, 77.8, 77.3 } }
Q[1118] = { name = "Back to Booty Bay", level = 43, minLevel = 35, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", pre = { 1117 }, turnin = { 1434, 27.1, 77.2 } }
Q[1119] = { name = "Zanzil's Mixture and a Fool's Stout", level = 44, minLevel = 35, map = 1434, x = 27.1, y = 77.2, giver = "Crank Fizzlebub", pre = { 621, 1118 }, turnin = { 1441, 77.8, 77.3 } }
Q[1120] = { name = "Get the Gnomes Drunk", level = 44, minLevel = 35, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", pre = { 1119 }, turnin = { 1441, 77.6, 76.9 } }
Q[1121] = { name = "Get the Goblins Drunk", level = 44, minLevel = 35, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", pre = { 1119 }, turnin = { 1441, 79.9, 76.7 } }
Q[1122] = { name = "Report Back to Fizzlebub", level = 44, minLevel = 35, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", turnin = { 1434, 27.1, 77.2 } }
Q[1123] = { name = "Rabine Saturna", level = 55, minLevel = 54, map = 1456, x = 78.6, y = 28.6, giver = "Arch Druid Hamuul Runetotem", turnin = { 1450, 51.7, 45.1 } }
Q[1124] = { name = "Wasteland", level = 55, minLevel = 54, map = 1450, x = 51.7, y = 45.1, giver = "Rabine Saturna", turnin = { 1451, 81.9, 18.9 } }
Q[1125] = { name = "The Spirits of Southwind", level = 55, minLevel = 54, map = 1451, x = 81.9, y = 18.9, giver = "Layo Starstrike", pre = { 1124 }, turnin = { 1451, 81.9, 18.9 } }
Q[1126] = { name = "Hive in the Tower", level = 57, minLevel = 54, map = 1451, x = 81.9, y = 18.9, giver = "Layo Starstrike", pre = { 1125 }, turnin = { 1451, 81.9, 18.9 } }
Q[1130] = { name = "Melor Sends Word", level = 30, minLevel = 20, map = 1413, x = 44.9, y = 59.1, giver = "Jorn Skyseer", turnin = { 1456, 61.5, 80.9 } }
Q[1131] = { name = "Steelsnap", level = 30, minLevel = 20, map = 1456, x = 61.5, y = 80.9, giver = "Melor Stonehoof", turnin = { 1456, 61.5, 80.9 } }
Q[1136] = { name = "Frostmaw", level = 37, minLevel = 26, map = 1456, x = 61.5, y = 80.9, giver = "Melor Stonehoof", pre = { 1131 }, turnin = { 1456, 61.5, 80.9 } }
Q[1137] = { name = "News for Fizzle", level = 38, minLevel = 28, map = 1418, x = 42.2, y = 52.7, giver = "Martek the Exiled", pre = { 1108 }, turnin = { 1441, 78.1, 77.1 } }
Q[1145] = { name = "The Swarm Grows", level = 33, minLevel = 29, map = 1413, x = 51.1, y = 29.6, giver = "Korran", turnin = { 1454, 75.2, 34.2 } }
Q[1146] = { name = "The Swarm Grows", level = 33, minLevel = 29, map = 1454, x = 75.2, y = 34.2, giver = "Belgrom Rockmaul", pre = { 1145 }, turnin = { 1441, 67.6, 63.9 } }
Q[1147] = { name = "The Swarm Grows", level = 35, minLevel = 29, map = 1441, x = 67.6, y = 63.9, giver = "Moktar Krin", pre = { 1146 }, turnin = { 1441, 67.6, 63.9 } }
Q[1148] = { name = "Parts of the Swarm", level = 35, minLevel = 28, map = 1441, x = 68.1, y = 86.0, giver = "Drop: Cracked Silithid Carapace", pre = { 1146 }, turnin = { 1413, 51.1, 29.6 } }
Q[1149] = { name = "Test of Faith", level = 26, minLevel = 25, map = 1441, x = 54.0, y = 41.5, giver = "Dorn Plainstalker", turnin = { 1441, 54.0, 41.5 } }
Q[1150] = { name = "Test of Endurance", level = 30, minLevel = 25, map = 1441, x = 54.0, y = 41.5, giver = "Dorn Plainstalker", pre = { 1149 }, turnin = { 1441, 54.0, 41.5 } }
Q[1151] = { name = "Test of Strength", level = 30, minLevel = 25, map = 1441, x = 54.0, y = 41.5, giver = "Dorn Plainstalker", pre = { 1150 }, group = true, turnin = { 1441, 54.0, 41.5 } }
Q[1152] = { name = "Test of Lore", level = 30, minLevel = 25, map = 1441, x = 54.0, y = 41.5, giver = "Dorn Plainstalker", pre = { 1151 }, turnin = { 1442, 78.8, 45.7 } }
Q[1153] = { name = "A New Ore Sample", level = 29, minLevel = 25, map = 1413, x = 45.1, y = 57.7, giver = "Tatternack Steelforge", pre = { 893 }, turnin = { 1413, 45.1, 57.7 } }
Q[1154] = { name = "Test of Lore", level = 30, minLevel = 25, map = 1442, x = 78.8, y = 45.7, giver = "Braug Dimspirit", pre = { 1152 }, turnin = { 1442, 78.8, 45.7 } }
Q[1159] = { name = "Test of Lore", level = 30, minLevel = 25, map = 1442, x = 78.8, y = 45.7, giver = "Braug Dimspirit", pre = { 6627 }, turnin = { 1458, 57.8, 65.4 } }
Q[1160] = { name = "Test of Lore", level = 36, minLevel = 25, map = 1458, x = 57.8, y = 65.4, giver = "Parqual Fintallas", pre = { 1159 }, dungeon = "Scarlet Monastery", turnin = { 1458, 57.8, 65.4 } }
Q[1164] = { name = "To Steal From Thieves", level = 36, minLevel = 27, map = 1458, x = 63.8, y = 49.5, giver = "Genavie Callow", turnin = { 1458, 63.8, 49.5 } }
Q[1166] = { name = "Overlord Mok'Morokk's Concern", level = 43, minLevel = 38, map = 1445, x = 36.3, y = 31.4, giver = "Overlord Mok'Morokk", turnin = { 1445, 36.3, 31.4 } }
Q[1168] = { name = "Army of the Black Dragon", level = 43, minLevel = 38, map = 1445, x = 37.4, y = 31.4, giver = "Tharg", turnin = { 1445, 37.4, 31.4 } }
Q[1169] = { name = "Identifying the Brood", level = 43, minLevel = 38, map = 1445, x = 37.1, y = 33.1, giver = "Draz'Zilb", turnin = { 1445, 37.1, 33.1 } }
Q[1170] = { name = "The Brood of Onyxia", level = 43, minLevel = 38, map = 1445, x = 37.1, y = 33.1, giver = "Draz'Zilb", pre = { 1169 }, turnin = { 1445, 36.3, 31.4 } }
Q[1171] = { name = "The Brood of Onyxia", level = 43, minLevel = 38, map = 1445, x = 36.3, y = 31.4, giver = "Overlord Mok'Morokk", pre = { 1170 }, turnin = { 1445, 37.1, 33.1 } }
Q[1172] = { name = "The Brood of Onyxia", level = 45, minLevel = 38, map = 1445, x = 37.1, y = 33.1, giver = "Draz'Zilb", pre = { 1171 }, turnin = { 1445, 37.1, 33.1 } }
Q[1173] = { name = "Challenge Overlord Mok'Morokk", level = 45, minLevel = 38, map = 1445, x = 36.3, y = 31.4, giver = "Overlord Mok'Morokk", pre = { 1172 }, turnin = { 1445, 37.1, 33.1 } }
Q[1175] = { name = "A Bump in the Road", level = 33, minLevel = 28, map = 1441, x = 81.6, y = 78.0, giver = "Trackmaster Zherin", turnin = { 1441, 81.6, 78.0 } }
Q[1176] = { name = "Load Lightening", level = 30, minLevel = 29, map = 1441, x = 80.2, y = 75.9, giver = "Pozzik", turnin = { 1441, 80.2, 75.9 } }
Q[1177] = { name = "Hungry!", level = 36, minLevel = 32, map = 1445, x = 35.1, y = 38.3, giver = "Mudcrush Durtfeet", turnin = { 1445, 35.1, 38.3 } }
Q[1178] = { name = "Goblin Sponsorship", level = 37, minLevel = 29, map = 1441, x = 80.2, y = 75.9, giver = "Pozzik", pre = { 1176 }, turnin = { 1413, 62.7, 36.2 } }
Q[1180] = { name = "Goblin Sponsorship", level = 37, minLevel = 29, map = 1413, x = 62.7, y = 36.2, giver = "Gazlowe", pre = { 1178 }, turnin = { 1434, 26.4, 73.6 } }
Q[1181] = { name = "Goblin Sponsorship", level = 37, minLevel = 29, map = 1434, x = 26.4, y = 73.6, giver = "Wharfmaster Lozgil", pre = { 1180 }, turnin = { 1434, 27.2, 76.9 } }
Q[1182] = { name = "Goblin Sponsorship", level = 37, minLevel = 29, map = 1434, x = 27.2, y = 76.9, giver = "Baron Revilgaz", pre = { 1181 }, turnin = { 1434, 27.2, 76.9 } }
Q[1183] = { name = "Goblin Sponsorship", level = 37, minLevel = 29, map = 1434, x = 27.2, y = 76.9, giver = "Baron Revilgaz", pre = { 1182 }, turnin = { 1441, 80.2, 75.9 } }
Q[1184] = { name = "Parts of the Swarm", level = 35, minLevel = 28, map = 1413, x = 51.1, y = 29.6, giver = "Korran", pre = { 1148 }, turnin = { 1454, 75.2, 34.2 } }
Q[1185] = { name = "Under the Chitin Was...", level = 57, minLevel = 54, map = 1450, x = 44.9, y = 35.6, giver = "Umber", pre = { 6845 }, turnin = { 1450, 44.9, 35.6 } }
Q[1186] = { name = "The Eighteenth Pilot", level = 37, minLevel = 29, map = 1441, x = 80.2, y = 75.9, giver = "Pozzik", pre = { 1183 }, turnin = { 1441, 80.3, 76.1 } }
Q[1187] = { name = "Razzeric's Tweaking", level = 41, minLevel = 29, map = 1441, x = 80.3, y = 76.1, giver = "Razzeric", pre = { 1186 }, turnin = { 1441, 80.3, 76.1 } }
Q[1188] = { name = "Safety First", level = 41, minLevel = 29, map = 1441, x = 80.3, y = 76.1, giver = "Razzeric", pre = { 1187 }, turnin = { 1446, 51.0, 27.2 } }
Q[1189] = { name = "Safety First", level = 41, minLevel = 29, map = 1446, x = 51.0, y = 27.2, giver = "Shreev", pre = { 1188 }, turnin = { 1441, 80.3, 76.1 } }
Q[1190] = { name = "Keeping Pace", level = 41, minLevel = 29, map = 1441, x = 80.2, y = 75.9, giver = "Pozzik", pre = { 1137 }, turnin = { 1441, 77.2, 77.4 } }
Q[1194] = { name = "Rizzle's Schematics", level = 41, minLevel = 29, map = 1441, x = 77.2, y = 77.4, giver = "Rizzle's Unguarded Plans", pre = { 1190 }, turnin = { 1441, 80.2, 75.9 } }
Q[1195] = { name = "The Sacred Flame", level = 25, minLevel = 20, map = 1456, x = 55.0, y = 51.4, giver = "Zangen Stonehoof", turnin = { 1456, 55.0, 51.4 } }
Q[1196] = { name = "The Sacred Flame", level = 29, minLevel = 20, map = 1456, x = 55.0, y = 51.4, giver = "Zangen Stonehoof", pre = { 1195 }, turnin = { 1441, 46.1, 51.7 } }
Q[1197] = { name = "The Sacred Flame", level = 29, minLevel = 20, map = 1441, x = 46.1, y = 51.7, giver = "Rau Cliffrunner", pre = { 1196 }, turnin = { 1441, 46.1, 51.7 } }
Q[1198] = { name = "In Search of Thaelrid", level = 24, minLevel = 18, map = 1457, x = 55.4, y = 25.0, giver = "Dawnwatcher Shaedlass", dungeon = "Blackfathom Deeps" }
Q[1201] = { name = "Theramore Spies", level = 35, minLevel = 30, map = 1445, x = 35.2, y = 30.7, giver = "Nazeer Bloodpike", turnin = { 1445, 35.2, 30.7 } }
Q[1202] = { name = "The Theramore Docks", level = 35, minLevel = 30, map = 1445, x = 35.2, y = 30.7, giver = "Nazeer Bloodpike", pre = { 1201 }, turnin = { 1445, 35.2, 30.7 } }
Q[1203] = { name = "Jarl Needs a Blade", level = 35, minLevel = 30, map = 1445, x = 55.4, y = 26.3, giver = "\"Swamp Eye\" Jarl", pre = { 1206 }, turnin = { 1445, 55.4, 26.3 } }
Q[1205] = { name = "Deadmire", level = 45, minLevel = 35, map = 1456, x = 61.5, y = 80.9, giver = "Melor Stonehoof", turnin = { 1456, 61.5, 80.9 } }
Q[1206] = { name = "Jarl Needs Eyes", level = 35, minLevel = 30, map = 1445, x = 55.4, y = 26.3, giver = "\"Swamp Eye\" Jarl", pre = { 1218 }, turnin = { 1445, 55.4, 26.3 } }
Q[1218] = { name = "Soothing Spices", level = 35, minLevel = 30, map = 1445, x = 55.4, y = 26.3, giver = "\"Swamp Eye\" Jarl", turnin = { 1445, 55.4, 26.3 } }
Q[1221] = { name = "Blueleaf Tubers", level = 26, minLevel = 20, map = 1413, x = 62.4, y = 37.6, giver = "Mebok Mizzyrix", dungeon = "Razorfen Kraul", turnin = { 1413, 62.4, 37.6 } }
Q[1238] = { name = "The Lost Report", level = 35, minLevel = 30, map = 1445, x = 55.4, y = 25.9, giver = "Loose Dirt", turnin = { 1445, 35.2, 30.7 } }
Q[1239] = { name = "The Severed Head", level = 35, minLevel = 30, map = 1445, x = 55.4, y = 25.9, giver = "Loose Dirt", pre = { 1238 }, turnin = { 1445, 35.2, 30.7 } }
Q[1240] = { name = "The Troll Witchdoctor", level = 35, minLevel = 30, map = 1445, x = 35.2, y = 30.7, giver = "Nazeer Bloodpike", pre = { 1239 }, turnin = { 1434, 32.3, 27.7 } }
Q[1251] = { name = "The Black Shield", level = 35, minLevel = 30, map = 1445, x = 29.6, y = 48.6, giver = "Black Shield", turnin = { 1445, 36.4, 31.9 } }
Q[1261] = { name = "Marg Speaks", level = 40, minLevel = 30, map = 1434, x = 32.2, y = 27.6, giver = "Bubbling Cauldron", pre = { 1240 }, turnin = { 1445, 35.2, 30.7 } }
Q[1262] = { name = "Report to Zor", level = 40, minLevel = 30, map = 1445, x = 35.2, y = 30.7, giver = "Nazeer Bloodpike", pre = { 1261 }, turnin = { 1454, 38.9, 38.4 } }
Q[1268] = { name = "Suspicious Hoofprints", level = 35, minLevel = 30, map = 1445, x = 29.7, y = 47.6, giver = "Hoofprints", turnin = { 1445, 36.4, 31.9 } }
Q[1269] = { name = "Lieutenant Paval Reethe", level = 37, minLevel = 30, map = 1445, x = 29.8, y = 48.2, giver = "Theramore Guard Badge", turnin = { 1445, 36.4, 31.9 } }
Q[1270] = { name = "Stinky's Escape", level = 37, minLevel = 30, map = 1445, x = 46.9, y = 17.5, giver = "\"Stinky\" Ignatz", turnin = { 1413, 62.4, 37.6 } }
Q[1273] = { name = "Questioning Reethe", level = 37, minLevel = 30, map = 1445, x = 41.0, y = 36.7, giver = "Ogron", pre = { 1269 }, turnin = { 1445, 36.4, 31.9 } }
Q[1276] = { name = "The Black Shield", level = 37, minLevel = 30, map = 1445, x = 36.4, y = 31.9, giver = "Krog", pre = { 1273 }, turnin = { 1456, 54.0, 80.8 } }
Q[1321] = { name = "The Black Shield", level = 35, minLevel = 30, map = 1445, x = 36.4, y = 31.9, giver = "Krog", pre = { 1251 }, turnin = { 1445, 36.5, 30.8 } }
Q[1322] = { name = "The Black Shield", level = 37, minLevel = 30, map = 1445, x = 36.5, y = 30.8, giver = "Do'gol", pre = { 1321 }, turnin = { 1445, 36.5, 30.8 } }
Q[1323] = { name = "The Black Shield", level = 37, minLevel = 30, map = 1445, x = 36.5, y = 30.8, giver = "Do'gol", pre = { 1322 }, turnin = { 1445, 36.4, 31.9 } }
Q[1358] = { name = "Sample for Helbrim", level = 15, minLevel = 10, map = 1458, x = 50.1, y = 68.0, giver = "Apothecary Zinge", pre = { 1359 }, turnin = { 1413, 51.4, 30.1 } }
Q[1359] = { name = "Zinge's Delivery", level = 15, minLevel = 10, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", pre = { 3221 }, turnin = { 1458, 50.1, 68.0 } }
Q[1361] = { name = "Regthar Deathgate", level = 32, minLevel = 30, map = 1424, x = 63.2, y = 20.7, giver = "Krusk", turnin = { 1413, 45.3, 28.4 } }
Q[1362] = { name = "The Kolkar of Desolace", level = 32, minLevel = 30, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", turnin = { 1443, 56.2, 59.6 } }
Q[1365] = { name = "Khan Dez'hepah", level = 35, minLevel = 30, map = 1443, x = 56.2, y = 59.6, giver = "Felgur Twocuts", turnin = { 1443, 56.2, 59.6 } }
Q[1366] = { name = "Centaur Bounty", level = 31, minLevel = 30, map = 1443, x = 56.2, y = 59.6, giver = "Felgur Twocuts", pre = { 1365 }, group = true, turnin = { 1443, 56.2, 59.6 } }
Q[1367] = { name = "Magram Alliance", level = 33, minLevel = 30, map = 1443, x = 56.3, y = 59.7, giver = "Gurda Wildmane", turnin = { 1443, 75.0, 68.2 } }
Q[1368] = { name = "Gelkis Alliance", level = 33, minLevel = 30, map = 1443, x = 56.3, y = 59.7, giver = "Gurda Wildmane", turnin = { 1443, 36.2, 79.2 } }
Q[1369] = { name = "Broken Tears", level = 33, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", turnin = { 1443, 75.0, 68.2 } }
Q[1370] = { name = "Stealing Supplies", level = 35, minLevel = 30, map = 1443, x = 36.2, y = 79.2, giver = "Uthek the Wise", turnin = { 1443, 36.2, 79.2 } }
Q[1371] = { name = "Gizmo for Warug", level = 35, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", pre = { 1369 }, turnin = { 1443, 75.0, 68.2 } }
Q[1372] = { name = "Nothing But The Truth", level = 42, minLevel = 37, map = 1431, x = 87.8, y = 35.6, giver = "Deathstalker Zraedus", turnin = { 1431, 87.5, 35.2 } }
Q[1373] = { name = "Ongeku", level = 37, minLevel = 30, map = 1443, x = 36.2, y = 79.2, giver = "Uthek the Wise", pre = { 1370 }, turnin = { 1443, 36.2, 79.2 } }
Q[1374] = { name = "Khan Jehn", level = 37, minLevel = 30, map = 1443, x = 36.2, y = 79.2, giver = "Uthek the Wise", pre = { 1373 }, turnin = { 1443, 36.2, 79.2 } }
Q[1375] = { name = "Khan Shaka", level = 37, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", pre = { 1371 }, turnin = { 1443, 75.0, 68.2 } }
Q[1380] = { name = "Khan Hratha", level = 42, minLevel = 30, map = 1443, x = 36.2, y = 79.2, giver = "Uthek the Wise", pre = { 1374 }, group = true, turnin = { 1443, 36.2, 79.2 } }
Q[1381] = { name = "Khan Hratha", level = 42, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", pre = { 1375 }, group = true, turnin = { 1443, 75.0, 68.2 } }
Q[1383] = { name = "Nothing But The Truth", level = 42, minLevel = 37, map = 1431, x = 87.5, y = 35.2, giver = "Apothecary Faustin", pre = { 1372 }, group = true, turnin = { 1431, 87.5, 35.2 } }
Q[1388] = { name = "Nothing But The Truth", level = 42, minLevel = 37, map = 1431, x = 87.5, y = 35.2, giver = "Apothecary Faustin", pre = { 1383 }, turnin = { 1431, 87.8, 35.6 } }
Q[1389] = { name = "Draenethyst Crystals", level = 35, minLevel = 30, map = 1435, x = 26.0, y = 31.4, giver = "Magtoor", turnin = { 1435, 26.0, 31.4 } }
Q[1391] = { name = "Nothing But The Truth", level = 42, minLevel = 37, map = 1431, x = 87.8, y = 35.6, giver = "Deathstalker Zraedus", pre = { 1388 }, turnin = { 1435, 44.3, 52.4 } }
Q[1392] = { name = "Noboru the Cudgel", level = 39, minLevel = 29, map = 1435, x = 54.9, y = 34.1, giver = "Drop: Noboru's Cudgel", turnin = { 1435, 26.0, 31.4 } }
Q[1393] = { name = "Galen's Escape", level = 38, minLevel = 30, map = 1435, x = 65.5, y = 18.2, giver = "Galen Goodward", turnin = { 1435, 47.8, 39.8 } }
Q[1394] = { name = "Final Passage", level = 36, minLevel = 25, map = 1458, x = 57.8, y = 65.4, giver = "Parqual Fintallas", pre = { 6628 }, turnin = { 1441, 54.0, 41.5 } }
Q[1418] = { name = "Neeka Bloodscar", level = 35, minLevel = 30, map = 1435, x = 47.7, y = 55.2, giver = "Helgrum the Swift", turnin = { 1418, 6.5, 47.2 } }
Q[1419] = { name = "Coyote Thieves", level = 40, minLevel = 30, map = 1418, x = 6.5, y = 47.2, giver = "Neeka Bloodscar", turnin = { 1418, 6.5, 47.2 } }
Q[1420] = { name = "Report to Helgrum", level = 40, minLevel = 30, map = 1418, x = 6.5, y = 47.2, giver = "Neeka Bloodscar", turnin = { 1435, 47.7, 55.2 } }
Q[1422] = { name = "Threat From the Sea", level = 45, minLevel = 35, map = 1435, x = 81.3, y = 81.0, giver = "Tok'Kar", pre = { 699 }, turnin = { 1435, 83.8, 80.4 } }
Q[1424] = { name = "Pool of Tears", level = 43, minLevel = 38, map = 1435, x = 47.9, y = 54.8, giver = "Fel'zerul", turnin = { 1435, 47.9, 54.8 } }
Q[1426] = { name = "Threat From the Sea", level = 43, minLevel = 35, map = 1435, x = 83.8, y = 80.4, giver = "Katar", pre = { 1422 }, turnin = { 1435, 83.8, 80.4 } }
Q[1427] = { name = "Threat From the Sea", level = 43, minLevel = 35, map = 1435, x = 83.8, y = 80.4, giver = "Katar", pre = { 1426 }, turnin = { 1435, 81.3, 81.0 } }
Q[1428] = { name = "Continued Threat", level = 45, minLevel = 35, map = 1435, x = 83.8, y = 80.4, giver = "Katar", pre = { 1427 }, turnin = { 1435, 83.8, 80.4 } }
Q[1429] = { name = "The Atal'ai Exile", level = 44, minLevel = 38, map = 1435, x = 47.9, y = 54.8, giver = "Fel'zerul", pre = { 1424 }, turnin = { 1425, 33.8, 75.2 } }
Q[1430] = { name = "Fresh Meat", level = 44, minLevel = 35, map = 1435, x = 44.7, y = 57.2, giver = "Dar", turnin = { 1435, 44.7, 57.2 } }
Q[1431] = { name = "Alliance Relations", level = 30, minLevel = 30, map = 1454, x = 51.3, y = 45.9, giver = "Craven Drok", turnin = { 1454, 22.6, 52.6 } }
Q[1432] = { name = "Alliance Relations", level = 30, minLevel = 30, map = 1454, x = 22.6, y = 52.6, giver = "Keldran", pre = { 1431 }, turnin = { 1443, 52.6, 54.4 } }
Q[1433] = { name = "Alliance Relations", level = 33, minLevel = 30, map = 1443, x = 52.6, y = 54.4, giver = "Takata Steelblade", pre = { 1432 }, turnin = { 1443, 52.2, 53.4 } }
Q[1434] = { name = "Befouled by Satyr", level = 33, minLevel = 25, map = 1443, x = 52.6, y = 54.4, giver = "Takata Steelblade", pre = { 1432 }, turnin = { 1443, 52.6, 54.4 } }
Q[1435] = { name = "The Burning of Spirits", level = 33, minLevel = 25, map = 1443, x = 52.2, y = 53.4, giver = "Maurin Bonesplitter", pre = { 1433 }, turnin = { 1443, 52.2, 53.4 } }
Q[1436] = { name = "Alliance Relations", level = 33, minLevel = 30, map = 1443, x = 52.6, y = 54.4, giver = "Takata Steelblade", pre = { 1434, 1435 }, turnin = { 1454, 22.6, 52.6 } }
Q[1444] = { name = "Return to Fel'Zerul", level = 44, minLevel = 38, map = 1425, x = 33.8, y = 75.2, giver = "Atal'ai Exile", pre = { 1429 }, turnin = { 1435, 47.9, 54.8 } }
Q[1445] = { name = "The Temple of Atal'Hakkar", level = 50, minLevel = 38, map = 1435, x = 47.9, y = 54.8, giver = "Fel'zerul", pre = { 1444 }, dungeon = "The Temple of Atal'Hakkar", turnin = { 1435, 47.9, 54.8 } }
Q[1480] = { name = "The Corrupter", level = 33, minLevel = 25, map = 1443, x = 54.8, y = 27.8, giver = "Drop: Flayed Demon Skin", turnin = { 1443, 52.2, 53.4 } }
Q[1481] = { name = "The Corrupter", level = 33, minLevel = 25, map = 1443, x = 52.2, y = 53.4, giver = "Maurin Bonesplitter", pre = { 1480 }, turnin = { 1443, 52.2, 53.4 } }
Q[1482] = { name = "The Corrupter", level = 35, minLevel = 25, map = 1443, x = 52.2, y = 53.4, giver = "Maurin Bonesplitter", pre = { 1481 }, turnin = { 1443, 52.2, 53.4 } }
Q[1483] = { name = "Ziz Fizziks", level = 21, minLevel = 16, map = 1413, x = 63.0, y = 37.2, giver = "Sputtervalve", turnin = { 1442, 59.0, 62.6 } }
Q[1484] = { name = "The Corrupter", level = 35, minLevel = 25, map = 1443, x = 52.2, y = 53.4, giver = "Maurin Bonesplitter", pre = { 1482 }, turnin = { 1443, 52.6, 54.4 } }
Q[1486] = { name = "Deviate Hides", level = 17, minLevel = 13, map = 1413, x = 46.0, y = 35.7, giver = "Nalpak", dungeon = "Wailing Caverns", turnin = { 1413, 46.0, 35.7 } }
Q[1487] = { name = "Deviate Eradication", level = 21, minLevel = 15, map = 1413, x = 46.0, y = 35.7, giver = "Ebru", dungeon = "Wailing Caverns", turnin = { 1413, 46.0, 35.7 } }
Q[1489] = { name = "Hamuul Runetotem", level = 16, minLevel = 12, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", pre = { 880 }, dungeon = "Wailing Caverns", turnin = { 1456, 78.6, 28.6 } }
Q[1490] = { name = "Nara Wildmane", level = 16, minLevel = 12, map = 1456, x = 78.6, y = 28.6, giver = "Arch Druid Hamuul Runetotem", pre = { 1489 }, dungeon = "Wailing Caverns", turnin = { 1456, 75.7, 31.6 } }
Q[1491] = { name = "Smart Drinks", level = 18, minLevel = 13, map = 1413, x = 62.4, y = 37.6, giver = "Mebok Mizzyrix", pre = { 865 }, dungeon = "Wailing Caverns", turnin = { 1413, 62.4, 37.6 } }
Q[1492] = { name = "Wharfmaster Dizzywig", level = 11, minLevel = 9, map = 1413, x = 51.4, y = 30.1, giver = "Apothecary Helbrim", turnin = { 1413, 63.4, 38.5 } }
Q[1560] = { name = "Tooga's Quest", level = 50, minLevel = 40, map = 1446, x = 29.5, y = 60.5, giver = "Tooga", turnin = { 1446, 66.6, 25.7 } }
Q[1656] = { name = "A Task Unfinished", level = 5, minLevel = 1, map = 1412, x = 39.2, y = 81.2, giver = "Antur Fallow", turnin = { 1412, 45.9, 64.2 } }
Q[1690] = { name = "Wastewander Justice", level = 43, minLevel = 40, map = 1446, x = 52.5, y = 28.5, giver = "Chief Engineer Bilgewhizzle", turnin = { 1446, 52.5, 28.5 } }
Q[1691] = { name = "More Wastewander Justice", level = 44, minLevel = 40, map = 1446, x = 52.5, y = 28.5, giver = "Chief Engineer Bilgewhizzle", pre = { 1690 }, turnin = { 1446, 52.5, 28.5 } }
Q[1707] = { name = "Water Pouch Bounty", level = 44, minLevel = 40, map = 1446, x = 52.5, y = 28.4, giver = "Spigot Operator Luglunket", turnin = { 1446, 52.5, 28.4 } }
Q[1918] = { name = "The Befouled Element", level = 27, minLevel = 23, map = 1440, x = 46, y = 70, giver = "Drop: Befouled Water Globe", turnin = { 1440, 73.7, 60 } }
Q[2161] = { name = "A Peon's Burden", level = 5, minLevel = 1, map = 1411, x = 52.1, y = 68.3, giver = "Ukor", turnin = { 1411, 51.5, 41.6 } }
Q[2202] = { name = "Uldaman Reagent Run", level = 42, minLevel = 36, map = 1418, x = 2.4, y = 46.1, giver = "Jarkal Mossmeld", pre = { 2258 }, dungeon = "Uldaman", turnin = { 1418, 2.4, 46.1 } }
Q[2258] = { name = "Badlands Reagent Run", level = 39, minLevel = 36, map = 1418, x = 2.4, y = 46.1, giver = "Jarkal Mossmeld", group = true, turnin = { 1418, 2.4, 46.1 } }
Q[2283] = { name = "Necklace Recovery", level = 41, minLevel = 37, map = 1454, x = 59.5, y = 36.6, giver = "Dran Droffers", dungeon = "Uldaman", turnin = { 1454, 59.5, 36.6 } }
Q[2284] = { name = "Necklace Recovery, Take 2", level = 41, minLevel = 37, map = 1454, x = 59.5, y = 36.6, giver = "Dran Droffers", pre = { 2283 }, dungeon = "Uldaman" }
Q[2338] = { name = "Translating the Journal", level = 42, minLevel = 37, map = 1418, x = 2.4, y = 46.1, giver = "Jarkal Mossmeld", pre = { 2318 }, dungeon = "Uldaman", turnin = { 1418, 2.4, 46.1 } }
Q[2339] = { name = "Find the Gems and Power Source", level = 44, minLevel = 37, map = 1418, x = 2.4, y = 46.1, giver = "Jarkal Mossmeld", pre = { 2338 }, dungeon = "Uldaman", turnin = { 1418, 2.4, 46.1 } }
Q[2340] = { name = "Deliver the Gems", level = 44, minLevel = 37, map = 1418, x = 2.4, y = 46.1, giver = "Jarkal Mossmeld", pre = { 2339 }, dungeon = "Uldaman", turnin = { 1454, 59.5, 36.6 } }
Q[2341] = { name = "Necklace Recovery, Take 3", level = 44, minLevel = 40, map = 1454, x = 59.5, y = 36.6, giver = "Dran Droffers", pre = { 2340 }, dungeon = "Uldaman", turnin = { 1418, 2.4, 46.1 } }
Q[2342] = { name = "Reclaimed Treasures", level = 43, minLevel = 33, map = 1458, x = 62.3, y = 48.6, giver = "Patrick Garrett", dungeon = "Uldaman", turnin = { 1458, 62.3, 48.6 } }
Q[2418] = { name = "Power Stones", level = 36, minLevel = 30, map = 1418, x = 42.4, y = 52.9, giver = "Rigglefuzz", dungeon = "Uldaman", turnin = { 1418, 42.4, 52.9 } }
Q[2440] = { name = "The Platinum Discs", level = 47, minLevel = 40, map = 1456, x = 34.4, y = 46.9, giver = "Sage Truthseeker", pre = { 2280 }, turnin = { 1456, 46.6, 33.2 } }
Q[2521] = { name = "To Serve Kum'isha", level = 55, minLevel = 45, map = 1419, x = 52.0, y = 35.6, giver = "Kum'isha the Collector", group = true, turnin = { 1419, 52.0, 35.6 } }
Q[2581] = { name = "Snickerfang Jowls", level = 50, minLevel = 45, map = 1419, x = 50.5, y = 14.2, giver = "Bloodmage Drazial", turnin = { 1419, 50.5, 14.2 } }
Q[2583] = { name = "A Boar's Vitality", level = 50, minLevel = 45, map = 1419, x = 50.5, y = 14.2, giver = "Bloodmage Drazial", turnin = { 1419, 50.5, 14.2 } }
Q[2585] = { name = "The Decisive Striker", level = 50, minLevel = 45, map = 1419, x = 50.5, y = 14.2, giver = "Bloodmage Drazial", turnin = { 1419, 50.5, 14.2 } }
Q[2601] = { name = "The Basilisk's Bite", level = 50, minLevel = 45, map = 1419, x = 50.6, y = 14.3, giver = "Bloodmage Lynnore", turnin = { 1419, 50.6, 14.3 } }
Q[2603] = { name = "Vulture's Vigor", level = 50, minLevel = 45, map = 1419, x = 50.6, y = 14.3, giver = "Bloodmage Lynnore", turnin = { 1419, 50.6, 14.3 } }
Q[2605] = { name = "The Thirsty Goblin", level = 49, minLevel = 44, map = 1446, x = 51.8, y = 28.7, giver = "Marin Noggenfogger", turnin = { 1446, 51.8, 28.7 } }
Q[2606] = { name = "In Good Taste", level = 49, minLevel = 44, map = 1446, x = 51.8, y = 28.7, giver = "Marin Noggenfogger", pre = { 2605 }, turnin = { 1446, 51.1, 26.9 } }
Q[2621] = { name = "The Disgraced One", level = 50, minLevel = 45, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", pre = { 2784 }, turnin = { 1435, 47.8, 54.9 } }
Q[2622] = { name = "The Missing Orders", level = 50, minLevel = 45, map = 1435, x = 47.8, y = 54.9, giver = "Dispatch Commander Ruag", pre = { 2621 }, turnin = { 1435, 45.0, 57.4 } }
Q[2623] = { name = "The Swamp Talker", level = 55, minLevel = 45, map = 1435, x = 45.0, y = 57.4, giver = "Bengor", pre = { 2622 }, turnin = { 1435, 34.3, 66.1 } }
Q[2641] = { name = "Sprinkle's Secret Ingredient", level = 49, minLevel = 44, map = 1446, x = 51.1, y = 26.9, giver = "Sprinkle", pre = { 2606 }, turnin = { 1446, 51.1, 26.9 } }
Q[2661] = { name = "Delivery for Marin", level = 49, minLevel = 44, map = 1446, x = 51.1, y = 26.9, giver = "Sprinkle", pre = { 2641 }, turnin = { 1446, 51.8, 28.7 } }
Q[2662] = { name = "Noggenfogger Elixir", level = 49, minLevel = 44, map = 1446, x = 51.8, y = 28.7, giver = "Marin Noggenfogger", pre = { 2661 }, turnin = { 1446, 51.8, 28.7 } }
Q[2681] = { name = "The Stones That Bind Us", level = 57, minLevel = 45, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", pre = { 2801 }, turnin = { 1435, 34.3, 66.1 } }
Q[2701] = { name = "Heroes of Old", level = 57, minLevel = 45, map = 1435, x = 33.5, y = 66.0, giver = "Corporal Thund Splithoof", pre = { 2702 }, turnin = { 1435, 33.3, 66.2 } }
Q[2702] = { name = "Heroes of Old", level = 57, minLevel = 45, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", pre = { 2681 }, turnin = { 1435, 33.5, 66.0 } }
Q[2742] = { name = "Rin'ji is Trapped!", level = 47, minLevel = 42, map = 1425, x = 30.7, y = 46.9, giver = "Rin'ji", turnin = { 1425, 86.3, 59.0 } }
Q[2766] = { name = "Find OOX-22/FE!", level = 45, minLevel = 40, map = 1444, x = 73.1, y = 56.9, giver = "Drop: OOX-22/FE Distress Beacon", turnin = { 1444, 53.4, 55.7 } }
Q[2767] = { name = "Rescue OOX-22/FE!", level = 45, minLevel = 40, map = 1444, x = 53.4, y = 55.7, giver = "Homing Robot OOX-22/FE", pre = { 2766 }, turnin = { 1434, 28.4, 76.3 } }
Q[2768] = { name = "Divino-matic Rod", level = 47, minLevel = 40, map = 1446, x = 52.5, y = 28.5, giver = "Chief Engineer Bilgewhizzle", dungeon = "Zul'Farrak", turnin = { 1446, 52.5, 28.5 } }
Q[2770] = { name = "Gahz'rilla", level = 50, minLevel = 40, map = 1441, x = 78.1, y = 77.1, giver = "Wizzle Brassbolts", dungeon = "Zul'Farrak", turnin = { 1441, 78.1, 77.1 } }
Q[2781] = { name = "WANTED: Caliph Scorpidsting", level = 46, minLevel = 39, map = 1446, x = 66.8, y = 22.3, giver = "Wanted Poster", turnin = { 1446, 52.5, 28.5 } }
Q[2782] = { name = "Rin'ji's Secret", level = 47, minLevel = 42, map = 1425, x = 86.3, y = 59.0, giver = "Rin'ji's Secret", pre = { 2742 }, turnin = { 1458, 73.1, 32.9 } }
Q[2784] = { name = "Fall From Grace", level = 50, minLevel = 45, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", turnin = { 1435, 34.3, 66.1 } }
Q[2801] = { name = "A Tale of Sorrow", level = 57, minLevel = 45, map = 1435, x = 34.3, y = 66.1, giver = "Fallen Hero of the Horde", turnin = { 1435, 34.3, 66.1 } }
Q[2822] = { name = "The Mark of Quality", level = 46, minLevel = 40, map = 1444, x = 74.4, y = 42.9, giver = "Jangdor Swiftstrider", turnin = { 1444, 74.4, 42.9 } }
Q[2841] = { name = "Rig Wars", level = 35, minLevel = 25, map = 1454, x = 76.0, y = 25.4, giver = "Nogg", dungeon = "Gnomeregan", turnin = { 1454, 76.0, 25.4 } }
Q[2846] = { name = "Tiara of the Deep", level = 46, minLevel = 40, map = 1445, x = 46.1, y = 57.1, giver = "Tabetha", dungeon = "Zul'Farrak", turnin = { 1445, 46.1, 57.1 } }
Q[2861] = { name = "Tabetha's Task", level = 46, minLevel = 40, map = 1458, x = 85.1, y = 10.0, giver = "Anastasia Hartwell", dungeon = "Zul'Farrak", turnin = { 1445, 46.1, 57.1 } }
Q[2862] = { name = "War on the Woodpaw", level = 42, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", turnin = { 1444, 74.9, 42.5 } }
Q[2863] = { name = "Alpha Strike", level = 43, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", pre = { 2862 }, turnin = { 1444, 74.9, 42.5 } }
Q[2864] = { name = "Tran'rek", level = 45, minLevel = 40, map = 1434, x = 26.9, y = 77.2, giver = "Krazek", dungeon = "Zul'Farrak", turnin = { 1446, 51.6, 26.8 } }
Q[2865] = { name = "Scarab Shells", level = 45, minLevel = 40, map = 1446, x = 51.6, y = 26.8, giver = "Tran'rek", dungeon = "Zul'Farrak", turnin = { 1446, 51.6, 26.8 } }
Q[2872] = { name = "Stoley's Debt", level = 45, minLevel = 40, map = 1434, x = 27.8, y = 77.1, giver = "\"Sea Wolf\" MacKinley", turnin = { 1446, 67.1, 24.0 } }
Q[2873] = { name = "Stoley's Shipment", level = 45, minLevel = 40, map = 1446, x = 67.1, y = 24.0, giver = "Stoley", turnin = { 1446, 67.1, 24.0 } }
Q[2874] = { name = "Deliver to MacKinley", level = 45, minLevel = 40, map = 1446, x = 67.1, y = 24.0, giver = "Stoley", pre = { 2873 }, turnin = { 1434, 27.8, 77.1 } }
Q[2875] = { name = "WANTED: Andre Firebeard", level = 45, minLevel = 40, map = 1446, x = 66.8, y = 22.3, giver = "Wanted Poster", turnin = { 1446, 67.1, 23.9 } }
Q[2902] = { name = "Woodpaw Investigation", level = 43, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", pre = { 2863 }, turnin = { 1444, 71.6, 55.9 } }
Q[2903] = { name = "The Battle Plans", level = 43, minLevel = 39, map = 1444, x = 71.6, y = 55.9, giver = "Woodpaw Battle Map", pre = { 2902 }, turnin = { 1444, 74.9, 42.5 } }
Q[2932] = { name = "Grim Message", level = 42, minLevel = 35, map = 1434, x = 32.2, y = 27.7, giver = "Nimboya", turnin = { 1434, 32.2, 27.7 } }
Q[2933] = { name = "Venom Bottles", level = 43, minLevel = 40, map = 1425, x = 23.5, y = 58.8, giver = "Venom Bottle", turnin = { 1424, 61.4, 19.1 } }
Q[2934] = { name = "Undamaged Venom Sac", level = 45, minLevel = 40, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", pre = { 2933 }, turnin = { 1424, 61.4, 19.1 } }
Q[2935] = { name = "Consult Master Gadrin", level = 45, minLevel = 40, map = 1424, x = 61.4, y = 19.1, giver = "Apothecary Lydon", pre = { 2934 }, turnin = { 1411, 56.0, 74.7 } }
Q[2936] = { name = "The Spider God", level = 45, minLevel = 40, map = 1411, x = 56.0, y = 74.7, giver = "Master Gadrin", pre = { 2935 }, dungeon = "Zul'Farrak", turnin = { 1411, 56.0, 74.7 } }
Q[2950] = { name = "Nogg's Ring Redo", level = 35, minLevel = 28, map = 1454, x = 76.0, y = 25.4, giver = "Nogg", pre = { 2949 }, turnin = { 1454, 76.0, 25.4 } }
Q[2954] = { name = "The Stone Watcher", level = 50, minLevel = 45, map = 1446, x = 37.6, y = 81.4, giver = "Stone Watcher of Norgannon", turnin = { 1446, 37.6, 81.4 } }
Q[2965] = { name = "Portents of Uldum", level = 50, minLevel = 45, map = 1456, x = 34.4, y = 46.9, giver = "Sage Truthseeker", pre = { 2440 }, turnin = { 1456, 75.7, 31.6 } }
Q[2966] = { name = "Seeing What Happens", level = 50, minLevel = 45, map = 1456, x = 75.7, y = 31.6, giver = "Nara Wildmane", pre = { 2965 }, turnin = { 1446, 37.6, 81.4 } }
Q[2967] = { name = "Return to Thunder Bluff", level = 50, minLevel = 45, map = 1446, x = 37.6, y = 81.4, giver = "Uldum Pedestal", pre = { 2954 }, turnin = { 1456, 75.7, 31.6 } }
Q[2968] = { name = "A Future Task", level = 50, minLevel = 45, map = 1456, x = 75.7, y = 31.6, giver = "Nara Wildmane", pre = { 2967 }, turnin = { 1456, 34.4, 46.9 } }
Q[2973] = { name = "A New Cloak's Sheen", level = 45, minLevel = 38, map = 1444, x = 75.9, y = 42.7, giver = "Krueg Skullsplitter", turnin = { 1444, 75.9, 42.7 } }
Q[2974] = { name = "A Grim Discovery", level = 45, minLevel = 38, map = 1444, x = 75.9, y = 42.7, giver = "Krueg Skullsplitter", pre = { 2973 }, turnin = { 1444, 75.9, 42.7 } }
Q[2975] = { name = "The Ogres of Feralas", level = 43, minLevel = 38, map = 1444, x = 75.8, y = 43.6, giver = "Rok Orhan", turnin = { 1444, 75.8, 43.6 } }
Q[2976] = { name = "A Grim Discovery", level = 45, minLevel = 37, map = 1444, x = 75.9, y = 42.7, giver = "Krueg Skullsplitter", pre = { 2974 }, turnin = { 1454, 75.2, 34.2 } }
Q[2978] = { name = "The Gordunni Scroll", level = 43, minLevel = 38, map = 1444, x = 74.5, y = 27.9, giver = "Drop: Gordunni Scroll", turnin = { 1444, 75.8, 43.6 } }
Q[2979] = { name = "Dark Ceremony", level = 46, minLevel = 38, map = 1444, x = 75.8, y = 43.6, giver = "Rok Orhan", pre = { 2978 }, turnin = { 1444, 75.8, 43.6 } }
Q[2980] = { name = "The Ogres of Feralas", level = 44, minLevel = 38, map = 1444, x = 75.8, y = 43.6, giver = "Rok Orhan", pre = { 2975 }, turnin = { 1444, 75.8, 43.6 } }
Q[2981] = { name = "A Threat in Feralas", level = 43, minLevel = 38, map = 1454, x = 75.2, y = 34.2, giver = "Belgrom Rockmaul", turnin = { 1444, 75.8, 43.6 } }
Q[2987] = { name = "Gordunni Cobalt", level = 43, minLevel = 38, map = 1444, x = 75.7, y = 44.3, giver = "Orwin Gizzmick", turnin = { 1444, 75.7, 44.3 } }
Q[2995] = { name = "Lines of Communication", level = 47, minLevel = 42, map = 1458, x = 73.1, y = 32.9, giver = "Oran Snakewrithe", turnin = { 1458, 73.1, 32.9 } }
Q[3002] = { name = "The Gordunni Orb", level = 47, minLevel = 38, map = 1444, x = 75.8, y = 43.6, giver = "Rok Orhan", pre = { 2979 }, turnin = { 1454, 39.2, 86.3 } }
Q[3042] = { name = "Troll Temper", level = 45, minLevel = 40, map = 1446, x = 51.4, y = 28.8, giver = "Trenton Lighthammer", dungeon = "Zul'Farrak", turnin = { 1446, 51.4, 28.8 } }
Q[3062] = { name = "Dark Heart", level = 50, minLevel = 45, map = 1444, x = 76.2, y = 43.8, giver = "Talo Thornhoof", group = true, turnin = { 1444, 76.2, 43.8 } }
Q[3063] = { name = "Vengeance on the Northspring", level = 50, minLevel = 45, map = 1444, x = 76.2, y = 43.8, giver = "Talo Thornhoof", turnin = { 1444, 76.2, 43.8 } }
Q[3121] = { name = "A Strange Request", level = 45, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", turnin = { 1454, 49.5, 50.6 } }
Q[3122] = { name = "Return to Witch Doctor Uzer'i", level = 45, minLevel = 40, map = 1454, x = 49.5, y = 50.6, giver = "Neeru Fireblade", pre = { 3121 }, turnin = { 1444, 74.4, 43.4 } }
Q[3123] = { name = "Testing the Vessel", level = 47, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", pre = { 3122 }, turnin = { 1444, 74.4, 43.4 } }
Q[3124] = { name = "Hippogryph Muisek", level = 47, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", pre = { 3123 }, turnin = { 1444, 74.4, 43.4 } }
Q[3125] = { name = "Faerie Dragon Muisek", level = 45, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", pre = { 3124 }, turnin = { 1444, 74.4, 43.4 } }
Q[3126] = { name = "Treant Muisek", level = 50, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", pre = { 3125 }, turnin = { 1444, 74.4, 43.4 } }
Q[3127] = { name = "Mountain Giant Muisek", level = 50, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", pre = { 3126 }, group = true, turnin = { 1444, 74.4, 43.4 } }
Q[3128] = { name = "Natural Materials", level = 50, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", pre = { 3122 }, group = true, turnin = { 1444, 74.4, 43.4 } }
Q[3129] = { name = "Weapons of Spirit", level = 50, minLevel = 40, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", pre = { 3127, 3128 }, turnin = { 1444, 74.4, 43.4 } }
Q[3141] = { name = "Loramus", level = 57, minLevel = 45, map = 1447, x = 60.8, y = 66.3, giver = "Loramus Thalipedes", pre = { 2744 }, turnin = { 1447, 60.8, 66.3 } }
Q[3161] = { name = "Gahz'ridian", level = 48, minLevel = 43, map = 1446, x = 52.7, y = 45.9, giver = "Marvon Rivetseeker", turnin = { 1446, 52.7, 45.9 } }
Q[3221] = { name = "Speak with Renferrel", level = 12, minLevel = 10, map = 1421, x = 43.4, y = 40.9, giver = "High Executor Hadrec", pre = { 449 }, turnin = { 1421, 42.8, 40.9 } }
Q[3261] = { name = "Jorn Skyseer", level = 18, minLevel = 10, map = 1413, x = 52.2, y = 31.0, giver = "Sergra Darkthorn", pre = { 905 }, turnin = { 1413, 44.9, 59.1 } }
Q[3281] = { name = "Stolen Silver", level = 18, minLevel = 9, map = 1413, x = 51.9, y = 30.3, giver = "Gazrog", pre = { 869 }, turnin = { 1413, 51.9, 30.3 } }
Q[3301] = { name = "Mura Runetotem", level = 15, minLevel = 10, map = 1413, x = 52.3, y = 31.9, giver = "Tonga Runetotem", pre = { 880 }, turnin = { 1421, 42.9, 42.0 } }
Q[3341] = { name = "Bring the End", level = 42, minLevel = 37, map = 1458, x = 74.0, y = 33.3, giver = "Andrew Brownell", dungeon = "Razorfen Downs", turnin = { 1458, 74.0, 33.3 } }
Q[3362] = { name = "Thistleshrub Valley", level = 50, minLevel = 45, map = 1446, x = 51.6, y = 26.8, giver = "Tran'rek", turnin = { 1446, 51.6, 26.8 } }
Q[3369] = { name = "In Nightmares", level = 25, minLevel = 15, map = 1413, x = 48.2, y = 32.8, giver = "Falla Sagewind", pre = { 6981 }, turnin = { 1456, 78.6, 28.6 } }
Q[3374] = { name = "The Essence of Eranikus", level = 55, minLevel = 48, map = 1435, x = 13.7, y = 71.7, giver = "Drop: Oathstone of Ysera's Dragonflight", pre = { 3373 }, turnin = { 1435, 13.7, 71.7 } }
Q[3376] = { name = "Break Sharptusk!", level = 5, minLevel = 3, map = 1412, x = 44.2, y = 77.0, giver = "Brave Windfeather", turnin = { 1412, 44.2, 77.0 } }
Q[3380] = { name = "The Sunken Temple", level = 51, minLevel = 46, map = 1444, x = 74.4, y = 43.4, giver = "Witch Doctor Uzer'i", dungeon = "The Temple of Atal'Hakkar", turnin = { 1446, 52.7, 45.9 } }
Q[3441] = { name = "Divine Retribution", level = 48, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", turnin = { 1427, 39.1, 39.0 } }
Q[3442] = { name = "The Flawless Flame", level = 48, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3441 }, turnin = { 1427, 39.1, 39.0 } }
Q[3443] = { name = "Forging the Shaft", level = 48, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3442 }, group = true, turnin = { 1427, 39.1, 39.0 } }
Q[3444] = { name = "The Stone Circle", level = 51, minLevel = 46, map = 1446, x = 52.7, y = 45.9, giver = "Marvon Rivetseeker", turnin = { 1446, 52.7, 45.9 } }
Q[3446] = { name = "Into the Depths", level = 51, minLevel = 46, map = 1446, x = 52.7, y = 45.9, giver = "Marvon Rivetseeker", pre = { 3444 }, dungeon = "The Temple of Atal'Hakkar" }
Q[3447] = { name = "Secret of the Circle", level = 51, minLevel = 46, map = 1446, x = 52.7, y = 45.9, giver = "Marvon Rivetseeker", pre = { 3444 }, dungeon = "The Temple of Atal'Hakkar" }
Q[3452] = { name = "The Flame's Casing", level = 50, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3443 }, group = true, turnin = { 1427, 39.1, 39.0 } }
Q[3453] = { name = "The Torch of Retribution", level = 50, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3452 }, turnin = { 1427, 39.1, 39.0 } }
Q[3454] = { name = "The Torch of Retribution", level = 50, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3453 }, turnin = { 1427, 39.1, 39.1 } }
Q[3462] = { name = "Squire Maltrake", level = 50, minLevel = 40, map = 1427, x = 39.1, y = 39.0, giver = "Kalaran Windblade", pre = { 3454 }, turnin = { 1427, 39.2, 39 } }
Q[3463] = { name = "Set Them Ablaze!", level = 52, minLevel = 40, map = 1427, x = 39.2, y = 39, giver = "Squire Maltrake", pre = { 3462 }, turnin = { 1427, 39.2, 39 } }
Q[3481] = { name = "Trinkets...", level = 50, minLevel = 40, map = 1427, x = 38.9, y = 39.0, giver = "Hoard of the Black Dragonflight", pre = { 3463 }, turnin = { 1427, 38.9, 39.0 } }
Q[3501] = { name = "Everything Counts In Large Amounts", level = 55, minLevel = 45, map = 1419, x = 52.0, y = 35.6, giver = "Kum'isha the Collector", group = true, turnin = { 1419, 52.0, 35.6 } }
Q[3504] = { name = "Betrayed", level = 53, minLevel = 44, map = 1454, x = 75.2, y = 34.2, giver = "Belgrom Rockmaul", turnin = { 1447, 22.3, 51.5 } }
Q[3505] = { name = "Betrayed", level = 53, minLevel = 44, map = 1447, x = 22.3, y = 51.5, giver = "Ag'tor Bloodfist", pre = { 3504 }, turnin = { 1447, 59.5, 31.3 } }
Q[3506] = { name = "Betrayed", level = 56, minLevel = 44, map = 1447, x = 59.5, y = 31.3, giver = "Kaldorei Tome of Summoning", pre = { 3505 }, turnin = { 1447, 22.3, 51.5 } }
Q[3507] = { name = "Betrayed", level = 56, minLevel = 44, map = 1447, x = 22.3, y = 51.5, giver = "Ag'tor Bloodfist", pre = { 3506 }, turnin = { 1454, 75.2, 34.2 } }
Q[3512] = { name = "In Eranikus' Own Words", level = 55, minLevel = 48, map = 1435, x = 13.7, y = 71.7, giver = "Itharius", pre = { 3374 }, turnin = { 1452, 67.8, 27.4 } }
Q[3517] = { name = "Stealing Knowledge", level = 52, minLevel = 45, map = 1447, x = 22.6, y = 51.4, giver = "Jediga", turnin = { 1447, 22.6, 51.4 } }
Q[3518] = { name = "Delivery to Magatha", level = 52, minLevel = 45, map = 1447, x = 22.6, y = 51.4, giver = "Jediga", pre = { 3517 }, turnin = { 1456, 69.8, 30.9 } }
Q[3520] = { name = "Screecher Spirits", level = 44, minLevel = 40, map = 1446, x = 67.0, y = 22.4, giver = "Yeh'kinya", turnin = { 1446, 67.0, 22.4 } }
Q[3527] = { name = "The Prophecy of Mosh'aru", level = 47, minLevel = 40, map = 1446, x = 67.0, y = 22.4, giver = "Yeh'kinya", pre = { 3520 }, dungeon = "Zul'Farrak", turnin = { 1446, 67.0, 22.4 } }
Q[3541] = { name = "Delivery to Jes'rimon", level = 52, minLevel = 45, map = 1447, x = 22.6, y = 51.4, giver = "Jediga", pre = { 3517 }, turnin = { 1454, 55.5, 34.1 } }
Q[3542] = { name = "Delivery to Andron Gant", level = 52, minLevel = 45, map = 1447, x = 22.6, y = 51.4, giver = "Jediga", pre = { 3517 }, turnin = { 1458, 54.8, 76.3 } }
Q[3561] = { name = "Delivery to Archmage Xylem", level = 52, minLevel = 45, map = 1447, x = 22.6, y = 51.4, giver = "Jediga", pre = { 3517 }, turnin = { 1447, 29.2, 40.2 } }
Q[3562] = { name = "Magatha's Payment to Jediga", level = 52, minLevel = 45, map = 1456, x = 69.8, y = 30.9, giver = "Magatha Grimtotem", pre = { 3518 }, turnin = { 1447, 22.6, 51.4 } }
Q[3563] = { name = "Jes'rimon's Payment to Jediga", level = 52, minLevel = 45, map = 1454, x = 55.5, y = 34.1, giver = "Jes'rimon", pre = { 3541 }, turnin = { 1447, 22.6, 51.4 } }
Q[3564] = { name = "Andron's Payment to Jediga", level = 52, minLevel = 45, map = 1458, x = 54.8, y = 76.3, giver = "Andron Gant", pre = { 3542 }, turnin = { 1447, 22.6, 51.4 } }
Q[3565] = { name = "Xylem's Payment to Jediga", level = 52, minLevel = 45, map = 1447, x = 29.2, y = 40.2, giver = "Archmage Xylem", pre = { 3561 }, turnin = { 1447, 22.6, 51.4 } }
Q[3568] = { name = "Seeping Corruption", level = 52, minLevel = 45, map = 1458, x = 48.7, y = 71.4, giver = "Chemist Cuely", turnin = { 1458, 48.7, 71.4 } }
Q[3569] = { name = "Seeping Corruption", level = 52, minLevel = 45, map = 1458, x = 48.7, y = 71.4, giver = "Chemist Cuely", pre = { 3568 }, turnin = { 1458, 49.0, 70.8 } }
Q[3570] = { name = "Seeping Corruption", level = 52, minLevel = 45, map = 1458, x = 48.7, y = 71.4, giver = "Chemist Cuely", pre = { 3569 }, turnin = { 1458, 48.7, 71.4 } }
Q[3601] = { name = "Kim'jael Indeed!", level = 53, minLevel = 47, map = 1447, x = 53.5, y = 21.8, giver = "Kim'jael", turnin = { 1447, 53.5, 21.8 } }
Q[3721] = { name = "An OOX of Your Own", level = 50, minLevel = 45, map = 1434, x = 28.4, y = 76.3, giver = "Oglethorpe Obnoticus", pre = { 648, 836, 2767 }, turnin = { 1434, 28.4, 76.3 } }
Q[3741] = { name = "Hilary's Necklace", level = 15, minLevel = 12, map = 1433, x = 24.2, y = 53.6, giver = "Shawn", turnin = { 1433, 24.1, 53.6 } }
Q[3761] = { name = "Un'Goro Soil", level = 50, minLevel = 47, map = 1456, x = 78.6, y = 28.6, giver = "Arch Druid Hamuul Runetotem", turnin = { 1456, 77.5, 22.0 } }
Q[3762] = { name = "Assisting Arch Druid Runetotem", level = 50, minLevel = 47, map = 1456, x = 45.8, y = 64.7, giver = "Innkeeper Pala", turnin = { 1456, 78.6, 28.6 } }
Q[3782] = { name = "Morrowgrain Research", level = 50, minLevel = 47, map = 1456, x = 78.6, y = 28.6, giver = "Arch Druid Hamuul Runetotem", pre = { 3761 }, turnin = { 1456, 71.1, 34.2 } }
Q[3783] = { name = "Are We There, Yeti?", level = 56, minLevel = 52, map = 1452, x = 60.9, y = 37.6, giver = "Umi Rumplesnicker", turnin = { 1452, 60.9, 37.6 } }
Q[3784] = { name = "Assisting Arch Druid Runetotem", level = 50, minLevel = 47, map = 1458, x = 67.7, y = 37.9, giver = "Innkeeper Norman", turnin = { 1456, 78.6, 28.6 } }
Q[3786] = { name = "Morrowgrain Research", level = 50, minLevel = 47, map = 1456, x = 71.1, y = 34.2, giver = "Bashana Runetotem", pre = { 3782 }, turnin = { 1456, 71.1, 34.2 } }
Q[3801] = { name = "Dark Iron Legacy", level = 52, minLevel = 48, map = 1428, x = 29.0, y = 28.9, giver = "Franclorn Forgewright", dungeon = "Blackrock Depths", turnin = { 1428, 29.0, 28.9 } }
Q[3802] = { name = "Dark Iron Legacy", level = 52, minLevel = 48, map = 1428, x = 29.0, y = 28.9, giver = "Franclorn Forgewright", pre = { 3801 }, dungeon = "Blackrock Depths" }
Q[3821] = { name = "Dreadmaul Rock", level = 52, minLevel = 48, map = 1418, x = 3.4, y = 48.1, giver = "Thal'trak Proudtusk", turnin = { 1428, 80.0, 45.4 } }
Q[3822] = { name = "Krom'Grul", level = 53, minLevel = 48, map = 1428, x = 80.0, y = 45.4, giver = "Sha'ni Proudtusk", pre = { 3821 }, turnin = { 1418, 3.4, 48.1 } }
Q[3844] = { name = "It's a Secret to Everybody", level = 52, minLevel = 47, map = 1449, x = 63.0, y = 68.6, giver = "A Wrecked Raft", turnin = { 1449, 63.1, 69.1 } }
Q[3845] = { name = "It's a Secret to Everybody", level = 52, minLevel = 47, map = 1449, x = 63.1, y = 69.1, giver = "A Small Pack", pre = { 3844 }, turnin = { 1449, 44.7, 8.1 } }
Q[3881] = { name = "Expedition Salvation", level = 53, minLevel = 48, map = 1449, x = 44.0, y = 7.1, giver = "Williden Marshal", turnin = { 1449, 44.0, 7.1 } }
Q[3882] = { name = "Roll the Bones", level = 51, minLevel = 49, map = 1449, x = 43.5, y = 7.4, giver = "Spark Nilminer", group = true, turnin = { 1449, 43.5, 7.4 } }
Q[3883] = { name = "Alien Ecology", level = 52, minLevel = 48, map = 1449, x = 43.9, y = 7.2, giver = "Hol'anyee Marshal", turnin = { 1449, 43.9, 7.2 } }
Q[3884] = { name = "Williden's Journal", level = 50, minLevel = 48, map = 1449, x = 67.0, y = 15.3, giver = "Drop: A Mangled Journal", turnin = { 1449, 44.0, 7.1 } }
Q[3901] = { name = "Rattling the Rattlecages", level = 3, minLevel = 1, map = 1420, x = 30.8, y = 66.2, giver = "Shadow Priest Sarvis", pre = { 364 }, turnin = { 1420, 30.8, 66.2 } }
Q[3902] = { name = "Scavenging Deathknell", level = 3, minLevel = 2, map = 1420, x = 31.6, y = 65.6, giver = "Deathguard Saltain", pre = { 376 }, turnin = { 1420, 31.6, 65.6 } }
Q[3906] = { name = "Disharmony of Flame", level = 52, minLevel = 48, map = 1418, x = 3.3, y = 48.3, giver = "Thunderheart", group = true, turnin = { 1418, 3.3, 48.3 } }
Q[3907] = { name = "Disharmony of Fire", level = 56, minLevel = 48, map = 1418, x = 3.3, y = 48.3, giver = "Thunderheart", pre = { 3906 }, dungeon = "Blackrock Depths", turnin = { 1418, 3.3, 48.3 } }
Q[3908] = { name = "It's a Secret to Everybody", level = 52, minLevel = 47, map = 1449, x = 44.7, y = 8.1, giver = "Linken", pre = { 3845 }, turnin = { 1452, 31.3, 45.2 } }
Q[3909] = { name = "The Videre Elixir", level = 52, minLevel = 47, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 3908 }, turnin = { 1452, 31.3, 45.2 } }
Q[3912] = { name = "Meet at the Grave", level = 52, minLevel = 47, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 3909 }, turnin = { 1446, 53.9, 23.3 } }
Q[3913] = { name = "A Grave Situation", level = 52, minLevel = 47, map = 1446, x = 53.9, y = 23.3, giver = "Gaeriyan", pre = { 3912 }, turnin = { 1446, 53.8, 29.1 } }
Q[3914] = { name = "Linken's Sword", level = 52, minLevel = 47, map = 1446, x = 53.8, y = 29.1, giver = "A Conspicuous Gravestone", pre = { 3913 }, turnin = { 1449, 44.7, 8.1 } }
Q[3921] = { name = "Wenikee Boltbucket", level = 14, minLevel = 10, map = 1413, x = 63.0, y = 37.2, giver = "Sputtervalve", pre = { 902 }, turnin = { 1413, 49.0, 11.2 } }
Q[3922] = { name = "Nugget Slugs", level = 15, minLevel = 10, map = 1413, x = 49.0, y = 11.2, giver = "Wenikee Boltbucket", pre = { 3921 }, turnin = { 1413, 49.0, 11.2 } }
Q[3923] = { name = "Rilli Greasygob", level = 18, minLevel = 10, map = 1413, x = 49.0, y = 11.2, giver = "Wenikee Boltbucket", pre = { 3922 }, turnin = { 1454, 76.5, 24.4 } }
Q[3924] = { name = "Samophlange Manual", level = 19, minLevel = 10, map = 1454, x = 76.5, y = 24.4, giver = "Rilli Greasygob", pre = { 3923 }, turnin = { 1454, 76.5, 24.4 } }
Q[3941] = { name = "A Gnome's Assistance", level = 52, minLevel = 47, map = 1449, x = 44.7, y = 8.1, giver = "Linken", pre = { 3914 }, turnin = { 1449, 41.9, 2.7 } }
Q[3942] = { name = "Linken's Memory", level = 54, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 3941 }, turnin = { 1448, 51.4, 81.5 } }
Q[3961] = { name = "Linken's Adventure", level = 54, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 4005 }, turnin = { 1449, 44.7, 8.1 } }
Q[3962] = { name = "It's Dangerous to Go Alone", level = 56, minLevel = 47, map = 1449, x = 44.7, y = 8.1, giver = "Linken", pre = { 3961 }, group = true, turnin = { 1449, 44.7, 8.1 } }
Q[3981] = { name = "Commander Gor'shak", level = 52, minLevel = 48, map = 1418, x = 6.0, y = 47.7, giver = "Galamav the Marksman", pre = { 3906 }, dungeon = "Blackrock Depths" }
Q[4002] = { name = "The Eastern Kingdom", level = 54, minLevel = 48, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", pre = { 4001 }, dungeon = "Blackrock Depths", turnin = { 1454, 31.7, 37.8 } }
Q[4003] = { name = "The Royal Rescue", level = 59, minLevel = 48, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", pre = { 4002 }, dungeon = "Blackrock Depths" }
Q[4005] = { name = "Aquementas", level = 54, minLevel = 47, map = 1448, x = 51.4, y = 81.5, giver = "Eridan Bluewind", pre = { 4084 }, turnin = { 1449, 41.9, 2.7 } }
Q[4021] = { name = "Counterattack!", level = 20, minLevel = 11, map = 1413, x = 45.3, y = 28.4, giver = "Regthar Deathgate", pre = { 852 }, turnin = { 1413, 45.3, 28.4 } }
Q[4022] = { name = "A Taste of Flame", level = 54, minLevel = 52, map = 1428, x = 95.1, y = 31.6, giver = "Cyrus Therepentous", pre = { 3481 }, group = true, turnin = { 1428, 95.1, 31.6 } }
Q[4023] = { name = "A Taste of Flame", level = 54, minLevel = 52, map = 1428, x = 95.1, y = 31.6, giver = "Cyrus Therepentous", group = true, turnin = { 1428, 95.1, 31.6 } }
Q[4024] = { name = "A Taste of Flame", level = 58, minLevel = 52, map = 1428, x = 95.1, y = 31.6, giver = "Cyrus Therepentous", dungeon = "Blackrock Depths", turnin = { 1428, 95.1, 31.6 } }
Q[4061] = { name = "The Rise of the Machines", level = 54, minLevel = 52, map = 1418, x = 3.0, y = 47.8, giver = "Hierophant Theodora Mulvadania", turnin = { 1418, 3.0, 47.8 } }
Q[4062] = { name = "The Rise of the Machines", level = 54, minLevel = 52, map = 1418, x = 3.0, y = 47.8, giver = "Hierophant Theodora Mulvadania", pre = { 4061 }, turnin = { 1418, 25.9, 44.9 } }
Q[4063] = { name = "The Rise of the Machines", level = 58, minLevel = 52, map = 1418, x = 25.9, y = 44.9, giver = "Lotwil Veriatus", pre = { 4062 }, dungeon = "Blackrock Depths", turnin = { 1418, 25.9, 44.9 } }
Q[4081] = { name = "KILL ON SIGHT: Dark Iron Dwarves", level = 52, minLevel = 48, map = 1418, x = 3.7, y = 47.4, giver = "WANTED", dungeon = "Blackrock Depths", turnin = { 1418, 5.8, 47.5 } }
Q[4082] = { name = "KILL ON SIGHT: High Ranking Dark Iron Officials", level = 54, minLevel = 50, map = 1418, x = 3.9, y = 46.7, giver = "KILL ON SIGHT", pre = { 4081 }, dungeon = "Blackrock Depths", turnin = { 1418, 5.8, 47.5 } }
Q[4084] = { name = "Silver Heart", level = 54, minLevel = 47, map = 1448, x = 51.4, y = 81.5, giver = "Eridan Bluewind", pre = { 3942 }, turnin = { 1448, 51.4, 81.5 } }
Q[4102] = { name = "Cleansing Felwood", level = 55, minLevel = 48, map = 1448, x = 46.8, y = 83.1, giver = "Maybess Riverbreeze", group = true, turnin = { 1448, 46.8, 83.1 } }
Q[4120] = { name = "The Strength of Corruption", level = 52, minLevel = 47, map = 1444, x = 76.2, y = 43.8, giver = "Talo Thornhoof", turnin = { 1444, 76.2, 43.8 } }
Q[4121] = { name = "Precarious Predicament", level = 58, minLevel = 52, map = 1428, x = 40.2, y = 34.2, giver = "Grark Lorkrub", pre = { 4122 }, dungeon = "Blackrock Depths", turnin = { 1418, 5.9, 47.6 } }
Q[4122] = { name = "Grark Lorkrub", level = 58, minLevel = 52, map = 1418, x = 5.9, y = 47.6, giver = "Lexlort", pre = { 4082 }, dungeon = "Blackrock Depths", turnin = { 1428, 40.2, 34.2 } }
Q[4123] = { name = "The Heart of the Mountain", level = 55, minLevel = 50, map = 1428, x = 65.2, y = 23.9, giver = "Maxwort Uberglint", dungeon = "Blackrock Depths", turnin = { 1428, 65.2, 23.9 } }
Q[4132] = { name = "Operation: Death to Angerforge", level = 58, minLevel = 52, map = 1418, x = 5.8, y = 47.5, giver = "Warlord Goretooth", pre = { 4121 }, dungeon = "Blackrock Depths", turnin = { 1418, 5.8, 47.5 } }
Q[4133] = { name = "Vivian Lagrave", level = 55, minLevel = 50, map = 1458, x = 50.1, y = 68.0, giver = "Apothecary Zinge", dungeon = "Blackrock Depths", turnin = { 1418, 2.9, 47.8 } }
Q[4134] = { name = "Lost Thunderbrew Recipe", level = 55, minLevel = 50, map = 1418, x = 2.9, y = 47.8, giver = "Shadowmage Vivian Lagrave", dungeon = "Blackrock Depths", turnin = { 1418, 2.9, 47.8 } }
Q[4136] = { name = "Ribbly Screwspigot", level = 53, minLevel = 48, map = 1428, x = 66.1, y = 21.9, giver = "Yuka Screwspigot", dungeon = "Blackrock Depths", turnin = { 1428, 66.1, 21.9 } }
Q[4145] = { name = "Larion and Muigin", level = 52, minLevel = 47, map = 1449, x = 45.5, y = 8.7, giver = "Larion", turnin = { 1449, 45.5, 8.7 } }
Q[4146] = { name = "Zapper Fuel", level = 52, minLevel = 47, map = 1413, x = 62.5, y = 38.7, giver = "Liv Rizzlefix", pre = { 4147 }, group = true, turnin = { 1449, 45.5, 8.7 } }
Q[4147] = { name = "Marvon's Workshop", level = 52, minLevel = 47, map = 1449, x = 45.5, y = 8.7, giver = "Larion", pre = { 4145 }, turnin = { 1413, 62.5, 38.7 } }
Q[4148] = { name = "Bloodpetal Zapper", level = 53, minLevel = 47, map = 1449, x = 45.5, y = 8.7, giver = "Larion", pre = { 4146 }, group = true, turnin = { 1449, 45.5, 8.7 } }
Q[4243] = { name = "Chasing A-Me 01", level = 53, minLevel = 48, map = 1449, x = 46.4, y = 13.4, giver = "Karna Remtravel", turnin = { 1449, 67.7, 16.8 } }
Q[4244] = { name = "Chasing A-Me 01", level = 53, minLevel = 48, map = 1449, x = 67.7, y = 16.8, giver = "A-Me 01", pre = { 4243 }, group = true, turnin = { 1449, 67.7, 16.8 } }
Q[4245] = { name = "Chasing A-Me 01", level = 53, minLevel = 48, map = 1449, x = 67.7, y = 16.8, giver = "A-Me 01", pre = { 4244 }, turnin = { 1449, 46.4, 13.4 } }
Q[4284] = { name = "Crystals of Power", level = 53, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", turnin = { 1449, 41.9, 2.7 } }
Q[4285] = { name = "The Northern Pylon", level = 53, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 4284 }, turnin = { 1449, 41.9, 2.7 } }
Q[4287] = { name = "The Eastern Pylon", level = 53, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 4284 }, turnin = { 1449, 41.9, 2.7 } }
Q[4288] = { name = "The Western Pylon", level = 53, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 4284 }, turnin = { 1449, 41.9, 2.7 } }
Q[4289] = { name = "The Apes of Un'Goro", level = 55, minLevel = 47, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", turnin = { 1449, 71.6, 76.0 } }
Q[4290] = { name = "The Fare of Lar'korwi", level = 53, minLevel = 48, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", turnin = { 1449, 71.6, 76.0 } }
Q[4291] = { name = "The Scent of Lar'korwi", level = 53, minLevel = 48, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", pre = { 4290 }, turnin = { 1449, 71.6, 76.0 } }
Q[4292] = { name = "The Bait for Lar'korwi", level = 56, minLevel = 48, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", pre = { 4291 }, turnin = { 1449, 71.6, 76.0 } }
Q[4293] = { name = "A Sample of Slime...", level = 52, minLevel = 48, map = 1458, x = 47.5, y = 73.3, giver = "Chemist Fuely", turnin = { 1458, 47.5, 73.3 } }
Q[4294] = { name = "... and a Batch of Ooze", level = 56, minLevel = 48, map = 1458, x = 47.5, y = 73.3, giver = "Chemist Fuely", turnin = { 1458, 47.5, 73.3 } }
Q[4296] = { name = "Tablet of the Seven", level = 50, minLevel = 50, map = 1428, x = 65.2, y = 23.9, giver = "Maxwort Uberglint", turnin = { 1428, 65.2, 23.9 } }
Q[4300] = { name = "Bone-Bladed Weapons", level = 52, minLevel = 48, map = 1454, x = 55.5, y = 34.1, giver = "Jes'rimon", turnin = { 1454, 55.5, 34.1 } }
Q[4301] = { name = "The Mighty U'cha", level = 55, minLevel = 50, map = 1449, x = 71.6, y = 76.0, giver = "Torwa Pathfinder", pre = { 4289 }, turnin = { 1449, 71.6, 76.0 } }
Q[4321] = { name = "Making Sense of It", level = 53, minLevel = 47, map = 1449, x = 41.9, y = 2.7, giver = "J.D. Collie", pre = { 4285, 4287, 4288 }, turnin = { 1449, 41.9, 2.7 } }
Q[4324] = { name = "Yuka Screwspigot", level = 53, minLevel = 48, map = 1446, x = 67.0, y = 24.0, giver = "Yorba Screwspigot", dungeon = "Blackrock Depths", turnin = { 1428, 66.1, 21.9 } }
Q[4402] = { name = "Galgar's Cactus Apple Surprise", level = 3, minLevel = 1, map = 1411, x = 42.7, y = 67.2, giver = "Galgar", pre = { 788 }, turnin = { 1411, 42.7, 67.2 } }
Q[4449] = { name = "Caught!", level = 45, minLevel = 43, map = 1427, x = 65.6, y = 62.2, giver = "Wooden Outhouse", turnin = { 1427, 65.6, 62.2 } }
Q[4450] = { name = "Ledger from Tanaris", level = 46, minLevel = 43, map = 1427, x = 65.6, y = 62.2, giver = "Wooden Outhouse", pre = { 4449 }, turnin = { 1446, 51.5, 28.8 } }
Q[4451] = { name = "The Key to Freedom", level = 47, minLevel = 43, map = 1427, x = 42.6, y = 31.6, giver = "Drop: Grimesilt Outhouse Key", turnin = { 1427, 65.6, 62.2 } }
Q[4491] = { name = "A Little Help From My Friends", level = 55, minLevel = 50, map = 1449, x = 51.9, y = 49.9, giver = "Ringo", pre = { 4492 }, turnin = { 1449, 43.6, 8.5 } }
Q[4492] = { name = "Lost!", level = 55, minLevel = 50, map = 1449, x = 43.6, y = 8.5, giver = "Spraggle Frock", turnin = { 1449, 51.9, 49.9 } }
Q[4494] = { name = "March of the Silithid", level = 53, minLevel = 50, map = 1454, x = 56.3, y = 46.7, giver = "Zilzibin Drumlore", turnin = { 1446, 50.9, 27.0 } }
Q[4496] = { name = "Bungle in the Jungle", level = 53, minLevel = 50, map = 1446, x = 50.9, y = 27.0, giver = "Alchemist Pestlezugg", turnin = { 1446, 50.9, 27.0 } }
Q[4501] = { name = "Beware of Pterrordax", level = 55, minLevel = 49, map = 1449, x = 43.5, y = 8.4, giver = "Beware of Pterrordax", turnin = { 1449, 43.6, 8.5 } }
Q[4502] = { name = "Volcanic Activity", level = 55, minLevel = 49, map = 1413, x = 62.5, y = 38.7, giver = "Liv Rizzlefix", group = true, turnin = { 1413, 62.5, 38.7 } }
Q[4503] = { name = "Shizzle's Flyer", level = 51, minLevel = 49, map = 1449, x = 44.2, y = 11.6, giver = "Shizzle", turnin = { 1449, 44.2, 11.6 } }
Q[4504] = { name = "Super Sticky", level = 54, minLevel = 48, map = 1446, x = 51.6, y = 26.8, giver = "Tran'rek", turnin = { 1446, 51.6, 26.8 } }
Q[4505] = { name = "Well of Corruption", level = 54, minLevel = 49, map = 1448, x = 34.2, y = 52.3, giver = "Winna Hazzard", turnin = { 1448, 34.2, 52.3 } }
Q[4506] = { name = "Corrupted Sabers", level = 54, minLevel = 49, map = 1448, x = 34.2, y = 52.3, giver = "Winna Hazzard", pre = { 4505 }, turnin = { 1448, 34.2, 52.3 } }
Q[4507] = { name = "Pawn Captures Queen", level = 54, minLevel = 50, map = 1446, x = 50.9, y = 27.0, giver = "Alchemist Pestlezugg", pre = { 4496 }, turnin = { 1446, 50.9, 27.0 } }
Q[4509] = { name = "Calm Before the Storm", level = 54, minLevel = 50, map = 1446, x = 50.9, y = 27.0, giver = "Alchemist Pestlezugg", pre = { 4507 }, turnin = { 1454, 56.3, 46.7 } }
Q[4511] = { name = "Calm Before the Storm", level = 54, minLevel = 50, map = 1454, x = 56.3, y = 46.7, giver = "Zilzibin Drumlore", pre = { 4509 }, turnin = { 1454, 49.6, 69.1 } }
Q[4521] = { name = "Wild Guardians", level = 56, minLevel = 52, map = 1448, x = 34.7, y = 52.8, giver = "Trull Failbane", turnin = { 1448, 34.7, 52.8 } }
Q[4542] = { name = "Message to Freewind Post", level = 25, minLevel = 23, map = 1441, x = 32.2, y = 22.2, giver = "Brave Moonhorn", turnin = { 1441, 45.7, 50.7 } }
Q[4621] = { name = "Avast Ye, Admiral!", level = 60, minLevel = 55, map = 1434, x = 30.6, y = 90.6, giver = "Fleet Master Firallon", turnin = { 1434, 30.6, 90.6 } }
Q[4641] = { name = "Your Place In The World", level = 1, minLevel = 1, map = 1411, x = 43.3, y = 68.5, giver = "Kaltunk", turnin = { 1411, 42.1, 68.3 } }
Q[4642] = { name = "Melding of Influences", level = 55, minLevel = 48, map = 1458, x = 47.5, y = 73.3, giver = "Chemist Fuely", pre = { 4293, 4294 }, turnin = { 1458, 47.5, 73.3 } }
Q[4721] = { name = "Wild Guardians", level = 59, minLevel = 52, map = 1448, x = 34.7, y = 52.8, giver = "Trull Failbane", pre = { 4741 }, turnin = { 1448, 34.7, 52.8 } }
Q[4726] = { name = "Broodling Essence", level = 52, minLevel = 50, map = 1428, x = 65.2, y = 24, giver = "Tinkee Steamboil", turnin = { 1428, 65.2, 24 } }
Q[4741] = { name = "Wild Guardians", level = 58, minLevel = 52, map = 1448, x = 34.7, y = 52.8, giver = "Trull Failbane", pre = { 4521 }, turnin = { 1448, 34.7, 52.8 } }
Q[4767] = { name = "Wind Rider", level = 29, minLevel = 25, map = 1441, x = 44.9, y = 48.9, giver = "Elu", turnin = { 1441, 44.9, 48.9 } }
Q[4770] = { name = "Homeward Bound", level = 29, minLevel = 25, map = 1441, x = 17.9, y = 40.6, giver = "Pao'ka Swiftmountain", turnin = { 1441, 21.5, 32.4 } }
Q[4771] = { name = "Dawn's Gambit", level = 60, minLevel = 57, map = 1423, x = 71.7, y = 49.9, giver = "Betina Bigglezink", pre = { 5531 }, dungeon = "Scholomance", turnin = { 1423, 71.7, 49.9 } }
Q[4787] = { name = "The Ancient Egg", level = 50, minLevel = 40, map = 1446, x = 67.0, y = 22.4, giver = "Yeh'kinya", pre = { 3527 }, turnin = { 1446, 67.0, 22.4 } }
Q[4808] = { name = "Felnok Steelspring", level = 54, minLevel = 50, map = 1428, x = 65.2, y = 24, giver = "Tinkee Steamboil", pre = { 4726 }, turnin = { 1452, 61.6, 38.6 } }
Q[4809] = { name = "Chillwind Horns", level = 54, minLevel = 50, map = 1452, x = 61.6, y = 38.6, giver = "Felnok Steelspring", pre = { 4808 }, turnin = { 1452, 61.6, 38.6 } }
Q[4810] = { name = "Return to Tinkee", level = 54, minLevel = 50, map = 1452, x = 61.6, y = 38.6, giver = "Felnok Steelspring", pre = { 4809 }, turnin = { 1428, 65.2, 24 } }
Q[4821] = { name = "Alien Egg", level = 26, minLevel = 24, map = 1441, x = 44.6, y = 50.3, giver = "Hagar Lightninghoof", turnin = { 1441, 44.6, 50.3 } }
Q[4841] = { name = "Pacify the Centaur", level = 25, minLevel = 23, map = 1441, x = 45.7, y = 50.7, giver = "Cliffwatcher Longhorn", turnin = { 1441, 45.7, 50.7 } }
Q[4842] = { name = "Strange Sources", level = 56, minLevel = 51, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 980 }, turnin = { 1452, 31.3, 45.2 } }
Q[4865] = { name = "Serpent Wild", level = 26, minLevel = 24, map = 1441, x = 44.6, y = 50.3, giver = "Hagar Lightninghoof", pre = { 4821 }, turnin = { 1441, 21.5, 32.4 } }
Q[4881] = { name = "Assassination Plot", level = 28, minLevel = 23, map = 1441, x = 39.4, y = 33.1, giver = "Drop: Assassination Note", turnin = { 1441, 21.2, 32.1 } }
Q[4882] = { name = "Guarding Secrets", level = 59, minLevel = 52, map = 1452, x = 64.8, y = 20.8, giver = "Drop: Blue-feathered Necklace", pre = { 4741 }, turnin = { 1448, 34.7, 52.8 } }
Q[4883] = { name = "Guarding Secrets", level = 59, minLevel = 52, map = 1448, x = 34.7, y = 52.8, giver = "Trull Failbane", pre = { 4882 }, turnin = { 1456, 75.7, 31.6 } }
Q[4904] = { name = "Free at Last", level = 29, minLevel = 25, map = 1441, x = 38.0, y = 26.4, giver = "Lakota Windsong", turnin = { 1441, 46.0, 51.6 } }
Q[4921] = { name = "Lost in Battle", level = 20, minLevel = 14, map = 1413, x = 52.0, y = 31.6, giver = "Mankrik", turnin = { 1413, 52.0, 31.6 } }
Q[4941] = { name = "Eitrigg's Wisdom", level = 60, minLevel = 55, map = 1418, x = 5.8, y = 47.5, giver = "Warlord Goretooth", pre = { 4903 }, turnin = { 1454, 31.7, 37.8 } }
Q[4966] = { name = "Protect Kanati Greycloud", level = 28, minLevel = 23, map = 1441, x = 21.2, y = 32.1, giver = "Kanati Greycloud", pre = { 4881 }, turnin = { 1441, 21.2, 32.1 } }
Q[4971] = { name = "A Matter of Time", level = 56, minLevel = 53, map = 1422, x = 39.5, y = 66.8, giver = "Chromie", turnin = { 1422, 39.5, 66.8 } }
Q[4972] = { name = "Counting Out Time", level = 56, minLevel = 53, map = 1422, x = 39.5, y = 66.8, giver = "Chromie", pre = { 4971 }, turnin = { 1422, 39.5, 66.8 } }
Q[4984] = { name = "The Wildlife Suffers Too", level = 54, minLevel = 51, map = 1422, x = 53.7, y = 64.7, giver = "Mulgris Deepriver", turnin = { 1422, 53.7, 64.7 } }
Q[4985] = { name = "The Wildlife Suffers Too", level = 56, minLevel = 51, map = 1422, x = 53.7, y = 64.7, giver = "Mulgris Deepriver", pre = { 4984 }, turnin = { 1422, 53.7, 64.7 } }
Q[4987] = { name = "Glyphed Oaken Branch", level = 56, minLevel = 51, map = 1422, x = 53.7, y = 64.7, giver = "Mulgris Deepriver", pre = { 4985 }, turnin = { 1456, 75.7, 31.6 } }
Q[5021] = { name = "Better Late Than Never", level = 52, minLevel = 50, map = 1422, x = 38.4, y = 54.0, giver = "Janice Felstone", turnin = { 1422, 38.7, 55.2 } }
Q[5023] = { name = "Better Late Than Never", level = 52, minLevel = 50, map = 1422, x = 38.7, y = 55.2, giver = "Janice's Parcel", pre = { 5021 }, turnin = { 1458, 69.8, 43.2 } }
Q[5041] = { name = "Supplies for the Crossroads", level = 14, minLevel = 9, map = 1413, x = 51.5, y = 30.9, giver = "Thork", turnin = { 1413, 51.5, 30.9 } }
Q[5049] = { name = "The Jeremiah Blues", level = 52, minLevel = 50, map = 1458, x = 69.8, y = 43.2, giver = "Royal Overseer Bauhaus", pre = { 5023 }, turnin = { 1458, 67.6, 44.2 } }
Q[5050] = { name = "Good Luck Charm", level = 52, minLevel = 50, map = 1458, x = 67.6, y = 44.2, giver = "Jeremiah Payson", turnin = { 1422, 38.4, 54.0 } }
Q[5051] = { name = "Two Halves Become One", level = 54, minLevel = 50, map = 1422, x = 38.4, y = 54.0, giver = "Janice Felstone", pre = { 5050 }, turnin = { 1422, 38.4, 54.0 } }
Q[5052] = { name = "Blood Shards of Agamaggan", level = 21, minLevel = 14, map = 1413, x = 44.5, y = 59.3, giver = "Mangletooth", pre = { 878 }, turnin = { 1413, 44.5, 59.3 } }
Q[5054] = { name = "Ursius of the Shardtooth", level = 56, minLevel = 53, map = 1452, x = 61.9, y = 38.4, giver = "Storm Shadowhoof", group = true, turnin = { 1452, 61.9, 38.4 } }
Q[5055] = { name = "Brumeran of the Chillwind", level = 58, minLevel = 53, map = 1452, x = 61.9, y = 38.4, giver = "Storm Shadowhoof", pre = { 5054 }, group = true, turnin = { 1452, 61.9, 38.4 } }
Q[5056] = { name = "Shy-Rotam", level = 60, minLevel = 53, map = 1452, x = 61.9, y = 38.4, giver = "Storm Shadowhoof", pre = { 5055 }, group = true, turnin = { 1452, 61.9, 38.4 } }
Q[5057] = { name = "Past Endeavors", level = 60, minLevel = 53, map = 1452, x = 61.9, y = 38.4, giver = "Storm Shadowhoof", pre = { 5056 }, turnin = { 1452, 61.9, 38.4 } }
Q[5058] = { name = "Mrs. Dalson's Diary", level = 55, minLevel = 52, map = 1422, x = 47.8, y = 50.7, giver = "Mrs. Dalson's Diary", turnin = { 1422, 47.8, 50.7 } }
Q[5060] = { name = "Locked Away", level = 55, minLevel = 52, map = 1422, x = 47.4, y = 49.6, giver = "Locked Cabinet", turnin = { 1422, 47.4, 49.6 } }
Q[5062] = { name = "Sacred Fire", level = 27, minLevel = 24, map = 1441, x = 21.5, y = 32.4, giver = "Motega Firemane", pre = { 4865 }, turnin = { 1456, 69.8, 30.9 } }
Q[5064] = { name = "Grimtotem Spying", level = 28, minLevel = 24, map = 1441, x = 45.7, y = 50.7, giver = "Cliffwatcher Longhorn", pre = { 4841 }, turnin = { 1441, 45.7, 50.7 } }
Q[5082] = { name = "Threat of the Winterfall", level = 56, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", turnin = { 1452, 31.3, 45.2 } }
Q[5083] = { name = "Winterfall Firewater", level = 56, minLevel = 52, map = 1452, x = 40.8, y = 43.8, giver = "Drop: Empty Firewater Flask", turnin = { 1452, 31.3, 45.2 } }
Q[5084] = { name = "Falling to Corruption", level = 56, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 5083 }, turnin = { 1448, 60.2, 5.8 } }
Q[5085] = { name = "Mystery Goo", level = 56, minLevel = 52, map = 1448, x = 60.2, y = 5.8, giver = "Deadwood Cauldron", pre = { 5084 }, turnin = { 1452, 31.3, 45.2 } }
Q[5086] = { name = "Toxic Horrors", level = 56, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 5085 }, turnin = { 1452, 31.3, 45.2 } }
Q[5087] = { name = "Winterfall Runners", level = 57, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 5086 }, turnin = { 1452, 31.3, 45.2 } }
Q[5088] = { name = "Arikara", level = 28, minLevel = 24, map = 1456, x = 69.8, y = 30.9, giver = "Magatha Grimtotem", pre = { 5062 }, group = true, turnin = { 1441, 21.5, 32.4 } }
Q[5093] = { name = "A Call to Arms: The Plaguelands!", level = 50, minLevel = 50, map = 1454, x = 37.7, y = 75.2, giver = "Warcaller Gorlach", turnin = { 1420, 83.1, 68.9 } }
Q[5094] = { name = "A Call to Arms: The Plaguelands!", level = 50, minLevel = 50, map = 1458, x = 63.9, y = 44.1, giver = "Harbinger Balthazad", turnin = { 1420, 83.1, 68.9 } }
Q[5095] = { name = "A Call to Arms: The Plaguelands!", level = 50, minLevel = 50, map = 1456, x = 44.3, y = 58.8, giver = "Bluff Runner Windstrider", turnin = { 1420, 83.1, 68.9 } }
Q[5096] = { name = "Scarlet Diversions", level = 53, minLevel = 50, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", turnin = { 1420, 83.1, 68.9 } }
Q[5098] = { name = "All Along the Watchtowers", level = 56, minLevel = 50, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", pre = { 5096 }, turnin = { 1420, 83.1, 68.9 } }
Q[5121] = { name = "High Chief Winterfall", level = 59, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 5087 }, group = true, turnin = { 1452, 31.3, 45.2 } }
Q[5128] = { name = "Words of the High Chief", level = 59, minLevel = 52, map = 1452, x = 31.3, y = 45.2, giver = "Donova Snowden", pre = { 5123 }, turnin = { 1448, 51.1, 81.8 } }
Q[5142] = { name = "Little Pamela", level = 55, minLevel = 50, map = 1422, x = 49.2, y = 78.6, giver = "Marlene Redpath", turnin = { 1423, 31.1, 78.0 } }
Q[5147] = { name = "Wanted - Arnak Grimtotem", level = 29, minLevel = 25, map = 1441, x = 46, y = 50.9, giver = "Wanted Poster - Arnak Grimtotem", turnin = { 1441, 45.7, 50.7 } }
Q[5149] = { name = "Pamela's Doll", level = 55, minLevel = 50, map = 1423, x = 31.1, y = 78.0, giver = "Pamela Redpath", turnin = { 1423, 31.1, 78.0 } }
Q[5151] = { name = "Hypercapacitor Gizmo", level = 30, minLevel = 24, map = 1441, x = 21.4, y = 32.5, giver = "Wizlo Bearingshiner", group = true, turnin = { 1441, 21.4, 32.5 } }
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
Q[5228] = { name = "The Scourge Cauldrons", level = 53, minLevel = 50, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", pre = { 5096 }, turnin = { 1420, 83.0, 71.9 } }
Q[5229] = { name = "Target: Felstone Field", level = 53, minLevel = 50, map = 1420, x = 83.0, y = 71.9, giver = "Shadow Priestess Vandis", pre = { 5228 }, turnin = { 1422, 37.2, 56.8 } }
Q[5230] = { name = "Return to the Bulwark", level = 53, minLevel = 50, map = 1422, x = 37.2, y = 56.8, giver = "Scourge Cauldron", pre = { 5229 }, turnin = { 1420, 83.0, 71.9 } }
Q[5231] = { name = "Target: Dalson's Tears", level = 55, minLevel = 50, map = 1420, x = 83.0, y = 71.9, giver = "Shadow Priestess Vandis", pre = { 5230 }, turnin = { 1422, 46.2, 51.9 } }
Q[5232] = { name = "Return to the Bulwark", level = 55, minLevel = 50, map = 1422, x = 46.2, y = 51.9, giver = "Scourge Cauldron", pre = { 5231 }, turnin = { 1420, 83.0, 71.9 } }
Q[5233] = { name = "Target: Writhing Haunt", level = 55, minLevel = 50, map = 1420, x = 83.0, y = 71.9, giver = "Shadow Priestess Vandis", pre = { 5232 }, turnin = { 1422, 53.0, 65.6 } }
Q[5234] = { name = "Return to the Bulwark", level = 55, minLevel = 50, map = 1422, x = 53.0, y = 65.6, giver = "Scourge Cauldron", pre = { 5233 }, turnin = { 1420, 83.0, 71.9 } }
Q[5235] = { name = "Target: Gahrron's Withering", level = 58, minLevel = 50, map = 1420, x = 83.0, y = 71.9, giver = "Shadow Priestess Vandis", pre = { 5234 }, turnin = { 1422, 62.5, 58.5 } }
Q[5236] = { name = "Return to the Bulwark", level = 58, minLevel = 50, map = 1422, x = 62.5, y = 58.5, giver = "Scourge Cauldron", pre = { 5235 }, turnin = { 1420, 83.0, 71.9 } }
Q[5238] = { name = "Mission Accomplished!", level = 58, minLevel = 50, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", pre = { 5236 }, turnin = { 1420, 83.1, 68.9 } }
Q[5241] = { name = "Uncle Carlin", level = 56, minLevel = 50, map = 1423, x = 31.1, y = 78.0, giver = "Pamela Redpath", pre = { 5149 }, turnin = { 1423, 71.7, 50.0 } }
Q[5242] = { name = "A Final Blow", level = 58, minLevel = 48, map = 1448, x = 51.2, y = 82.1, giver = "Greta Mosshoof", pre = { 5165 }, turnin = { 1448, 51.2, 82.1 } }
Q[5243] = { name = "Houses of the Holy", level = 60, minLevel = 55, map = 1423, x = 71.9, y = 48.3, giver = "Leonid Barthalomew the Revered", dungeon = "Stratholme", turnin = { 1423, 71.9, 48.3 } }
Q[5251] = { name = "The Archivist", level = 60, minLevel = 55, map = 1423, x = 71.6, y = 50.1, giver = "Duke Nicholas Zverenhoff", dungeon = "Stratholme", turnin = { 1423, 71.6, 50.1 } }
Q[5263] = { name = "Above and Beyond", level = 60, minLevel = 55, map = 1423, x = 71.6, y = 50.1, giver = "Duke Nicholas Zverenhoff", pre = { 5262 }, dungeon = "Stratholme", turnin = { 1423, 71.6, 50.1 } }
Q[5264] = { name = "Lord Maxwell Tyrosus", level = 60, minLevel = 55, map = 1423, x = 71.6, y = 50.1, giver = "Duke Nicholas Zverenhoff", pre = { 5263 }, turnin = { 1423, 71.9, 48.4 } }
Q[5265] = { name = "The Argent Hold", level = 60, minLevel = 55, map = 1423, x = 71.9, y = 48.4, giver = "Lord Maxwell Tyrosus", pre = { 5264 }, turnin = { 1423, 72.0, 48.4 } }
Q[5281] = { name = "The Restless Souls", level = 60, minLevel = 55, map = 1423, x = 69.9, y = 53.7, giver = "Caretaker Alen", turnin = { 1423, 11.4, 26.6 } }
Q[5282] = { name = "The Restless Souls", level = 60, minLevel = 55, map = 1423, x = 11.4, y = 26.6, giver = "Egan", pre = { 5281 }, dungeon = "Stratholme", turnin = { 1423, 11.4, 26.6 } }
Q[5341] = { name = "Barov Family Fortune", level = 60, minLevel = 52, map = 1420, x = 83.1, y = 71.6, giver = "Alexi Barov", dungeon = "Scholomance", turnin = { 1420, 83.1, 71.6 } }
Q[5342] = { name = "The Last Barov", level = 60, minLevel = 52, map = 1420, x = 83.1, y = 71.6, giver = "Alexi Barov", pre = { 5341 }, group = true, turnin = { 1420, 83.1, 71.6 } }
Q[5361] = { name = "Family Tree", level = 35, minLevel = 32, map = 1441, x = 45.7, y = 50.7, giver = "Cliffwatcher Longhorn", turnin = { 1443, 55.4, 55.8 } }
Q[5381] = { name = "Hand of Iruxos", level = 38, minLevel = 32, map = 1443, x = 25.8, y = 68.2, giver = "Taiga Wisemane", turnin = { 1443, 25.8, 68.2 } }
Q[5382] = { name = "Doctor Theolen Krastinov, the Butcher", level = 60, minLevel = 55, map = 1422, x = 70.2, y = 73.7, giver = "Eva Sarkhoff", dungeon = "Scholomance", turnin = { 1422, 70.2, 73.7 } }
Q[5384] = { name = "Kirtonos the Herald", level = 60, minLevel = 55, map = 1422, x = 70.2, y = 73.7, giver = "Eva Sarkhoff", pre = { 5515 }, dungeon = "Scholomance", turnin = { 1422, 70.2, 73.7 } }
Q[5385] = { name = "The Remains of Trey Lightforge", level = 57, minLevel = 49, map = 1448, x = 38.5, y = 50.4, giver = "Remains of Trey Lightforge", pre = { 5204 }, turnin = { 1448, 51.4, 82.0 } }
Q[5386] = { name = "Catch of the Day", level = 37, minLevel = 32, map = 1443, x = 55.4, y = 55.8, giver = "Nataka Longhorn", turnin = { 1443, 55.4, 55.8 } }
Q[5401] = { name = "Argent Dawn Commission", level = 55, minLevel = 50, map = 1422, x = 43.0, y = 83.5, giver = "Argent Officer Pureheart", turnin = { 1422, 43.0, 83.5 } }
Q[5405] = { name = "Argent Dawn Commission", level = 55, minLevel = 50, map = 1420, x = 83.2, y = 68.5, giver = "Argent Officer Garush", turnin = { 1420, 83.2, 68.5 } }
Q[5441] = { name = "Lazy Peons", level = 4, minLevel = 3, map = 1411, x = 44.6, y = 68.7, giver = "Foreman Thazz'ril", turnin = { 1411, 44.6, 68.7 } }
Q[5461] = { name = "The Human, Ras Frostwhisper", level = 60, minLevel = 57, map = 1422, x = 70.6, y = 74.1, giver = "Magistrate Marduke", pre = { 5384 }, turnin = { 1422, 70.6, 74.1 } }
Q[5462] = { name = "The Dying, Ras Frostwhisper", level = 60, minLevel = 57, map = 1422, x = 70.6, y = 74.1, giver = "Magistrate Marduke", pre = { 5461 }, turnin = { 1423, 71.9, 48.3 } }
Q[5463] = { name = "Menethil's Gift", level = 60, minLevel = 57, map = 1423, x = 71.9, y = 48.3, giver = "Leonid Barthalomew the Revered", pre = { 5462 }, dungeon = "Stratholme" }
Q[5465] = { name = "Soulbound Keepsake", level = 60, minLevel = 57, map = 1423, x = 71.9, y = 48.3, giver = "Leonid Barthalomew the Revered", pre = { 5464 }, turnin = { 1422, 70.6, 74.1 } }
Q[5466] = { name = "The Lich, Ras Frostwhisper", level = 60, minLevel = 57, map = 1422, x = 70.6, y = 74.1, giver = "Magistrate Marduke", pre = { 5465 }, dungeon = "Scholomance", turnin = { 1422, 70.6, 74.1 } }
Q[5481] = { name = "Gordo's Task", level = 5, minLevel = 5, map = 1420, x = 43.1, y = 54.7, giver = "Gordo", turnin = { 1420, 57.4, 48.9 } }
Q[5482] = { name = "Doom Weed", level = 6, minLevel = 5, map = 1420, x = 57.4, y = 48.9, giver = "Junior Apothecary Holland", pre = { 5481 }, turnin = { 1420, 57.4, 48.9 } }
Q[5501] = { name = "Bone Collector", level = 39, minLevel = 33, map = 1443, x = 62.3, y = 39.0, giver = "Bibbly F'utzbuckle", turnin = { 1443, 62.3, 39.0 } }
Q[5503] = { name = "Argent Dawn Commission", level = 55, minLevel = 50, map = 1423, x = 71.6, y = 50.1, giver = "Duke Nicholas Zverenhoff", turnin = { 1423, 71.6, 50.1 } }
Q[5504] = { name = "Mantles of the Dawn", level = 60, minLevel = 55, map = 1420, x = 83.3, y = 68.1, giver = "Argent Quartermaster Hasana", turnin = { 1420, 83.3, 68.1 } }
Q[5511] = { name = "The Key to Scholomance", level = 60, minLevel = 55, map = 1420, x = 83.1, y = 68.9, giver = "High Executor Derrington", pre = { 5804 }, turnin = { 1420, 83.1, 68.9 } }
Q[5513] = { name = "Mantles of the Dawn", level = 60, minLevel = 55, map = 1423, x = 71.8, y = 50.2, giver = "Quartermaster Miranda Breechlock", turnin = { 1423, 71.8, 50.2 } }
Q[5514] = { name = "Mold Rhymes With...", level = 57, minLevel = 55, map = 1420, x = 83.3, y = 69.2, giver = "Apothecary Dithers", pre = { 964 }, turnin = { 1446, 51.5, 28.8 } }
Q[5515] = { name = "Krastinov's Bag of Horrors", level = 60, minLevel = 55, map = 1422, x = 70.2, y = 73.7, giver = "Eva Sarkhoff", pre = { 5382 }, dungeon = "Scholomance", turnin = { 1422, 70.2, 73.7 } }
Q[5517] = { name = "Chromatic Mantle of the Dawn", level = 60, minLevel = 55, map = 1423, x = 71.8, y = 50.2, giver = "Quartermaster Miranda Breechlock", turnin = { 1423, 71.8, 50.2 } }
Q[5522] = { name = "Leonid Barthalomew", level = 60, minLevel = 57, map = 1428, x = 65.2, y = 24, giver = "Tinkee Steamboil", pre = { 4735 }, turnin = { 1423, 71.9, 48.3 } }
Q[5524] = { name = "Chromatic Mantle of the Dawn", level = 60, minLevel = 55, map = 1420, x = 83.3, y = 68.1, giver = "Argent Quartermaster Hasana", turnin = { 1420, 83.3, 68.1 } }
Q[5526] = { name = "Shards of the Felvine", level = 60, minLevel = 56, map = 1450, x = 51.7, y = 45.1, giver = "Rabine Saturna", pre = { 5527 }, turnin = { 1450, 51.7, 45.1 } }
Q[5527] = { name = "A Reliquary of Purity", level = 60, minLevel = 56, map = 1450, x = 51.7, y = 45.1, giver = "Rabine Saturna", turnin = { 1450, 51.7, 45.1 } }
Q[5529] = { name = "Plagued Hatchlings", level = 58, minLevel = 55, map = 1423, x = 71.7, y = 49.9, giver = "Betina Bigglezink", dungeon = "Scholomance", turnin = { 1423, 71.7, 49.9 } }
Q[5531] = { name = "Betina Bigglezink", level = 60, minLevel = 57, map = 1423, x = 71.9, y = 48.3, giver = "Leonid Barthalomew the Revered", pre = { 5522 }, dungeon = "Scholomance", turnin = { 1423, 71.7, 49.9 } }
Q[5534] = { name = "Kim'jael's \"Missing\" Equipment", level = 53, minLevel = 47, map = 1447, x = 53.5, y = 21.8, giver = "Kim'jael", pre = { 3601 }, turnin = { 1447, 53.5, 21.8 } }
Q[5535] = { name = "Spiritual Unrest", level = 47, minLevel = 45, map = 1447, x = 11.4, y = 78.2, giver = "Loh'atu", turnin = { 1447, 11.4, 78.2 } }
Q[5536] = { name = "A Land Filled with Hatred", level = 47, minLevel = 45, map = 1447, x = 11.4, y = 78.2, giver = "Loh'atu", turnin = { 1447, 11.4, 78.2 } }
Q[5542] = { name = "Demon Dogs", level = 56, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", turnin = { 1423, 5.2, 35.6 } }
Q[5543] = { name = "Blood Tinged Skies", level = 56, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", turnin = { 1423, 5.2, 35.6 } }
Q[5544] = { name = "Carrion Grubbage", level = 56, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", turnin = { 1423, 5.2, 35.6 } }
Q[5561] = { name = "Kodo Roundup", level = 34, minLevel = 30, map = 1443, x = 60.9, y = 61.9, giver = "Smeed Scrabblescrew", turnin = { 1443, 60.9, 61.9 } }
Q[5581] = { name = "Portals of the Legion", level = 38, minLevel = 32, map = 1443, x = 25.8, y = 68.2, giver = "Taiga Wisemane", pre = { 5381 }, turnin = { 1443, 25.8, 68.2 } }
Q[5601] = { name = "Sister Pamela", level = 55, minLevel = 50, map = 1452, x = 61.3, y = 39.0, giver = "Jessica Redpath", turnin = { 1423, 31.1, 78.0 } }
Q[5721] = { name = "The Battle of Darrowshire", level = 60, minLevel = 55, map = 1422, x = 39.5, y = 66.8, giver = "Chromie", pre = { 5941 }, turnin = { 1423, 31.1, 78.0 } }
Q[5722] = { name = "Searching for the Lost Satchel", level = 16, minLevel = 9, map = 1456, x = 70.1, y = 29.5, giver = "Rahauro", dungeon = "Ragefire Chasm" }
Q[5723] = { name = "Testing an Enemy's Strength", level = 15, minLevel = 9, map = 1456, x = 70.1, y = 29.5, giver = "Rahauro", dungeon = "Ragefire Chasm", turnin = { 1456, 70.1, 29.5 } }
Q[5725] = { name = "The Power to Destroy...", level = 16, minLevel = 9, map = 1458, x = 56.2, y = 92.2, giver = "Varimathras", dungeon = "Ragefire Chasm", turnin = { 1458, 56.2, 92.2 } }
Q[5726] = { name = "Hidden Enemies", level = 12, minLevel = 9, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", turnin = { 1454, 31.7, 37.8 } }
Q[5727] = { name = "Hidden Enemies", level = 12, minLevel = 9, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", pre = { 5726 }, turnin = { 1454, 31.7, 37.8 } }
Q[5728] = { name = "Hidden Enemies", level = 16, minLevel = 9, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", pre = { 5727 }, dungeon = "Ragefire Chasm", turnin = { 1454, 31.7, 37.8 } }
Q[5729] = { name = "Hidden Enemies", level = 15, minLevel = 9, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", pre = { 5728 }, turnin = { 1454, 49.5, 50.6 } }
Q[5730] = { name = "Hidden Enemies", level = 16, minLevel = 9, map = 1454, x = 49.5, y = 50.6, giver = "Neeru Fireblade", pre = { 5729 }, turnin = { 1454, 31.7, 37.8 } }
Q[5741] = { name = "Sceptre of Light", level = 33, minLevel = 30, map = 1443, x = 38.9, y = 27.2, giver = "Azore Aldamort", turnin = { 1443, 38.9, 27.2 } }
Q[5742] = { name = "Redemption", level = 56, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", pre = { 5542, 5543, 5544 }, turnin = { 1423, 5.2, 35.6 } }
Q[5761] = { name = "Slaying the Beast", level = 16, minLevel = 9, map = 1454, x = 49.5, y = 50.6, giver = "Neeru Fireblade", dungeon = "Ragefire Chasm", turnin = { 1454, 49.5, 50.6 } }
Q[5762] = { name = "Hemet Nesingwary", level = 31, minLevel = 28, map = 1441, x = 77.8, y = 77.3, giver = "Kravel Koalbeard", turnin = { 1434, 35.7, 10.8 } }
Q[5763] = { name = "Hunting in Stranglethorn", level = 31, minLevel = 28, map = 1443, x = 25.1, y = 72.3, giver = "Roon Wildmane", turnin = { 1434, 35.7, 10.8 } }
Q[5781] = { name = "Of Forgotten Memories", level = 57, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", pre = { 5742 }, turnin = { 1423, 5.2, 35.6 } }
Q[5802] = { name = "Fire Plume Forged", level = 57, minLevel = 55, map = 1446, x = 51.5, y = 28.8, giver = "Krinkle Goodsteel", pre = { 5514 }, turnin = { 1420, 83.3, 69.2 } }
Q[5804] = { name = "Araj's Scarab", level = 60, minLevel = 55, map = 1420, x = 83.3, y = 69.2, giver = "Apothecary Dithers", pre = { 5802 }, turnin = { 1420, 83.3, 69.2 } }
Q[5821] = { name = "Bodyguard for Hire", level = 35, minLevel = 30, map = 1443, x = 66.5, y = 37.5, giver = "Cork Gizelton", turnin = { 1443, 60.9, 61.9 } }
Q[5845] = { name = "Of Lost Honor", level = 58, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", pre = { 5781 }, turnin = { 1423, 5.2, 35.6 } }
Q[5846] = { name = "Of Love and Family", level = 58, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", pre = { 5845 }, turnin = { 1422, 65.8, 75.4 } }
Q[5848] = { name = "Of Love and Family", level = 60, minLevel = 52, map = 1422, x = 65.8, y = 75.4, giver = "Artist Renfray", pre = { 5846 }, dungeon = "Stratholme", turnin = { 1423, 5.2, 35.6 } }
Q[5861] = { name = "Find Myranda", level = 60, minLevel = 52, map = 1423, x = 5.2, y = 35.6, giver = "Tirion Fordring", pre = { 5848 }, turnin = { 1422, 50.8, 77.8 } }
Q[5862] = { name = "Scarlet Subterfuge", level = 60, minLevel = 52, map = 1422, x = 50.8, y = 77.8, giver = "Myranda the Hag", pre = { 5861 }, turnin = { 1422, 42.0, 14.8 } }
Q[5863] = { name = "The Dunemaul Compound", level = 49, minLevel = 44, map = 1446, x = 52.8, y = 27.4, giver = "Andi Lynn", turnin = { 1446, 52.8, 27.4 } }
Q[5881] = { name = "Calling in the Reserves", level = 28, minLevel = 23, map = 1442, x = 47.2, y = 61.2, giver = "Maggran Earthbinder", turnin = { 1441, 31.9, 21.7 } }
Q[5887] = { name = "Salve via Hunting", level = 55, minLevel = 48, map = 1448, x = 46.8, y = 83.1, giver = "Maybess Riverbreeze", pre = { 4102 }, group = true, turnin = { 1448, 46.8, 83.1 } }
Q[5901] = { name = "A Plague Upon Thee", level = 55, minLevel = 48, map = 1420, x = 83.3, y = 72.3, giver = "Mickey Levine", turnin = { 1420, 83.3, 72.3 } }
Q[5902] = { name = "A Plague Upon Thee", level = 55, minLevel = 48, map = 1420, x = 83.3, y = 72.3, giver = "Mickey Levine", pre = { 5901 }, turnin = { 1422, 48.3, 32.0 } }
Q[5941] = { name = "Return to Chromie", level = 60, minLevel = 50, map = 1423, x = 71.7, y = 50.0, giver = "Carlin Redpath", pre = { 5206 }, turnin = { 1422, 39.5, 66.8 } }
Q[5942] = { name = "Hidden Treasures", level = 60, minLevel = 50, map = 1423, x = 31.1, y = 78.0, giver = "Pamela Redpath", pre = { 5721 }, turnin = { 1423, 30.9, 77.8 } }
Q[5943] = { name = "Gizelton Caravan", level = 38, minLevel = 32, map = 1443, x = 45.4, y = 75.3, giver = "Rigger Gizelton", turnin = { 1443, 60.9, 61.9 } }
Q[5944] = { name = "In Dreams", level = 60, minLevel = 52, map = 1422, x = 42.0, y = 14.8, giver = "Highlord Taelan Fordring", pre = { 5862 }, turnin = { 1423, 5.2, 35.6 } }
Q[5961] = { name = "The Champion of the Banshee Queen", level = 56, minLevel = 54, map = 1458, x = 58.0, y = 91.8, giver = "Lady Sylvanas Windrunner", turnin = { 1423, 22.2, 63.5 } }
Q[6004] = { name = "Unfinished Business", level = 56, minLevel = 50, map = 1422, x = 51.9, y = 28.1, giver = "Kirsta Deepshadow", turnin = { 1422, 51.9, 28.1 } }
Q[6021] = { name = "Zaeldarr the Outcast", level = 55, minLevel = 50, map = 1423, x = 69.9, y = 53.7, giver = "Caretaker Alen", turnin = { 1423, 69.9, 53.7 } }
Q[6022] = { name = "To Kill With Purpose", level = 58, minLevel = 54, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", turnin = { 1423, 22.2, 63.5 } }
Q[6023] = { name = "Unfinished Business", level = 57, minLevel = 50, map = 1422, x = 51.9, y = 28.1, giver = "Kirsta Deepshadow", pre = { 6004 }, turnin = { 1422, 51.9, 28.1 } }
Q[6024] = { name = "Hameya's Plea", level = 60, minLevel = 54, map = 1423, x = 22.9, y = 73.0, giver = "Torn Scroll", turnin = { 1423, 23.6, 73.8 } }
Q[6025] = { name = "Unfinished Business", level = 58, minLevel = 50, map = 1422, x = 51.9, y = 28.1, giver = "Kirsta Deepshadow", pre = { 6023 }, turnin = { 1422, 51.9, 28.1 } }
Q[6026] = { name = "That's Asking A Lot", level = 58, minLevel = 54, map = 1423, x = 70.9, y = 48.4, giver = "Smokey LaRue", turnin = { 1423, 70.9, 48.4 } }
Q[6027] = { name = "Book of the Ancients", level = 38, minLevel = 30, map = 1443, x = 38.9, y = 27.2, giver = "Azore Aldamort", pre = { 5741 }, turnin = { 1443, 38.9, 27.2 } }
Q[6029] = { name = "The Everlook Report", level = 52, minLevel = 50, map = 1452, x = 61.4, y = 39.0, giver = "Gregor Greystone", turnin = { 1420, 83.2, 68.5 } }
Q[6030] = { name = "Duke Nicholas Zverenhoff", level = 52, minLevel = 50, map = 1452, x = 61.4, y = 39.0, giver = "Gregor Greystone", turnin = { 1423, 71.6, 50.1 } }
Q[6031] = { name = "Runecloth", level = 55, minLevel = 50, map = 1448, x = 65.7, y = 2.8, giver = "Meilosh", turnin = { 1448, 65.7, 2.8 } }
Q[6041] = { name = "When Smokey Sings, I Get Violent", level = 58, minLevel = 54, map = 1423, x = 70.9, y = 48.4, giver = "Smokey LaRue", pre = { 6026 }, turnin = { 1423, 70.9, 48.4 } }
Q[6042] = { name = "Un-Life's Little Annoyances", level = 58, minLevel = 54, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", turnin = { 1423, 22.2, 63.5 } }
Q[6132] = { name = "Get Me Out of Here!", level = 39, minLevel = 34, map = 1443, x = 34.0, y = 53.5, giver = "Melizza Brimbuzzle", turnin = { 1443, 47.8, 61.8 } }
Q[6133] = { name = "The Ranger Lord's Behest", level = 60, minLevel = 54, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", turnin = { 1423, 22.2, 63.5 } }
Q[6134] = { name = "Ghost-o-plasm Round Up", level = 39, minLevel = 34, map = 1443, x = 47.8, y = 61.8, giver = "Hornizz Brimbuzzle", turnin = { 1443, 47.8, 61.8 } }
Q[6135] = { name = "Duskwing, Oh How I Hate Thee...", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", pre = { 6022, 6042, 6133 }, group = true, turnin = { 1423, 22.2, 63.5 } }
Q[6136] = { name = "The Corpulent One", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", pre = { 6022, 6042, 6133 }, group = true, turnin = { 1423, 22.2, 63.5 } }
Q[6142] = { name = "Clam Bait", level = 35, minLevel = 31, map = 1443, x = 22.6, y = 72.0, giver = "Mai'Lahii", turnin = { 1443, 22.6, 72.0 } }
Q[6143] = { name = "Other Fish to Fry", level = 36, minLevel = 32, map = 1443, x = 23.3, y = 72.9, giver = "Drulzegar Skraghook", turnin = { 1443, 23.3, 72.9 } }
Q[6144] = { name = "The Call to Command", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", pre = { 6135, 6136 }, turnin = { 1458, 56.2, 92.2 } }
Q[6145] = { name = "The Crimson Courier", level = 60, minLevel = 56, map = 1458, x = 56.2, y = 92.2, giver = "Varimathras", pre = { 6144 }, group = true, turnin = { 1423, 22.2, 63.5 } }
Q[6146] = { name = "Nathanos' Ruse", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", pre = { 6145 }, turnin = { 1423, 75.2, 71.2 } }
Q[6147] = { name = "Return to Nathanos", level = 60, minLevel = 56, map = 1423, x = 75.2, y = 71.2, giver = "Crusader Lord Valdelmar", pre = { 6146 }, turnin = { 1423, 22.2, 63.5 } }
Q[6148] = { name = "The Scarlet Oracle, Demetria", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", pre = { 6147 }, group = true, turnin = { 1423, 22.2, 63.5 } }
Q[6161] = { name = "Claim Rackmore's Treasure!", level = 36, minLevel = 30, map = 1443, x = 36.1, y = 30.4, giver = "Rackmore's Log", turnin = { 1443, 30, 8.7 } }
Q[6162] = { name = "A Husband's Last Battle", level = 51, minLevel = 46, map = 1448, x = 34.8, y = 52.7, giver = "Dreka'Sur", turnin = { 1448, 34.8, 52.7 } }
Q[6163] = { name = "Ramstein", level = 60, minLevel = 56, map = 1423, x = 22.2, y = 63.5, giver = "Nathanos Blightcaller", pre = { 6135, 6136 }, dungeon = "Stratholme", turnin = { 1423, 22.2, 63.5 } }
Q[6164] = { name = "Augustus' Receipt Book", level = 55, minLevel = 50, map = 1423, x = 11.4, y = 26.4, giver = "Augustus the Touched", turnin = { 1423, 11.4, 26.4 } }
Q[6282] = { name = "Harpies Threaten", level = 26, minLevel = 18, map = 1442, x = 47.2, y = 61.2, giver = "Maggran Earthbinder", turnin = { 1442, 47.2, 61.2 } }
Q[6283] = { name = "Bloodfury Bloodline", level = 26, minLevel = 18, map = 1442, x = 47.2, y = 61.2, giver = "Maggran Earthbinder", pre = { 6282 }, group = true, turnin = { 1442, 47.2, 61.2 } }
Q[6284] = { name = "Arachnophobia", level = 21, minLevel = 15, map = 1442, x = 59.1, y = 75.7, giver = "Wanted Poster: Besseleth", group = true, turnin = { 1442, 47.2, 61.2 } }
Q[6301] = { name = "Cycle of Rebirth", level = 23, minLevel = 17, map = 1442, x = 47.5, y = 58.4, giver = "Tammra Windfield", turnin = { 1442, 47.5, 58.4 } }
Q[6321] = { name = "Supplying the Sepulcher", level = 10, minLevel = 10, map = 1421, x = 43.4, y = 41.7, giver = "Deathguard Podrig", race = { SCOURGE = true }, turnin = { 1421, 45.6, 42.6 } }
Q[6322] = { name = "Michael Garrett", level = 10, minLevel = 10, map = 1458, x = 61.5, y = 41.8, giver = "Gordon Wendham", pre = { 6323 }, race = { SCOURGE = true }, turnin = { 1458, 63.2, 48.6 } }
Q[6323] = { name = "Ride to the Undercity", level = 10, minLevel = 10, map = 1421, x = 45.6, y = 42.6, giver = "Karos Razok", pre = { 6321 }, race = { SCOURGE = true }, turnin = { 1458, 61.5, 41.8 } }
Q[6324] = { name = "Return to Podrig", level = 10, minLevel = 10, map = 1458, x = 63.2, y = 48.6, giver = "Michael Garrett", pre = { 6322 }, race = { SCOURGE = true }, turnin = { 1421, 43.4, 41.7 } }
Q[6361] = { name = "A Bundle of Hides", level = 10, minLevel = 10, map = 1413, x = 51.2, y = 29.1, giver = "Jahan Hawkwing", race = { TAUREN = true }, turnin = { 1413, 51.5, 30.3 } }
Q[6362] = { name = "Ride to Thunder Bluff", level = 10, minLevel = 10, map = 1413, x = 51.5, y = 30.3, giver = "Devrak", pre = { 6361 }, race = { TAUREN = true }, turnin = { 1456, 45.8, 55.8 } }
Q[6363] = { name = "Tal the Wind Rider Master", level = 10, minLevel = 10, map = 1456, x = 45.8, y = 55.8, giver = "Ahanu", pre = { 6362 }, race = { TAUREN = true }, turnin = { 1456, 47, 49.8 } }
Q[6364] = { name = "Return to Jahan", level = 10, minLevel = 10, map = 1456, x = 47, y = 49.8, giver = "Tal", pre = { 6363 }, race = { TAUREN = true }, turnin = { 1413, 51.2, 29.1 } }
Q[6365] = { name = "Meats to Orgrimmar", level = 10, minLevel = 10, map = 1413, x = 52.6, y = 29.8, giver = "Zargh", race = { ORC = true, TROLL = true }, turnin = { 1413, 51.5, 30.3 } }
Q[6381] = { name = "New Life", level = 25, minLevel = 17, map = 1442, x = 47.5, y = 58.4, giver = "Tammra Windfield", pre = { 6301 }, turnin = { 1442, 47.5, 58.4 } }
Q[6382] = { name = "The Ashenvale Hunt", level = 20, minLevel = 20, map = 1413, x = 44.9, y = 59.1, giver = "Jorn Skyseer", pre = { 882 }, turnin = { 1440, 73.8, 61.5 } }
Q[6383] = { name = "The Ashenvale Hunt", level = 20, minLevel = 20, map = 1440, x = 73.8, y = 61.5, giver = "Senani Thunderheart", turnin = { 1440, 73.8, 61.5 } }
Q[6384] = { name = "Ride to Orgrimmar", level = 10, minLevel = 10, map = 1413, x = 51.5, y = 30.3, giver = "Devrak", pre = { 6365 }, race = { ORC = true, TROLL = true }, turnin = { 1454, 54.1, 68.4 } }
Q[6385] = { name = "Doras the Wind Rider Master", level = 10, minLevel = 10, map = 1454, x = 54.1, y = 68.4, giver = "Innkeeper Gryshka", pre = { 6384 }, race = { ORC = true, TROLL = true }, turnin = { 1454, 45.1, 63.9 } }
Q[6386] = { name = "Return to the Crossroads.", level = 10, minLevel = 10, map = 1454, x = 45.1, y = 63.9, giver = "Doras", pre = { 6385 }, race = { ORC = true, TROLL = true }, turnin = { 1413, 52.6, 29.8 } }
Q[6390] = { name = "A Plague Upon Thee", level = 55, minLevel = 48, map = 1422, x = 48.3, y = 32.0, giver = "Termite Barrel", pre = { 5902 }, turnin = { 1420, 83.3, 72.3 } }
Q[6393] = { name = "Elemental War", level = 25, minLevel = 19, map = 1442, x = 47.4, y = 64.2, giver = "Tsunaman", turnin = { 1442, 47.4, 64.2 } }
Q[6394] = { name = "Thazz'ril's Pick", level = 4, minLevel = 3, map = 1411, x = 44.6, y = 68.7, giver = "Foreman Thazz'ril", pre = { 5441 }, turnin = { 1411, 44.6, 68.7 } }
Q[6395] = { name = "Marla's Last Wish", level = 5, minLevel = 3, map = 1420, x = 30.9, y = 66.0, giver = "Novice Elreth", pre = { 376 }, turnin = { 1420, 30.9, 66.0 } }
Q[6401] = { name = "Kaya's Alive", level = 18, minLevel = 12, map = 1413, x = 35.2, y = 27.8, giver = "Makaba Flathoof", pre = { 6523 }, turnin = { 1442, 47.5, 58.4 } }
Q[6421] = { name = "Boulderslide Ravine", level = 18, minLevel = 14, map = 1442, x = 47.2, y = 64.0, giver = "Mor'rogal", turnin = { 1442, 47.2, 64.0 } }
Q[6441] = { name = "Satyr Horns", level = 26, minLevel = 21, map = 1440, x = 73.1, y = 61.5, giver = "Pixel", turnin = { 1440, 73.1, 61.5 } }
Q[6442] = { name = "Naga at the Zoram Strand", level = 19, minLevel = 14, map = 1440, x = 11.7, y = 34.9, giver = "Marukai", turnin = { 1440, 11.7, 34.9 } }
Q[6461] = { name = "Blood Feeders", level = 19, minLevel = 13, map = 1442, x = 71.2, y = 95.0, giver = "Xen'Zilla", turnin = { 1442, 71.2, 95.0 } }
Q[6462] = { name = "Troll Charm", level = 24, minLevel = 19, map = 1440, x = 11.7, y = 34.9, giver = "Mitsuwa", turnin = { 1440, 11.7, 34.9 } }
Q[6481] = { name = "Earthen Arise", level = 20, minLevel = 14, map = 1442, x = 47.2, y = 64.0, giver = "Mor'rogal", pre = { 6421 }, group = true, turnin = { 1442, 47.2, 64.0 } }
Q[6482] = { name = "Freedom to Ruul", level = 24, minLevel = 19, map = 1440, x = 41.5, y = 34.5, giver = "Ruul Snowhoof", turnin = { 1440, 74.1, 60.9 } }
Q[6503] = { name = "Ashenvale Outrunners", level = 24, minLevel = 19, map = 1440, x = 71.1, y = 68.1, giver = "Kuray'bin", turnin = { 1440, 71.1, 68.1 } }
Q[6504] = { name = "The Lost Pages", level = 30, minLevel = 23, map = 1440, x = 70.0, y = 71.2, giver = "Gurda Ragescar", turnin = { 1440, 70.0, 71.2 } }
Q[6521] = { name = "An Unholy Alliance", level = 36, minLevel = 28, map = 1458, x = 56.2, y = 92.2, giver = "Varimathras", pre = { 6522 }, dungeon = "Razorfen Downs", turnin = { 1458, 56.2, 92.2 } }
Q[6523] = { name = "Protect Kaya", level = 18, minLevel = 12, map = 1442, x = 73.5, y = 85.6, giver = "Kaya Flathoof", turnin = { 1413, 35.2, 27.8 } }
Q[6541] = { name = "Report to Kadrak", level = 19, minLevel = 17, map = 1413, x = 51.5, y = 30.9, giver = "Thork", turnin = { 1413, 48.1, 5.4 } }
Q[6542] = { name = "Report to Kadrak", level = 19, minLevel = 17, map = 1442, x = 73.2, y = 94.9, giver = "Darn Talongrip", turnin = { 1413, 48.1, 5.4 } }
Q[6543] = { name = "The Warsong Reports", level = 19, minLevel = 17, map = 1413, x = 48.1, y = 5.4, giver = "Kadrak", turnin = { 1413, 48.1, 5.4 } }
Q[6544] = { name = "Torek's Assault", level = 24, minLevel = 20, map = 1440, x = 68.3, y = 75.3, giver = "Torek", turnin = { 1440, 73.0, 62.5 } }
Q[6548] = { name = "Avenge My Village", level = 18, minLevel = 12, map = 1413, x = 35.2, y = 27.8, giver = "Makaba Flathoof", turnin = { 1413, 35.2, 27.8 } }
Q[6562] = { name = "Trouble in the Deeps", level = 22, minLevel = 17, map = 1442, x = 47.4, y = 64.2, giver = "Tsunaman", dungeon = "Blackfathom Deeps", turnin = { 1440, 11.6, 34.3 } }
Q[6563] = { name = "The Essence of Aku'Mai", level = 22, minLevel = 17, map = 1440, x = 11.6, y = 34.3, giver = "Je'neu Sancrea", dungeon = "Blackfathom Deeps", turnin = { 1440, 11.6, 34.3 } }
Q[6565] = { name = "Allegiance to the Old Gods", level = 26, minLevel = 17, map = 1440, x = 11.6, y = 34.3, giver = "Je'neu Sancrea", pre = { 6564 }, dungeon = "Blackfathom Deeps", turnin = { 1440, 11.6, 34.3 } }
Q[6566] = { name = "What the Wind Carries", level = 60, minLevel = 55, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", pre = { 4974 }, turnin = { 1454, 31.7, 37.8 } }
Q[6567] = { name = "The Champion of the Horde", level = 60, minLevel = 55, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", pre = { 6566 }, turnin = { 1443, 54, 2 } }
Q[6568] = { name = "The Testament of Rexxar", level = 60, minLevel = 55, map = 1443, x = 54, y = 2, giver = "Rexxar", pre = { 6567 }, turnin = { 1422, 50.8, 77.8 } }
Q[6570] = { name = "Emberstrife", level = 60, minLevel = 55, map = 1422, x = 50.8, y = 77.8, giver = "Myranda the Hag", pre = { 6569 }, turnin = { 1445, 56.7, 87.7 } }
Q[6571] = { name = "Warsong Supplies", level = 27, minLevel = 22, map = 1440, x = 71.4, y = 67.6, giver = "Locke Okarr", turnin = { 1440, 71.4, 67.6 } }
Q[6582] = { name = "The Test of Skulls, Scryer", level = 60, minLevel = 55, map = 1445, x = 56.7, y = 87.7, giver = "Emberstrife", pre = { 6570 }, group = true, turnin = { 1445, 56.7, 87.7 } }
Q[6583] = { name = "The Test of Skulls, Somnus", level = 60, minLevel = 55, map = 1445, x = 56.7, y = 87.7, giver = "Emberstrife", pre = { 6570 }, group = true, turnin = { 1445, 56.7, 87.7 } }
Q[6584] = { name = "The Test of Skulls, Chronalis", level = 60, minLevel = 55, map = 1445, x = 56.7, y = 87.7, giver = "Emberstrife", pre = { 6570 }, group = true, turnin = { 1445, 56.7, 87.7 } }
Q[6585] = { name = "The Test of Skulls, Axtroz", level = 60, minLevel = 55, map = 1445, x = 56.7, y = 87.7, giver = "Emberstrife", pre = { 6582, 6583, 6584 }, group = true, turnin = { 1445, 56.7, 87.7 } }
Q[6601] = { name = "Ascension...", level = 60, minLevel = 55, map = 1445, x = 56.7, y = 87.7, giver = "Emberstrife", pre = { 6585 }, turnin = { 1443, 54, 2 } }
Q[6603] = { name = "Trouble in Winterspring!", level = 56, minLevel = 52, map = 1452, x = 60.7, y = 38.2, giver = "Meggi Peppinrocker", turnin = { 1452, 31.3, 45.2 } }
Q[6605] = { name = "A Strange One", level = 54, minLevel = 49, map = 1452, x = 61.1, y = 38.4, giver = "Harlo Wigglesworth", turnin = { 1448, 34.2, 52.3 } }
Q[6606] = { name = "A Little Luck", level = 60, minLevel = 55, map = 1452, x = 61.1, y = 38.4, giver = "Harlo Wigglesworth", turnin = { 1452, 61.9, 38.3 } }
Q[6621] = { name = "King of the Foulweald", level = 26, minLevel = 21, map = 1440, x = 11.9, y = 34.5, giver = "Karang Amakkar", pre = { 216 }, turnin = { 1440, 11.9, 34.5 } }
Q[6626] = { name = "A Host of Evil", level = 35, minLevel = 28, map = 1413, x = 49.0, y = 94.9, giver = "Myriam Moonsinger", dungeon = "Razorfen Downs", turnin = { 1413, 49.0, 94.9 } }
Q[6627] = { name = "Test of Lore", level = 30, minLevel = 25, map = 1442, x = 78.8, y = 45.7, giver = "Braug Dimspirit", pre = { 1154 }, turnin = { 1442, 78.8, 45.7 } }
Q[6628] = { name = "Test of Lore", level = 30, minLevel = 25, map = 1458, x = 57.8, y = 65.4, giver = "Parqual Fintallas", pre = { 1160 }, turnin = { 1458, 57.8, 65.4 } }
Q[6629] = { name = "Kill Grundig Darkcloud", level = 18, minLevel = 12, map = 1413, x = 35.2, y = 27.8, giver = "Makaba Flathoof", pre = { 6548 }, turnin = { 1413, 35.2, 27.8 } }
Q[6641] = { name = "Vorsha the Lasher", level = 23, minLevel = 20, map = 1440, x = 12.1, y = 34.6, giver = "Muglash", turnin = { 1440, 12.2, 34.2 } }
Q[6804] = { name = "Poisoned Water", level = 56, minLevel = 55, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", turnin = { 1447, 79.3, 73.7 } }
Q[6805] = { name = "Stormers and Rumblers", level = 57, minLevel = 55, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", turnin = { 1447, 79.3, 73.7 } }
Q[6821] = { name = "Eye of the Emberseer", level = 60, minLevel = 56, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", pre = { 6804, 6805 }, group = true, turnin = { 1447, 79.3, 73.7 } }
Q[6822] = { name = "The Molten Core", level = 60, minLevel = 57, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", pre = { 6821 }, group = true, turnin = { 1447, 79.3, 73.7 } }
Q[6823] = { name = "Agent of Hydraxis", level = 60, minLevel = 60, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", pre = { 6822 }, turnin = { 1447, 79.3, 73.7 } }
Q[6824] = { name = "Hands of the Enemy", level = 60, minLevel = 60, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", pre = { 6823 }, group = true, turnin = { 1447, 79.3, 73.7 } }
Q[6844] = { name = "Umber, Archivist", level = 57, minLevel = 54, map = 1451, x = 81.9, y = 18.9, giver = "Layo Starstrike", pre = { 1126 }, turnin = { 1450, 44.9, 35.6 } }
Q[6845] = { name = "Uncovering Past Secrets", level = 57, minLevel = 54, map = 1450, x = 44.9, y = 35.6, giver = "Umber", pre = { 6844 }, turnin = { 1450, 51.7, 45.1 } }
Q[6921] = { name = "Amongst the Ruins", level = 27, minLevel = 21, map = 1440, x = 11.6, y = 34.3, giver = "Je'neu Sancrea", dungeon = "Blackfathom Deeps", turnin = { 1440, 11.6, 34.3 } }
Q[7003] = { name = "Zapped Giants", level = 48, minLevel = 45, map = 1444, x = 44.8, y = 43.4, giver = "Zorbin Fandazzle", group = true, turnin = { 1444, 44.8, 43.4 } }
Q[7028] = { name = "Twisted Evils", level = 47, minLevel = 41, map = 1443, x = 62.2, y = 39.6, giver = "Willow", dungeon = "Maraudon", turnin = { 1443, 62.2, 39.6 } }
Q[7029] = { name = "Vyletongue Corruption", level = 47, minLevel = 41, map = 1443, x = 23.2, y = 70.3, giver = "Vark Battlescar", dungeon = "Maraudon", turnin = { 1443, 23.2, 70.3 } }
Q[7044] = { name = "Legends of Maraudon", level = 49, minLevel = 41, map = 1443, x = 31.9, y = 63.8, giver = "Cavindra", dungeon = "Maraudon" }
Q[7064] = { name = "Corruption of Earth and Seed", level = 51, minLevel = 45, map = 1443, x = 26.9, y = 77.7, giver = "Selendra", dungeon = "Maraudon", turnin = { 1443, 26.9, 77.7 } }
Q[7067] = { name = "The Pariah's Instructions", level = 48, minLevel = 39, map = 1443, x = 50.4, y = 86.7, giver = "Centaur Pariah", dungeon = "Maraudon", turnin = { 1443, 50.4, 86.7 } }
Q[7068] = { name = "Shadowshard Fragments", level = 42, minLevel = 39, map = 1454, x = 39.2, y = 86.3, giver = "Uthel'nay", dungeon = "Maraudon", turnin = { 1454, 39.2, 86.3 } }
Q[7201] = { name = "The Last Element", level = 54, minLevel = 48, map = 1418, x = 2.9, y = 47.8, giver = "Shadowmage Vivian Lagrave", pre = { 3906 }, dungeon = "Blackrock Depths", turnin = { 1418, 2.9, 47.8 } }
Q[7441] = { name = "Pusillin and the Elder Azj'Tordin", level = 58, minLevel = 54, map = 1444, x = 76.9, y = 37.4, giver = "Azj'Tordin", dungeon = "Dire Maul", turnin = { 1444, 76.9, 37.4 } }
Q[7481] = { name = "Elven Legends", level = 60, minLevel = 54, map = 1444, x = 74.4, y = 44, giver = "Sage Korolusk", dungeon = "Dire Maul", turnin = { 1444, 74.4, 44 } }
Q[7486] = { name = "A Hero's Reward", level = 60, minLevel = 60, map = 1447, x = 79.3, y = 73.7, giver = "Duke Hydraxis", pre = { 6824 }, turnin = { 1447, 79.2, 74.9 } }
Q[7489] = { name = "Lethtendris's Web", level = 57, minLevel = 54, map = 1444, x = 76.2, y = 43.8, giver = "Talo Thornhoof", dungeon = "Dire Maul", turnin = { 1444, 76.2, 43.8 } }
Q[7491] = { name = "For All To See", level = 60, minLevel = 60, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", pre = { 7490 }, turnin = { 1454, 51.7, 75.5 } }
Q[7492] = { name = "Camp Mojache", level = 57, minLevel = 54, map = 1458, x = 63.9, y = 44.1, giver = "Harbinger Balthazad", dungeon = "Dire Maul", turnin = { 1444, 76.2, 43.8 } }
Q[7541] = { name = "Service to the Horde", level = 40, minLevel = 30, map = 1454, x = 38.9, y = 38.4, giver = "Zor Lonetree", pre = { 1262 }, turnin = { 1454, 38.9, 38.4 } }
Q[7701] = { name = "WANTED: Overseer Maltorius", level = 50, minLevel = 45, map = 1427, x = 37.6, y = 26.5, giver = "Wanted/Missing/Lost & Found", group = true, turnin = { 1427, 37.7, 26.6 } }
Q[7721] = { name = "Fuel for the Zapping", level = 48, minLevel = 45, map = 1444, x = 44.8, y = 43.4, giver = "Zorbin Fandazzle", turnin = { 1444, 44.8, 43.4 } }
Q[7722] = { name = "What the Flux?", level = 50, minLevel = 45, map = 1427, x = 38.8, y = 28.5, giver = "Master Smith Burninate", turnin = { 1427, 38.8, 28.5 } }
Q[7723] = { name = "Curse These Fat Fingers", level = 49, minLevel = 45, map = 1427, x = 38.6, y = 27.8, giver = "Hansel Heavyhands", turnin = { 1427, 38.6, 27.8 } }
Q[7724] = { name = "Fiery Menace!", level = 49, minLevel = 45, map = 1427, x = 38.6, y = 27.8, giver = "Hansel Heavyhands", turnin = { 1427, 38.6, 27.8 } }
Q[7727] = { name = "Incendosaurs? Whateverosaur is More Like It", level = 49, minLevel = 45, map = 1427, x = 38.6, y = 27.8, giver = "Hansel Heavyhands", turnin = { 1427, 38.6, 27.8 } }
Q[7728] = { name = "STOLEN: Smithing Tuyere and Lookout's Spyglass", level = 48, minLevel = 45, map = 1427, x = 37.6, y = 26.5, giver = "Wanted/Missing/Lost & Found", turnin = { 1427, 39.0, 27.5 } }
Q[7729] = { name = "JOB OPPORTUNITY: Culling the Competition", level = 48, minLevel = 45, map = 1427, x = 37.6, y = 26.5, giver = "Wanted/Missing/Lost & Found", turnin = { 1427, 39.0, 27.5 } }
Q[7730] = { name = "Zukk'ash Infestation", level = 45, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", pre = { 2903 }, turnin = { 1444, 74.9, 42.5 } }
Q[7731] = { name = "Stinglasher", level = 47, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", pre = { 2903 }, turnin = { 1444, 74.9, 42.5 } }
Q[7732] = { name = "Zukk'ash Report", level = 48, minLevel = 39, map = 1444, x = 74.9, y = 42.5, giver = "Hadoken Swiftstrider", pre = { 7730, 7731 }, turnin = { 1454, 56.3, 46.7 } }
Q[7734] = { name = "Improved Quality", level = 48, minLevel = 40, map = 1444, x = 74.4, y = 42.9, giver = "Jangdor Swiftstrider", pre = { 2822 }, turnin = { 1444, 74.4, 42.9 } }
Q[7784] = { name = "The Lord of Blackrock", level = 60, minLevel = 60, map = 1454, x = 31.7, y = 37.8, giver = "Thrall", pre = { 7783 }, turnin = { 1454, 51.0, 75.7 } }
Q[7815] = { name = "Snapjaws, Mon!", level = 50, minLevel = 44, map = 1425, x = 80.3, y = 81.5, giver = "Katoom the Angler", turnin = { 1425, 80.3, 81.5 } }
Q[7816] = { name = "Gammerita, Mon!", level = 48, minLevel = 44, map = 1425, x = 80.3, y = 81.5, giver = "Katoom the Angler", group = true, turnin = { 1425, 80.3, 81.5 } }
Q[7818] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1458, x = 71.7, y = 29.2, giver = "Ralston Farnsley", pre = { 7813, 7814, 7817 }, turnin = { 1458, 71.7, 29.2 } }
Q[7823] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1456, x = 43.0, y = 42.7, giver = "Rumstag Proudstrider", pre = { 7820, 7821, 7822 }, turnin = { 1456, 43.0, 42.7 } }
Q[7824] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1454, x = 63.6, y = 51.2, giver = "Rashona Straglash", pre = { 7826, 7827, 7831 }, turnin = { 1454, 63.6, 51.2 } }
Q[7828] = { name = "Stalking the Stalkers", level = 48, minLevel = 44, map = 1425, x = 79.2, y = 79.5, giver = "Huntsman Markhor", turnin = { 1425, 79.2, 79.5 } }
Q[7829] = { name = "Hunt the Savages", level = 48, minLevel = 44, map = 1425, x = 79.2, y = 79.5, giver = "Huntsman Markhor", turnin = { 1425, 79.2, 79.5 } }
Q[7830] = { name = "Avenging the Fallen", level = 48, minLevel = 44, map = 1425, x = 79.2, y = 79.5, giver = "Huntsman Markhor", turnin = { 1425, 79.2, 79.5 } }
Q[7836] = { name = "A Donation of Runecloth", level = 60, minLevel = 50, map = 1454, x = 37.7, y = 87.9, giver = "Vehena", pre = { 7833, 7834, 7835 }, turnin = { 1454, 37.7, 87.9 } }
Q[7839] = { name = "Vilebranch Hooligans", level = 48, minLevel = 44, map = 1425, x = 77.2, y = 80.1, giver = "Smith Slagtree", turnin = { 1425, 77.2, 80.1 } }
Q[7840] = { name = "Lard Lost His Lunch", level = 49, minLevel = 44, map = 1425, x = 78.1, y = 81.4, giver = "Lard", turnin = { 1425, 78.1, 81.4 } }
Q[7841] = { name = "Message to the Wildhammer", level = 48, minLevel = 44, map = 1425, x = 79.4, y = 79.1, giver = "Otho Moji'ko", turnin = { 1425, 79.4, 79.1 } }
Q[7842] = { name = "Another Message to the Wildhammer", level = 48, minLevel = 44, map = 1425, x = 79.4, y = 79.1, giver = "Otho Moji'ko", pre = { 7841 }, turnin = { 1425, 79.4, 79.1 } }
Q[7843] = { name = "The Final Message to the Wildhammer", level = 50, minLevel = 44, map = 1425, x = 79.4, y = 79.1, giver = "Otho Moji'ko", pre = { 7842 }, turnin = { 1425, 79.4, 79.1 } }
Q[7844] = { name = "Cannibalistic Cousins", level = 48, minLevel = 44, map = 1425, x = 78.8, y = 78.2, giver = "Mystic Yayo'jin", turnin = { 1425, 78.8, 78.2 } }
Q[7845] = { name = "Kidnapped Elder Torntusk!", level = 51, minLevel = 46, map = 1425, x = 78.2, y = 81.2, giver = "Primal Torntusk", turnin = { 1425, 59.7, 77.8 } }
Q[7846] = { name = "Recover the Key!", level = 51, minLevel = 46, map = 1425, x = 59.7, y = 77.8, giver = "Elder Torntusk", pre = { 7845 }, group = true, turnin = { 1425, 59.7, 77.8 } }
Q[7847] = { name = "Return to Primal Torntusk", level = 51, minLevel = 46, map = 1425, x = 59.7, y = 77.8, giver = "Elder Torntusk", pre = { 7846 }, turnin = { 1425, 78.2, 81.2 } }
Q[7849] = { name = "Separation Anxiety", level = 50, minLevel = 46, map = 1425, x = 79.2, y = 79.5, giver = "Huntsman Markhor", turnin = { 1425, 79.2, 79.5 } }
Q[7850] = { name = "Dark Vessels", level = 50, minLevel = 46, map = 1425, x = 78.2, y = 81.2, giver = "Primal Torntusk", turnin = { 1425, 78.2, 81.2 } }
Q[7861] = { name = "Wanted: Vile Priestess Hexx and Her Minions", level = 51, minLevel = 46, map = 1425, x = 79.1, y = 79.0, giver = "Call to Arms!", group = true, turnin = { 1425, 78.2, 81.2 } }
Q[7862] = { name = "Job Opening: Guard Captain of Revantusk Village", level = 51, minLevel = 46, map = 1425, x = 79.1, y = 79.0, giver = "Call to Arms!", group = true, turnin = { 1425, 78.2, 81.2 } }
Q[8273] = { name = "Oran's Gratitude", level = 47, minLevel = 42, map = 1458, x = 73.1, y = 32.9, giver = "Oran Snakewrithe", pre = { 2782 }, turnin = { 1458, 73.1, 32.9 } }
Q[8276] = { name = "Taking Back Silithus", level = 55, minLevel = 54, map = 1454, x = 47.6, y = 65.8, giver = "Cenarion Emissary Blackhoof", turnin = { 1451, 51.1, 38.3 } }
Q[8277] = { name = "Deadly Desert Venom", level = 55, minLevel = 54, map = 1451, x = 51.6, y = 38.6, giver = "Beetix Ficklespragg", turnin = { 1451, 51.6, 38.6 } }
Q[8278] = { name = "Noggle's Last Hope", level = 57, minLevel = 54, map = 1451, x = 51.6, y = 38.6, giver = "Beetix Ficklespragg", pre = { 8277 }, turnin = { 1451, 51.6, 38.6 } }
Q[8279] = { name = "The Twilight Lexicon", level = 60, minLevel = 54, map = 1451, x = 67.2, y = 69.8, giver = "Hermit Ortell", pre = { 8285 }, turnin = { 1451, 67.2, 69.8 } }
Q[8280] = { name = "Securing the Supply Lines", level = 55, minLevel = 54, map = 1451, x = 51.1, y = 38.3, giver = "Windcaller Proudhorn", turnin = { 1451, 51.1, 38.3 } }
Q[8281] = { name = "Stepping Up Security", level = 57, minLevel = 54, map = 1451, x = 51.1, y = 38.3, giver = "Windcaller Proudhorn", pre = { 8280 }, turnin = { 1451, 51.1, 38.3 } }
Q[8282] = { name = "Noggle's Lost Satchel", level = 58, minLevel = 54, map = 1451, x = 51.6, y = 38.5, giver = "Noggle Ficklespragg", pre = { 8278 }, turnin = { 1451, 51.6, 38.5 } }
Q[8283] = { name = "Wanted - Deathclasp, Terror of the Sands", level = 59, minLevel = 54, map = 1451, x = 51.4, y = 38.3, giver = "Wanted Poster: Deathclasp", group = true, turnin = { 1451, 50.8, 33.6 } }
Q[8284] = { name = "The Twilight Mystery", level = 58, minLevel = 54, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", turnin = { 1451, 49.7, 37.5 } }
Q[8285] = { name = "The Deserter", level = 59, minLevel = 54, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8284 }, turnin = { 1451, 67.2, 69.8 } }
Q[8286] = { name = "What Tomorrow Brings", level = 60, minLevel = 60, map = 1451, x = 49.5, y = 36.5, giver = "Baristolth of the Shifting Sands", turnin = { 1451, 49.5, 36.5 } }
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
Q[8367] = { name = "For Great Honor", level = 60, minLevel = 51, map = 1416, x = 63.1, y = 59.9, giver = "Horde Warbringer", turnin = { 1416, 63.1, 59.9 } }
Q[8377] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { HUNTER = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8378] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { ROGUE = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8379] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { PRIEST = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8380] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { SHAMAN = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8381] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { MAGE = true, WARLOCK = true }, turnin = { 1451, 49.7, 37.5 } }
Q[8382] = { name = "Armaments of War", level = 60, minLevel = 58, map = 1451, x = 49.7, y = 37.5, giver = "Geologist Larksbane", pre = { 8315 }, class = { DRUID = true }, turnin = { 1451, 49.7, 37.5 } }
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
Q[8913] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", class = { DRUID = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8914] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", class = { HUNTER = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8915] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", class = { MAGE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8916] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", class = { PRIEST = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8917] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", class = { ROGUE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8918] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", class = { SHAMAN = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8919] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", class = { WARLOCK = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8920] = { name = "An Earnest Proposition", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", class = { WARRIOR = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8921] = { name = "The Ectoplasmic Distiller", level = 60, minLevel = 58, map = 1446, x = 52.5, y = 27.2, giver = "Mux Manascrambler", turnin = { 1446, 52.5, 27.2 } }
Q[8923] = { name = "A Supernatural Device", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", turnin = { 1446, 52.5, 27.2 } }
Q[8924] = { name = "Hunting for Ectoplasm", level = 60, minLevel = 58, map = 1446, x = 52.5, y = 27.2, giver = "Mux Manascrambler", pre = { 8921 }, turnin = { 1446, 52.5, 27.2 } }
Q[8925] = { name = "A Portable Power Source", level = 60, minLevel = 58, map = 1446, x = 52.5, y = 27.2, giver = "Mux Manascrambler", pre = { 8924 }, turnin = { 1446, 52.5, 27.2 } }
Q[8927] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8978 }, class = { DRUID = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8928] = { name = "A Shifty Merchant", level = 60, minLevel = 58, map = 1446, x = 52.5, y = 27.2, giver = "Mux Manascrambler", pre = { 8925 }, turnin = { 1446, 52.5, 27.2 } }
Q[8930] = { name = "In Search of Anthion", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", turnin = { 1423, 26.1, 11.3 } }
Q[8938] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8978 }, class = { HUNTER = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8939] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8978 }, class = { MAGE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8940] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8978 }, class = { PRIEST = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8941] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8978 }, class = { ROGUE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8942] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8978 }, class = { SHAMAN = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8943] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8978 }, class = { WARLOCK = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8944] = { name = "Just Compensation", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8978 }, class = { WARRIOR = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8945] = { name = "Dead Man's Plea", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", dungeon = "Stratholme" }
Q[8947] = { name = "Anthion's Strange Request", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 8946 }, turnin = { 1423, 26.1, 11.3 } }
Q[8948] = { name = "Anthion's Old Friend", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 8947 }, dungeon = "Dire Maul" }
Q[8957] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 9015 }, class = { SHAMAN = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[8961] = { name = "Three Kings of Flame", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8962] = { name = "Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8961 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8963] = { name = "Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8961 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8964] = { name = "Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8961 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8965] = { name = "Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8961 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8967] = { name = "The Left Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Dire Maul", turnin = { 1415, 48.9, 63.9 } }
Q[8968] = { name = "The Left Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Stratholme", turnin = { 1415, 48.9, 63.9 } }
Q[8969] = { name = "The Left Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Scholomance", turnin = { 1415, 48.9, 63.9 } }
Q[8970] = { name = "I See Alcaz Island In Your Future...", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8978] = { name = "Return to Mokvar", level = 60, minLevel = 58, map = 1446, x = 52.5, y = 27.2, giver = "Mux Manascrambler", pre = { 8928 }, turnin = { 1454, 35.0, 38.3 } }
Q[8985] = { name = "More Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8970 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8986] = { name = "More Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8970 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8987] = { name = "More Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8970 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8988] = { name = "More Components of Importance", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8970 }, group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8990] = { name = "The Right Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Dire Maul", turnin = { 1415, 48.9, 63.9 } }
Q[8991] = { name = "The Right Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Stratholme", turnin = { 1415, 48.9, 63.9 } }
Q[8992] = { name = "The Right Piece of Lord Valthalak's Amulet", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", dungeon = "Scholomance", turnin = { 1415, 48.9, 63.9 } }
Q[8994] = { name = "Final Preparations", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", group = true, turnin = { 1415, 48.9, 63.9 } }
Q[8998] = { name = "Back to the Beginning", level = 60, minLevel = 58, map = 1415, x = 48.9, y = 63.9, giver = "Bodley", pre = { 8996 }, turnin = { 1454, 35.0, 38.3 } }
Q[9007] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8998 }, class = { DRUID = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9008] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8998 }, class = { HUNTER = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9009] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8998 }, class = { PRIEST = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9010] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8998 }, class = { ROGUE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9011] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8998 }, class = { SHAMAN = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9012] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8998 }, class = { WARLOCK = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9013] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8998 }, class = { WARRIOR = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9014] = { name = "Saving the Best for Last", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", pre = { 8998 }, class = { MAGE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9016] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 9015 }, class = { DRUID = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9017] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 9015 }, class = { HUNTER = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9018] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 9015 }, class = { MAGE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9019] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 9015 }, class = { PRIEST = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9020] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 9015 }, class = { ROGUE = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9021] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 9015 }, class = { WARLOCK = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9022] = { name = "Anthion's Parting Words", level = 60, minLevel = 58, map = 1423, x = 26.1, y = 11.3, giver = "Anthion Harmon", pre = { 9015 }, class = { WARRIOR = true }, group = true, turnin = { 1454, 35.0, 38.3 } }
Q[9023] = { name = "The Perfect Poison", level = 60, minLevel = 60, map = 1451, x = 52.1, y = 39.1, giver = "Dirk Thunderwood", group = true, turnin = { 1451, 52.1, 39.1 } }
Q[9032] = { name = "Bodley's Unfortunate Fate", level = 60, minLevel = 58, map = 1454, x = 35.0, y = 38.3, giver = "Mokvar", turnin = { 1415, 48.9, 63.9 } }
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
Q[9272] = { name = "Dressing the Part", level = 55, minLevel = 49, map = 1434, x = 30.6, y = 90.6, giver = "Fleet Master Firallon", turnin = { 1434, 30.6, 90.6 } }
Q[9665] = { name = "Bolstering Our Defenses", level = 60, minLevel = 55, map = 1423, x = 70.4, y = 47.9, giver = "Emmisary Gormok", turnin = { 1423, 70.4, 47.9 } }
Q[76156] = { name = "Stalk With The Earthmother", level = 10, minLevel = 4, map = 1456, x = 39.4, y = 65.8, giver = "Boarton Shadetotem", turnin = { 1456, 39.4, 65.8 } }
Q[76160] = { name = "Stalk With The Earthmother", level = 11, minLevel = 4, map = 1456, x = 39.4, y = 65.8, giver = "Boarton Shadetotem", pre = { 76156 }, turnin = { 1456, 39.4, 65.8 } }
Q[76240] = { name = "Stalk With The Earthmother", level = 11, minLevel = 4, map = 1456, x = 39.4, y = 65.8, giver = "Boarton Shadetotem", pre = { 76160 }, turnin = { 1456, 39.4, 65.8 } }
Q[79192] = { name = "Stepping Stones", level = 24, minLevel = 14, map = 1413, x = 46.4, y = 73.9, giver = "Burned-Out Remains", turnin = { 1442, 40.8, 52.6 } }
Q[79362] = { name = "Grant's Shield", level = 25, minLevel = 18, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", race = { ORC = true, TAUREN = true, TROLL = true }, class = { SHAMAN = true }, turnin = { 1416, 80.5, 66.9 } }
Q[79363] = { name = "Silvia's Sword", level = 26, minLevel = 18, map = 1416, x = 80.5, y = 66.9, giver = "Bath'rah the Windwatcher", race = { ORC = true, TAUREN = true, TROLL = true }, class = { SHAMAN = true }, turnin = { 1416, 80.5, 66.9 } }
Q[79980] = { name = "Scramble", level = 24, minLevel = 14, map = 1442, x = 40.8, y = 52.6, giver = "Pocket Litter", turnin = { 1442, 39.6, 49.9 } }
Q[86576] = { name = "Bloodfury Trinkets", level = 26, minLevel = 18, map = 1442, x = 47.2, y = 61.2, giver = "Maggran Earthbinder", group = true, turnin = { 1442, 47.2, 64.0 } }
Q[86784] = { name = "Sticks and Bones", level = 7, minLevel = 4, map = 1420, x = 58.5, y = 51.4, giver = "Deathguard Bartholomew", turnin = { 1420, 57.3, 55.5 } }
Q[91920] = { name = "Wild Eyes", level = 11, minLevel = 10, map = 1421, x = 53.4, y = 12.6, giver = "Quinn Yorick", turnin = { 1421, 42.8, 40.9 } }
Q[91921] = { name = "Return to Quinn (Again)", level = 11, minLevel = 10, map = 1421, x = 42.8, y = 40.9, giver = "Apothecary Renferrel", turnin = { 1421, 53.4, 12.6 } }
Q[92401] = { name = "A Frightened Request", level = 22, minLevel = 15, map = 1421, x = 44.5, y = 43.0, giver = "Tabitha Heartweaver", dungeon = "Ruins of Lordaeron", turnin = { 1421, 44.5, 43.0 } }
Q[92421] = { name = "Light's Justice", level = 22, minLevel = 15, map = 1458, x = 58.1, y = 89.5, giver = "Morbin Lightbane", dungeon = "Ruins of Lordaeron", turnin = { 1458, 58.1, 89.5 } }
Q[92422] = { name = "The Wrath of Rath'mael", level = 22, minLevel = 15, map = 1420, x = 65.2, y = 60.2, giver = "Deathguard Kristof", dungeon = "Ruins of Lordaeron", turnin = { 1420, 65.2, 60.2 } }
Q[92434] = { name = "Blood in the Streets", level = 34, minLevel = 30, map = 1424, x = 61.6, y = 20.9, giver = "Magus Wordeen Voidglare", turnin = { 1421, 68.6, 45.1 } }
Q[92460] = { name = "Coming of Age", level = 1, minLevel = 1, map = 2521, x = 42.8, y = 23.4, giver = "Ailee Farheart", turnin = { 2521, 41.8, 23.5 } }
Q[92461] = { name = "Harmony in Balance", level = 1, minLevel = 1, map = 2521, x = 41.8, y = 23.5, giver = "Rorian the Dayseeker", pre = { 92460 }, turnin = { 2521, 41.8, 23.5 } }
Q[92462] = { name = "Infestation Investigation", level = 2, minLevel = 1, map = 2521, x = 43.4, y = 24.8, giver = "Elatrell Featherlight", pre = { 92460 }, turnin = { 2521, 43.4, 24.8 } }
Q[92463] = { name = "The Cirrusfly Queen", level = 3, minLevel = 2, map = 2521, x = 43.4, y = 24.8, giver = "Elatrell Featherlight", pre = { 92462 }, turnin = { 2521, 43.4, 24.8 } }
Q[92464] = { name = "Elemental Unrest", level = 3, minLevel = 2, map = 2521, x = 41.8, y = 23.5, giver = "Rorian the Dayseeker", turnin = { 2521, 47.2, 22.0 } }
Q[92465] = { name = "Agitators", level = 3, minLevel = 2, map = 2521, x = 47.2, y = 22.0, giver = "Yala Windwatcher", turnin = { 2521, 47.2, 22.0 } }
Q[92466] = { name = "Call of Earth", level = 4, minLevel = 3, map = 2521, x = 42.8, y = 23.6, giver = "Windshaper Boro", class = { SHAMAN = true }, turnin = { 2521, 42.8, 23.6 } }
Q[92467] = { name = "Call of Earth", level = 4, minLevel = 3, map = 2521, x = 42.8, y = 23.6, giver = "Windshaper Boro", class = { SHAMAN = true }, turnin = { 2521, 49.7, 23.8 } }
Q[92468] = { name = "Call of Earth", level = 4, minLevel = 3, map = 2521, x = 49.7, y = 23.8, giver = "Minor Manifestation of Earth", pre = { 92467 }, class = { SHAMAN = true }, turnin = { 2521, 42.8, 23.6 } }
Q[92469] = { name = "Return to Rorian", level = 4, minLevel = 3, map = 2521, x = 47.2, y = 22.0, giver = "Yala Windwatcher", pre = { 92465 }, turnin = { 2521, 41.8, 23.5 } }
Q[92470] = { name = "Foul Matriarch", level = 5, minLevel = 2, map = 2521, x = 42.8, y = 23.7, giver = "Aetheen of the Gales", pre = { 92471 }, turnin = { 2521, 42.8, 23.7 } }
Q[92471] = { name = "Aetheen of the Gales", level = 4, minLevel = 4, map = 2521, x = 41.8, y = 23.5, giver = "Rorian the Dayseeker", turnin = { 2521, 42.8, 23.7 } }
Q[92472] = { name = "The Next Step", level = 5, minLevel = 3, map = 2521, x = 42.8, y = 23.7, giver = "Aetheen of the Gales", pre = { 92470 }, turnin = { 2521, 45.7, 45.5 } }
Q[92473] = { name = "Aggressive Encroachment", level = 4, minLevel = 3, map = 2521, x = 42.4, y = 25.2, giver = "Valreaa Valewind", pre = { 92471 }, turnin = { 2521, 42.4, 25.2 } }
Q[92514] = { name = "Welcome to Shen'dar Village", level = 6, minLevel = 4, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", turnin = { 2521, 45.7, 45.5 } }
Q[92515] = { name = "The Problem With Prideclaws", level = 6, minLevel = 4, map = 2521, x = 44.7, y = 44.5, giver = "Indari Sunseam", turnin = { 2521, 44.7, 44.5 } }
Q[92516] = { name = "Hippogryph Harrassment", level = 7, minLevel = 4, map = 2521, x = 44.5, y = 45.0, giver = "Teeri Wellwind", turnin = { 2521, 44.5, 45.0 } }
Q[92517] = { name = "The Criminal Element", level = 7, minLevel = 4, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", turnin = { 2521, 45.7, 45.5 } }
Q[92528] = { name = "Among the Faithful", level = 8, minLevel = 5, map = 2521, x = 46.9, y = 56.2, giver = "Missionary Jasaan", pre = { 92529 }, turnin = { 2521, 45.7, 45.5 } }
Q[92529] = { name = "Falaath Village", level = 8, minLevel = 5, map = 2521, x = 44.9, y = 45.5, giver = "Sania Silverstream", pre = { 93036 }, turnin = { 2521, 46.9, 56.2 } }
Q[92544] = { name = "Al'Aketh Thugs", level = 5, minLevel = 2, map = 2521, x = 38.3, y = 30.2, giver = "Hanaa Nightwind", turnin = { 2521, 38.3, 30.2 } }
Q[92550] = { name = "Havoc in the Highlands", level = 8, minLevel = 5, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", pre = { 92528 }, turnin = { 2521, 45.7, 45.5 } }
Q[92551] = { name = "Stolen Supplies", level = 8, minLevel = 5, map = 2521, x = 45.2, y = 45.2, giver = "Danarii Bellowveil", pre = { 92528 }, turnin = { 2521, 45.2, 45.2 } }
Q[92553] = { name = "Restocking the Larders", level = 6, minLevel = 4, map = 2521, x = 43.9, y = 43.9, giver = "Zerril Softbreeze", turnin = { 2521, 43.9, 43.9 } }
Q[92579] = { name = "To Valanaar", level = 8, minLevel = 6, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", pre = { 92550, 93927 }, turnin = { 2521, 66.1, 76.7 } }
Q[92595] = { name = "The Windshapers", level = 6, minLevel = 4, map = 2521, x = 43.5, y = 44.8, giver = "Illaya Amberwind", turnin = { 2521, 43.5, 44.8 } }
Q[92640] = { name = "Desperate Times", level = 11, minLevel = 6, map = 2521, x = 66.2, y = 76.5, giver = "Talaanis Shadowsong", pre = { 94568 }, turnin = { 2521, 66.1, 76.7 } }
Q[92642] = { name = "Disrupting Logistics", level = 11, minLevel = 6, map = 2521, x = 69.7, y = 67.1, giver = "Yorana Windyreed", pre = { 93320 }, turnin = { 2521, 69.7, 67.1 } }
Q[92643] = { name = "The Turncoat", level = 11, minLevel = 6, map = 2521, x = 66.2, y = 76.5, giver = "Talaanis Shadowsong", pre = { 92881 }, turnin = { 2521, 56.0, 58.8 } }
Q[92644] = { name = "Unfortunate News", level = 11, minLevel = 6, map = 2521, x = 56.0, y = 58.8, giver = "Dead Cultist", pre = { 92643 }, turnin = { 2521, 66.2, 76.5 } }
Q[92645] = { name = "Breaking the Breaker", level = 11, minLevel = 6, map = 2521, x = 69.7, y = 67.1, giver = "Yorana Windyreed", pre = { 93320 }, turnin = { 2521, 69.7, 67.1 } }
Q[92646] = { name = "Confront Lorthuna", level = 12, minLevel = 7, map = 2521, x = 65.2, y = 50.4, giver = "Valennia Stormfist", pre = { 93958 }, turnin = { 2521, 59.1, 79.8 } }
Q[92679] = { name = "Blood Tithe", level = 9, minLevel = 5, map = 2521, x = 62.1, y = 73.2, giver = "Alvarion Windfield", turnin = { 2521, 46.7, 82.0 } }
Q[92682] = { name = "Make Yourself Useful", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92679 }, turnin = { 2521, 46.7, 82.0 } }
Q[92683] = { name = "Flutterfly Dust", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92679 }, turnin = { 2521, 46.7, 82.0 } }
Q[92684] = { name = "Ornery Ornery Galestriders", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92679 }, turnin = { 2521, 46.7, 82.0 } }
Q[92685] = { name = "The Hills Have Eyes", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92682, 92683, 92684 }, turnin = { 2521, 46.7, 82.0 } }
Q[92693] = { name = "Standing Our Ground", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92685 }, turnin = { 2521, 46.7, 82.0 } }
Q[92698] = { name = "What Is My Purpose?", level = 9, minLevel = 5, map = 2521, x = 48.6, y = 78.4, giver = "Malfunctioning Cyclone Construct", pre = { 92679 }, turnin = { 2521, 46.7, 82.0 } }
Q[92700] = { name = "The Grand Skyseer", level = 9, minLevel = 4, map = 2521, x = 66.1, y = 76.7, giver = "Valennia Stormfist", pre = { 92579 }, turnin = { 2521, 59.1, 79.8 } }
Q[92703] = { name = "Deliver the News", level = 9, minLevel = 5, map = 2521, x = 46.7, y = 82.0, giver = "Aamelia Windfield", pre = { 92693 }, turnin = { 2521, 62.1, 73.2 } }
Q[92706] = { name = "WANTED: Bruuz", level = 20, minLevel = 15, map = 1413, x = 62.6, y = 37.5, giver = "WANTED", turnin = { 1413, 62.7, 36.2 } }
Q[92708] = { name = "A Grand Adventure", level = 12, minLevel = 7, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", pre = { 92700 }, turnin = { 2521, 59.1, 79.8 } }
Q[92743] = { name = "A Conqueror's Crown", level = 40, minLevel = 30, map = 1443, x = 75.0, y = 68.2, giver = "Warug", turnin = { 1443, 75.0, 68.2 } }
Q[92871] = { name = "In Service of Zephras", level = 11, minLevel = 6, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", pre = { 93746 }, turnin = { 2521, 66.1, 76.7 } }
Q[92880] = { name = "Return to Valanaar", level = 11, minLevel = 6, map = 2521, x = 69.7, y = 67.1, giver = "Yorana Windyreed", pre = { 92642, 92645 }, turnin = { 2521, 66.1, 76.7 } }
Q[92881] = { name = "The High Elder's Request", level = 11, minLevel = 6, map = 2521, x = 66.1, y = 76.7, giver = "Valennia Stormfist", pre = { 92880 }, turnin = { 2521, 66.2, 76.5 } }
Q[92947] = { name = "Making Our Move", level = 12, minLevel = 7, map = 2521, x = 61.2, y = 71.0, giver = "Valennia Stormfist", pre = { 93065 }, turnin = { 2521, 63.8, 50.5 } }
Q[93034] = { name = "Valley of Bones", level = 38, minLevel = 30, map = 1443, x = 36.2, y = 79.2, giver = "Uthek the Wise", turnin = { 2652, 21.2, 23.2 } }
Q[93035] = { name = "Ravaging Ravagers", level = 38, minLevel = 30, map = 2652, x = 21.2, y = 23.2, giver = "Nerlokh", turnin = { 2652, 21.2, 23.2 } }
Q[93036] = { name = "Infiltrating the Cult", level = 8, minLevel = 5, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", pre = { 92517 }, turnin = { 2521, 44.9, 45.5 } }
Q[93037] = { name = "Outing Outcasts", level = 40, minLevel = 30, map = 2652, x = 21.2, y = 23.2, giver = "Nerlokh", turnin = { 2652, 21.2, 23.2 } }
Q[93041] = { name = "Facing the Truth", level = 38, minLevel = 30, map = 2652, x = 21.2, y = 23.2, giver = "Nerlokh", turnin = { 1443, 36.2, 79.2 } }
Q[93065] = { name = "Prepare for Battle", level = 12, minLevel = 7, map = 2521, x = 66.1, y = 76.7, giver = "Valennia Stormfist", pre = { 92640 }, turnin = { 2521, 61.2, 71.0 } }
Q[93090] = { name = "What Comes Next", level = 13, minLevel = 7, map = 2521, x = 66.2, y = 76.5, giver = "Talaanis Shadowsong", pre = { 93836 }, turnin = { 2521, 59.1, 79.8 } }
Q[93128] = { name = "Khan Jehn", level = 42, minLevel = 30, map = 2652, x = 21.2, y = 23.2, giver = "Nerlokh", turnin = { 1443, 36.2, 79.2 } }
Q[93159] = { name = "The Strange Hermit", level = 13, minLevel = 8, map = 2521, x = 54.0, y = 38.9, giver = "Strange Hermit", turnin = { 2521, 54.0, 38.9 } }
Q[93160] = { name = "The Forest's Bounty", level = 13, minLevel = 8, map = 2521, x = 54.0, y = 38.9, giver = "Strange Hermit", pre = { 93159 }, turnin = { 2521, 54.0, 38.9 } }
Q[93165] = { name = "Mercy Falls on Deaf Ears", level = 13, minLevel = 8, map = 2521, x = 63.8, y = 36.0, giver = "Vayn Moongaze", turnin = { 2521, 63.8, 36.0 } }
Q[93172] = { name = "Free the Hollows", level = 13, minLevel = 8, map = 2521, x = 54.0, y = 38.9, giver = "Strange Hermit", pre = { 93159 }, turnin = { 2521, 54.0, 38.9 } }
Q[93176] = { name = "My Little Friends", level = 35, minLevel = 25, map = 1435, x = 25.2, y = 54.2, giver = "Amaryllis Webb", turnin = { 1435, 25.2, 54.2 } }
Q[93225] = { name = "Carved Centaur Totems", level = 40, minLevel = 30, map = 1443, x = 56.3, y = 59.7, giver = "Gurda Wildmane", turnin = { 1443, 56.3, 59.7 } }
Q[93317] = { name = "Crab Season", level = 9, minLevel = 4, map = 2521, x = 60.5, y = 73.1, giver = "Nyalah Brightfire", turnin = { 2521, 60.5, 73.1 } }
Q[93318] = { name = "WANTED: Vulgara the Insatiable", level = 9, minLevel = 4, map = 2521, x = 43.4, y = 45.8, giver = "Bounty Available: Vulgara the Insatiable!", turnin = { 2521, 45.2, 45.2 } }
Q[93319] = { name = "Pilfered Windstones", level = 7, minLevel = 4, map = 2521, x = 44.5, y = 45.0, giver = "Teeri Wellwind", turnin = { 2521, 44.5, 45.0 } }
Q[93320] = { name = "Tower Defense", level = 11, minLevel = 6, map = 2521, x = 66.1, y = 76.7, giver = "Valennia Stormfist", turnin = { 2521, 69.7, 67.1 } }
Q[93552] = { name = "Harvesting Windstones", level = 4, minLevel = 2, map = 2521, x = 43.4, y = 24.0, giver = "Dalia the Collector", pre = { 92461 }, turnin = { 2521, 43.4, 24.0 } }
Q[93663] = { name = "Lost in Transit", level = 35, minLevel = 30, map = 1435, x = 44.7, y = 57.2, giver = "Dar", turnin = { 1435, 26.0, 31.4 } }
Q[93680] = { name = "Key to the City", level = 33, minLevel = 30, map = 1424, x = 61.6, y = 20.9, giver = "Magus Wordeen Voidglare", turnin = { 1424, 61.6, 20.9 } }
Q[93735] = { name = "The Broken Construct", level = 9, minLevel = 4, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", pre = { 92700 }, turnin = { 2521, 59.1, 73.0 } }
Q[93736] = { name = "Unwelcome Spirits", level = 9, minLevel = 4, map = 2521, x = 58.1, y = 78.3, giver = "Endaria Mistgaze", pre = { 92700 }, turnin = { 2521, 58.1, 78.3 } }
Q[93737] = { name = "The Broken Construct", level = 9, minLevel = 4, map = 2521, x = 59.1, y = 73.0, giver = "Riaani Nightwind", pre = { 93735 }, turnin = { 2521, 59.1, 73.0 } }
Q[93738] = { name = "The Broken Construct", level = 9, minLevel = 4, map = 2521, x = 59.1, y = 73.0, giver = "Riaani Nightwind", pre = { 93737 }, turnin = { 2521, 59.1, 79.8 } }
Q[93740] = { name = "Blood for Blood", level = 11, minLevel = 6, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", pre = { 93746 }, turnin = { 2521, 59.1, 79.8 } }
Q[93746] = { name = "A Firm Response", level = 9, minLevel = 4, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", pre = { 93738 }, turnin = { 2521, 59.1, 79.8 } }
Q[93836] = { name = "The Fate of Zephras", level = 12, minLevel = 7, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", pre = { 92646 }, turnin = { 2521, 66.2, 76.5 } }
Q[93926] = { name = "The Western Watch", level = 8, minLevel = 5, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", pre = { 92528 }, turnin = { 2521, 42.4, 62.0 } }
Q[93927] = { name = "A Last Request", level = 8, minLevel = 5, map = 2521, x = 42.4, y = 62.0, giver = "Peacekeeper Vaaniel", pre = { 93926 }, turnin = { 2521, 45.7, 45.5 } }
Q[93948] = { name = "Deliver the Signet", level = 9, minLevel = 6, map = 2521, x = 45.7, y = 45.5, giver = "Constable Aonda", pre = { 92550, 93927 }, turnin = { 2521, 66.2, 76.5 } }
Q[93949] = { name = "Bugged", level = 8, minLevel = 6, map = 2521, x = 66.1, y = 76.7, giver = "Valennia Stormfist", pre = { 93948 }, turnin = { 2521, 66.1, 76.7 } }
Q[93951] = { name = "A Little Beauty", level = 7, minLevel = 4, map = 2521, x = 44.9, y = 44.2, giver = "Taleen Shimmerthread", turnin = { 2521, 44.9, 44.2 } }
Q[93958] = { name = "The Inner Sanctum", level = 12, minLevel = 7, map = 2521, x = 63.8, y = 50.5, giver = "Hyusaa Quickbreeze", pre = { 92947 }, turnin = { 2521, 65.2, 50.4 } }
Q[94411] = { name = "Meddlesome Mages", level = 6, minLevel = 4, map = 2521, x = 43.5, y = 44.8, giver = "Illaya Amberwind", pre = { 92595 }, turnin = { 2521, 43.5, 44.8 } }
Q[94414] = { name = "The Anchors of Zephras", level = 2, minLevel = 2, map = 2521, x = 43.8, y = 24.1, giver = "Halaan Hawk-Eye", turnin = { 2521, 43.8, 24.1 } }
Q[94484] = { name = "Unnerving Silence", level = 11, minLevel = 8, map = 2521, x = 64.0, y = 75.1, giver = "Lotheluum Starbreeze", turnin = { 2521, 61.7, 39.2 } }
Q[94485] = { name = "Tears of the Lady", level = 12, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", turnin = { 2521, 61.7, 39.2 } }
Q[94486] = { name = "Feathers for Binding", level = 11, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", turnin = { 2521, 61.7, 39.2 } }
Q[94487] = { name = "Unwanted and Unworthy", level = 11, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", turnin = { 2521, 61.7, 39.2 } }
Q[94488] = { name = "The Ties That Bind", level = 11, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", pre = { 94485, 94486, 94487 }, turnin = { 2521, 61.7, 39.2 } }
Q[94489] = { name = "The Wounds of Betrayal", level = 12, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", pre = { 94485, 94486, 94487 }, turnin = { 2521, 61.7, 39.2 } }
Q[94490] = { name = "Ripped Missive", level = 12, minLevel = 9, map = 2521, x = 65.5, y = 36.3, giver = "Drop: Ripped Missive", pre = { 94485, 94486, 94487 }, turnin = { 2521, 61.7, 39.2 } }
Q[94491] = { name = "The Fate of the Den", level = 12, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", pre = { 94490 }, turnin = { 2521, 64.0, 75.1 } }
Q[94493] = { name = "A Sacrifice in Vain", level = 11, minLevel = 8, map = 2521, x = 61.7, y = 39.2, giver = "Elegael Thornpaw", turnin = { 2521, 61.7, 39.2 } }
Q[94568] = { name = "The Cult's True Plans", level = 11, minLevel = 6, map = 2521, x = 66.2, y = 76.5, giver = "Talaanis Shadowsong", pre = { 92644 }, turnin = { 2521, 66.2, 76.5 } }
Q[94896] = { name = "Aid For The Refugees", level = 11, minLevel = 8, map = 2521, x = 66.0, y = 74.4, giver = "Ealaane Nimbuswalker", turnin = { 2521, 66.0, 74.4 } }
Q[94897] = { name = "The Fate of a Loved One", level = 11, minLevel = 8, map = 2521, x = 66.0, y = 74.4, giver = "Ealaane Nimbuswalker", turnin = { 2521, 66.0, 74.4 } }
Q[95216] = { name = "The New Plague", level = 22, minLevel = 16, map = 1458, x = 46.3, y = 71.9, giver = "Theodore Griffs", dungeon = "Ruins of Lordaeron", turnin = { 1458, 46.3, 71.9 } }
Q[95314] = { name = "That Shadowvale Green Elixir", level = 10, minLevel = 7, map = 1420, x = 59.4, y = 52.2, giver = "Carolai Anise", turnin = { 1420, 59.4, 52.2 } }
Q[95328] = { name = "Whispering Horror Residue", level = 10, minLevel = 7, map = 1420, x = 9.2, y = 60.6, giver = "Drop: Whispering Horror Residue", turnin = { 1458, 49.1, 14.6 } }
Q[95349] = { name = "The Earthen Ring", level = 13, minLevel = 7, map = 2521, x = 59.1, y = 79.8, giver = "Ayessa Dawnsinger", pre = { 93090 }, turnin = { 1412, 33.4, 22.6 } }
Q[95494] = { name = "Bruised Pride and Lion Hides", level = 18, minLevel = 14, map = 1413, x = 43.8, y = 12.2, giver = "Vrang Wildgore", turnin = { 1413, 43.8, 12.2 } }
Q[95495] = { name = "The Hermit Tanner", level = 18, minLevel = 14, map = 1413, x = 43.8, y = 12.2, giver = "Vrang Wildgore", turnin = { 1413, 42.0, 11.4 } }
Q[95507] = { name = "Vrang's Game", level = 18, minLevel = 14, map = 1413, x = 43.8, y = 12.2, giver = "Vrang Wildgore", turnin = { 1413, 43.8, 12.2 } }
Q[95508] = { name = "Unwelcome Guests", level = 18, minLevel = 14, map = 1413, x = 42.0, y = 11.4, giver = "Walton", turnin = { 1413, 42.0, 11.4 } }
Q[95621] = { name = "Trouble in the Valley", level = 18, minLevel = 14, map = 1413, x = 42.0, y = 11.4, giver = "Walton", turnin = { 1413, 42.0, 11.4 } }
Q[95663] = { name = "Dragonmaw Rumors", level = 31, minLevel = 24, map = 1417, x = 74.5, y = 35.6, giver = "Zaruk", dungeon = "Excavation Site: Wetlands" }
Q[95697] = { name = "Changing Tastes", level = 31, minLevel = 24, map = 1454, x = 57.2, y = 53.3, giver = "Borstan", dungeon = "Excavation Site: Wetlands", turnin = { 1454, 57.2, 53.3 } }
Q[95774] = { name = "Her Name Is Olgra", level = 20, minLevel = 14, map = 1413, x = 52.0, y = 31.6, giver = "Mankrik", turnin = { 1413, 52.0, 31.6 } }
Q[95805] = { name = "Grace of An'she and Mu'sha", level = 4, minLevel = 1, map = 1412, x = 42.5, y = 90.1, giver = "Seer Graytongue", pre = { 755 }, turnin = { 1412, 56.6, 88.7 } }
Q[95883] = { name = "The Tortured Soul", level = 23, minLevel = 20, map = 1421, x = 58.1, y = 69.8, giver = "Offering Stone", turnin = { 1421, 58.1, 69.8 } }
Q[95884] = { name = "The Offering Stone", level = 23, minLevel = 20, map = 1421, x = 58.7, y = 71.3, giver = "Drop: Note Scrap", turnin = { 1421, 58.1, 69.8 } }
Q[95885] = { name = "The Offering of Blood", level = 23, minLevel = 20, map = 1421, x = 58.1, y = 69.8, giver = "Offering Stone", turnin = { 1421, 58.1, 69.8 } }
Q[95981] = { name = "Watching the Roads", level = 20, minLevel = 10, map = 1421, x = 44.0, y = 40.9, giver = "Shadow Priest Allister", turnin = { 1421, 44.0, 40.9 } }
Q[96130] = { name = "Chakuyak", level = 5, minLevel = 4, map = 1412, x = 46.9, y = 59.6, giver = "Yaw Sharpmane", turnin = { 1412, 46.9, 59.6 } }
Q[96222] = { name = "Khan Hratha", level = 42, minLevel = 30, map = 1443, x = 43.5, y = 78.9, giver = "Umarak", group = true }
Q[96241] = { name = "Talkin' bout Toxins, Mon", level = 30, minLevel = 23, map = 1412, x = 32.5, y = 20.7, giver = "Mazu'kon", turnin = { 1412, 32.5, 20.7 } }
Q[96259] = { name = "Defending the Dead", level = 30, minLevel = 23, map = 1412, x = 33.4, y = 22.6, giver = "Muln Earthfury", turnin = { 1412, 33.4, 22.6 } }
Q[96260] = { name = "Stronger than Steel", level = 30, minLevel = 23, map = 1412, x = 32.5, y = 20.0, giver = "Yorn Grimtotem", turnin = { 1412, 32.5, 20.0 } }
Q[96261] = { name = "The Broodmother", level = 31, minLevel = 23, map = 1412, x = 33.4, y = 22.6, giver = "Muln Earthfury", turnin = { 1412, 33.4, 22.6 } }
Q[96294] = { name = "A Darker Truth", level = 30, minLevel = 23, map = 1412, x = 33.4, y = 7.5, giver = "Drop: Bloody Parchment", turnin = { 1412, 33.4, 22.6 } }
Q[96821] = { name = "Legging It", level = 6, minLevel = 1, map = 1411, x = 56.0, y = 73.9, giver = "Vel'rin Fang", turnin = { 1411, 52.0, 43.5 } }
Q[96822] = { name = "For Honor", level = 6, minLevel = 3, map = 1411, x = 54.0, y = 42.6, giver = "Turroc", turnin = { 1411, 54.0, 42.6 } }
Q[96825] = { name = "This Fruit Could Bite Back", level = 6, minLevel = 3, map = 1411, x = 51.1, y = 42.5, giver = "Cook Torka", turnin = { 1411, 51.1, 42.5 } }
Q[96876] = { name = "Ukor's Lost Pack", level = 8, minLevel = 5, map = 1411, x = 50.7, y = 56.3, giver = "Drop: Ukor's Lost Pack", turnin = { 1411, 52.1, 68.3 } }
Q[96877] = { name = "Halikor's Hoof", level = 12, minLevel = 6, map = 1411, x = 41.9, y = 25.9, giver = "Drop: Halikor's Hoof", turnin = { 1454, 63.3, 44.8 } }
Q[96895] = { name = "The Argent Emissary", level = 13, minLevel = 10, map = 1420, x = 63.5, y = 56.5, giver = "Deathguard Terrence", turnin = { 1420, 65.4, 62.9 } }
Q[96896] = { name = "A Righteous Cause", level = 13, minLevel = 10, map = 1420, x = 22.0, y = 44.7, giver = "Leonid Barthalomew the Revered", turnin = { 1420, 22.0, 44.7 } }
Q[96897] = { name = "The Cult of the Damned", level = 13, minLevel = 10, map = 1420, x = 65.4, y = 62.9, giver = "Hadric Harlson", turnin = { 1420, 65.4, 62.9 } }
Q[96898] = { name = "Remnants of War", level = 13, minLevel = 10, map = 1420, x = 65.4, y = 62.9, giver = "Hadric Harlson", turnin = { 1420, 65.4, 62.9 } }
Q[96899] = { name = "Bandarion Keep", level = 13, minLevel = 10, map = 1420, x = 65.4, y = 62.9, giver = "Hadric Harlson", turnin = { 1420, 22.0, 44.7 } }
Q[96984] = { name = "Heart of Disruption", level = 33, minLevel = 24, map = 1421, x = 68.6, y = 45.1, giver = "Image of Archmage Modera", dungeon = "City of Dalaran", turnin = { 1424, 61.6, 20.9 } }
Q[96986] = { name = "The Grave Knight", level = 33, minLevel = 24, map = 1424, x = 62.6, y = 20.6, giver = "Melisara", dungeon = "City of Dalaran", turnin = { 1424, 62.6, 20.6 } }
Q[96988] = { name = "Source of Power", level = 33, minLevel = 24, map = 1458, x = 46.6, y = 74.1, giver = "Doctor Martin Felben", dungeon = "City of Dalaran", turnin = { 1458, 46.6, 74.1 } }
Q[97003] = { name = "Chol'aruk the Ravener", level = 21, minLevel = 15, map = 1413, x = 52.6, y = 29.1, giver = "Gur'ak", turnin = { 1413, 52.6, 29.1 } }
Q[97223] = { name = "Bloodtalon Matriarch", level = 8, minLevel = 5, map = 1411, x = 55.3, y = 75.5, giver = "Xar'Ti", turnin = { 1411, 55.3, 75.5 } }
Q[97225] = { name = "Forgotten Loa Idols", level = 9, minLevel = 4, map = 1411, x = 55.9, y = 74.4, giver = "Master Vornal", turnin = { 1411, 56.0, 74.7 } }
Q[97242] = { name = "Yelmak's Medley", level = 15, minLevel = 9, map = 1454, x = 56.0, y = 34.1, giver = "Kor'geld", turnin = { 1454, 56.0, 34.1 } }
Q[97246] = { name = "Meal Appeal", level = 15, minLevel = 5, map = 1454, x = 55.7, y = 72.2, giver = "Thatog", turnin = { 1454, 57.2, 53.3 } }
Q[97249] = { name = "Favorite Food", level = 15, minLevel = 5, map = 1454, x = 57.2, y = 53.3, giver = "Borstan", turnin = { 1454, 36.5, 29.1 } }
Q[97250] = { name = "Wrongly Blamed, Justly Corrected", level = 23, minLevel = 18, map = 1413, x = 44.6, y = 59.3, giver = "Grunt Logmar", turnin = { 1413, 44.6, 59.3 } }
Q[97253] = { name = "Parts and Pieces", level = 14, minLevel = 9, map = 1413, x = 63.1, y = 36.3, giver = "Wrenix the Wretched", turnin = { 1413, 63.1, 36.3 } }
Q[97265] = { name = "Hate the Hatefury", level = 33, minLevel = 28, map = 1443, x = 25.4, y = 67.2, giver = "Aka'rai" }
Q[97275] = { name = "Whuut's the Rush", level = 15, minLevel = 9, map = 1454, x = 56.8, y = 33.0, giver = "Yelmak", turnin = { 1454, 55.8, 32.9 } }
Q[97279] = { name = "Wayward Weapons", level = 2, minLevel = 1, map = 1411, x = 42.1, y = 68.3, giver = "Gornek", turnin = { 1411, 40.5, 68 } }
Q[97281] = { name = "A Simmering Storm", level = 11, minLevel = 7, map = 1411, x = 52.0, y = 21.4, giver = "Drop: Dull Storm Orb", turnin = { 1411, 46.4, 22.9 } }
Q[97282] = { name = "Stormy Potential", level = 11, minLevel = 7, map = 1411, x = 46.4, y = 22.9, giver = "Rezlak", pre = { 97281 }, turnin = { 1411, 46.4, 22.9 } }
Q[97287] = { name = "Shrewd Negotiations", level = 33, minLevel = 24, map = 1424, x = 61.6, y = 20.9, giver = "Magus Wordeen Voidglare" }
Q[97289] = { name = "Unending Torment", level = 21, minLevel = 16, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", dungeon = "Ruins of Lordaeron", turnin = { 1458, 45.9, 61.7 } }
Q[97290] = { name = "Unending Torment", level = 21, minLevel = 16, map = 1458, x = 45.9, y = 61.7, giver = "Unfinished Abomination", turnin = { 1458, 48.8, 69.3 } }
Q[97291] = { name = "Unending Torment", level = 21, minLevel = 16, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", dungeon = "Ruins of Lordaeron", turnin = { 1458, 48.8, 69.3 } }
Q[97292] = { name = "Unending Torment", level = 21, minLevel = 16, map = 1458, x = 48.8, y = 69.3, giver = "Master Apothecary Faranell", dungeon = "Ruins of Lordaeron", turnin = { 1458, 48.8, 69.3 } }
Q[97326] = { name = "Rocks to Rests", level = 15, minLevel = 5, map = 1454, x = 36.8, y = 29.1, giver = "Thra", turnin = { 1454, 36.8, 29.1 } }
Q[97485] = { name = "Traditions of the Bluff", level = 10, minLevel = 3, map = 1456, x = 38, y = 55.9, giver = "Eylah Sunhorn", turnin = { 1456, 38, 55.9 } }
Q[97538] = { name = "Pigments for Paints", level = 26, minLevel = 20, map = 1456, x = 54.1, y = 47.0, giver = "Tah Winterhoof", turnin = { 1456, 54.1, 47.0 } }
Q[97539] = { name = "Silky Sutures", level = 36, minLevel = 30, map = 1417, x = 73.4, y = 36.9, giver = "Doctor Gregory Victor" }
Q[97558] = { name = "Hides for the Forsaken", level = 11, minLevel = 6, map = 1420, x = 65.4, y = 60.1, giver = "Shelene Rhobart", turnin = { 1420, 65.4, 60.1 } }
Q[97891] = { name = "Prompt Potion Runner", level = 16, minLevel = 9, map = 1458, x = 58.6, y = 54.7, giver = "Alessandro Luca", turnin = { 1458, 46.6, 74.1 } }
Q[97985] = { name = "Thundering Hearts", level = 33, minLevel = 25, map = 1458, x = 49.1, y = 70.1, giver = "Calder Gray", turnin = { 1458, 49.1, 70.1 } }
Q[98069] = { name = "Stolen Freewind Supplies", level = 31, minLevel = 27, map = 1441, x = 46.2, y = 51.5, giver = "Jandia", turnin = { 1441, 46.2, 51.5 } }
Q[98070] = { name = "Stop the Screeching", level = 31, minLevel = 27, map = 1441, x = 46.2, y = 51.5, giver = "Jandia", turnin = { 1441, 46.2, 51.5 } }
Q[98094] = { name = "Scout Support", level = 25, minLevel = 19, map = 1424, x = 62.3, y = 20.4, giver = "High Executor Darthalia", turnin = { 1424, 63.6, 53.1 } }
Q[98095] = { name = "Valuable Vantages", level = 25, minLevel = 19, map = 1424, x = 63.6, y = 53.1, giver = "Deathstalker Masoj", turnin = { 1424, 63.6, 53.1 } }
Q[98251] = { name = "Never Coming Back", level = 22, minLevel = 18, map = 1440, x = 40.4, y = 61.5, giver = "Va'xug Firefure", turnin = { 1440, 40.4, 61.5 } }
Q[98252] = { name = "A Void Path", level = 22, minLevel = 18, map = 1440, x = 40.4, y = 61.5, giver = "Va'xug Firefure", turnin = { 1440, 38.9, 57.9 } }
Q[98298] = { name = "Arugal's Folly", level = 16, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", turnin = { 1421, 44.2, 39.8 } }
Q[98299] = { name = "Stop the Spread", level = 20, minLevel = 9, map = 1421, x = 44.2, y = 39.8, giver = "Dalar Dawnweaver", turnin = { 1421, 44.2, 39.8 } }
Q[98389] = { name = "A Light in the Darkness", level = 4, minLevel = 2, map = 1420, x = 31.1, y = 66.4, giver = "Aramis Hammerhand", turnin = { 1420, 31.1, 66.4 } }
Q[98424] = { name = "Fizsprocket's Notes", level = 10, minLevel = 5, map = 1412, x = 61.2, y = 49.3, giver = "Drop: Mulgore Expansion Plans", turnin = { 1412, 54.8, 64.3 } }
Q[98427] = { name = "Ceasing Operations", level = 12, minLevel = 5, map = 1412, x = 54.8, y = 64.3, giver = "Morin Cloudstalker", pre = { 98424 }, turnin = { 1412, 54.8, 64.3 } }
Q[98430] = { name = "The Longwalkers", level = 8, minLevel = 1, map = 1412, x = 33.1, y = 65.9, giver = "Perith Stormhoof", turnin = { 1456, 60.3, 51.7 } }
Q[98435] = { name = "Thunderhorn's Report", level = 10, minLevel = 4, map = 1412, x = 47.5, y = 63.6, giver = "Mull Thunderhorn", pre = { 760 }, turnin = { 1456, 78.6, 28.6 } }
Q[98512] = { name = "Al'Aketh Assassins", level = 11, minLevel = 6, map = 2521, x = 56.8, y = 61.1, giver = "Fendaal Windstone", turnin = { 2521, 56.8, 61.1 } }
Q[98545] = { name = "Leonid's Letter", level = 13, minLevel = 10, map = 1420, x = 22.0, y = 44.7, giver = "Leonid Barthalomew the Revered", turnin = { 1458, 70.1, 47.3 } }
Q[98823] = { name = "Earthen Echo", level = 31, minLevel = 24, map = 1456, x = 71.1, y = 34.2, giver = "Bashana Runetotem", dungeon = "Excavation Site: Wetlands", turnin = { 1412, 33.4, 22.6 } }
Q[99048] = { name = "A Missing Hand", level = 11, minLevel = 9, map = 1411, x = 52.2, y = 43.1, giver = "Orgnil Soulscar", turnin = { 1411, 58.6, 45.6 } }
Q[99049] = { name = "Threat from Below", level = 11, minLevel = 9, map = 1411, x = 58.6, y = 45.6, giver = "Heglan Shadeeye", pre = { 99048 }, turnin = { 1411, 52.2, 43.1 } }
Q[99051] = { name = "Threat from Below", level = 11, minLevel = 9, map = 1411, x = 52.2, y = 43.1, giver = "Orgnil Soulscar", pre = { 99049 }, turnin = { 1411, 52.2, 43.1 } }
Q[99052] = { name = "Threat from Below", level = 12, minLevel = 10, map = 1411, x = 52.2, y = 43.1, giver = "Orgnil Soulscar", pre = { 99051 }, turnin = { 1411, 52.2, 43.1 } }
Q[99079] = { name = "Longwalker Malah", level = 9, minLevel = 4, map = 1412, x = 46.7, y = 63.8, giver = "Brave Wildrunner", turnin = { 1412, 57.6, 63.2 } }
Q[99080] = { name = "Drive Them Out", level = 9, minLevel = 4, map = 1412, x = 46.7, y = 63.4, giver = "Baine Bloodhoof", pre = { 99101 }, turnin = { 1412, 46.7, 63.4 } }
Q[99081] = { name = "Grim Tidings", level = 9, minLevel = 4, map = 1412, x = 57.6, y = 63.2, giver = "Malah Longwind", pre = { 99079 }, turnin = { 1412, 46.7, 63.8 } }
Q[99082] = { name = "The High Chieftain", level = 9, minLevel = 4, map = 1412, x = 46.7, y = 63.4, giver = "Baine Bloodhoof", pre = { 99080 }, turnin = { 1456, 60.3, 51.7 } }
Q[99101] = { name = "Our Ancient Enemy", level = 9, minLevel = 4, map = 1412, x = 46.7, y = 63.8, giver = "Brave Wildrunner", pre = { 99081 }, turnin = { 1412, 46.7, 63.4 } }
Q[99108] = { name = "Sparring Match", level = 6, minLevel = 4, map = 1412, x = 48.4, y = 63.7, giver = "Krang Stonehoof", turnin = { 1412, 48.4, 63.7 } }
Q[99123] = { name = "Lost in the Shadows", level = 8, minLevel = 4, map = 1411, x = 46.3, y = 78.6, giver = "Pal'juh", turnin = { 1411, 55.9, 74.4 } }
Q[99134] = { name = "Discipline", level = 6, minLevel = 4, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", turnin = { 1420, 60.6, 51.8 } }
Q[99141] = { name = "Patience", level = 6, minLevel = 4, map = 1420, x = 60.6, y = 51.8, giver = "Executor Zygand", turnin = { 1420, 60.6, 51.8 } }
Q[99142] = { name = "Tomb Weed", level = 11, minLevel = 5, map = 1420, x = 57.4, y = 48.9, giver = "Junior Apothecary Holland", turnin = { 1420, 57.4, 48.9 } }
Q[99144] = { name = "Seeking Refuge", level = 7, minLevel = 5, map = 1420, x = 32.0, y = 46.3, giver = "Bareth Dawnstone", turnin = { 1420, 60.2, 52.7 } }
Q[99152] = { name = "As Above, So Below", level = 10, minLevel = 7, map = 1420, x = 22.0, y = 47.2, giver = "Hilda the Breaker", turnin = { 1420, 22.0, 47.2 } }
Q[99153] = { name = "The One That Got Away", level = 10, minLevel = 7, map = 1420, x = 20.2, y = 46.5, giver = "Ephram Barbaro", turnin = { 1420, 20.2, 46.5 } }
Q[99156] = { name = "Rear Guard Patrol", level = 13, minLevel = 6, map = 1420, x = 65.5, y = 60.2, giver = "Deathguard Linnea", turnin = { 1420, 65.5, 60.2 } }
Q[99411] = { name = "Kyle's Gone Missing!", level = 7, minLevel = 5, map = 1412, x = 47.3, y = 57.6, giver = "Ahab Wheathoof", turnin = { 1412, 47.3, 57.6 } }
