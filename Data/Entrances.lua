--[[
    MittenQuest - Data/Entrances.lua
    Caves / enclosed areas whose inside you can't walk to in a straight line.

    When the arrow's target lies inside an area's radius and the player is
    outside it, the arrow points at the entrance instead. Once the player is
    inside (indoors and within the radius) it switches to the real target.

        {
            name     = "Burning Blade Coven",
            map      = 1411,                 -- uiMapID
            entrance = { x, y },             -- 0-100, the cave mouth
            area     = { x, y, r },          -- interior center + radius (0-100 map units)
            via      = { {x, y}, ... },      -- optional path points before the mouth (ramps, ledges)
            placeholder = true,              -- not verified in-game yet
        }

    Guide steps can also force one by name:  [C 1234 Some Quest | cave=Burning Blade Coven]

]]

local _, ns = ...
ns.Entrances = ns.Entrances or {}
local E = ns.Entrances

-- (No verified entries yet. Add caves here as their entrances are confirmed in-game.)
