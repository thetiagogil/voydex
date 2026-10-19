-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages for Ultra Sun / Ultra Moon.
-- Cross-check: PokemonDB Generation 7 learnset pages where source rows were ambiguous.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- Source names and caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ultra Sun / Ultra Moon learnsets for default forms, species 001-050.
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
  -- Bulbasaur - Tackle - Level 1
  (1, 100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bulbasaur - Growl - Level 3
  (1, 100, 45, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Bulbasaur - Leech Seed - Level 7
  (1, 100, 73, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Bulbasaur - Vine Whip - Level 9
  (1, 100, 22, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Bulbasaur - Poison Powder - Level 13
  (1, 100, 77, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Bulbasaur - Sleep Powder - Level 13
  (1, 100, 79, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Bulbasaur - Take Down - Level 15
  (1, 100, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bulbasaur - Razor Leaf - Level 19
  (1, 100, 75, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Bulbasaur - Sweet Scent - Level 21
  (1, 100, 230, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Bulbasaur - Growth - Level 25
  (1, 100, 74, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Bulbasaur - Double-Edge - Level 27
  (1, 100, 38, 16, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Bulbasaur - Worry Seed - Level 31
  (1, 100, 388, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Bulbasaur - Synthesis - Level 33
  (1, 100, 235, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Bulbasaur - Seed Bomb - Level 37
  (1, 100, 402, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Bulbasaur - Work Up - TM01
  (1, 100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 15),
  -- Bulbasaur - Toxic - TM06
  (1, 100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Bulbasaur - Venoshock - TM09
  (1, 100, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 17),
  -- Bulbasaur - Hidden Power - TM10
  (1, 100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Bulbasaur - Sunny Day - TM11
  (1, 100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Bulbasaur - Light Screen - TM16
  (1, 100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Bulbasaur - Protect - TM17
  (1, 100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Bulbasaur - Safeguard - TM20
  (1, 100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 22),
  -- Bulbasaur - Frustration - TM21
  (1, 100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Bulbasaur - Solar Beam - TM22
  (1, 100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 24),
  -- Bulbasaur - Return - TM27
  (1, 100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Bulbasaur - Double Team - TM32
  (1, 100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Bulbasaur - Sludge Bomb - TM36
  (1, 100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 27),
  -- Bulbasaur - Facade - TM42
  (1, 100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Bulbasaur - Rest - TM44
  (1, 100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Bulbasaur - Attract - TM45
  (1, 100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Bulbasaur - Round - TM48
  (1, 100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Bulbasaur - Echoed Voice - TM49
  (1, 100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 32),
  -- Bulbasaur - Energy Ball - TM53
  (1, 100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 33),
  -- Bulbasaur - Swords Dance - TM75
  (1, 100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 34),
  -- Bulbasaur - Grass Knot - TM86
  (1, 100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 35),
  -- Bulbasaur - Swagger - TM87
  (1, 100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Bulbasaur - Sleep Talk - TM88
  (1, 100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Bulbasaur - Substitute - TM90
  (1, 100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Bulbasaur - Nature Power - TM96
  (1, 100, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 39),
  -- Bulbasaur - Confide - TM100
  (1, 100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Bulbasaur - Petal Dance - Egg
  (1, 100, 80, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bulbasaur - Sludge - Egg
  (1, 100, 124, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bulbasaur - Skull Bash - Egg
  (1, 100, 130, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bulbasaur - Amnesia - Egg
  (1, 100, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bulbasaur - Curse - Egg
  (1, 100, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bulbasaur - Giga Drain - Egg
  (1, 100, 202, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bulbasaur - Endure - Egg
  (1, 100, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bulbasaur - Charm - Egg
  (1, 100, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bulbasaur - Nature Power - Egg
  (1, 100, 267, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bulbasaur - Ingrain - Egg
  (1, 100, 275, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bulbasaur - Grass Whistle - Egg
  (1, 100, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bulbasaur - Magical Leaf - Egg
  (1, 100, 345, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bulbasaur - Leaf Storm - Egg
  (1, 100, 437, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bulbasaur - Power Whip - Egg
  (1, 100, 438, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Bulbasaur - Grassy Terrain - Egg
  (1, 100, 580, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Bulbasaur - Bind - Tutor
  (1, 100, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Bulbasaur - Snore - Tutor
  (1, 100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Bulbasaur - Giga Drain - Tutor
  (1, 100, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Bulbasaur - Synthesis - Tutor
  (1, 100, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Bulbasaur - Knock Off - Tutor
  (1, 100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Bulbasaur - Worry Seed - Tutor
  (1, 100, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Bulbasaur - Seed Bomb - Tutor
  (1, 100, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Bulbasaur - Grass Pledge - Tutor
  (1, 100, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),

  -- Ivysaur - Tackle - Level 1
  (2, 200, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ivysaur - Growl - Level 1
  (2, 200, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ivysaur - Leech Seed - Level 1
  (2, 200, 73, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ivysaur - Growl - Level 3
  (2, 200, 45, 16, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Ivysaur - Leech Seed - Level 7
  (2, 200, 73, 16, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Ivysaur - Vine Whip - Level 9
  (2, 200, 22, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Ivysaur - Poison Powder - Level 13
  (2, 200, 77, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Ivysaur - Sleep Powder - Level 13
  (2, 200, 79, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Ivysaur - Take Down - Level 15
  (2, 200, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Ivysaur - Razor Leaf - Level 20
  (2, 200, 75, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Ivysaur - Sweet Scent - Level 23
  (2, 200, 230, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Ivysaur - Growth - Level 28
  (2, 200, 74, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Ivysaur - Double-Edge - Level 31
  (2, 200, 38, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Ivysaur - Worry Seed - Level 36
  (2, 200, 388, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Ivysaur - Synthesis - Level 39
  (2, 200, 235, 16, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Ivysaur - Solar Beam - Level 44
  (2, 200, 76, 16, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Ivysaur - Work Up - TM01
  (2, 200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Ivysaur - Toxic - TM06
  (2, 200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Ivysaur - Venoshock - TM09
  (2, 200, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 19),
  -- Ivysaur - Hidden Power - TM10
  (2, 200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Ivysaur - Sunny Day - TM11
  (2, 200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Ivysaur - Light Screen - TM16
  (2, 200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Ivysaur - Protect - TM17
  (2, 200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Ivysaur - Safeguard - TM20
  (2, 200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Ivysaur - Frustration - TM21
  (2, 200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Ivysaur - Solar Beam - TM22
  (2, 200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Ivysaur - Return - TM27
  (2, 200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Ivysaur - Double Team - TM32
  (2, 200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Ivysaur - Sludge Bomb - TM36
  (2, 200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 29),
  -- Ivysaur - Facade - TM42
  (2, 200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Ivysaur - Rest - TM44
  (2, 200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Ivysaur - Attract - TM45
  (2, 200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Ivysaur - Round - TM48
  (2, 200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Ivysaur - Echoed Voice - TM49
  (2, 200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 34),
  -- Ivysaur - Energy Ball - TM53
  (2, 200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 35),
  -- Ivysaur - Swords Dance - TM75
  (2, 200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 36),
  -- Ivysaur - Grass Knot - TM86
  (2, 200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 37),
  -- Ivysaur - Swagger - TM87
  (2, 200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Ivysaur - Sleep Talk - TM88
  (2, 200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Ivysaur - Substitute - TM90
  (2, 200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Ivysaur - Nature Power - TM96
  (2, 200, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 41),
  -- Ivysaur - Confide - TM100
  (2, 200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Ivysaur - Bind - Tutor
  (2, 200, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Ivysaur - Snore - Tutor
  (2, 200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Ivysaur - Giga Drain - Tutor
  (2, 200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Ivysaur - Synthesis - Tutor
  (2, 200, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Ivysaur - Knock Off - Tutor
  (2, 200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Ivysaur - Worry Seed - Tutor
  (2, 200, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Ivysaur - Seed Bomb - Tutor
  (2, 200, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Ivysaur - Grass Pledge - Tutor
  (2, 200, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),

  -- Venusaur - Vine Whip - Level 1
  (3, 300, 22, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venusaur - Tackle - Level 1
  (3, 300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venusaur - Growl - Level 1
  (3, 300, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venusaur - Leech Seed - Level 1
  (3, 300, 73, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venusaur - Petal Dance - Level 1
  (3, 300, 80, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Venusaur - Growl - Level 3
  (3, 300, 45, 16, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Venusaur - Leech Seed - Level 7
  (3, 300, 73, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Venusaur - Vine Whip - Level 9
  (3, 300, 22, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Venusaur - Poison Powder - Level 13
  (3, 300, 77, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Venusaur - Sleep Powder - Level 13
  (3, 300, 79, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Venusaur - Take Down - Level 15
  (3, 300, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Venusaur - Razor Leaf - Level 20
  (3, 300, 75, 16, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Venusaur - Sweet Scent - Level 23
  (3, 300, 230, 16, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Venusaur - Growth - Level 28
  (3, 300, 74, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Venusaur - Double-Edge - Level 31
  (3, 300, 38, 16, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Venusaur - Worry Seed - Level 39
  (3, 300, 388, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Venusaur - Synthesis - Level 45
  (3, 300, 235, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Venusaur - Petal Blizzard - Level 50
  (3, 300, 572, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Venusaur - Solar Beam - Level 53
  (3, 300, 76, 16, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Venusaur - Work Up - TM01
  (3, 300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Venusaur - Roar - TM05
  (3, 300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 21),
  -- Venusaur - Toxic - TM06
  (3, 300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Venusaur - Venoshock - TM09
  (3, 300, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 23),
  -- Venusaur - Hidden Power - TM10
  (3, 300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Venusaur - Sunny Day - TM11
  (3, 300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Venusaur - Hyper Beam - TM15
  (3, 300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Venusaur - Light Screen - TM16
  (3, 300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 27),
  -- Venusaur - Protect - TM17
  (3, 300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Venusaur - Safeguard - TM20
  (3, 300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 29),
  -- Venusaur - Frustration - TM21
  (3, 300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Venusaur - Solar Beam - TM22
  (3, 300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 31),
  -- Venusaur - Earthquake - TM26
  (3, 300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Venusaur - Return - TM27
  (3, 300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Venusaur - Double Team - TM32
  (3, 300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Venusaur - Sludge Bomb - TM36
  (3, 300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Venusaur - Facade - TM42
  (3, 300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Venusaur - Rest - TM44
  (3, 300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Venusaur - Attract - TM45
  (3, 300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Venusaur - Round - TM48
  (3, 300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Venusaur - Echoed Voice - TM49
  (3, 300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 40),
  -- Venusaur - Energy Ball - TM53
  (3, 300, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 41),
  -- Venusaur - Giga Impact - TM68
  (3, 300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Venusaur - Swords Dance - TM75
  (3, 300, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 43),
  -- Venusaur - Bulldoze - TM78
  (3, 300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Venusaur - Grass Knot - TM86
  (3, 300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 45),
  -- Venusaur - Swagger - TM87
  (3, 300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Venusaur - Sleep Talk - TM88
  (3, 300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Venusaur - Substitute - TM90
  (3, 300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Venusaur - Nature Power - TM96
  (3, 300, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 49),
  -- Venusaur - Confide - TM100
  (3, 300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Venusaur - Bind - Tutor
  (3, 300, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Venusaur - Snore - Tutor
  (3, 300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Venusaur - Outrage - Tutor
  (3, 300, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Venusaur - Giga Drain - Tutor
  (3, 300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Venusaur - Synthesis - Tutor
  (3, 300, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Venusaur - Knock Off - Tutor
  (3, 300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Venusaur - Block - Tutor
  (3, 300, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Venusaur - Frenzy Plant - Tutor
  (3, 300, 338, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Venusaur - Worry Seed - Tutor
  (3, 300, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Venusaur - Seed Bomb - Tutor
  (3, 300, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Venusaur - Grass Pledge - Tutor
  (3, 300, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Venusaur - Stomping Tantrum - Tutor
  (3, 300, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Venusaur - Petal Dance - Evolution
  (3, 300, 80, 16, NULL, 7, NULL, NULL, NULL, NULL, 63),

  -- Charmander - Scratch - Level 1
  (4, 400, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmander - Growl - Level 1
  (4, 400, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmander - Ember - Level 7
  (4, 400, 52, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Charmander - Smokescreen - Level 10
  (4, 400, 108, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Charmander - Dragon Rage - Level 16
  (4, 400, 82, 16, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Charmander - Scary Face - Level 19
  (4, 400, 184, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Charmander - Fire Fang - Level 25
  (4, 400, 424, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Charmander - Flame Burst - Level 28
  (4, 400, 481, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Charmander - Slash - Level 34
  (4, 400, 163, 16, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Charmander - Flamethrower - Level 37
  (4, 400, 53, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Charmander - Fire Spin - Level 43
  (4, 400, 83, 16, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Charmander - Inferno - Level 46
  (4, 400, 517, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Charmander - Work Up - TM01
  (4, 400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 13),
  -- Charmander - Dragon Claw - TM02
  (4, 400, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 14),
  -- Charmander - Toxic - TM06
  (4, 400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Charmander - Hidden Power - TM10
  (4, 400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Charmander - Sunny Day - TM11
  (4, 400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Charmander - Protect - TM17
  (4, 400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Charmander - Frustration - TM21
  (4, 400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Charmander - Return - TM27
  (4, 400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 20),
  -- Charmander - Brick Break - TM31
  (4, 400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 21),
  -- Charmander - Double Team - TM32
  (4, 400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Charmander - Flamethrower - TM35
  (4, 400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 23),
  -- Charmander - Fire Blast - TM38
  (4, 400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 24),
  -- Charmander - Rock Tomb - TM39
  (4, 400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 25),
  -- Charmander - Aerial Ace - TM40
  (4, 400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 26),
  -- Charmander - Facade - TM42
  (4, 400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Charmander - Flame Charge - TM43
  (4, 400, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 28),
  -- Charmander - Rest - TM44
  (4, 400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Charmander - Attract - TM45
  (4, 400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Charmander - Round - TM48
  (4, 400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Charmander - Echoed Voice - TM49
  (4, 400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 32),
  -- Charmander - Overheat - TM50
  (4, 400, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 33),
  -- Charmander - Fling - TM56
  (4, 400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 34),
  -- Charmander - Will-O-Wisp - TM61
  (4, 400, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 35),
  -- Charmander - Shadow Claw - TM65
  (4, 400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 36),
  -- Charmander - Swords Dance - TM75
  (4, 400, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 37),
  -- Charmander - Rock Slide - TM80
  (4, 400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 38),
  -- Charmander - Swagger - TM87
  (4, 400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Charmander - Sleep Talk - TM88
  (4, 400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Charmander - Substitute - TM90
  (4, 400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Charmander - Confide - TM100
  (4, 400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Charmander - Bite - Egg
  (4, 400, 44, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Charmander - Counter - Egg
  (4, 400, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Charmander - Belly Drum - Egg
  (4, 400, 187, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Charmander - Outrage - Egg
  (4, 400, 200, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Charmander - Metal Claw - Egg
  (4, 400, 232, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Charmander - Crunch - Egg
  (4, 400, 242, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Charmander - Ancient Power - Egg
  (4, 400, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Charmander - Beat Up - Egg
  (4, 400, 251, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Charmander - Focus Punch - Egg
  (4, 400, 264, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Charmander - Air Cutter - Egg
  (4, 400, 314, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Charmander - Dragon Dance - Egg
  (4, 400, 349, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Charmander - Flare Blitz - Egg
  (4, 400, 394, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Charmander - Dragon Pulse - Egg
  (4, 400, 406, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Charmander - Dragon Rush - Egg
  (4, 400, 407, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Charmander - Fire Punch - Tutor
  (4, 400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Charmander - Thunder Punch - Tutor
  (4, 400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Charmander - Snore - Tutor
  (4, 400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Charmander - Iron Tail - Tutor
  (4, 400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Charmander - Heat Wave - Tutor
  (4, 400, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Charmander - Focus Punch - Tutor
  (4, 400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Charmander - Dragon Pulse - Tutor
  (4, 400, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Charmander - Fire Pledge - Tutor
  (4, 400, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Charmeleon - Scratch - Level 1
  (5, 500, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charmeleon - Growl - Level 1
  (5, 500, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charmeleon - Ember - Level 1
  (5, 500, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charmeleon - Ember - Level 7
  (5, 500, 52, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Charmeleon - Smokescreen - Level 10
  (5, 500, 108, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Charmeleon - Dragon Rage - Level 17
  (5, 500, 82, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Charmeleon - Scary Face - Level 21
  (5, 500, 184, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Charmeleon - Fire Fang - Level 28
  (5, 500, 424, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Charmeleon - Flame Burst - Level 32
  (5, 500, 481, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Charmeleon - Slash - Level 39
  (5, 500, 163, 16, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Charmeleon - Flamethrower - Level 43
  (5, 500, 53, 16, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Charmeleon - Fire Spin - Level 50
  (5, 500, 83, 16, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Charmeleon - Inferno - Level 54
  (5, 500, 517, 16, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Charmeleon - Work Up - TM01
  (5, 500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 14),
  -- Charmeleon - Dragon Claw - TM02
  (5, 500, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 15),
  -- Charmeleon - Toxic - TM06
  (5, 500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Charmeleon - Hidden Power - TM10
  (5, 500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Charmeleon - Sunny Day - TM11
  (5, 500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Charmeleon - Protect - TM17
  (5, 500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Charmeleon - Frustration - TM21
  (5, 500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Charmeleon - Return - TM27
  (5, 500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Charmeleon - Brick Break - TM31
  (5, 500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 22),
  -- Charmeleon - Double Team - TM32
  (5, 500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Charmeleon - Flamethrower - TM35
  (5, 500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 24),
  -- Charmeleon - Fire Blast - TM38
  (5, 500, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 25),
  -- Charmeleon - Rock Tomb - TM39
  (5, 500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 26),
  -- Charmeleon - Aerial Ace - TM40
  (5, 500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Charmeleon - Facade - TM42
  (5, 500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Charmeleon - Flame Charge - TM43
  (5, 500, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 29),
  -- Charmeleon - Rest - TM44
  (5, 500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Charmeleon - Attract - TM45
  (5, 500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Charmeleon - Round - TM48
  (5, 500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Charmeleon - Echoed Voice - TM49
  (5, 500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 33),
  -- Charmeleon - Overheat - TM50
  (5, 500, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 34),
  -- Charmeleon - Fling - TM56
  (5, 500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Charmeleon - Will-O-Wisp - TM61
  (5, 500, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 36),
  -- Charmeleon - Shadow Claw - TM65
  (5, 500, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 37),
  -- Charmeleon - Swords Dance - TM75
  (5, 500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 38),
  -- Charmeleon - Rock Slide - TM80
  (5, 500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 39),
  -- Charmeleon - Swagger - TM87
  (5, 500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Charmeleon - Sleep Talk - TM88
  (5, 500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Charmeleon - Substitute - TM90
  (5, 500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Charmeleon - Confide - TM100
  (5, 500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Charmeleon - Fire Punch - Tutor
  (5, 500, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Charmeleon - Thunder Punch - Tutor
  (5, 500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Charmeleon - Snore - Tutor
  (5, 500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Charmeleon - Iron Tail - Tutor
  (5, 500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Charmeleon - Heat Wave - Tutor
  (5, 500, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Charmeleon - Focus Punch - Tutor
  (5, 500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Charmeleon - Dragon Pulse - Tutor
  (5, 500, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Charmeleon - Fire Pledge - Tutor
  (5, 500, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),

  -- Charizard - Scratch - Level 1
  (6, 600, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charizard - Wing Attack - Level 1
  (6, 600, 17, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charizard - Growl - Level 1
  (6, 600, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charizard - Ember - Level 1
  (6, 600, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Charizard - Heat Wave - Level 1
  (6, 600, 257, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Charizard - Dragon Claw - Level 1
  (6, 600, 337, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Charizard - Flare Blitz - Level 1
  (6, 600, 394, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Charizard - Air Slash - Level 1
  (6, 600, 403, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Charizard - Shadow Claw - Level 1
  (6, 600, 421, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Charizard - Ember - Level 7
  (6, 600, 52, 16, NULL, 1, 7, NULL, NULL, NULL, 10),
  -- Charizard - Smokescreen - Level 10
  (6, 600, 108, 16, NULL, 1, 10, NULL, NULL, NULL, 11),
  -- Charizard - Dragon Rage - Level 17
  (6, 600, 82, 16, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Charizard - Scary Face - Level 21
  (6, 600, 184, 16, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Charizard - Fire Fang - Level 28
  (6, 600, 424, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Charizard - Flame Burst - Level 32
  (6, 600, 481, 16, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Charizard - Slash - Level 41
  (6, 600, 163, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Charizard - Flamethrower - Level 47
  (6, 600, 53, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Charizard - Fire Spin - Level 56
  (6, 600, 83, 16, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Charizard - Inferno - Level 62
  (6, 600, 517, 16, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Charizard - Heat Wave - Level 71
  (6, 600, 257, 16, NULL, 1, 71, NULL, NULL, NULL, 20),
  -- Charizard - Flare Blitz - Level 77
  (6, 600, 394, 16, NULL, 1, 77, NULL, NULL, NULL, 21),
  -- Charizard - Work Up - TM01
  (6, 600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 22),
  -- Charizard - Dragon Claw - TM02
  (6, 600, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 23),
  -- Charizard - Roar - TM05
  (6, 600, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 24),
  -- Charizard - Toxic - TM06
  (6, 600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 25),
  -- Charizard - Hidden Power - TM10
  (6, 600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Charizard - Sunny Day - TM11
  (6, 600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Charizard - Hyper Beam - TM15
  (6, 600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Charizard - Protect - TM17
  (6, 600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Charizard - Roost - TM19
  (6, 600, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 30),
  -- Charizard - Frustration - TM21
  (6, 600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Charizard - Solar Beam - TM22
  (6, 600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 32),
  -- Charizard - Earthquake - TM26
  (6, 600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 33),
  -- Charizard - Return - TM27
  (6, 600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Charizard - Brick Break - TM31
  (6, 600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Charizard - Double Team - TM32
  (6, 600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Charizard - Flamethrower - TM35
  (6, 600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 37),
  -- Charizard - Fire Blast - TM38
  (6, 600, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 38),
  -- Charizard - Rock Tomb - TM39
  (6, 600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 39),
  -- Charizard - Aerial Ace - TM40
  (6, 600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 40),
  -- Charizard - Facade - TM42
  (6, 600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 41),
  -- Charizard - Flame Charge - TM43
  (6, 600, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 42),
  -- Charizard - Rest - TM44
  (6, 600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 43),
  -- Charizard - Attract - TM45
  (6, 600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 44),
  -- Charizard - Round - TM48
  (6, 600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Charizard - Echoed Voice - TM49
  (6, 600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 46),
  -- Charizard - Overheat - TM50
  (6, 600, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 47),
  -- Charizard - Steel Wing - TM51
  (6, 600, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 48),
  -- Charizard - Focus Blast - TM52
  (6, 600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 49),
  -- Charizard - Fling - TM56
  (6, 600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 50),
  -- Charizard - Sky Drop - TM58
  (6, 600, 507, 16, NULL, 2, NULL, NULL, 16002058, NULL, 51),
  -- Charizard - Brutal Swing - TM59
  (6, 600, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 52),
  -- Charizard - Will-O-Wisp - TM61
  (6, 600, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 53),
  -- Charizard - Shadow Claw - TM65
  (6, 600, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 54),
  -- Charizard - Giga Impact - TM68
  (6, 600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 55),
  -- Charizard - Swords Dance - TM75
  (6, 600, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 56),
  -- Charizard - Fly - TM76
  (6, 600, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 57),
  -- Charizard - Bulldoze - TM78
  (6, 600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 58),
  -- Charizard - Rock Slide - TM80
  (6, 600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 59),
  -- Charizard - Dragon Tail - TM82
  (6, 600, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 60),
  -- Charizard - Swagger - TM87
  (6, 600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 61),
  -- Charizard - Sleep Talk - TM88
  (6, 600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 62),
  -- Charizard - Substitute - TM90
  (6, 600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 63),
  -- Charizard - Confide - TM100
  (6, 600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 64),
  -- Charizard - Fire Punch - Tutor
  (6, 600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Charizard - Thunder Punch - Tutor
  (6, 600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Charizard - Snore - Tutor
  (6, 600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Charizard - Outrage - Tutor
  (6, 600, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Charizard - Iron Tail - Tutor
  (6, 600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Charizard - Heat Wave - Tutor
  (6, 600, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Charizard - Focus Punch - Tutor
  (6, 600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Charizard - Blast Burn - Tutor
  (6, 600, 307, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Charizard - Tailwind - Tutor
  (6, 600, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Charizard - Dragon Pulse - Tutor
  (6, 600, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Charizard - Defog - Tutor
  (6, 600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Charizard - Fire Pledge - Tutor
  (6, 600, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Charizard - Wing Attack - Evolution
  (6, 600, 17, 16, NULL, 7, NULL, NULL, NULL, NULL, 77),

  -- Squirtle - Tackle - Level 1
  (7, 700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Squirtle - Tail Whip - Level 4
  (7, 700, 39, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Squirtle - Water Gun - Level 7
  (7, 700, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Squirtle - Withdraw - Level 10
  (7, 700, 110, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Squirtle - Bubble - Level 13
  (7, 700, 145, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Squirtle - Bite - Level 16
  (7, 700, 44, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Squirtle - Rapid Spin - Level 19
  (7, 700, 229, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Squirtle - Protect - Level 22
  (7, 700, 182, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Squirtle - Water Pulse - Level 25
  (7, 700, 352, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Squirtle - Aqua Tail - Level 28
  (7, 700, 401, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Squirtle - Skull Bash - Level 31
  (7, 700, 130, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Squirtle - Iron Defense - Level 34
  (7, 700, 334, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Squirtle - Rain Dance - Level 37
  (7, 700, 240, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Squirtle - Hydro Pump - Level 40
  (7, 700, 56, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Squirtle - Work Up - TM01
  (7, 700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 15),
  -- Squirtle - Toxic - TM06
  (7, 700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Squirtle - Hail - TM07
  (7, 700, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Squirtle - Hidden Power - TM10
  (7, 700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Squirtle - Ice Beam - TM13
  (7, 700, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Squirtle - Blizzard - TM14
  (7, 700, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Squirtle - Protect - TM17
  (7, 700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Squirtle - Rain Dance - TM18
  (7, 700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Squirtle - Frustration - TM21
  (7, 700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Squirtle - Return - TM27
  (7, 700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Squirtle - Brick Break - TM31
  (7, 700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 25),
  -- Squirtle - Double Team - TM32
  (7, 700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Squirtle - Rock Tomb - TM39
  (7, 700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Squirtle - Facade - TM42
  (7, 700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Squirtle - Rest - TM44
  (7, 700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Squirtle - Attract - TM45
  (7, 700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Squirtle - Round - TM48
  (7, 700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Squirtle - Scald - TM55
  (7, 700, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 32),
  -- Squirtle - Fling - TM56
  (7, 700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 33),
  -- Squirtle - Gyro Ball - TM74
  (7, 700, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 34),
  -- Squirtle - Swagger - TM87
  (7, 700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Squirtle - Sleep Talk - TM88
  (7, 700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Squirtle - Substitute - TM90
  (7, 700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Squirtle - Surf - TM94
  (7, 700, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 38),
  -- Squirtle - Waterfall - TM98
  (7, 700, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 39),
  -- Squirtle - Confide - TM100
  (7, 700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Squirtle - Mist - Egg
  (7, 700, 54, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Squirtle - Haze - Egg
  (7, 700, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Squirtle - Flail - Egg
  (7, 700, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Squirtle - Foresight - Egg
  (7, 700, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Squirtle - Mirror Coat - Egg
  (7, 700, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Squirtle - Fake Out - Egg
  (7, 700, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Squirtle - Yawn - Egg
  (7, 700, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Squirtle - Refresh - Egg
  (7, 700, 287, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Squirtle - Mud Sport - Egg
  (7, 700, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Squirtle - Water Spout - Egg
  (7, 700, 323, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Squirtle - Muddy Water - Egg
  (7, 700, 330, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Squirtle - Brine - Egg
  (7, 700, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Squirtle - Aqua Ring - Egg
  (7, 700, 392, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Squirtle - Aura Sphere - Egg
  (7, 700, 396, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Squirtle - Dragon Pulse - Egg
  (7, 700, 406, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Squirtle - Aqua Jet - Egg
  (7, 700, 453, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Squirtle - Ice Punch - Tutor
  (7, 700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Squirtle - Snore - Tutor
  (7, 700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Squirtle - Icy Wind - Tutor
  (7, 700, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Squirtle - Iron Tail - Tutor
  (7, 700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Squirtle - Focus Punch - Tutor
  (7, 700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Squirtle - Iron Defense - Tutor
  (7, 700, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Squirtle - Water Pulse - Tutor
  (7, 700, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Squirtle - Aqua Tail - Tutor
  (7, 700, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Squirtle - Dragon Pulse - Tutor
  (7, 700, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Squirtle - Zen Headbutt - Tutor
  (7, 700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Squirtle - Water Pledge - Tutor
  (7, 700, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Wartortle - Tackle - Level 1
  (8, 800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wartortle - Tail Whip - Level 1
  (8, 800, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wartortle - Water Gun - Level 1
  (8, 800, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wartortle - Tail Whip - Level 4
  (8, 800, 39, 16, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Wartortle - Water Gun - Level 7
  (8, 800, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Wartortle - Withdraw - Level 10
  (8, 800, 110, 16, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Wartortle - Bubble - Level 13
  (8, 800, 145, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Wartortle - Bite - Level 17
  (8, 800, 44, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Wartortle - Rapid Spin - Level 21
  (8, 800, 229, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Wartortle - Protect - Level 25
  (8, 800, 182, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Wartortle - Water Pulse - Level 29
  (8, 800, 352, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Wartortle - Aqua Tail - Level 33
  (8, 800, 401, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Wartortle - Skull Bash - Level 37
  (8, 800, 130, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Wartortle - Iron Defense - Level 41
  (8, 800, 334, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Wartortle - Rain Dance - Level 45
  (8, 800, 240, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Wartortle - Hydro Pump - Level 49
  (8, 800, 56, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Wartortle - Work Up - TM01
  (8, 800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Wartortle - Toxic - TM06
  (8, 800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Wartortle - Hail - TM07
  (8, 800, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Wartortle - Hidden Power - TM10
  (8, 800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Wartortle - Ice Beam - TM13
  (8, 800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Wartortle - Blizzard - TM14
  (8, 800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Wartortle - Protect - TM17
  (8, 800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Wartortle - Rain Dance - TM18
  (8, 800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Wartortle - Frustration - TM21
  (8, 800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Wartortle - Return - TM27
  (8, 800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Wartortle - Brick Break - TM31
  (8, 800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Wartortle - Double Team - TM32
  (8, 800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Wartortle - Rock Tomb - TM39
  (8, 800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Wartortle - Facade - TM42
  (8, 800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Wartortle - Rest - TM44
  (8, 800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Wartortle - Attract - TM45
  (8, 800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Wartortle - Round - TM48
  (8, 800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Wartortle - Scald - TM55
  (8, 800, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 34),
  -- Wartortle - Fling - TM56
  (8, 800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Wartortle - Gyro Ball - TM74
  (8, 800, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 36),
  -- Wartortle - Swagger - TM87
  (8, 800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Wartortle - Sleep Talk - TM88
  (8, 800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Wartortle - Substitute - TM90
  (8, 800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Wartortle - Surf - TM94
  (8, 800, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 40),
  -- Wartortle - Waterfall - TM98
  (8, 800, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 41),
  -- Wartortle - Confide - TM100
  (8, 800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Wartortle - Ice Punch - Tutor
  (8, 800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Wartortle - Snore - Tutor
  (8, 800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Wartortle - Icy Wind - Tutor
  (8, 800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Wartortle - Iron Tail - Tutor
  (8, 800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Wartortle - Focus Punch - Tutor
  (8, 800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Wartortle - Iron Defense - Tutor
  (8, 800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Wartortle - Water Pulse - Tutor
  (8, 800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Wartortle - Aqua Tail - Tutor
  (8, 800, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Wartortle - Dragon Pulse - Tutor
  (8, 800, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Wartortle - Zen Headbutt - Tutor
  (8, 800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Wartortle - Water Pledge - Tutor
  (8, 800, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Blastoise - Tackle - Level 1
  (9, 900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blastoise - Tail Whip - Level 1
  (9, 900, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blastoise - Water Gun - Level 1
  (9, 900, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blastoise - Withdraw - Level 1
  (9, 900, 110, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blastoise - Flash Cannon - Level 1
  (9, 900, 430, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blastoise - Tail Whip - Level 4
  (9, 900, 39, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Blastoise - Water Gun - Level 7
  (9, 900, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Blastoise - Withdraw - Level 10
  (9, 900, 110, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Blastoise - Bubble - Level 13
  (9, 900, 145, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Blastoise - Bite - Level 17
  (9, 900, 44, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Blastoise - Rapid Spin - Level 21
  (9, 900, 229, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Blastoise - Protect - Level 25
  (9, 900, 182, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Blastoise - Water Pulse - Level 29
  (9, 900, 352, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Blastoise - Aqua Tail - Level 33
  (9, 900, 401, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Blastoise - Skull Bash - Level 40
  (9, 900, 130, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Blastoise - Iron Defense - Level 47
  (9, 900, 334, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Blastoise - Rain Dance - Level 54
  (9, 900, 240, 16, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Blastoise - Hydro Pump - Level 60
  (9, 900, 56, 16, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Blastoise - Work Up - TM01
  (9, 900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Blastoise - Roar - TM05
  (9, 900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 20),
  -- Blastoise - Toxic - TM06
  (9, 900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Blastoise - Hail - TM07
  (9, 900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 22),
  -- Blastoise - Hidden Power - TM10
  (9, 900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Blastoise - Ice Beam - TM13
  (9, 900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Blastoise - Blizzard - TM14
  (9, 900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Blastoise - Hyper Beam - TM15
  (9, 900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Blastoise - Protect - TM17
  (9, 900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Blastoise - Rain Dance - TM18
  (9, 900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Blastoise - Frustration - TM21
  (9, 900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Blastoise - Smack Down - TM23
  (9, 900, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 30),
  -- Blastoise - Earthquake - TM26
  (9, 900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 31),
  -- Blastoise - Return - TM27
  (9, 900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Blastoise - Brick Break - TM31
  (9, 900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 33),
  -- Blastoise - Double Team - TM32
  (9, 900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Blastoise - Rock Tomb - TM39
  (9, 900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Blastoise - Facade - TM42
  (9, 900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Blastoise - Rest - TM44
  (9, 900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Blastoise - Attract - TM45
  (9, 900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Blastoise - Round - TM48
  (9, 900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Blastoise - Focus Blast - TM52
  (9, 900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 40),
  -- Blastoise - Scald - TM55
  (9, 900, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 41),
  -- Blastoise - Fling - TM56
  (9, 900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Blastoise - Giga Impact - TM68
  (9, 900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Blastoise - Gyro Ball - TM74
  (9, 900, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 44),
  -- Blastoise - Bulldoze - TM78
  (9, 900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 45),
  -- Blastoise - Rock Slide - TM80
  (9, 900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 46),
  -- Blastoise - Dragon Tail - TM82
  (9, 900, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 47),
  -- Blastoise - Swagger - TM87
  (9, 900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Blastoise - Sleep Talk - TM88
  (9, 900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Blastoise - Substitute - TM90
  (9, 900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Blastoise - Flash Cannon - TM91
  (9, 900, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 51),
  -- Blastoise - Surf - TM94
  (9, 900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 52),
  -- Blastoise - Dark Pulse - TM97
  (9, 900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 53),
  -- Blastoise - Waterfall - TM98
  (9, 900, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 54),
  -- Blastoise - Confide - TM100
  (9, 900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Blastoise - Ice Punch - Tutor
  (9, 900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Blastoise - Snore - Tutor
  (9, 900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Blastoise - Icy Wind - Tutor
  (9, 900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Blastoise - Outrage - Tutor
  (9, 900, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Blastoise - Iron Tail - Tutor
  (9, 900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Blastoise - Focus Punch - Tutor
  (9, 900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Blastoise - Hydro Cannon - Tutor
  (9, 900, 308, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Blastoise - Signal Beam - Tutor
  (9, 900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Blastoise - Iron Defense - Tutor
  (9, 900, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Blastoise - Water Pulse - Tutor
  (9, 900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Blastoise - Aqua Tail - Tutor
  (9, 900, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Blastoise - Dragon Pulse - Tutor
  (9, 900, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Blastoise - Zen Headbutt - Tutor
  (9, 900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Blastoise - Water Pledge - Tutor
  (9, 900, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Blastoise - Liquidation - Tutor
  (9, 900, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Caterpie - Tackle - Level 1
  (10, 1000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Caterpie - String Shot - Level 1
  (10, 1000, 81, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Caterpie - Bug Bite - Level 9
  (10, 1000, 450, 16, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Caterpie - Snore - Tutor
  (10, 1000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 4),
  -- Caterpie - Bug Bite - Tutor
  (10, 1000, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 5),
  -- Caterpie - Electroweb - Tutor
  (10, 1000, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 6),

  -- Metapod - Harden - Level 1
  (11, 1100, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metapod - Iron Defense - Tutor
  (11, 1100, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 2),
  -- Metapod - Bug Bite - Tutor
  (11, 1100, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 3),
  -- Metapod - Electroweb - Tutor
  (11, 1100, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 4),
  -- Metapod - Harden - Evolution
  (11, 1100, 106, 16, NULL, 7, NULL, NULL, NULL, NULL, 5),

  -- Butterfree - Gust - Level 1
  (12, 1200, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Butterfree - Confusion - Level 1
  (12, 1200, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Butterfree - Confusion - Level 11
  (12, 1200, 93, 16, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Butterfree - Poison Powder - Level 13
  (12, 1200, 77, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Butterfree - Stun Spore - Level 13
  (12, 1200, 78, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Butterfree - Sleep Powder - Level 13
  (12, 1200, 79, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Butterfree - Psybeam - Level 17
  (12, 1200, 60, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Butterfree - Silver Wind - Level 19
  (12, 1200, 318, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Butterfree - Supersonic - Level 23
  (12, 1200, 48, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Butterfree - Safeguard - Level 25
  (12, 1200, 219, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Butterfree - Whirlwind - Level 29
  (12, 1200, 18, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Butterfree - Bug Buzz - Level 31
  (12, 1200, 405, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Butterfree - Rage Powder - Level 35
  (12, 1200, 476, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Butterfree - Captivate - Level 37
  (12, 1200, 445, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Butterfree - Tailwind - Level 41
  (12, 1200, 366, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Butterfree - Air Slash - Level 43
  (12, 1200, 403, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Butterfree - Quiver Dance - Level 47
  (12, 1200, 483, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Butterfree - Toxic - TM06
  (12, 1200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Butterfree - Venoshock - TM09
  (12, 1200, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 19),
  -- Butterfree - Hidden Power - TM10
  (12, 1200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Butterfree - Sunny Day - TM11
  (12, 1200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Butterfree - Hyper Beam - TM15
  (12, 1200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Butterfree - Protect - TM17
  (12, 1200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Butterfree - Rain Dance - TM18
  (12, 1200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Butterfree - Roost - TM19
  (12, 1200, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 25),
  -- Butterfree - Safeguard - TM20
  (12, 1200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Butterfree - Frustration - TM21
  (12, 1200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Butterfree - Solar Beam - TM22
  (12, 1200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Butterfree - Return - TM27
  (12, 1200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Butterfree - Psychic - TM29
  (12, 1200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Butterfree - Shadow Ball - TM30
  (12, 1200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Butterfree - Double Team - TM32
  (12, 1200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Butterfree - Aerial Ace - TM40
  (12, 1200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Butterfree - Facade - TM42
  (12, 1200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Butterfree - Rest - TM44
  (12, 1200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Butterfree - Attract - TM45
  (12, 1200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Butterfree - Thief - TM46
  (12, 1200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Butterfree - Round - TM48
  (12, 1200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Butterfree - Energy Ball - TM53
  (12, 1200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 39),
  -- Butterfree - Acrobatics - TM62
  (12, 1200, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 40),
  -- Butterfree - Giga Impact - TM68
  (12, 1200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Butterfree - Psych Up - TM77
  (12, 1200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Butterfree - Infestation - TM83
  (12, 1200, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 43),
  -- Butterfree - Dream Eater - TM85
  (12, 1200, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 44),
  -- Butterfree - Swagger - TM87
  (12, 1200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Butterfree - Sleep Talk - TM88
  (12, 1200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Butterfree - U-turn - TM89
  (12, 1200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 47),
  -- Butterfree - Substitute - TM90
  (12, 1200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Butterfree - Confide - TM100
  (12, 1200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Butterfree - Snore - Tutor
  (12, 1200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Butterfree - Giga Drain - Tutor
  (12, 1200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Butterfree - Skill Swap - Tutor
  (12, 1200, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Butterfree - Signal Beam - Tutor
  (12, 1200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Butterfree - Tailwind - Tutor
  (12, 1200, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Butterfree - Defog - Tutor
  (12, 1200, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Butterfree - Bug Bite - Tutor
  (12, 1200, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Butterfree - Electroweb - Tutor
  (12, 1200, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Butterfree - Gust - Evolution
  (12, 1200, 16, 16, NULL, 7, NULL, NULL, NULL, NULL, 58),

  -- Weedle - Poison Sting - Level 1
  (13, 1300, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weedle - String Shot - Level 1
  (13, 1300, 81, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weedle - Bug Bite - Level 9
  (13, 1300, 450, 16, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Weedle - Bug Bite - Tutor
  (13, 1300, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 4),
  -- Weedle - Electroweb - Tutor
  (13, 1300, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 5),

  -- Kakuna - Harden - Level 1
  (14, 1400, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kakuna - Iron Defense - Tutor
  (14, 1400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 2),
  -- Kakuna - Bug Bite - Tutor
  (14, 1400, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 3),
  -- Kakuna - Electroweb - Tutor
  (14, 1400, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 4),
  -- Kakuna - Harden - Evolution
  (14, 1400, 106, 16, NULL, 7, NULL, NULL, NULL, NULL, 5),

  -- Beedrill - Fury Attack - Level 1
  (15, 1500, 31, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beedrill - Twineedle - Level 1
  (15, 1500, 41, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Beedrill - Fury Attack - Level 11
  (15, 1500, 31, 16, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Beedrill - Rage - Level 14
  (15, 1500, 99, 16, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Beedrill - Pursuit - Level 17
  (15, 1500, 228, 16, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Beedrill - Focus Energy - Level 20
  (15, 1500, 116, 16, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Beedrill - Venoshock - Level 23
  (15, 1500, 474, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Beedrill - Assurance - Level 26
  (15, 1500, 372, 16, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Beedrill - Toxic Spikes - Level 29
  (15, 1500, 390, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Beedrill - Pin Missile - Level 32
  (15, 1500, 42, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Beedrill - Poison Jab - Level 35
  (15, 1500, 398, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Beedrill - Agility - Level 38
  (15, 1500, 97, 16, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Beedrill - Endeavor - Level 41
  (15, 1500, 283, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Beedrill - Fell Stinger - Level 44
  (15, 1500, 565, 16, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Beedrill - Toxic - TM06
  (15, 1500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Beedrill - Venoshock - TM09
  (15, 1500, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 16),
  -- Beedrill - Hidden Power - TM10
  (15, 1500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Beedrill - Sunny Day - TM11
  (15, 1500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Beedrill - Hyper Beam - TM15
  (15, 1500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 19),
  -- Beedrill - Protect - TM17
  (15, 1500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Beedrill - Roost - TM19
  (15, 1500, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 21),
  -- Beedrill - Frustration - TM21
  (15, 1500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Beedrill - Solar Beam - TM22
  (15, 1500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Beedrill - Return - TM27
  (15, 1500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Beedrill - Brick Break - TM31
  (15, 1500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 25),
  -- Beedrill - Double Team - TM32
  (15, 1500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Beedrill - Sludge Bomb - TM36
  (15, 1500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 27),
  -- Beedrill - Aerial Ace - TM40
  (15, 1500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Beedrill - Facade - TM42
  (15, 1500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Beedrill - Rest - TM44
  (15, 1500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Beedrill - Attract - TM45
  (15, 1500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Beedrill - Thief - TM46
  (15, 1500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Beedrill - Round - TM48
  (15, 1500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Beedrill - False Swipe - TM54
  (15, 1500, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 34),
  -- Beedrill - Brutal Swing - TM59
  (15, 1500, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 35),
  -- Beedrill - Acrobatics - TM62
  (15, 1500, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 36),
  -- Beedrill - Payback - TM66
  (15, 1500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 37),
  -- Beedrill - Giga Impact - TM68
  (15, 1500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Beedrill - Swords Dance - TM75
  (15, 1500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 39),
  -- Beedrill - X-Scissor - TM81
  (15, 1500, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 40),
  -- Beedrill - Infestation - TM83
  (15, 1500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 41),
  -- Beedrill - Poison Jab - TM84
  (15, 1500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 42),
  -- Beedrill - Swagger - TM87
  (15, 1500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Beedrill - Sleep Talk - TM88
  (15, 1500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Beedrill - U-turn - TM89
  (15, 1500, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 45),
  -- Beedrill - Substitute - TM90
  (15, 1500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Beedrill - Confide - TM100
  (15, 1500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Beedrill - Snore - Tutor
  (15, 1500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Beedrill - Giga Drain - Tutor
  (15, 1500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Beedrill - Knock Off - Tutor
  (15, 1500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Beedrill - Endeavor - Tutor
  (15, 1500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Beedrill - Tailwind - Tutor
  (15, 1500, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Beedrill - Defog - Tutor
  (15, 1500, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Beedrill - Bug Bite - Tutor
  (15, 1500, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Beedrill - Electroweb - Tutor
  (15, 1500, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Beedrill - Drill Run - Tutor
  (15, 1500, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Beedrill - Laser Focus - Tutor
  (15, 1500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Beedrill - Throat Chop - Tutor
  (15, 1500, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Beedrill - Twineedle - Evolution
  (15, 1500, 41, 16, NULL, 7, NULL, NULL, NULL, NULL, 59),

  -- Pidgey - Tackle - Level 1
  (16, 1600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgey - Sand Attack - Level 5
  (16, 1600, 28, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Pidgey - Gust - Level 9
  (16, 1600, 16, 16, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pidgey - Quick Attack - Level 13
  (16, 1600, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Pidgey - Whirlwind - Level 17
  (16, 1600, 18, 16, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Pidgey - Twister - Level 21
  (16, 1600, 239, 16, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Pidgey - Feather Dance - Level 25
  (16, 1600, 297, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pidgey - Agility - Level 29
  (16, 1600, 97, 16, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Pidgey - Wing Attack - Level 33
  (16, 1600, 17, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pidgey - Roost - Level 37
  (16, 1600, 355, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Pidgey - Tailwind - Level 41
  (16, 1600, 366, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Pidgey - Mirror Move - Level 45
  (16, 1600, 119, 16, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Pidgey - Air Slash - Level 49
  (16, 1600, 403, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Pidgey - Hurricane - Level 53
  (16, 1600, 542, 16, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Pidgey - Work Up - TM01
  (16, 1600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 15),
  -- Pidgey - Toxic - TM06
  (16, 1600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Pidgey - Hidden Power - TM10
  (16, 1600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Pidgey - Sunny Day - TM11
  (16, 1600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Pidgey - Protect - TM17
  (16, 1600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Pidgey - Rain Dance - TM18
  (16, 1600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Pidgey - Roost - TM19
  (16, 1600, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 21),
  -- Pidgey - Frustration - TM21
  (16, 1600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Pidgey - Return - TM27
  (16, 1600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Pidgey - Double Team - TM32
  (16, 1600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Pidgey - Aerial Ace - TM40
  (16, 1600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 25),
  -- Pidgey - Facade - TM42
  (16, 1600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Pidgey - Rest - TM44
  (16, 1600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Pidgey - Attract - TM45
  (16, 1600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Pidgey - Thief - TM46
  (16, 1600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 29),
  -- Pidgey - Round - TM48
  (16, 1600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Pidgey - Steel Wing - TM51
  (16, 1600, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 31),
  -- Pidgey - Fly - TM76
  (16, 1600, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 32),
  -- Pidgey - Swagger - TM87
  (16, 1600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Pidgey - Sleep Talk - TM88
  (16, 1600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Pidgey - U-turn - TM89
  (16, 1600, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 35),
  -- Pidgey - Substitute - TM90
  (16, 1600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Pidgey - Confide - TM100
  (16, 1600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Pidgey - Feint Attack - Egg
  (16, 1600, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Pidgey - Foresight - Egg
  (16, 1600, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Pidgey - Steel Wing - Egg
  (16, 1600, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pidgey - Pursuit - Egg
  (16, 1600, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pidgey - Uproar - Egg
  (16, 1600, 253, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pidgey - Air Cutter - Egg
  (16, 1600, 314, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pidgey - Air Slash - Egg
  (16, 1600, 403, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pidgey - Brave Bird - Egg
  (16, 1600, 413, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pidgey - Defog - Egg
  (16, 1600, 432, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pidgey - Sky Attack - Tutor
  (16, 1600, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Pidgey - Snore - Tutor
  (16, 1600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Pidgey - Uproar - Tutor
  (16, 1600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Pidgey - Heat Wave - Tutor
  (16, 1600, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Pidgey - Tailwind - Tutor
  (16, 1600, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Pidgey - Defog - Tutor
  (16, 1600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),

  -- Pidgeotto - Gust - Level 1
  (17, 1700, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeotto - Sand Attack - Level 1
  (17, 1700, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeotto - Tackle - Level 1
  (17, 1700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pidgeotto - Sand Attack - Level 5
  (17, 1700, 28, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Pidgeotto - Gust - Level 9
  (17, 1700, 16, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Pidgeotto - Quick Attack - Level 13
  (17, 1700, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Pidgeotto - Whirlwind - Level 17
  (17, 1700, 18, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Pidgeotto - Twister - Level 22
  (17, 1700, 239, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Pidgeotto - Feather Dance - Level 27
  (17, 1700, 297, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Pidgeotto - Agility - Level 32
  (17, 1700, 97, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Pidgeotto - Wing Attack - Level 37
  (17, 1700, 17, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Pidgeotto - Roost - Level 42
  (17, 1700, 355, 16, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Pidgeotto - Tailwind - Level 47
  (17, 1700, 366, 16, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Pidgeotto - Mirror Move - Level 52
  (17, 1700, 119, 16, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Pidgeotto - Air Slash - Level 57
  (17, 1700, 403, 16, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Pidgeotto - Hurricane - Level 62
  (17, 1700, 542, 16, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Pidgeotto - Work Up - TM01
  (17, 1700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Pidgeotto - Toxic - TM06
  (17, 1700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Pidgeotto - Hidden Power - TM10
  (17, 1700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Pidgeotto - Sunny Day - TM11
  (17, 1700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Pidgeotto - Protect - TM17
  (17, 1700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Pidgeotto - Rain Dance - TM18
  (17, 1700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Pidgeotto - Roost - TM19
  (17, 1700, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Pidgeotto - Frustration - TM21
  (17, 1700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Pidgeotto - Return - TM27
  (17, 1700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Pidgeotto - Double Team - TM32
  (17, 1700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Pidgeotto - Aerial Ace - TM40
  (17, 1700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Pidgeotto - Facade - TM42
  (17, 1700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Pidgeotto - Rest - TM44
  (17, 1700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Pidgeotto - Attract - TM45
  (17, 1700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Pidgeotto - Thief - TM46
  (17, 1700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 31),
  -- Pidgeotto - Round - TM48
  (17, 1700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Pidgeotto - Steel Wing - TM51
  (17, 1700, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 33),
  -- Pidgeotto - Fly - TM76
  (17, 1700, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 34),
  -- Pidgeotto - Swagger - TM87
  (17, 1700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Pidgeotto - Sleep Talk - TM88
  (17, 1700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Pidgeotto - U-turn - TM89
  (17, 1700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 37),
  -- Pidgeotto - Substitute - TM90
  (17, 1700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Pidgeotto - Confide - TM100
  (17, 1700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Pidgeotto - Sky Attack - Tutor
  (17, 1700, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Pidgeotto - Snore - Tutor
  (17, 1700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Pidgeotto - Uproar - Tutor
  (17, 1700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Pidgeotto - Heat Wave - Tutor
  (17, 1700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Pidgeotto - Tailwind - Tutor
  (17, 1700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Pidgeotto - Defog - Tutor
  (17, 1700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),

  -- Pidgeot - Gust - Level 1
  (18, 1800, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidgeot - Sand Attack - Level 1
  (18, 1800, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pidgeot - Tackle - Level 1
  (18, 1800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pidgeot - Quick Attack - Level 1
  (18, 1800, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pidgeot - Hurricane - Level 1
  (18, 1800, 542, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pidgeot - Sand Attack - Level 5
  (18, 1800, 28, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Pidgeot - Gust - Level 9
  (18, 1800, 16, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Pidgeot - Quick Attack - Level 13
  (18, 1800, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Pidgeot - Whirlwind - Level 17
  (18, 1800, 18, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Pidgeot - Twister - Level 22
  (18, 1800, 239, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Pidgeot - Feather Dance - Level 27
  (18, 1800, 297, 16, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Pidgeot - Agility - Level 32
  (18, 1800, 97, 16, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Pidgeot - Wing Attack - Level 38
  (18, 1800, 17, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Pidgeot - Roost - Level 44
  (18, 1800, 355, 16, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Pidgeot - Tailwind - Level 50
  (18, 1800, 366, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Pidgeot - Mirror Move - Level 56
  (18, 1800, 119, 16, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Pidgeot - Air Slash - Level 62
  (18, 1800, 403, 16, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Pidgeot - Hurricane - Level 68
  (18, 1800, 542, 16, NULL, 1, 68, NULL, NULL, NULL, 18),
  -- Pidgeot - Work Up - TM01
  (18, 1800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Pidgeot - Toxic - TM06
  (18, 1800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Pidgeot - Hidden Power - TM10
  (18, 1800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Pidgeot - Sunny Day - TM11
  (18, 1800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Pidgeot - Hyper Beam - TM15
  (18, 1800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Pidgeot - Protect - TM17
  (18, 1800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Pidgeot - Rain Dance - TM18
  (18, 1800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Pidgeot - Roost - TM19
  (18, 1800, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 26),
  -- Pidgeot - Frustration - TM21
  (18, 1800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Pidgeot - Return - TM27
  (18, 1800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Pidgeot - Double Team - TM32
  (18, 1800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Pidgeot - Aerial Ace - TM40
  (18, 1800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Pidgeot - Facade - TM42
  (18, 1800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Pidgeot - Rest - TM44
  (18, 1800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Pidgeot - Attract - TM45
  (18, 1800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Pidgeot - Thief - TM46
  (18, 1800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Pidgeot - Round - TM48
  (18, 1800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Pidgeot - Steel Wing - TM51
  (18, 1800, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 36),
  -- Pidgeot - Giga Impact - TM68
  (18, 1800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Pidgeot - Fly - TM76
  (18, 1800, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 38),
  -- Pidgeot - Swagger - TM87
  (18, 1800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Pidgeot - Sleep Talk - TM88
  (18, 1800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Pidgeot - U-turn - TM89
  (18, 1800, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 41),
  -- Pidgeot - Substitute - TM90
  (18, 1800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Pidgeot - Confide - TM100
  (18, 1800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Pidgeot - Sky Attack - Tutor
  (18, 1800, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Pidgeot - Snore - Tutor
  (18, 1800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Pidgeot - Uproar - Tutor
  (18, 1800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Pidgeot - Heat Wave - Tutor
  (18, 1800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Pidgeot - Tailwind - Tutor
  (18, 1800, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Pidgeot - Defog - Tutor
  (18, 1800, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Pidgeot - Laser Focus - Tutor
  (18, 1800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),

  -- Rattata - Tackle - Level 1
  (19, 1900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rattata - Tail Whip - Level 1
  (19, 1900, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rattata - Quick Attack - Level 4
  (19, 1900, 98, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Rattata - Focus Energy - Level 7
  (19, 1900, 116, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Rattata - Bite - Level 10
  (19, 1900, 44, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Rattata - Pursuit - Level 13
  (19, 1900, 228, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Rattata - Hyper Fang - Level 16
  (19, 1900, 158, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Rattata - Assurance - Level 19
  (19, 1900, 372, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Rattata - Crunch - Level 22
  (19, 1900, 242, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Rattata - Sucker Punch - Level 25
  (19, 1900, 389, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Rattata - Super Fang - Level 28
  (19, 1900, 162, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Rattata - Double-Edge - Level 31
  (19, 1900, 38, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Rattata - Endeavor - Level 34
  (19, 1900, 283, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Rattata - Work Up - TM01
  (19, 1900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 14),
  -- Rattata - Toxic - TM06
  (19, 1900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Rattata - Hidden Power - TM10
  (19, 1900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Rattata - Sunny Day - TM11
  (19, 1900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Rattata - Taunt - TM12
  (19, 1900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 18),
  -- Rattata - Ice Beam - TM13
  (19, 1900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Rattata - Blizzard - TM14
  (19, 1900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Rattata - Protect - TM17
  (19, 1900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Rattata - Rain Dance - TM18
  (19, 1900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Rattata - Frustration - TM21
  (19, 1900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Rattata - Thunderbolt - TM24
  (19, 1900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 24),
  -- Rattata - Thunder - TM25
  (19, 1900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 25),
  -- Rattata - Return - TM27
  (19, 1900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Rattata - Shadow Ball - TM30
  (19, 1900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Rattata - Double Team - TM32
  (19, 1900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Rattata - Facade - TM42
  (19, 1900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Rattata - Rest - TM44
  (19, 1900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Rattata - Attract - TM45
  (19, 1900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Rattata - Thief - TM46
  (19, 1900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Rattata - Round - TM48
  (19, 1900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Rattata - Charge Beam - TM57
  (19, 1900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 34),
  -- Rattata - Thunder Wave - TM73
  (19, 1900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 35),
  -- Rattata - Grass Knot - TM86
  (19, 1900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 36),
  -- Rattata - Swagger - TM87
  (19, 1900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Rattata - Sleep Talk - TM88
  (19, 1900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Rattata - U-turn - TM89
  (19, 1900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 39),
  -- Rattata - Substitute - TM90
  (19, 1900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Rattata - Wild Charge - TM93
  (19, 1900, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 41),
  -- Rattata - Confide - TM100
  (19, 1900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Rattata - Bite - Egg
  (19, 1900, 44, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Rattata - Counter - Egg
  (19, 1900, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Rattata - Screech - Egg
  (19, 1900, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Rattata - Fury Swipes - Egg
  (19, 1900, 154, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Rattata - Flame Wheel - Egg
  (19, 1900, 172, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Rattata - Reversal - Egg
  (19, 1900, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Rattata - Uproar - Egg
  (19, 1900, 253, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Rattata - Revenge - Egg
  (19, 1900, 279, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Rattata - Me First - Egg
  (19, 1900, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Rattata - Last Resort - Egg
  (19, 1900, 387, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Rattata - Final Gambit - Egg
  (19, 1900, 515, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Rattata - Super Fang - Tutor
  (19, 1900, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Rattata - Snore - Tutor
  (19, 1900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Rattata - Icy Wind - Tutor
  (19, 1900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Rattata - Iron Tail - Tutor
  (19, 1900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Rattata - Uproar - Tutor
  (19, 1900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Rattata - Endeavor - Tutor
  (19, 1900, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Rattata - Covet - Tutor
  (19, 1900, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Rattata - Shock Wave - Tutor
  (19, 1900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Rattata - Last Resort - Tutor
  (19, 1900, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Rattata - Zen Headbutt - Tutor
  (19, 1900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),

  -- Raticate - Swords Dance - Level 1
  (20, 2000, 14, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raticate - Tackle - Level 1
  (20, 2000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raticate - Tail Whip - Level 1
  (20, 2000, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raticate - Quick Attack - Level 1
  (20, 2000, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raticate - Focus Energy - Level 1
  (20, 2000, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raticate - Scary Face - Level 1
  (20, 2000, 184, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Raticate - Quick Attack - Level 4
  (20, 2000, 98, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Raticate - Focus Energy - Level 7
  (20, 2000, 116, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Raticate - Bite - Level 10
  (20, 2000, 44, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Raticate - Pursuit - Level 13
  (20, 2000, 228, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Raticate - Hyper Fang - Level 16
  (20, 2000, 158, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Raticate - Assurance - Level 19
  (20, 2000, 372, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Raticate - Crunch - Level 24
  (20, 2000, 242, 16, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Raticate - Sucker Punch - Level 29
  (20, 2000, 389, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Raticate - Super Fang - Level 34
  (20, 2000, 162, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Raticate - Double-Edge - Level 39
  (20, 2000, 38, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Raticate - Endeavor - Level 44
  (20, 2000, 283, 16, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Raticate - Work Up - TM01
  (20, 2000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Raticate - Roar - TM05
  (20, 2000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Raticate - Toxic - TM06
  (20, 2000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Raticate - Hidden Power - TM10
  (20, 2000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Raticate - Sunny Day - TM11
  (20, 2000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Raticate - Taunt - TM12
  (20, 2000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Raticate - Ice Beam - TM13
  (20, 2000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Raticate - Blizzard - TM14
  (20, 2000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Raticate - Hyper Beam - TM15
  (20, 2000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Raticate - Protect - TM17
  (20, 2000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Raticate - Rain Dance - TM18
  (20, 2000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Raticate - Frustration - TM21
  (20, 2000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Raticate - Thunderbolt - TM24
  (20, 2000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Raticate - Thunder - TM25
  (20, 2000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Raticate - Return - TM27
  (20, 2000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Raticate - Shadow Ball - TM30
  (20, 2000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Raticate - Double Team - TM32
  (20, 2000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Raticate - Facade - TM42
  (20, 2000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Raticate - Rest - TM44
  (20, 2000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Raticate - Attract - TM45
  (20, 2000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Raticate - Thief - TM46
  (20, 2000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 38),
  -- Raticate - Round - TM48
  (20, 2000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Raticate - Charge Beam - TM57
  (20, 2000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 40),
  -- Raticate - Giga Impact - TM68
  (20, 2000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Raticate - Thunder Wave - TM73
  (20, 2000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 42),
  -- Raticate - Swords Dance - TM75
  (20, 2000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 43),
  -- Raticate - Grass Knot - TM86
  (20, 2000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 44),
  -- Raticate - Swagger - TM87
  (20, 2000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Raticate - Sleep Talk - TM88
  (20, 2000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Raticate - U-turn - TM89
  (20, 2000, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 47),
  -- Raticate - Substitute - TM90
  (20, 2000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Raticate - Wild Charge - TM93
  (20, 2000, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 49),
  -- Raticate - Confide - TM100
  (20, 2000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Raticate - Super Fang - Tutor
  (20, 2000, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Raticate - Snore - Tutor
  (20, 2000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Raticate - Icy Wind - Tutor
  (20, 2000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Raticate - Iron Tail - Tutor
  (20, 2000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Raticate - Uproar - Tutor
  (20, 2000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Raticate - Endeavor - Tutor
  (20, 2000, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Raticate - Covet - Tutor
  (20, 2000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Raticate - Shock Wave - Tutor
  (20, 2000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Raticate - Last Resort - Tutor
  (20, 2000, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Raticate - Zen Headbutt - Tutor
  (20, 2000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Raticate - Throat Chop - Tutor
  (20, 2000, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Raticate - Stomping Tantrum - Tutor
  (20, 2000, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Raticate - Scary Face - Evolution
  (20, 2000, 184, 16, NULL, 7, NULL, NULL, NULL, NULL, 63),

  -- Spearow - Growl - Level 1
  (21, 2100, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spearow - Peck - Level 1
  (21, 2100, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spearow - Leer - Level 4
  (21, 2100, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Spearow - Pursuit - Level 8
  (21, 2100, 228, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Spearow - Fury Attack - Level 11
  (21, 2100, 31, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Spearow - Aerial Ace - Level 15
  (21, 2100, 332, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Spearow - Mirror Move - Level 18
  (21, 2100, 119, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Spearow - Assurance - Level 22
  (21, 2100, 372, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Spearow - Agility - Level 25
  (21, 2100, 97, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Spearow - Focus Energy - Level 29
  (21, 2100, 116, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Spearow - Roost - Level 32
  (21, 2100, 355, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Spearow - Drill Peck - Level 36
  (21, 2100, 65, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Spearow - Work Up - TM01
  (21, 2100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 13),
  -- Spearow - Toxic - TM06
  (21, 2100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Spearow - Hidden Power - TM10
  (21, 2100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Spearow - Sunny Day - TM11
  (21, 2100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 16),
  -- Spearow - Protect - TM17
  (21, 2100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Spearow - Rain Dance - TM18
  (21, 2100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 18),
  -- Spearow - Roost - TM19
  (21, 2100, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 19),
  -- Spearow - Frustration - TM21
  (21, 2100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Spearow - Return - TM27
  (21, 2100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Spearow - Double Team - TM32
  (21, 2100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Spearow - Aerial Ace - TM40
  (21, 2100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 23),
  -- Spearow - Facade - TM42
  (21, 2100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 24),
  -- Spearow - Rest - TM44
  (21, 2100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 25),
  -- Spearow - Attract - TM45
  (21, 2100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 26),
  -- Spearow - Thief - TM46
  (21, 2100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 27),
  -- Spearow - Round - TM48
  (21, 2100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 28),
  -- Spearow - Echoed Voice - TM49
  (21, 2100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 29),
  -- Spearow - Steel Wing - TM51
  (21, 2100, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 30),
  -- Spearow - False Swipe - TM54
  (21, 2100, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 31),
  -- Spearow - Fly - TM76
  (21, 2100, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 32),
  -- Spearow - Swagger - TM87
  (21, 2100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Spearow - Sleep Talk - TM88
  (21, 2100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Spearow - U-turn - TM89
  (21, 2100, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 35),
  -- Spearow - Substitute - TM90
  (21, 2100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Spearow - Confide - TM100
  (21, 2100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Spearow - Razor Wind - Egg
  (21, 2100, 13, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Spearow - Whirlwind - Egg
  (21, 2100, 18, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Spearow - Quick Attack - Egg
  (21, 2100, 98, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Spearow - Sky Attack - Egg
  (21, 2100, 143, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Spearow - Tri Attack - Egg
  (21, 2100, 161, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Spearow - Scary Face - Egg
  (21, 2100, 184, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spearow - Feint Attack - Egg
  (21, 2100, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spearow - Steel Wing - Egg
  (21, 2100, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spearow - Uproar - Egg
  (21, 2100, 253, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spearow - Feather Dance - Egg
  (21, 2100, 297, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spearow - Astonish - Egg
  (21, 2100, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spearow - Sky Attack - Tutor
  (21, 2100, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Spearow - Snore - Tutor
  (21, 2100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Spearow - Uproar - Tutor
  (21, 2100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Spearow - Heat Wave - Tutor
  (21, 2100, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Spearow - Tailwind - Tutor
  (21, 2100, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Spearow - Defog - Tutor
  (21, 2100, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Spearow - Drill Run - Tutor
  (21, 2100, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Fearow - Leer - Level 1
  (22, 2200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fearow - Growl - Level 1
  (22, 2200, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fearow - Peck - Level 1
  (22, 2200, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fearow - Pursuit - Level 1
  (22, 2200, 228, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fearow - Pluck - Level 1
  (22, 2200, 365, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Fearow - Drill Run - Level 1
  (22, 2200, 529, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Fearow - Leer - Level 4
  (22, 2200, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Fearow - Pursuit - Level 8
  (22, 2200, 228, 16, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Fearow - Fury Attack - Level 11
  (22, 2200, 31, 16, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Fearow - Aerial Ace - Level 15
  (22, 2200, 332, 16, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Fearow - Mirror Move - Level 18
  (22, 2200, 119, 16, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Fearow - Assurance - Level 23
  (22, 2200, 372, 16, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Fearow - Agility - Level 27
  (22, 2200, 97, 16, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Fearow - Focus Energy - Level 32
  (22, 2200, 116, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Fearow - Roost - Level 36
  (22, 2200, 355, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Fearow - Drill Peck - Level 41
  (22, 2200, 65, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Fearow - Drill Run - Level 45
  (22, 2200, 529, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Fearow - Work Up - TM01
  (22, 2200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Fearow - Toxic - TM06
  (22, 2200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Fearow - Hidden Power - TM10
  (22, 2200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Fearow - Sunny Day - TM11
  (22, 2200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Fearow - Hyper Beam - TM15
  (22, 2200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Fearow - Protect - TM17
  (22, 2200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Fearow - Rain Dance - TM18
  (22, 2200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Fearow - Roost - TM19
  (22, 2200, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 25),
  -- Fearow - Frustration - TM21
  (22, 2200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Fearow - Return - TM27
  (22, 2200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Fearow - Double Team - TM32
  (22, 2200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Fearow - Aerial Ace - TM40
  (22, 2200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Fearow - Facade - TM42
  (22, 2200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Fearow - Rest - TM44
  (22, 2200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Fearow - Attract - TM45
  (22, 2200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Fearow - Thief - TM46
  (22, 2200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 33),
  -- Fearow - Round - TM48
  (22, 2200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Fearow - Echoed Voice - TM49
  (22, 2200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 35),
  -- Fearow - Steel Wing - TM51
  (22, 2200, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 36),
  -- Fearow - False Swipe - TM54
  (22, 2200, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 37),
  -- Fearow - Giga Impact - TM68
  (22, 2200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Fearow - Fly - TM76
  (22, 2200, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 39),
  -- Fearow - Swagger - TM87
  (22, 2200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Fearow - Sleep Talk - TM88
  (22, 2200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Fearow - U-turn - TM89
  (22, 2200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 42),
  -- Fearow - Substitute - TM90
  (22, 2200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Fearow - Confide - TM100
  (22, 2200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Fearow - Sky Attack - Tutor
  (22, 2200, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Fearow - Snore - Tutor
  (22, 2200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Fearow - Uproar - Tutor
  (22, 2200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Fearow - Heat Wave - Tutor
  (22, 2200, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Fearow - Tailwind - Tutor
  (22, 2200, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Fearow - Defog - Tutor
  (22, 2200, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Fearow - Drill Run - Tutor
  (22, 2200, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Fearow - Laser Focus - Tutor
  (22, 2200, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Fearow - Throat Chop - Tutor
  (22, 2200, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Ekans - Wrap - Level 1
  (23, 2300, 35, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ekans - Leer - Level 1
  (23, 2300, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ekans - Poison Sting - Level 4
  (23, 2300, 40, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Ekans - Bite - Level 9
  (23, 2300, 44, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ekans - Glare - Level 12
  (23, 2300, 137, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Ekans - Screech - Level 17
  (23, 2300, 103, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Ekans - Acid - Level 20
  (23, 2300, 51, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Ekans - Stockpile - Level 25
  (23, 2300, 254, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ekans - Spit Up - Level 25
  (23, 2300, 255, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Ekans - Swallow - Level 25
  (23, 2300, 256, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Ekans - Acid Spray - Level 28
  (23, 2300, 491, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Ekans - Mud Bomb - Level 33
  (23, 2300, 426, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Ekans - Gastro Acid - Level 36
  (23, 2300, 380, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Ekans - Belch - Level 38
  (23, 2300, 562, 16, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Ekans - Haze - Level 41
  (23, 2300, 114, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Ekans - Coil - Level 44
  (23, 2300, 489, 16, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Ekans - Gunk Shot - Level 49
  (23, 2300, 441, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Ekans - Toxic - TM06
  (23, 2300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Ekans - Venoshock - TM09
  (23, 2300, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 19),
  -- Ekans - Hidden Power - TM10
  (23, 2300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Ekans - Sunny Day - TM11
  (23, 2300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Ekans - Protect - TM17
  (23, 2300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Ekans - Rain Dance - TM18
  (23, 2300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Ekans - Frustration - TM21
  (23, 2300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Ekans - Earthquake - TM26
  (23, 2300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Ekans - Return - TM27
  (23, 2300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Ekans - Double Team - TM32
  (23, 2300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Ekans - Sludge Wave - TM34
  (23, 2300, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 28),
  -- Ekans - Sludge Bomb - TM36
  (23, 2300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 29),
  -- Ekans - Rock Tomb - TM39
  (23, 2300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 30),
  -- Ekans - Torment - TM41
  (23, 2300, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 31),
  -- Ekans - Facade - TM42
  (23, 2300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Ekans - Rest - TM44
  (23, 2300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Ekans - Attract - TM45
  (23, 2300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Ekans - Thief - TM46
  (23, 2300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Ekans - Round - TM48
  (23, 2300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Ekans - Brutal Swing - TM59
  (23, 2300, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 37),
  -- Ekans - Payback - TM66
  (23, 2300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 38),
  -- Ekans - Bulldoze - TM78
  (23, 2300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 39),
  -- Ekans - Rock Slide - TM80
  (23, 2300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 40),
  -- Ekans - Infestation - TM83
  (23, 2300, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 41),
  -- Ekans - Poison Jab - TM84
  (23, 2300, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 42),
  -- Ekans - Swagger - TM87
  (23, 2300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Ekans - Sleep Talk - TM88
  (23, 2300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Ekans - Substitute - TM90
  (23, 2300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Ekans - Dark Pulse - TM97
  (23, 2300, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 46),
  -- Ekans - Confide - TM100
  (23, 2300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Ekans - Slam - Egg
  (23, 2300, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ekans - Disable - Egg
  (23, 2300, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ekans - Spite - Egg
  (23, 2300, 180, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ekans - Scary Face - Egg
  (23, 2300, 184, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ekans - Pursuit - Egg
  (23, 2300, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ekans - Iron Tail - Egg
  (23, 2300, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ekans - Beat Up - Egg
  (23, 2300, 251, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ekans - Snatch - Egg
  (23, 2300, 289, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ekans - Poison Fang - Egg
  (23, 2300, 305, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ekans - Poison Tail - Egg
  (23, 2300, 342, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ekans - Sucker Punch - Egg
  (23, 2300, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ekans - Switcheroo - Egg
  (23, 2300, 415, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ekans - Bind - Tutor
  (23, 2300, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Ekans - Snore - Tutor
  (23, 2300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Ekans - Spite - Tutor
  (23, 2300, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Ekans - Giga Drain - Tutor
  (23, 2300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Ekans - Iron Tail - Tutor
  (23, 2300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Ekans - Snatch - Tutor
  (23, 2300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Ekans - Gastro Acid - Tutor
  (23, 2300, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Ekans - Aqua Tail - Tutor
  (23, 2300, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Ekans - Seed Bomb - Tutor
  (23, 2300, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Ekans - Gunk Shot - Tutor
  (23, 2300, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),

  -- Arbok - Wrap - Level 1
  (24, 2400, 35, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arbok - Poison Sting - Level 1
  (24, 2400, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arbok - Leer - Level 1
  (24, 2400, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arbok - Bite - Level 1
  (24, 2400, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arbok - Crunch - Level 1
  (24, 2400, 242, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arbok - Thunder Fang - Level 1
  (24, 2400, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Arbok - Ice Fang - Level 1
  (24, 2400, 423, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Arbok - Fire Fang - Level 1
  (24, 2400, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Arbok - Poison Sting - Level 4
  (24, 2400, 40, 16, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Arbok - Bite - Level 9
  (24, 2400, 44, 16, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Arbok - Glare - Level 12
  (24, 2400, 137, 16, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Arbok - Screech - Level 17
  (24, 2400, 103, 16, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Arbok - Acid - Level 20
  (24, 2400, 51, 16, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Arbok - Stockpile - Level 27
  (24, 2400, 254, 16, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Arbok - Spit Up - Level 27
  (24, 2400, 255, 16, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Arbok - Swallow - Level 27
  (24, 2400, 256, 16, NULL, 1, 27, NULL, NULL, NULL, 16),
  -- Arbok - Acid Spray - Level 32
  (24, 2400, 491, 16, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Arbok - Mud Bomb - Level 39
  (24, 2400, 426, 16, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Arbok - Gastro Acid - Level 44
  (24, 2400, 380, 16, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Arbok - Belch - Level 48
  (24, 2400, 562, 16, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Arbok - Haze - Level 51
  (24, 2400, 114, 16, NULL, 1, 51, NULL, NULL, NULL, 21),
  -- Arbok - Coil - Level 56
  (24, 2400, 489, 16, NULL, 1, 56, NULL, NULL, NULL, 22),
  -- Arbok - Gunk Shot - Level 63
  (24, 2400, 441, 16, NULL, 1, 63, NULL, NULL, NULL, 23),
  -- Arbok - Toxic - TM06
  (24, 2400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Arbok - Venoshock - TM09
  (24, 2400, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 25),
  -- Arbok - Hidden Power - TM10
  (24, 2400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Arbok - Sunny Day - TM11
  (24, 2400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Arbok - Hyper Beam - TM15
  (24, 2400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Arbok - Protect - TM17
  (24, 2400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Arbok - Rain Dance - TM18
  (24, 2400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Arbok - Frustration - TM21
  (24, 2400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Arbok - Earthquake - TM26
  (24, 2400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Arbok - Return - TM27
  (24, 2400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Arbok - Double Team - TM32
  (24, 2400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Arbok - Sludge Wave - TM34
  (24, 2400, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 35),
  -- Arbok - Sludge Bomb - TM36
  (24, 2400, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 36),
  -- Arbok - Rock Tomb - TM39
  (24, 2400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Arbok - Torment - TM41
  (24, 2400, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 38),
  -- Arbok - Facade - TM42
  (24, 2400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Arbok - Rest - TM44
  (24, 2400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Arbok - Attract - TM45
  (24, 2400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Arbok - Thief - TM46
  (24, 2400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 42),
  -- Arbok - Round - TM48
  (24, 2400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Arbok - Brutal Swing - TM59
  (24, 2400, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 44),
  -- Arbok - Payback - TM66
  (24, 2400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Arbok - Giga Impact - TM68
  (24, 2400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Arbok - Bulldoze - TM78
  (24, 2400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 47),
  -- Arbok - Rock Slide - TM80
  (24, 2400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 48),
  -- Arbok - Dragon Tail - TM82
  (24, 2400, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 49),
  -- Arbok - Infestation - TM83
  (24, 2400, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 50),
  -- Arbok - Poison Jab - TM84
  (24, 2400, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 51),
  -- Arbok - Swagger - TM87
  (24, 2400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Arbok - Sleep Talk - TM88
  (24, 2400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Arbok - Substitute - TM90
  (24, 2400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 54),
  -- Arbok - Dark Pulse - TM97
  (24, 2400, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 55),
  -- Arbok - Confide - TM100
  (24, 2400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Arbok - Bind - Tutor
  (24, 2400, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Arbok - Snore - Tutor
  (24, 2400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Arbok - Spite - Tutor
  (24, 2400, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Arbok - Giga Drain - Tutor
  (24, 2400, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Arbok - Iron Tail - Tutor
  (24, 2400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Arbok - Snatch - Tutor
  (24, 2400, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Arbok - Gastro Acid - Tutor
  (24, 2400, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Arbok - Aqua Tail - Tutor
  (24, 2400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Arbok - Seed Bomb - Tutor
  (24, 2400, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Arbok - Gunk Shot - Tutor
  (24, 2400, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Arbok - Throat Chop - Tutor
  (24, 2400, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Arbok - Stomping Tantrum - Tutor
  (24, 2400, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Arbok - Crunch - Evolution
  (24, 2400, 242, 16, NULL, 7, NULL, NULL, NULL, NULL, 69),

  -- Pikachu - Tail Whip - Level 1
  (25, 2500, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pikachu - Thunder Shock - Level 1
  (25, 2500, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pikachu - Growl - Level 5
  (25, 2500, 45, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pikachu - Play Nice - Level 7
  (25, 2500, 589, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Pikachu - Quick Attack - Level 10
  (25, 2500, 98, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Pikachu - Electro Ball - Level 13
  (25, 2500, 486, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Pikachu - Thunder Wave - Level 18
  (25, 2500, 86, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Pikachu - Feint - Level 21
  (25, 2500, 364, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Pikachu - Double Team - Level 23
  (25, 2500, 104, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pikachu - Spark - Level 26
  (25, 2500, 209, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Pikachu - Nuzzle - Level 29
  (25, 2500, 609, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Pikachu - Discharge - Level 34
  (25, 2500, 435, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Pikachu - Slam - Level 37
  (25, 2500, 21, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Pikachu - Thunderbolt - Level 42
  (25, 2500, 85, 16, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Pikachu - Agility - Level 45
  (25, 2500, 97, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Pikachu - Wild Charge - Level 50
  (25, 2500, 528, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Pikachu - Light Screen - Level 53
  (25, 2500, 113, 16, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Pikachu - Thunder - Level 58
  (25, 2500, 87, 16, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Pikachu - Toxic - TM06
  (25, 2500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Pikachu - Hidden Power - TM10
  (25, 2500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Pikachu - Light Screen - TM16
  (25, 2500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 21),
  -- Pikachu - Protect - TM17
  (25, 2500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Pikachu - Rain Dance - TM18
  (25, 2500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Pikachu - Frustration - TM21
  (25, 2500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Pikachu - Thunderbolt - TM24
  (25, 2500, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Pikachu - Thunder - TM25
  (25, 2500, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Pikachu - Return - TM27
  (25, 2500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Pikachu - Brick Break - TM31
  (25, 2500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Pikachu - Double Team - TM32
  (25, 2500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Pikachu - Facade - TM42
  (25, 2500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Pikachu - Rest - TM44
  (25, 2500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Pikachu - Attract - TM45
  (25, 2500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Pikachu - Round - TM48
  (25, 2500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Pikachu - Echoed Voice - TM49
  (25, 2500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 34),
  -- Pikachu - Fling - TM56
  (25, 2500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Pikachu - Charge Beam - TM57
  (25, 2500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 36),
  -- Pikachu - Volt Switch - TM72
  (25, 2500, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 37),
  -- Pikachu - Thunder Wave - TM73
  (25, 2500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 38),
  -- Pikachu - Grass Knot - TM86
  (25, 2500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 39),
  -- Pikachu - Swagger - TM87
  (25, 2500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Pikachu - Sleep Talk - TM88
  (25, 2500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Pikachu - Substitute - TM90
  (25, 2500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Pikachu - Wild Charge - TM93
  (25, 2500, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 43),
  -- Pikachu - Confide - TM100
  (25, 2500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Pikachu - Thunder Punch - Tutor
  (25, 2500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Pikachu - Snore - Tutor
  (25, 2500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Pikachu - Iron Tail - Tutor
  (25, 2500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Pikachu - Focus Punch - Tutor
  (25, 2500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Pikachu - Helping Hand - Tutor
  (25, 2500, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Pikachu - Knock Off - Tutor
  (25, 2500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Pikachu - Signal Beam - Tutor
  (25, 2500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Pikachu - Covet - Tutor
  (25, 2500, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Pikachu - Volt Tackle - Tutor
  (25, 2500, 344, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Pikachu - Shock Wave - Tutor
  (25, 2500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Pikachu - Magnet Rise - Tutor
  (25, 2500, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Pikachu - Electroweb - Tutor
  (25, 2500, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Pikachu - Laser Focus - Tutor
  (25, 2500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),

  -- Raichu - Tail Whip - Level 1
  (26, 2600, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raichu - Thunder Shock - Level 1
  (26, 2600, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raichu - Thunderbolt - Level 1
  (26, 2600, 85, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raichu - Quick Attack - Level 1
  (26, 2600, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raichu - Toxic - TM06
  (26, 2600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 5),
  -- Raichu - Hidden Power - TM10
  (26, 2600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 6),
  -- Raichu - Hyper Beam - TM15
  (26, 2600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 7),
  -- Raichu - Light Screen - TM16
  (26, 2600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 8),
  -- Raichu - Protect - TM17
  (26, 2600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 9),
  -- Raichu - Rain Dance - TM18
  (26, 2600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 10),
  -- Raichu - Frustration - TM21
  (26, 2600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 11),
  -- Raichu - Thunderbolt - TM24
  (26, 2600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 12),
  -- Raichu - Thunder - TM25
  (26, 2600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 13),
  -- Raichu - Return - TM27
  (26, 2600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 14),
  -- Raichu - Brick Break - TM31
  (26, 2600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 15),
  -- Raichu - Double Team - TM32
  (26, 2600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 16),
  -- Raichu - Facade - TM42
  (26, 2600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 17),
  -- Raichu - Rest - TM44
  (26, 2600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 18),
  -- Raichu - Attract - TM45
  (26, 2600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 19),
  -- Raichu - Thief - TM46
  (26, 2600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 20),
  -- Raichu - Round - TM48
  (26, 2600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 21),
  -- Raichu - Echoed Voice - TM49
  (26, 2600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 22),
  -- Raichu - Focus Blast - TM52
  (26, 2600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 23),
  -- Raichu - Fling - TM56
  (26, 2600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 24),
  -- Raichu - Charge Beam - TM57
  (26, 2600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 25),
  -- Raichu - Giga Impact - TM68
  (26, 2600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 26),
  -- Raichu - Volt Switch - TM72
  (26, 2600, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 27),
  -- Raichu - Thunder Wave - TM73
  (26, 2600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 28),
  -- Raichu - Grass Knot - TM86
  (26, 2600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 29),
  -- Raichu - Swagger - TM87
  (26, 2600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 30),
  -- Raichu - Sleep Talk - TM88
  (26, 2600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 31),
  -- Raichu - Substitute - TM90
  (26, 2600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 32),
  -- Raichu - Wild Charge - TM93
  (26, 2600, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 33),
  -- Raichu - Confide - TM100
  (26, 2600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 34),
  -- Raichu - Thunder Punch - Tutor
  (26, 2600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 35),
  -- Raichu - Snore - Tutor
  (26, 2600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 36),
  -- Raichu - Iron Tail - Tutor
  (26, 2600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 37),
  -- Raichu - Focus Punch - Tutor
  (26, 2600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Raichu - Helping Hand - Tutor
  (26, 2600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Raichu - Knock Off - Tutor
  (26, 2600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Raichu - Signal Beam - Tutor
  (26, 2600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Raichu - Covet - Tutor
  (26, 2600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Raichu - Shock Wave - Tutor
  (26, 2600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Raichu - Magnet Rise - Tutor
  (26, 2600, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Raichu - Electroweb - Tutor
  (26, 2600, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Raichu - Laser Focus - Tutor
  (26, 2600, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),

  -- Sandshrew - Scratch - Level 1
  (27, 2700, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandshrew - Defense Curl - Level 1
  (27, 2700, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandshrew - Sand Attack - Level 3
  (27, 2700, 28, 16, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Sandshrew - Poison Sting - Level 5
  (27, 2700, 40, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Sandshrew - Rollout - Level 7
  (27, 2700, 205, 16, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Sandshrew - Rapid Spin - Level 9
  (27, 2700, 229, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Sandshrew - Fury Cutter - Level 11
  (27, 2700, 210, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Sandshrew - Magnitude - Level 14
  (27, 2700, 222, 16, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Sandshrew - Swift - Level 17
  (27, 2700, 129, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Sandshrew - Fury Swipes - Level 20
  (27, 2700, 154, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Sandshrew - Sand Tomb - Level 23
  (27, 2700, 328, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Sandshrew - Slash - Level 26
  (27, 2700, 163, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Sandshrew - Dig - Level 30
  (27, 2700, 91, 16, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Sandshrew - Gyro Ball - Level 34
  (27, 2700, 360, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Sandshrew - Swords Dance - Level 38
  (27, 2700, 14, 16, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Sandshrew - Sandstorm - Level 42
  (27, 2700, 201, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Sandshrew - Earthquake - Level 46
  (27, 2700, 89, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Sandshrew - Toxic - TM06
  (27, 2700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Sandshrew - Hidden Power - TM10
  (27, 2700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Sandshrew - Sunny Day - TM11
  (27, 2700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Sandshrew - Protect - TM17
  (27, 2700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Sandshrew - Safeguard - TM20
  (27, 2700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 22),
  -- Sandshrew - Frustration - TM21
  (27, 2700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Sandshrew - Earthquake - TM26
  (27, 2700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 24),
  -- Sandshrew - Return - TM27
  (27, 2700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Sandshrew - Brick Break - TM31
  (27, 2700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 26),
  -- Sandshrew - Double Team - TM32
  (27, 2700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Sandshrew - Sandstorm - TM37
  (27, 2700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 28),
  -- Sandshrew - Rock Tomb - TM39
  (27, 2700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Sandshrew - Aerial Ace - TM40
  (27, 2700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Sandshrew - Facade - TM42
  (27, 2700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Sandshrew - Rest - TM44
  (27, 2700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Sandshrew - Attract - TM45
  (27, 2700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Sandshrew - Thief - TM46
  (27, 2700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Sandshrew - Round - TM48
  (27, 2700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Sandshrew - Fling - TM56
  (27, 2700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 36),
  -- Sandshrew - Shadow Claw - TM65
  (27, 2700, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 37),
  -- Sandshrew - Gyro Ball - TM74
  (27, 2700, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 38),
  -- Sandshrew - Swords Dance - TM75
  (27, 2700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 39),
  -- Sandshrew - Bulldoze - TM78
  (27, 2700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 40),
  -- Sandshrew - Rock Slide - TM80
  (27, 2700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 41),
  -- Sandshrew - X-Scissor - TM81
  (27, 2700, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 42),
  -- Sandshrew - Poison Jab - TM84
  (27, 2700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 43),
  -- Sandshrew - Swagger - TM87
  (27, 2700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Sandshrew - Sleep Talk - TM88
  (27, 2700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Sandshrew - Substitute - TM90
  (27, 2700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Sandshrew - Confide - TM100
  (27, 2700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Sandshrew - Counter - Egg
  (27, 2700, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sandshrew - Flail - Egg
  (27, 2700, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sandshrew - Endure - Egg
  (27, 2700, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sandshrew - Rapid Spin - Egg
  (27, 2700, 229, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sandshrew - Metal Claw - Egg
  (27, 2700, 232, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sandshrew - Crush Claw - Egg
  (27, 2700, 306, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sandshrew - Mud Shot - Egg
  (27, 2700, 341, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sandshrew - Night Slash - Egg
  (27, 2700, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sandshrew - Rock Climb - Egg
  (27, 2700, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sandshrew - Hone Claws - Egg
  (27, 2700, 468, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sandshrew - Chip Away - Egg
  (27, 2700, 498, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sandshrew - Rototiller - Egg
  (27, 2700, 563, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sandshrew - Super Fang - Tutor
  (27, 2700, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Sandshrew - Snore - Tutor
  (27, 2700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Sandshrew - Iron Tail - Tutor
  (27, 2700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Sandshrew - Focus Punch - Tutor
  (27, 2700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Sandshrew - Knock Off - Tutor
  (27, 2700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Sandshrew - Covet - Tutor
  (27, 2700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Sandshrew - Earth Power - Tutor
  (27, 2700, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Sandshrew - Stealth Rock - Tutor
  (27, 2700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Sandshrew - Stomping Tantrum - Tutor
  (27, 2700, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Sandslash - Scratch - Level 1
  (28, 2800, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandslash - Sand Attack - Level 1
  (28, 2800, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandslash - Poison Sting - Level 1
  (28, 2800, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandslash - Defense Curl - Level 1
  (28, 2800, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sandslash - Crush Claw - Level 1
  (28, 2800, 306, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sandslash - Sand Attack - Level 3
  (28, 2800, 28, 16, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Sandslash - Poison Sting - Level 5
  (28, 2800, 40, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Sandslash - Rollout - Level 7
  (28, 2800, 205, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Sandslash - Rapid Spin - Level 9
  (28, 2800, 229, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Sandslash - Fury Cutter - Level 11
  (28, 2800, 210, 16, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Sandslash - Magnitude - Level 14
  (28, 2800, 222, 16, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Sandslash - Swift - Level 17
  (28, 2800, 129, 16, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Sandslash - Fury Swipes - Level 20
  (28, 2800, 154, 16, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Sandslash - Sand Tomb - Level 24
  (28, 2800, 328, 16, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Sandslash - Slash - Level 28
  (28, 2800, 163, 16, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Sandslash - Dig - Level 33
  (28, 2800, 91, 16, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Sandslash - Gyro Ball - Level 38
  (28, 2800, 360, 16, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Sandslash - Swords Dance - Level 43
  (28, 2800, 14, 16, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Sandslash - Sandstorm - Level 48
  (28, 2800, 201, 16, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Sandslash - Earthquake - Level 53
  (28, 2800, 89, 16, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Sandslash - Toxic - TM06
  (28, 2800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Sandslash - Hidden Power - TM10
  (28, 2800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Sandslash - Sunny Day - TM11
  (28, 2800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Sandslash - Hyper Beam - TM15
  (28, 2800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Sandslash - Protect - TM17
  (28, 2800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Sandslash - Safeguard - TM20
  (28, 2800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Sandslash - Frustration - TM21
  (28, 2800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Sandslash - Earthquake - TM26
  (28, 2800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 28),
  -- Sandslash - Return - TM27
  (28, 2800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Sandslash - Brick Break - TM31
  (28, 2800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Sandslash - Double Team - TM32
  (28, 2800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Sandslash - Sandstorm - TM37
  (28, 2800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 32),
  -- Sandslash - Rock Tomb - TM39
  (28, 2800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Sandslash - Aerial Ace - TM40
  (28, 2800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 34),
  -- Sandslash - Facade - TM42
  (28, 2800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Sandslash - Rest - TM44
  (28, 2800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Sandslash - Attract - TM45
  (28, 2800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Sandslash - Thief - TM46
  (28, 2800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 38),
  -- Sandslash - Round - TM48
  (28, 2800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Sandslash - Focus Blast - TM52
  (28, 2800, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 40),
  -- Sandslash - Fling - TM56
  (28, 2800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Sandslash - Shadow Claw - TM65
  (28, 2800, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 42),
  -- Sandslash - Giga Impact - TM68
  (28, 2800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Sandslash - Stone Edge - TM71
  (28, 2800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 44),
  -- Sandslash - Gyro Ball - TM74
  (28, 2800, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 45),
  -- Sandslash - Swords Dance - TM75
  (28, 2800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 46),
  -- Sandslash - Bulldoze - TM78
  (28, 2800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 47),
  -- Sandslash - Rock Slide - TM80
  (28, 2800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 48),
  -- Sandslash - X-Scissor - TM81
  (28, 2800, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 49),
  -- Sandslash - Poison Jab - TM84
  (28, 2800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 50),
  -- Sandslash - Swagger - TM87
  (28, 2800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Sandslash - Sleep Talk - TM88
  (28, 2800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Sandslash - Substitute - TM90
  (28, 2800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Sandslash - Confide - TM100
  (28, 2800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Sandslash - Super Fang - Tutor
  (28, 2800, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Sandslash - Snore - Tutor
  (28, 2800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Sandslash - Iron Tail - Tutor
  (28, 2800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Sandslash - Focus Punch - Tutor
  (28, 2800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Sandslash - Knock Off - Tutor
  (28, 2800, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Sandslash - Covet - Tutor
  (28, 2800, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Sandslash - Earth Power - Tutor
  (28, 2800, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Sandslash - Stealth Rock - Tutor
  (28, 2800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Sandslash - Stomping Tantrum - Tutor
  (28, 2800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Sandslash - Crush Claw - Evolution
  (28, 2800, 306, 16, NULL, 7, NULL, NULL, NULL, NULL, 64),

  -- Nidoran F - Scratch - Level 1
  (29, 2900, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran F - Growl - Level 1
  (29, 2900, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran F - Tail Whip - Level 7
  (29, 2900, 39, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nidoran F - Double Kick - Level 9
  (29, 2900, 24, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nidoran F - Poison Sting - Level 13
  (29, 2900, 40, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nidoran F - Fury Swipes - Level 19
  (29, 2900, 154, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Nidoran F - Bite - Level 21
  (29, 2900, 44, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Nidoran F - Helping Hand - Level 25
  (29, 2900, 270, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Nidoran F - Toxic Spikes - Level 31
  (29, 2900, 390, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Nidoran F - Flatter - Level 33
  (29, 2900, 260, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Nidoran F - Crunch - Level 37
  (29, 2900, 242, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Nidoran F - Captivate - Level 43
  (29, 2900, 445, 16, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Nidoran F - Poison Fang - Level 45
  (29, 2900, 305, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Nidoran F - Toxic - TM06
  (29, 2900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Nidoran F - Venoshock - TM09
  (29, 2900, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 15),
  -- Nidoran F - Hidden Power - TM10
  (29, 2900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Nidoran F - Sunny Day - TM11
  (29, 2900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Nidoran F - Ice Beam - TM13
  (29, 2900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 18),
  -- Nidoran F - Blizzard - TM14
  (29, 2900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 19),
  -- Nidoran F - Protect - TM17
  (29, 2900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Nidoran F - Rain Dance - TM18
  (29, 2900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Nidoran F - Frustration - TM21
  (29, 2900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Nidoran F - Thunderbolt - TM24
  (29, 2900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Nidoran F - Thunder - TM25
  (29, 2900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 24),
  -- Nidoran F - Return - TM27
  (29, 2900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Nidoran F - Double Team - TM32
  (29, 2900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Nidoran F - Sludge Bomb - TM36
  (29, 2900, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 27),
  -- Nidoran F - Aerial Ace - TM40
  (29, 2900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Nidoran F - Facade - TM42
  (29, 2900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Nidoran F - Rest - TM44
  (29, 2900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Nidoran F - Attract - TM45
  (29, 2900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Nidoran F - Thief - TM46
  (29, 2900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Nidoran F - Round - TM48
  (29, 2900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Nidoran F - Echoed Voice - TM49
  (29, 2900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 34),
  -- Nidoran F - Shadow Claw - TM65
  (29, 2900, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 35),
  -- Nidoran F - Poison Jab - TM84
  (29, 2900, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 36),
  -- Nidoran F - Swagger - TM87
  (29, 2900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Nidoran F - Sleep Talk - TM88
  (29, 2900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Nidoran F - Substitute - TM90
  (29, 2900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Nidoran F - Confide - TM100
  (29, 2900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Nidoran F - Take Down - Egg
  (29, 2900, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Nidoran F - Supersonic - Egg
  (29, 2900, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nidoran F - Disable - Egg
  (29, 2900, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Nidoran F - Counter - Egg
  (29, 2900, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Nidoran F - Focus Energy - Egg
  (29, 2900, 116, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Nidoran F - Skull Bash - Egg
  (29, 2900, 130, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Nidoran F - Endure - Egg
  (29, 2900, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nidoran F - Charm - Egg
  (29, 2900, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidoran F - Pursuit - Egg
  (29, 2900, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidoran F - Iron Tail - Egg
  (29, 2900, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidoran F - Beat Up - Egg
  (29, 2900, 251, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidoran F - Poison Tail - Egg
  (29, 2900, 342, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nidoran F - Chip Away - Egg
  (29, 2900, 498, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Nidoran F - Venom Drench - Egg
  (29, 2900, 599, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Nidoran F - Super Fang - Tutor
  (29, 2900, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Nidoran F - Snore - Tutor
  (29, 2900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Nidoran F - Iron Tail - Tutor
  (29, 2900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Nidoran F - Helping Hand - Tutor
  (29, 2900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Nidoran F - Shock Wave - Tutor
  (29, 2900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Nidoran F - Water Pulse - Tutor
  (29, 2900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Nidorina - Scratch - Level 1
  (30, 3000, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorina - Growl - Level 1
  (30, 3000, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorina - Tail Whip - Level 7
  (30, 3000, 39, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nidorina - Double Kick - Level 9
  (30, 3000, 24, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nidorina - Poison Sting - Level 13
  (30, 3000, 40, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nidorina - Fury Swipes - Level 20
  (30, 3000, 154, 16, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Nidorina - Bite - Level 23
  (30, 3000, 44, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Nidorina - Helping Hand - Level 28
  (30, 3000, 270, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Nidorina - Toxic Spikes - Level 35
  (30, 3000, 390, 16, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Nidorina - Flatter - Level 38
  (30, 3000, 260, 16, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Nidorina - Crunch - Level 43
  (30, 3000, 242, 16, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Nidorina - Captivate - Level 50
  (30, 3000, 445, 16, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Nidorina - Poison Fang - Level 58
  (30, 3000, 305, 16, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Nidorina - Toxic - TM06
  (30, 3000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Nidorina - Venoshock - TM09
  (30, 3000, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 15),
  -- Nidorina - Hidden Power - TM10
  (30, 3000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Nidorina - Sunny Day - TM11
  (30, 3000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Nidorina - Ice Beam - TM13
  (30, 3000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 18),
  -- Nidorina - Blizzard - TM14
  (30, 3000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 19),
  -- Nidorina - Protect - TM17
  (30, 3000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Nidorina - Rain Dance - TM18
  (30, 3000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Nidorina - Frustration - TM21
  (30, 3000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Nidorina - Thunderbolt - TM24
  (30, 3000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Nidorina - Thunder - TM25
  (30, 3000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 24),
  -- Nidorina - Return - TM27
  (30, 3000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Nidorina - Double Team - TM32
  (30, 3000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Nidorina - Sludge Bomb - TM36
  (30, 3000, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 27),
  -- Nidorina - Aerial Ace - TM40
  (30, 3000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Nidorina - Facade - TM42
  (30, 3000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Nidorina - Rest - TM44
  (30, 3000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Nidorina - Attract - TM45
  (30, 3000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Nidorina - Thief - TM46
  (30, 3000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Nidorina - Round - TM48
  (30, 3000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Nidorina - Echoed Voice - TM49
  (30, 3000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 34),
  -- Nidorina - Shadow Claw - TM65
  (30, 3000, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 35),
  -- Nidorina - Poison Jab - TM84
  (30, 3000, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 36),
  -- Nidorina - Swagger - TM87
  (30, 3000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Nidorina - Sleep Talk - TM88
  (30, 3000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Nidorina - Substitute - TM90
  (30, 3000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Nidorina - Confide - TM100
  (30, 3000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Nidorina - Super Fang - Tutor
  (30, 3000, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Nidorina - Snore - Tutor
  (30, 3000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Nidorina - Iron Tail - Tutor
  (30, 3000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Nidorina - Helping Hand - Tutor
  (30, 3000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Nidorina - Shock Wave - Tutor
  (30, 3000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Nidorina - Water Pulse - Tutor
  (30, 3000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Nidorina - Stomping Tantrum - Tutor
  (30, 3000, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),

  -- Nidoqueen - Scratch - Level 1
  (31, 3100, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoqueen - Double Kick - Level 1
  (31, 3100, 24, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoqueen - Tail Whip - Level 1
  (31, 3100, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoqueen - Poison Sting - Level 1
  (31, 3100, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoqueen - Superpower - Level 1
  (31, 3100, 276, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Nidoqueen - Chip Away - Level 23
  (31, 3100, 498, 16, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Nidoqueen - Body Slam - Level 35
  (31, 3100, 34, 16, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Nidoqueen - Earth Power - Level 43
  (31, 3100, 414, 16, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Nidoqueen - Superpower - Level 58
  (31, 3100, 276, 16, NULL, 1, 58, NULL, NULL, NULL, 9),
  -- Nidoqueen - Roar - TM05
  (31, 3100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 10),
  -- Nidoqueen - Toxic - TM06
  (31, 3100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 11),
  -- Nidoqueen - Venoshock - TM09
  (31, 3100, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 12),
  -- Nidoqueen - Hidden Power - TM10
  (31, 3100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 13),
  -- Nidoqueen - Sunny Day - TM11
  (31, 3100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 14),
  -- Nidoqueen - Taunt - TM12
  (31, 3100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 15),
  -- Nidoqueen - Ice Beam - TM13
  (31, 3100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 16),
  -- Nidoqueen - Blizzard - TM14
  (31, 3100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 17),
  -- Nidoqueen - Hyper Beam - TM15
  (31, 3100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 18),
  -- Nidoqueen - Protect - TM17
  (31, 3100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Nidoqueen - Rain Dance - TM18
  (31, 3100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Nidoqueen - Frustration - TM21
  (31, 3100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Nidoqueen - Smack Down - TM23
  (31, 3100, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 22),
  -- Nidoqueen - Thunderbolt - TM24
  (31, 3100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Nidoqueen - Thunder - TM25
  (31, 3100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 24),
  -- Nidoqueen - Earthquake - TM26
  (31, 3100, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Nidoqueen - Return - TM27
  (31, 3100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Nidoqueen - Shadow Ball - TM30
  (31, 3100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Nidoqueen - Brick Break - TM31
  (31, 3100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Nidoqueen - Double Team - TM32
  (31, 3100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Nidoqueen - Sludge Wave - TM34
  (31, 3100, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 30),
  -- Nidoqueen - Flamethrower - TM35
  (31, 3100, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 31),
  -- Nidoqueen - Sludge Bomb - TM36
  (31, 3100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 32),
  -- Nidoqueen - Sandstorm - TM37
  (31, 3100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 33),
  -- Nidoqueen - Fire Blast - TM38
  (31, 3100, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 34),
  -- Nidoqueen - Rock Tomb - TM39
  (31, 3100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Nidoqueen - Aerial Ace - TM40
  (31, 3100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Nidoqueen - Torment - TM41
  (31, 3100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Nidoqueen - Facade - TM42
  (31, 3100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Nidoqueen - Rest - TM44
  (31, 3100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Nidoqueen - Attract - TM45
  (31, 3100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Nidoqueen - Thief - TM46
  (31, 3100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Nidoqueen - Round - TM48
  (31, 3100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Nidoqueen - Echoed Voice - TM49
  (31, 3100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 43),
  -- Nidoqueen - Focus Blast - TM52
  (31, 3100, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 44),
  -- Nidoqueen - Fling - TM56
  (31, 3100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 45),
  -- Nidoqueen - Quash - TM60
  (31, 3100, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 46),
  -- Nidoqueen - Shadow Claw - TM65
  (31, 3100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 47),
  -- Nidoqueen - Giga Impact - TM68
  (31, 3100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 48),
  -- Nidoqueen - Stone Edge - TM71
  (31, 3100, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 49),
  -- Nidoqueen - Bulldoze - TM78
  (31, 3100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 50),
  -- Nidoqueen - Rock Slide - TM80
  (31, 3100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 51),
  -- Nidoqueen - Dragon Tail - TM82
  (31, 3100, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 52),
  -- Nidoqueen - Poison Jab - TM84
  (31, 3100, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 53),
  -- Nidoqueen - Swagger - TM87
  (31, 3100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Nidoqueen - Sleep Talk - TM88
  (31, 3100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Nidoqueen - Substitute - TM90
  (31, 3100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Nidoqueen - Surf - TM94
  (31, 3100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 57),
  -- Nidoqueen - Confide - TM100
  (31, 3100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Nidoqueen - Fire Punch - Tutor
  (31, 3100, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Nidoqueen - Ice Punch - Tutor
  (31, 3100, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Nidoqueen - Thunder Punch - Tutor
  (31, 3100, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Nidoqueen - Super Fang - Tutor
  (31, 3100, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Nidoqueen - Snore - Tutor
  (31, 3100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Nidoqueen - Icy Wind - Tutor
  (31, 3100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Nidoqueen - Outrage - Tutor
  (31, 3100, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Nidoqueen - Iron Tail - Tutor
  (31, 3100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Nidoqueen - Uproar - Tutor
  (31, 3100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Nidoqueen - Focus Punch - Tutor
  (31, 3100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Nidoqueen - Helping Hand - Tutor
  (31, 3100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Nidoqueen - Superpower - Tutor
  (31, 3100, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Nidoqueen - Shock Wave - Tutor
  (31, 3100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Nidoqueen - Water Pulse - Tutor
  (31, 3100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Nidoqueen - Aqua Tail - Tutor
  (31, 3100, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Nidoqueen - Dragon Pulse - Tutor
  (31, 3100, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Nidoqueen - Earth Power - Tutor
  (31, 3100, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Nidoqueen - Stealth Rock - Tutor
  (31, 3100, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Nidoqueen - Drill Run - Tutor
  (31, 3100, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Nidoqueen - Throat Chop - Tutor
  (31, 3100, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Nidoqueen - Stomping Tantrum - Tutor
  (31, 3100, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),

  -- Nidoran M - Leer - Level 1
  (32, 3200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoran M - Peck - Level 1
  (32, 3200, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoran M - Focus Energy - Level 7
  (32, 3200, 116, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nidoran M - Double Kick - Level 9
  (32, 3200, 24, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nidoran M - Poison Sting - Level 13
  (32, 3200, 40, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nidoran M - Fury Attack - Level 19
  (32, 3200, 31, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Nidoran M - Horn Attack - Level 21
  (32, 3200, 30, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Nidoran M - Helping Hand - Level 25
  (32, 3200, 270, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Nidoran M - Toxic Spikes - Level 31
  (32, 3200, 390, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Nidoran M - Flatter - Level 33
  (32, 3200, 260, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Nidoran M - Poison Jab - Level 37
  (32, 3200, 398, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Nidoran M - Captivate - Level 43
  (32, 3200, 445, 16, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Nidoran M - Horn Drill - Level 45
  (32, 3200, 32, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Nidoran M - Toxic - TM06
  (32, 3200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Nidoran M - Venoshock - TM09
  (32, 3200, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 15),
  -- Nidoran M - Hidden Power - TM10
  (32, 3200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Nidoran M - Sunny Day - TM11
  (32, 3200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Nidoran M - Ice Beam - TM13
  (32, 3200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 18),
  -- Nidoran M - Blizzard - TM14
  (32, 3200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 19),
  -- Nidoran M - Protect - TM17
  (32, 3200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Nidoran M - Rain Dance - TM18
  (32, 3200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Nidoran M - Frustration - TM21
  (32, 3200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Nidoran M - Thunderbolt - TM24
  (32, 3200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Nidoran M - Thunder - TM25
  (32, 3200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 24),
  -- Nidoran M - Return - TM27
  (32, 3200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Nidoran M - Double Team - TM32
  (32, 3200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Nidoran M - Sludge Bomb - TM36
  (32, 3200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 27),
  -- Nidoran M - Facade - TM42
  (32, 3200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Nidoran M - Rest - TM44
  (32, 3200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Nidoran M - Attract - TM45
  (32, 3200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Nidoran M - Thief - TM46
  (32, 3200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 31),
  -- Nidoran M - Round - TM48
  (32, 3200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Nidoran M - Echoed Voice - TM49
  (32, 3200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 33),
  -- Nidoran M - Shadow Claw - TM65
  (32, 3200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 34),
  -- Nidoran M - Smart Strike - TM67
  (32, 3200, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 35),
  -- Nidoran M - Poison Jab - TM84
  (32, 3200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 36),
  -- Nidoran M - Swagger - TM87
  (32, 3200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Nidoran M - Sleep Talk - TM88
  (32, 3200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Nidoran M - Substitute - TM90
  (32, 3200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Nidoran M - Confide - TM100
  (32, 3200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Nidoran M - Take Down - Egg
  (32, 3200, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Nidoran M - Supersonic - Egg
  (32, 3200, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nidoran M - Disable - Egg
  (32, 3200, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Nidoran M - Counter - Egg
  (32, 3200, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Nidoran M - Confusion - Egg
  (32, 3200, 93, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Nidoran M - Amnesia - Egg
  (32, 3200, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Nidoran M - Endure - Egg
  (32, 3200, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nidoran M - Iron Tail - Egg
  (32, 3200, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidoran M - Beat Up - Egg
  (32, 3200, 251, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidoran M - Poison Tail - Egg
  (32, 3200, 342, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidoran M - Sucker Punch - Egg
  (32, 3200, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidoran M - Head Smash - Egg
  (32, 3200, 457, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nidoran M - Chip Away - Egg
  (32, 3200, 498, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Nidoran M - Venom Drench - Egg
  (32, 3200, 599, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Nidoran M - Super Fang - Tutor
  (32, 3200, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Nidoran M - Snore - Tutor
  (32, 3200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Nidoran M - Iron Tail - Tutor
  (32, 3200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Nidoran M - Helping Hand - Tutor
  (32, 3200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Nidoran M - Shock Wave - Tutor
  (32, 3200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Nidoran M - Water Pulse - Tutor
  (32, 3200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Nidoran M - Drill Run - Tutor
  (32, 3200, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Nidorino - Leer - Level 1
  (33, 3300, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidorino - Peck - Level 1
  (33, 3300, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidorino - Focus Energy - Level 7
  (33, 3300, 116, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nidorino - Double Kick - Level 9
  (33, 3300, 24, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nidorino - Poison Sting - Level 13
  (33, 3300, 40, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nidorino - Fury Attack - Level 20
  (33, 3300, 31, 16, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Nidorino - Horn Attack - Level 23
  (33, 3300, 30, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Nidorino - Helping Hand - Level 28
  (33, 3300, 270, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Nidorino - Toxic Spikes - Level 35
  (33, 3300, 390, 16, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Nidorino - Flatter - Level 38
  (33, 3300, 260, 16, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Nidorino - Poison Jab - Level 43
  (33, 3300, 398, 16, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Nidorino - Captivate - Level 50
  (33, 3300, 445, 16, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Nidorino - Horn Drill - Level 58
  (33, 3300, 32, 16, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Nidorino - Toxic - TM06
  (33, 3300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Nidorino - Venoshock - TM09
  (33, 3300, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 15),
  -- Nidorino - Hidden Power - TM10
  (33, 3300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Nidorino - Sunny Day - TM11
  (33, 3300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Nidorino - Ice Beam - TM13
  (33, 3300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 18),
  -- Nidorino - Blizzard - TM14
  (33, 3300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 19),
  -- Nidorino - Protect - TM17
  (33, 3300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Nidorino - Rain Dance - TM18
  (33, 3300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Nidorino - Frustration - TM21
  (33, 3300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Nidorino - Thunderbolt - TM24
  (33, 3300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Nidorino - Thunder - TM25
  (33, 3300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 24),
  -- Nidorino - Return - TM27
  (33, 3300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Nidorino - Double Team - TM32
  (33, 3300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Nidorino - Sludge Bomb - TM36
  (33, 3300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 27),
  -- Nidorino - Facade - TM42
  (33, 3300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Nidorino - Rest - TM44
  (33, 3300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Nidorino - Attract - TM45
  (33, 3300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Nidorino - Thief - TM46
  (33, 3300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 31),
  -- Nidorino - Round - TM48
  (33, 3300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Nidorino - Echoed Voice - TM49
  (33, 3300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 33),
  -- Nidorino - Shadow Claw - TM65
  (33, 3300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 34),
  -- Nidorino - Smart Strike - TM67
  (33, 3300, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 35),
  -- Nidorino - Poison Jab - TM84
  (33, 3300, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 36),
  -- Nidorino - Swagger - TM87
  (33, 3300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Nidorino - Sleep Talk - TM88
  (33, 3300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Nidorino - Substitute - TM90
  (33, 3300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Nidorino - Confide - TM100
  (33, 3300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Nidorino - Super Fang - Tutor
  (33, 3300, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Nidorino - Snore - Tutor
  (33, 3300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Nidorino - Iron Tail - Tutor
  (33, 3300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Nidorino - Helping Hand - Tutor
  (33, 3300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Nidorino - Shock Wave - Tutor
  (33, 3300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Nidorino - Water Pulse - Tutor
  (33, 3300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Nidorino - Drill Run - Tutor
  (33, 3300, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Nidorino - Stomping Tantrum - Tutor
  (33, 3300, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),

  -- Nidoking - Double Kick - Level 1
  (34, 3400, 24, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nidoking - Poison Sting - Level 1
  (34, 3400, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nidoking - Peck - Level 1
  (34, 3400, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nidoking - Focus Energy - Level 1
  (34, 3400, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nidoking - Megahorn - Level 1
  (34, 3400, 224, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Nidoking - Chip Away - Level 23
  (34, 3400, 498, 16, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Nidoking - Thrash - Level 35
  (34, 3400, 37, 16, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Nidoking - Earth Power - Level 43
  (34, 3400, 414, 16, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Nidoking - Megahorn - Level 58
  (34, 3400, 224, 16, NULL, 1, 58, NULL, NULL, NULL, 9),
  -- Nidoking - Roar - TM05
  (34, 3400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 10),
  -- Nidoking - Toxic - TM06
  (34, 3400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 11),
  -- Nidoking - Venoshock - TM09
  (34, 3400, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 12),
  -- Nidoking - Hidden Power - TM10
  (34, 3400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 13),
  -- Nidoking - Sunny Day - TM11
  (34, 3400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 14),
  -- Nidoking - Taunt - TM12
  (34, 3400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 15),
  -- Nidoking - Ice Beam - TM13
  (34, 3400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 16),
  -- Nidoking - Blizzard - TM14
  (34, 3400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 17),
  -- Nidoking - Hyper Beam - TM15
  (34, 3400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 18),
  -- Nidoking - Protect - TM17
  (34, 3400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Nidoking - Rain Dance - TM18
  (34, 3400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Nidoking - Frustration - TM21
  (34, 3400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Nidoking - Smack Down - TM23
  (34, 3400, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 22),
  -- Nidoking - Thunderbolt - TM24
  (34, 3400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Nidoking - Thunder - TM25
  (34, 3400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 24),
  -- Nidoking - Earthquake - TM26
  (34, 3400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Nidoking - Return - TM27
  (34, 3400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Nidoking - Shadow Ball - TM30
  (34, 3400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Nidoking - Brick Break - TM31
  (34, 3400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Nidoking - Double Team - TM32
  (34, 3400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Nidoking - Sludge Wave - TM34
  (34, 3400, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 30),
  -- Nidoking - Flamethrower - TM35
  (34, 3400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 31),
  -- Nidoking - Sludge Bomb - TM36
  (34, 3400, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 32),
  -- Nidoking - Sandstorm - TM37
  (34, 3400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 33),
  -- Nidoking - Fire Blast - TM38
  (34, 3400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 34),
  -- Nidoking - Rock Tomb - TM39
  (34, 3400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Nidoking - Torment - TM41
  (34, 3400, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 36),
  -- Nidoking - Facade - TM42
  (34, 3400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Nidoking - Rest - TM44
  (34, 3400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Nidoking - Attract - TM45
  (34, 3400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Nidoking - Thief - TM46
  (34, 3400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Nidoking - Round - TM48
  (34, 3400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Nidoking - Echoed Voice - TM49
  (34, 3400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 42),
  -- Nidoking - Focus Blast - TM52
  (34, 3400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Nidoking - Fling - TM56
  (34, 3400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Nidoking - Quash - TM60
  (34, 3400, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 45),
  -- Nidoking - Shadow Claw - TM65
  (34, 3400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 46),
  -- Nidoking - Smart Strike - TM67
  (34, 3400, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 47),
  -- Nidoking - Giga Impact - TM68
  (34, 3400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 48),
  -- Nidoking - Stone Edge - TM71
  (34, 3400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 49),
  -- Nidoking - Bulldoze - TM78
  (34, 3400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 50),
  -- Nidoking - Rock Slide - TM80
  (34, 3400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 51),
  -- Nidoking - Dragon Tail - TM82
  (34, 3400, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 52),
  -- Nidoking - Poison Jab - TM84
  (34, 3400, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 53),
  -- Nidoking - Swagger - TM87
  (34, 3400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Nidoking - Sleep Talk - TM88
  (34, 3400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Nidoking - Substitute - TM90
  (34, 3400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Nidoking - Surf - TM94
  (34, 3400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 57),
  -- Nidoking - Confide - TM100
  (34, 3400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Nidoking - Fire Punch - Tutor
  (34, 3400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Nidoking - Ice Punch - Tutor
  (34, 3400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Nidoking - Thunder Punch - Tutor
  (34, 3400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Nidoking - Super Fang - Tutor
  (34, 3400, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Nidoking - Snore - Tutor
  (34, 3400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Nidoking - Icy Wind - Tutor
  (34, 3400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Nidoking - Outrage - Tutor
  (34, 3400, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Nidoking - Iron Tail - Tutor
  (34, 3400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Nidoking - Uproar - Tutor
  (34, 3400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Nidoking - Focus Punch - Tutor
  (34, 3400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Nidoking - Helping Hand - Tutor
  (34, 3400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Nidoking - Superpower - Tutor
  (34, 3400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Nidoking - Shock Wave - Tutor
  (34, 3400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Nidoking - Water Pulse - Tutor
  (34, 3400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Nidoking - Aqua Tail - Tutor
  (34, 3400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Nidoking - Dragon Pulse - Tutor
  (34, 3400, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Nidoking - Earth Power - Tutor
  (34, 3400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Nidoking - Stealth Rock - Tutor
  (34, 3400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Nidoking - Drill Run - Tutor
  (34, 3400, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Nidoking - Throat Chop - Tutor
  (34, 3400, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Nidoking - Stomping Tantrum - Tutor
  (34, 3400, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),

  -- Clefairy - Pound - Level 1
  (35, 3500, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefairy - Growl - Level 1
  (35, 3500, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefairy - Encore - Level 1
  (35, 3500, 227, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clefairy - Disarming Voice - Level 1
  (35, 3500, 574, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clefairy - Spotlight - Level 1
  (35, 3500, 671, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Clefairy - Sing - Level 7
  (35, 3500, 47, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Clefairy - Double Slap - Level 10
  (35, 3500, 3, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Clefairy - Defense Curl - Level 13
  (35, 3500, 111, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Clefairy - Follow Me - Level 16
  (35, 3500, 266, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Clefairy - Bestow - Level 19
  (35, 3500, 516, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Clefairy - Wake-Up Slap - Level 22
  (35, 3500, 358, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Clefairy - Minimize - Level 25
  (35, 3500, 107, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Clefairy - Stored Power - Level 28
  (35, 3500, 500, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Clefairy - Metronome - Level 31
  (35, 3500, 118, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Clefairy - Cosmic Power - Level 34
  (35, 3500, 322, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Clefairy - Lucky Chant - Level 37
  (35, 3500, 381, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Clefairy - Body Slam - Level 40
  (35, 3500, 34, 16, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Clefairy - Moonlight - Level 43
  (35, 3500, 236, 16, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Clefairy - Moonblast - Level 46
  (35, 3500, 585, 16, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Clefairy - Gravity - Level 49
  (35, 3500, 356, 16, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Clefairy - Meteor Mash - Level 50
  (35, 3500, 309, 16, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Clefairy - Healing Wish - Level 55
  (35, 3500, 361, 16, NULL, 1, 55, NULL, NULL, NULL, 22),
  -- Clefairy - After You - Level 58
  (35, 3500, 495, 16, NULL, 1, 58, NULL, NULL, NULL, 23),
  -- Clefairy - Work Up - TM01
  (35, 3500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 24),
  -- Clefairy - Psyshock - TM03
  (35, 3500, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 25),
  -- Clefairy - Calm Mind - TM04
  (35, 3500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 26),
  -- Clefairy - Toxic - TM06
  (35, 3500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 27),
  -- Clefairy - Hidden Power - TM10
  (35, 3500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 28),
  -- Clefairy - Sunny Day - TM11
  (35, 3500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 29),
  -- Clefairy - Ice Beam - TM13
  (35, 3500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 30),
  -- Clefairy - Blizzard - TM14
  (35, 3500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 31),
  -- Clefairy - Light Screen - TM16
  (35, 3500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 32),
  -- Clefairy - Protect - TM17
  (35, 3500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 33),
  -- Clefairy - Rain Dance - TM18
  (35, 3500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 34),
  -- Clefairy - Safeguard - TM20
  (35, 3500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 35),
  -- Clefairy - Frustration - TM21
  (35, 3500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 36),
  -- Clefairy - Solar Beam - TM22
  (35, 3500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 37),
  -- Clefairy - Thunderbolt - TM24
  (35, 3500, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 38),
  -- Clefairy - Thunder - TM25
  (35, 3500, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 39),
  -- Clefairy - Return - TM27
  (35, 3500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 40),
  -- Clefairy - Psychic - TM29
  (35, 3500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 41),
  -- Clefairy - Shadow Ball - TM30
  (35, 3500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 42),
  -- Clefairy - Brick Break - TM31
  (35, 3500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 43),
  -- Clefairy - Double Team - TM32
  (35, 3500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 44),
  -- Clefairy - Reflect - TM33
  (35, 3500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 45),
  -- Clefairy - Flamethrower - TM35
  (35, 3500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 46),
  -- Clefairy - Fire Blast - TM38
  (35, 3500, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 47),
  -- Clefairy - Facade - TM42
  (35, 3500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 48),
  -- Clefairy - Rest - TM44
  (35, 3500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 49),
  -- Clefairy - Attract - TM45
  (35, 3500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 50),
  -- Clefairy - Round - TM48
  (35, 3500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 51),
  -- Clefairy - Echoed Voice - TM49
  (35, 3500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 52),
  -- Clefairy - Fling - TM56
  (35, 3500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 53),
  -- Clefairy - Charge Beam - TM57
  (35, 3500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 54),
  -- Clefairy - Thunder Wave - TM73
  (35, 3500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 55),
  -- Clefairy - Psych Up - TM77
  (35, 3500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 56),
  -- Clefairy - Dream Eater - TM85
  (35, 3500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 57),
  -- Clefairy - Grass Knot - TM86
  (35, 3500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 58),
  -- Clefairy - Swagger - TM87
  (35, 3500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 59),
  -- Clefairy - Sleep Talk - TM88
  (35, 3500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 60),
  -- Clefairy - Substitute - TM90
  (35, 3500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 61),
  -- Clefairy - Dazzling Gleam - TM99
  (35, 3500, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 62),
  -- Clefairy - Confide - TM100
  (35, 3500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 63),
  -- Clefairy - Fire Punch - Tutor
  (35, 3500, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Clefairy - Ice Punch - Tutor
  (35, 3500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Clefairy - Thunder Punch - Tutor
  (35, 3500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Clefairy - Snore - Tutor
  (35, 3500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Clefairy - Icy Wind - Tutor
  (35, 3500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Clefairy - Heal Bell - Tutor
  (35, 3500, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Clefairy - Iron Tail - Tutor
  (35, 3500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Clefairy - Focus Punch - Tutor
  (35, 3500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Clefairy - Helping Hand - Tutor
  (35, 3500, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Clefairy - Trick - Tutor
  (35, 3500, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Clefairy - Role Play - Tutor
  (35, 3500, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Clefairy - Magic Coat - Tutor
  (35, 3500, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Clefairy - Recycle - Tutor
  (35, 3500, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Clefairy - Knock Off - Tutor
  (35, 3500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Clefairy - Endeavor - Tutor
  (35, 3500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Clefairy - Snatch - Tutor
  (35, 3500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Clefairy - Hyper Voice - Tutor
  (35, 3500, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Clefairy - Signal Beam - Tutor
  (35, 3500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Clefairy - Bounce - Tutor
  (35, 3500, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Clefairy - Covet - Tutor
  (35, 3500, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Clefairy - Shock Wave - Tutor
  (35, 3500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Clefairy - Water Pulse - Tutor
  (35, 3500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Clefairy - Gravity - Tutor
  (35, 3500, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Clefairy - Last Resort - Tutor
  (35, 3500, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Clefairy - Drain Punch - Tutor
  (35, 3500, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Clefairy - Zen Headbutt - Tutor
  (35, 3500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Clefairy - Stealth Rock - Tutor
  (35, 3500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Clefairy - Wonder Room - Tutor
  (35, 3500, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),
  -- Clefairy - Telekinesis - Tutor
  (35, 3500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 92),
  -- Clefairy - After You - Tutor
  (35, 3500, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 93),

  -- Clefable - Double Slap - Level 1
  (36, 3600, 3, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clefable - Sing - Level 1
  (36, 3600, 47, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clefable - Minimize - Level 1
  (36, 3600, 107, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clefable - Metronome - Level 1
  (36, 3600, 118, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clefable - Disarming Voice - Level 1
  (36, 3600, 574, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Clefable - Spotlight - Level 1
  (36, 3600, 671, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Clefable - Work Up - TM01
  (36, 3600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 7),
  -- Clefable - Psyshock - TM03
  (36, 3600, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 8),
  -- Clefable - Calm Mind - TM04
  (36, 3600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 9),
  -- Clefable - Toxic - TM06
  (36, 3600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 10),
  -- Clefable - Hidden Power - TM10
  (36, 3600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 11),
  -- Clefable - Sunny Day - TM11
  (36, 3600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 12),
  -- Clefable - Ice Beam - TM13
  (36, 3600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 13),
  -- Clefable - Blizzard - TM14
  (36, 3600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 14),
  -- Clefable - Hyper Beam - TM15
  (36, 3600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 15),
  -- Clefable - Light Screen - TM16
  (36, 3600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 16),
  -- Clefable - Protect - TM17
  (36, 3600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Clefable - Rain Dance - TM18
  (36, 3600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 18),
  -- Clefable - Safeguard - TM20
  (36, 3600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 19),
  -- Clefable - Frustration - TM21
  (36, 3600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Clefable - Solar Beam - TM22
  (36, 3600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 21),
  -- Clefable - Thunderbolt - TM24
  (36, 3600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 22),
  -- Clefable - Thunder - TM25
  (36, 3600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 23),
  -- Clefable - Return - TM27
  (36, 3600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Clefable - Psychic - TM29
  (36, 3600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 25),
  -- Clefable - Shadow Ball - TM30
  (36, 3600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 26),
  -- Clefable - Brick Break - TM31
  (36, 3600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Clefable - Double Team - TM32
  (36, 3600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Clefable - Reflect - TM33
  (36, 3600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 29),
  -- Clefable - Flamethrower - TM35
  (36, 3600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 30),
  -- Clefable - Fire Blast - TM38
  (36, 3600, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 31),
  -- Clefable - Facade - TM42
  (36, 3600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Clefable - Rest - TM44
  (36, 3600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Clefable - Attract - TM45
  (36, 3600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Clefable - Round - TM48
  (36, 3600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Clefable - Echoed Voice - TM49
  (36, 3600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 36),
  -- Clefable - Focus Blast - TM52
  (36, 3600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 37),
  -- Clefable - Fling - TM56
  (36, 3600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Clefable - Charge Beam - TM57
  (36, 3600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 39),
  -- Clefable - Giga Impact - TM68
  (36, 3600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Clefable - Thunder Wave - TM73
  (36, 3600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Clefable - Psych Up - TM77
  (36, 3600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Clefable - Dream Eater - TM85
  (36, 3600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 43),
  -- Clefable - Grass Knot - TM86
  (36, 3600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 44),
  -- Clefable - Swagger - TM87
  (36, 3600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Clefable - Sleep Talk - TM88
  (36, 3600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Clefable - Substitute - TM90
  (36, 3600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Clefable - Dazzling Gleam - TM99
  (36, 3600, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 48),
  -- Clefable - Confide - TM100
  (36, 3600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Clefable - Fire Punch - Tutor
  (36, 3600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Clefable - Ice Punch - Tutor
  (36, 3600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Clefable - Thunder Punch - Tutor
  (36, 3600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Clefable - Snore - Tutor
  (36, 3600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Clefable - Icy Wind - Tutor
  (36, 3600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Clefable - Heal Bell - Tutor
  (36, 3600, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Clefable - Iron Tail - Tutor
  (36, 3600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Clefable - Focus Punch - Tutor
  (36, 3600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Clefable - Helping Hand - Tutor
  (36, 3600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Clefable - Trick - Tutor
  (36, 3600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Clefable - Role Play - Tutor
  (36, 3600, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Clefable - Magic Coat - Tutor
  (36, 3600, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Clefable - Recycle - Tutor
  (36, 3600, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Clefable - Knock Off - Tutor
  (36, 3600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Clefable - Endeavor - Tutor
  (36, 3600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Clefable - Snatch - Tutor
  (36, 3600, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Clefable - Hyper Voice - Tutor
  (36, 3600, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Clefable - Signal Beam - Tutor
  (36, 3600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Clefable - Bounce - Tutor
  (36, 3600, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Clefable - Covet - Tutor
  (36, 3600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Clefable - Shock Wave - Tutor
  (36, 3600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Clefable - Water Pulse - Tutor
  (36, 3600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Clefable - Gravity - Tutor
  (36, 3600, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Clefable - Last Resort - Tutor
  (36, 3600, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Clefable - Drain Punch - Tutor
  (36, 3600, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Clefable - Zen Headbutt - Tutor
  (36, 3600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Clefable - Stealth Rock - Tutor
  (36, 3600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Clefable - Wonder Room - Tutor
  (36, 3600, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Clefable - Telekinesis - Tutor
  (36, 3600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Clefable - After You - Tutor
  (36, 3600, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Clefable - Laser Focus - Tutor
  (36, 3600, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),

  -- Vulpix - Ember - Level 1
  (37, 3700, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vulpix - Tail Whip - Level 4
  (37, 3700, 39, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Vulpix - Roar - Level 7
  (37, 3700, 46, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Vulpix - Baby-Doll Eyes - Level 9
  (37, 3700, 608, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Vulpix - Quick Attack - Level 10
  (37, 3700, 98, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Vulpix - Confuse Ray - Level 12
  (37, 3700, 109, 16, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Vulpix - Fire Spin - Level 15
  (37, 3700, 83, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Vulpix - Payback - Level 18
  (37, 3700, 371, 16, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Vulpix - Will-O-Wisp - Level 20
  (37, 3700, 261, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Vulpix - Feint Attack - Level 23
  (37, 3700, 185, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Vulpix - Hex - Level 26
  (37, 3700, 506, 16, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Vulpix - Flame Burst - Level 28
  (37, 3700, 481, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Vulpix - Extrasensory - Level 31
  (37, 3700, 326, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Vulpix - Safeguard - Level 34
  (37, 3700, 219, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Vulpix - Flamethrower - Level 36
  (37, 3700, 53, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Vulpix - Imprison - Level 39
  (37, 3700, 286, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Vulpix - Fire Blast - Level 42
  (37, 3700, 126, 16, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Vulpix - Grudge - Level 44
  (37, 3700, 288, 16, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Vulpix - Captivate - Level 47
  (37, 3700, 445, 16, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Vulpix - Inferno - Level 50
  (37, 3700, 517, 16, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Vulpix - Roar - TM05
  (37, 3700, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 21),
  -- Vulpix - Toxic - TM06
  (37, 3700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Vulpix - Hidden Power - TM10
  (37, 3700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Vulpix - Sunny Day - TM11
  (37, 3700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Vulpix - Protect - TM17
  (37, 3700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Vulpix - Safeguard - TM20
  (37, 3700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Vulpix - Frustration - TM21
  (37, 3700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Vulpix - Return - TM27
  (37, 3700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Vulpix - Double Team - TM32
  (37, 3700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Vulpix - Flamethrower - TM35
  (37, 3700, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 30),
  -- Vulpix - Fire Blast - TM38
  (37, 3700, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 31),
  -- Vulpix - Facade - TM42
  (37, 3700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Vulpix - Flame Charge - TM43
  (37, 3700, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 33),
  -- Vulpix - Rest - TM44
  (37, 3700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Vulpix - Attract - TM45
  (37, 3700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Vulpix - Round - TM48
  (37, 3700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Vulpix - Overheat - TM50
  (37, 3700, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 37),
  -- Vulpix - Energy Ball - TM53
  (37, 3700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 38),
  -- Vulpix - Will-O-Wisp - TM61
  (37, 3700, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 39),
  -- Vulpix - Payback - TM66
  (37, 3700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 40),
  -- Vulpix - Psych Up - TM77
  (37, 3700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Vulpix - Swagger - TM87
  (37, 3700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Vulpix - Sleep Talk - TM88
  (37, 3700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Vulpix - Substitute - TM90
  (37, 3700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Vulpix - Dark Pulse - TM97
  (37, 3700, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 45),
  -- Vulpix - Confide - TM100
  (37, 3700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Vulpix - Disable - Egg
  (37, 3700, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Vulpix - Hypnosis - Egg
  (37, 3700, 95, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vulpix - Flail - Egg
  (37, 3700, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Vulpix - Spite - Egg
  (37, 3700, 180, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Vulpix - Feint Attack - Egg
  (37, 3700, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Vulpix - Heat Wave - Egg
  (37, 3700, 257, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vulpix - Secret Power - Egg
  (37, 3700, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vulpix - Extrasensory - Egg
  (37, 3700, 326, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Vulpix - Howl - Egg
  (37, 3700, 336, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Vulpix - Power Swap - Egg
  (37, 3700, 384, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Vulpix - Flare Blitz - Egg
  (37, 3700, 394, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Vulpix - Captivate - Egg
  (37, 3700, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Vulpix - Hex - Egg
  (37, 3700, 506, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Vulpix - Tail Slap - Egg
  (37, 3700, 541, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Vulpix - Snore - Tutor
  (37, 3700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Vulpix - Spite - Tutor
  (37, 3700, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Vulpix - Pain Split - Tutor
  (37, 3700, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Vulpix - Iron Tail - Tutor
  (37, 3700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Vulpix - Heat Wave - Tutor
  (37, 3700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Vulpix - Role Play - Tutor
  (37, 3700, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Vulpix - Covet - Tutor
  (37, 3700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Vulpix - Zen Headbutt - Tutor
  (37, 3700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Vulpix - Foul Play - Tutor
  (37, 3700, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),

  -- Ninetales - Flamethrower - Level 1
  (38, 3800, 53, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninetales - Quick Attack - Level 1
  (38, 3800, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninetales - Confuse Ray - Level 1
  (38, 3800, 109, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninetales - Safeguard - Level 1
  (38, 3800, 219, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninetales - Imprison - Level 1
  (38, 3800, 286, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ninetales - Nasty Plot - Level 1
  (38, 3800, 417, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ninetales - Psyshock - TM03
  (38, 3800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 7),
  -- Ninetales - Calm Mind - TM04
  (38, 3800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 8),
  -- Ninetales - Roar - TM05
  (38, 3800, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 9),
  -- Ninetales - Toxic - TM06
  (38, 3800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 10),
  -- Ninetales - Hidden Power - TM10
  (38, 3800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 11),
  -- Ninetales - Sunny Day - TM11
  (38, 3800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 12),
  -- Ninetales - Hyper Beam - TM15
  (38, 3800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 13),
  -- Ninetales - Protect - TM17
  (38, 3800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 14),
  -- Ninetales - Safeguard - TM20
  (38, 3800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 15),
  -- Ninetales - Frustration - TM21
  (38, 3800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 16),
  -- Ninetales - Solar Beam - TM22
  (38, 3800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 17),
  -- Ninetales - Return - TM27
  (38, 3800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 18),
  -- Ninetales - Double Team - TM32
  (38, 3800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 19),
  -- Ninetales - Flamethrower - TM35
  (38, 3800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 20),
  -- Ninetales - Fire Blast - TM38
  (38, 3800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 21),
  -- Ninetales - Facade - TM42
  (38, 3800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 22),
  -- Ninetales - Flame Charge - TM43
  (38, 3800, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 23),
  -- Ninetales - Rest - TM44
  (38, 3800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 24),
  -- Ninetales - Attract - TM45
  (38, 3800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 25),
  -- Ninetales - Round - TM48
  (38, 3800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 26),
  -- Ninetales - Overheat - TM50
  (38, 3800, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 27),
  -- Ninetales - Energy Ball - TM53
  (38, 3800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 28),
  -- Ninetales - Will-O-Wisp - TM61
  (38, 3800, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 29),
  -- Ninetales - Payback - TM66
  (38, 3800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 30),
  -- Ninetales - Giga Impact - TM68
  (38, 3800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 31),
  -- Ninetales - Psych Up - TM77
  (38, 3800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 32),
  -- Ninetales - Dream Eater - TM85
  (38, 3800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 33),
  -- Ninetales - Swagger - TM87
  (38, 3800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Ninetales - Sleep Talk - TM88
  (38, 3800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Ninetales - Substitute - TM90
  (38, 3800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Ninetales - Dark Pulse - TM97
  (38, 3800, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 37),
  -- Ninetales - Confide - TM100
  (38, 3800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Ninetales - Snore - Tutor
  (38, 3800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Ninetales - Spite - Tutor
  (38, 3800, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Ninetales - Pain Split - Tutor
  (38, 3800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Ninetales - Iron Tail - Tutor
  (38, 3800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Ninetales - Heat Wave - Tutor
  (38, 3800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Ninetales - Role Play - Tutor
  (38, 3800, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Ninetales - Covet - Tutor
  (38, 3800, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Ninetales - Zen Headbutt - Tutor
  (38, 3800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Ninetales - Foul Play - Tutor
  (38, 3800, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Ninetales - Laser Focus - Tutor
  (38, 3800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),

  -- Jigglypuff - Sing - Level 1
  (39, 3900, 47, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jigglypuff - Defense Curl - Level 3
  (39, 3900, 111, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Jigglypuff - Pound - Level 5
  (39, 3900, 1, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Jigglypuff - Play Nice - Level 9
  (39, 3900, 589, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Jigglypuff - Disarming Voice - Level 11
  (39, 3900, 574, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Jigglypuff - Disable - Level 14
  (39, 3900, 50, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Jigglypuff - Double Slap - Level 17
  (39, 3900, 3, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Jigglypuff - Rollout - Level 20
  (39, 3900, 205, 16, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Jigglypuff - Round - Level 22
  (39, 3900, 496, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Jigglypuff - Stockpile - Level 25
  (39, 3900, 254, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Jigglypuff - Spit Up - Level 25
  (39, 3900, 255, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Jigglypuff - Swallow - Level 25
  (39, 3900, 256, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Jigglypuff - Wake-Up Slap - Level 27
  (39, 3900, 358, 16, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Jigglypuff - Rest - Level 30
  (39, 3900, 156, 16, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Jigglypuff - Body Slam - Level 32
  (39, 3900, 34, 16, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Jigglypuff - Gyro Ball - Level 35
  (39, 3900, 360, 16, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Jigglypuff - Mimic - Level 38
  (39, 3900, 102, 16, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Jigglypuff - Hyper Voice - Level 41
  (39, 3900, 304, 16, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Jigglypuff - Double-Edge - Level 45
  (39, 3900, 38, 16, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Jigglypuff - Work Up - TM01
  (39, 3900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Jigglypuff - Toxic - TM06
  (39, 3900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Jigglypuff - Hidden Power - TM10
  (39, 3900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Jigglypuff - Sunny Day - TM11
  (39, 3900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Jigglypuff - Ice Beam - TM13
  (39, 3900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Jigglypuff - Blizzard - TM14
  (39, 3900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Jigglypuff - Light Screen - TM16
  (39, 3900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Jigglypuff - Protect - TM17
  (39, 3900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Jigglypuff - Rain Dance - TM18
  (39, 3900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Jigglypuff - Safeguard - TM20
  (39, 3900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 29),
  -- Jigglypuff - Frustration - TM21
  (39, 3900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Jigglypuff - Solar Beam - TM22
  (39, 3900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 31),
  -- Jigglypuff - Thunderbolt - TM24
  (39, 3900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 32),
  -- Jigglypuff - Thunder - TM25
  (39, 3900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 33),
  -- Jigglypuff - Return - TM27
  (39, 3900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Jigglypuff - Psychic - TM29
  (39, 3900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 35),
  -- Jigglypuff - Shadow Ball - TM30
  (39, 3900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 36),
  -- Jigglypuff - Brick Break - TM31
  (39, 3900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 37),
  -- Jigglypuff - Double Team - TM32
  (39, 3900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 38),
  -- Jigglypuff - Reflect - TM33
  (39, 3900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 39),
  -- Jigglypuff - Flamethrower - TM35
  (39, 3900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 40),
  -- Jigglypuff - Fire Blast - TM38
  (39, 3900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 41),
  -- Jigglypuff - Facade - TM42
  (39, 3900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 42),
  -- Jigglypuff - Rest - TM44
  (39, 3900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 43),
  -- Jigglypuff - Attract - TM45
  (39, 3900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 44),
  -- Jigglypuff - Round - TM48
  (39, 3900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Jigglypuff - Echoed Voice - TM49
  (39, 3900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 46),
  -- Jigglypuff - Fling - TM56
  (39, 3900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 47),
  -- Jigglypuff - Charge Beam - TM57
  (39, 3900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 48),
  -- Jigglypuff - Thunder Wave - TM73
  (39, 3900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 49),
  -- Jigglypuff - Gyro Ball - TM74
  (39, 3900, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 50),
  -- Jigglypuff - Psych Up - TM77
  (39, 3900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 51),
  -- Jigglypuff - Dream Eater - TM85
  (39, 3900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 52),
  -- Jigglypuff - Grass Knot - TM86
  (39, 3900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 53),
  -- Jigglypuff - Swagger - TM87
  (39, 3900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Jigglypuff - Sleep Talk - TM88
  (39, 3900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Jigglypuff - Substitute - TM90
  (39, 3900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Jigglypuff - Wild Charge - TM93
  (39, 3900, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 57),
  -- Jigglypuff - Dazzling Gleam - TM99
  (39, 3900, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 58),
  -- Jigglypuff - Confide - TM100
  (39, 3900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 59),
  -- Jigglypuff - Fire Punch - Tutor
  (39, 3900, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Jigglypuff - Ice Punch - Tutor
  (39, 3900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Jigglypuff - Thunder Punch - Tutor
  (39, 3900, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Jigglypuff - Snore - Tutor
  (39, 3900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Jigglypuff - Icy Wind - Tutor
  (39, 3900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Jigglypuff - Heal Bell - Tutor
  (39, 3900, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Jigglypuff - Pain Split - Tutor
  (39, 3900, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Jigglypuff - Focus Punch - Tutor
  (39, 3900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Jigglypuff - Helping Hand - Tutor
  (39, 3900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Jigglypuff - Role Play - Tutor
  (39, 3900, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Jigglypuff - Magic Coat - Tutor
  (39, 3900, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Jigglypuff - Recycle - Tutor
  (39, 3900, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Jigglypuff - Knock Off - Tutor
  (39, 3900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Jigglypuff - Endeavor - Tutor
  (39, 3900, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Jigglypuff - Snatch - Tutor
  (39, 3900, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Jigglypuff - Hyper Voice - Tutor
  (39, 3900, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Jigglypuff - Bounce - Tutor
  (39, 3900, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Jigglypuff - Covet - Tutor
  (39, 3900, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Jigglypuff - Shock Wave - Tutor
  (39, 3900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Jigglypuff - Water Pulse - Tutor
  (39, 3900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Jigglypuff - Gravity - Tutor
  (39, 3900, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Jigglypuff - Last Resort - Tutor
  (39, 3900, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Jigglypuff - Drain Punch - Tutor
  (39, 3900, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Jigglypuff - Stealth Rock - Tutor
  (39, 3900, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Jigglypuff - Telekinesis - Tutor
  (39, 3900, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Jigglypuff - Ally Switch - Tutor
  (39, 3900, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),

  -- Wigglytuff - Double Slap - Level 1
  (40, 4000, 3, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wigglytuff - Double-Edge - Level 1
  (40, 4000, 38, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wigglytuff - Sing - Level 1
  (40, 4000, 47, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wigglytuff - Disable - Level 1
  (40, 4000, 50, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wigglytuff - Defense Curl - Level 1
  (40, 4000, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Wigglytuff - Play Rough - Level 1
  (40, 4000, 583, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Wigglytuff - Work Up - TM01
  (40, 4000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 7),
  -- Wigglytuff - Toxic - TM06
  (40, 4000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 8),
  -- Wigglytuff - Hidden Power - TM10
  (40, 4000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 9),
  -- Wigglytuff - Sunny Day - TM11
  (40, 4000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 10),
  -- Wigglytuff - Ice Beam - TM13
  (40, 4000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 11),
  -- Wigglytuff - Blizzard - TM14
  (40, 4000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 12),
  -- Wigglytuff - Hyper Beam - TM15
  (40, 4000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 13),
  -- Wigglytuff - Light Screen - TM16
  (40, 4000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 14),
  -- Wigglytuff - Protect - TM17
  (40, 4000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 15),
  -- Wigglytuff - Rain Dance - TM18
  (40, 4000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 16),
  -- Wigglytuff - Safeguard - TM20
  (40, 4000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 17),
  -- Wigglytuff - Frustration - TM21
  (40, 4000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 18),
  -- Wigglytuff - Solar Beam - TM22
  (40, 4000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 19),
  -- Wigglytuff - Thunderbolt - TM24
  (40, 4000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 20),
  -- Wigglytuff - Thunder - TM25
  (40, 4000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 21),
  -- Wigglytuff - Return - TM27
  (40, 4000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Wigglytuff - Psychic - TM29
  (40, 4000, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 23),
  -- Wigglytuff - Shadow Ball - TM30
  (40, 4000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 24),
  -- Wigglytuff - Brick Break - TM31
  (40, 4000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 25),
  -- Wigglytuff - Double Team - TM32
  (40, 4000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Wigglytuff - Reflect - TM33
  (40, 4000, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 27),
  -- Wigglytuff - Flamethrower - TM35
  (40, 4000, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 28),
  -- Wigglytuff - Fire Blast - TM38
  (40, 4000, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 29),
  -- Wigglytuff - Facade - TM42
  (40, 4000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Wigglytuff - Rest - TM44
  (40, 4000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Wigglytuff - Attract - TM45
  (40, 4000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Wigglytuff - Round - TM48
  (40, 4000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Wigglytuff - Echoed Voice - TM49
  (40, 4000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 34),
  -- Wigglytuff - Focus Blast - TM52
  (40, 4000, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 35),
  -- Wigglytuff - Fling - TM56
  (40, 4000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 36),
  -- Wigglytuff - Charge Beam - TM57
  (40, 4000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 37),
  -- Wigglytuff - Giga Impact - TM68
  (40, 4000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Wigglytuff - Thunder Wave - TM73
  (40, 4000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 39),
  -- Wigglytuff - Gyro Ball - TM74
  (40, 4000, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 40),
  -- Wigglytuff - Psych Up - TM77
  (40, 4000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Wigglytuff - Dream Eater - TM85
  (40, 4000, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 42),
  -- Wigglytuff - Grass Knot - TM86
  (40, 4000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 43),
  -- Wigglytuff - Swagger - TM87
  (40, 4000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Wigglytuff - Sleep Talk - TM88
  (40, 4000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Wigglytuff - Substitute - TM90
  (40, 4000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Wigglytuff - Wild Charge - TM93
  (40, 4000, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 47),
  -- Wigglytuff - Dazzling Gleam - TM99
  (40, 4000, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 48),
  -- Wigglytuff - Confide - TM100
  (40, 4000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Wigglytuff - Fire Punch - Tutor
  (40, 4000, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Wigglytuff - Ice Punch - Tutor
  (40, 4000, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Wigglytuff - Thunder Punch - Tutor
  (40, 4000, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Wigglytuff - Snore - Tutor
  (40, 4000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Wigglytuff - Icy Wind - Tutor
  (40, 4000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Wigglytuff - Heal Bell - Tutor
  (40, 4000, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Wigglytuff - Pain Split - Tutor
  (40, 4000, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Wigglytuff - Focus Punch - Tutor
  (40, 4000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Wigglytuff - Helping Hand - Tutor
  (40, 4000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Wigglytuff - Role Play - Tutor
  (40, 4000, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Wigglytuff - Magic Coat - Tutor
  (40, 4000, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Wigglytuff - Recycle - Tutor
  (40, 4000, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Wigglytuff - Knock Off - Tutor
  (40, 4000, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Wigglytuff - Endeavor - Tutor
  (40, 4000, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Wigglytuff - Snatch - Tutor
  (40, 4000, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Wigglytuff - Hyper Voice - Tutor
  (40, 4000, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Wigglytuff - Bounce - Tutor
  (40, 4000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Wigglytuff - Covet - Tutor
  (40, 4000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Wigglytuff - Shock Wave - Tutor
  (40, 4000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Wigglytuff - Water Pulse - Tutor
  (40, 4000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Wigglytuff - Gravity - Tutor
  (40, 4000, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Wigglytuff - Last Resort - Tutor
  (40, 4000, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Wigglytuff - Drain Punch - Tutor
  (40, 4000, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Wigglytuff - Stealth Rock - Tutor
  (40, 4000, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Wigglytuff - Telekinesis - Tutor
  (40, 4000, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Wigglytuff - Magic Room - Tutor
  (40, 4000, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Wigglytuff - Ally Switch - Tutor
  (40, 4000, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Wigglytuff - Laser Focus - Tutor
  (40, 4000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),

  -- Zubat - Absorb - Level 1
  (41, 4100, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zubat - Supersonic - Level 5
  (41, 4100, 48, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Zubat - Astonish - Level 7
  (41, 4100, 310, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Zubat - Bite - Level 11
  (41, 4100, 44, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Zubat - Wing Attack - Level 13
  (41, 4100, 17, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Zubat - Confuse Ray - Level 17
  (41, 4100, 109, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Zubat - Air Cutter - Level 19
  (41, 4100, 314, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Zubat - Swift - Level 23
  (41, 4100, 129, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Zubat - Poison Fang - Level 25
  (41, 4100, 305, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Zubat - Mean Look - Level 29
  (41, 4100, 212, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Zubat - Leech Life - Level 31
  (41, 4100, 141, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Zubat - Haze - Level 35
  (41, 4100, 114, 16, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Zubat - Venoshock - Level 37
  (41, 4100, 474, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Zubat - Air Slash - Level 41
  (41, 4100, 403, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Zubat - Quick Guard - Level 43
  (41, 4100, 501, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Zubat - Toxic - TM06
  (41, 4100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Zubat - Venoshock - TM09
  (41, 4100, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 17),
  -- Zubat - Hidden Power - TM10
  (41, 4100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Zubat - Sunny Day - TM11
  (41, 4100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Zubat - Taunt - TM12
  (41, 4100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Zubat - Protect - TM17
  (41, 4100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Zubat - Rain Dance - TM18
  (41, 4100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Zubat - Roost - TM19
  (41, 4100, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Zubat - Frustration - TM21
  (41, 4100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Zubat - Return - TM27
  (41, 4100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Zubat - Leech Life - TM28
  (41, 4100, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 26),
  -- Zubat - Shadow Ball - TM30
  (41, 4100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Zubat - Double Team - TM32
  (41, 4100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Zubat - Sludge Bomb - TM36
  (41, 4100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 29),
  -- Zubat - Aerial Ace - TM40
  (41, 4100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Zubat - Torment - TM41
  (41, 4100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 31),
  -- Zubat - Facade - TM42
  (41, 4100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Zubat - Rest - TM44
  (41, 4100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Zubat - Attract - TM45
  (41, 4100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Zubat - Thief - TM46
  (41, 4100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Zubat - Round - TM48
  (41, 4100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Zubat - Steel Wing - TM51
  (41, 4100, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 37),
  -- Zubat - Acrobatics - TM62
  (41, 4100, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 38),
  -- Zubat - Payback - TM66
  (41, 4100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 39),
  -- Zubat - Fly - TM76
  (41, 4100, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 40),
  -- Zubat - Swagger - TM87
  (41, 4100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Zubat - Sleep Talk - TM88
  (41, 4100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Zubat - U-turn - TM89
  (41, 4100, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 43),
  -- Zubat - Substitute - TM90
  (41, 4100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Zubat - Confide - TM100
  (41, 4100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Zubat - Gust - Egg
  (41, 4100, 16, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Zubat - Whirlwind - Egg
  (41, 4100, 18, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Zubat - Hypnosis - Egg
  (41, 4100, 95, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Zubat - Quick Attack - Egg
  (41, 4100, 98, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Zubat - Curse - Egg
  (41, 4100, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Zubat - Feint Attack - Egg
  (41, 4100, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Zubat - Giga Drain - Egg
  (41, 4100, 202, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zubat - Steel Wing - Egg
  (41, 4100, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zubat - Pursuit - Egg
  (41, 4100, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Zubat - Brave Bird - Egg
  (41, 4100, 413, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zubat - Nasty Plot - Egg
  (41, 4100, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Zubat - Zen Headbutt - Egg
  (41, 4100, 428, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Zubat - Defog - Egg
  (41, 4100, 432, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Zubat - Venom Drench - Egg
  (41, 4100, 599, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Zubat - Super Fang - Tutor
  (41, 4100, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Zubat - Snore - Tutor
  (41, 4100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Zubat - Giga Drain - Tutor
  (41, 4100, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Zubat - Uproar - Tutor
  (41, 4100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Zubat - Heat Wave - Tutor
  (41, 4100, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Zubat - Snatch - Tutor
  (41, 4100, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Zubat - Tailwind - Tutor
  (41, 4100, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Zubat - Zen Headbutt - Tutor
  (41, 4100, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Zubat - Defog - Tutor
  (41, 4100, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Golbat - Bite - Level 1
  (42, 4200, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golbat - Supersonic - Level 1
  (42, 4200, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golbat - Absorb - Level 1
  (42, 4200, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golbat - Screech - Level 1
  (42, 4200, 103, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golbat - Astonish - Level 1
  (42, 4200, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golbat - Supersonic - Level 5
  (42, 4200, 48, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Golbat - Astonish - Level 7
  (42, 4200, 310, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Golbat - Bite - Level 11
  (42, 4200, 44, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Golbat - Wing Attack - Level 13
  (42, 4200, 17, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Golbat - Confuse Ray - Level 17
  (42, 4200, 109, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Golbat - Air Cutter - Level 19
  (42, 4200, 314, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Golbat - Swift - Level 24
  (42, 4200, 129, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Golbat - Poison Fang - Level 27
  (42, 4200, 305, 16, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Golbat - Mean Look - Level 32
  (42, 4200, 212, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Golbat - Leech Life - Level 35
  (42, 4200, 141, 16, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Golbat - Haze - Level 40
  (42, 4200, 114, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Golbat - Venoshock - Level 43
  (42, 4200, 474, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Golbat - Air Slash - Level 48
  (42, 4200, 403, 16, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Golbat - Quick Guard - Level 51
  (42, 4200, 501, 16, NULL, 1, 51, NULL, NULL, NULL, 19),
  -- Golbat - Toxic - TM06
  (42, 4200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Golbat - Venoshock - TM09
  (42, 4200, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 21),
  -- Golbat - Hidden Power - TM10
  (42, 4200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Golbat - Sunny Day - TM11
  (42, 4200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Golbat - Taunt - TM12
  (42, 4200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Golbat - Hyper Beam - TM15
  (42, 4200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Golbat - Protect - TM17
  (42, 4200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Golbat - Rain Dance - TM18
  (42, 4200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Golbat - Roost - TM19
  (42, 4200, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 28),
  -- Golbat - Frustration - TM21
  (42, 4200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Golbat - Return - TM27
  (42, 4200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Golbat - Leech Life - TM28
  (42, 4200, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 31),
  -- Golbat - Shadow Ball - TM30
  (42, 4200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Golbat - Double Team - TM32
  (42, 4200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Golbat - Sludge Bomb - TM36
  (42, 4200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 34),
  -- Golbat - Aerial Ace - TM40
  (42, 4200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 35),
  -- Golbat - Torment - TM41
  (42, 4200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 36),
  -- Golbat - Facade - TM42
  (42, 4200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Golbat - Rest - TM44
  (42, 4200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Golbat - Attract - TM45
  (42, 4200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Golbat - Thief - TM46
  (42, 4200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Golbat - Round - TM48
  (42, 4200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Golbat - Steel Wing - TM51
  (42, 4200, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 42),
  -- Golbat - Acrobatics - TM62
  (42, 4200, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 43),
  -- Golbat - Payback - TM66
  (42, 4200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Golbat - Giga Impact - TM68
  (42, 4200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Golbat - Fly - TM76
  (42, 4200, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 46),
  -- Golbat - Swagger - TM87
  (42, 4200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Golbat - Sleep Talk - TM88
  (42, 4200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Golbat - U-turn - TM89
  (42, 4200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 49),
  -- Golbat - Substitute - TM90
  (42, 4200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Golbat - Confide - TM100
  (42, 4200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Golbat - Super Fang - Tutor
  (42, 4200, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Golbat - Snore - Tutor
  (42, 4200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Golbat - Giga Drain - Tutor
  (42, 4200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Golbat - Uproar - Tutor
  (42, 4200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Golbat - Heat Wave - Tutor
  (42, 4200, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Golbat - Snatch - Tutor
  (42, 4200, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Golbat - Tailwind - Tutor
  (42, 4200, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Golbat - Zen Headbutt - Tutor
  (42, 4200, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Golbat - Defog - Tutor
  (42, 4200, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Oddish - Absorb - Level 1
  (43, 4300, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oddish - Growth - Level 1
  (43, 4300, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Oddish - Sweet Scent - Level 5
  (43, 4300, 230, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Oddish - Acid - Level 9
  (43, 4300, 51, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Oddish - Poison Powder - Level 13
  (43, 4300, 77, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oddish - Stun Spore - Level 14
  (43, 4300, 78, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Oddish - Sleep Powder - Level 15
  (43, 4300, 79, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Oddish - Mega Drain - Level 19
  (43, 4300, 72, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Oddish - Lucky Chant - Level 23
  (43, 4300, 381, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Oddish - Moonlight - Level 27
  (43, 4300, 236, 16, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Oddish - Giga Drain - Level 31
  (43, 4300, 202, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Oddish - Toxic - Level 35
  (43, 4300, 92, 16, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Oddish - Natural Gift - Level 39
  (43, 4300, 363, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Oddish - Moonblast - Level 43
  (43, 4300, 585, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Oddish - Grassy Terrain - Level 47
  (43, 4300, 580, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Oddish - Petal Dance - Level 51
  (43, 4300, 80, 16, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Oddish - Toxic - TM06
  (43, 4300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Oddish - Venoshock - TM09
  (43, 4300, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 18),
  -- Oddish - Hidden Power - TM10
  (43, 4300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Oddish - Sunny Day - TM11
  (43, 4300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Oddish - Protect - TM17
  (43, 4300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Oddish - Frustration - TM21
  (43, 4300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Oddish - Solar Beam - TM22
  (43, 4300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Oddish - Return - TM27
  (43, 4300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Oddish - Double Team - TM32
  (43, 4300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Oddish - Sludge Bomb - TM36
  (43, 4300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 26),
  -- Oddish - Facade - TM42
  (43, 4300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Oddish - Rest - TM44
  (43, 4300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Oddish - Attract - TM45
  (43, 4300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Oddish - Round - TM48
  (43, 4300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Oddish - Energy Ball - TM53
  (43, 4300, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 31),
  -- Oddish - Swords Dance - TM75
  (43, 4300, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 32),
  -- Oddish - Infestation - TM83
  (43, 4300, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 33),
  -- Oddish - Grass Knot - TM86
  (43, 4300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 34),
  -- Oddish - Swagger - TM87
  (43, 4300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Oddish - Sleep Talk - TM88
  (43, 4300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Oddish - Substitute - TM90
  (43, 4300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Oddish - Nature Power - TM96
  (43, 4300, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 38),
  -- Oddish - Dazzling Gleam - TM99
  (43, 4300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 39),
  -- Oddish - Confide - TM100
  (43, 4300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Oddish - Razor Leaf - Egg
  (43, 4300, 75, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Oddish - Flail - Egg
  (43, 4300, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Oddish - Charm - Egg
  (43, 4300, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Oddish - Synthesis - Egg
  (43, 4300, 235, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Oddish - Nature Power - Egg
  (43, 4300, 267, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Oddish - Ingrain - Egg
  (43, 4300, 275, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Oddish - Secret Power - Egg
  (43, 4300, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Oddish - Teeter Dance - Egg
  (43, 4300, 298, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Oddish - Tickle - Egg
  (43, 4300, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Oddish - After You - Egg
  (43, 4300, 495, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Oddish - Strength Sap - Egg
  (43, 4300, 668, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Oddish - Snore - Tutor
  (43, 4300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Oddish - Giga Drain - Tutor
  (43, 4300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Oddish - Synthesis - Tutor
  (43, 4300, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Oddish - Gastro Acid - Tutor
  (43, 4300, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Oddish - Worry Seed - Tutor
  (43, 4300, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Oddish - Seed Bomb - Tutor
  (43, 4300, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Oddish - After You - Tutor
  (43, 4300, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Gloom - Acid - Level 1
  (44, 4400, 51, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gloom - Absorb - Level 1
  (44, 4400, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gloom - Growth - Level 1
  (44, 4400, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gloom - Sweet Scent - Level 1
  (44, 4400, 230, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gloom - Sweet Scent - Level 5
  (44, 4400, 230, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Gloom - Acid - Level 9
  (44, 4400, 51, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Gloom - Poison Powder - Level 13
  (44, 4400, 77, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Gloom - Stun Spore - Level 14
  (44, 4400, 78, 16, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Gloom - Sleep Powder - Level 15
  (44, 4400, 79, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Gloom - Mega Drain - Level 19
  (44, 4400, 72, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Gloom - Lucky Chant - Level 24
  (44, 4400, 381, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gloom - Moonlight - Level 29
  (44, 4400, 236, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Gloom - Giga Drain - Level 34
  (44, 4400, 202, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Gloom - Toxic - Level 39
  (44, 4400, 92, 16, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Gloom - Natural Gift - Level 44
  (44, 4400, 363, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Gloom - Petal Blizzard - Level 49
  (44, 4400, 572, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Gloom - Grassy Terrain - Level 54
  (44, 4400, 580, 16, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Gloom - Petal Dance - Level 59
  (44, 4400, 80, 16, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Gloom - Toxic - TM06
  (44, 4400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Gloom - Venoshock - TM09
  (44, 4400, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 20),
  -- Gloom - Hidden Power - TM10
  (44, 4400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Gloom - Sunny Day - TM11
  (44, 4400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Gloom - Protect - TM17
  (44, 4400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Gloom - Frustration - TM21
  (44, 4400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Gloom - Solar Beam - TM22
  (44, 4400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Gloom - Return - TM27
  (44, 4400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Gloom - Double Team - TM32
  (44, 4400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Gloom - Sludge Bomb - TM36
  (44, 4400, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 28),
  -- Gloom - Facade - TM42
  (44, 4400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Gloom - Rest - TM44
  (44, 4400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Gloom - Attract - TM45
  (44, 4400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Gloom - Round - TM48
  (44, 4400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Gloom - Energy Ball - TM53
  (44, 4400, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 33),
  -- Gloom - Fling - TM56
  (44, 4400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 34),
  -- Gloom - Swords Dance - TM75
  (44, 4400, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 35),
  -- Gloom - Infestation - TM83
  (44, 4400, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 36),
  -- Gloom - Grass Knot - TM86
  (44, 4400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 37),
  -- Gloom - Swagger - TM87
  (44, 4400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Gloom - Sleep Talk - TM88
  (44, 4400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Gloom - Substitute - TM90
  (44, 4400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Gloom - Nature Power - TM96
  (44, 4400, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 41),
  -- Gloom - Dazzling Gleam - TM99
  (44, 4400, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 42),
  -- Gloom - Confide - TM100
  (44, 4400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Gloom - Snore - Tutor
  (44, 4400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Gloom - Giga Drain - Tutor
  (44, 4400, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Gloom - Synthesis - Tutor
  (44, 4400, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Gloom - Gastro Acid - Tutor
  (44, 4400, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Gloom - Worry Seed - Tutor
  (44, 4400, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Gloom - Seed Bomb - Tutor
  (44, 4400, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Gloom - Drain Punch - Tutor
  (44, 4400, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Gloom - After You - Tutor
  (44, 4400, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),

  -- Vileplume - Mega Drain - Level 1
  (45, 4500, 72, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vileplume - Poison Powder - Level 1
  (45, 4500, 77, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vileplume - Stun Spore - Level 1
  (45, 4500, 78, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vileplume - Aromatherapy - Level 1
  (45, 4500, 312, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vileplume - Petal Blizzard - Level 49
  (45, 4500, 572, 16, NULL, 1, 49, NULL, NULL, NULL, 5),
  -- Vileplume - Petal Dance - Level 59
  (45, 4500, 80, 16, NULL, 1, 59, NULL, NULL, NULL, 6),
  -- Vileplume - Solar Beam - Level 69
  (45, 4500, 76, 16, NULL, 1, 69, NULL, NULL, NULL, 7),
  -- Vileplume - Toxic - TM06
  (45, 4500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 8),
  -- Vileplume - Venoshock - TM09
  (45, 4500, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 9),
  -- Vileplume - Hidden Power - TM10
  (45, 4500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 10),
  -- Vileplume - Sunny Day - TM11
  (45, 4500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 11),
  -- Vileplume - Hyper Beam - TM15
  (45, 4500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 12),
  -- Vileplume - Protect - TM17
  (45, 4500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 13),
  -- Vileplume - Safeguard - TM20
  (45, 4500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 14),
  -- Vileplume - Frustration - TM21
  (45, 4500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 15),
  -- Vileplume - Solar Beam - TM22
  (45, 4500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 16),
  -- Vileplume - Return - TM27
  (45, 4500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 17),
  -- Vileplume - Double Team - TM32
  (45, 4500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 18),
  -- Vileplume - Sludge Bomb - TM36
  (45, 4500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 19),
  -- Vileplume - Facade - TM42
  (45, 4500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 20),
  -- Vileplume - Rest - TM44
  (45, 4500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 21),
  -- Vileplume - Attract - TM45
  (45, 4500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 22),
  -- Vileplume - Round - TM48
  (45, 4500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 23),
  -- Vileplume - Energy Ball - TM53
  (45, 4500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 24),
  -- Vileplume - Fling - TM56
  (45, 4500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 25),
  -- Vileplume - Giga Impact - TM68
  (45, 4500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 26),
  -- Vileplume - Swords Dance - TM75
  (45, 4500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 27),
  -- Vileplume - Infestation - TM83
  (45, 4500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 28),
  -- Vileplume - Grass Knot - TM86
  (45, 4500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 29),
  -- Vileplume - Swagger - TM87
  (45, 4500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 30),
  -- Vileplume - Sleep Talk - TM88
  (45, 4500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 31),
  -- Vileplume - Substitute - TM90
  (45, 4500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 32),
  -- Vileplume - Nature Power - TM96
  (45, 4500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 33),
  -- Vileplume - Dazzling Gleam - TM99
  (45, 4500, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 34),
  -- Vileplume - Confide - TM100
  (45, 4500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 35),
  -- Vileplume - Snore - Tutor
  (45, 4500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 36),
  -- Vileplume - Giga Drain - Tutor
  (45, 4500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 37),
  -- Vileplume - Synthesis - Tutor
  (45, 4500, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Vileplume - Gastro Acid - Tutor
  (45, 4500, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Vileplume - Worry Seed - Tutor
  (45, 4500, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Vileplume - Seed Bomb - Tutor
  (45, 4500, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Vileplume - Drain Punch - Tutor
  (45, 4500, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Vileplume - After You - Tutor
  (45, 4500, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),

  -- Paras - Scratch - Level 1
  (46, 4600, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Paras - Poison Powder - Level 6
  (46, 4600, 77, 16, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Paras - Stun Spore - Level 6
  (46, 4600, 78, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Paras - Absorb - Level 11
  (46, 4600, 71, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Paras - Fury Cutter - Level 17
  (46, 4600, 210, 16, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Paras - Spore - Level 22
  (46, 4600, 147, 16, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Paras - Slash - Level 27
  (46, 4600, 163, 16, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Paras - Growth - Level 33
  (46, 4600, 74, 16, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Paras - Giga Drain - Level 38
  (46, 4600, 202, 16, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Paras - Aromatherapy - Level 43
  (46, 4600, 312, 16, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Paras - Rage Powder - Level 49
  (46, 4600, 476, 16, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Paras - X-Scissor - Level 54
  (46, 4600, 404, 16, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Paras - Toxic - TM06
  (46, 4600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 13),
  -- Paras - Venoshock - TM09
  (46, 4600, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 14),
  -- Paras - Hidden Power - TM10
  (46, 4600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Paras - Sunny Day - TM11
  (46, 4600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 16),
  -- Paras - Light Screen - TM16
  (46, 4600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 17),
  -- Paras - Protect - TM17
  (46, 4600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Paras - Frustration - TM21
  (46, 4600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Paras - Solar Beam - TM22
  (46, 4600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 20),
  -- Paras - Return - TM27
  (46, 4600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Paras - Leech Life - TM28
  (46, 4600, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 22),
  -- Paras - Brick Break - TM31
  (46, 4600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 23),
  -- Paras - Double Team - TM32
  (46, 4600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Paras - Sludge Bomb - TM36
  (46, 4600, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 25),
  -- Paras - Aerial Ace - TM40
  (46, 4600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 26),
  -- Paras - Facade - TM42
  (46, 4600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Paras - Rest - TM44
  (46, 4600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Paras - Attract - TM45
  (46, 4600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Paras - Thief - TM46
  (46, 4600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Paras - Round - TM48
  (46, 4600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Paras - Energy Ball - TM53
  (46, 4600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 32),
  -- Paras - False Swipe - TM54
  (46, 4600, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 33),
  -- Paras - Swords Dance - TM75
  (46, 4600, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 34),
  -- Paras - X-Scissor - TM81
  (46, 4600, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 35),
  -- Paras - Grass Knot - TM86
  (46, 4600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 36),
  -- Paras - Swagger - TM87
  (46, 4600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Paras - Sleep Talk - TM88
  (46, 4600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Paras - Substitute - TM90
  (46, 4600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Paras - Nature Power - TM96
  (46, 4600, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 40),
  -- Paras - Confide - TM100
  (46, 4600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Paras - Psybeam - Egg
  (46, 4600, 60, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Paras - Counter - Egg
  (46, 4600, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Paras - Leech Seed - Egg
  (46, 4600, 73, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Paras - Agility - Egg
  (46, 4600, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Paras - Screech - Egg
  (46, 4600, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Paras - Flail - Egg
  (46, 4600, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Paras - Endure - Egg
  (46, 4600, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Paras - Pursuit - Egg
  (46, 4600, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Paras - Sweet Scent - Egg
  (46, 4600, 230, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Paras - Metal Claw - Egg
  (46, 4600, 232, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Paras - Natural Gift - Egg
  (46, 4600, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Paras - Cross Poison - Egg
  (46, 4600, 440, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Paras - Bug Bite - Egg
  (46, 4600, 450, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Paras - Wide Guard - Egg
  (46, 4600, 469, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Paras - Rototiller - Egg
  (46, 4600, 563, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Paras - Fell Stinger - Egg
  (46, 4600, 565, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Paras - Grassy Terrain - Egg
  (46, 4600, 580, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Paras - Snore - Tutor
  (46, 4600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Paras - Giga Drain - Tutor
  (46, 4600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Paras - Synthesis - Tutor
  (46, 4600, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Paras - Knock Off - Tutor
  (46, 4600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Paras - Worry Seed - Tutor
  (46, 4600, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Paras - Seed Bomb - Tutor
  (46, 4600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Paras - Bug Bite - Tutor
  (46, 4600, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Paras - After You - Tutor
  (46, 4600, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Parasect - Scratch - Level 1
  (47, 4700, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Parasect - Absorb - Level 1
  (47, 4700, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Parasect - Poison Powder - Level 1
  (47, 4700, 77, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Parasect - Stun Spore - Level 1
  (47, 4700, 78, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Parasect - Cross Poison - Level 1
  (47, 4700, 440, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Parasect - Poison Powder - Level 6
  (47, 4700, 77, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Parasect - Stun Spore - Level 6
  (47, 4700, 78, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Parasect - Absorb - Level 11
  (47, 4700, 71, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Parasect - Fury Cutter - Level 17
  (47, 4700, 210, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Parasect - Spore - Level 22
  (47, 4700, 147, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Parasect - Slash - Level 29
  (47, 4700, 163, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Parasect - Growth - Level 37
  (47, 4700, 74, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Parasect - Giga Drain - Level 44
  (47, 4700, 202, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Parasect - Aromatherapy - Level 51
  (47, 4700, 312, 16, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Parasect - Rage Powder - Level 59
  (47, 4700, 476, 16, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Parasect - X-Scissor - Level 66
  (47, 4700, 404, 16, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Parasect - Toxic - TM06
  (47, 4700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Parasect - Venoshock - TM09
  (47, 4700, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 18),
  -- Parasect - Hidden Power - TM10
  (47, 4700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Parasect - Sunny Day - TM11
  (47, 4700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Parasect - Hyper Beam - TM15
  (47, 4700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Parasect - Light Screen - TM16
  (47, 4700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Parasect - Protect - TM17
  (47, 4700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Parasect - Frustration - TM21
  (47, 4700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Parasect - Solar Beam - TM22
  (47, 4700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Parasect - Return - TM27
  (47, 4700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Parasect - Leech Life - TM28
  (47, 4700, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 27),
  -- Parasect - Brick Break - TM31
  (47, 4700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Parasect - Double Team - TM32
  (47, 4700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Parasect - Sludge Bomb - TM36
  (47, 4700, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 30),
  -- Parasect - Aerial Ace - TM40
  (47, 4700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Parasect - Facade - TM42
  (47, 4700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Parasect - Rest - TM44
  (47, 4700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Parasect - Attract - TM45
  (47, 4700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Parasect - Thief - TM46
  (47, 4700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Parasect - Round - TM48
  (47, 4700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Parasect - Energy Ball - TM53
  (47, 4700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 37),
  -- Parasect - False Swipe - TM54
  (47, 4700, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 38),
  -- Parasect - Giga Impact - TM68
  (47, 4700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 39),
  -- Parasect - Swords Dance - TM75
  (47, 4700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 40),
  -- Parasect - X-Scissor - TM81
  (47, 4700, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 41),
  -- Parasect - Grass Knot - TM86
  (47, 4700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 42),
  -- Parasect - Swagger - TM87
  (47, 4700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Parasect - Sleep Talk - TM88
  (47, 4700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Parasect - Substitute - TM90
  (47, 4700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Parasect - Nature Power - TM96
  (47, 4700, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 46),
  -- Parasect - Confide - TM100
  (47, 4700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Parasect - Snore - Tutor
  (47, 4700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Parasect - Giga Drain - Tutor
  (47, 4700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Parasect - Synthesis - Tutor
  (47, 4700, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Parasect - Knock Off - Tutor
  (47, 4700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Parasect - Worry Seed - Tutor
  (47, 4700, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Parasect - Seed Bomb - Tutor
  (47, 4700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Parasect - Bug Bite - Tutor
  (47, 4700, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Parasect - After You - Tutor
  (47, 4700, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Parasect - Throat Chop - Tutor
  (47, 4700, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),

  -- Venonat - Tackle - Level 1
  (48, 4800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venonat - Disable - Level 1
  (48, 4800, 50, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venonat - Foresight - Level 1
  (48, 4800, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venonat - Supersonic - Level 5
  (48, 4800, 48, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Venonat - Confusion - Level 11
  (48, 4800, 93, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Venonat - Poison Powder - Level 13
  (48, 4800, 77, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Venonat - Psybeam - Level 17
  (48, 4800, 60, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Venonat - Stun Spore - Level 23
  (48, 4800, 78, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Venonat - Signal Beam - Level 25
  (48, 4800, 324, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Venonat - Sleep Powder - Level 29
  (48, 4800, 79, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Venonat - Leech Life - Level 35
  (48, 4800, 141, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Venonat - Zen Headbutt - Level 37
  (48, 4800, 428, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Venonat - Poison Fang - Level 41
  (48, 4800, 305, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Venonat - Psychic - Level 47
  (48, 4800, 94, 16, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Venonat - Toxic - TM06
  (48, 4800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Venonat - Venoshock - TM09
  (48, 4800, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 16),
  -- Venonat - Hidden Power - TM10
  (48, 4800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Venonat - Sunny Day - TM11
  (48, 4800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Venonat - Protect - TM17
  (48, 4800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Venonat - Frustration - TM21
  (48, 4800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Venonat - Solar Beam - TM22
  (48, 4800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 21),
  -- Venonat - Return - TM27
  (48, 4800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Venonat - Leech Life - TM28
  (48, 4800, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 23),
  -- Venonat - Psychic - TM29
  (48, 4800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 24),
  -- Venonat - Double Team - TM32
  (48, 4800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Venonat - Sludge Bomb - TM36
  (48, 4800, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 26),
  -- Venonat - Facade - TM42
  (48, 4800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Venonat - Rest - TM44
  (48, 4800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Venonat - Attract - TM45
  (48, 4800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Venonat - Thief - TM46
  (48, 4800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Venonat - Round - TM48
  (48, 4800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Venonat - Infestation - TM83
  (48, 4800, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 32),
  -- Venonat - Swagger - TM87
  (48, 4800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Venonat - Sleep Talk - TM88
  (48, 4800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Venonat - Substitute - TM90
  (48, 4800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 35),
  -- Venonat - Confide - TM100
  (48, 4800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 36),
  -- Venonat - Agility - Egg
  (48, 4800, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Venonat - Screech - Egg
  (48, 4800, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Venonat - Giga Drain - Egg
  (48, 4800, 202, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Venonat - Baton Pass - Egg
  (48, 4800, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Venonat - Morning Sun - Egg
  (48, 4800, 234, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Venonat - Skill Swap - Egg
  (48, 4800, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Venonat - Secret Power - Egg
  (48, 4800, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Venonat - Signal Beam - Egg
  (48, 4800, 324, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Venonat - Toxic Spikes - Egg
  (48, 4800, 390, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Venonat - Bug Bite - Egg
  (48, 4800, 450, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Venonat - Rage Powder - Egg
  (48, 4800, 476, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Venonat - Snore - Tutor
  (48, 4800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Venonat - Giga Drain - Tutor
  (48, 4800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Venonat - Skill Swap - Tutor
  (48, 4800, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Venonat - Signal Beam - Tutor
  (48, 4800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Venonat - Zen Headbutt - Tutor
  (48, 4800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Venonat - Bug Bite - Tutor
  (48, 4800, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Venomoth - Gust - Level 1
  (49, 4900, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venomoth - Tackle - Level 1
  (49, 4900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venomoth - Supersonic - Level 1
  (49, 4900, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Venomoth - Disable - Level 1
  (49, 4900, 50, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Venomoth - Foresight - Level 1
  (49, 4900, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Venomoth - Silver Wind - Level 1
  (49, 4900, 318, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Venomoth - Bug Buzz - Level 1
  (49, 4900, 405, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Venomoth - Quiver Dance - Level 1
  (49, 4900, 483, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Venomoth - Supersonic - Level 5
  (49, 4900, 48, 16, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Venomoth - Confusion - Level 11
  (49, 4900, 93, 16, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Venomoth - Poison Powder - Level 13
  (49, 4900, 77, 16, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Venomoth - Psybeam - Level 17
  (49, 4900, 60, 16, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Venomoth - Stun Spore - Level 23
  (49, 4900, 78, 16, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Venomoth - Signal Beam - Level 25
  (49, 4900, 324, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Venomoth - Sleep Powder - Level 29
  (49, 4900, 79, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Venomoth - Leech Life - Level 37
  (49, 4900, 141, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Venomoth - Zen Headbutt - Level 41
  (49, 4900, 428, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Venomoth - Poison Fang - Level 47
  (49, 4900, 305, 16, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Venomoth - Psychic - Level 55
  (49, 4900, 94, 16, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Venomoth - Bug Buzz - Level 59
  (49, 4900, 405, 16, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Venomoth - Quiver Dance - Level 63
  (49, 4900, 483, 16, NULL, 1, 63, NULL, NULL, NULL, 21),
  -- Venomoth - Toxic - TM06
  (49, 4900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Venomoth - Venoshock - TM09
  (49, 4900, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 23),
  -- Venomoth - Hidden Power - TM10
  (49, 4900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Venomoth - Sunny Day - TM11
  (49, 4900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Venomoth - Hyper Beam - TM15
  (49, 4900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Venomoth - Protect - TM17
  (49, 4900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Venomoth - Roost - TM19
  (49, 4900, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 28),
  -- Venomoth - Frustration - TM21
  (49, 4900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Venomoth - Solar Beam - TM22
  (49, 4900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Venomoth - Return - TM27
  (49, 4900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Venomoth - Leech Life - TM28
  (49, 4900, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 32),
  -- Venomoth - Psychic - TM29
  (49, 4900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Venomoth - Double Team - TM32
  (49, 4900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Venomoth - Sludge Bomb - TM36
  (49, 4900, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Venomoth - Aerial Ace - TM40
  (49, 4900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Venomoth - Facade - TM42
  (49, 4900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Venomoth - Rest - TM44
  (49, 4900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Venomoth - Attract - TM45
  (49, 4900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Venomoth - Thief - TM46
  (49, 4900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Venomoth - Round - TM48
  (49, 4900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Venomoth - Energy Ball - TM53
  (49, 4900, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 42),
  -- Venomoth - Acrobatics - TM62
  (49, 4900, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 43),
  -- Venomoth - Giga Impact - TM68
  (49, 4900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Venomoth - Infestation - TM83
  (49, 4900, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 45),
  -- Venomoth - Swagger - TM87
  (49, 4900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Venomoth - Sleep Talk - TM88
  (49, 4900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Venomoth - U-turn - TM89
  (49, 4900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 48),
  -- Venomoth - Substitute - TM90
  (49, 4900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Venomoth - Confide - TM100
  (49, 4900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Venomoth - Snore - Tutor
  (49, 4900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Venomoth - Giga Drain - Tutor
  (49, 4900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Venomoth - Skill Swap - Tutor
  (49, 4900, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Venomoth - Signal Beam - Tutor
  (49, 4900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Venomoth - Tailwind - Tutor
  (49, 4900, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Venomoth - Zen Headbutt - Tutor
  (49, 4900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Venomoth - Defog - Tutor
  (49, 4900, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Venomoth - Bug Bite - Tutor
  (49, 4900, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Venomoth - Gust - Evolution
  (49, 4900, 16, 16, NULL, 7, NULL, NULL, NULL, NULL, 59),

  -- Diglett - Scratch - Level 1
  (50, 5000, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diglett - Sand Attack - Level 1
  (50, 5000, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diglett - Growl - Level 4
  (50, 5000, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Diglett - Astonish - Level 7
  (50, 5000, 310, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Diglett - Mud-Slap - Level 10
  (50, 5000, 189, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Diglett - Magnitude - Level 14
  (50, 5000, 222, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Diglett - Bulldoze - Level 18
  (50, 5000, 523, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Diglett - Sucker Punch - Level 22
  (50, 5000, 389, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Diglett - Mud Bomb - Level 25
  (50, 5000, 426, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Diglett - Earth Power - Level 28
  (50, 5000, 414, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Diglett - Dig - Level 31
  (50, 5000, 91, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Diglett - Slash - Level 35
  (50, 5000, 163, 16, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Diglett - Earthquake - Level 39
  (50, 5000, 89, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Diglett - Fissure - Level 43
  (50, 5000, 90, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Diglett - Toxic - TM06
  (50, 5000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Diglett - Hidden Power - TM10
  (50, 5000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Diglett - Sunny Day - TM11
  (50, 5000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Diglett - Protect - TM17
  (50, 5000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Diglett - Frustration - TM21
  (50, 5000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Diglett - Earthquake - TM26
  (50, 5000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 20),
  -- Diglett - Return - TM27
  (50, 5000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Diglett - Double Team - TM32
  (50, 5000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Diglett - Sludge Bomb - TM36
  (50, 5000, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 23),
  -- Diglett - Sandstorm - TM37
  (50, 5000, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 24),
  -- Diglett - Rock Tomb - TM39
  (50, 5000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 25),
  -- Diglett - Aerial Ace - TM40
  (50, 5000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 26),
  -- Diglett - Facade - TM42
  (50, 5000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Diglett - Rest - TM44
  (50, 5000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Diglett - Attract - TM45
  (50, 5000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Diglett - Thief - TM46
  (50, 5000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Diglett - Round - TM48
  (50, 5000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Diglett - Echoed Voice - TM49
  (50, 5000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 32),
  -- Diglett - Shadow Claw - TM65
  (50, 5000, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 33),
  -- Diglett - Bulldoze - TM78
  (50, 5000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 34),
  -- Diglett - Rock Slide - TM80
  (50, 5000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 35),
  -- Diglett - Swagger - TM87
  (50, 5000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Diglett - Sleep Talk - TM88
  (50, 5000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Diglett - Substitute - TM90
  (50, 5000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Diglett - Confide - TM100
  (50, 5000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Diglett - Headbutt - Egg
  (50, 5000, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Diglett - Screech - Egg
  (50, 5000, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Diglett - Reversal - Egg
  (50, 5000, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Diglett - Feint Attack - Egg
  (50, 5000, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Diglett - Endure - Egg
  (50, 5000, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Diglett - Pursuit - Egg
  (50, 5000, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Diglett - Ancient Power - Egg
  (50, 5000, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Diglett - Beat Up - Egg
  (50, 5000, 251, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Diglett - Uproar - Egg
  (50, 5000, 253, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Diglett - Memento - Egg
  (50, 5000, 262, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Diglett - Astonish - Egg
  (50, 5000, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Diglett - Mud Bomb - Egg
  (50, 5000, 426, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Diglett - Final Gambit - Egg
  (50, 5000, 515, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Diglett - Snore - Tutor
  (50, 5000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Diglett - Earth Power - Tutor
  (50, 5000, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Diglett - Stealth Rock - Tutor
  (50, 5000, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Diglett - Stomping Tantrum - Tutor
  (50, 5000, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56);
