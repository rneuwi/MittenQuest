--[[
    MittenQuest - Data/ZoneLevels.lua
    Level range of each zone, shown on the world map (MapLayers.lua): [uiMapID] = { min, max }.

    Classic zones use their usual ranges. Forever's new zones are set from their mobs' levels
    in QuestieDB (2026-11-12); adjust them if they feel off in game.
]]

local _, ns = ...
ns.ZoneLevels = {
    -- Kalimdor
    [1411] = { 1, 10 },   -- Durotar
    [1412] = { 1, 10 },   -- Mulgore
    [1438] = { 1, 10 },   -- Teldrassil
    [1439] = { 10, 20 },  -- Darkshore
    [1413] = { 10, 25 },  -- The Barrens
    [1442] = { 15, 27 },  -- Stonetalon Mountains
    [1440] = { 18, 30 },  -- Ashenvale
    [1441] = { 25, 35 },  -- Thousand Needles
    [1443] = { 30, 40 },  -- Desolace
    [1445] = { 35, 45 },  -- Dustwallow Marsh
    [1444] = { 40, 50 },  -- Feralas
    [1446] = { 40, 50 },  -- Tanaris
    [1447] = { 45, 55 },  -- Azshara
    [1448] = { 48, 55 },  -- Felwood
    [1449] = { 48, 55 },  -- Un'Goro Crater
    [1452] = { 53, 60 },  -- Winterspring
    [1451] = { 55, 60 },  -- Silithus

    -- Eastern Kingdoms
    [1426] = { 1, 10 },   -- Dun Morogh
    [1429] = { 1, 10 },   -- Elwynn Forest
    [1420] = { 1, 10 },   -- Tirisfal Glades
    [1432] = { 10, 20 },  -- Loch Modan
    [1436] = { 10, 20 },  -- Westfall
    [1421] = { 10, 20 },  -- Silverpine Forest
    [1433] = { 15, 25 },  -- Redridge Mountains
    [1431] = { 18, 30 },  -- Duskwood
    [1424] = { 20, 30 },  -- Hillsbrad Foothills
    [1437] = { 20, 30 },  -- Wetlands
    [1416] = { 30, 40 },  -- Alterac Mountains
    [1417] = { 30, 40 },  -- Arathi Highlands
    [1434] = { 30, 45 },  -- Stranglethorn Vale
    [1418] = { 35, 45 },  -- Badlands
    [1435] = { 35, 45 },  -- Swamp of Sorrows
    [1425] = { 40, 50 },  -- The Hinterlands
    [1427] = { 43, 50 },  -- Searing Gorge
    [1419] = { 45, 55 },  -- Blasted Lands
    [1428] = { 50, 58 },  -- Burning Steppes
    [1422] = { 51, 58 },  -- Western Plaguelands
    [1423] = { 53, 60 },  -- Eastern Plaguelands
    [1430] = { 55, 60 },  -- Deadwind Pass

    -- Forever
    [2521] = { 1, 10 },   -- Zephras Isle
    [2548] = { 38, 44 },  -- Riverglades
    [2652] = { 40, 45 },  -- Shen'dralas
    [2482] = { 55, 60 },  -- Mount Hyjal
}
