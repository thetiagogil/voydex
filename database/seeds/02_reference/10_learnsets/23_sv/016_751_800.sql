-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 751-800.
-- ============================================================================

INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Dewpider - Water Gun - Level 1
  (751, 75100, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewpider - Infestation - Level 1
  (751, 75100, 611, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewpider - Bug Bite - Level 4
  (751, 75100, 450, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Dewpider - Bite - Level 8
  (751, 75100, 44, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Dewpider - Bubble Beam - Level 12
  (751, 75100, 61, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Dewpider - Aqua Ring - Level 16
  (751, 75100, 392, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Dewpider - Headbutt - Level 20
  (751, 75100, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Dewpider - Crunch - Level 24
  (751, 75100, 242, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Dewpider - Soak - Level 28
  (751, 75100, 487, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Dewpider - Entrainment - Level 32
  (751, 75100, 494, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Dewpider - Lunge - Level 36
  (751, 75100, 679, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Dewpider - Liquidation - Level 40
  (751, 75100, 710, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dewpider - Leech Life - Level 44
  (751, 75100, 141, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Dewpider - Mirror Coat - Level 48
  (751, 75100, 243, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Dewpider - Protect - TM007
  (751, 75100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Dewpider - Water Pulse - TM011
  (751, 75100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Dewpider - Trailblaze - TM020
  (751, 75100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 17),
  -- Dewpider - Pounce - TM021
  (751, 75100, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 18),
  -- Dewpider - Chilling Water - TM022
  (751, 75100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Dewpider - Facade - TM025
  (751, 75100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Dewpider - Icy Wind - TM034
  (751, 75100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 21),
  -- Dewpider - Endure - TM047
  (751, 75100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Dewpider - Rain Dance - TM050
  (751, 75100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Dewpider - Sleep Talk - TM070
  (751, 75100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 24),
  -- Dewpider - Waterfall - TM077
  (751, 75100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 25),
  -- Dewpider - Poison Jab - TM083
  (751, 75100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 26),
  -- Dewpider - Rest - TM085
  (751, 75100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Dewpider - Leech Life - TM095
  (751, 75100, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 28),
  -- Dewpider - Substitute - TM103
  (751, 75100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Dewpider - Iron Defense - TM104
  (751, 75100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 30),
  -- Dewpider - X-Scissor - TM105
  (751, 75100, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 31),
  -- Dewpider - Crunch - TM108
  (751, 75100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 32),
  -- Dewpider - Liquidation - TM110
  (751, 75100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 33),
  -- Dewpider - Giga Drain - TM111
  (751, 75100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 34),
  -- Dewpider - Surf - TM123
  (751, 75100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 35),
  -- Dewpider - Ice Beam - TM135
  (751, 75100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 36),
  -- Dewpider - Hydro Pump - TM142
  (751, 75100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 37),
  -- Dewpider - Blizzard - TM143
  (751, 75100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 38),
  -- Dewpider - Bug Buzz - TM162
  (751, 75100, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 39),
  -- Dewpider - Tera Blast - TM171
  (751, 75100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Dewpider - Stockpile - Egg
  (751, 75100, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Dewpider - Spit Up - Egg
  (751, 75100, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Dewpider - Power Split - Egg
  (751, 75100, 471, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Dewpider - Sticky Web - Egg
  (751, 75100, 564, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Araquanid - Bite - Level 1
  (752, 75200, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Araquanid - Water Gun - Level 1
  (752, 75200, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Araquanid - Bug Bite - Level 1
  (752, 75200, 450, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Araquanid - Wide Guard - Level 1
  (752, 75200, 469, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Araquanid - Infestation - Level 1
  (752, 75200, 611, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Araquanid - Bubble Beam - Level 12
  (752, 75200, 61, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Araquanid - Aqua Ring - Level 16
  (752, 75200, 392, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Araquanid - Headbutt - Level 20
  (752, 75200, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Araquanid - Crunch - Level 26
  (752, 75200, 242, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Araquanid - Soak - Level 32
  (752, 75200, 487, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Araquanid - Entrainment - Level 38
  (752, 75200, 494, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Araquanid - Lunge - Level 44
  (752, 75200, 679, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Araquanid - Liquidation - Level 50
  (752, 75200, 710, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Araquanid - Leech Life - Level 56
  (752, 75200, 141, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Araquanid - Mirror Coat - Level 62
  (752, 75200, 243, 23, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Araquanid - Scary Face - TM006
  (752, 75200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Araquanid - Protect - TM007
  (752, 75200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Araquanid - Water Pulse - TM011
  (752, 75200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Araquanid - Trailblaze - TM020
  (752, 75200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Araquanid - Pounce - TM021
  (752, 75200, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 20),
  -- Araquanid - Chilling Water - TM022
  (752, 75200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Araquanid - Facade - TM025
  (752, 75200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Araquanid - Icy Wind - TM034
  (752, 75200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Araquanid - Endure - TM047
  (752, 75200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Araquanid - Rain Dance - TM050
  (752, 75200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Araquanid - Body Slam - TM066
  (752, 75200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Araquanid - Sleep Talk - TM070
  (752, 75200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Araquanid - Reflect - TM074
  (752, 75200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 28),
  -- Araquanid - Waterfall - TM077
  (752, 75200, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Araquanid - Poison Jab - TM083
  (752, 75200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 30),
  -- Araquanid - Rest - TM085
  (752, 75200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Araquanid - Leech Life - TM095
  (752, 75200, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 32),
  -- Araquanid - Substitute - TM103
  (752, 75200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Araquanid - Iron Defense - TM104
  (752, 75200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 34),
  -- Araquanid - X-Scissor - TM105
  (752, 75200, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 35),
  -- Araquanid - Crunch - TM108
  (752, 75200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 36),
  -- Araquanid - Liquidation - TM110
  (752, 75200, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 37),
  -- Araquanid - Giga Drain - TM111
  (752, 75200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 38),
  -- Araquanid - Surf - TM123
  (752, 75200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 39),
  -- Araquanid - Ice Beam - TM135
  (752, 75200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 40),
  -- Araquanid - Hydro Pump - TM142
  (752, 75200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 41),
  -- Araquanid - Blizzard - TM143
  (752, 75200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 42),
  -- Araquanid - Giga Impact - TM152
  (752, 75200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 43),
  -- Araquanid - Bug Buzz - TM162
  (752, 75200, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 44),
  -- Araquanid - Hyper Beam - TM163
  (752, 75200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 45),
  -- Araquanid - Tera Blast - TM171
  (752, 75200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Araquanid - Stockpile - Egg
  (752, 75200, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Araquanid - Spit Up - Egg
  (752, 75200, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Araquanid - Power Split - Egg
  (752, 75200, 471, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Araquanid - Sticky Web - Egg
  (752, 75200, 564, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Fomantis - Fury Cutter - Level 1
  (753, 75300, 210, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fomantis - Leafage - Level 1
  (753, 75300, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fomantis - Growth - Level 5
  (753, 75300, 74, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Fomantis - Ingrain - Level 10
  (753, 75300, 275, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Fomantis - Razor Leaf - Level 15
  (753, 75300, 75, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Fomantis - Sweet Scent - Level 20
  (753, 75300, 230, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Fomantis - Slash - Level 25
  (753, 75300, 163, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Fomantis - X-Scissor - Level 30
  (753, 75300, 404, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Fomantis - Synthesis - Level 35
  (753, 75300, 235, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Fomantis - Leaf Blade - Level 40
  (753, 75300, 348, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Fomantis - Sunny Day - Level 45
  (753, 75300, 241, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Fomantis - Solar Beam - Level 50
  (753, 75300, 76, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Fomantis - Take Down - TM001
  (753, 75300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Fomantis - Protect - TM007
  (753, 75300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Fomantis - Trailblaze - TM020
  (753, 75300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 15),
  -- Fomantis - Facade - TM025
  (753, 75300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Fomantis - Magical Leaf - TM033
  (753, 75300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 17),
  -- Fomantis - Fling - TM043
  (753, 75300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 18),
  -- Fomantis - Endure - TM047
  (753, 75300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Fomantis - Sunny Day - TM049
  (753, 75300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 20),
  -- Fomantis - Bullet Seed - TM056
  (753, 75300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 21),
  -- Fomantis - False Swipe - TM057
  (753, 75300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 22),
  -- Fomantis - Sleep Talk - TM070
  (753, 75300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Fomantis - Seed Bomb - TM071
  (753, 75300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 24),
  -- Fomantis - Grass Knot - TM081
  (753, 75300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 25),
  -- Fomantis - Rest - TM085
  (753, 75300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 26),
  -- Fomantis - Swords Dance - TM088
  (753, 75300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 27),
  -- Fomantis - Leech Life - TM095
  (753, 75300, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 28),
  -- Fomantis - Substitute - TM103
  (753, 75300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Fomantis - X-Scissor - TM105
  (753, 75300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 30),
  -- Fomantis - Giga Drain - TM111
  (753, 75300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 31),
  -- Fomantis - Energy Ball - TM119
  (753, 75300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 32),
  -- Fomantis - Grassy Terrain - TM137
  (753, 75300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 33),
  -- Fomantis - Leaf Storm - TM159
  (753, 75300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 34),
  -- Fomantis - Solar Beam - TM168
  (753, 75300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 35),
  -- Fomantis - Tera Blast - TM171
  (753, 75300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 36),
  -- Fomantis - Superpower - Egg
  (753, 75300, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Fomantis - Worry Seed - Egg
  (753, 75300, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Fomantis - Defog - Egg
  (753, 75300, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Lurantis - Growth - Level 1
  (754, 75400, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lurantis - Solar Beam - Level 1
  (754, 75400, 76, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lurantis - Fury Cutter - Level 1
  (754, 75400, 210, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lurantis - Ingrain - Level 1
  (754, 75400, 275, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lurantis - Night Slash - Level 1
  (754, 75400, 400, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lurantis - Leafage - Level 1
  (754, 75400, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lurantis - Razor Leaf - Level 15
  (754, 75400, 75, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Lurantis - Sweet Scent - Level 20
  (754, 75400, 230, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Lurantis - Slash - Level 25
  (754, 75400, 163, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Lurantis - X-Scissor - Level 30
  (754, 75400, 404, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Lurantis - Synthesis - Level 37
  (754, 75400, 235, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Lurantis - Leaf Blade - Level 44
  (754, 75400, 348, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Lurantis - Sunny Day - Level 51
  (754, 75400, 241, 23, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Lurantis - Solar Blade - Level 63
  (754, 75400, 669, 23, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Lurantis - Take Down - TM001
  (754, 75400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Lurantis - Scary Face - TM006
  (754, 75400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Lurantis - Protect - TM007
  (754, 75400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Lurantis - Trailblaze - TM020
  (754, 75400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Lurantis - Facade - TM025
  (754, 75400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Lurantis - Magical Leaf - TM033
  (754, 75400, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 20),
  -- Lurantis - Low Sweep - TM039
  (754, 75400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 21),
  -- Lurantis - Fling - TM043
  (754, 75400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Lurantis - Endure - TM047
  (754, 75400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Lurantis - Sunny Day - TM049
  (754, 75400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Lurantis - Rain Dance - TM050
  (754, 75400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Lurantis - Bullet Seed - TM056
  (754, 75400, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Lurantis - False Swipe - TM057
  (754, 75400, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 27),
  -- Lurantis - Brick Break - TM058
  (754, 75400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Lurantis - Sleep Talk - TM070
  (754, 75400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Lurantis - Seed Bomb - TM071
  (754, 75400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 30),
  -- Lurantis - Grass Knot - TM081
  (754, 75400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Lurantis - Poison Jab - TM083
  (754, 75400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 32),
  -- Lurantis - Rest - TM085
  (754, 75400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Lurantis - Swords Dance - TM088
  (754, 75400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Lurantis - Leech Life - TM095
  (754, 75400, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 35),
  -- Lurantis - Substitute - TM103
  (754, 75400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Lurantis - X-Scissor - TM105
  (754, 75400, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 37),
  -- Lurantis - Giga Drain - TM111
  (754, 75400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 38),
  -- Lurantis - Energy Ball - TM119
  (754, 75400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 39),
  -- Lurantis - Pollen Puff - TM131
  (754, 75400, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 40),
  -- Lurantis - Grassy Terrain - TM137
  (754, 75400, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 41),
  -- Lurantis - Giga Impact - TM152
  (754, 75400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 42),
  -- Lurantis - Leaf Storm - TM159
  (754, 75400, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 43),
  -- Lurantis - Hyper Beam - TM163
  (754, 75400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Lurantis - Solar Beam - TM168
  (754, 75400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 45),
  -- Lurantis - Tera Blast - TM171
  (754, 75400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Lurantis - Superpower - Egg
  (754, 75400, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lurantis - Worry Seed - Egg
  (754, 75400, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lurantis - Defog - Egg
  (754, 75400, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lurantis - Petal Blizzard - Evolution
  (754, 75400, 572, 23, NULL, 7, NULL, NULL, NULL, NULL, 50),
  -- Salandit - Scratch - Level 1
  (757, 75700, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salandit - Poison Gas - Level 1
  (757, 75700, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salandit - Smog - Level 5
  (757, 75700, 123, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Salandit - Ember - Level 10
  (757, 75700, 52, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Salandit - Poison Fang - Level 15
  (757, 75700, 305, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Salandit - Sweet Scent - Level 20
  (757, 75700, 230, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Salandit - Nasty Plot - Level 25
  (757, 75700, 417, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Salandit - Incinerate - Level 30
  (757, 75700, 510, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Salandit - Venoshock - Level 35
  (757, 75700, 474, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Salandit - Dragon Pulse - Level 40
  (757, 75700, 406, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Salandit - Flamethrower - Level 45
  (757, 75700, 53, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Salandit - Toxic - Level 50
  (757, 75700, 92, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Salandit - Endeavor - Level 55
  (757, 75700, 283, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Salandit - Take Down - TM001
  (757, 75700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Salandit - Agility - TM004
  (757, 75700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Salandit - Mud-Slap - TM005
  (757, 75700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Salandit - Scary Face - TM006
  (757, 75700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Salandit - Protect - TM007
  (757, 75700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Salandit - Fire Fang - TM008
  (757, 75700, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Salandit - Acid Spray - TM013
  (757, 75700, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Salandit - Thief - TM018
  (757, 75700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Salandit - Trailblaze - TM020
  (757, 75700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Salandit - Facade - TM025
  (757, 75700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Salandit - Poison Tail - TM026
  (757, 75700, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 24),
  -- Salandit - Swift - TM032
  (757, 75700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Salandit - Flame Charge - TM038
  (757, 75700, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 26),
  -- Salandit - Fling - TM043
  (757, 75700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Salandit - Venoshock - TM045
  (757, 75700, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 28),
  -- Salandit - Endure - TM047
  (757, 75700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Salandit - Sunny Day - TM049
  (757, 75700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Salandit - Shadow Claw - TM061
  (757, 75700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Salandit - Foul Play - TM062
  (757, 75700, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 32),
  -- Salandit - Sleep Talk - TM070
  (757, 75700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Salandit - Dragon Claw - TM078
  (757, 75700, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 34),
  -- Salandit - Thunder Wave - TM082
  (757, 75700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 35),
  -- Salandit - Poison Jab - TM083
  (757, 75700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 36),
  -- Salandit - Rest - TM085
  (757, 75700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Salandit - Taunt - TM087
  (757, 75700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Salandit - Toxic Spikes - TM091
  (757, 75700, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 39),
  -- Salandit - Leech Life - TM095
  (757, 75700, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 40),
  -- Salandit - Gunk Shot - TM102
  (757, 75700, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 41),
  -- Salandit - Substitute - TM103
  (757, 75700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Salandit - Will-O-Wisp - TM107
  (757, 75700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 43),
  -- Salandit - Dragon Pulse - TM115
  (757, 75700, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 44),
  -- Salandit - Heat Wave - TM118
  (757, 75700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 45),
  -- Salandit - Flamethrower - TM125
  (757, 75700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 46),
  -- Salandit - Helping Hand - TM130
  (757, 75700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Salandit - Nasty Plot - TM140
  (757, 75700, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 48),
  -- Salandit - Fire Blast - TM141
  (757, 75700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 49),
  -- Salandit - Sludge Bomb - TM148
  (757, 75700, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Salandit - Overheat - TM157
  (757, 75700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 51),
  -- Salandit - Flare Blitz - TM165
  (757, 75700, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 52),
  -- Salandit - Tera Blast - TM171
  (757, 75700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Salandit - Sand Attack - Egg
  (757, 75700, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Salandit - Mud-Slap - Egg
  (757, 75700, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Salandit - Fake Out - Egg
  (757, 75700, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Salandit - Belch - Egg
  (757, 75700, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Salazzle - Pound - Level 1
  (758, 75800, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salazzle - Scratch - Level 1
  (758, 75800, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salazzle - Disable - Level 1
  (758, 75800, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Salazzle - Ember - Level 1
  (758, 75800, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Salazzle - Smog - Level 1
  (758, 75800, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Salazzle - Poison Gas - Level 1
  (758, 75800, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Salazzle - Swagger - Level 1
  (758, 75800, 207, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Salazzle - Encore - Level 1
  (758, 75800, 227, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Salazzle - Torment - Level 1
  (758, 75800, 259, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Salazzle - Knock Off - Level 1
  (758, 75800, 282, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Salazzle - Endeavor - Level 1
  (758, 75800, 283, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Salazzle - Poison Fang - Level 15
  (758, 75800, 305, 23, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Salazzle - Sweet Scent - Level 20
  (758, 75800, 230, 23, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Salazzle - Nasty Plot - Level 25
  (758, 75800, 417, 23, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Salazzle - Incinerate - Level 30
  (758, 75800, 510, 23, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Salazzle - Venoshock - Level 37
  (758, 75800, 474, 23, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Salazzle - Dragon Pulse - Level 44
  (758, 75800, 406, 23, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Salazzle - Flamethrower - Level 51
  (758, 75800, 53, 23, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Salazzle - Toxic - Level 58
  (758, 75800, 92, 23, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Salazzle - Take Down - TM001
  (758, 75800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Salazzle - Fake Tears - TM003
  (758, 75800, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 21),
  -- Salazzle - Agility - TM004
  (758, 75800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 22),
  -- Salazzle - Mud-Slap - TM005
  (758, 75800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 23),
  -- Salazzle - Scary Face - TM006
  (758, 75800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 24),
  -- Salazzle - Protect - TM007
  (758, 75800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 25),
  -- Salazzle - Fire Fang - TM008
  (758, 75800, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 26),
  -- Salazzle - Acid Spray - TM013
  (758, 75800, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 27),
  -- Salazzle - Acrobatics - TM014
  (758, 75800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 28),
  -- Salazzle - Thief - TM018
  (758, 75800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 29),
  -- Salazzle - Trailblaze - TM020
  (758, 75800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 30),
  -- Salazzle - Facade - TM025
  (758, 75800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 31),
  -- Salazzle - Poison Tail - TM026
  (758, 75800, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 32),
  -- Salazzle - Swift - TM032
  (758, 75800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 33),
  -- Salazzle - Flame Charge - TM038
  (758, 75800, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 34),
  -- Salazzle - Fling - TM043
  (758, 75800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 35),
  -- Salazzle - Dragon Tail - TM044
  (758, 75800, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 36),
  -- Salazzle - Venoshock - TM045
  (758, 75800, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 37),
  -- Salazzle - Endure - TM047
  (758, 75800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 38),
  -- Salazzle - Sunny Day - TM049
  (758, 75800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 39),
  -- Salazzle - Shadow Claw - TM061
  (758, 75800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 40),
  -- Salazzle - Foul Play - TM062
  (758, 75800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 41),
  -- Salazzle - Body Slam - TM066
  (758, 75800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 42),
  -- Salazzle - Sleep Talk - TM070
  (758, 75800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Salazzle - Dragon Claw - TM078
  (758, 75800, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 44),
  -- Salazzle - Thunder Wave - TM082
  (758, 75800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 45),
  -- Salazzle - Poison Jab - TM083
  (758, 75800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 46),
  -- Salazzle - Rest - TM085
  (758, 75800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Salazzle - Taunt - TM087
  (758, 75800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Salazzle - Toxic Spikes - TM091
  (758, 75800, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 49),
  -- Salazzle - Leech Life - TM095
  (758, 75800, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 50),
  -- Salazzle - Dragon Dance - TM100
  (758, 75800, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 51),
  -- Salazzle - Gunk Shot - TM102
  (758, 75800, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 52),
  -- Salazzle - Substitute - TM103
  (758, 75800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Salazzle - Will-O-Wisp - TM107
  (758, 75800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 54),
  -- Salazzle - Dragon Pulse - TM115
  (758, 75800, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 55),
  -- Salazzle - Hyper Voice - TM117
  (758, 75800, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 56),
  -- Salazzle - Heat Wave - TM118
  (758, 75800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 57),
  -- Salazzle - Encore - TM122
  (758, 75800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 58),
  -- Salazzle - Flamethrower - TM125
  (758, 75800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 59),
  -- Salazzle - Helping Hand - TM130
  (758, 75800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 60),
  -- Salazzle - Nasty Plot - TM140
  (758, 75800, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 61),
  -- Salazzle - Fire Blast - TM141
  (758, 75800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 62),
  -- Salazzle - Sludge Bomb - TM148
  (758, 75800, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 63),
  -- Salazzle - Giga Impact - TM152
  (758, 75800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 64),
  -- Salazzle - Overheat - TM157
  (758, 75800, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 65),
  -- Salazzle - Hyper Beam - TM163
  (758, 75800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Salazzle - Flare Blitz - TM165
  (758, 75800, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 67),
  -- Salazzle - Tera Blast - TM171
  (758, 75800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 68),
  -- Salazzle - Sand Attack - Egg
  (758, 75800, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Salazzle - Mud-Slap - Egg
  (758, 75800, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Salazzle - Fake Out - Egg
  (758, 75800, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Salazzle - Belch - Egg
  (758, 75800, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Salazzle - Fire Lash - Evolution
  (758, 75800, 680, 23, NULL, 7, NULL, NULL, NULL, NULL, 73),
  -- Bounsweet - Splash - Level 1
  (761, 76100, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bounsweet - Play Nice - Level 4
  (761, 76100, 589, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Bounsweet - Rapid Spin - Level 8
  (761, 76100, 229, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Bounsweet - Razor Leaf - Level 12
  (761, 76100, 75, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Bounsweet - Sweet Scent - Level 16
  (761, 76100, 230, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Bounsweet - Magical Leaf - Level 20
  (761, 76100, 345, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Bounsweet - Flail - Level 24
  (761, 76100, 175, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Bounsweet - Teeter Dance - Level 28
  (761, 76100, 298, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Bounsweet - Aromatic Mist - Level 32
  (761, 76100, 597, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Bounsweet - Take Down - TM001
  (761, 76100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 10),
  -- Bounsweet - Charm - TM002
  (761, 76100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 11),
  -- Bounsweet - Protect - TM007
  (761, 76100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 12),
  -- Bounsweet - Trailblaze - TM020
  (761, 76100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 13),
  -- Bounsweet - Facade - TM025
  (761, 76100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 14),
  -- Bounsweet - Swift - TM032
  (761, 76100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 15),
  -- Bounsweet - Magical Leaf - TM033
  (761, 76100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 16),
  -- Bounsweet - Draining Kiss - TM037
  (761, 76100, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 17),
  -- Bounsweet - Endure - TM047
  (761, 76100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 18),
  -- Bounsweet - Sunny Day - TM049
  (761, 76100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 19),
  -- Bounsweet - Bullet Seed - TM056
  (761, 76100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 20),
  -- Bounsweet - Zen Headbutt - TM059
  (761, 76100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 21),
  -- Bounsweet - Sleep Talk - TM070
  (761, 76100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 22),
  -- Bounsweet - Seed Bomb - TM071
  (761, 76100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 23),
  -- Bounsweet - Reflect - TM074
  (761, 76100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 24),
  -- Bounsweet - Light Screen - TM075
  (761, 76100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 25),
  -- Bounsweet - Dazzling Gleam - TM079
  (761, 76100, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 26),
  -- Bounsweet - Grass Knot - TM081
  (761, 76100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 27),
  -- Bounsweet - Rest - TM085
  (761, 76100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Bounsweet - Substitute - TM103
  (761, 76100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Bounsweet - Giga Drain - TM111
  (761, 76100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 30),
  -- Bounsweet - Energy Ball - TM119
  (761, 76100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 31),
  -- Bounsweet - Play Rough - TM127
  (761, 76100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 32),
  -- Bounsweet - Helping Hand - TM130
  (761, 76100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 33),
  -- Bounsweet - Grassy Terrain - TM137
  (761, 76100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 34),
  -- Bounsweet - Leaf Storm - TM159
  (761, 76100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 35),
  -- Bounsweet - Solar Beam - TM168
  (761, 76100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 36),
  -- Bounsweet - Tera Blast - TM171
  (761, 76100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 37),
  -- Bounsweet - Synthesis - Egg
  (761, 76100, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Bounsweet - Endeavor - Egg
  (761, 76100, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Bounsweet - Acupressure - Egg
  (761, 76100, 367, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Steenee - Razor Leaf - Level 1
  (762, 76200, 75, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Steenee - Splash - Level 1
  (762, 76200, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Steenee - Flail - Level 1
  (762, 76200, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Steenee - Rapid Spin - Level 1
  (762, 76200, 229, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Steenee - Play Nice - Level 1
  (762, 76200, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Steenee - Sweet Scent - Level 16
  (762, 76200, 230, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Steenee - Magical Leaf - Level 22
  (762, 76200, 345, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Steenee - Stomp - Level 28
  (762, 76200, 23, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Steenee - Teeter Dance - Level 34
  (762, 76200, 298, 23, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Steenee - Aromatic Mist - Level 40
  (762, 76200, 597, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Steenee - Leaf Storm - Level 46
  (762, 76200, 437, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Steenee - Take Down - TM001
  (762, 76200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Steenee - Charm - TM002
  (762, 76200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 13),
  -- Steenee - Protect - TM007
  (762, 76200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Steenee - Trailblaze - TM020
  (762, 76200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 15),
  -- Steenee - Facade - TM025
  (762, 76200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Steenee - Swift - TM032
  (762, 76200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 17),
  -- Steenee - Magical Leaf - TM033
  (762, 76200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 18),
  -- Steenee - Draining Kiss - TM037
  (762, 76200, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 19),
  -- Steenee - Low Sweep - TM039
  (762, 76200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 20),
  -- Steenee - Fling - TM043
  (762, 76200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 21),
  -- Steenee - Endure - TM047
  (762, 76200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Steenee - Sunny Day - TM049
  (762, 76200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Steenee - Bullet Seed - TM056
  (762, 76200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 24),
  -- Steenee - Zen Headbutt - TM059
  (762, 76200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 25),
  -- Steenee - Sleep Talk - TM070
  (762, 76200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Steenee - Seed Bomb - TM071
  (762, 76200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 27),
  -- Steenee - Reflect - TM074
  (762, 76200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 28),
  -- Steenee - Light Screen - TM075
  (762, 76200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 29),
  -- Steenee - Dazzling Gleam - TM079
  (762, 76200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 30),
  -- Steenee - Grass Knot - TM081
  (762, 76200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Steenee - Rest - TM085
  (762, 76200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Steenee - Substitute - TM103
  (762, 76200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Steenee - Giga Drain - TM111
  (762, 76200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 34),
  -- Steenee - Energy Ball - TM119
  (762, 76200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 35),
  -- Steenee - Play Rough - TM127
  (762, 76200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 36),
  -- Steenee - Helping Hand - TM130
  (762, 76200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Steenee - Grassy Terrain - TM137
  (762, 76200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 38),
  -- Steenee - Leaf Storm - TM159
  (762, 76200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 39),
  -- Steenee - Solar Beam - TM168
  (762, 76200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 40),
  -- Steenee - Tera Blast - TM171
  (762, 76200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 41),
  -- Steenee - Synthesis - Egg
  (762, 76200, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Steenee - Endeavor - Egg
  (762, 76200, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Steenee - Acupressure - Egg
  (762, 76200, 367, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Tsareena - Razor Leaf - Level 1
  (763, 76300, 75, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tsareena - Splash - Level 1
  (763, 76300, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tsareena - Flail - Level 1
  (763, 76300, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tsareena - Swagger - Level 1
  (763, 76300, 207, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tsareena - Rapid Spin - Level 1
  (763, 76300, 229, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tsareena - Power Whip - Level 1
  (763, 76300, 438, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tsareena - Play Nice - Level 1
  (763, 76300, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tsareena - Sweet Scent - Level 16
  (763, 76300, 230, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Tsareena - Magical Leaf - Level 22
  (763, 76300, 345, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Tsareena - Stomp - Level 28
  (763, 76300, 23, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Tsareena - Teeter Dance - Level 34
  (763, 76300, 298, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Tsareena - Aromatic Mist - Level 40
  (763, 76300, 597, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tsareena - Leaf Storm - Level 46
  (763, 76300, 437, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Tsareena - High Jump Kick - Level 58
  (763, 76300, 136, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Tsareena - Take Down - TM001
  (763, 76300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Tsareena - Charm - TM002
  (763, 76300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Tsareena - Protect - TM007
  (763, 76300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Tsareena - Low Kick - TM012
  (763, 76300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Tsareena - Acrobatics - TM014
  (763, 76300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Tsareena - Trailblaze - TM020
  (763, 76300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Tsareena - Facade - TM025
  (763, 76300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Tsareena - Swift - TM032
  (763, 76300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Tsareena - Magical Leaf - TM033
  (763, 76300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Tsareena - Draining Kiss - TM037
  (763, 76300, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Tsareena - Low Sweep - TM039
  (763, 76300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 25),
  -- Tsareena - Fling - TM043
  (763, 76300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Tsareena - Endure - TM047
  (763, 76300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Tsareena - Sunny Day - TM049
  (763, 76300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Tsareena - Bullet Seed - TM056
  (763, 76300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 29),
  -- Tsareena - Zen Headbutt - TM059
  (763, 76300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Tsareena - U-turn - TM060
  (763, 76300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Tsareena - Sleep Talk - TM070
  (763, 76300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Tsareena - Seed Bomb - TM071
  (763, 76300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 33),
  -- Tsareena - Reflect - TM074
  (763, 76300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Tsareena - Light Screen - TM075
  (763, 76300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Tsareena - Dazzling Gleam - TM079
  (763, 76300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 36),
  -- Tsareena - Grass Knot - TM081
  (763, 76300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Tsareena - Rest - TM085
  (763, 76300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Tsareena - Taunt - TM087
  (763, 76300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Tsareena - Substitute - TM103
  (763, 76300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Tsareena - Giga Drain - TM111
  (763, 76300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 41),
  -- Tsareena - Energy Ball - TM119
  (763, 76300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 42),
  -- Tsareena - Play Rough - TM127
  (763, 76300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 43),
  -- Tsareena - Helping Hand - TM130
  (763, 76300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Tsareena - Grassy Terrain - TM137
  (763, 76300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 45),
  -- Tsareena - Giga Impact - TM152
  (763, 76300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Tsareena - Leaf Storm - TM159
  (763, 76300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 47),
  -- Tsareena - Hyper Beam - TM163
  (763, 76300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Tsareena - Solar Beam - TM168
  (763, 76300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 49),
  -- Tsareena - Tera Blast - TM171
  (763, 76300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Tsareena - Synthesis - Egg
  (763, 76300, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tsareena - Endeavor - Egg
  (763, 76300, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tsareena - Acupressure - Egg
  (763, 76300, 367, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tsareena - Trop Kick - Evolution
  (763, 76300, 688, 23, NULL, 7, NULL, NULL, NULL, NULL, 54),
  -- Comfey - Wrap - Level 1
  (764, 76400, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Comfey - Growth - Level 1
  (764, 76400, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Comfey - Vine Whip - Level 3
  (764, 76400, 22, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Comfey - Helping Hand - Level 6
  (764, 76400, 270, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Comfey - Draining Kiss - Level 9
  (764, 76400, 577, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Comfey - Charm - Level 12
  (764, 76400, 204, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Comfey - Magical Leaf - Level 15
  (764, 76400, 345, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Comfey - Synthesis - Level 18
  (764, 76400, 235, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Comfey - Leech Seed - Level 21
  (764, 76400, 73, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Comfey - Grass Knot - Level 24
  (764, 76400, 447, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Comfey - Sweet Kiss - Level 27
  (764, 76400, 186, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Comfey - Floral Healing - Level 30
  (764, 76400, 666, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Comfey - Petal Blizzard - Level 33
  (764, 76400, 572, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Comfey - Bind - Level 36
  (764, 76400, 20, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Comfey - Play Rough - Level 39
  (764, 76400, 583, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Comfey - Sweet Scent - Level 42
  (764, 76400, 230, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Comfey - Petal Dance - Level 45
  (764, 76400, 80, 23, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Comfey - Grassy Terrain - Level 48
  (764, 76400, 580, 23, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Comfey - Charm - TM002
  (764, 76400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 19),
  -- Comfey - Protect - TM007
  (764, 76400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Comfey - Acrobatics - TM014
  (764, 76400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Comfey - Thief - TM018
  (764, 76400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Comfey - Disarming Voice - TM019
  (764, 76400, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 23),
  -- Comfey - Trailblaze - TM020
  (764, 76400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Comfey - Facade - TM025
  (764, 76400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Comfey - Swift - TM032
  (764, 76400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Comfey - Magical Leaf - TM033
  (764, 76400, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 27),
  -- Comfey - Draining Kiss - TM037
  (764, 76400, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 28),
  -- Comfey - Stored Power - TM041
  (764, 76400, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Comfey - Fling - TM043
  (764, 76400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Comfey - Endure - TM047
  (764, 76400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Comfey - Sunny Day - TM049
  (764, 76400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Comfey - Bullet Seed - TM056
  (764, 76400, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 33),
  -- Comfey - U-turn - TM060
  (764, 76400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 34),
  -- Comfey - Sleep Talk - TM070
  (764, 76400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Comfey - Seed Bomb - TM071
  (764, 76400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 36),
  -- Comfey - Light Screen - TM075
  (764, 76400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Comfey - Dazzling Gleam - TM079
  (764, 76400, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 38),
  -- Comfey - Grass Knot - TM081
  (764, 76400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Comfey - Rest - TM085
  (764, 76400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Comfey - Taunt - TM087
  (764, 76400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Comfey - Substitute - TM103
  (764, 76400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Comfey - Trick - TM109
  (764, 76400, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 43),
  -- Comfey - Giga Drain - TM111
  (764, 76400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 44),
  -- Comfey - Tailwind - TM113
  (764, 76400, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 45),
  -- Comfey - Energy Ball - TM119
  (764, 76400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Comfey - Encore - TM122
  (764, 76400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 47),
  -- Comfey - Play Rough - TM127
  (764, 76400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 48),
  -- Comfey - Amnesia - TM128
  (764, 76400, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 49),
  -- Comfey - Calm Mind - TM129
  (764, 76400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 50),
  -- Comfey - Helping Hand - TM130
  (764, 76400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Comfey - Pollen Puff - TM131
  (764, 76400, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 52),
  -- Comfey - Grassy Terrain - TM137
  (764, 76400, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 53),
  -- Comfey - Trick Room - TM161
  (764, 76400, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 54),
  -- Comfey - Hyper Beam - TM163
  (764, 76400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Comfey - Solar Beam - TM168
  (764, 76400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 56),
  -- Comfey - Tera Blast - TM171
  (764, 76400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Comfey - Worry Seed - Egg
  (764, 76400, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Comfey - After You - Egg
  (764, 76400, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Oranguru - Confusion - Level 1
  (765, 76500, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oranguru - Taunt - Level 1
  (765, 76500, 269, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Oranguru - After You - Level 5
  (765, 76500, 495, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Oranguru - Calm Mind - Level 10
  (765, 76500, 347, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Oranguru - Stored Power - Level 15
  (765, 76500, 500, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Oranguru - Psych Up - Level 20
  (765, 76500, 244, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Oranguru - Quash - Level 25
  (765, 76500, 511, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Oranguru - Nasty Plot - Level 30
  (765, 76500, 417, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Oranguru - Zen Headbutt - Level 35
  (765, 76500, 428, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Oranguru - Trick Room - Level 40
  (765, 76500, 433, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Oranguru - Psychic - Level 45
  (765, 76500, 94, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Oranguru - Instruct - Level 50
  (765, 76500, 689, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Oranguru - Foul Play - Level 55
  (765, 76500, 492, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Oranguru - Future Sight - Level 60
  (765, 76500, 248, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Oranguru - Take Down - TM001
  (765, 76500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Oranguru - Scary Face - TM006
  (765, 76500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Oranguru - Protect - TM007
  (765, 76500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Oranguru - Psybeam - TM016
  (765, 76500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Oranguru - Trailblaze - TM020
  (765, 76500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Oranguru - Chilling Water - TM022
  (765, 76500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Oranguru - Charge Beam - TM023
  (765, 76500, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Oranguru - Facade - TM025
  (765, 76500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Oranguru - Bulldoze - TM028
  (765, 76500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Oranguru - Swift - TM032
  (765, 76500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Oranguru - Stored Power - TM041
  (765, 76500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Oranguru - Fling - TM043
  (765, 76500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Oranguru - Endure - TM047
  (765, 76500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Oranguru - Sunny Day - TM049
  (765, 76500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Oranguru - Rain Dance - TM050
  (765, 76500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Oranguru - Psyshock - TM054
  (765, 76500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 30),
  -- Oranguru - Brick Break - TM058
  (765, 76500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Oranguru - Zen Headbutt - TM059
  (765, 76500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Oranguru - Foul Play - TM062
  (765, 76500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 33),
  -- Oranguru - Body Slam - TM066
  (765, 76500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Oranguru - Sleep Talk - TM070
  (765, 76500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Oranguru - Reflect - TM074
  (765, 76500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Oranguru - Light Screen - TM075
  (765, 76500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Oranguru - Rest - TM085
  (765, 76500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Oranguru - Rock Slide - TM086
  (765, 76500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Oranguru - Taunt - TM087
  (765, 76500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 40),
  -- Oranguru - Imprison - TM092
  (765, 76500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 41),
  -- Oranguru - Skill Swap - TM098
  (765, 76500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 42),
  -- Oranguru - Substitute - TM103
  (765, 76500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Oranguru - Trick - TM109
  (765, 76500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 44),
  -- Oranguru - Shadow Ball - TM114
  (765, 76500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Oranguru - Hyper Voice - TM117
  (765, 76500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 46),
  -- Oranguru - Energy Ball - TM119
  (765, 76500, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 47),
  -- Oranguru - Psychic - TM120
  (765, 76500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Oranguru - Encore - TM122
  (765, 76500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 49),
  -- Oranguru - Thunderbolt - TM126
  (765, 76500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 50),
  -- Oranguru - Calm Mind - TM129
  (765, 76500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 51),
  -- Oranguru - Psychic Terrain - TM138
  (765, 76500, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 52),
  -- Oranguru - Nasty Plot - TM140
  (765, 76500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 53),
  -- Oranguru - Earthquake - TM149
  (765, 76500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 54),
  -- Oranguru - Giga Impact - TM152
  (765, 76500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Oranguru - Focus Blast - TM158
  (765, 76500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 56),
  -- Oranguru - Trick Room - TM161
  (765, 76500, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 57),
  -- Oranguru - Hyper Beam - TM163
  (765, 76500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Oranguru - Thunder - TM166
  (765, 76500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 59),
  -- Oranguru - Tera Blast - TM171
  (765, 76500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Oranguru - Dream Eater - Egg
  (765, 76500, 138, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Oranguru - Yawn - Egg
  (765, 76500, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Oranguru - Extrasensory - Egg
  (765, 76500, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Oranguru - Last Resort - Egg
  (765, 76500, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Passimian - Tackle - Level 1
  (766, 76600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Passimian - Leer - Level 1
  (766, 76600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Passimian - Rock Smash - Level 5
  (766, 76600, 249, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Passimian - Focus Energy - Level 10
  (766, 76600, 116, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Passimian - Beat Up - Level 15
  (766, 76600, 251, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Passimian - Scary Face - Level 20
  (766, 76600, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Passimian - Take Down - Level 25
  (766, 76600, 36, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Passimian - Fling - Level 30
  (766, 76600, 374, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Passimian - Bulk Up - Level 35
  (766, 76600, 339, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Passimian - Thrash - Level 40
  (766, 76600, 37, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Passimian - Double-Edge - Level 45
  (766, 76600, 38, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Passimian - Close Combat - Level 50
  (766, 76600, 370, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Passimian - Reversal - Level 55
  (766, 76600, 179, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Passimian - Giga Impact - Level 60
  (766, 76600, 416, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Passimian - Take Down - TM001
  (766, 76600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Passimian - Scary Face - TM006
  (766, 76600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Passimian - Protect - TM007
  (766, 76600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Passimian - Low Kick - TM012
  (766, 76600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Passimian - Acrobatics - TM014
  (766, 76600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Passimian - Thief - TM018
  (766, 76600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Passimian - Trailblaze - TM020
  (766, 76600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Passimian - Chilling Water - TM022
  (766, 76600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Passimian - Facade - TM025
  (766, 76600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Passimian - Bulldoze - TM028
  (766, 76600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Passimian - Rock Tomb - TM036
  (766, 76600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Passimian - Low Sweep - TM039
  (766, 76600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 26),
  -- Passimian - Fling - TM043
  (766, 76600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Passimian - Endure - TM047
  (766, 76600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Passimian - Sunny Day - TM049
  (766, 76600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Passimian - Rain Dance - TM050
  (766, 76600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Passimian - Brick Break - TM058
  (766, 76600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Passimian - U-turn - TM060
  (766, 76600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Passimian - Bulk Up - TM064
  (766, 76600, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 33),
  -- Passimian - Body Slam - TM066
  (766, 76600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Passimian - Sleep Talk - TM070
  (766, 76600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Passimian - Seed Bomb - TM071
  (766, 76600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 36),
  -- Passimian - Drain Punch - TM073
  (766, 76600, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 37),
  -- Passimian - Grass Knot - TM081
  (766, 76600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Passimian - Rest - TM085
  (766, 76600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Passimian - Rock Slide - TM086
  (766, 76600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Passimian - Taunt - TM087
  (766, 76600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Passimian - Iron Head - TM099
  (766, 76600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Passimian - Gunk Shot - TM102
  (766, 76600, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 43),
  -- Passimian - Substitute - TM103
  (766, 76600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Passimian - Shadow Ball - TM114
  (766, 76600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Passimian - Energy Ball - TM119
  (766, 76600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Passimian - Baton Pass - TM132
  (766, 76600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 47),
  -- Passimian - Reversal - TM134
  (766, 76600, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Passimian - Earthquake - TM149
  (766, 76600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Passimian - Giga Impact - TM152
  (766, 76600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Passimian - Focus Blast - TM158
  (766, 76600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 51),
  -- Passimian - Hyper Beam - TM163
  (766, 76600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Passimian - Close Combat - TM167
  (766, 76600, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 53),
  -- Passimian - Tera Blast - TM171
  (766, 76600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Passimian - Counter - Egg
  (766, 76600, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Passimian - Seismic Toss - Egg
  (766, 76600, 69, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Passimian - Quick Attack - Egg
  (766, 76600, 98, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Passimian - Knock Off - Egg
  (766, 76600, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Passimian - Feint - Egg
  (766, 76600, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Passimian - Quick Guard - Egg
  (766, 76600, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sandygast - Absorb - Level 1
  (769, 76900, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandygast - Harden - Level 1
  (769, 76900, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandygast - Astonish - Level 5
  (769, 76900, 310, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Sandygast - Sand Tomb - Level 10
  (769, 76900, 328, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Sandygast - Mega Drain - Level 15
  (769, 76900, 72, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Sandygast - Sand Attack - Level 20
  (769, 76900, 28, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Sandygast - Bulldoze - Level 25
  (769, 76900, 523, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Sandygast - Hypnosis - Level 30
  (769, 76900, 95, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Sandygast - Giga Drain - Level 35
  (769, 76900, 202, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Sandygast - Iron Defense - Level 40
  (769, 76900, 334, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Sandygast - Shadow Ball - Level 45
  (769, 76900, 247, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Sandygast - Earth Power - Level 50
  (769, 76900, 414, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Sandygast - Shore Up - Level 55
  (769, 76900, 659, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Sandygast - Sandstorm - Level 60
  (769, 76900, 201, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Sandygast - Mud-Slap - TM005
  (769, 76900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Sandygast - Scary Face - TM006
  (769, 76900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Sandygast - Protect - TM007
  (769, 76900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Sandygast - Confuse Ray - TM017
  (769, 76900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Sandygast - Chilling Water - TM022
  (769, 76900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Sandygast - Facade - TM025
  (769, 76900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Sandygast - Bulldoze - TM028
  (769, 76900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Sandygast - Hex - TM029
  (769, 76900, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Sandygast - Mud Shot - TM035
  (769, 76900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Sandygast - Rock Tomb - TM036
  (769, 76900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Sandygast - Night Shade - TM042
  (769, 76900, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 25),
  -- Sandygast - Fling - TM043
  (769, 76900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Sandygast - Endure - TM047
  (769, 76900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Sandygast - Sunny Day - TM049
  (769, 76900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Sandygast - Rain Dance - TM050
  (769, 76900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Sandygast - Sandstorm - TM051
  (769, 76900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Sandygast - Sleep Talk - TM070
  (769, 76900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Sandygast - Rest - TM085
  (769, 76900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Sandygast - Rock Slide - TM086
  (769, 76900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 33),
  -- Sandygast - Imprison - TM092
  (769, 76900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 34),
  -- Sandygast - Flash Cannon - TM093
  (769, 76900, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 35),
  -- Sandygast - Skill Swap - TM098
  (769, 76900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 36),
  -- Sandygast - Substitute - TM103
  (769, 76900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Sandygast - Iron Defense - TM104
  (769, 76900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 38),
  -- Sandygast - Trick - TM109
  (769, 76900, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 39),
  -- Sandygast - Giga Drain - TM111
  (769, 76900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 40),
  -- Sandygast - Shadow Ball - TM114
  (769, 76900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 41),
  -- Sandygast - Stealth Rock - TM116
  (769, 76900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 42),
  -- Sandygast - Energy Ball - TM119
  (769, 76900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 43),
  -- Sandygast - Psychic - TM120
  (769, 76900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 44),
  -- Sandygast - Amnesia - TM128
  (769, 76900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 45),
  -- Sandygast - Earth Power - TM133
  (769, 76900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 46),
  -- Sandygast - Sludge Bomb - TM148
  (769, 76900, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 47),
  -- Sandygast - Earthquake - TM149
  (769, 76900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Sandygast - Stone Edge - TM150
  (769, 76900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Sandygast - Tera Blast - TM171
  (769, 76900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Sandygast - Curse - Egg
  (769, 76900, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sandygast - Destiny Bond - Egg
  (769, 76900, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sandygast - Ancient Power - Egg
  (769, 76900, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sandygast - Stockpile - Egg
  (769, 76900, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sandygast - Spit Up - Egg
  (769, 76900, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sandygast - Swallow - Egg
  (769, 76900, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Palossand - Absorb - Level 1
  (770, 77000, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palossand - Harden - Level 1
  (770, 77000, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palossand - Astonish - Level 1
  (770, 77000, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Palossand - Sand Tomb - Level 1
  (770, 77000, 328, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Palossand - Mega Drain - Level 15
  (770, 77000, 72, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Palossand - Sand Attack - Level 20
  (770, 77000, 28, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Palossand - Bulldoze - Level 25
  (770, 77000, 523, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Palossand - Hypnosis - Level 30
  (770, 77000, 95, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Palossand - Giga Drain - Level 35
  (770, 77000, 202, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Palossand - Iron Defense - Level 40
  (770, 77000, 334, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Palossand - Shadow Ball - Level 47
  (770, 77000, 247, 23, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Palossand - Earth Power - Level 54
  (770, 77000, 414, 23, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Palossand - Shore Up - Level 61
  (770, 77000, 659, 23, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Palossand - Sandstorm - Level 68
  (770, 77000, 201, 23, NULL, 1, 68, NULL, NULL, NULL, 14),
  -- Palossand - Mud-Slap - TM005
  (770, 77000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Palossand - Scary Face - TM006
  (770, 77000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Palossand - Protect - TM007
  (770, 77000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Palossand - Confuse Ray - TM017
  (770, 77000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Palossand - Chilling Water - TM022
  (770, 77000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Palossand - Facade - TM025
  (770, 77000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Palossand - Bulldoze - TM028
  (770, 77000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Palossand - Hex - TM029
  (770, 77000, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Palossand - Mud Shot - TM035
  (770, 77000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Palossand - Rock Tomb - TM036
  (770, 77000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Palossand - Night Shade - TM042
  (770, 77000, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 25),
  -- Palossand - Fling - TM043
  (770, 77000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Palossand - Endure - TM047
  (770, 77000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Palossand - Sunny Day - TM049
  (770, 77000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Palossand - Rain Dance - TM050
  (770, 77000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Palossand - Sandstorm - TM051
  (770, 77000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Palossand - Body Slam - TM066
  (770, 77000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Palossand - Sleep Talk - TM070
  (770, 77000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Palossand - Rest - TM085
  (770, 77000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Palossand - Rock Slide - TM086
  (770, 77000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 34),
  -- Palossand - Imprison - TM092
  (770, 77000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 35),
  -- Palossand - Flash Cannon - TM093
  (770, 77000, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 36),
  -- Palossand - Skill Swap - TM098
  (770, 77000, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 37),
  -- Palossand - Substitute - TM103
  (770, 77000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Palossand - Iron Defense - TM104
  (770, 77000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 39),
  -- Palossand - Trick - TM109
  (770, 77000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 40),
  -- Palossand - Giga Drain - TM111
  (770, 77000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 41),
  -- Palossand - Shadow Ball - TM114
  (770, 77000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 42),
  -- Palossand - Stealth Rock - TM116
  (770, 77000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 43),
  -- Palossand - Energy Ball - TM119
  (770, 77000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 44),
  -- Palossand - Psychic - TM120
  (770, 77000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 45),
  -- Palossand - Amnesia - TM128
  (770, 77000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 46),
  -- Palossand - Earth Power - TM133
  (770, 77000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Palossand - Sludge Bomb - TM148
  (770, 77000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 48),
  -- Palossand - Earthquake - TM149
  (770, 77000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Palossand - Stone Edge - TM150
  (770, 77000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Palossand - Giga Impact - TM152
  (770, 77000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Palossand - Hyper Beam - TM163
  (770, 77000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Palossand - Tera Blast - TM171
  (770, 77000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Palossand - Curse - Egg
  (770, 77000, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Palossand - Destiny Bond - Egg
  (770, 77000, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Palossand - Ancient Power - Egg
  (770, 77000, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Palossand - Stockpile - Egg
  (770, 77000, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Palossand - Spit Up - Egg
  (770, 77000, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Palossand - Swallow - Egg
  (770, 77000, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Minior - Tackle - Level 1
  (774, 77400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minior - Defense Curl - Level 3
  (774, 77400, 111, 23, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Minior - Rollout - Level 8
  (774, 77400, 205, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Minior - Confuse Ray - Level 10
  (774, 77400, 109, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Minior - Swift - Level 15
  (774, 77400, 129, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Minior - Ancient Power - Level 17
  (774, 77400, 246, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Minior - Self-Destruct - Level 22
  (774, 77400, 120, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Minior - Stealth Rock - Level 24
  (774, 77400, 446, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Minior - Take Down - Level 29
  (774, 77400, 36, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Minior - Rock Polish - Level 31
  (774, 77400, 397, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Minior - Cosmic Power - Level 36
  (774, 77400, 322, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Minior - Power Gem - Level 38
  (774, 77400, 408, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Minior - Double-Edge - Level 43
  (774, 77400, 38, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Minior - Shell Smash - Level 45
  (774, 77400, 504, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Minior - Explosion - Level 50
  (774, 77400, 153, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Minior - Take Down - TM001
  (774, 77400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Minior - Protect - TM007
  (774, 77400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Minior - Acrobatics - TM014
  (774, 77400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Minior - Confuse Ray - TM017
  (774, 77400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Minior - Charge Beam - TM023
  (774, 77400, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Minior - Facade - TM025
  (774, 77400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Minior - Bulldoze - TM028
  (774, 77400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Minior - Swift - TM032
  (774, 77400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Minior - Rock Tomb - TM036
  (774, 77400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Minior - Endure - TM047
  (774, 77400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Minior - Sandstorm - TM051
  (774, 77400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Minior - Zen Headbutt - TM059
  (774, 77400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 27),
  -- Minior - U-turn - TM060
  (774, 77400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 28),
  -- Minior - Sleep Talk - TM070
  (774, 77400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Minior - Reflect - TM074
  (774, 77400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Minior - Light Screen - TM075
  (774, 77400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Minior - Rock Blast - TM076
  (774, 77400, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 32),
  -- Minior - Dazzling Gleam - TM079
  (774, 77400, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 33),
  -- Minior - Rest - TM085
  (774, 77400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Minior - Rock Slide - TM086
  (774, 77400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Minior - Iron Head - TM099
  (774, 77400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 36),
  -- Minior - Power Gem - TM101
  (774, 77400, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 37),
  -- Minior - Substitute - TM103
  (774, 77400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Minior - Stealth Rock - TM116
  (774, 77400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 39),
  -- Minior - Psychic - TM120
  (774, 77400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 40),
  -- Minior - Calm Mind - TM129
  (774, 77400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 41),
  -- Minior - Earth Power - TM133
  (774, 77400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 42),
  -- Minior - Earthquake - TM149
  (774, 77400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 43),
  -- Minior - Stone Edge - TM150
  (774, 77400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 44),
  -- Minior - Giga Impact - TM152
  (774, 77400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Minior - Hyper Beam - TM163
  (774, 77400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Minior - Solar Beam - TM168
  (774, 77400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 47),
  -- Minior - Tera Blast - TM171
  (774, 77400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Komala - Defense Curl - Level 1
  (775, 77500, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Komala - Rollout - Level 1
  (775, 77500, 205, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Komala - Stockpile - Level 6
  (775, 77500, 254, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Komala - Spit Up - Level 6
  (775, 77500, 255, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Komala - Swallow - Level 6
  (775, 77500, 256, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Komala - Rapid Spin - Level 11
  (775, 77500, 229, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Komala - Yawn - Level 16
  (775, 77500, 281, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Komala - Slam - Level 21
  (775, 77500, 21, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Komala - Flail - Level 26
  (775, 77500, 175, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Komala - Sucker Punch - Level 31
  (775, 77500, 389, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Komala - Psych Up - Level 36
  (775, 77500, 244, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Komala - Wood Hammer - Level 41
  (775, 77500, 452, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Komala - Thrash - Level 46
  (775, 77500, 37, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Komala - Take Down - TM001
  (775, 77500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Komala - Charm - TM002
  (775, 77500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Komala - Protect - TM007
  (775, 77500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Komala - Low Kick - TM012
  (775, 77500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 17),
  -- Komala - Acrobatics - TM014
  (775, 77500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Komala - Thief - TM018
  (775, 77500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Komala - Trailblaze - TM020
  (775, 77500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Komala - Facade - TM025
  (775, 77500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Komala - Bulldoze - TM028
  (775, 77500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Komala - Metal Claw - TM031
  (775, 77500, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 23),
  -- Komala - Rock Tomb - TM036
  (775, 77500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Komala - Low Sweep - TM039
  (775, 77500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 25),
  -- Komala - Fling - TM043
  (775, 77500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Komala - Endure - TM047
  (775, 77500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Komala - Sunny Day - TM049
  (775, 77500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Komala - Rain Dance - TM050
  (775, 77500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Komala - Brick Break - TM058
  (775, 77500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Komala - Zen Headbutt - TM059
  (775, 77500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 31),
  -- Komala - U-turn - TM060
  (775, 77500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Komala - Shadow Claw - TM061
  (775, 77500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Komala - Bulk Up - TM064
  (775, 77500, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Komala - Body Slam - TM066
  (775, 77500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Komala - Sleep Talk - TM070
  (775, 77500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Komala - Seed Bomb - TM071
  (775, 77500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Komala - Stomping Tantrum - TM084
  (775, 77500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Komala - Rock Slide - TM086
  (775, 77500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Komala - Swords Dance - TM088
  (775, 77500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Komala - Iron Head - TM099
  (775, 77500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Komala - Gunk Shot - TM102
  (775, 77500, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 42),
  -- Komala - Substitute - TM103
  (775, 77500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Komala - Ice Spinner - TM124
  (775, 77500, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 44),
  -- Komala - Play Rough - TM127
  (775, 77500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 45),
  -- Komala - Calm Mind - TM129
  (775, 77500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 46),
  -- Komala - Reversal - TM134
  (775, 77500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 47),
  -- Komala - Earthquake - TM149
  (775, 77500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Komala - Giga Impact - TM152
  (775, 77500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Komala - Hyper Beam - TM163
  (775, 77500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Komala - Tera Blast - TM171
  (775, 77500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Komala - Sing - Egg
  (775, 77500, 47, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Komala - Charm - Egg
  (775, 77500, 204, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Komala - Wish - Egg
  (775, 77500, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Komala - Superpower - Egg
  (775, 77500, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Komala - Play Rough - Egg
  (775, 77500, 583, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mimikyu - Scratch - Level 1
  (778, 77800, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mimikyu - Splash - Level 1
  (778, 77800, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mimikyu - Astonish - Level 1
  (778, 77800, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mimikyu - Copycat - Level 1
  (778, 77800, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mimikyu - Wood Hammer - Level 1
  (778, 77800, 452, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mimikyu - Shadow Sneak - Level 6
  (778, 77800, 425, 23, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Mimikyu - Double Team - Level 12
  (778, 77800, 104, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Mimikyu - Baby-Doll Eyes - Level 18
  (778, 77800, 608, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mimikyu - Mimic - Level 24
  (778, 77800, 102, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Mimikyu - Hone Claws - Level 30
  (778, 77800, 468, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Mimikyu - Slash - Level 36
  (778, 77800, 163, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mimikyu - Shadow Claw - Level 42
  (778, 77800, 421, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Mimikyu - Charm - Level 48
  (778, 77800, 204, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Mimikyu - Play Rough - Level 54
  (778, 77800, 583, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Mimikyu - Pain Split - Level 60
  (778, 77800, 220, 23, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Mimikyu - Take Down - TM001
  (778, 77800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Mimikyu - Charm - TM002
  (778, 77800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Mimikyu - Protect - TM007
  (778, 77800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Mimikyu - Confuse Ray - TM017
  (778, 77800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Mimikyu - Thief - TM018
  (778, 77800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Mimikyu - Trailblaze - TM020
  (778, 77800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Mimikyu - Pounce - TM021
  (778, 77800, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 22),
  -- Mimikyu - Facade - TM025
  (778, 77800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Mimikyu - Hex - TM029
  (778, 77800, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 24),
  -- Mimikyu - Draining Kiss - TM037
  (778, 77800, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 25),
  -- Mimikyu - Night Shade - TM042
  (778, 77800, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 26),
  -- Mimikyu - Fling - TM043
  (778, 77800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Mimikyu - Endure - TM047
  (778, 77800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Mimikyu - Sunny Day - TM049
  (778, 77800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Mimikyu - Rain Dance - TM050
  (778, 77800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Mimikyu - Shadow Claw - TM061
  (778, 77800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Mimikyu - Bulk Up - TM064
  (778, 77800, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 32),
  -- Mimikyu - Sleep Talk - TM070
  (778, 77800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Mimikyu - Drain Punch - TM073
  (778, 77800, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 34),
  -- Mimikyu - Light Screen - TM075
  (778, 77800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Mimikyu - Dazzling Gleam - TM079
  (778, 77800, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 36),
  -- Mimikyu - Thunder Wave - TM082
  (778, 77800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 37),
  -- Mimikyu - Rest - TM085
  (778, 77800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Mimikyu - Taunt - TM087
  (778, 77800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Mimikyu - Swords Dance - TM088
  (778, 77800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Mimikyu - Dark Pulse - TM094
  (778, 77800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 41),
  -- Mimikyu - Leech Life - TM095
  (778, 77800, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 42),
  -- Mimikyu - Substitute - TM103
  (778, 77800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Mimikyu - X-Scissor - TM105
  (778, 77800, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 44),
  -- Mimikyu - Will-O-Wisp - TM107
  (778, 77800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 45),
  -- Mimikyu - Trick - TM109
  (778, 77800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 46),
  -- Mimikyu - Giga Drain - TM111
  (778, 77800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 47),
  -- Mimikyu - Shadow Ball - TM114
  (778, 77800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 48),
  -- Mimikyu - Psychic - TM120
  (778, 77800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 49),
  -- Mimikyu - Thunderbolt - TM126
  (778, 77800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 50),
  -- Mimikyu - Play Rough - TM127
  (778, 77800, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 51),
  -- Mimikyu - Misty Terrain - TM139
  (778, 77800, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 52),
  -- Mimikyu - Phantom Force - TM151
  (778, 77800, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 53),
  -- Mimikyu - Giga Impact - TM152
  (778, 77800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Mimikyu - Trick Room - TM161
  (778, 77800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 55),
  -- Mimikyu - Hyper Beam - TM163
  (778, 77800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Mimikyu - Thunder - TM166
  (778, 77800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 57),
  -- Mimikyu - Tera Blast - TM171
  (778, 77800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Mimikyu - Curse - Egg
  (778, 77800, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mimikyu - Destiny Bond - Egg
  (778, 77800, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Bruxish - Water Gun - Level 1
  (779, 77900, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bruxish - Astonish - Level 4
  (779, 77900, 310, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Bruxish - Confusion - Level 9
  (779, 77900, 93, 23, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Bruxish - Bite - Level 12
  (779, 77900, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Bruxish - Aqua Jet - Level 17
  (779, 77900, 453, 23, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Bruxish - Disable - Level 20
  (779, 77900, 50, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Bruxish - Psyshock - Level 25
  (779, 77900, 473, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Bruxish - Crunch - Level 28
  (779, 77900, 242, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Bruxish - Aqua Tail - Level 33
  (779, 77900, 401, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Bruxish - Screech - Level 36
  (779, 77900, 103, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Bruxish - Psychic Fangs - Level 41
  (779, 77900, 706, 23, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Bruxish - Wave Crash - Level 44
  (779, 77900, 834, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Bruxish - Take Down - TM001
  (779, 77900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Bruxish - Agility - TM004
  (779, 77900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Bruxish - Scary Face - TM006
  (779, 77900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Bruxish - Protect - TM007
  (779, 77900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Bruxish - Ice Fang - TM010
  (779, 77900, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 17),
  -- Bruxish - Water Pulse - TM011
  (779, 77900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Bruxish - Chilling Water - TM022
  (779, 77900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Bruxish - Facade - TM025
  (779, 77900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Bruxish - Icy Wind - TM034
  (779, 77900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 21),
  -- Bruxish - Venoshock - TM045
  (779, 77900, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 22),
  -- Bruxish - Endure - TM047
  (779, 77900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Bruxish - Rain Dance - TM050
  (779, 77900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Bruxish - Psyshock - TM054
  (779, 77900, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 25),
  -- Bruxish - Psychic Fangs - TM063
  (779, 77900, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 26),
  -- Bruxish - Bulk Up - TM064
  (779, 77900, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 27),
  -- Bruxish - Sleep Talk - TM070
  (779, 77900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Bruxish - Reflect - TM074
  (779, 77900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 29),
  -- Bruxish - Light Screen - TM075
  (779, 77900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Bruxish - Waterfall - TM077
  (779, 77900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 31),
  -- Bruxish - Rest - TM085
  (779, 77900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Bruxish - Taunt - TM087
  (779, 77900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 33),
  -- Bruxish - Swords Dance - TM088
  (779, 77900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Bruxish - Substitute - TM103
  (779, 77900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Bruxish - Crunch - TM108
  (779, 77900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 36),
  -- Bruxish - Liquidation - TM110
  (779, 77900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 37),
  -- Bruxish - Psychic - TM120
  (779, 77900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 38),
  -- Bruxish - Surf - TM123
  (779, 77900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 39),
  -- Bruxish - Calm Mind - TM129
  (779, 77900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Bruxish - Ice Beam - TM135
  (779, 77900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 41),
  -- Bruxish - Psychic Terrain - TM138
  (779, 77900, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 42),
  -- Bruxish - Hydro Pump - TM142
  (779, 77900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 43),
  -- Bruxish - Blizzard - TM143
  (779, 77900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 44),
  -- Bruxish - Giga Impact - TM152
  (779, 77900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Bruxish - Trick Room - TM161
  (779, 77900, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 46),
  -- Bruxish - Hyper Beam - TM163
  (779, 77900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Bruxish - Tera Blast - TM171
  (779, 77900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Bruxish - Super Fang - Egg
  (779, 77900, 162, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bruxish - Poison Fang - Egg
  (779, 77900, 305, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bruxish - Water Pulse - Egg
  (779, 77900, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bruxish - Ice Fang - Egg
  (779, 77900, 423, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Jangmo-o - Tackle - Level 1
  (782, 78200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jangmo-o - Leer - Level 1
  (782, 78200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jangmo-o - Protect - Level 4
  (782, 78200, 182, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Jangmo-o - Dragon Tail - Level 8
  (782, 78200, 525, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Jangmo-o - Scary Face - Level 12
  (782, 78200, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Jangmo-o - Headbutt - Level 16
  (782, 78200, 29, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Jangmo-o - Work Up - Level 20
  (782, 78200, 526, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Jangmo-o - Screech - Level 24
  (782, 78200, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Jangmo-o - Iron Defense - Level 28
  (782, 78200, 334, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Jangmo-o - Dragon Claw - Level 32
  (782, 78200, 337, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Jangmo-o - Noble Roar - Level 36
  (782, 78200, 568, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Jangmo-o - Dragon Dance - Level 40
  (782, 78200, 349, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Jangmo-o - Outrage - Level 44
  (782, 78200, 200, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Jangmo-o - Take Down - TM001
  (782, 78200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Jangmo-o - Scary Face - TM006
  (782, 78200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Jangmo-o - Protect - TM007
  (782, 78200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Jangmo-o - Low Kick - TM012
  (782, 78200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 17),
  -- Jangmo-o - Facade - TM025
  (782, 78200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Jangmo-o - Bulldoze - TM028
  (782, 78200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Jangmo-o - Rock Tomb - TM036
  (782, 78200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 20),
  -- Jangmo-o - Dragon Tail - TM044
  (782, 78200, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 21),
  -- Jangmo-o - Endure - TM047
  (782, 78200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Jangmo-o - Sandstorm - TM051
  (782, 78200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 23),
  -- Jangmo-o - False Swipe - TM057
  (782, 78200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 24),
  -- Jangmo-o - Brick Break - TM058
  (782, 78200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 25),
  -- Jangmo-o - Shadow Claw - TM061
  (782, 78200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 26),
  -- Jangmo-o - Bulk Up - TM064
  (782, 78200, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 27),
  -- Jangmo-o - Body Slam - TM066
  (782, 78200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Jangmo-o - Sleep Talk - TM070
  (782, 78200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Jangmo-o - Dragon Claw - TM078
  (782, 78200, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 30),
  -- Jangmo-o - Rest - TM085
  (782, 78200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Jangmo-o - Rock Slide - TM086
  (782, 78200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 32),
  -- Jangmo-o - Taunt - TM087
  (782, 78200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 33),
  -- Jangmo-o - Swords Dance - TM088
  (782, 78200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Jangmo-o - Iron Head - TM099
  (782, 78200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 35),
  -- Jangmo-o - Dragon Dance - TM100
  (782, 78200, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 36),
  -- Jangmo-o - Substitute - TM103
  (782, 78200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Jangmo-o - Iron Defense - TM104
  (782, 78200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 38),
  -- Jangmo-o - X-Scissor - TM105
  (782, 78200, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 39),
  -- Jangmo-o - Dragon Pulse - TM115
  (782, 78200, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 40),
  -- Jangmo-o - Reversal - TM134
  (782, 78200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 41),
  -- Jangmo-o - Earthquake - TM149
  (782, 78200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 42),
  -- Jangmo-o - Outrage - TM156
  (782, 78200, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 43),
  -- Jangmo-o - Focus Blast - TM158
  (782, 78200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 44),
  -- Jangmo-o - Draco Meteor - TM169
  (782, 78200, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 45),
  -- Jangmo-o - Tera Blast - TM171
  (782, 78200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Jangmo-o - Counter - Egg
  (782, 78200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Jangmo-o - Dragon Breath - Egg
  (782, 78200, 225, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Jangmo-o - Focus Punch - Egg
  (782, 78200, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hakamo-o - Tackle - Level 1
  (783, 78300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hakamo-o - Leer - Level 1
  (783, 78300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hakamo-o - Protect - Level 1
  (783, 78300, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hakamo-o - Dragon Tail - Level 1
  (783, 78300, 525, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hakamo-o - Scary Face - Level 12
  (783, 78300, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Hakamo-o - Headbutt - Level 16
  (783, 78300, 29, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Hakamo-o - Work Up - Level 20
  (783, 78300, 526, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Hakamo-o - Screech - Level 24
  (783, 78300, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Hakamo-o - Iron Defense - Level 28
  (783, 78300, 334, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Hakamo-o - Dragon Claw - Level 32
  (783, 78300, 337, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Hakamo-o - Noble Roar - Level 38
  (783, 78300, 568, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Hakamo-o - Dragon Dance - Level 44
  (783, 78300, 349, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Hakamo-o - Outrage - Level 50
  (783, 78300, 200, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Hakamo-o - Close Combat - Level 56
  (783, 78300, 370, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Hakamo-o - Take Down - TM001
  (783, 78300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Hakamo-o - Scary Face - TM006
  (783, 78300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Hakamo-o - Protect - TM007
  (783, 78300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Hakamo-o - Low Kick - TM012
  (783, 78300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Hakamo-o - Facade - TM025
  (783, 78300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Hakamo-o - Aerial Ace - TM027
  (783, 78300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Hakamo-o - Bulldoze - TM028
  (783, 78300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Hakamo-o - Metal Claw - TM031
  (783, 78300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 22),
  -- Hakamo-o - Rock Tomb - TM036
  (783, 78300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Hakamo-o - Fling - TM043
  (783, 78300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Hakamo-o - Dragon Tail - TM044
  (783, 78300, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 25),
  -- Hakamo-o - Endure - TM047
  (783, 78300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Hakamo-o - Sunny Day - TM049
  (783, 78300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Hakamo-o - Sandstorm - TM051
  (783, 78300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Hakamo-o - False Swipe - TM057
  (783, 78300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 29),
  -- Hakamo-o - Brick Break - TM058
  (783, 78300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Hakamo-o - Shadow Claw - TM061
  (783, 78300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Hakamo-o - Bulk Up - TM064
  (783, 78300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 32),
  -- Hakamo-o - Body Slam - TM066
  (783, 78300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Hakamo-o - Sleep Talk - TM070
  (783, 78300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Hakamo-o - Drain Punch - TM073
  (783, 78300, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 35),
  -- Hakamo-o - Dragon Claw - TM078
  (783, 78300, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 36),
  -- Hakamo-o - Rest - TM085
  (783, 78300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Hakamo-o - Rock Slide - TM086
  (783, 78300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Hakamo-o - Taunt - TM087
  (783, 78300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Hakamo-o - Swords Dance - TM088
  (783, 78300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Hakamo-o - Iron Head - TM099
  (783, 78300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Hakamo-o - Dragon Dance - TM100
  (783, 78300, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 42),
  -- Hakamo-o - Substitute - TM103
  (783, 78300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Hakamo-o - Iron Defense - TM104
  (783, 78300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Hakamo-o - X-Scissor - TM105
  (783, 78300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 45),
  -- Hakamo-o - Dragon Pulse - TM115
  (783, 78300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 46),
  -- Hakamo-o - Reversal - TM134
  (783, 78300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 47),
  -- Hakamo-o - Earthquake - TM149
  (783, 78300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Hakamo-o - Outrage - TM156
  (783, 78300, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 49),
  -- Hakamo-o - Focus Blast - TM158
  (783, 78300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 50),
  -- Hakamo-o - Close Combat - TM167
  (783, 78300, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 51),
  -- Hakamo-o - Draco Meteor - TM169
  (783, 78300, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 52),
  -- Hakamo-o - Tera Blast - TM171
  (783, 78300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Hakamo-o - Counter - Egg
  (783, 78300, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hakamo-o - Dragon Breath - Egg
  (783, 78300, 225, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hakamo-o - Focus Punch - Egg
  (783, 78300, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kommo-o - Tackle - Level 1
  (784, 78400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kommo-o - Leer - Level 1
  (784, 78400, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kommo-o - Protect - Level 1
  (784, 78400, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kommo-o - Dragon Tail - Level 1
  (784, 78400, 525, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kommo-o - Scary Face - Level 12
  (784, 78400, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Kommo-o - Headbutt - Level 16
  (784, 78400, 29, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kommo-o - Work Up - Level 20
  (784, 78400, 526, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Kommo-o - Screech - Level 24
  (784, 78400, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Kommo-o - Iron Defense - Level 28
  (784, 78400, 334, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Kommo-o - Dragon Claw - Level 32
  (784, 78400, 337, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Kommo-o - Noble Roar - Level 38
  (784, 78400, 568, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Kommo-o - Dragon Dance - Level 44
  (784, 78400, 349, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Kommo-o - Outrage - Level 52
  (784, 78400, 200, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Kommo-o - Close Combat - Level 60
  (784, 78400, 370, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Kommo-o - Clangorous Soul - Level 68
  (784, 78400, 775, 23, NULL, 1, 68, NULL, NULL, NULL, 15),
  -- Kommo-o - Boomburst - Level 76
  (784, 78400, 586, 23, NULL, 1, 76, NULL, NULL, NULL, 16),
  -- Kommo-o - Take Down - TM001
  (784, 78400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Kommo-o - Scary Face - TM006
  (784, 78400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Kommo-o - Protect - TM007
  (784, 78400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Kommo-o - Low Kick - TM012
  (784, 78400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Kommo-o - Facade - TM025
  (784, 78400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Kommo-o - Aerial Ace - TM027
  (784, 78400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Kommo-o - Bulldoze - TM028
  (784, 78400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Kommo-o - Metal Claw - TM031
  (784, 78400, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Kommo-o - Rock Tomb - TM036
  (784, 78400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Kommo-o - Fling - TM043
  (784, 78400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Kommo-o - Dragon Tail - TM044
  (784, 78400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 27),
  -- Kommo-o - Endure - TM047
  (784, 78400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Kommo-o - Sunny Day - TM049
  (784, 78400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Kommo-o - Rain Dance - TM050
  (784, 78400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Kommo-o - Sandstorm - TM051
  (784, 78400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Kommo-o - False Swipe - TM057
  (784, 78400, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 32),
  -- Kommo-o - Brick Break - TM058
  (784, 78400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Kommo-o - Shadow Claw - TM061
  (784, 78400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Kommo-o - Bulk Up - TM064
  (784, 78400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 35),
  -- Kommo-o - Body Slam - TM066
  (784, 78400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Kommo-o - Fire Punch - TM067
  (784, 78400, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 37),
  -- Kommo-o - Thunder Punch - TM068
  (784, 78400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Kommo-o - Ice Punch - TM069
  (784, 78400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 39),
  -- Kommo-o - Sleep Talk - TM070
  (784, 78400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Kommo-o - Drain Punch - TM073
  (784, 78400, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 41),
  -- Kommo-o - Dragon Claw - TM078
  (784, 78400, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 42),
  -- Kommo-o - Poison Jab - TM083
  (784, 78400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 43),
  -- Kommo-o - Stomping Tantrum - TM084
  (784, 78400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 44),
  -- Kommo-o - Rest - TM085
  (784, 78400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Kommo-o - Rock Slide - TM086
  (784, 78400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 46),
  -- Kommo-o - Taunt - TM087
  (784, 78400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Kommo-o - Swords Dance - TM088
  (784, 78400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 48),
  -- Kommo-o - Body Press - TM089
  (784, 78400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 49),
  -- Kommo-o - Flash Cannon - TM093
  (784, 78400, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 50),
  -- Kommo-o - Iron Head - TM099
  (784, 78400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 51),
  -- Kommo-o - Dragon Dance - TM100
  (784, 78400, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 52),
  -- Kommo-o - Substitute - TM103
  (784, 78400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Kommo-o - Iron Defense - TM104
  (784, 78400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 54),
  -- Kommo-o - X-Scissor - TM105
  (784, 78400, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 55),
  -- Kommo-o - Aura Sphere - TM112
  (784, 78400, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 56),
  -- Kommo-o - Dragon Pulse - TM115
  (784, 78400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 57),
  -- Kommo-o - Stealth Rock - TM116
  (784, 78400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 58),
  -- Kommo-o - Hyper Voice - TM117
  (784, 78400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 59),
  -- Kommo-o - Flamethrower - TM125
  (784, 78400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 60),
  -- Kommo-o - Helping Hand - TM130
  (784, 78400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 61),
  -- Kommo-o - Reversal - TM134
  (784, 78400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 62),
  -- Kommo-o - Earthquake - TM149
  (784, 78400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 63),
  -- Kommo-o - Giga Impact - TM152
  (784, 78400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 64),
  -- Kommo-o - Outrage - TM156
  (784, 78400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 65),
  -- Kommo-o - Focus Blast - TM158
  (784, 78400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 66),
  -- Kommo-o - Hyper Beam - TM163
  (784, 78400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 67),
  -- Kommo-o - Close Combat - TM167
  (784, 78400, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 68),
  -- Kommo-o - Draco Meteor - TM169
  (784, 78400, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 69),
  -- Kommo-o - Tera Blast - TM171
  (784, 78400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 70),
  -- Kommo-o - Counter - Egg
  (784, 78400, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kommo-o - Dragon Breath - Egg
  (784, 78400, 225, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Kommo-o - Focus Punch - Egg
  (784, 78400, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Kommo-o - Clanging Scales - Evolution
  (784, 78400, 691, 23, NULL, 7, NULL, NULL, NULL, NULL, 74),
  -- Kommo-o - Belly Drum - Reminder
  (784, 78400, 187, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Cosmog - Teleport - Level 1
  (789, 78900, 100, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cosmog - Splash - Level 1
  (789, 78900, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cosmoem - Teleport - Level 1
  (790, 79000, 100, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cosmoem - Cosmic Power - Evolution
  (790, 79000, 322, 23, NULL, 7, NULL, NULL, NULL, NULL, 2),
  -- Solgaleo - Teleport - Level 1
  (791, 79100, 100, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solgaleo - Metal Claw - Level 1
  (791, 79100, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Solgaleo - Cosmic Power - Level 1
  (791, 79100, 322, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Solgaleo - Noble Roar - Level 1
  (791, 79100, 568, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Solgaleo - Iron Head - Level 7
  (791, 79100, 442, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Solgaleo - Metal Sound - Level 14
  (791, 79100, 319, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Solgaleo - Zen Headbutt - Level 21
  (791, 79100, 428, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Solgaleo - Flash Cannon - Level 28
  (791, 79100, 430, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Solgaleo - Morning Sun - Level 35
  (791, 79100, 234, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Solgaleo - Crunch - Level 42
  (791, 79100, 242, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Solgaleo - Metal Burst - Level 49
  (791, 79100, 368, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Solgaleo - Wild Charge - Level 56
  (791, 79100, 528, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Solgaleo - Solar Beam - Level 63
  (791, 79100, 76, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Solgaleo - Flare Blitz - Level 70
  (791, 79100, 394, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Solgaleo - Wide Guard - Level 77
  (791, 79100, 469, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Solgaleo - Giga Impact - Level 84
  (791, 79100, 416, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Solgaleo - Take Down - TM001
  (791, 79100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Solgaleo - Agility - TM004
  (791, 79100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Solgaleo - Scary Face - TM006
  (791, 79100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Solgaleo - Protect - TM007
  (791, 79100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Solgaleo - Fire Spin - TM024
  (791, 79100, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Solgaleo - Facade - TM025
  (791, 79100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Solgaleo - Bulldoze - TM028
  (791, 79100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Solgaleo - Snarl - TM030
  (791, 79100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Solgaleo - Metal Claw - TM031
  (791, 79100, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 25),
  -- Solgaleo - Swift - TM032
  (791, 79100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Solgaleo - Rock Tomb - TM036
  (791, 79100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Solgaleo - Flame Charge - TM038
  (791, 79100, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 28),
  -- Solgaleo - Endure - TM047
  (791, 79100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Solgaleo - Sunny Day - TM049
  (791, 79100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Solgaleo - Psyshock - TM054
  (791, 79100, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Solgaleo - Zen Headbutt - TM059
  (791, 79100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Solgaleo - Psychic Fangs - TM063
  (791, 79100, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 33),
  -- Solgaleo - Body Slam - TM066
  (791, 79100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Solgaleo - Sleep Talk - TM070
  (791, 79100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Solgaleo - Reflect - TM074
  (791, 79100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Solgaleo - Light Screen - TM075
  (791, 79100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Solgaleo - Rest - TM085
  (791, 79100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Solgaleo - Rock Slide - TM086
  (791, 79100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Solgaleo - Flash Cannon - TM093
  (791, 79100, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 40),
  -- Solgaleo - Iron Head - TM099
  (791, 79100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Solgaleo - Substitute - TM103
  (791, 79100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Solgaleo - Iron Defense - TM104
  (791, 79100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 43),
  -- Solgaleo - Crunch - TM108
  (791, 79100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Solgaleo - Hyper Voice - TM117
  (791, 79100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 45),
  -- Solgaleo - Psychic - TM120
  (791, 79100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 46),
  -- Solgaleo - Heavy Slam - TM121
  (791, 79100, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 47),
  -- Solgaleo - Flamethrower - TM125
  (791, 79100, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 48),
  -- Solgaleo - Thunderbolt - TM126
  (791, 79100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 49),
  -- Solgaleo - Calm Mind - TM129
  (791, 79100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 50),
  -- Solgaleo - Helping Hand - TM130
  (791, 79100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Solgaleo - Fire Blast - TM141
  (791, 79100, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 52),
  -- Solgaleo - Wild Charge - TM147
  (791, 79100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 53),
  -- Solgaleo - Earthquake - TM149
  (791, 79100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 54),
  -- Solgaleo - Stone Edge - TM150
  (791, 79100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 55),
  -- Solgaleo - Giga Impact - TM152
  (791, 79100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Solgaleo - Outrage - TM156
  (791, 79100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 57),
  -- Solgaleo - Focus Blast - TM158
  (791, 79100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 58),
  -- Solgaleo - Trick Room - TM161
  (791, 79100, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 59),
  -- Solgaleo - Hyper Beam - TM163
  (791, 79100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Solgaleo - Flare Blitz - TM165
  (791, 79100, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 61),
  -- Solgaleo - Thunder - TM166
  (791, 79100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 62),
  -- Solgaleo - Close Combat - TM167
  (791, 79100, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 63),
  -- Solgaleo - Solar Beam - TM168
  (791, 79100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 64),
  -- Solgaleo - Steel Beam - TM170
  (791, 79100, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 65),
  -- Solgaleo - Tera Blast - TM171
  (791, 79100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Solgaleo - Sunsteel Strike - Evolution
  (791, 79100, 713, 23, NULL, 7, NULL, NULL, NULL, NULL, 67),
  -- Lunala - Confusion - Level 1
  (792, 79200, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lunala - Hypnosis - Level 1
  (792, 79200, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lunala - Teleport - Level 1
  (792, 79200, 100, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lunala - Cosmic Power - Level 1
  (792, 79200, 322, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lunala - Night Shade - Level 7
  (792, 79200, 101, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Lunala - Confuse Ray - Level 14
  (792, 79200, 109, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Lunala - Air Slash - Level 21
  (792, 79200, 403, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Lunala - Shadow Ball - Level 28
  (792, 79200, 247, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Lunala - Moonlight - Level 35
  (792, 79200, 236, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Lunala - Night Daze - Level 42
  (792, 79200, 539, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Lunala - Psychic - Level 49
  (792, 79200, 94, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Lunala - Moonblast - Level 56
  (792, 79200, 585, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Lunala - Phantom Force - Level 63
  (792, 79200, 566, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Lunala - Dream Eater - Level 70
  (792, 79200, 138, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Lunala - Wide Guard - Level 77
  (792, 79200, 469, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Lunala - Agility - TM004
  (792, 79200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Lunala - Scary Face - TM006
  (792, 79200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Lunala - Protect - TM007
  (792, 79200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Lunala - Acrobatics - TM014
  (792, 79200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Lunala - Confuse Ray - TM017
  (792, 79200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Lunala - Charge Beam - TM023
  (792, 79200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Lunala - Facade - TM025
  (792, 79200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Lunala - Aerial Ace - TM027
  (792, 79200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Lunala - Hex - TM029
  (792, 79200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 24),
  -- Lunala - Swift - TM032
  (792, 79200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Lunala - Icy Wind - TM034
  (792, 79200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Lunala - Night Shade - TM042
  (792, 79200, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 27),
  -- Lunala - Endure - TM047
  (792, 79200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Lunala - Sunny Day - TM049
  (792, 79200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Lunala - Rain Dance - TM050
  (792, 79200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Lunala - Psyshock - TM054
  (792, 79200, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Lunala - Shadow Claw - TM061
  (792, 79200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 32),
  -- Lunala - Air Slash - TM065
  (792, 79200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 33),
  -- Lunala - Sleep Talk - TM070
  (792, 79200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Lunala - Reflect - TM074
  (792, 79200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 35),
  -- Lunala - Light Screen - TM075
  (792, 79200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Lunala - Dazzling Gleam - TM079
  (792, 79200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 37),
  -- Lunala - Rest - TM085
  (792, 79200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Lunala - Fly - TM097
  (792, 79200, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 39),
  -- Lunala - Substitute - TM103
  (792, 79200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Lunala - Will-O-Wisp - TM107
  (792, 79200, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 41),
  -- Lunala - Trick - TM109
  (792, 79200, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 42),
  -- Lunala - Tailwind - TM113
  (792, 79200, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 43),
  -- Lunala - Shadow Ball - TM114
  (792, 79200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 44),
  -- Lunala - Heat Wave - TM118
  (792, 79200, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 45),
  -- Lunala - Psychic - TM120
  (792, 79200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 46),
  -- Lunala - Thunderbolt - TM126
  (792, 79200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 47),
  -- Lunala - Calm Mind - TM129
  (792, 79200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 48),
  -- Lunala - Helping Hand - TM130
  (792, 79200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Lunala - Ice Beam - TM135
  (792, 79200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 50),
  -- Lunala - Blizzard - TM143
  (792, 79200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 51),
  -- Lunala - Phantom Force - TM151
  (792, 79200, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 52),
  -- Lunala - Giga Impact - TM152
  (792, 79200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Lunala - Focus Blast - TM158
  (792, 79200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 54),
  -- Lunala - Trick Room - TM161
  (792, 79200, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 55),
  -- Lunala - Hyper Beam - TM163
  (792, 79200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Lunala - Thunder - TM166
  (792, 79200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 57),
  -- Lunala - Solar Beam - TM168
  (792, 79200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Lunala - Tera Blast - TM171
  (792, 79200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Lunala - Moongeist Beam - Evolution
  (792, 79200, 714, 23, NULL, 7, NULL, NULL, NULL, NULL, 60),
  -- Necrozma - Confusion - Level 1
  (800, 80000, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Necrozma - Metal Claw - Level 1
  (800, 80000, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Necrozma - Morning Sun - Level 1
  (800, 80000, 234, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Necrozma - Moonlight - Level 1
  (800, 80000, 236, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Necrozma - Charge Beam - Level 1
  (800, 80000, 451, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Necrozma - Stealth Rock - Level 8
  (800, 80000, 446, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Necrozma - Slash - Level 16
  (800, 80000, 163, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Necrozma - Night Slash - Level 24
  (800, 80000, 400, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Necrozma - Psycho Cut - Level 32
  (800, 80000, 427, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Necrozma - Stored Power - Level 40
  (800, 80000, 500, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Necrozma - Rock Blast - Level 48
  (800, 80000, 350, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Necrozma - Iron Defense - Level 56
  (800, 80000, 334, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Necrozma - Power Gem - Level 64
  (800, 80000, 408, 23, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Necrozma - Photon Geyser - Level 72
  (800, 80000, 722, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Necrozma - Gravity - Level 80
  (800, 80000, 356, 23, NULL, 1, 80, NULL, NULL, NULL, 15),
  -- Necrozma - Prismatic Laser - Level 88
  (800, 80000, 711, 23, NULL, 1, 88, NULL, NULL, NULL, 16),
  -- Necrozma - Scary Face - TM006
  (800, 80000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Necrozma - Protect - TM007
  (800, 80000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Necrozma - Thief - TM018
  (800, 80000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Necrozma - Charge Beam - TM023
  (800, 80000, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Necrozma - Facade - TM025
  (800, 80000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Necrozma - Aerial Ace - TM027
  (800, 80000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Necrozma - Bulldoze - TM028
  (800, 80000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Necrozma - Metal Claw - TM031
  (800, 80000, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Necrozma - Swift - TM032
  (800, 80000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Necrozma - Rock Tomb - TM036
  (800, 80000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Necrozma - Stored Power - TM041
  (800, 80000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 27),
  -- Necrozma - Fling - TM043
  (800, 80000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Necrozma - Endure - TM047
  (800, 80000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Necrozma - Sunny Day - TM049
  (800, 80000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Necrozma - Sandstorm - TM051
  (800, 80000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Necrozma - Smart Strike - TM053
  (800, 80000, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 32),
  -- Necrozma - Psyshock - TM054
  (800, 80000, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Necrozma - Brick Break - TM058
  (800, 80000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Necrozma - Shadow Claw - TM061
  (800, 80000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Necrozma - Psychic Fangs - TM063
  (800, 80000, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 36),
  -- Necrozma - Body Slam - TM066
  (800, 80000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Necrozma - Sleep Talk - TM070
  (800, 80000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Necrozma - Reflect - TM074
  (800, 80000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 39),
  -- Necrozma - Light Screen - TM075
  (800, 80000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Necrozma - Rock Blast - TM076
  (800, 80000, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 41),
  -- Necrozma - Rest - TM085
  (800, 80000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Necrozma - Rock Slide - TM086
  (800, 80000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Necrozma - Swords Dance - TM088
  (800, 80000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Necrozma - Imprison - TM092
  (800, 80000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 45),
  -- Necrozma - Flash Cannon - TM093
  (800, 80000, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 46),
  -- Necrozma - Dark Pulse - TM094
  (800, 80000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 47),
  -- Necrozma - Iron Head - TM099
  (800, 80000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 48),
  -- Necrozma - Dragon Dance - TM100
  (800, 80000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 49),
  -- Necrozma - Power Gem - TM101
  (800, 80000, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 50),
  -- Necrozma - Substitute - TM103
  (800, 80000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Necrozma - Iron Defense - TM104
  (800, 80000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 52),
  -- Necrozma - X-Scissor - TM105
  (800, 80000, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 53),
  -- Necrozma - Dragon Pulse - TM115
  (800, 80000, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 54),
  -- Necrozma - Stealth Rock - TM116
  (800, 80000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 55),
  -- Necrozma - Hyper Voice - TM117
  (800, 80000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 56),
  -- Necrozma - Heat Wave - TM118
  (800, 80000, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 57),
  -- Necrozma - Psychic - TM120
  (800, 80000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 58),
  -- Necrozma - Calm Mind - TM129
  (800, 80000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 59),
  -- Necrozma - Earth Power - TM133
  (800, 80000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 60),
  -- Necrozma - Earthquake - TM149
  (800, 80000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 61),
  -- Necrozma - Stone Edge - TM150
  (800, 80000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 62),
  -- Necrozma - Giga Impact - TM152
  (800, 80000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 63),
  -- Necrozma - Outrage - TM156
  (800, 80000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 64),
  -- Necrozma - Trick Room - TM161
  (800, 80000, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 65),
  -- Necrozma - Hyper Beam - TM163
  (800, 80000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Necrozma - Solar Beam - TM168
  (800, 80000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 67),
  -- Necrozma - Tera Blast - TM171
  (800, 80000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 68),
  -- Necrozma (Dusk Mane) - Confusion - Level 1
  (800, 80001, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Necrozma (Dusk Mane) - Metal Claw - Level 1
  (800, 80001, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Necrozma (Dusk Mane) - Morning Sun - Level 1
  (800, 80001, 234, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Necrozma (Dusk Mane) - Moonlight - Level 1
  (800, 80001, 236, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Necrozma (Dusk Mane) - Charge Beam - Level 1
  (800, 80001, 451, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Necrozma (Dusk Mane) - Stealth Rock - Level 8
  (800, 80001, 446, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Necrozma (Dusk Mane) - Slash - Level 16
  (800, 80001, 163, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Necrozma (Dusk Mane) - Night Slash - Level 24
  (800, 80001, 400, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Necrozma (Dusk Mane) - Psycho Cut - Level 32
  (800, 80001, 427, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Necrozma (Dusk Mane) - Stored Power - Level 40
  (800, 80001, 500, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Necrozma (Dusk Mane) - Rock Blast - Level 48
  (800, 80001, 350, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Necrozma (Dusk Mane) - Iron Defense - Level 56
  (800, 80001, 334, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Necrozma (Dusk Mane) - Power Gem - Level 64
  (800, 80001, 408, 23, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Necrozma (Dusk Mane) - Photon Geyser - Level 72
  (800, 80001, 722, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Necrozma (Dusk Mane) - Gravity - Level 80
  (800, 80001, 356, 23, NULL, 1, 80, NULL, NULL, NULL, 15),
  -- Necrozma (Dusk Mane) - Prismatic Laser - Level 88
  (800, 80001, 711, 23, NULL, 1, 88, NULL, NULL, NULL, 16),
  -- Necrozma (Dusk Mane) - Scary Face - TM006
  (800, 80001, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Necrozma (Dusk Mane) - Protect - TM007
  (800, 80001, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Necrozma (Dusk Mane) - Thief - TM018
  (800, 80001, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Necrozma (Dusk Mane) - Charge Beam - TM023
  (800, 80001, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Necrozma (Dusk Mane) - Facade - TM025
  (800, 80001, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Necrozma (Dusk Mane) - Aerial Ace - TM027
  (800, 80001, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Necrozma (Dusk Mane) - Bulldoze - TM028
  (800, 80001, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Necrozma (Dusk Mane) - Metal Claw - TM031
  (800, 80001, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Necrozma (Dusk Mane) - Swift - TM032
  (800, 80001, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Necrozma (Dusk Mane) - Rock Tomb - TM036
  (800, 80001, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Necrozma (Dusk Mane) - Stored Power - TM041
  (800, 80001, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 27),
  -- Necrozma (Dusk Mane) - Fling - TM043
  (800, 80001, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Necrozma (Dusk Mane) - Endure - TM047
  (800, 80001, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Necrozma (Dusk Mane) - Sunny Day - TM049
  (800, 80001, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Necrozma (Dusk Mane) - Sandstorm - TM051
  (800, 80001, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Necrozma (Dusk Mane) - Smart Strike - TM053
  (800, 80001, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 32),
  -- Necrozma (Dusk Mane) - Psyshock - TM054
  (800, 80001, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Necrozma (Dusk Mane) - Brick Break - TM058
  (800, 80001, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Necrozma (Dusk Mane) - Shadow Claw - TM061
  (800, 80001, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Necrozma (Dusk Mane) - Psychic Fangs - TM063
  (800, 80001, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 36),
  -- Necrozma (Dusk Mane) - Body Slam - TM066
  (800, 80001, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Necrozma (Dusk Mane) - Sleep Talk - TM070
  (800, 80001, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Necrozma (Dusk Mane) - Reflect - TM074
  (800, 80001, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 39),
  -- Necrozma (Dusk Mane) - Light Screen - TM075
  (800, 80001, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Necrozma (Dusk Mane) - Rock Blast - TM076
  (800, 80001, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 41),
  -- Necrozma (Dusk Mane) - Rest - TM085
  (800, 80001, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Necrozma (Dusk Mane) - Rock Slide - TM086
  (800, 80001, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Necrozma (Dusk Mane) - Swords Dance - TM088
  (800, 80001, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Necrozma (Dusk Mane) - Imprison - TM092
  (800, 80001, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 45),
  -- Necrozma (Dusk Mane) - Flash Cannon - TM093
  (800, 80001, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 46),
  -- Necrozma (Dusk Mane) - Dark Pulse - TM094
  (800, 80001, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 47),
  -- Necrozma (Dusk Mane) - Iron Head - TM099
  (800, 80001, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 48),
  -- Necrozma (Dusk Mane) - Dragon Dance - TM100
  (800, 80001, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 49),
  -- Necrozma (Dusk Mane) - Power Gem - TM101
  (800, 80001, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 50),
  -- Necrozma (Dusk Mane) - Substitute - TM103
  (800, 80001, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Necrozma (Dusk Mane) - Iron Defense - TM104
  (800, 80001, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 52),
  -- Necrozma (Dusk Mane) - X-Scissor - TM105
  (800, 80001, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 53),
  -- Necrozma (Dusk Mane) - Dragon Pulse - TM115
  (800, 80001, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 54),
  -- Necrozma (Dusk Mane) - Stealth Rock - TM116
  (800, 80001, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 55),
  -- Necrozma (Dusk Mane) - Hyper Voice - TM117
  (800, 80001, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 56),
  -- Necrozma (Dusk Mane) - Heat Wave - TM118
  (800, 80001, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 57),
  -- Necrozma (Dusk Mane) - Psychic - TM120
  (800, 80001, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 58),
  -- Necrozma (Dusk Mane) - Calm Mind - TM129
  (800, 80001, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 59),
  -- Necrozma (Dusk Mane) - Earth Power - TM133
  (800, 80001, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 60),
  -- Necrozma (Dusk Mane) - Earthquake - TM149
  (800, 80001, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 61),
  -- Necrozma (Dusk Mane) - Stone Edge - TM150
  (800, 80001, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 62),
  -- Necrozma (Dusk Mane) - Giga Impact - TM152
  (800, 80001, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 63),
  -- Necrozma (Dusk Mane) - Outrage - TM156
  (800, 80001, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 64),
  -- Necrozma (Dusk Mane) - Trick Room - TM161
  (800, 80001, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 65),
  -- Necrozma (Dusk Mane) - Hyper Beam - TM163
  (800, 80001, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Necrozma (Dusk Mane) - Solar Beam - TM168
  (800, 80001, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 67),
  -- Necrozma (Dusk Mane) - Tera Blast - TM171
  (800, 80001, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 68),
  -- Necrozma (Dawn Wings) - Confusion - Level 1
  (800, 80002, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Necrozma (Dawn Wings) - Metal Claw - Level 1
  (800, 80002, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Necrozma (Dawn Wings) - Morning Sun - Level 1
  (800, 80002, 234, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Necrozma (Dawn Wings) - Moonlight - Level 1
  (800, 80002, 236, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Necrozma (Dawn Wings) - Charge Beam - Level 1
  (800, 80002, 451, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Necrozma (Dawn Wings) - Stealth Rock - Level 8
  (800, 80002, 446, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Necrozma (Dawn Wings) - Slash - Level 16
  (800, 80002, 163, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Necrozma (Dawn Wings) - Night Slash - Level 24
  (800, 80002, 400, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Necrozma (Dawn Wings) - Psycho Cut - Level 32
  (800, 80002, 427, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Necrozma (Dawn Wings) - Stored Power - Level 40
  (800, 80002, 500, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Necrozma (Dawn Wings) - Rock Blast - Level 48
  (800, 80002, 350, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Necrozma (Dawn Wings) - Iron Defense - Level 56
  (800, 80002, 334, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Necrozma (Dawn Wings) - Power Gem - Level 64
  (800, 80002, 408, 23, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Necrozma (Dawn Wings) - Photon Geyser - Level 72
  (800, 80002, 722, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Necrozma (Dawn Wings) - Gravity - Level 80
  (800, 80002, 356, 23, NULL, 1, 80, NULL, NULL, NULL, 15),
  -- Necrozma (Dawn Wings) - Prismatic Laser - Level 88
  (800, 80002, 711, 23, NULL, 1, 88, NULL, NULL, NULL, 16),
  -- Necrozma (Dawn Wings) - Scary Face - TM006
  (800, 80002, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Necrozma (Dawn Wings) - Protect - TM007
  (800, 80002, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Necrozma (Dawn Wings) - Thief - TM018
  (800, 80002, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Necrozma (Dawn Wings) - Charge Beam - TM023
  (800, 80002, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Necrozma (Dawn Wings) - Facade - TM025
  (800, 80002, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Necrozma (Dawn Wings) - Aerial Ace - TM027
  (800, 80002, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Necrozma (Dawn Wings) - Bulldoze - TM028
  (800, 80002, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Necrozma (Dawn Wings) - Metal Claw - TM031
  (800, 80002, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Necrozma (Dawn Wings) - Swift - TM032
  (800, 80002, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Necrozma (Dawn Wings) - Rock Tomb - TM036
  (800, 80002, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Necrozma (Dawn Wings) - Stored Power - TM041
  (800, 80002, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 27),
  -- Necrozma (Dawn Wings) - Fling - TM043
  (800, 80002, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Necrozma (Dawn Wings) - Endure - TM047
  (800, 80002, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Necrozma (Dawn Wings) - Sunny Day - TM049
  (800, 80002, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Necrozma (Dawn Wings) - Sandstorm - TM051
  (800, 80002, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Necrozma (Dawn Wings) - Smart Strike - TM053
  (800, 80002, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 32),
  -- Necrozma (Dawn Wings) - Psyshock - TM054
  (800, 80002, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Necrozma (Dawn Wings) - Brick Break - TM058
  (800, 80002, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Necrozma (Dawn Wings) - Shadow Claw - TM061
  (800, 80002, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Necrozma (Dawn Wings) - Psychic Fangs - TM063
  (800, 80002, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 36),
  -- Necrozma (Dawn Wings) - Body Slam - TM066
  (800, 80002, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Necrozma (Dawn Wings) - Sleep Talk - TM070
  (800, 80002, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Necrozma (Dawn Wings) - Reflect - TM074
  (800, 80002, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 39),
  -- Necrozma (Dawn Wings) - Light Screen - TM075
  (800, 80002, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Necrozma (Dawn Wings) - Rock Blast - TM076
  (800, 80002, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 41),
  -- Necrozma (Dawn Wings) - Rest - TM085
  (800, 80002, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Necrozma (Dawn Wings) - Rock Slide - TM086
  (800, 80002, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Necrozma (Dawn Wings) - Swords Dance - TM088
  (800, 80002, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Necrozma (Dawn Wings) - Imprison - TM092
  (800, 80002, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 45),
  -- Necrozma (Dawn Wings) - Flash Cannon - TM093
  (800, 80002, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 46),
  -- Necrozma (Dawn Wings) - Dark Pulse - TM094
  (800, 80002, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 47),
  -- Necrozma (Dawn Wings) - Iron Head - TM099
  (800, 80002, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 48),
  -- Necrozma (Dawn Wings) - Dragon Dance - TM100
  (800, 80002, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 49),
  -- Necrozma (Dawn Wings) - Power Gem - TM101
  (800, 80002, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 50),
  -- Necrozma (Dawn Wings) - Substitute - TM103
  (800, 80002, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Necrozma (Dawn Wings) - Iron Defense - TM104
  (800, 80002, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 52),
  -- Necrozma (Dawn Wings) - X-Scissor - TM105
  (800, 80002, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 53),
  -- Necrozma (Dawn Wings) - Dragon Pulse - TM115
  (800, 80002, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 54),
  -- Necrozma (Dawn Wings) - Stealth Rock - TM116
  (800, 80002, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 55),
  -- Necrozma (Dawn Wings) - Hyper Voice - TM117
  (800, 80002, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 56),
  -- Necrozma (Dawn Wings) - Heat Wave - TM118
  (800, 80002, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 57),
  -- Necrozma (Dawn Wings) - Psychic - TM120
  (800, 80002, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 58),
  -- Necrozma (Dawn Wings) - Calm Mind - TM129
  (800, 80002, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 59),
  -- Necrozma (Dawn Wings) - Earth Power - TM133
  (800, 80002, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 60),
  -- Necrozma (Dawn Wings) - Earthquake - TM149
  (800, 80002, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 61),
  -- Necrozma (Dawn Wings) - Stone Edge - TM150
  (800, 80002, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 62),
  -- Necrozma (Dawn Wings) - Giga Impact - TM152
  (800, 80002, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 63),
  -- Necrozma (Dawn Wings) - Outrage - TM156
  (800, 80002, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 64),
  -- Necrozma (Dawn Wings) - Trick Room - TM161
  (800, 80002, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 65),
  -- Necrozma (Dawn Wings) - Hyper Beam - TM163
  (800, 80002, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Necrozma (Dawn Wings) - Solar Beam - TM168
  (800, 80002, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 67),
  -- Necrozma (Dawn Wings) - Tera Blast - TM171
  (800, 80002, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 68);
