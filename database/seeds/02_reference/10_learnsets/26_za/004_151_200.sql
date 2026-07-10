-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Base ZA rows include numeric level-up, evolution-learned, and TM001-TM160 rows for Pokémon/forms available in the base ZA scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A learnsets for species 151-200.
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
  -- Chikorita - Tackle - Level 1
  (152, 15200, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chikorita - Tail Whip - Level 1
  (152, 15200, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chikorita - Leafage - Level 6
  (152, 15200, 670, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Chikorita - Disarming Voice - Level 9
  (152, 15200, 574, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chikorita - Razor Leaf - Level 12
  (152, 15200, 75, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chikorita - Leech Seed - Level 14
  (152, 15200, 73, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Chikorita - Body Slam - Level 22
  (152, 15200, 34, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Chikorita - Reflect - Level 27
  (152, 15200, 115, 26, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Chikorita - Safeguard - Level 36
  (152, 15200, 219, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Chikorita - Synthesis - Level 40
  (152, 15200, 235, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Chikorita - Solar Beam - Level 45
  (152, 15200, 76, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Chikorita - Light Screen - Level 50
  (152, 15200, 113, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Chikorita - Leaf Storm - Level 56
  (152, 15200, 437, 26, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Chikorita - Headbutt - TM001
  (152, 15200, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Chikorita - Light Screen - TM016
  (152, 15200, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Chikorita - Protect - TM017
  (152, 15200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Chikorita - Energy Ball - TM026
  (152, 15200, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 17),
  -- Chikorita - Swords Dance - TM030
  (152, 15200, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 18),
  -- Chikorita - Reflect - TM031
  (152, 15200, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 19),
  -- Chikorita - Double Team - TM032
  (152, 15200, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 20),
  -- Chikorita - Body Slam - TM033
  (152, 15200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Chikorita - Endure - TM035
  (152, 15200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Chikorita - Bullet Seed - TM040
  (152, 15200, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 23),
  -- Chikorita - Knock Off - TM045
  (152, 15200, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 24),
  -- Chikorita - Safeguard - TM051
  (152, 15200, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 25),
  -- Chikorita - Earth Power - TM052
  (152, 15200, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 26),
  -- Chikorita - Double-Edge - TM056
  (152, 15200, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Chikorita - Solar Beam - TM064
  (152, 15200, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 28),
  -- Chikorita - Bulldoze - TM078
  (152, 15200, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 29),
  -- Chikorita - Substitute - TM085
  (152, 15200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Chikorita - Iron Tail - TM087
  (152, 15200, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 31),
  -- Chikorita - Curse - TM091
  (152, 15200, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 32),
  -- Chikorita - Dazzling Gleam - TM092
  (152, 15200, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 33),
  -- Chikorita - Work Up - TM103
  (152, 15200, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 34),
  -- Chikorita - Facade - TM109
  (152, 15200, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 35),
  -- Chikorita - Trailblaze - TM115
  (152, 15200, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 36),
  -- Chikorita - Ancient Power - TM120
  (152, 15200, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 37),
  -- Chikorita - Seed Bomb - TM128
  (152, 15200, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 38),
  -- Chikorita - Solar Blade - TM152
  (152, 15200, 669, 26, NULL, 2, NULL, NULL, 26002152, NULL, 39),
  -- Bayleef - Tackle - Level 1
  (153, 15300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bayleef - Tail Whip - Level 1
  (153, 15300, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bayleef - Leafage - Level 6
  (153, 15300, 670, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Bayleef - Disarming Voice - Level 9
  (153, 15300, 574, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Bayleef - Razor Leaf - Level 12
  (153, 15300, 75, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Bayleef - Leech Seed - Level 14
  (153, 15300, 73, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Bayleef - Body Slam - Level 22
  (153, 15300, 34, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Bayleef - Reflect - Level 27
  (153, 15300, 115, 26, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Bayleef - Safeguard - Level 36
  (153, 15300, 219, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Bayleef - Synthesis - Level 40
  (153, 15300, 235, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Bayleef - Solar Beam - Level 45
  (153, 15300, 76, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Bayleef - Light Screen - Level 50
  (153, 15300, 113, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Bayleef - Leaf Storm - Level 56
  (153, 15300, 437, 26, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Bayleef - Giga Drain - Evolution
  (153, 15300, 202, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Bayleef - Headbutt - TM001
  (153, 15300, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Bayleef - Rock Smash - TM004
  (153, 15300, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 16),
  -- Bayleef - Light Screen - TM016
  (153, 15300, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Bayleef - Protect - TM017
  (153, 15300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Bayleef - Energy Ball - TM026
  (153, 15300, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Bayleef - Swords Dance - TM030
  (153, 15300, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 20),
  -- Bayleef - Reflect - TM031
  (153, 15300, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Bayleef - Double Team - TM032
  (153, 15300, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 22),
  -- Bayleef - Body Slam - TM033
  (153, 15300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Bayleef - Endure - TM035
  (153, 15300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Bayleef - Bullet Seed - TM040
  (153, 15300, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 25),
  -- Bayleef - Giga Drain - TM042
  (153, 15300, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 26),
  -- Bayleef - Knock Off - TM045
  (153, 15300, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 27),
  -- Bayleef - Safeguard - TM051
  (153, 15300, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 28),
  -- Bayleef - Earth Power - TM052
  (153, 15300, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 29),
  -- Bayleef - Double-Edge - TM056
  (153, 15300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 30),
  -- Bayleef - Solar Beam - TM064
  (153, 15300, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 31),
  -- Bayleef - Bulldoze - TM078
  (153, 15300, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 32),
  -- Bayleef - Substitute - TM085
  (153, 15300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Bayleef - Iron Tail - TM087
  (153, 15300, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 34),
  -- Bayleef - Curse - TM091
  (153, 15300, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 35),
  -- Bayleef - Dazzling Gleam - TM092
  (153, 15300, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 36),
  -- Bayleef - Work Up - TM103
  (153, 15300, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 37),
  -- Bayleef - Facade - TM109
  (153, 15300, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Bayleef - Trailblaze - TM115
  (153, 15300, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 39),
  -- Bayleef - Ancient Power - TM120
  (153, 15300, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 40),
  -- Bayleef - Seed Bomb - TM128
  (153, 15300, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 41),
  -- Bayleef - Solar Blade - TM152
  (153, 15300, 669, 26, NULL, 2, NULL, NULL, 26002152, NULL, 42),
  -- Meganium - Tackle - Level 1
  (154, 15400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meganium - Tail Whip - Level 1
  (154, 15400, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meganium - Leafage - Level 6
  (154, 15400, 670, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Meganium - Disarming Voice - Level 9
  (154, 15400, 574, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Meganium - Razor Leaf - Level 12
  (154, 15400, 75, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Meganium - Leech Seed - Level 14
  (154, 15400, 73, 26, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Meganium - Body Slam - Level 22
  (154, 15400, 34, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Meganium - Reflect - Level 27
  (154, 15400, 115, 26, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Meganium - Safeguard - Level 36
  (154, 15400, 219, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Meganium - Synthesis - Level 40
  (154, 15400, 235, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Meganium - Solar Beam - Level 45
  (154, 15400, 76, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Meganium - Light Screen - Level 50
  (154, 15400, 113, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Meganium - Leaf Storm - Level 56
  (154, 15400, 437, 26, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Meganium - Leaf Blade - Evolution
  (154, 15400, 348, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Meganium - Headbutt - TM001
  (154, 15400, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Meganium - Rock Smash - TM004
  (154, 15400, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 16),
  -- Meganium - Light Screen - TM016
  (154, 15400, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Meganium - Protect - TM017
  (154, 15400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Meganium - Energy Ball - TM026
  (154, 15400, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Meganium - Swords Dance - TM030
  (154, 15400, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 20),
  -- Meganium - Reflect - TM031
  (154, 15400, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Meganium - Double Team - TM032
  (154, 15400, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 22),
  -- Meganium - Body Slam - TM033
  (154, 15400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Meganium - Endure - TM035
  (154, 15400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Meganium - Bullet Seed - TM040
  (154, 15400, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 25),
  -- Meganium - Giga Drain - TM042
  (154, 15400, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 26),
  -- Meganium - Hyper Beam - TM044
  (154, 15400, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Meganium - Knock Off - TM045
  (154, 15400, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 28),
  -- Meganium - Safeguard - TM051
  (154, 15400, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 29),
  -- Meganium - Earth Power - TM052
  (154, 15400, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 30),
  -- Meganium - Giga Impact - TM055
  (154, 15400, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Meganium - Double-Edge - TM056
  (154, 15400, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Meganium - Solar Beam - TM064
  (154, 15400, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Meganium - Earthquake - TM069
  (154, 15400, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 34),
  -- Meganium - Bulldoze - TM078
  (154, 15400, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 35),
  -- Meganium - Substitute - TM085
  (154, 15400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Meganium - Iron Tail - TM087
  (154, 15400, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 37),
  -- Meganium - Curse - TM091
  (154, 15400, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 38),
  -- Meganium - Dazzling Gleam - TM092
  (154, 15400, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 39),
  -- Meganium - Outrage - TM093
  (154, 15400, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 40),
  -- Meganium - Work Up - TM103
  (154, 15400, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 41),
  -- Meganium - Facade - TM109
  (154, 15400, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 42),
  -- Meganium - Trailblaze - TM115
  (154, 15400, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 43),
  -- Meganium - Ancient Power - TM120
  (154, 15400, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 44),
  -- Meganium - Seed Bomb - TM128
  (154, 15400, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 45),
  -- Meganium - Petal Dance - TM151
  (154, 15400, 80, 26, NULL, 2, NULL, NULL, 26002151, NULL, 46),
  -- Meganium - Solar Blade - TM152
  (154, 15400, 669, 26, NULL, 2, NULL, NULL, 26002152, NULL, 47),
  -- Meganium - Frenzy Plant - TM160
  (154, 15400, 338, 26, NULL, 2, NULL, NULL, 26002160, NULL, 48),
  -- Totodile - Tackle - Level 1
  (158, 15800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Totodile - Leer - Level 1
  (158, 15800, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Totodile - Water Gun - Level 6
  (158, 15800, 55, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Totodile - Bite - Level 10
  (158, 15800, 44, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Totodile - Bubble Beam - Level 15
  (158, 15800, 61, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Totodile - Aqua Jet - Level 21
  (158, 15800, 453, 26, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Totodile - Breaking Swipe - Level 26
  (158, 15800, 784, 26, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Totodile - Screech - Level 35
  (158, 15800, 103, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Totodile - Liquidation - Level 40
  (158, 15800, 710, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Totodile - Hydro Pump - Level 50
  (158, 15800, 56, 26, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Totodile - Outrage - Level 56
  (158, 15800, 200, 26, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Totodile - Dragon Claw - TM002
  (158, 15800, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 12),
  -- Totodile - Flip Turn - TM009
  (158, 15800, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 13),
  -- Totodile - Brick Break - TM010
  (158, 15800, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Totodile - Rock Slide - TM012
  (158, 15800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Totodile - Ice Beam - TM013
  (158, 15800, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Totodile - Ice Fang - TM015
  (158, 15800, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 17),
  -- Totodile - Protect - TM017
  (158, 15800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Totodile - Dig - TM028
  (158, 15800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Totodile - Swords Dance - TM030
  (158, 15800, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 20),
  -- Totodile - Double Team - TM032
  (158, 15800, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Totodile - Endure - TM035
  (158, 15800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Totodile - Rock Tomb - TM036
  (158, 15800, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Totodile - Water Pulse - TM041
  (158, 15800, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 24),
  -- Totodile - Icy Wind - TM049
  (158, 15800, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 25),
  -- Totodile - Whirlpool - TM070
  (158, 15800, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 26),
  -- Totodile - Surf - TM073
  (158, 15800, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 27),
  -- Totodile - Liquidation - TM076
  (158, 15800, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 28),
  -- Totodile - Bulldoze - TM078
  (158, 15800, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 29),
  -- Totodile - Substitute - TM085
  (158, 15800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Totodile - Curse - TM091
  (158, 15800, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 31),
  -- Totodile - Outrage - TM093
  (158, 15800, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 32),
  -- Totodile - Hydro Pump - TM096
  (158, 15800, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 33),
  -- Totodile - Waterfall - TM098
  (158, 15800, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 34),
  -- Totodile - Work Up - TM103
  (158, 15800, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 35),
  -- Totodile - Blizzard - TM105
  (158, 15800, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 36),
  -- Totodile - Facade - TM109
  (158, 15800, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 37),
  -- Totodile - Chilling Water - TM110
  (158, 15800, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 38),
  -- Totodile - Trailblaze - TM115
  (158, 15800, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 39),
  -- Totodile - Ancient Power - TM120
  (158, 15800, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 40),
  -- Totodile - Psychic Fangs - TM124
  (158, 15800, 706, 26, NULL, 2, NULL, NULL, 26002124, NULL, 41),
  -- Totodile - Muddy Water - TM140
  (158, 15800, 330, 26, NULL, 2, NULL, NULL, 26002140, NULL, 42),
  -- Croconaw - Tackle - Level 1
  (159, 15900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croconaw - Leer - Level 1
  (159, 15900, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Croconaw - Water Gun - Level 6
  (159, 15900, 55, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Croconaw - Bite - Level 10
  (159, 15900, 44, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Croconaw - Bubble Beam - Level 15
  (159, 15900, 61, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Croconaw - Aqua Jet - Level 21
  (159, 15900, 453, 26, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Croconaw - Breaking Swipe - Level 26
  (159, 15900, 784, 26, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Croconaw - Screech - Level 35
  (159, 15900, 103, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Croconaw - Liquidation - Level 40
  (159, 15900, 710, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Croconaw - Hydro Pump - Level 50
  (159, 15900, 56, 26, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Croconaw - Outrage - Level 56
  (159, 15900, 200, 26, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Croconaw - Slash - Evolution
  (159, 15900, 163, 26, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Croconaw - Dragon Claw - TM002
  (159, 15900, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 13),
  -- Croconaw - Rock Smash - TM004
  (159, 15900, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 14),
  -- Croconaw - Roar - TM005
  (159, 15900, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 15),
  -- Croconaw - Flip Turn - TM009
  (159, 15900, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 16),
  -- Croconaw - Brick Break - TM010
  (159, 15900, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Croconaw - Rock Slide - TM012
  (159, 15900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Croconaw - Ice Beam - TM013
  (159, 15900, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Croconaw - Ice Fang - TM015
  (159, 15900, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 20),
  -- Croconaw - Protect - TM017
  (159, 15900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Croconaw - Dig - TM028
  (159, 15900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Croconaw - Swords Dance - TM030
  (159, 15900, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Croconaw - Double Team - TM032
  (159, 15900, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 24),
  -- Croconaw - Endure - TM035
  (159, 15900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Croconaw - Rock Tomb - TM036
  (159, 15900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Croconaw - Water Pulse - TM041
  (159, 15900, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 27),
  -- Croconaw - Icy Wind - TM049
  (159, 15900, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 28),
  -- Croconaw - Whirlpool - TM070
  (159, 15900, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 29),
  -- Croconaw - Surf - TM073
  (159, 15900, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 30),
  -- Croconaw - Liquidation - TM076
  (159, 15900, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 31),
  -- Croconaw - Bulldoze - TM078
  (159, 15900, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 32),
  -- Croconaw - Substitute - TM085
  (159, 15900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Croconaw - Curse - TM091
  (159, 15900, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 34),
  -- Croconaw - Outrage - TM093
  (159, 15900, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 35),
  -- Croconaw - Hydro Pump - TM096
  (159, 15900, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 36),
  -- Croconaw - Waterfall - TM098
  (159, 15900, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 37),
  -- Croconaw - Work Up - TM103
  (159, 15900, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 38),
  -- Croconaw - Blizzard - TM105
  (159, 15900, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 39),
  -- Croconaw - Facade - TM109
  (159, 15900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Croconaw - Chilling Water - TM110
  (159, 15900, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 41),
  -- Croconaw - Trailblaze - TM115
  (159, 15900, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 42),
  -- Croconaw - Ancient Power - TM120
  (159, 15900, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 43),
  -- Croconaw - Psychic Fangs - TM124
  (159, 15900, 706, 26, NULL, 2, NULL, NULL, 26002124, NULL, 44),
  -- Croconaw - Muddy Water - TM140
  (159, 15900, 330, 26, NULL, 2, NULL, NULL, 26002140, NULL, 45),
  -- Feraligatr - Tackle - Level 1
  (160, 16000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feraligatr - Leer - Level 1
  (160, 16000, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Feraligatr - Slash - Level 1
  (160, 16000, 163, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Feraligatr - Water Gun - Level 6
  (160, 16000, 55, 26, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Feraligatr - Bite - Level 10
  (160, 16000, 44, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Feraligatr - Bubble Beam - Level 15
  (160, 16000, 61, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Feraligatr - Aqua Jet - Level 21
  (160, 16000, 453, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Feraligatr - Breaking Swipe - Level 26
  (160, 16000, 784, 26, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Feraligatr - Screech - Level 35
  (160, 16000, 103, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Feraligatr - Liquidation - Level 40
  (160, 16000, 710, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Feraligatr - Hydro Pump - Level 50
  (160, 16000, 56, 26, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Feraligatr - Outrage - Level 56
  (160, 16000, 200, 26, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Feraligatr - Crunch - Evolution
  (160, 16000, 242, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Feraligatr - Dragon Claw - TM002
  (160, 16000, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 14),
  -- Feraligatr - Rock Smash - TM004
  (160, 16000, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 15),
  -- Feraligatr - Roar - TM005
  (160, 16000, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Feraligatr - Flip Turn - TM009
  (160, 16000, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 17),
  -- Feraligatr - Brick Break - TM010
  (160, 16000, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Feraligatr - Rock Slide - TM012
  (160, 16000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Feraligatr - Ice Beam - TM013
  (160, 16000, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 20),
  -- Feraligatr - Ice Fang - TM015
  (160, 16000, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 21),
  -- Feraligatr - Protect - TM017
  (160, 16000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Feraligatr - Crunch - TM025
  (160, 16000, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 23),
  -- Feraligatr - Dig - TM028
  (160, 16000, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Feraligatr - Swords Dance - TM030
  (160, 16000, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 25),
  -- Feraligatr - Double Team - TM032
  (160, 16000, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 26),
  -- Feraligatr - Endure - TM035
  (160, 16000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Feraligatr - Rock Tomb - TM036
  (160, 16000, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 28),
  -- Feraligatr - Water Pulse - TM041
  (160, 16000, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 29),
  -- Feraligatr - Hyper Beam - TM044
  (160, 16000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Feraligatr - Agility - TM047
  (160, 16000, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 31),
  -- Feraligatr - Icy Wind - TM049
  (160, 16000, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 32),
  -- Feraligatr - Giga Impact - TM055
  (160, 16000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Feraligatr - Double-Edge - TM056
  (160, 16000, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 34),
  -- Feraligatr - Earthquake - TM069
  (160, 16000, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 35),
  -- Feraligatr - Whirlpool - TM070
  (160, 16000, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 36),
  -- Feraligatr - Surf - TM073
  (160, 16000, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 37),
  -- Feraligatr - Liquidation - TM076
  (160, 16000, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 38),
  -- Feraligatr - Bulldoze - TM078
  (160, 16000, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 39),
  -- Feraligatr - Substitute - TM085
  (160, 16000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Feraligatr - Curse - TM091
  (160, 16000, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 41),
  -- Feraligatr - Outrage - TM093
  (160, 16000, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 42),
  -- Feraligatr - Hydro Pump - TM096
  (160, 16000, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 43),
  -- Feraligatr - Waterfall - TM098
  (160, 16000, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 44),
  -- Feraligatr - Work Up - TM103
  (160, 16000, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 45),
  -- Feraligatr - Blizzard - TM105
  (160, 16000, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 46),
  -- Feraligatr - Facade - TM109
  (160, 16000, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 47),
  -- Feraligatr - Chilling Water - TM110
  (160, 16000, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 48),
  -- Feraligatr - Trailblaze - TM115
  (160, 16000, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 49),
  -- Feraligatr - Ancient Power - TM120
  (160, 16000, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 50),
  -- Feraligatr - Psychic Fangs - TM124
  (160, 16000, 706, 26, NULL, 2, NULL, NULL, 26002124, NULL, 51),
  -- Feraligatr - Muddy Water - TM140
  (160, 16000, 330, 26, NULL, 2, NULL, NULL, 26002140, NULL, 52),
  -- Feraligatr - Scale Shot - TM143
  (160, 16000, 799, 26, NULL, 2, NULL, NULL, 26002143, NULL, 53),
  -- Feraligatr - Razor Wind - TM145
  (160, 16000, 13, 26, NULL, 2, NULL, NULL, 26002145, NULL, 54),
  -- Feraligatr - Scald - TM148
  (160, 16000, 503, 26, NULL, 2, NULL, NULL, 26002148, NULL, 55),
  -- Feraligatr - Icicle Spear - TM149
  (160, 16000, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 56),
  -- Feraligatr - Hydro Cannon - TM159
  (160, 16000, 308, 26, NULL, 2, NULL, NULL, 26002159, NULL, 57),
  -- Spinarak - Poison Sting - Level 1
  (167, 16700, 40, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinarak - String Shot - Level 1
  (167, 16700, 81, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spinarak - Absorb - Level 5
  (167, 16700, 71, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Spinarak - Infestation - Level 8
  (167, 16700, 611, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Spinarak - Shadow Sneak - Level 12
  (167, 16700, 425, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Spinarak - X-Scissor - Level 16
  (167, 16700, 404, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Spinarak - Screech - Level 21
  (167, 16700, 103, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Spinarak - Sticky Web - Level 24
  (167, 16700, 564, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Spinarak - Pin Missile - Level 27
  (167, 16700, 42, 26, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Spinarak - Psychic - Level 30
  (167, 16700, 94, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Spinarak - Poison Jab - Level 33
  (167, 16700, 398, 26, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Spinarak - Bug Buzz - Level 35
  (167, 16700, 405, 26, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Spinarak - Leech Life - Level 37
  (167, 16700, 141, 26, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Spinarak - Lunge - Level 40
  (167, 16700, 679, 26, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Spinarak - Megahorn - Level 44
  (167, 16700, 224, 26, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Spinarak - Headbutt - TM001
  (167, 16700, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Spinarak - Toxic - TM007
  (167, 16700, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 17),
  -- Spinarak - Protect - TM017
  (167, 16700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Spinarak - Dig - TM028
  (167, 16700, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Spinarak - Body Slam - TM033
  (167, 16700, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Spinarak - Endure - TM035
  (167, 16700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Spinarak - Giga Drain - TM042
  (167, 16700, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 22),
  -- Spinarak - Knock Off - TM045
  (167, 16700, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 23),
  -- Spinarak - Agility - TM047
  (167, 16700, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 24),
  -- Spinarak - Sludge Bomb - TM053
  (167, 16700, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 25),
  -- Spinarak - Psychic - TM063
  (167, 16700, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 26),
  -- Spinarak - Solar Beam - TM064
  (167, 16700, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 27),
  -- Spinarak - Poison Jab - TM077
  (167, 16700, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 28),
  -- Spinarak - X-Scissor - TM081
  (167, 16700, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 29),
  -- Spinarak - Substitute - TM085
  (167, 16700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Spinarak - Toxic Spikes - TM089
  (167, 16700, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 31),
  -- Spinarak - Electroweb - TM101
  (167, 16700, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 32),
  -- Spinarak - Facade - TM109
  (167, 16700, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 33),
  -- Spinarak - Acid Spray - TM112
  (167, 16700, 491, 26, NULL, 2, NULL, NULL, 26002112, NULL, 34),
  -- Spinarak - Trailblaze - TM115
  (167, 16700, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 35),
  -- Ariados - Poison Sting - Level 1
  (168, 16800, 40, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ariados - String Shot - Level 1
  (168, 16800, 81, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ariados - Focus Energy - Level 1
  (168, 16800, 116, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ariados - Absorb - Level 5
  (168, 16800, 71, 26, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Ariados - Infestation - Level 8
  (168, 16800, 611, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Ariados - Shadow Sneak - Level 12
  (168, 16800, 425, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ariados - X-Scissor - Level 16
  (168, 16800, 404, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Ariados - Screech - Level 21
  (168, 16800, 103, 26, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Ariados - Sticky Web - Level 24
  (168, 16800, 564, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Ariados - Pin Missile - Level 27
  (168, 16800, 42, 26, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Ariados - Psychic - Level 30
  (168, 16800, 94, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Ariados - Poison Jab - Level 33
  (168, 16800, 398, 26, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Ariados - Bug Buzz - Level 35
  (168, 16800, 405, 26, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Ariados - Leech Life - Level 37
  (168, 16800, 141, 26, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Ariados - Lunge - Level 40
  (168, 16800, 679, 26, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Ariados - Megahorn - Level 44
  (168, 16800, 224, 26, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Ariados - Swords Dance - Evolution
  (168, 16800, 14, 26, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Ariados - Headbutt - TM001
  (168, 16800, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 18),
  -- Ariados - Toxic - TM007
  (168, 16800, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 19),
  -- Ariados - Protect - TM017
  (168, 16800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Ariados - Dig - TM028
  (168, 16800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Ariados - Swords Dance - TM030
  (168, 16800, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 22),
  -- Ariados - Body Slam - TM033
  (168, 16800, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Ariados - Endure - TM035
  (168, 16800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Ariados - Giga Drain - TM042
  (168, 16800, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 25),
  -- Ariados - Hyper Beam - TM044
  (168, 16800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Ariados - Knock Off - TM045
  (168, 16800, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 27),
  -- Ariados - Agility - TM047
  (168, 16800, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 28),
  -- Ariados - Sludge Bomb - TM053
  (168, 16800, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 29),
  -- Ariados - Giga Impact - TM055
  (168, 16800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Ariados - Psychic - TM063
  (168, 16800, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 31),
  -- Ariados - Solar Beam - TM064
  (168, 16800, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 32),
  -- Ariados - Poison Jab - TM077
  (168, 16800, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 33),
  -- Ariados - X-Scissor - TM081
  (168, 16800, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 34),
  -- Ariados - Substitute - TM085
  (168, 16800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Ariados - Toxic Spikes - TM089
  (168, 16800, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 36),
  -- Ariados - Electroweb - TM101
  (168, 16800, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 37),
  -- Ariados - Facade - TM109
  (168, 16800, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Ariados - Acid Spray - TM112
  (168, 16800, 491, 26, NULL, 2, NULL, NULL, 26002112, NULL, 39),
  -- Ariados - Trailblaze - TM115
  (168, 16800, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 40),
  -- Ariados - False Swipe - TM122
  (168, 16800, 206, 26, NULL, 2, NULL, NULL, 26002122, NULL, 41),
  -- Ariados - First Impression - TM142
  (168, 16800, 660, 26, NULL, 2, NULL, NULL, 26002142, NULL, 42),
  -- Pichu - Tail Whip - Level 1
  (172, 17200, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pichu - Growl - Level 1
  (172, 17200, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pichu - Thunder Shock - Level 1
  (172, 17200, 84, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pichu - Quick Attack - Level 1
  (172, 17200, 98, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pichu - Thunder Wave - Level 7
  (172, 17200, 86, 26, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Pichu - Nuzzle - Level 12
  (172, 17200, 609, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Pichu - Spark - Level 16
  (172, 17200, 209, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pichu - Charm - Level 20
  (172, 17200, 204, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pichu - Thunderbolt - Level 25
  (172, 17200, 85, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Pichu - Charge - Level 30
  (172, 17200, 268, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Pichu - Light Screen - Level 35
  (172, 17200, 113, 26, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Pichu - Thunder - Level 40
  (172, 17200, 87, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Pichu - Volt Tackle - Level 99
  (172, 17200, 344, 26, NULL, 1, 99, NULL, NULL, NULL, 13),
  -- Pichu - Thunder Wave - TM008
  (172, 17200, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Pichu - Brick Break - TM010
  (172, 17200, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Pichu - Light Screen - TM016
  (172, 17200, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Pichu - Protect - TM017
  (172, 17200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Pichu - Play Rough - TM020
  (172, 17200, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 18),
  -- Pichu - Thunder Punch - TM023
  (172, 17200, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 19),
  -- Pichu - Swift - TM027
  (172, 17200, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Pichu - Dig - TM028
  (172, 17200, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Pichu - Reflect - TM031
  (172, 17200, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Pichu - Double Team - TM032
  (172, 17200, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 23),
  -- Pichu - Body Slam - TM033
  (172, 17200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Pichu - Endure - TM035
  (172, 17200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Pichu - Discharge - TM039
  (172, 17200, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 26),
  -- Pichu - Volt Switch - TM066
  (172, 17200, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 27),
  -- Pichu - Thunderbolt - TM067
  (172, 17200, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 28),
  -- Pichu - Surf - TM073
  (172, 17200, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 29),
  -- Pichu - Nasty Plot - TM083
  (172, 17200, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 30),
  -- Pichu - Substitute - TM085
  (172, 17200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Pichu - Wild Charge - TM086
  (172, 17200, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 32),
  -- Pichu - Iron Tail - TM087
  (172, 17200, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 33),
  -- Pichu - Electroweb - TM101
  (172, 17200, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 34),
  -- Pichu - Thunder - TM106
  (172, 17200, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 35),
  -- Pichu - Facade - TM109
  (172, 17200, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 36),
  -- Pichu - Trailblaze - TM115
  (172, 17200, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 37),
  -- Pichu - Fake Out - TM141
  (172, 17200, 252, 26, NULL, 2, NULL, NULL, 26002141, NULL, 38),
  -- Cleffa - Tackle - Level 1
  (173, 17300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cleffa - Splash - Level 1
  (173, 17300, 150, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cleffa - Fairy Wind - Level 5
  (173, 17300, 584, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Cleffa - Disarming Voice - Level 8
  (173, 17300, 574, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Cleffa - Charm - Level 13
  (173, 17300, 204, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cleffa - Draining Kiss - Level 16
  (173, 17300, 577, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Cleffa - Magical Leaf - Level 18
  (173, 17300, 345, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Cleffa - Metronome - Level 20
  (173, 17300, 118, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Cleffa - Bubble Beam - Level 22
  (173, 17300, 61, 26, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Cleffa - Moonlight - Level 24
  (173, 17300, 236, 26, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Cleffa - Amnesia - Level 28
  (173, 17300, 133, 26, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Cleffa - Mystical Fire - Level 42
  (173, 17300, 595, 26, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Cleffa - Moonblast - Level 48
  (173, 17300, 585, 26, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Cleffa - Double-Edge - Level 55
  (173, 17300, 38, 26, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Cleffa - Headbutt - TM001
  (173, 17300, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Cleffa - Psyshock - TM003
  (173, 17300, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 16),
  -- Cleffa - Calm Mind - TM006
  (173, 17300, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 17),
  -- Cleffa - Thunder Wave - TM008
  (173, 17300, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Cleffa - Ice Beam - TM013
  (173, 17300, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Cleffa - Light Screen - TM016
  (173, 17300, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 20),
  -- Cleffa - Protect - TM017
  (173, 17300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Cleffa - Play Rough - TM020
  (173, 17300, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 22),
  -- Cleffa - Swift - TM027
  (173, 17300, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Cleffa - Dig - TM028
  (173, 17300, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Cleffa - Reflect - TM031
  (173, 17300, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 25),
  -- Cleffa - Body Slam - TM033
  (173, 17300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Cleffa - Endure - TM035
  (173, 17300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Cleffa - Stealth Rock - TM037
  (173, 17300, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 28),
  -- Cleffa - Fire Blast - TM038
  (173, 17300, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 29),
  -- Cleffa - Safeguard - TM051
  (173, 17300, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 30),
  -- Cleffa - Double-Edge - TM056
  (173, 17300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Cleffa - Zen Headbutt - TM059
  (173, 17300, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 32),
  -- Cleffa - Flamethrower - TM062
  (173, 17300, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 33),
  -- Cleffa - Psychic - TM063
  (173, 17300, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 34),
  -- Cleffa - Solar Beam - TM064
  (173, 17300, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 35),
  -- Cleffa - Thunderbolt - TM067
  (173, 17300, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 36),
  -- Cleffa - Hyper Voice - TM071
  (173, 17300, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 37),
  -- Cleffa - Shadow Ball - TM074
  (173, 17300, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 38),
  -- Cleffa - Substitute - TM085
  (173, 17300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Cleffa - Iron Tail - TM087
  (173, 17300, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 40),
  -- Cleffa - Dazzling Gleam - TM092
  (173, 17300, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 41),
  -- Cleffa - Metronome - TM099
  (173, 17300, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 42),
  -- Cleffa - Work Up - TM103
  (173, 17300, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 43),
  -- Cleffa - Blizzard - TM105
  (173, 17300, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 44),
  -- Cleffa - Thunder - TM106
  (173, 17300, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 45),
  -- Cleffa - Facade - TM109
  (173, 17300, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Cleffa - Chilling Water - TM110
  (173, 17300, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 47),
  -- Cleffa - Sing - TM111
  (173, 17300, 47, 26, NULL, 2, NULL, NULL, 26002111, NULL, 48),
  -- Mareep - Tackle - Level 1
  (179, 17900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mareep - Growl - Level 1
  (179, 17900, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mareep - Thunder Shock - Level 4
  (179, 17900, 84, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mareep - Thunder Wave - Level 8
  (179, 17900, 86, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mareep - Charge - Level 15
  (179, 17900, 268, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mareep - Confuse Ray - Level 17
  (179, 17900, 109, 26, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Mareep - Cotton Guard - Level 28
  (179, 17900, 538, 26, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Mareep - Power Gem - Level 32
  (179, 17900, 408, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Mareep - Thunderbolt - Level 36
  (179, 17900, 85, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Mareep - Light Screen - Level 40
  (179, 17900, 113, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Mareep - Thunder - Level 45
  (179, 17900, 87, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Mareep - Thunder Wave - TM008
  (179, 17900, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 12),
  -- Mareep - Light Screen - TM016
  (179, 17900, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 13),
  -- Mareep - Protect - TM017
  (179, 17900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Mareep - Power Gem - TM019
  (179, 17900, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 15),
  -- Mareep - Swift - TM027
  (179, 17900, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 16),
  -- Mareep - Dig - TM028
  (179, 17900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 17),
  -- Mareep - Reflect - TM031
  (179, 17900, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 18),
  -- Mareep - Body Slam - TM033
  (179, 17900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 19),
  -- Mareep - Endure - TM035
  (179, 17900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Mareep - Discharge - TM039
  (179, 17900, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 21),
  -- Mareep - Volt Switch - TM066
  (179, 17900, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 22),
  -- Mareep - Thunderbolt - TM067
  (179, 17900, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 23),
  -- Mareep - Substitute - TM085
  (179, 17900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 24),
  -- Mareep - Wild Charge - TM086
  (179, 17900, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 25),
  -- Mareep - Dazzling Gleam - TM092
  (179, 17900, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 26),
  -- Mareep - Electroweb - TM101
  (179, 17900, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 27),
  -- Mareep - Thunder - TM106
  (179, 17900, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 28),
  -- Mareep - Facade - TM109
  (179, 17900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 29),
  -- Mareep - Trailblaze - TM115
  (179, 17900, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 30),
  -- Mareep - Charge Beam - TM130
  (179, 17900, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 31),
  -- Flaaffy - Tackle - Level 1
  (180, 18000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flaaffy - Growl - Level 1
  (180, 18000, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flaaffy - Thunder Shock - Level 4
  (180, 18000, 84, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Flaaffy - Thunder Wave - Level 8
  (180, 18000, 86, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Flaaffy - Charge - Level 15
  (180, 18000, 268, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Flaaffy - Confuse Ray - Level 17
  (180, 18000, 109, 26, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Flaaffy - Cotton Guard - Level 28
  (180, 18000, 538, 26, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Flaaffy - Power Gem - Level 32
  (180, 18000, 408, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Flaaffy - Thunderbolt - Level 36
  (180, 18000, 85, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Flaaffy - Light Screen - Level 40
  (180, 18000, 113, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Flaaffy - Thunder - Level 45
  (180, 18000, 87, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Flaaffy - Roar - TM005
  (180, 18000, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 12),
  -- Flaaffy - Thunder Wave - TM008
  (180, 18000, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 13),
  -- Flaaffy - Light Screen - TM016
  (180, 18000, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 14),
  -- Flaaffy - Protect - TM017
  (180, 18000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Flaaffy - Power Gem - TM019
  (180, 18000, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 16),
  -- Flaaffy - Ice Punch - TM024
  (180, 18000, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 17),
  -- Flaaffy - Swift - TM027
  (180, 18000, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 18),
  -- Flaaffy - Dig - TM028
  (180, 18000, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Flaaffy - Fire Punch - TM029
  (180, 18000, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 20),
  -- Flaaffy - Reflect - TM031
  (180, 18000, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Flaaffy - Body Slam - TM033
  (180, 18000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Flaaffy - Endure - TM035
  (180, 18000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Flaaffy - Discharge - TM039
  (180, 18000, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 24),
  -- Flaaffy - Agility - TM047
  (180, 18000, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Flaaffy - Volt Switch - TM066
  (180, 18000, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 26),
  -- Flaaffy - Thunderbolt - TM067
  (180, 18000, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 27),
  -- Flaaffy - Substitute - TM085
  (180, 18000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 28),
  -- Flaaffy - Wild Charge - TM086
  (180, 18000, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 29),
  -- Flaaffy - Dazzling Gleam - TM092
  (180, 18000, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 30),
  -- Flaaffy - Electroweb - TM101
  (180, 18000, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 31),
  -- Flaaffy - Thunder - TM106
  (180, 18000, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 32),
  -- Flaaffy - Facade - TM109
  (180, 18000, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 33),
  -- Flaaffy - Trailblaze - TM115
  (180, 18000, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 34),
  -- Flaaffy - Charge Beam - TM130
  (180, 18000, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 35),
  -- Ampharos - Tackle - Level 1
  (181, 18100, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ampharos - Growl - Level 1
  (181, 18100, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ampharos - Thunder Shock - Level 4
  (181, 18100, 84, 26, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Ampharos - Thunder Wave - Level 8
  (181, 18100, 86, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Ampharos - Charge - Level 15
  (181, 18100, 268, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Ampharos - Confuse Ray - Level 17
  (181, 18100, 109, 26, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Ampharos - Cotton Guard - Level 28
  (181, 18100, 538, 26, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Ampharos - Power Gem - Level 32
  (181, 18100, 408, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Ampharos - Thunderbolt - Level 36
  (181, 18100, 85, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Ampharos - Light Screen - Level 40
  (181, 18100, 113, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Ampharos - Breaking Swipe - Level 42
  (181, 18100, 784, 26, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Ampharos - Thunder - Level 45
  (181, 18100, 87, 26, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Ampharos - Zap Cannon - Level 50
  (181, 18100, 192, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Ampharos - Thunder Punch - Evolution
  (181, 18100, 9, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Ampharos - Roar - TM005
  (181, 18100, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 15),
  -- Ampharos - Thunder Wave - TM008
  (181, 18100, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Ampharos - Brick Break - TM010
  (181, 18100, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Ampharos - Light Screen - TM016
  (181, 18100, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Ampharos - Protect - TM017
  (181, 18100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Ampharos - Power Gem - TM019
  (181, 18100, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 20),
  -- Ampharos - Thunder Punch - TM023
  (181, 18100, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Ampharos - Ice Punch - TM024
  (181, 18100, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Ampharos - Swift - TM027
  (181, 18100, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Ampharos - Dig - TM028
  (181, 18100, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Ampharos - Fire Punch - TM029
  (181, 18100, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 25),
  -- Ampharos - Reflect - TM031
  (181, 18100, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 26),
  -- Ampharos - Body Slam - TM033
  (181, 18100, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Ampharos - Endure - TM035
  (181, 18100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Ampharos - Discharge - TM039
  (181, 18100, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 29),
  -- Ampharos - Hyper Beam - TM044
  (181, 18100, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Ampharos - Agility - TM047
  (181, 18100, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 31),
  -- Ampharos - Giga Impact - TM055
  (181, 18100, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Ampharos - Double-Edge - TM056
  (181, 18100, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 33),
  -- Ampharos - Volt Switch - TM066
  (181, 18100, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 34),
  -- Ampharos - Thunderbolt - TM067
  (181, 18100, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 35),
  -- Ampharos - Dragon Pulse - TM075
  (181, 18100, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 36),
  -- Ampharos - Flash Cannon - TM084
  (181, 18100, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 37),
  -- Ampharos - Substitute - TM085
  (181, 18100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Ampharos - Wild Charge - TM086
  (181, 18100, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 39),
  -- Ampharos - Dazzling Gleam - TM092
  (181, 18100, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 40),
  -- Ampharos - Outrage - TM093
  (181, 18100, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 41),
  -- Ampharos - Electroweb - TM101
  (181, 18100, 527, 26, NULL, 2, NULL, NULL, 26002101, NULL, 42),
  -- Ampharos - Focus Blast - TM102
  (181, 18100, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 43),
  -- Ampharos - Thunder - TM106
  (181, 18100, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 44),
  -- Ampharos - Comet Punch - TM108
  (181, 18100, 4, 26, NULL, 2, NULL, NULL, 26002108, NULL, 45),
  -- Ampharos - Facade - TM109
  (181, 18100, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Ampharos - Trailblaze - TM115
  (181, 18100, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 47),
  -- Ampharos - Charge Beam - TM130
  (181, 18100, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 48),
  -- Ampharos - Dual Chop - TM135
  (181, 18100, 530, 26, NULL, 2, NULL, NULL, 26002135, NULL, 49),
  -- Ampharos - Meteor Beam - TM156
  (181, 18100, 800, 26, NULL, 2, NULL, NULL, 26002156, NULL, 50),
  -- Espeon - Tackle - Level 1
  (196, 19600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espeon - Tail Whip - Level 1
  (196, 19600, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espeon - Bite - Level 1
  (196, 19600, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Espeon - Growl - Level 1
  (196, 19600, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Espeon - Quick Attack - Level 10
  (196, 19600, 98, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Espeon - Disarming Voice - Level 15
  (196, 19600, 574, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Espeon - Psybeam - Level 25
  (196, 19600, 60, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Espeon - Morning Sun - Level 30
  (196, 19600, 234, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Espeon - Heal Block - Level 35
  (196, 19600, 377, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Espeon - Psychic - Level 40
  (196, 19600, 94, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Espeon - Fake Tears - Level 45
  (196, 19600, 313, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Espeon - Future Sight - Level 55
  (196, 19600, 248, 26, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Espeon - Confusion - Evolution
  (196, 19600, 93, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Espeon - Psyshock - TM003
  (196, 19600, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Espeon - Roar - TM005
  (196, 19600, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 15),
  -- Espeon - Calm Mind - TM006
  (196, 19600, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Espeon - Thunder Wave - TM008
  (196, 19600, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Espeon - Light Screen - TM016
  (196, 19600, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Espeon - Protect - TM017
  (196, 19600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Espeon - Power Gem - TM019
  (196, 19600, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 20),
  -- Espeon - Swift - TM027
  (196, 19600, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Espeon - Dig - TM028
  (196, 19600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Espeon - Reflect - TM031
  (196, 19600, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 23),
  -- Espeon - Body Slam - TM033
  (196, 19600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Espeon - Endure - TM035
  (196, 19600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Espeon - Hyper Beam - TM044
  (196, 19600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Espeon - Safeguard - TM051
  (196, 19600, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 27),
  -- Espeon - Giga Impact - TM055
  (196, 19600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Espeon - Double-Edge - TM056
  (196, 19600, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Espeon - Future Sight - TM060
  (196, 19600, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 30),
  -- Espeon - Psychic - TM063
  (196, 19600, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 31),
  -- Espeon - Hyper Voice - TM071
  (196, 19600, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 32),
  -- Espeon - Shadow Ball - TM074
  (196, 19600, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 33),
  -- Espeon - Substitute - TM085
  (196, 19600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Espeon - Iron Tail - TM087
  (196, 19600, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 35),
  -- Espeon - Dazzling Gleam - TM092
  (196, 19600, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 36),
  -- Espeon - Heal Block - TM097
  (196, 19600, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 37),
  -- Espeon - Facade - TM109
  (196, 19600, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Espeon - Trailblaze - TM115
  (196, 19600, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 39),
  -- Espeon - Psychic Fangs - TM124
  (196, 19600, 706, 26, NULL, 2, NULL, NULL, 26002124, NULL, 40),
  -- Espeon - Mimic - TM125
  (196, 19600, 102, 26, NULL, 2, NULL, NULL, 26002125, NULL, 41),
  -- Espeon - Dream Eater - TM127
  (196, 19600, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 42),
  -- Espeon - Skull Bash - TM146
  (196, 19600, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 43),
  -- Umbreon - Tackle - Level 1
  (197, 19700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Umbreon - Tail Whip - Level 1
  (197, 19700, 39, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Umbreon - Bite - Level 1
  (197, 19700, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Umbreon - Growl - Level 1
  (197, 19700, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Umbreon - Quick Attack - Level 10
  (197, 19700, 98, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Umbreon - Disarming Voice - Level 15
  (197, 19700, 574, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Umbreon - Confuse Ray - Level 20
  (197, 19700, 109, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Umbreon - Moonlight - Level 30
  (197, 19700, 236, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Umbreon - Knock Off - Level 35
  (197, 19700, 282, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Umbreon - Dark Pulse - Level 40
  (197, 19700, 399, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Umbreon - Screech - Level 45
  (197, 19700, 103, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Umbreon - Crunch - Level 50
  (197, 19700, 242, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Umbreon - Snarl - Evolution
  (197, 19700, 555, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Umbreon - Roar - TM005
  (197, 19700, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 14),
  -- Umbreon - Calm Mind - TM006
  (197, 19700, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Umbreon - Toxic - TM007
  (197, 19700, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 16),
  -- Umbreon - Thunder Wave - TM008
  (197, 19700, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Umbreon - Light Screen - TM016
  (197, 19700, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Umbreon - Protect - TM017
  (197, 19700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Umbreon - Crunch - TM025
  (197, 19700, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 20),
  -- Umbreon - Swift - TM027
  (197, 19700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Umbreon - Dig - TM028
  (197, 19700, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Umbreon - Reflect - TM031
  (197, 19700, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 23),
  -- Umbreon - Body Slam - TM033
  (197, 19700, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Umbreon - Endure - TM035
  (197, 19700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Umbreon - Hyper Beam - TM044
  (197, 19700, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Umbreon - Knock Off - TM045
  (197, 19700, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 27),
  -- Umbreon - Giga Impact - TM055
  (197, 19700, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Umbreon - Double-Edge - TM056
  (197, 19700, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Umbreon - Psychic - TM063
  (197, 19700, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 30),
  -- Umbreon - Hyper Voice - TM071
  (197, 19700, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 31),
  -- Umbreon - Shadow Ball - TM074
  (197, 19700, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 32),
  -- Umbreon - Substitute - TM085
  (197, 19700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Umbreon - Iron Tail - TM087
  (197, 19700, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 34),
  -- Umbreon - Dark Pulse - TM090
  (197, 19700, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 35),
  -- Umbreon - Curse - TM091
  (197, 19700, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 36),
  -- Umbreon - Taunt - TM095
  (197, 19700, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 37),
  -- Umbreon - Facade - TM109
  (197, 19700, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Umbreon - Trailblaze - TM115
  (197, 19700, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 39),
  -- Umbreon - Ominous Wind - TM119
  (197, 19700, 466, 26, NULL, 2, NULL, NULL, 26002119, NULL, 40),
  -- Umbreon - Torment - TM121
  (197, 19700, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 41),
  -- Umbreon - Mimic - TM125
  (197, 19700, 102, 26, NULL, 2, NULL, NULL, 26002125, NULL, 42),
  -- Umbreon - Dream Eater - TM127
  (197, 19700, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 43),
  -- Umbreon - Swagger - TM139
  (197, 19700, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 44),
  -- Umbreon - Razor Wind - TM145
  (197, 19700, 13, 26, NULL, 2, NULL, NULL, 26002145, NULL, 45),
  -- Umbreon - Skull Bash - TM146
  (197, 19700, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 46),
  -- Slowking - Tackle - Level 1
  (199, 19900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowking - Curse - Level 1
  (199, 19900, 174, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowking - Power Gem - Level 1
  (199, 19900, 408, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowking - Nasty Plot - Level 1
  (199, 19900, 417, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowking - Growl - Level 3
  (199, 19900, 45, 26, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Slowking - Water Gun - Level 6
  (199, 19900, 55, 26, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Slowking - Psybeam - Level 14
  (199, 19900, 60, 26, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Slowking - Water Pulse - Level 18
  (199, 19900, 352, 26, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Slowking - Headbutt - Level 21
  (199, 19900, 29, 26, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Slowking - Zen Headbutt - Level 24
  (199, 19900, 428, 26, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Slowking - Amnesia - Level 27
  (199, 19900, 133, 26, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Slowking - Surf - Level 36
  (199, 19900, 57, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Slowking - Psychic - Level 42
  (199, 19900, 94, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Slowking - Future Sight - Level 45
  (199, 19900, 248, 26, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Slowking - Headbutt - TM001
  (199, 19900, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Slowking - Psyshock - TM003
  (199, 19900, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 16),
  -- Slowking - Calm Mind - TM006
  (199, 19900, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 17),
  -- Slowking - Thunder Wave - TM008
  (199, 19900, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Slowking - Ice Beam - TM013
  (199, 19900, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Slowking - Light Screen - TM016
  (199, 19900, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 20),
  -- Slowking - Protect - TM017
  (199, 19900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Slowking - Power Gem - TM019
  (199, 19900, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 22),
  -- Slowking - Ice Punch - TM024
  (199, 19900, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 23),
  -- Slowking - Swift - TM027
  (199, 19900, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 24),
  -- Slowking - Dig - TM028
  (199, 19900, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 25),
  -- Slowking - Reflect - TM031
  (199, 19900, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 26),
  -- Slowking - Body Slam - TM033
  (199, 19900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Slowking - Endure - TM035
  (199, 19900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Slowking - Fire Blast - TM038
  (199, 19900, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 29),
  -- Slowking - Water Pulse - TM041
  (199, 19900, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 30),
  -- Slowking - Hyper Beam - TM044
  (199, 19900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Slowking - Mud Shot - TM046
  (199, 19900, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 32),
  -- Slowking - Icy Wind - TM049
  (199, 19900, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 33),
  -- Slowking - Safeguard - TM051
  (199, 19900, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 34),
  -- Slowking - Giga Impact - TM055
  (199, 19900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 35),
  -- Slowking - Zen Headbutt - TM059
  (199, 19900, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 36),
  -- Slowking - Future Sight - TM060
  (199, 19900, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 37),
  -- Slowking - Flamethrower - TM062
  (199, 19900, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 38),
  -- Slowking - Psychic - TM063
  (199, 19900, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 39),
  -- Slowking - Earthquake - TM069
  (199, 19900, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 40),
  -- Slowking - Whirlpool - TM070
  (199, 19900, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 41),
  -- Slowking - Surf - TM073
  (199, 19900, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 42),
  -- Slowking - Shadow Ball - TM074
  (199, 19900, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 43),
  -- Slowking - Liquidation - TM076
  (199, 19900, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 44),
  -- Slowking - Nasty Plot - TM083
  (199, 19900, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 45),
  -- Slowking - Substitute - TM085
  (199, 19900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 46),
  -- Slowking - Iron Tail - TM087
  (199, 19900, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 47),
  -- Slowking - Curse - TM091
  (199, 19900, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 48),
  -- Slowking - Hydro Pump - TM096
  (199, 19900, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 49),
  -- Slowking - Heal Block - TM097
  (199, 19900, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 50),
  -- Slowking - Waterfall - TM098
  (199, 19900, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 51),
  -- Slowking - Metronome - TM099
  (199, 19900, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 52),
  -- Slowking - Focus Blast - TM102
  (199, 19900, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 53),
  -- Slowking - Blizzard - TM105
  (199, 19900, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 54),
  -- Slowking - Facade - TM109
  (199, 19900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 55),
  -- Slowking - Chilling Water - TM110
  (199, 19900, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 56),
  -- Slowking - Ancient Power - TM120
  (199, 19900, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 57),
  -- Slowking - Dream Eater - TM127
  (199, 19900, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 58),
  -- Slowking - Drain Punch - TM131
  (199, 19900, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 59),
  -- Slowking - Swagger - TM139
  (199, 19900, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 60),
  -- Slowking - Muddy Water - TM140
  (199, 19900, 330, 26, NULL, 2, NULL, NULL, 26002140, NULL, 61),
  -- Slowking - Skull Bash - TM146
  (199, 19900, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 62),
  -- Slowking - Tri Attack - TM147
  (199, 19900, 161, 26, NULL, 2, NULL, NULL, 26002147, NULL, 63),
  -- Slowking - Scald - TM148
  (199, 19900, 503, 26, NULL, 2, NULL, NULL, 26002148, NULL, 64),
  -- Galarian Slowking - Tackle - Level 1
  (199, 19901, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galarian Slowking - Curse - Level 1
  (199, 19901, 174, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galarian Slowking - Power Gem - Level 1
  (199, 19901, 408, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Galarian Slowking - Nasty Plot - Level 1
  (199, 19901, 417, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Galarian Slowking - Growl - Level 3
  (199, 19901, 45, 26, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Galarian Slowking - Water Gun - Level 6
  (199, 19901, 55, 26, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Galarian Slowking - Psybeam - Level 14
  (199, 19901, 60, 26, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Galarian Slowking - Water Pulse - Level 18
  (199, 19901, 352, 26, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Galarian Slowking - Headbutt - Level 21
  (199, 19901, 29, 26, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Galarian Slowking - Zen Headbutt - Level 24
  (199, 19901, 428, 26, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Galarian Slowking - Amnesia - Level 27
  (199, 19901, 133, 26, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Galarian Slowking - Surf - Level 36
  (199, 19901, 57, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Galarian Slowking - Sludge Wave - Level 36
  (199, 19901, 482, 26, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Galarian Slowking - Psychic - Level 42
  (199, 19901, 94, 26, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Galarian Slowking - Future Sight - Level 45
  (199, 19901, 248, 26, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Galarian Slowking - Headbutt - TM001
  (199, 19901, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Galarian Slowking - Psyshock - TM003
  (199, 19901, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 17),
  -- Galarian Slowking - Calm Mind - TM006
  (199, 19901, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 18),
  -- Galarian Slowking - Toxic - TM007
  (199, 19901, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 19),
  -- Galarian Slowking - Thunder Wave - TM008
  (199, 19901, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 20),
  -- Galarian Slowking - Ice Beam - TM013
  (199, 19901, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 21),
  -- Galarian Slowking - Light Screen - TM016
  (199, 19901, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 22),
  -- Galarian Slowking - Protect - TM017
  (199, 19901, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Galarian Slowking - Power Gem - TM019
  (199, 19901, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 24),
  -- Galarian Slowking - Thunder Punch - TM023
  (199, 19901, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 25),
  -- Galarian Slowking - Swift - TM027
  (199, 19901, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Galarian Slowking - Dig - TM028
  (199, 19901, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 27),
  -- Galarian Slowking - Fire Punch - TM029
  (199, 19901, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 28),
  -- Galarian Slowking - Body Slam - TM033
  (199, 19901, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Galarian Slowking - Endure - TM035
  (199, 19901, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Galarian Slowking - Fire Blast - TM038
  (199, 19901, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 31),
  -- Galarian Slowking - Water Pulse - TM041
  (199, 19901, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 32),
  -- Galarian Slowking - Hyper Beam - TM044
  (199, 19901, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 33),
  -- Galarian Slowking - Mud Shot - TM046
  (199, 19901, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 34),
  -- Galarian Slowking - Icy Wind - TM049
  (199, 19901, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 35),
  -- Galarian Slowking - Safeguard - TM051
  (199, 19901, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 36),
  -- Galarian Slowking - Sludge Bomb - TM053
  (199, 19901, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 37),
  -- Galarian Slowking - Giga Impact - TM055
  (199, 19901, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 38),
  -- Galarian Slowking - Zen Headbutt - TM059
  (199, 19901, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 39),
  -- Galarian Slowking - Future Sight - TM060
  (199, 19901, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 40),
  -- Galarian Slowking - Flamethrower - TM062
  (199, 19901, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 41),
  -- Galarian Slowking - Psychic - TM063
  (199, 19901, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 42),
  -- Galarian Slowking - Earthquake - TM069
  (199, 19901, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 43),
  -- Galarian Slowking - Whirlpool - TM070
  (199, 19901, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 44),
  -- Galarian Slowking - Surf - TM073
  (199, 19901, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 45),
  -- Galarian Slowking - Shadow Ball - TM074
  (199, 19901, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 46),
  -- Galarian Slowking - Liquidation - TM076
  (199, 19901, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 47),
  -- Galarian Slowking - Poison Jab - TM077
  (199, 19901, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 48),
  -- Galarian Slowking - Nasty Plot - TM083
  (199, 19901, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 49),
  -- Galarian Slowking - Substitute - TM085
  (199, 19901, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 50),
  -- Galarian Slowking - Iron Tail - TM087
  (199, 19901, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 51),
  -- Galarian Slowking - Toxic Spikes - TM089
  (199, 19901, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 52),
  -- Galarian Slowking - Curse - TM091
  (199, 19901, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 53),
  -- Galarian Slowking - Taunt - TM095
  (199, 19901, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 54),
  -- Galarian Slowking - Hydro Pump - TM096
  (199, 19901, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 55),
  -- Galarian Slowking - Heal Block - TM097
  (199, 19901, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 56),
  -- Galarian Slowking - Waterfall - TM098
  (199, 19901, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 57),
  -- Galarian Slowking - Metronome - TM099
  (199, 19901, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 58),
  -- Galarian Slowking - Gunk Shot - TM100
  (199, 19901, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 59),
  -- Galarian Slowking - Focus Blast - TM102
  (199, 19901, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 60),
  -- Galarian Slowking - Blizzard - TM105
  (199, 19901, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 61),
  -- Galarian Slowking - Facade - TM109
  (199, 19901, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 62),
  -- Galarian Slowking - Chilling Water - TM110
  (199, 19901, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 63),
  -- Galarian Slowking - Acid Spray - TM112
  (199, 19901, 491, 26, NULL, 2, NULL, NULL, 26002112, NULL, 64),
  -- Galarian Slowking - Low Sweep - TM113
  (199, 19901, 490, 26, NULL, 2, NULL, NULL, 26002113, NULL, 65),
  -- Galarian Slowking - Ominous Wind - TM119
  (199, 19901, 466, 26, NULL, 2, NULL, NULL, 26002119, NULL, 66),
  -- Galarian Slowking - Ancient Power - TM120
  (199, 19901, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 67),
  -- Galarian Slowking - Dream Eater - TM127
  (199, 19901, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 68),
  -- Galarian Slowking - Drain Punch - TM131
  (199, 19901, 409, 26, NULL, 2, NULL, NULL, 26002131, NULL, 69),
  -- Galarian Slowking - Swagger - TM139
  (199, 19901, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 70),
  -- Galarian Slowking - Muddy Water - TM140
  (199, 19901, 330, 26, NULL, 2, NULL, NULL, 26002140, NULL, 71),
  -- Galarian Slowking - Skull Bash - TM146
  (199, 19901, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 72),
  -- Galarian Slowking - Tri Attack - TM147
  (199, 19901, 161, 26, NULL, 2, NULL, NULL, 26002147, NULL, 73);
