-- Deliberately broken route used to test tools/lint.lua (not loaded in game).
ForeverGuide:RegisterGuide("Fixture: bad route", [[
#knownfp Orgrimmar
[A 200 Chain Part Two | pre=100]
[A 100 Chain Part One]
[T 100 Chain Part One]
[F Crossroads]
[P Crossroads]
[F Ratchet | alt=Run south along the road]
[A 300 Dungeon Quest A]
[A 301 Dungeon Quest B | pre=999]
[C 400 Bones of the Fallen | item=5000:12; drop=25; mob=Kolkar Bonepicker]
[D Wailing Caverns | quests=300,301,302]
[T 300 Dungeon Quest A]
[X weird tag]
[G 45,50 1413 Somewhere | foo=bar]
]])
