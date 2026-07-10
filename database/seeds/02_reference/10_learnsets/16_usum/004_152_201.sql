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
-- Ultra Sun / Ultra Moon learnsets for default forms, species 152-201.
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
  (152, 15200, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chikorita - Growl - Level 1
  (152, 15200, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chikorita - Razor Leaf - Level 6
  (152, 15200, 75, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Chikorita - Poison Powder - Level 9
  (152, 15200, 77, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chikorita - Synthesis - Level 12
  (152, 15200, 235, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chikorita - Reflect - Level 17
  (152, 15200, 115, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chikorita - Magical Leaf - Level 20
  (152, 15200, 345, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chikorita - Natural Gift - Level 23
  (152, 15200, 363, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chikorita - Sweet Scent - Level 28
  (152, 15200, 230, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Chikorita - Light Screen - Level 31
  (152, 15200, 113, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Chikorita - Body Slam - Level 34
  (152, 15200, 34, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Chikorita - Safeguard - Level 39
  (152, 15200, 219, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Chikorita - Aromatherapy - Level 42
  (152, 15200, 312, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Chikorita - Solar Beam - Level 45
  (152, 15200, 76, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Chikorita - Work Up - TM01
  (152, 15200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 15),
  -- Chikorita - Toxic - TM06
  (152, 15200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Chikorita - Hidden Power - TM10
  (152, 15200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Chikorita - Sunny Day - TM11
  (152, 15200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Chikorita - Light Screen - TM16
  (152, 15200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 19),
  -- Chikorita - Protect - TM17
  (152, 15200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Chikorita - Safeguard - TM20
  (152, 15200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 21),
  -- Chikorita - Frustration - TM21
  (152, 15200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Chikorita - Solar Beam - TM22
  (152, 15200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Chikorita - Return - TM27
  (152, 15200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Chikorita - Double Team - TM32
  (152, 15200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Chikorita - Reflect - TM33
  (152, 15200, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 26),
  -- Chikorita - Facade - TM42
  (152, 15200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Chikorita - Rest - TM44
  (152, 15200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Chikorita - Attract - TM45
  (152, 15200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Chikorita - Round - TM48
  (152, 15200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Chikorita - Echoed Voice - TM49
  (152, 15200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 31),
  -- Chikorita - Energy Ball - TM53
  (152, 15200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 32),
  -- Chikorita - Swords Dance - TM75
  (152, 15200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 33),
  -- Chikorita - Grass Knot - TM86
  (152, 15200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 34),
  -- Chikorita - Swagger - TM87
  (152, 15200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Chikorita - Sleep Talk - TM88
  (152, 15200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Chikorita - Substitute - TM90
  (152, 15200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Chikorita - Nature Power - TM96
  (152, 15200, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 38),
  -- Chikorita - Confide - TM100
  (152, 15200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Chikorita - Vine Whip - Egg
  (152, 15200, 22, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Chikorita - Body Slam - Egg
  (152, 15200, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Chikorita - Counter - Egg
  (152, 15200, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chikorita - Leech Seed - Egg
  (152, 15200, 73, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chikorita - Flail - Egg
  (152, 15200, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chikorita - Ancient Power - Egg
  (152, 15200, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chikorita - Nature Power - Egg
  (152, 15200, 267, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chikorita - Ingrain - Egg
  (152, 15200, 275, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chikorita - Refresh - Egg
  (152, 15200, 287, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chikorita - Aromatherapy - Egg
  (152, 15200, 312, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chikorita - Grass Whistle - Egg
  (152, 15200, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chikorita - Wring Out - Egg
  (152, 15200, 378, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chikorita - Leaf Storm - Egg
  (152, 15200, 437, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chikorita - Heal Pulse - Egg
  (152, 15200, 505, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chikorita - Grassy Terrain - Egg
  (152, 15200, 580, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chikorita - Snore - Tutor
  (152, 15200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Chikorita - Giga Drain - Tutor
  (152, 15200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Chikorita - Iron Tail - Tutor
  (152, 15200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Chikorita - Synthesis - Tutor
  (152, 15200, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Chikorita - Magic Coat - Tutor
  (152, 15200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Chikorita - Worry Seed - Tutor
  (152, 15200, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Chikorita - Seed Bomb - Tutor
  (152, 15200, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Chikorita - Grass Pledge - Tutor
  (152, 15200, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Bayleef - Tackle - Level 1
  (153, 15300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bayleef - Growl - Level 1
  (153, 15300, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bayleef - Razor Leaf - Level 1
  (153, 15300, 75, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bayleef - Poison Powder - Level 1
  (153, 15300, 77, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bayleef - Razor Leaf - Level 6
  (153, 15300, 75, 16, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Bayleef - Poison Powder - Level 9
  (153, 15300, 77, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Bayleef - Synthesis - Level 12
  (153, 15300, 235, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Bayleef - Reflect - Level 18
  (153, 15300, 115, 16, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Bayleef - Magical Leaf - Level 22
  (153, 15300, 345, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Bayleef - Natural Gift - Level 26
  (153, 15300, 363, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Bayleef - Sweet Scent - Level 32
  (153, 15300, 230, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Bayleef - Light Screen - Level 36
  (153, 15300, 113, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bayleef - Body Slam - Level 40
  (153, 15300, 34, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Bayleef - Safeguard - Level 46
  (153, 15300, 219, 16, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Bayleef - Aromatherapy - Level 50
  (153, 15300, 312, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Bayleef - Solar Beam - Level 54
  (153, 15300, 76, 16, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Bayleef - Work Up - TM01
  (153, 15300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Bayleef - Toxic - TM06
  (153, 15300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Bayleef - Hidden Power - TM10
  (153, 15300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Bayleef - Sunny Day - TM11
  (153, 15300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Bayleef - Light Screen - TM16
  (153, 15300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 21),
  -- Bayleef - Protect - TM17
  (153, 15300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Bayleef - Safeguard - TM20
  (153, 15300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 23),
  -- Bayleef - Frustration - TM21
  (153, 15300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Bayleef - Solar Beam - TM22
  (153, 15300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Bayleef - Return - TM27
  (153, 15300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Bayleef - Double Team - TM32
  (153, 15300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Bayleef - Reflect - TM33
  (153, 15300, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 28),
  -- Bayleef - Facade - TM42
  (153, 15300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Bayleef - Rest - TM44
  (153, 15300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Bayleef - Attract - TM45
  (153, 15300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Bayleef - Round - TM48
  (153, 15300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Bayleef - Echoed Voice - TM49
  (153, 15300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 33),
  -- Bayleef - Energy Ball - TM53
  (153, 15300, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 34),
  -- Bayleef - Swords Dance - TM75
  (153, 15300, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 35),
  -- Bayleef - Grass Knot - TM86
  (153, 15300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 36),
  -- Bayleef - Swagger - TM87
  (153, 15300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Bayleef - Sleep Talk - TM88
  (153, 15300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Bayleef - Substitute - TM90
  (153, 15300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Bayleef - Nature Power - TM96
  (153, 15300, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 40),
  -- Bayleef - Confide - TM100
  (153, 15300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Bayleef - Snore - Tutor
  (153, 15300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Bayleef - Giga Drain - Tutor
  (153, 15300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Bayleef - Iron Tail - Tutor
  (153, 15300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Bayleef - Synthesis - Tutor
  (153, 15300, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Bayleef - Magic Coat - Tutor
  (153, 15300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Bayleef - Worry Seed - Tutor
  (153, 15300, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Bayleef - Seed Bomb - Tutor
  (153, 15300, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Bayleef - Grass Pledge - Tutor
  (153, 15300, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Bayleef - Laser Focus - Tutor
  (153, 15300, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),

  -- Meganium - Tackle - Level 1
  (154, 15400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meganium - Growl - Level 1
  (154, 15400, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meganium - Razor Leaf - Level 1
  (154, 15400, 75, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meganium - Poison Powder - Level 1
  (154, 15400, 77, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meganium - Petal Dance - Level 1
  (154, 15400, 80, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Meganium - Petal Blizzard - Level 1
  (154, 15400, 572, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Meganium - Razor Leaf - Level 6
  (154, 15400, 75, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Meganium - Poison Powder - Level 9
  (154, 15400, 77, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Meganium - Synthesis - Level 12
  (154, 15400, 235, 16, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Meganium - Reflect - Level 18
  (154, 15400, 115, 16, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Meganium - Magical Leaf - Level 22
  (154, 15400, 345, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Meganium - Natural Gift - Level 26
  (154, 15400, 363, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Meganium - Sweet Scent - Level 34
  (154, 15400, 230, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Meganium - Light Screen - Level 40
  (154, 15400, 113, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Meganium - Body Slam - Level 46
  (154, 15400, 34, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Meganium - Safeguard - Level 54
  (154, 15400, 219, 16, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Meganium - Aromatherapy - Level 60
  (154, 15400, 312, 16, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Meganium - Solar Beam - Level 66
  (154, 15400, 76, 16, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Meganium - Petal Blizzard - Level 70
  (154, 15400, 572, 16, NULL, 1, 70, NULL, NULL, NULL, 19),
  -- Meganium - Work Up - TM01
  (154, 15400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Meganium - Toxic - TM06
  (154, 15400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Meganium - Hidden Power - TM10
  (154, 15400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Meganium - Sunny Day - TM11
  (154, 15400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Meganium - Hyper Beam - TM15
  (154, 15400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Meganium - Light Screen - TM16
  (154, 15400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Meganium - Protect - TM17
  (154, 15400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Meganium - Safeguard - TM20
  (154, 15400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Meganium - Frustration - TM21
  (154, 15400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Meganium - Solar Beam - TM22
  (154, 15400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Meganium - Earthquake - TM26
  (154, 15400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Meganium - Return - TM27
  (154, 15400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Meganium - Double Team - TM32
  (154, 15400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Meganium - Reflect - TM33
  (154, 15400, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 33),
  -- Meganium - Facade - TM42
  (154, 15400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Meganium - Rest - TM44
  (154, 15400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Meganium - Attract - TM45
  (154, 15400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Meganium - Round - TM48
  (154, 15400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Meganium - Echoed Voice - TM49
  (154, 15400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 38),
  -- Meganium - Energy Ball - TM53
  (154, 15400, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 39),
  -- Meganium - Giga Impact - TM68
  (154, 15400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Meganium - Swords Dance - TM75
  (154, 15400, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 41),
  -- Meganium - Bulldoze - TM78
  (154, 15400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 42),
  -- Meganium - Dragon Tail - TM82
  (154, 15400, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 43),
  -- Meganium - Grass Knot - TM86
  (154, 15400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 44),
  -- Meganium - Swagger - TM87
  (154, 15400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Meganium - Sleep Talk - TM88
  (154, 15400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Meganium - Substitute - TM90
  (154, 15400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Meganium - Nature Power - TM96
  (154, 15400, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 48),
  -- Meganium - Confide - TM100
  (154, 15400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Meganium - Snore - Tutor
  (154, 15400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Meganium - Outrage - Tutor
  (154, 15400, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Meganium - Giga Drain - Tutor
  (154, 15400, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Meganium - Iron Tail - Tutor
  (154, 15400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Meganium - Synthesis - Tutor
  (154, 15400, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Meganium - Magic Coat - Tutor
  (154, 15400, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Meganium - Frenzy Plant - Tutor
  (154, 15400, 338, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Meganium - Worry Seed - Tutor
  (154, 15400, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Meganium - Seed Bomb - Tutor
  (154, 15400, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Meganium - Grass Pledge - Tutor
  (154, 15400, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Meganium - Laser Focus - Tutor
  (154, 15400, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Meganium - Stomping Tantrum - Tutor
  (154, 15400, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Meganium - Petal Dance - Evolution
  (154, 15400, 80, 16, NULL, 7, NULL, NULL, NULL, NULL, 62),

  -- Cyndaquil - Tackle - Level 1
  (155, 15500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cyndaquil - Leer - Level 1
  (155, 15500, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cyndaquil - Smokescreen - Level 6
  (155, 15500, 108, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cyndaquil - Ember - Level 10
  (155, 15500, 52, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cyndaquil - Quick Attack - Level 13
  (155, 15500, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cyndaquil - Flame Wheel - Level 19
  (155, 15500, 172, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cyndaquil - Defense Curl - Level 22
  (155, 15500, 111, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cyndaquil - Flame Charge - Level 28
  (155, 15500, 488, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cyndaquil - Swift - Level 31
  (155, 15500, 129, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Cyndaquil - Lava Plume - Level 37
  (155, 15500, 436, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cyndaquil - Flamethrower - Level 40
  (155, 15500, 53, 16, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cyndaquil - Inferno - Level 46
  (155, 15500, 517, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cyndaquil - Rollout - Level 49
  (155, 15500, 205, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Cyndaquil - Double-Edge - Level 55
  (155, 15500, 38, 16, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Cyndaquil - Burn Up - Level 58
  (155, 15500, 682, 16, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Cyndaquil - Eruption - Level 64
  (155, 15500, 284, 16, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Cyndaquil - Work Up - TM01
  (155, 15500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Cyndaquil - Toxic - TM06
  (155, 15500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Cyndaquil - Hidden Power - TM10
  (155, 15500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Cyndaquil - Sunny Day - TM11
  (155, 15500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Cyndaquil - Protect - TM17
  (155, 15500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Cyndaquil - Frustration - TM21
  (155, 15500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Cyndaquil - Return - TM27
  (155, 15500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Cyndaquil - Double Team - TM32
  (155, 15500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Cyndaquil - Flamethrower - TM35
  (155, 15500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 25),
  -- Cyndaquil - Fire Blast - TM38
  (155, 15500, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 26),
  -- Cyndaquil - Aerial Ace - TM40
  (155, 15500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Cyndaquil - Facade - TM42
  (155, 15500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Cyndaquil - Flame Charge - TM43
  (155, 15500, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 29),
  -- Cyndaquil - Rest - TM44
  (155, 15500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Cyndaquil - Attract - TM45
  (155, 15500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Cyndaquil - Round - TM48
  (155, 15500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Cyndaquil - Overheat - TM50
  (155, 15500, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 33),
  -- Cyndaquil - Will-O-Wisp - TM61
  (155, 15500, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 34),
  -- Cyndaquil - Swagger - TM87
  (155, 15500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Cyndaquil - Sleep Talk - TM88
  (155, 15500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Cyndaquil - Substitute - TM90
  (155, 15500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Cyndaquil - Wild Charge - TM93
  (155, 15500, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 38),
  -- Cyndaquil - Nature Power - TM96
  (155, 15500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 39),
  -- Cyndaquil - Confide - TM100
  (155, 15500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Cyndaquil - Double Kick - Egg
  (155, 15500, 24, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cyndaquil - Thrash - Egg
  (155, 15500, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cyndaquil - Double-Edge - Egg
  (155, 15500, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cyndaquil - Quick Attack - Egg
  (155, 15500, 98, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cyndaquil - Fury Swipes - Egg
  (155, 15500, 154, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cyndaquil - Reversal - Egg
  (155, 15500, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cyndaquil - Foresight - Egg
  (155, 15500, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cyndaquil - Nature Power - Egg
  (155, 15500, 267, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cyndaquil - Crush Claw - Egg
  (155, 15500, 306, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cyndaquil - Extrasensory - Egg
  (155, 15500, 326, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cyndaquil - Howl - Egg
  (155, 15500, 336, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cyndaquil - Covet - Egg
  (155, 15500, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cyndaquil - Flare Blitz - Egg
  (155, 15500, 394, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cyndaquil - Flame Burst - Egg
  (155, 15500, 481, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cyndaquil - Snore - Tutor
  (155, 15500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Cyndaquil - Heat Wave - Tutor
  (155, 15500, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Cyndaquil - Covet - Tutor
  (155, 15500, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Cyndaquil - Fire Pledge - Tutor
  (155, 15500, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Quilava - Tackle - Level 1
  (156, 15600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quilava - Leer - Level 1
  (156, 15600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quilava - Smokescreen - Level 1
  (156, 15600, 108, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quilava - Smokescreen - Level 6
  (156, 15600, 108, 16, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Quilava - Ember - Level 10
  (156, 15600, 52, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Quilava - Quick Attack - Level 13
  (156, 15600, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Quilava - Flame Wheel - Level 20
  (156, 15600, 172, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Quilava - Defense Curl - Level 24
  (156, 15600, 111, 16, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Quilava - Swift - Level 31
  (156, 15600, 129, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Quilava - Flame Charge - Level 35
  (156, 15600, 488, 16, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Quilava - Lava Plume - Level 42
  (156, 15600, 436, 16, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Quilava - Flamethrower - Level 46
  (156, 15600, 53, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Quilava - Inferno - Level 53
  (156, 15600, 517, 16, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Quilava - Rollout - Level 57
  (156, 15600, 205, 16, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Quilava - Double-Edge - Level 64
  (156, 15600, 38, 16, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Quilava - Burn Up - Level 68
  (156, 15600, 682, 16, NULL, 1, 68, NULL, NULL, NULL, 16),
  -- Quilava - Eruption - Level 75
  (156, 15600, 284, 16, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Quilava - Work Up - TM01
  (156, 15600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Quilava - Roar - TM05
  (156, 15600, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Quilava - Toxic - TM06
  (156, 15600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Quilava - Hidden Power - TM10
  (156, 15600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Quilava - Sunny Day - TM11
  (156, 15600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Quilava - Protect - TM17
  (156, 15600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Quilava - Frustration - TM21
  (156, 15600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Quilava - Return - TM27
  (156, 15600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Quilava - Brick Break - TM31
  (156, 15600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 26),
  -- Quilava - Double Team - TM32
  (156, 15600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Quilava - Flamethrower - TM35
  (156, 15600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 28),
  -- Quilava - Fire Blast - TM38
  (156, 15600, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 29),
  -- Quilava - Aerial Ace - TM40
  (156, 15600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Quilava - Facade - TM42
  (156, 15600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Quilava - Flame Charge - TM43
  (156, 15600, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 32),
  -- Quilava - Rest - TM44
  (156, 15600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Quilava - Attract - TM45
  (156, 15600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Quilava - Round - TM48
  (156, 15600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Quilava - Overheat - TM50
  (156, 15600, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 36),
  -- Quilava - Will-O-Wisp - TM61
  (156, 15600, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 37),
  -- Quilava - Swagger - TM87
  (156, 15600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Quilava - Sleep Talk - TM88
  (156, 15600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Quilava - Substitute - TM90
  (156, 15600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Quilava - Wild Charge - TM93
  (156, 15600, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 41),
  -- Quilava - Nature Power - TM96
  (156, 15600, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 42),
  -- Quilava - Confide - TM100
  (156, 15600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Quilava - Snore - Tutor
  (156, 15600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Quilava - Heat Wave - Tutor
  (156, 15600, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Quilava - Focus Punch - Tutor
  (156, 15600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Quilava - Covet - Tutor
  (156, 15600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Quilava - Fire Pledge - Tutor
  (156, 15600, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),

  -- Typhlosion - Tackle - Level 1
  (157, 15700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Typhlosion - Double-Edge - Level 1
  (157, 15700, 38, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Typhlosion - Leer - Level 1
  (157, 15700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Typhlosion - Ember - Level 1
  (157, 15700, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Typhlosion - Smokescreen - Level 1
  (157, 15700, 108, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Typhlosion - Eruption - Level 1
  (157, 15700, 284, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Typhlosion - Gyro Ball - Level 1
  (157, 15700, 360, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Typhlosion - Smokescreen - Level 6
  (157, 15700, 108, 16, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Typhlosion - Ember - Level 10
  (157, 15700, 52, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Typhlosion - Quick Attack - Level 13
  (157, 15700, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Typhlosion - Flame Wheel - Level 20
  (157, 15700, 172, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Typhlosion - Defense Curl - Level 24
  (157, 15700, 111, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Typhlosion - Swift - Level 31
  (157, 15700, 129, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Typhlosion - Flame Charge - Level 35
  (157, 15700, 488, 16, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Typhlosion - Lava Plume - Level 43
  (157, 15700, 436, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Typhlosion - Flamethrower - Level 48
  (157, 15700, 53, 16, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Typhlosion - Inferno - Level 56
  (157, 15700, 517, 16, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Typhlosion - Rollout - Level 61
  (157, 15700, 205, 16, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Typhlosion - Double-Edge - Level 69
  (157, 15700, 38, 16, NULL, 1, 69, NULL, NULL, NULL, 19),
  -- Typhlosion - Burn Up - Level 74
  (157, 15700, 682, 16, NULL, 1, 74, NULL, NULL, NULL, 20),
  -- Typhlosion - Eruption - Level 82
  (157, 15700, 284, 16, NULL, 1, 82, NULL, NULL, NULL, 21),
  -- Typhlosion - Work Up - TM01
  (157, 15700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 22),
  -- Typhlosion - Roar - TM05
  (157, 15700, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 23),
  -- Typhlosion - Toxic - TM06
  (157, 15700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Typhlosion - Hidden Power - TM10
  (157, 15700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Typhlosion - Sunny Day - TM11
  (157, 15700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Typhlosion - Hyper Beam - TM15
  (157, 15700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Typhlosion - Protect - TM17
  (157, 15700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Typhlosion - Frustration - TM21
  (157, 15700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Typhlosion - Solar Beam - TM22
  (157, 15700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Typhlosion - Earthquake - TM26
  (157, 15700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 31),
  -- Typhlosion - Return - TM27
  (157, 15700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Typhlosion - Brick Break - TM31
  (157, 15700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 33),
  -- Typhlosion - Double Team - TM32
  (157, 15700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Typhlosion - Flamethrower - TM35
  (157, 15700, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 35),
  -- Typhlosion - Fire Blast - TM38
  (157, 15700, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 36),
  -- Typhlosion - Rock Tomb - TM39
  (157, 15700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Typhlosion - Aerial Ace - TM40
  (157, 15700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 38),
  -- Typhlosion - Facade - TM42
  (157, 15700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Typhlosion - Flame Charge - TM43
  (157, 15700, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 40),
  -- Typhlosion - Rest - TM44
  (157, 15700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Typhlosion - Attract - TM45
  (157, 15700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Typhlosion - Round - TM48
  (157, 15700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Typhlosion - Overheat - TM50
  (157, 15700, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 44),
  -- Typhlosion - Focus Blast - TM52
  (157, 15700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 45),
  -- Typhlosion - Fling - TM56
  (157, 15700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 46),
  -- Typhlosion - Will-O-Wisp - TM61
  (157, 15700, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 47),
  -- Typhlosion - Shadow Claw - TM65
  (157, 15700, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 48),
  -- Typhlosion - Giga Impact - TM68
  (157, 15700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Typhlosion - Gyro Ball - TM74
  (157, 15700, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 50),
  -- Typhlosion - Bulldoze - TM78
  (157, 15700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 51),
  -- Typhlosion - Rock Slide - TM80
  (157, 15700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 52),
  -- Typhlosion - Swagger - TM87
  (157, 15700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Typhlosion - Sleep Talk - TM88
  (157, 15700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Typhlosion - Substitute - TM90
  (157, 15700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Typhlosion - Wild Charge - TM93
  (157, 15700, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 56),
  -- Typhlosion - Nature Power - TM96
  (157, 15700, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 57),
  -- Typhlosion - Confide - TM100
  (157, 15700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Typhlosion - Fire Punch - Tutor
  (157, 15700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Typhlosion - Thunder Punch - Tutor
  (157, 15700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Typhlosion - Low Kick - Tutor
  (157, 15700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Typhlosion - Snore - Tutor
  (157, 15700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Typhlosion - Heat Wave - Tutor
  (157, 15700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Typhlosion - Focus Punch - Tutor
  (157, 15700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Typhlosion - Blast Burn - Tutor
  (157, 15700, 307, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Typhlosion - Covet - Tutor
  (157, 15700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Typhlosion - Fire Pledge - Tutor
  (157, 15700, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Typhlosion - Laser Focus - Tutor
  (157, 15700, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Typhlosion - Throat Chop - Tutor
  (157, 15700, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Typhlosion - Stomping Tantrum - Tutor
  (157, 15700, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Totodile - Scratch - Level 1
  (158, 15800, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Totodile - Leer - Level 1
  (158, 15800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Totodile - Water Gun - Level 6
  (158, 15800, 55, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Totodile - Rage - Level 8
  (158, 15800, 99, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Totodile - Bite - Level 13
  (158, 15800, 44, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Totodile - Scary Face - Level 15
  (158, 15800, 184, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Totodile - Ice Fang - Level 20
  (158, 15800, 423, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Totodile - Flail - Level 22
  (158, 15800, 175, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Totodile - Crunch - Level 27
  (158, 15800, 242, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Totodile - Chip Away - Level 29
  (158, 15800, 498, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Totodile - Slash - Level 34
  (158, 15800, 163, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Totodile - Screech - Level 36
  (158, 15800, 103, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Totodile - Thrash - Level 41
  (158, 15800, 37, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Totodile - Aqua Tail - Level 43
  (158, 15800, 401, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Totodile - Superpower - Level 48
  (158, 15800, 276, 16, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Totodile - Hydro Pump - Level 50
  (158, 15800, 56, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Totodile - Work Up - TM01
  (158, 15800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Totodile - Dragon Claw - TM02
  (158, 15800, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 18),
  -- Totodile - Toxic - TM06
  (158, 15800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Totodile - Hail - TM07
  (158, 15800, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Totodile - Hidden Power - TM10
  (158, 15800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Totodile - Ice Beam - TM13
  (158, 15800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Totodile - Blizzard - TM14
  (158, 15800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 23),
  -- Totodile - Protect - TM17
  (158, 15800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Totodile - Rain Dance - TM18
  (158, 15800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Totodile - Frustration - TM21
  (158, 15800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Totodile - Return - TM27
  (158, 15800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Totodile - Brick Break - TM31
  (158, 15800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Totodile - Double Team - TM32
  (158, 15800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Totodile - Rock Tomb - TM39
  (158, 15800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 30),
  -- Totodile - Aerial Ace - TM40
  (158, 15800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Totodile - Facade - TM42
  (158, 15800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Totodile - Rest - TM44
  (158, 15800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Totodile - Attract - TM45
  (158, 15800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Totodile - Round - TM48
  (158, 15800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Totodile - Scald - TM55
  (158, 15800, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 36),
  -- Totodile - Fling - TM56
  (158, 15800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Totodile - Shadow Claw - TM65
  (158, 15800, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 38),
  -- Totodile - Swords Dance - TM75
  (158, 15800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 39),
  -- Totodile - Rock Slide - TM80
  (158, 15800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 40),
  -- Totodile - Swagger - TM87
  (158, 15800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Totodile - Sleep Talk - TM88
  (158, 15800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Totodile - Substitute - TM90
  (158, 15800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Totodile - Surf - TM94
  (158, 15800, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 44),
  -- Totodile - Waterfall - TM98
  (158, 15800, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 45),
  -- Totodile - Confide - TM100
  (158, 15800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Totodile - Ice Punch - Egg
  (158, 15800, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Totodile - Thrash - Egg
  (158, 15800, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Totodile - Hydro Pump - Egg
  (158, 15800, 56, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Totodile - Metal Claw - Egg
  (158, 15800, 232, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Totodile - Crunch - Egg
  (158, 15800, 242, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Totodile - Ancient Power - Egg
  (158, 15800, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Totodile - Flatter - Egg
  (158, 15800, 260, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Totodile - Mud Sport - Egg
  (158, 15800, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Totodile - Fake Tears - Egg
  (158, 15800, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Totodile - Block - Egg
  (158, 15800, 335, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Totodile - Water Sport - Egg
  (158, 15800, 346, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Totodile - Dragon Dance - Egg
  (158, 15800, 349, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Totodile - Water Pulse - Egg
  (158, 15800, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Totodile - Aqua Jet - Egg
  (158, 15800, 453, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Totodile - Ice Punch - Tutor
  (158, 15800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Totodile - Low Kick - Tutor
  (158, 15800, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Totodile - Snore - Tutor
  (158, 15800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Totodile - Spite - Tutor
  (158, 15800, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Totodile - Icy Wind - Tutor
  (158, 15800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Totodile - Iron Tail - Tutor
  (158, 15800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Totodile - Uproar - Tutor
  (158, 15800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Totodile - Focus Punch - Tutor
  (158, 15800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Totodile - Superpower - Tutor
  (158, 15800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Totodile - Block - Tutor
  (158, 15800, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Totodile - Water Pulse - Tutor
  (158, 15800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Totodile - Aqua Tail - Tutor
  (158, 15800, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Totodile - Water Pledge - Tutor
  (158, 15800, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),

  -- Croconaw - Scratch - Level 1
  (159, 15900, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croconaw - Leer - Level 1
  (159, 15900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Croconaw - Water Gun - Level 1
  (159, 15900, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Croconaw - Water Gun - Level 6
  (159, 15900, 55, 16, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Croconaw - Rage - Level 8
  (159, 15900, 99, 16, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Croconaw - Bite - Level 13
  (159, 15900, 44, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Croconaw - Scary Face - Level 15
  (159, 15900, 184, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Croconaw - Ice Fang - Level 21
  (159, 15900, 423, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Croconaw - Flail - Level 24
  (159, 15900, 175, 16, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Croconaw - Crunch - Level 30
  (159, 15900, 242, 16, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Croconaw - Chip Away - Level 33
  (159, 15900, 498, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Croconaw - Slash - Level 39
  (159, 15900, 163, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Croconaw - Screech - Level 42
  (159, 15900, 103, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Croconaw - Thrash - Level 48
  (159, 15900, 37, 16, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Croconaw - Aqua Tail - Level 51
  (159, 15900, 401, 16, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Croconaw - Superpower - Level 57
  (159, 15900, 276, 16, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Croconaw - Hydro Pump - Level 60
  (159, 15900, 56, 16, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Croconaw - Work Up - TM01
  (159, 15900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Croconaw - Dragon Claw - TM02
  (159, 15900, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 19),
  -- Croconaw - Roar - TM05
  (159, 15900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 20),
  -- Croconaw - Toxic - TM06
  (159, 15900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Croconaw - Hail - TM07
  (159, 15900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 22),
  -- Croconaw - Hidden Power - TM10
  (159, 15900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Croconaw - Ice Beam - TM13
  (159, 15900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Croconaw - Blizzard - TM14
  (159, 15900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Croconaw - Protect - TM17
  (159, 15900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Croconaw - Rain Dance - TM18
  (159, 15900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Croconaw - Frustration - TM21
  (159, 15900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Croconaw - Return - TM27
  (159, 15900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Croconaw - Brick Break - TM31
  (159, 15900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Croconaw - Double Team - TM32
  (159, 15900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Croconaw - Rock Tomb - TM39
  (159, 15900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Croconaw - Aerial Ace - TM40
  (159, 15900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Croconaw - Facade - TM42
  (159, 15900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Croconaw - Rest - TM44
  (159, 15900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Croconaw - Attract - TM45
  (159, 15900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Croconaw - Round - TM48
  (159, 15900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Croconaw - Scald - TM55
  (159, 15900, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 38),
  -- Croconaw - Fling - TM56
  (159, 15900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Croconaw - Shadow Claw - TM65
  (159, 15900, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 40),
  -- Croconaw - Swords Dance - TM75
  (159, 15900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 41),
  -- Croconaw - Rock Slide - TM80
  (159, 15900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 42),
  -- Croconaw - Swagger - TM87
  (159, 15900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Croconaw - Sleep Talk - TM88
  (159, 15900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Croconaw - Substitute - TM90
  (159, 15900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Croconaw - Surf - TM94
  (159, 15900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 46),
  -- Croconaw - Waterfall - TM98
  (159, 15900, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 47),
  -- Croconaw - Confide - TM100
  (159, 15900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Croconaw - Ice Punch - Tutor
  (159, 15900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Croconaw - Low Kick - Tutor
  (159, 15900, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Croconaw - Snore - Tutor
  (159, 15900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Croconaw - Spite - Tutor
  (159, 15900, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Croconaw - Icy Wind - Tutor
  (159, 15900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Croconaw - Iron Tail - Tutor
  (159, 15900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Croconaw - Uproar - Tutor
  (159, 15900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Croconaw - Focus Punch - Tutor
  (159, 15900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Croconaw - Superpower - Tutor
  (159, 15900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Croconaw - Block - Tutor
  (159, 15900, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Croconaw - Water Pulse - Tutor
  (159, 15900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Croconaw - Aqua Tail - Tutor
  (159, 15900, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Croconaw - Water Pledge - Tutor
  (159, 15900, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Feraligatr - Scratch - Level 1
  (160, 16000, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feraligatr - Leer - Level 1
  (160, 16000, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Feraligatr - Water Gun - Level 1
  (160, 16000, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Feraligatr - Agility - Level 1
  (160, 16000, 97, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Feraligatr - Rage - Level 1
  (160, 16000, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Feraligatr - Water Gun - Level 6
  (160, 16000, 55, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Feraligatr - Rage - Level 8
  (160, 16000, 99, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Feraligatr - Bite - Level 13
  (160, 16000, 44, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Feraligatr - Scary Face - Level 15
  (160, 16000, 184, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Feraligatr - Ice Fang - Level 21
  (160, 16000, 423, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Feraligatr - Flail - Level 24
  (160, 16000, 175, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Feraligatr - Crunch - Level 32
  (160, 16000, 242, 16, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Feraligatr - Chip Away - Level 37
  (160, 16000, 498, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Feraligatr - Slash - Level 45
  (160, 16000, 163, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Feraligatr - Screech - Level 50
  (160, 16000, 103, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Feraligatr - Thrash - Level 58
  (160, 16000, 37, 16, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Feraligatr - Aqua Tail - Level 63
  (160, 16000, 401, 16, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Feraligatr - Superpower - Level 71
  (160, 16000, 276, 16, NULL, 1, 71, NULL, NULL, NULL, 18),
  -- Feraligatr - Hydro Pump - Level 76
  (160, 16000, 56, 16, NULL, 1, 76, NULL, NULL, NULL, 19),
  -- Feraligatr - Work Up - TM01
  (160, 16000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Feraligatr - Dragon Claw - TM02
  (160, 16000, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 21),
  -- Feraligatr - Roar - TM05
  (160, 16000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Feraligatr - Toxic - TM06
  (160, 16000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Feraligatr - Hail - TM07
  (160, 16000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 24),
  -- Feraligatr - Hidden Power - TM10
  (160, 16000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Feraligatr - Ice Beam - TM13
  (160, 16000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 26),
  -- Feraligatr - Blizzard - TM14
  (160, 16000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 27),
  -- Feraligatr - Hyper Beam - TM15
  (160, 16000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Feraligatr - Protect - TM17
  (160, 16000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Feraligatr - Rain Dance - TM18
  (160, 16000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Feraligatr - Frustration - TM21
  (160, 16000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Feraligatr - Earthquake - TM26
  (160, 16000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Feraligatr - Return - TM27
  (160, 16000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Feraligatr - Brick Break - TM31
  (160, 16000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 34),
  -- Feraligatr - Double Team - TM32
  (160, 16000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Feraligatr - Rock Tomb - TM39
  (160, 16000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Feraligatr - Aerial Ace - TM40
  (160, 16000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Feraligatr - Facade - TM42
  (160, 16000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Feraligatr - Rest - TM44
  (160, 16000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Feraligatr - Attract - TM45
  (160, 16000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Feraligatr - Round - TM48
  (160, 16000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Feraligatr - Focus Blast - TM52
  (160, 16000, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 42),
  -- Feraligatr - Scald - TM55
  (160, 16000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 43),
  -- Feraligatr - Fling - TM56
  (160, 16000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Feraligatr - Shadow Claw - TM65
  (160, 16000, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 45),
  -- Feraligatr - Giga Impact - TM68
  (160, 16000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Feraligatr - Swords Dance - TM75
  (160, 16000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 47),
  -- Feraligatr - Bulldoze - TM78
  (160, 16000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 48),
  -- Feraligatr - Rock Slide - TM80
  (160, 16000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Feraligatr - Dragon Tail - TM82
  (160, 16000, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 50),
  -- Feraligatr - Swagger - TM87
  (160, 16000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Feraligatr - Sleep Talk - TM88
  (160, 16000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Feraligatr - Substitute - TM90
  (160, 16000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Feraligatr - Surf - TM94
  (160, 16000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 54),
  -- Feraligatr - Waterfall - TM98
  (160, 16000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 55),
  -- Feraligatr - Confide - TM100
  (160, 16000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Feraligatr - Ice Punch - Tutor
  (160, 16000, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Feraligatr - Low Kick - Tutor
  (160, 16000, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Feraligatr - Snore - Tutor
  (160, 16000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Feraligatr - Spite - Tutor
  (160, 16000, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Feraligatr - Icy Wind - Tutor
  (160, 16000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Feraligatr - Outrage - Tutor
  (160, 16000, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Feraligatr - Iron Tail - Tutor
  (160, 16000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Feraligatr - Uproar - Tutor
  (160, 16000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Feraligatr - Focus Punch - Tutor
  (160, 16000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Feraligatr - Superpower - Tutor
  (160, 16000, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Feraligatr - Hydro Cannon - Tutor
  (160, 16000, 308, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Feraligatr - Block - Tutor
  (160, 16000, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Feraligatr - Water Pulse - Tutor
  (160, 16000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Feraligatr - Aqua Tail - Tutor
  (160, 16000, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Feraligatr - Dragon Pulse - Tutor
  (160, 16000, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Feraligatr - Water Pledge - Tutor
  (160, 16000, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Feraligatr - Liquidation - Tutor
  (160, 16000, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),

  -- Sentret - Scratch - Level 1
  (161, 16100, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sentret - Foresight - Level 1
  (161, 16100, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sentret - Defense Curl - Level 4
  (161, 16100, 111, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sentret - Quick Attack - Level 7
  (161, 16100, 98, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Sentret - Fury Swipes - Level 13
  (161, 16100, 154, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Sentret - Helping Hand - Level 16
  (161, 16100, 270, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Sentret - Follow Me - Level 19
  (161, 16100, 266, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Sentret - Slam - Level 25
  (161, 16100, 21, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sentret - Rest - Level 28
  (161, 16100, 156, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sentret - Sucker Punch - Level 31
  (161, 16100, 389, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Sentret - Amnesia - Level 36
  (161, 16100, 133, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Sentret - Baton Pass - Level 39
  (161, 16100, 226, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Sentret - Me First - Level 42
  (161, 16100, 382, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Sentret - Hyper Voice - Level 47
  (161, 16100, 304, 16, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Sentret - Work Up - TM01
  (161, 16100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 15),
  -- Sentret - Toxic - TM06
  (161, 16100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Sentret - Hidden Power - TM10
  (161, 16100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Sentret - Sunny Day - TM11
  (161, 16100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Sentret - Ice Beam - TM13
  (161, 16100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Sentret - Protect - TM17
  (161, 16100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Sentret - Rain Dance - TM18
  (161, 16100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Sentret - Frustration - TM21
  (161, 16100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Sentret - Solar Beam - TM22
  (161, 16100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Sentret - Thunderbolt - TM24
  (161, 16100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 24),
  -- Sentret - Return - TM27
  (161, 16100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Sentret - Shadow Ball - TM30
  (161, 16100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 26),
  -- Sentret - Brick Break - TM31
  (161, 16100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Sentret - Double Team - TM32
  (161, 16100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Sentret - Flamethrower - TM35
  (161, 16100, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 29),
  -- Sentret - Facade - TM42
  (161, 16100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Sentret - Rest - TM44
  (161, 16100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Sentret - Attract - TM45
  (161, 16100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Sentret - Thief - TM46
  (161, 16100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 33),
  -- Sentret - Round - TM48
  (161, 16100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Sentret - Echoed Voice - TM49
  (161, 16100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 35),
  -- Sentret - Fling - TM56
  (161, 16100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 36),
  -- Sentret - Charge Beam - TM57
  (161, 16100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 37),
  -- Sentret - Brutal Swing - TM59
  (161, 16100, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 38),
  -- Sentret - Shadow Claw - TM65
  (161, 16100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 39),
  -- Sentret - Grass Knot - TM86
  (161, 16100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 40),
  -- Sentret - Swagger - TM87
  (161, 16100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Sentret - Sleep Talk - TM88
  (161, 16100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Sentret - U-turn - TM89
  (161, 16100, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 43),
  -- Sentret - Substitute - TM90
  (161, 16100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Sentret - Surf - TM94
  (161, 16100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 45),
  -- Sentret - Confide - TM100
  (161, 16100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Sentret - Double-Edge - Egg
  (161, 16100, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sentret - Focus Energy - Egg
  (161, 16100, 116, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sentret - Slash - Egg
  (161, 16100, 163, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sentret - Reversal - Egg
  (161, 16100, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sentret - Charm - Egg
  (161, 16100, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sentret - Pursuit - Egg
  (161, 16100, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sentret - Iron Tail - Egg
  (161, 16100, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sentret - Trick - Egg
  (161, 16100, 271, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sentret - Assist - Egg
  (161, 16100, 274, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sentret - Covet - Egg
  (161, 16100, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sentret - Natural Gift - Egg
  (161, 16100, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sentret - Last Resort - Egg
  (161, 16100, 387, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sentret - Captivate - Egg
  (161, 16100, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sentret - Baby-Doll Eyes - Egg
  (161, 16100, 608, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sentret - Fire Punch - Tutor
  (161, 16100, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Sentret - Ice Punch - Tutor
  (161, 16100, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Sentret - Thunder Punch - Tutor
  (161, 16100, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Sentret - Super Fang - Tutor
  (161, 16100, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Sentret - Snore - Tutor
  (161, 16100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Sentret - Iron Tail - Tutor
  (161, 16100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Sentret - Uproar - Tutor
  (161, 16100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Sentret - Focus Punch - Tutor
  (161, 16100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Sentret - Helping Hand - Tutor
  (161, 16100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Sentret - Trick - Tutor
  (161, 16100, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Sentret - Knock Off - Tutor
  (161, 16100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Sentret - Hyper Voice - Tutor
  (161, 16100, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Sentret - Covet - Tutor
  (161, 16100, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Sentret - Shock Wave - Tutor
  (161, 16100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Sentret - Water Pulse - Tutor
  (161, 16100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Sentret - Last Resort - Tutor
  (161, 16100, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Sentret - Aqua Tail - Tutor
  (161, 16100, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),

  -- Furret - Scratch - Level 1
  (162, 16200, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Furret - Agility - Level 1
  (162, 16200, 97, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Furret - Quick Attack - Level 1
  (162, 16200, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Furret - Defense Curl - Level 1
  (162, 16200, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Furret - Foresight - Level 1
  (162, 16200, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Furret - Coil - Level 1
  (162, 16200, 489, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Furret - Defense Curl - Level 4
  (162, 16200, 111, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Furret - Quick Attack - Level 7
  (162, 16200, 98, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Furret - Fury Swipes - Level 13
  (162, 16200, 154, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Furret - Helping Hand - Level 17
  (162, 16200, 270, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Furret - Follow Me - Level 21
  (162, 16200, 266, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Furret - Slam - Level 28
  (162, 16200, 21, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Furret - Rest - Level 32
  (162, 16200, 156, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Furret - Sucker Punch - Level 36
  (162, 16200, 389, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Furret - Amnesia - Level 42
  (162, 16200, 133, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Furret - Baton Pass - Level 46
  (162, 16200, 226, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Furret - Me First - Level 50
  (162, 16200, 382, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Furret - Hyper Voice - Level 56
  (162, 16200, 304, 16, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Furret - Work Up - TM01
  (162, 16200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Furret - Toxic - TM06
  (162, 16200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Furret - Hidden Power - TM10
  (162, 16200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Furret - Sunny Day - TM11
  (162, 16200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Furret - Ice Beam - TM13
  (162, 16200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Furret - Blizzard - TM14
  (162, 16200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Furret - Hyper Beam - TM15
  (162, 16200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Furret - Protect - TM17
  (162, 16200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Furret - Rain Dance - TM18
  (162, 16200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Furret - Frustration - TM21
  (162, 16200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Furret - Solar Beam - TM22
  (162, 16200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Furret - Thunderbolt - TM24
  (162, 16200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Furret - Thunder - TM25
  (162, 16200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Furret - Return - TM27
  (162, 16200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Furret - Shadow Ball - TM30
  (162, 16200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Furret - Brick Break - TM31
  (162, 16200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 34),
  -- Furret - Double Team - TM32
  (162, 16200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Furret - Flamethrower - TM35
  (162, 16200, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 36),
  -- Furret - Facade - TM42
  (162, 16200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Furret - Rest - TM44
  (162, 16200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Furret - Attract - TM45
  (162, 16200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Furret - Thief - TM46
  (162, 16200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Furret - Round - TM48
  (162, 16200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Furret - Echoed Voice - TM49
  (162, 16200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 42),
  -- Furret - Focus Blast - TM52
  (162, 16200, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Furret - Fling - TM56
  (162, 16200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Furret - Charge Beam - TM57
  (162, 16200, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 45),
  -- Furret - Brutal Swing - TM59
  (162, 16200, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 46),
  -- Furret - Shadow Claw - TM65
  (162, 16200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 47),
  -- Furret - Giga Impact - TM68
  (162, 16200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 48),
  -- Furret - Grass Knot - TM86
  (162, 16200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 49),
  -- Furret - Swagger - TM87
  (162, 16200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Furret - Sleep Talk - TM88
  (162, 16200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Furret - U-turn - TM89
  (162, 16200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 52),
  -- Furret - Substitute - TM90
  (162, 16200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Furret - Surf - TM94
  (162, 16200, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 54),
  -- Furret - Confide - TM100
  (162, 16200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Furret - Fire Punch - Tutor
  (162, 16200, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Furret - Ice Punch - Tutor
  (162, 16200, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Furret - Thunder Punch - Tutor
  (162, 16200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Furret - Super Fang - Tutor
  (162, 16200, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Furret - Snore - Tutor
  (162, 16200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Furret - Iron Tail - Tutor
  (162, 16200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Furret - Uproar - Tutor
  (162, 16200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Furret - Focus Punch - Tutor
  (162, 16200, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Furret - Helping Hand - Tutor
  (162, 16200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Furret - Trick - Tutor
  (162, 16200, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Furret - Knock Off - Tutor
  (162, 16200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Furret - Hyper Voice - Tutor
  (162, 16200, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Furret - Covet - Tutor
  (162, 16200, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Furret - Shock Wave - Tutor
  (162, 16200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Furret - Water Pulse - Tutor
  (162, 16200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Furret - Last Resort - Tutor
  (162, 16200, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Furret - Aqua Tail - Tutor
  (162, 16200, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Furret - Agility - Evolution
  (162, 16200, 97, 16, NULL, 7, NULL, NULL, NULL, NULL, 73),

  -- Hoothoot - Tackle - Level 1
  (163, 16300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoothoot - Growl - Level 1
  (163, 16300, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoothoot - Foresight - Level 1
  (163, 16300, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hoothoot - Hypnosis - Level 4
  (163, 16300, 95, 16, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Hoothoot - Peck - Level 7
  (163, 16300, 64, 16, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Hoothoot - Confusion - Level 10
  (163, 16300, 93, 16, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Hoothoot - Echoed Voice - Level 13
  (163, 16300, 497, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Hoothoot - Zen Headbutt - Level 16
  (163, 16300, 428, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Hoothoot - Psycho Shift - Level 19
  (163, 16300, 375, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Hoothoot - Extrasensory - Level 22
  (163, 16300, 326, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Hoothoot - Take Down - Level 25
  (163, 16300, 36, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Hoothoot - Reflect - Level 28
  (163, 16300, 115, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Hoothoot - Air Slash - Level 31
  (163, 16300, 403, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Hoothoot - Uproar - Level 34
  (163, 16300, 253, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Hoothoot - Roost - Level 37
  (163, 16300, 355, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Hoothoot - Moonblast - Level 40
  (163, 16300, 585, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Hoothoot - Synchronoise - Level 43
  (163, 16300, 485, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Hoothoot - Dream Eater - Level 46
  (163, 16300, 138, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Hoothoot - Work Up - TM01
  (163, 16300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Hoothoot - Toxic - TM06
  (163, 16300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Hoothoot - Hidden Power - TM10
  (163, 16300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Hoothoot - Sunny Day - TM11
  (163, 16300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Hoothoot - Protect - TM17
  (163, 16300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Hoothoot - Rain Dance - TM18
  (163, 16300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Hoothoot - Roost - TM19
  (163, 16300, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 25),
  -- Hoothoot - Frustration - TM21
  (163, 16300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Hoothoot - Return - TM27
  (163, 16300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Hoothoot - Psychic - TM29
  (163, 16300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 28),
  -- Hoothoot - Shadow Ball - TM30
  (163, 16300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Hoothoot - Double Team - TM32
  (163, 16300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Hoothoot - Reflect - TM33
  (163, 16300, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 31),
  -- Hoothoot - Aerial Ace - TM40
  (163, 16300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Hoothoot - Facade - TM42
  (163, 16300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Hoothoot - Rest - TM44
  (163, 16300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Hoothoot - Attract - TM45
  (163, 16300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Hoothoot - Thief - TM46
  (163, 16300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Hoothoot - Round - TM48
  (163, 16300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Hoothoot - Echoed Voice - TM49
  (163, 16300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 38),
  -- Hoothoot - Steel Wing - TM51
  (163, 16300, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 39),
  -- Hoothoot - Fly - TM76
  (163, 16300, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 40),
  -- Hoothoot - Psych Up - TM77
  (163, 16300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Hoothoot - Dream Eater - TM85
  (163, 16300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 42),
  -- Hoothoot - Swagger - TM87
  (163, 16300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Hoothoot - Sleep Talk - TM88
  (163, 16300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Hoothoot - Substitute - TM90
  (163, 16300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Hoothoot - Confide - TM100
  (163, 16300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Hoothoot - Wing Attack - Egg
  (163, 16300, 17, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hoothoot - Whirlwind - Egg
  (163, 16300, 18, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hoothoot - Supersonic - Egg
  (163, 16300, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hoothoot - Agility - Egg
  (163, 16300, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hoothoot - Night Shade - Egg
  (163, 16300, 101, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hoothoot - Mirror Move - Egg
  (163, 16300, 119, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hoothoot - Sky Attack - Egg
  (163, 16300, 143, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hoothoot - Feint Attack - Egg
  (163, 16300, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hoothoot - Mean Look - Egg
  (163, 16300, 212, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hoothoot - Feather Dance - Egg
  (163, 16300, 297, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hoothoot - Defog - Egg
  (163, 16300, 432, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Hoothoot - Hurricane - Egg
  (163, 16300, 542, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Hoothoot - Sky Attack - Tutor
  (163, 16300, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Hoothoot - Snore - Tutor
  (163, 16300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Hoothoot - Uproar - Tutor
  (163, 16300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Hoothoot - Heat Wave - Tutor
  (163, 16300, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Hoothoot - Magic Coat - Tutor
  (163, 16300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Hoothoot - Recycle - Tutor
  (163, 16300, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Hoothoot - Hyper Voice - Tutor
  (163, 16300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Hoothoot - Tailwind - Tutor
  (163, 16300, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Hoothoot - Zen Headbutt - Tutor
  (163, 16300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Hoothoot - Defog - Tutor
  (163, 16300, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Noctowl - Tackle - Level 1
  (164, 16400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noctowl - Growl - Level 1
  (164, 16400, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noctowl - Hypnosis - Level 1
  (164, 16400, 95, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noctowl - Dream Eater - Level 1
  (164, 16400, 138, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Noctowl - Sky Attack - Level 1
  (164, 16400, 143, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Noctowl - Foresight - Level 1
  (164, 16400, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Noctowl - Hypnosis - Level 4
  (164, 16400, 95, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Noctowl - Peck - Level 7
  (164, 16400, 64, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Noctowl - Confusion - Level 10
  (164, 16400, 93, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Noctowl - Echoed Voice - Level 13
  (164, 16400, 497, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Noctowl - Zen Headbutt - Level 16
  (164, 16400, 428, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Noctowl - Psycho Shift - Level 19
  (164, 16400, 375, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Noctowl - Extrasensory - Level 23
  (164, 16400, 326, 16, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Noctowl - Take Down - Level 27
  (164, 16400, 36, 16, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Noctowl - Reflect - Level 31
  (164, 16400, 115, 16, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Noctowl - Air Slash - Level 35
  (164, 16400, 403, 16, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Noctowl - Uproar - Level 39
  (164, 16400, 253, 16, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Noctowl - Roost - Level 43
  (164, 16400, 355, 16, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Noctowl - Moonblast - Level 47
  (164, 16400, 585, 16, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Noctowl - Synchronoise - Level 51
  (164, 16400, 485, 16, NULL, 1, 51, NULL, NULL, NULL, 20),
  -- Noctowl - Dream Eater - Level 55
  (164, 16400, 138, 16, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Noctowl - Work Up - TM01
  (164, 16400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 22),
  -- Noctowl - Toxic - TM06
  (164, 16400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Noctowl - Hidden Power - TM10
  (164, 16400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Noctowl - Sunny Day - TM11
  (164, 16400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Noctowl - Hyper Beam - TM15
  (164, 16400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Noctowl - Protect - TM17
  (164, 16400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Noctowl - Rain Dance - TM18
  (164, 16400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Noctowl - Roost - TM19
  (164, 16400, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 29),
  -- Noctowl - Frustration - TM21
  (164, 16400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Noctowl - Return - TM27
  (164, 16400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Noctowl - Psychic - TM29
  (164, 16400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 32),
  -- Noctowl - Shadow Ball - TM30
  (164, 16400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Noctowl - Double Team - TM32
  (164, 16400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Noctowl - Reflect - TM33
  (164, 16400, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 35),
  -- Noctowl - Aerial Ace - TM40
  (164, 16400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Noctowl - Facade - TM42
  (164, 16400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Noctowl - Rest - TM44
  (164, 16400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Noctowl - Attract - TM45
  (164, 16400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Noctowl - Thief - TM46
  (164, 16400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Noctowl - Round - TM48
  (164, 16400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Noctowl - Echoed Voice - TM49
  (164, 16400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 42),
  -- Noctowl - Steel Wing - TM51
  (164, 16400, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 43),
  -- Noctowl - Giga Impact - TM68
  (164, 16400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Noctowl - Fly - TM76
  (164, 16400, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 45),
  -- Noctowl - Psych Up - TM77
  (164, 16400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 46),
  -- Noctowl - Dream Eater - TM85
  (164, 16400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 47),
  -- Noctowl - Swagger - TM87
  (164, 16400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Noctowl - Sleep Talk - TM88
  (164, 16400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Noctowl - Substitute - TM90
  (164, 16400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Noctowl - Confide - TM100
  (164, 16400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Noctowl - Sky Attack - Tutor
  (164, 16400, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Noctowl - Snore - Tutor
  (164, 16400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Noctowl - Uproar - Tutor
  (164, 16400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Noctowl - Heat Wave - Tutor
  (164, 16400, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Noctowl - Magic Coat - Tutor
  (164, 16400, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Noctowl - Recycle - Tutor
  (164, 16400, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Noctowl - Hyper Voice - Tutor
  (164, 16400, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Noctowl - Tailwind - Tutor
  (164, 16400, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Noctowl - Zen Headbutt - Tutor
  (164, 16400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Noctowl - Defog - Tutor
  (164, 16400, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Noctowl - Laser Focus - Tutor
  (164, 16400, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Ledyba - Tackle - Level 1
  (165, 16500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ledyba - Supersonic - Level 5
  (165, 16500, 48, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Ledyba - Swift - Level 8
  (165, 16500, 129, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Ledyba - Light Screen - Level 12
  (165, 16500, 113, 16, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Ledyba - Reflect - Level 12
  (165, 16500, 115, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Ledyba - Safeguard - Level 12
  (165, 16500, 219, 16, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ledyba - Mach Punch - Level 15
  (165, 16500, 183, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ledyba - Silver Wind - Level 19
  (165, 16500, 318, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Ledyba - Comet Punch - Level 22
  (165, 16500, 4, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Ledyba - Baton Pass - Level 26
  (165, 16500, 226, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Ledyba - Agility - Level 29
  (165, 16500, 97, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Ledyba - Bug Buzz - Level 33
  (165, 16500, 405, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Ledyba - Air Slash - Level 36
  (165, 16500, 403, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Ledyba - Double-Edge - Level 40
  (165, 16500, 38, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Ledyba - Toxic - TM06
  (165, 16500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Ledyba - Hidden Power - TM10
  (165, 16500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Ledyba - Sunny Day - TM11
  (165, 16500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Ledyba - Light Screen - TM16
  (165, 16500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 18),
  -- Ledyba - Protect - TM17
  (165, 16500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Ledyba - Roost - TM19
  (165, 16500, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 20),
  -- Ledyba - Safeguard - TM20
  (165, 16500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 21),
  -- Ledyba - Frustration - TM21
  (165, 16500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Ledyba - Solar Beam - TM22
  (165, 16500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Ledyba - Return - TM27
  (165, 16500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Ledyba - Brick Break - TM31
  (165, 16500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 25),
  -- Ledyba - Double Team - TM32
  (165, 16500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Ledyba - Reflect - TM33
  (165, 16500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 27),
  -- Ledyba - Aerial Ace - TM40
  (165, 16500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Ledyba - Facade - TM42
  (165, 16500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Ledyba - Rest - TM44
  (165, 16500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Ledyba - Attract - TM45
  (165, 16500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Ledyba - Thief - TM46
  (165, 16500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Ledyba - Round - TM48
  (165, 16500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Ledyba - Fling - TM56
  (165, 16500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 34),
  -- Ledyba - Acrobatics - TM62
  (165, 16500, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 35),
  -- Ledyba - Swords Dance - TM75
  (165, 16500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 36),
  -- Ledyba - Infestation - TM83
  (165, 16500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 37),
  -- Ledyba - Swagger - TM87
  (165, 16500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Ledyba - Sleep Talk - TM88
  (165, 16500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Ledyba - U-turn - TM89
  (165, 16500, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 40),
  -- Ledyba - Substitute - TM90
  (165, 16500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Ledyba - Confide - TM100
  (165, 16500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Ledyba - Psybeam - Egg
  (165, 16500, 60, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ledyba - Counter - Egg
  (165, 16500, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ledyba - Screech - Egg
  (165, 16500, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ledyba - Bide - Egg
  (165, 16500, 117, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ledyba - Dizzy Punch - Egg
  (165, 16500, 146, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ledyba - Endure - Egg
  (165, 16500, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ledyba - Encore - Egg
  (165, 16500, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ledyba - Focus Punch - Egg
  (165, 16500, 264, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ledyba - Knock Off - Egg
  (165, 16500, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ledyba - Silver Wind - Egg
  (165, 16500, 318, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ledyba - Tailwind - Egg
  (165, 16500, 366, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ledyba - Bug Buzz - Egg
  (165, 16500, 405, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ledyba - Drain Punch - Egg
  (165, 16500, 409, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ledyba - Bug Bite - Egg
  (165, 16500, 450, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ledyba - Ice Punch - Tutor
  (165, 16500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Ledyba - Thunder Punch - Tutor
  (165, 16500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Ledyba - Snore - Tutor
  (165, 16500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Ledyba - Giga Drain - Tutor
  (165, 16500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Ledyba - Uproar - Tutor
  (165, 16500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Ledyba - Focus Punch - Tutor
  (165, 16500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Ledyba - Knock Off - Tutor
  (165, 16500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Ledyba - Tailwind - Tutor
  (165, 16500, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Ledyba - Drain Punch - Tutor
  (165, 16500, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Ledyba - Bug Bite - Tutor
  (165, 16500, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Ledian - Tackle - Level 1
  (166, 16600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ledian - Supersonic - Level 1
  (166, 16600, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ledian - Swift - Level 1
  (166, 16600, 129, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ledian - Supersonic - Level 5
  (166, 16600, 48, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Ledian - Swift - Level 8
  (166, 16600, 129, 16, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Ledian - Light Screen - Level 12
  (166, 16600, 113, 16, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ledian - Reflect - Level 12
  (166, 16600, 115, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Ledian - Safeguard - Level 12
  (166, 16600, 219, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Ledian - Mach Punch - Level 15
  (166, 16600, 183, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Ledian - Silver Wind - Level 20
  (166, 16600, 318, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Ledian - Comet Punch - Level 24
  (166, 16600, 4, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Ledian - Baton Pass - Level 29
  (166, 16600, 226, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Ledian - Agility - Level 33
  (166, 16600, 97, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Ledian - Bug Buzz - Level 38
  (166, 16600, 405, 16, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Ledian - Air Slash - Level 42
  (166, 16600, 403, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Ledian - Double-Edge - Level 47
  (166, 16600, 38, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Ledian - Toxic - TM06
  (166, 16600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Ledian - Hidden Power - TM10
  (166, 16600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Ledian - Sunny Day - TM11
  (166, 16600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Ledian - Hyper Beam - TM15
  (166, 16600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Ledian - Light Screen - TM16
  (166, 16600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 21),
  -- Ledian - Protect - TM17
  (166, 16600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Ledian - Roost - TM19
  (166, 16600, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Ledian - Safeguard - TM20
  (166, 16600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Ledian - Frustration - TM21
  (166, 16600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Ledian - Solar Beam - TM22
  (166, 16600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Ledian - Return - TM27
  (166, 16600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Ledian - Brick Break - TM31
  (166, 16600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Ledian - Double Team - TM32
  (166, 16600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Ledian - Reflect - TM33
  (166, 16600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 30),
  -- Ledian - Aerial Ace - TM40
  (166, 16600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Ledian - Facade - TM42
  (166, 16600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Ledian - Rest - TM44
  (166, 16600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Ledian - Attract - TM45
  (166, 16600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Ledian - Thief - TM46
  (166, 16600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Ledian - Round - TM48
  (166, 16600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Ledian - Focus Blast - TM52
  (166, 16600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 37),
  -- Ledian - Fling - TM56
  (166, 16600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Ledian - Acrobatics - TM62
  (166, 16600, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 39),
  -- Ledian - Giga Impact - TM68
  (166, 16600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Ledian - Swords Dance - TM75
  (166, 16600, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 41),
  -- Ledian - Infestation - TM83
  (166, 16600, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 42),
  -- Ledian - Swagger - TM87
  (166, 16600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Ledian - Sleep Talk - TM88
  (166, 16600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Ledian - U-turn - TM89
  (166, 16600, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 45),
  -- Ledian - Substitute - TM90
  (166, 16600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Ledian - Confide - TM100
  (166, 16600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Ledian - Ice Punch - Tutor
  (166, 16600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Ledian - Thunder Punch - Tutor
  (166, 16600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Ledian - Snore - Tutor
  (166, 16600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Ledian - Giga Drain - Tutor
  (166, 16600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Ledian - Uproar - Tutor
  (166, 16600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Ledian - Focus Punch - Tutor
  (166, 16600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Ledian - Knock Off - Tutor
  (166, 16600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Ledian - Tailwind - Tutor
  (166, 16600, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Ledian - Drain Punch - Tutor
  (166, 16600, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Ledian - Defog - Tutor
  (166, 16600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Ledian - Bug Bite - Tutor
  (166, 16600, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Spinarak - Poison Sting - Level 1
  (167, 16700, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinarak - String Shot - Level 1
  (167, 16700, 81, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spinarak - Constrict - Level 1
  (167, 16700, 132, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Spinarak - Absorb - Level 5
  (167, 16700, 71, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Spinarak - Infestation - Level 8
  (167, 16700, 611, 16, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Spinarak - Scary Face - Level 12
  (167, 16700, 184, 16, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Spinarak - Night Shade - Level 15
  (167, 16700, 101, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Spinarak - Shadow Sneak - Level 19
  (167, 16700, 425, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Spinarak - Fury Swipes - Level 22
  (167, 16700, 154, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Spinarak - Sucker Punch - Level 26
  (167, 16700, 389, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Spinarak - Spider Web - Level 29
  (167, 16700, 169, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Spinarak - Agility - Level 33
  (167, 16700, 97, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Spinarak - Pin Missile - Level 36
  (167, 16700, 42, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Spinarak - Psychic - Level 40
  (167, 16700, 94, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Spinarak - Poison Jab - Level 43
  (167, 16700, 398, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Spinarak - Cross Poison - Level 47
  (167, 16700, 440, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Spinarak - Sticky Web - Level 50
  (167, 16700, 564, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Spinarak - Toxic Thread - Level 54
  (167, 16700, 672, 16, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Spinarak - Toxic - TM06
  (167, 16700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Spinarak - Venoshock - TM09
  (167, 16700, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 20),
  -- Spinarak - Hidden Power - TM10
  (167, 16700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Spinarak - Sunny Day - TM11
  (167, 16700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Spinarak - Protect - TM17
  (167, 16700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Spinarak - Frustration - TM21
  (167, 16700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Spinarak - Solar Beam - TM22
  (167, 16700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Spinarak - Return - TM27
  (167, 16700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Spinarak - Leech Life - TM28
  (167, 16700, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 27),
  -- Spinarak - Psychic - TM29
  (167, 16700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 28),
  -- Spinarak - Double Team - TM32
  (167, 16700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Spinarak - Sludge Bomb - TM36
  (167, 16700, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 30),
  -- Spinarak - Facade - TM42
  (167, 16700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Spinarak - Rest - TM44
  (167, 16700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Spinarak - Attract - TM45
  (167, 16700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Spinarak - Thief - TM46
  (167, 16700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Spinarak - Round - TM48
  (167, 16700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Spinarak - X-Scissor - TM81
  (167, 16700, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 36),
  -- Spinarak - Infestation - TM83
  (167, 16700, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 37),
  -- Spinarak - Poison Jab - TM84
  (167, 16700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 38),
  -- Spinarak - Swagger - TM87
  (167, 16700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Spinarak - Sleep Talk - TM88
  (167, 16700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Spinarak - Substitute - TM90
  (167, 16700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Spinarak - Confide - TM100
  (167, 16700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Spinarak - Twineedle - Egg
  (167, 16700, 41, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spinarak - Sonic Boom - Egg
  (167, 16700, 49, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spinarak - Disable - Egg
  (167, 16700, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spinarak - Psybeam - Egg
  (167, 16700, 60, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spinarak - Megahorn - Egg
  (167, 16700, 224, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spinarak - Baton Pass - Egg
  (167, 16700, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spinarak - Pursuit - Egg
  (167, 16700, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spinarak - Signal Beam - Egg
  (167, 16700, 324, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spinarak - Toxic Spikes - Egg
  (167, 16700, 390, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spinarak - Night Slash - Egg
  (167, 16700, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spinarak - Rage Powder - Egg
  (167, 16700, 476, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spinarak - Electroweb - Egg
  (167, 16700, 527, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spinarak - Lunge - Egg
  (167, 16700, 679, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spinarak - Snore - Tutor
  (167, 16700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Spinarak - Giga Drain - Tutor
  (167, 16700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Spinarak - Signal Beam - Tutor
  (167, 16700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Spinarak - Bounce - Tutor
  (167, 16700, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Spinarak - Bug Bite - Tutor
  (167, 16700, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Spinarak - Foul Play - Tutor
  (167, 16700, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Spinarak - Electroweb - Tutor
  (167, 16700, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Ariados - Swords Dance - Level 1
  (168, 16800, 14, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ariados - Poison Sting - Level 1
  (168, 16800, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ariados - Absorb - Level 1
  (168, 16800, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ariados - String Shot - Level 1
  (168, 16800, 81, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ariados - Focus Energy - Level 1
  (168, 16800, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ariados - Constrict - Level 1
  (168, 16800, 132, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ariados - Bug Bite - Level 1
  (168, 16800, 450, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Ariados - Fell Stinger - Level 1
  (168, 16800, 565, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Ariados - Venom Drench - Level 1
  (168, 16800, 599, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Ariados - Absorb - Level 5
  (168, 16800, 71, 16, NULL, 1, 5, NULL, NULL, NULL, 10),
  -- Ariados - Infestation - Level 8
  (168, 16800, 611, 16, NULL, 1, 8, NULL, NULL, NULL, 11),
  -- Ariados - Scary Face - Level 12
  (168, 16800, 184, 16, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Ariados - Night Shade - Level 15
  (168, 16800, 101, 16, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Ariados - Shadow Sneak - Level 19
  (168, 16800, 425, 16, NULL, 1, 19, NULL, NULL, NULL, 14),
  -- Ariados - Fury Swipes - Level 23
  (168, 16800, 154, 16, NULL, 1, 23, NULL, NULL, NULL, 15),
  -- Ariados - Sucker Punch - Level 28
  (168, 16800, 389, 16, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Ariados - Spider Web - Level 32
  (168, 16800, 169, 16, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Ariados - Agility - Level 37
  (168, 16800, 97, 16, NULL, 1, 37, NULL, NULL, NULL, 18),
  -- Ariados - Pin Missile - Level 41
  (168, 16800, 42, 16, NULL, 1, 41, NULL, NULL, NULL, 19),
  -- Ariados - Psychic - Level 46
  (168, 16800, 94, 16, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Ariados - Poison Jab - Level 50
  (168, 16800, 398, 16, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Ariados - Cross Poison - Level 55
  (168, 16800, 440, 16, NULL, 1, 55, NULL, NULL, NULL, 22),
  -- Ariados - Sticky Web - Level 58
  (168, 16800, 564, 16, NULL, 1, 58, NULL, NULL, NULL, 23),
  -- Ariados - Toxic Thread - Level 63
  (168, 16800, 672, 16, NULL, 1, 63, NULL, NULL, NULL, 24),
  -- Ariados - Toxic - TM06
  (168, 16800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 25),
  -- Ariados - Venoshock - TM09
  (168, 16800, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 26),
  -- Ariados - Hidden Power - TM10
  (168, 16800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 27),
  -- Ariados - Sunny Day - TM11
  (168, 16800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 28),
  -- Ariados - Hyper Beam - TM15
  (168, 16800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Ariados - Protect - TM17
  (168, 16800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Ariados - Frustration - TM21
  (168, 16800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Ariados - Solar Beam - TM22
  (168, 16800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 32),
  -- Ariados - Return - TM27
  (168, 16800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Ariados - Leech Life - TM28
  (168, 16800, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 34),
  -- Ariados - Psychic - TM29
  (168, 16800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 35),
  -- Ariados - Double Team - TM32
  (168, 16800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Ariados - Sludge Bomb - TM36
  (168, 16800, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 37),
  -- Ariados - Facade - TM42
  (168, 16800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Ariados - Rest - TM44
  (168, 16800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Ariados - Attract - TM45
  (168, 16800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Ariados - Thief - TM46
  (168, 16800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Ariados - Round - TM48
  (168, 16800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Ariados - Smart Strike - TM67
  (168, 16800, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 43),
  -- Ariados - Giga Impact - TM68
  (168, 16800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Ariados - Swords Dance - TM75
  (168, 16800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 45),
  -- Ariados - X-Scissor - TM81
  (168, 16800, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 46),
  -- Ariados - Infestation - TM83
  (168, 16800, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 47),
  -- Ariados - Poison Jab - TM84
  (168, 16800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 48),
  -- Ariados - Swagger - TM87
  (168, 16800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Ariados - Sleep Talk - TM88
  (168, 16800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Ariados - Substitute - TM90
  (168, 16800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Ariados - Confide - TM100
  (168, 16800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Ariados - Snore - Tutor
  (168, 16800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Ariados - Giga Drain - Tutor
  (168, 16800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Ariados - Signal Beam - Tutor
  (168, 16800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Ariados - Bounce - Tutor
  (168, 16800, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Ariados - Bug Bite - Tutor
  (168, 16800, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Ariados - Foul Play - Tutor
  (168, 16800, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Ariados - Electroweb - Tutor
  (168, 16800, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Ariados - Throat Chop - Tutor
  (168, 16800, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Ariados - Stomping Tantrum - Tutor
  (168, 16800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Ariados - Swords Dance - Evolution
  (168, 16800, 14, 16, NULL, 7, NULL, NULL, NULL, NULL, 62),

  -- Crobat - Bite - Level 1
  (169, 16900, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crobat - Supersonic - Level 1
  (169, 16900, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crobat - Absorb - Level 1
  (169, 16900, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crobat - Screech - Level 1
  (169, 16900, 103, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crobat - Astonish - Level 1
  (169, 16900, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Crobat - Cross Poison - Level 1
  (169, 16900, 440, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Crobat - Supersonic - Level 5
  (169, 16900, 48, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Crobat - Astonish - Level 7
  (169, 16900, 310, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Crobat - Bite - Level 11
  (169, 16900, 44, 16, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Crobat - Wing Attack - Level 13
  (169, 16900, 17, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Crobat - Confuse Ray - Level 17
  (169, 16900, 109, 16, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Crobat - Air Cutter - Level 19
  (169, 16900, 314, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Crobat - Swift - Level 24
  (169, 16900, 129, 16, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Crobat - Poison Fang - Level 27
  (169, 16900, 305, 16, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Crobat - Mean Look - Level 32
  (169, 16900, 212, 16, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Crobat - Leech Life - Level 35
  (169, 16900, 141, 16, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Crobat - Haze - Level 40
  (169, 16900, 114, 16, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Crobat - Venoshock - Level 43
  (169, 16900, 474, 16, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Crobat - Air Slash - Level 48
  (169, 16900, 403, 16, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Crobat - Quick Guard - Level 51
  (169, 16900, 501, 16, NULL, 1, 51, NULL, NULL, NULL, 20),
  -- Crobat - Toxic - TM06
  (169, 16900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Crobat - Venoshock - TM09
  (169, 16900, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 22),
  -- Crobat - Hidden Power - TM10
  (169, 16900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Crobat - Sunny Day - TM11
  (169, 16900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Crobat - Taunt - TM12
  (169, 16900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Crobat - Hyper Beam - TM15
  (169, 16900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Crobat - Protect - TM17
  (169, 16900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Crobat - Rain Dance - TM18
  (169, 16900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Crobat - Roost - TM19
  (169, 16900, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 29),
  -- Crobat - Frustration - TM21
  (169, 16900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Crobat - Return - TM27
  (169, 16900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Crobat - Leech Life - TM28
  (169, 16900, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 32),
  -- Crobat - Shadow Ball - TM30
  (169, 16900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Crobat - Double Team - TM32
  (169, 16900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Crobat - Sludge Bomb - TM36
  (169, 16900, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Crobat - Aerial Ace - TM40
  (169, 16900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Crobat - Torment - TM41
  (169, 16900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Crobat - Facade - TM42
  (169, 16900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Crobat - Rest - TM44
  (169, 16900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Crobat - Attract - TM45
  (169, 16900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Crobat - Thief - TM46
  (169, 16900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Crobat - Round - TM48
  (169, 16900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Crobat - Steel Wing - TM51
  (169, 16900, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 43),
  -- Crobat - Acrobatics - TM62
  (169, 16900, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 44),
  -- Crobat - Payback - TM66
  (169, 16900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Crobat - Giga Impact - TM68
  (169, 16900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Crobat - Fly - TM76
  (169, 16900, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 47),
  -- Crobat - X-Scissor - TM81
  (169, 16900, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 48),
  -- Crobat - Swagger - TM87
  (169, 16900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Crobat - Sleep Talk - TM88
  (169, 16900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Crobat - U-turn - TM89
  (169, 16900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 51),
  -- Crobat - Substitute - TM90
  (169, 16900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Crobat - Dark Pulse - TM97
  (169, 16900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 53),
  -- Crobat - Confide - TM100
  (169, 16900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Crobat - Sky Attack - Tutor
  (169, 16900, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Crobat - Super Fang - Tutor
  (169, 16900, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Crobat - Snore - Tutor
  (169, 16900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Crobat - Giga Drain - Tutor
  (169, 16900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Crobat - Uproar - Tutor
  (169, 16900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Crobat - Heat Wave - Tutor
  (169, 16900, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Crobat - Snatch - Tutor
  (169, 16900, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Crobat - Tailwind - Tutor
  (169, 16900, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Crobat - Zen Headbutt - Tutor
  (169, 16900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Crobat - Defog - Tutor
  (169, 16900, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Crobat - Cross Poison - Evolution
  (169, 16900, 440, 16, NULL, 7, NULL, NULL, NULL, NULL, 65),

  -- Chinchou - Supersonic - Level 1
  (170, 17000, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chinchou - Bubble - Level 1
  (170, 17000, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chinchou - Thunder Wave - Level 6
  (170, 17000, 86, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Chinchou - Electro Ball - Level 9
  (170, 17000, 486, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chinchou - Water Gun - Level 12
  (170, 17000, 55, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chinchou - Confuse Ray - Level 17
  (170, 17000, 109, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chinchou - Bubble Beam - Level 20
  (170, 17000, 61, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chinchou - Spark - Level 23
  (170, 17000, 209, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chinchou - Signal Beam - Level 28
  (170, 17000, 324, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Chinchou - Flail - Level 31
  (170, 17000, 175, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Chinchou - Discharge - Level 34
  (170, 17000, 435, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Chinchou - Take Down - Level 39
  (170, 17000, 36, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Chinchou - Aqua Ring - Level 42
  (170, 17000, 392, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Chinchou - Hydro Pump - Level 45
  (170, 17000, 56, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Chinchou - Ion Deluge - Level 47
  (170, 17000, 569, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Chinchou - Charge - Level 50
  (170, 17000, 268, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Chinchou - Toxic - TM06
  (170, 17000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Chinchou - Hail - TM07
  (170, 17000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 18),
  -- Chinchou - Hidden Power - TM10
  (170, 17000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Chinchou - Ice Beam - TM13
  (170, 17000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 20),
  -- Chinchou - Blizzard - TM14
  (170, 17000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 21),
  -- Chinchou - Protect - TM17
  (170, 17000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Chinchou - Rain Dance - TM18
  (170, 17000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Chinchou - Frustration - TM21
  (170, 17000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Chinchou - Thunderbolt - TM24
  (170, 17000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Chinchou - Thunder - TM25
  (170, 17000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Chinchou - Return - TM27
  (170, 17000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Chinchou - Double Team - TM32
  (170, 17000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Chinchou - Facade - TM42
  (170, 17000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Chinchou - Rest - TM44
  (170, 17000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Chinchou - Attract - TM45
  (170, 17000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Chinchou - Round - TM48
  (170, 17000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Chinchou - Scald - TM55
  (170, 17000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 33),
  -- Chinchou - Charge Beam - TM57
  (170, 17000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 34),
  -- Chinchou - Volt Switch - TM72
  (170, 17000, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 35),
  -- Chinchou - Thunder Wave - TM73
  (170, 17000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 36),
  -- Chinchou - Swagger - TM87
  (170, 17000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Chinchou - Sleep Talk - TM88
  (170, 17000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Chinchou - Substitute - TM90
  (170, 17000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Chinchou - Wild Charge - TM93
  (170, 17000, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 40),
  -- Chinchou - Surf - TM94
  (170, 17000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 41),
  -- Chinchou - Waterfall - TM98
  (170, 17000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 42),
  -- Chinchou - Dazzling Gleam - TM99
  (170, 17000, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 43),
  -- Chinchou - Confide - TM100
  (170, 17000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Chinchou - Mist - Egg
  (170, 17000, 54, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chinchou - Psybeam - Egg
  (170, 17000, 60, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chinchou - Agility - Egg
  (170, 17000, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chinchou - Screech - Egg
  (170, 17000, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chinchou - Amnesia - Egg
  (170, 17000, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chinchou - Flail - Egg
  (170, 17000, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chinchou - Whirlpool - Egg
  (170, 17000, 250, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chinchou - Shock Wave - Egg
  (170, 17000, 351, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chinchou - Water Pulse - Egg
  (170, 17000, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chinchou - Brine - Egg
  (170, 17000, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chinchou - Soak - Egg
  (170, 17000, 487, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chinchou - Snore - Tutor
  (170, 17000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Chinchou - Icy Wind - Tutor
  (170, 17000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Chinchou - Heal Bell - Tutor
  (170, 17000, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Chinchou - Signal Beam - Tutor
  (170, 17000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Chinchou - Bounce - Tutor
  (170, 17000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Chinchou - Shock Wave - Tutor
  (170, 17000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Chinchou - Water Pulse - Tutor
  (170, 17000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Lanturn - Supersonic - Level 1
  (171, 17100, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lanturn - Thunder Wave - Level 1
  (171, 17100, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lanturn - Bubble - Level 1
  (171, 17100, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lanturn - Stockpile - Level 1
  (171, 17100, 254, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lanturn - Spit Up - Level 1
  (171, 17100, 255, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lanturn - Swallow - Level 1
  (171, 17100, 256, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lanturn - Electro Ball - Level 1
  (171, 17100, 486, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lanturn - Eerie Impulse - Level 1
  (171, 17100, 598, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lanturn - Spotlight - Level 1
  (171, 17100, 671, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lanturn - Thunder Wave - Level 6
  (171, 17100, 86, 16, NULL, 1, 6, NULL, NULL, NULL, 10),
  -- Lanturn - Electro Ball - Level 9
  (171, 17100, 486, 16, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Lanturn - Water Gun - Level 12
  (171, 17100, 55, 16, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Lanturn - Confuse Ray - Level 17
  (171, 17100, 109, 16, NULL, 1, 17, NULL, NULL, NULL, 13),
  -- Lanturn - Bubble Beam - Level 20
  (171, 17100, 61, 16, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Lanturn - Spark - Level 23
  (171, 17100, 209, 16, NULL, 1, 23, NULL, NULL, NULL, 15),
  -- Lanturn - Signal Beam - Level 29
  (171, 17100, 324, 16, NULL, 1, 29, NULL, NULL, NULL, 16),
  -- Lanturn - Flail - Level 33
  (171, 17100, 175, 16, NULL, 1, 33, NULL, NULL, NULL, 17),
  -- Lanturn - Discharge - Level 37
  (171, 17100, 435, 16, NULL, 1, 37, NULL, NULL, NULL, 18),
  -- Lanturn - Take Down - Level 43
  (171, 17100, 36, 16, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Lanturn - Aqua Ring - Level 47
  (171, 17100, 392, 16, NULL, 1, 47, NULL, NULL, NULL, 20),
  -- Lanturn - Hydro Pump - Level 51
  (171, 17100, 56, 16, NULL, 1, 51, NULL, NULL, NULL, 21),
  -- Lanturn - Ion Deluge - Level 54
  (171, 17100, 569, 16, NULL, 1, 54, NULL, NULL, NULL, 22),
  -- Lanturn - Charge - Level 58
  (171, 17100, 268, 16, NULL, 1, 58, NULL, NULL, NULL, 23),
  -- Lanturn - Toxic - TM06
  (171, 17100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Lanturn - Hail - TM07
  (171, 17100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 25),
  -- Lanturn - Hidden Power - TM10
  (171, 17100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Lanturn - Ice Beam - TM13
  (171, 17100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 27),
  -- Lanturn - Blizzard - TM14
  (171, 17100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 28),
  -- Lanturn - Hyper Beam - TM15
  (171, 17100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Lanturn - Protect - TM17
  (171, 17100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Lanturn - Rain Dance - TM18
  (171, 17100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Lanturn - Frustration - TM21
  (171, 17100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Lanturn - Thunderbolt - TM24
  (171, 17100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 33),
  -- Lanturn - Thunder - TM25
  (171, 17100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 34),
  -- Lanturn - Return - TM27
  (171, 17100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 35),
  -- Lanturn - Double Team - TM32
  (171, 17100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Lanturn - Facade - TM42
  (171, 17100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Lanturn - Rest - TM44
  (171, 17100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Lanturn - Attract - TM45
  (171, 17100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Lanturn - Round - TM48
  (171, 17100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Lanturn - Scald - TM55
  (171, 17100, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 41),
  -- Lanturn - Charge Beam - TM57
  (171, 17100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 42),
  -- Lanturn - Giga Impact - TM68
  (171, 17100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Lanturn - Volt Switch - TM72
  (171, 17100, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 44),
  -- Lanturn - Thunder Wave - TM73
  (171, 17100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 45),
  -- Lanturn - Swagger - TM87
  (171, 17100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Lanturn - Sleep Talk - TM88
  (171, 17100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Lanturn - Substitute - TM90
  (171, 17100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Lanturn - Wild Charge - TM93
  (171, 17100, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 49),
  -- Lanturn - Surf - TM94
  (171, 17100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 50),
  -- Lanturn - Waterfall - TM98
  (171, 17100, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 51),
  -- Lanturn - Dazzling Gleam - TM99
  (171, 17100, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 52),
  -- Lanturn - Confide - TM100
  (171, 17100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Lanturn - Snore - Tutor
  (171, 17100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Lanturn - Icy Wind - Tutor
  (171, 17100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Lanturn - Heal Bell - Tutor
  (171, 17100, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Lanturn - Signal Beam - Tutor
  (171, 17100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Lanturn - Bounce - Tutor
  (171, 17100, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Lanturn - Shock Wave - Tutor
  (171, 17100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Lanturn - Water Pulse - Tutor
  (171, 17100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Lanturn - Aqua Tail - Tutor
  (171, 17100, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Lanturn - Stockpile - Evolution
  (171, 17100, 254, 16, NULL, 7, NULL, NULL, NULL, NULL, 62),
  -- Lanturn - Spit Up - Evolution
  (171, 17100, 255, 16, NULL, 7, NULL, NULL, NULL, NULL, 63),
  -- Lanturn - Swallow - Evolution
  (171, 17100, 256, 16, NULL, 7, NULL, NULL, NULL, NULL, 64),

  -- Pichu - Thunder Shock - Level 1
  (172, 17200, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pichu - Charm - Level 1
  (172, 17200, 204, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pichu - Tail Whip - Level 5
  (172, 17200, 39, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pichu - Sweet Kiss - Level 10
  (172, 17200, 186, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pichu - Nasty Plot - Level 13
  (172, 17200, 417, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pichu - Thunder Wave - Level 18
  (172, 17200, 86, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Pichu - Toxic - TM06
  (172, 17200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 7),
  -- Pichu - Hidden Power - TM10
  (172, 17200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 8),
  -- Pichu - Light Screen - TM16
  (172, 17200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 9),
  -- Pichu - Protect - TM17
  (172, 17200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 10),
  -- Pichu - Rain Dance - TM18
  (172, 17200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 11),
  -- Pichu - Frustration - TM21
  (172, 17200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 12),
  -- Pichu - Thunderbolt - TM24
  (172, 17200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 13),
  -- Pichu - Thunder - TM25
  (172, 17200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 14),
  -- Pichu - Return - TM27
  (172, 17200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 15),
  -- Pichu - Double Team - TM32
  (172, 17200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 16),
  -- Pichu - Facade - TM42
  (172, 17200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 17),
  -- Pichu - Rest - TM44
  (172, 17200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 18),
  -- Pichu - Attract - TM45
  (172, 17200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 19),
  -- Pichu - Round - TM48
  (172, 17200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 20),
  -- Pichu - Echoed Voice - TM49
  (172, 17200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 21),
  -- Pichu - Fling - TM56
  (172, 17200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 22),
  -- Pichu - Charge Beam - TM57
  (172, 17200, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 23),
  -- Pichu - Volt Switch - TM72
  (172, 17200, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 24),
  -- Pichu - Thunder Wave - TM73
  (172, 17200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 25),
  -- Pichu - Grass Knot - TM86
  (172, 17200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 26),
  -- Pichu - Swagger - TM87
  (172, 17200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 27),
  -- Pichu - Sleep Talk - TM88
  (172, 17200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 28),
  -- Pichu - Substitute - TM90
  (172, 17200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 29),
  -- Pichu - Wild Charge - TM93
  (172, 17200, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 30),
  -- Pichu - Confide - TM100
  (172, 17200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 31),
  -- Pichu - Double Slap - Egg
  (172, 17200, 3, 16, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Pichu - Thunder Punch - Egg
  (172, 17200, 9, 16, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Pichu - Bide - Egg
  (172, 17200, 117, 16, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Pichu - Flail - Egg
  (172, 17200, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Pichu - Reversal - Egg
  (172, 17200, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Pichu - Endure - Egg
  (172, 17200, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Pichu - Present - Egg
  (172, 17200, 217, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Pichu - Encore - Egg
  (172, 17200, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Pichu - Fake Out - Egg
  (172, 17200, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pichu - Charge - Egg
  (172, 17200, 268, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pichu - Wish - Egg
  (172, 17200, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pichu - Tickle - Egg
  (172, 17200, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pichu - Volt Tackle - Egg
  (172, 17200, 344, 16, NULL, 5, NULL, 364, NULL, NULL, 44),
  -- Pichu - Lucky Chant - Egg
  (172, 17200, 381, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pichu - Bestow - Egg
  (172, 17200, 516, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pichu - Disarming Voice - Egg
  (172, 17200, 574, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pichu - Electric Terrain - Egg
  (172, 17200, 604, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pichu - Thunder Punch - Tutor
  (172, 17200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Pichu - Snore - Tutor
  (172, 17200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Pichu - Iron Tail - Tutor
  (172, 17200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Pichu - Uproar - Tutor
  (172, 17200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Pichu - Helping Hand - Tutor
  (172, 17200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Pichu - Signal Beam - Tutor
  (172, 17200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Pichu - Covet - Tutor
  (172, 17200, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Pichu - Shock Wave - Tutor
  (172, 17200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Pichu - Magnet Rise - Tutor
  (172, 17200, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Pichu - Electroweb - Tutor
  (172, 17200, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Cleffa - Pound - Level 1
  (173, 17300, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cleffa - Charm - Level 1
  (173, 17300, 204, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cleffa - Encore - Level 4
  (173, 17300, 227, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cleffa - Sing - Level 7
  (173, 17300, 47, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Cleffa - Sweet Kiss - Level 10
  (173, 17300, 186, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Cleffa - Copycat - Level 13
  (173, 17300, 383, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Cleffa - Magical Leaf - Level 16
  (173, 17300, 345, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cleffa - Work Up - TM01
  (173, 17300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 8),
  -- Cleffa - Psyshock - TM03
  (173, 17300, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 9),
  -- Cleffa - Toxic - TM06
  (173, 17300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 10),
  -- Cleffa - Hidden Power - TM10
  (173, 17300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 11),
  -- Cleffa - Sunny Day - TM11
  (173, 17300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 12),
  -- Cleffa - Light Screen - TM16
  (173, 17300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 13),
  -- Cleffa - Protect - TM17
  (173, 17300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 14),
  -- Cleffa - Rain Dance - TM18
  (173, 17300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 15),
  -- Cleffa - Safeguard - TM20
  (173, 17300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 16),
  -- Cleffa - Frustration - TM21
  (173, 17300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 17),
  -- Cleffa - Solar Beam - TM22
  (173, 17300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 18),
  -- Cleffa - Return - TM27
  (173, 17300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 19),
  -- Cleffa - Psychic - TM29
  (173, 17300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 20),
  -- Cleffa - Shadow Ball - TM30
  (173, 17300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 21),
  -- Cleffa - Double Team - TM32
  (173, 17300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Cleffa - Reflect - TM33
  (173, 17300, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 23),
  -- Cleffa - Flamethrower - TM35
  (173, 17300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 24),
  -- Cleffa - Fire Blast - TM38
  (173, 17300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 25),
  -- Cleffa - Facade - TM42
  (173, 17300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Cleffa - Rest - TM44
  (173, 17300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Cleffa - Attract - TM45
  (173, 17300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Cleffa - Round - TM48
  (173, 17300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Cleffa - Echoed Voice - TM49
  (173, 17300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 30),
  -- Cleffa - Fling - TM56
  (173, 17300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 31),
  -- Cleffa - Thunder Wave - TM73
  (173, 17300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 32),
  -- Cleffa - Psych Up - TM77
  (173, 17300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 33),
  -- Cleffa - Dream Eater - TM85
  (173, 17300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 34),
  -- Cleffa - Grass Knot - TM86
  (173, 17300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 35),
  -- Cleffa - Swagger - TM87
  (173, 17300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Cleffa - Sleep Talk - TM88
  (173, 17300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Cleffa - Substitute - TM90
  (173, 17300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Cleffa - Confide - TM100
  (173, 17300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Cleffa - Mimic - Egg
  (173, 17300, 102, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cleffa - Metronome - Egg
  (173, 17300, 118, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cleffa - Amnesia - Egg
  (173, 17300, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cleffa - Splash - Egg
  (173, 17300, 150, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cleffa - Belly Drum - Egg
  (173, 17300, 187, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cleffa - Present - Egg
  (173, 17300, 217, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cleffa - Wish - Egg
  (173, 17300, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cleffa - Aromatherapy - Egg
  (173, 17300, 312, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cleffa - Fake Tears - Egg
  (173, 17300, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cleffa - Tickle - Egg
  (173, 17300, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cleffa - Covet - Egg
  (173, 17300, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cleffa - Stored Power - Egg
  (173, 17300, 500, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cleffa - Heal Pulse - Egg
  (173, 17300, 505, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cleffa - Misty Terrain - Egg
  (173, 17300, 581, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cleffa - Snore - Tutor
  (173, 17300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Cleffa - Icy Wind - Tutor
  (173, 17300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Cleffa - Iron Tail - Tutor
  (173, 17300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Cleffa - Uproar - Tutor
  (173, 17300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Cleffa - Helping Hand - Tutor
  (173, 17300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Cleffa - Trick - Tutor
  (173, 17300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Cleffa - Role Play - Tutor
  (173, 17300, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Cleffa - Magic Coat - Tutor
  (173, 17300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Cleffa - Recycle - Tutor
  (173, 17300, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Cleffa - Endeavor - Tutor
  (173, 17300, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Cleffa - Hyper Voice - Tutor
  (173, 17300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Cleffa - Signal Beam - Tutor
  (173, 17300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Cleffa - Covet - Tutor
  (173, 17300, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Cleffa - Shock Wave - Tutor
  (173, 17300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Cleffa - Water Pulse - Tutor
  (173, 17300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Cleffa - Gravity - Tutor
  (173, 17300, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Cleffa - Last Resort - Tutor
  (173, 17300, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Cleffa - Zen Headbutt - Tutor
  (173, 17300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Cleffa - Wonder Room - Tutor
  (173, 17300, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Cleffa - Telekinesis - Tutor
  (173, 17300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Cleffa - After You - Tutor
  (173, 17300, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),

  -- Igglybuff - Sing - Level 1
  (174, 17400, 47, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Igglybuff - Charm - Level 1
  (174, 17400, 204, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Igglybuff - Defense Curl - Level 3
  (174, 17400, 111, 16, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Igglybuff - Pound - Level 5
  (174, 17400, 1, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Igglybuff - Sweet Kiss - Level 9
  (174, 17400, 186, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Igglybuff - Copycat - Level 11
  (174, 17400, 383, 16, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Igglybuff - Work Up - TM01
  (174, 17400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 7),
  -- Igglybuff - Toxic - TM06
  (174, 17400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 8),
  -- Igglybuff - Hidden Power - TM10
  (174, 17400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 9),
  -- Igglybuff - Sunny Day - TM11
  (174, 17400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 10),
  -- Igglybuff - Light Screen - TM16
  (174, 17400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 11),
  -- Igglybuff - Protect - TM17
  (174, 17400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 12),
  -- Igglybuff - Rain Dance - TM18
  (174, 17400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 13),
  -- Igglybuff - Safeguard - TM20
  (174, 17400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 14),
  -- Igglybuff - Frustration - TM21
  (174, 17400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 15),
  -- Igglybuff - Solar Beam - TM22
  (174, 17400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 16),
  -- Igglybuff - Return - TM27
  (174, 17400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 17),
  -- Igglybuff - Psychic - TM29
  (174, 17400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 18),
  -- Igglybuff - Shadow Ball - TM30
  (174, 17400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 19),
  -- Igglybuff - Double Team - TM32
  (174, 17400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 20),
  -- Igglybuff - Reflect - TM33
  (174, 17400, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 21),
  -- Igglybuff - Flamethrower - TM35
  (174, 17400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 22),
  -- Igglybuff - Fire Blast - TM38
  (174, 17400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 23),
  -- Igglybuff - Facade - TM42
  (174, 17400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 24),
  -- Igglybuff - Rest - TM44
  (174, 17400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 25),
  -- Igglybuff - Attract - TM45
  (174, 17400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 26),
  -- Igglybuff - Round - TM48
  (174, 17400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 27),
  -- Igglybuff - Echoed Voice - TM49
  (174, 17400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 28),
  -- Igglybuff - Fling - TM56
  (174, 17400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 29),
  -- Igglybuff - Thunder Wave - TM73
  (174, 17400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 30),
  -- Igglybuff - Psych Up - TM77
  (174, 17400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 31),
  -- Igglybuff - Dream Eater - TM85
  (174, 17400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 32),
  -- Igglybuff - Grass Knot - TM86
  (174, 17400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 33),
  -- Igglybuff - Swagger - TM87
  (174, 17400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Igglybuff - Sleep Talk - TM88
  (174, 17400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Igglybuff - Substitute - TM90
  (174, 17400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Igglybuff - Wild Charge - TM93
  (174, 17400, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 37),
  -- Igglybuff - Confide - TM100
  (174, 17400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Igglybuff - Feint Attack - Egg
  (174, 17400, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Igglybuff - Perish Song - Egg
  (174, 17400, 195, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Igglybuff - Sleep Talk - Egg
  (174, 17400, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Igglybuff - Present - Egg
  (174, 17400, 217, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Igglybuff - Wish - Egg
  (174, 17400, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Igglybuff - Fake Tears - Egg
  (174, 17400, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Igglybuff - Covet - Egg
  (174, 17400, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Igglybuff - Gravity - Egg
  (174, 17400, 356, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Igglybuff - Punishment - Egg
  (174, 17400, 386, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Igglybuff - Last Resort - Egg
  (174, 17400, 387, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Igglybuff - Captivate - Egg
  (174, 17400, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Igglybuff - Heal Pulse - Egg
  (174, 17400, 505, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Igglybuff - Misty Terrain - Egg
  (174, 17400, 581, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Igglybuff - Snore - Tutor
  (174, 17400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Igglybuff - Icy Wind - Tutor
  (174, 17400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Igglybuff - Heal Bell - Tutor
  (174, 17400, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Igglybuff - Pain Split - Tutor
  (174, 17400, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Igglybuff - Uproar - Tutor
  (174, 17400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Igglybuff - Helping Hand - Tutor
  (174, 17400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Igglybuff - Role Play - Tutor
  (174, 17400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Igglybuff - Magic Coat - Tutor
  (174, 17400, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Igglybuff - Recycle - Tutor
  (174, 17400, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Igglybuff - Endeavor - Tutor
  (174, 17400, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Igglybuff - Hyper Voice - Tutor
  (174, 17400, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Igglybuff - Bounce - Tutor
  (174, 17400, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Igglybuff - Covet - Tutor
  (174, 17400, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Igglybuff - Shock Wave - Tutor
  (174, 17400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Igglybuff - Water Pulse - Tutor
  (174, 17400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Igglybuff - Gravity - Tutor
  (174, 17400, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Igglybuff - Last Resort - Tutor
  (174, 17400, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Togepi - Growl - Level 1
  (175, 17500, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togepi - Charm - Level 1
  (175, 17500, 204, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togepi - Metronome - Level 5
  (175, 17500, 118, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Togepi - Sweet Kiss - Level 9
  (175, 17500, 186, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Togepi - Yawn - Level 13
  (175, 17500, 281, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Togepi - Encore - Level 17
  (175, 17500, 227, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Togepi - Follow Me - Level 21
  (175, 17500, 266, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Togepi - Bestow - Level 25
  (175, 17500, 516, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Togepi - Wish - Level 29
  (175, 17500, 273, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Togepi - Ancient Power - Level 33
  (175, 17500, 246, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Togepi - Safeguard - Level 37
  (175, 17500, 219, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Togepi - Baton Pass - Level 41
  (175, 17500, 226, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Togepi - Double-Edge - Level 45
  (175, 17500, 38, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Togepi - Last Resort - Level 49
  (175, 17500, 387, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Togepi - After You - Level 53
  (175, 17500, 495, 16, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Togepi - Work Up - TM01
  (175, 17500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Togepi - Psyshock - TM03
  (175, 17500, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Togepi - Toxic - TM06
  (175, 17500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Togepi - Hidden Power - TM10
  (175, 17500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Togepi - Sunny Day - TM11
  (175, 17500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Togepi - Light Screen - TM16
  (175, 17500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 21),
  -- Togepi - Protect - TM17
  (175, 17500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Togepi - Rain Dance - TM18
  (175, 17500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Togepi - Safeguard - TM20
  (175, 17500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Togepi - Frustration - TM21
  (175, 17500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Togepi - Solar Beam - TM22
  (175, 17500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Togepi - Return - TM27
  (175, 17500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Togepi - Psychic - TM29
  (175, 17500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 28),
  -- Togepi - Shadow Ball - TM30
  (175, 17500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Togepi - Double Team - TM32
  (175, 17500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Togepi - Reflect - TM33
  (175, 17500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 31),
  -- Togepi - Flamethrower - TM35
  (175, 17500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 32),
  -- Togepi - Fire Blast - TM38
  (175, 17500, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 33),
  -- Togepi - Facade - TM42
  (175, 17500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Togepi - Rest - TM44
  (175, 17500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Togepi - Attract - TM45
  (175, 17500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Togepi - Round - TM48
  (175, 17500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Togepi - Echoed Voice - TM49
  (175, 17500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 38),
  -- Togepi - Fling - TM56
  (175, 17500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Togepi - Thunder Wave - TM73
  (175, 17500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 40),
  -- Togepi - Psych Up - TM77
  (175, 17500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Togepi - Dream Eater - TM85
  (175, 17500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 42),
  -- Togepi - Grass Knot - TM86
  (175, 17500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 43),
  -- Togepi - Swagger - TM87
  (175, 17500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Togepi - Sleep Talk - TM88
  (175, 17500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Togepi - Substitute - TM90
  (175, 17500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Togepi - Dazzling Gleam - TM99
  (175, 17500, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 47),
  -- Togepi - Confide - TM100
  (175, 17500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Togepi - Peck - Egg
  (175, 17500, 64, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Togepi - Mirror Move - Egg
  (175, 17500, 119, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Togepi - Foresight - Egg
  (175, 17500, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Togepi - Present - Egg
  (175, 17500, 217, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Togepi - Morning Sun - Egg
  (175, 17500, 234, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Togepi - Future Sight - Egg
  (175, 17500, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Togepi - Secret Power - Egg
  (175, 17500, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Togepi - Extrasensory - Egg
  (175, 17500, 326, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Togepi - Psycho Shift - Egg
  (175, 17500, 375, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Togepi - Lucky Chant - Egg
  (175, 17500, 381, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Togepi - Nasty Plot - Egg
  (175, 17500, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Togepi - Stored Power - Egg
  (175, 17500, 500, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Togepi - Snore - Tutor
  (175, 17500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Togepi - Heal Bell - Tutor
  (175, 17500, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Togepi - Uproar - Tutor
  (175, 17500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Togepi - Trick - Tutor
  (175, 17500, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Togepi - Magic Coat - Tutor
  (175, 17500, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Togepi - Endeavor - Tutor
  (175, 17500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Togepi - Hyper Voice - Tutor
  (175, 17500, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Togepi - Signal Beam - Tutor
  (175, 17500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Togepi - Covet - Tutor
  (175, 17500, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Togepi - Shock Wave - Tutor
  (175, 17500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Togepi - Water Pulse - Tutor
  (175, 17500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Togepi - Last Resort - Tutor
  (175, 17500, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Togepi - Zen Headbutt - Tutor
  (175, 17500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Togepi - Telekinesis - Tutor
  (175, 17500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Togepi - After You - Tutor
  (175, 17500, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),

  -- Togetic - Growl - Level 1
  (176, 17600, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togetic - Metronome - Level 1
  (176, 17600, 118, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togetic - Sweet Kiss - Level 1
  (176, 17600, 186, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Togetic - Charm - Level 1
  (176, 17600, 204, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Togetic - Magical Leaf - Level 1
  (176, 17600, 345, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Togetic - Metronome - Level 5
  (176, 17600, 118, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Togetic - Sweet Kiss - Level 9
  (176, 17600, 186, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Togetic - Yawn - Level 13
  (176, 17600, 281, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Togetic - Fairy Wind - Level 14
  (176, 17600, 584, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Togetic - Encore - Level 17
  (176, 17600, 227, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Togetic - Follow Me - Level 21
  (176, 17600, 266, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Togetic - Bestow - Level 25
  (176, 17600, 516, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Togetic - Wish - Level 29
  (176, 17600, 273, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Togetic - Ancient Power - Level 33
  (176, 17600, 246, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Togetic - Safeguard - Level 37
  (176, 17600, 219, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Togetic - Baton Pass - Level 41
  (176, 17600, 226, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Togetic - Double-Edge - Level 45
  (176, 17600, 38, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Togetic - Last Resort - Level 49
  (176, 17600, 387, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Togetic - After You - Level 53
  (176, 17600, 495, 16, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Togetic - Work Up - TM01
  (176, 17600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Togetic - Psyshock - TM03
  (176, 17600, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 21),
  -- Togetic - Toxic - TM06
  (176, 17600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Togetic - Hidden Power - TM10
  (176, 17600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Togetic - Sunny Day - TM11
  (176, 17600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Togetic - Hyper Beam - TM15
  (176, 17600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Togetic - Light Screen - TM16
  (176, 17600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Togetic - Protect - TM17
  (176, 17600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Togetic - Rain Dance - TM18
  (176, 17600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Togetic - Roost - TM19
  (176, 17600, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 29),
  -- Togetic - Safeguard - TM20
  (176, 17600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 30),
  -- Togetic - Frustration - TM21
  (176, 17600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Togetic - Solar Beam - TM22
  (176, 17600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 32),
  -- Togetic - Return - TM27
  (176, 17600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Togetic - Psychic - TM29
  (176, 17600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 34),
  -- Togetic - Shadow Ball - TM30
  (176, 17600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 35),
  -- Togetic - Brick Break - TM31
  (176, 17600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 36),
  -- Togetic - Double Team - TM32
  (176, 17600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 37),
  -- Togetic - Reflect - TM33
  (176, 17600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 38),
  -- Togetic - Flamethrower - TM35
  (176, 17600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 39),
  -- Togetic - Fire Blast - TM38
  (176, 17600, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 40),
  -- Togetic - Aerial Ace - TM40
  (176, 17600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 41),
  -- Togetic - Facade - TM42
  (176, 17600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 42),
  -- Togetic - Rest - TM44
  (176, 17600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 43),
  -- Togetic - Attract - TM45
  (176, 17600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 44),
  -- Togetic - Round - TM48
  (176, 17600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Togetic - Echoed Voice - TM49
  (176, 17600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 46),
  -- Togetic - Steel Wing - TM51
  (176, 17600, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 47),
  -- Togetic - Fling - TM56
  (176, 17600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 48),
  -- Togetic - Smart Strike - TM67
  (176, 17600, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 49),
  -- Togetic - Giga Impact - TM68
  (176, 17600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 50),
  -- Togetic - Thunder Wave - TM73
  (176, 17600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 51),
  -- Togetic - Fly - TM76
  (176, 17600, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 52),
  -- Togetic - Psych Up - TM77
  (176, 17600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 53),
  -- Togetic - Dream Eater - TM85
  (176, 17600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 54),
  -- Togetic - Grass Knot - TM86
  (176, 17600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 55),
  -- Togetic - Swagger - TM87
  (176, 17600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 56),
  -- Togetic - Sleep Talk - TM88
  (176, 17600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 57),
  -- Togetic - Substitute - TM90
  (176, 17600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 58),
  -- Togetic - Dazzling Gleam - TM99
  (176, 17600, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 59),
  -- Togetic - Confide - TM100
  (176, 17600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 60),
  -- Togetic - Snore - Tutor
  (176, 17600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Togetic - Heal Bell - Tutor
  (176, 17600, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Togetic - Heat Wave - Tutor
  (176, 17600, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Togetic - Focus Punch - Tutor
  (176, 17600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Togetic - Trick - Tutor
  (176, 17600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Togetic - Magic Coat - Tutor
  (176, 17600, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Togetic - Endeavor - Tutor
  (176, 17600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Togetic - Hyper Voice - Tutor
  (176, 17600, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Togetic - Signal Beam - Tutor
  (176, 17600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Togetic - Covet - Tutor
  (176, 17600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Togetic - Shock Wave - Tutor
  (176, 17600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Togetic - Water Pulse - Tutor
  (176, 17600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Togetic - Tailwind - Tutor
  (176, 17600, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Togetic - Last Resort - Tutor
  (176, 17600, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Togetic - Drain Punch - Tutor
  (176, 17600, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Togetic - Zen Headbutt - Tutor
  (176, 17600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Togetic - Defog - Tutor
  (176, 17600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Togetic - Telekinesis - Tutor
  (176, 17600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Togetic - After You - Tutor
  (176, 17600, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),

  -- Natu - Leer - Level 1
  (177, 17700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Natu - Peck - Level 1
  (177, 17700, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Natu - Night Shade - Level 6
  (177, 17700, 101, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Natu - Teleport - Level 9
  (177, 17700, 100, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Natu - Lucky Chant - Level 12
  (177, 17700, 381, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Natu - Stored Power - Level 17
  (177, 17700, 500, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Natu - Ominous Wind - Level 20
  (177, 17700, 466, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Natu - Confuse Ray - Level 23
  (177, 17700, 109, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Natu - Wish - Level 28
  (177, 17700, 273, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Natu - Psychic - Level 33
  (177, 17700, 94, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Natu - Miracle Eye - Level 36
  (177, 17700, 357, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Natu - Psycho Shift - Level 39
  (177, 17700, 375, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Natu - Future Sight - Level 44
  (177, 17700, 248, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Natu - Power Swap - Level 47
  (177, 17700, 384, 16, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Natu - Guard Swap - Level 47
  (177, 17700, 385, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Natu - Me First - Level 50
  (177, 17700, 382, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Natu - Psyshock - TM03
  (177, 17700, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Natu - Calm Mind - TM04
  (177, 17700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Natu - Toxic - TM06
  (177, 17700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Natu - Hidden Power - TM10
  (177, 17700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Natu - Sunny Day - TM11
  (177, 17700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Natu - Light Screen - TM16
  (177, 17700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Natu - Protect - TM17
  (177, 17700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Natu - Rain Dance - TM18
  (177, 17700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Natu - Roost - TM19
  (177, 17700, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 25),
  -- Natu - Frustration - TM21
  (177, 17700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Natu - Solar Beam - TM22
  (177, 17700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 27),
  -- Natu - Return - TM27
  (177, 17700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Natu - Psychic - TM29
  (177, 17700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 29),
  -- Natu - Shadow Ball - TM30
  (177, 17700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 30),
  -- Natu - Double Team - TM32
  (177, 17700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Natu - Reflect - TM33
  (177, 17700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 32),
  -- Natu - Aerial Ace - TM40
  (177, 17700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Natu - Facade - TM42
  (177, 17700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Natu - Rest - TM44
  (177, 17700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Natu - Attract - TM45
  (177, 17700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Natu - Thief - TM46
  (177, 17700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Natu - Round - TM48
  (177, 17700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Natu - Steel Wing - TM51
  (177, 17700, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 39),
  -- Natu - Thunder Wave - TM73
  (177, 17700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 40),
  -- Natu - Psych Up - TM77
  (177, 17700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Natu - Dream Eater - TM85
  (177, 17700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 42),
  -- Natu - Grass Knot - TM86
  (177, 17700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 43),
  -- Natu - Swagger - TM87
  (177, 17700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Natu - Sleep Talk - TM88
  (177, 17700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Natu - U-turn - TM89
  (177, 17700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 46),
  -- Natu - Substitute - TM90
  (177, 17700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Natu - Trick Room - TM92
  (177, 17700, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 48),
  -- Natu - Dazzling Gleam - TM99
  (177, 17700, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 49),
  -- Natu - Confide - TM100
  (177, 17700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Natu - Drill Peck - Egg
  (177, 17700, 65, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Natu - Quick Attack - Egg
  (177, 17700, 98, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Natu - Haze - Egg
  (177, 17700, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Natu - Feint Attack - Egg
  (177, 17700, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Natu - Steel Wing - Egg
  (177, 17700, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Natu - Skill Swap - Egg
  (177, 17700, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Natu - Refresh - Egg
  (177, 17700, 287, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Natu - Feather Dance - Egg
  (177, 17700, 297, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Natu - Roost - Egg
  (177, 17700, 355, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Natu - Sucker Punch - Egg
  (177, 17700, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Natu - Zen Headbutt - Egg
  (177, 17700, 428, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Natu - Synchronoise - Egg
  (177, 17700, 485, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Natu - Simple Beam - Egg
  (177, 17700, 493, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Natu - Ally Switch - Egg
  (177, 17700, 502, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Natu - Sky Attack - Tutor
  (177, 17700, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Natu - Snore - Tutor
  (177, 17700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Natu - Giga Drain - Tutor
  (177, 17700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Natu - Pain Split - Tutor
  (177, 17700, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Natu - Heat Wave - Tutor
  (177, 17700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Natu - Trick - Tutor
  (177, 17700, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Natu - Magic Coat - Tutor
  (177, 17700, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Natu - Skill Swap - Tutor
  (177, 17700, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Natu - Signal Beam - Tutor
  (177, 17700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Natu - Tailwind - Tutor
  (177, 17700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Natu - Zen Headbutt - Tutor
  (177, 17700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Natu - Telekinesis - Tutor
  (177, 17700, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Natu - Magic Room - Tutor
  (177, 17700, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Natu - Ally Switch - Tutor
  (177, 17700, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),

  -- Xatu - Leer - Level 1
  (178, 17800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Xatu - Peck - Level 1
  (178, 17800, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Xatu - Teleport - Level 1
  (178, 17800, 100, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Xatu - Night Shade - Level 1
  (178, 17800, 101, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Xatu - Tailwind - Level 1
  (178, 17800, 366, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Xatu - Air Slash - Level 1
  (178, 17800, 403, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Xatu - Night Shade - Level 6
  (178, 17800, 101, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Xatu - Teleport - Level 9
  (178, 17800, 100, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Xatu - Lucky Chant - Level 12
  (178, 17800, 381, 16, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Xatu - Stored Power - Level 17
  (178, 17800, 500, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Xatu - Ominous Wind - Level 20
  (178, 17800, 466, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Xatu - Confuse Ray - Level 23
  (178, 17800, 109, 16, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Xatu - Wish - Level 29
  (178, 17800, 273, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Xatu - Psychic - Level 35
  (178, 17800, 94, 16, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Xatu - Miracle Eye - Level 39
  (178, 17800, 357, 16, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Xatu - Psycho Shift - Level 43
  (178, 17800, 375, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Xatu - Future Sight - Level 49
  (178, 17800, 248, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Xatu - Power Swap - Level 53
  (178, 17800, 384, 16, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Xatu - Guard Swap - Level 53
  (178, 17800, 385, 16, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Xatu - Me First - Level 57
  (178, 17800, 382, 16, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Xatu - Psyshock - TM03
  (178, 17800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 21),
  -- Xatu - Calm Mind - TM04
  (178, 17800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 22),
  -- Xatu - Toxic - TM06
  (178, 17800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Xatu - Hidden Power - TM10
  (178, 17800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Xatu - Sunny Day - TM11
  (178, 17800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Xatu - Hyper Beam - TM15
  (178, 17800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Xatu - Light Screen - TM16
  (178, 17800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 27),
  -- Xatu - Protect - TM17
  (178, 17800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Xatu - Rain Dance - TM18
  (178, 17800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Xatu - Roost - TM19
  (178, 17800, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 30),
  -- Xatu - Frustration - TM21
  (178, 17800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Xatu - Solar Beam - TM22
  (178, 17800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 32),
  -- Xatu - Return - TM27
  (178, 17800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Xatu - Psychic - TM29
  (178, 17800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 34),
  -- Xatu - Shadow Ball - TM30
  (178, 17800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 35),
  -- Xatu - Double Team - TM32
  (178, 17800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Xatu - Reflect - TM33
  (178, 17800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 37),
  -- Xatu - Aerial Ace - TM40
  (178, 17800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 38),
  -- Xatu - Facade - TM42
  (178, 17800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Xatu - Rest - TM44
  (178, 17800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Xatu - Attract - TM45
  (178, 17800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Xatu - Thief - TM46
  (178, 17800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 42),
  -- Xatu - Round - TM48
  (178, 17800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Xatu - Steel Wing - TM51
  (178, 17800, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 44),
  -- Xatu - Giga Impact - TM68
  (178, 17800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Xatu - Thunder Wave - TM73
  (178, 17800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 46),
  -- Xatu - Fly - TM76
  (178, 17800, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 47),
  -- Xatu - Psych Up - TM77
  (178, 17800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 48),
  -- Xatu - Dream Eater - TM85
  (178, 17800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 49),
  -- Xatu - Grass Knot - TM86
  (178, 17800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 50),
  -- Xatu - Swagger - TM87
  (178, 17800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Xatu - Sleep Talk - TM88
  (178, 17800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Xatu - U-turn - TM89
  (178, 17800, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 53),
  -- Xatu - Substitute - TM90
  (178, 17800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 54),
  -- Xatu - Trick Room - TM92
  (178, 17800, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 55),
  -- Xatu - Dazzling Gleam - TM99
  (178, 17800, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 56),
  -- Xatu - Confide - TM100
  (178, 17800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 57),
  -- Xatu - Sky Attack - Tutor
  (178, 17800, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Xatu - Snore - Tutor
  (178, 17800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Xatu - Giga Drain - Tutor
  (178, 17800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Xatu - Pain Split - Tutor
  (178, 17800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Xatu - Heat Wave - Tutor
  (178, 17800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Xatu - Trick - Tutor
  (178, 17800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Xatu - Magic Coat - Tutor
  (178, 17800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Xatu - Skill Swap - Tutor
  (178, 17800, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Xatu - Signal Beam - Tutor
  (178, 17800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Xatu - Tailwind - Tutor
  (178, 17800, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Xatu - Zen Headbutt - Tutor
  (178, 17800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Xatu - Defog - Tutor
  (178, 17800, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Xatu - Telekinesis - Tutor
  (178, 17800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Xatu - Magic Room - Tutor
  (178, 17800, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Xatu - Foul Play - Tutor
  (178, 17800, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Xatu - Ally Switch - Tutor
  (178, 17800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Xatu - Laser Focus - Tutor
  (178, 17800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Xatu - Air Slash - Evolution
  (178, 17800, 403, 16, NULL, 7, NULL, NULL, NULL, NULL, 75),

  -- Mareep - Tackle - Level 1
  (179, 17900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mareep - Growl - Level 1
  (179, 17900, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mareep - Thunder Wave - Level 4
  (179, 17900, 86, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mareep - Thunder Shock - Level 8
  (179, 17900, 84, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mareep - Cotton Spore - Level 11
  (179, 17900, 178, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Mareep - Charge - Level 15
  (179, 17900, 268, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Mareep - Take Down - Level 18
  (179, 17900, 36, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Mareep - Electro Ball - Level 22
  (179, 17900, 486, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Mareep - Confuse Ray - Level 25
  (179, 17900, 109, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Mareep - Power Gem - Level 29
  (179, 17900, 408, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Mareep - Discharge - Level 32
  (179, 17900, 435, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mareep - Cotton Guard - Level 36
  (179, 17900, 538, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Mareep - Signal Beam - Level 39
  (179, 17900, 324, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Mareep - Light Screen - Level 43
  (179, 17900, 113, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Mareep - Thunder - Level 46
  (179, 17900, 87, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Mareep - Toxic - TM06
  (179, 17900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Mareep - Hidden Power - TM10
  (179, 17900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Mareep - Light Screen - TM16
  (179, 17900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 18),
  -- Mareep - Protect - TM17
  (179, 17900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Mareep - Rain Dance - TM18
  (179, 17900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Mareep - Safeguard - TM20
  (179, 17900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 21),
  -- Mareep - Frustration - TM21
  (179, 17900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Mareep - Thunderbolt - TM24
  (179, 17900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Mareep - Thunder - TM25
  (179, 17900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 24),
  -- Mareep - Return - TM27
  (179, 17900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Mareep - Double Team - TM32
  (179, 17900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Mareep - Facade - TM42
  (179, 17900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Mareep - Rest - TM44
  (179, 17900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Mareep - Attract - TM45
  (179, 17900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Mareep - Round - TM48
  (179, 17900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Mareep - Echoed Voice - TM49
  (179, 17900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 31),
  -- Mareep - Charge Beam - TM57
  (179, 17900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 32),
  -- Mareep - Thunder Wave - TM73
  (179, 17900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 33),
  -- Mareep - Swagger - TM87
  (179, 17900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Mareep - Sleep Talk - TM88
  (179, 17900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Mareep - Substitute - TM90
  (179, 17900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Mareep - Wild Charge - TM93
  (179, 17900, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 37),
  -- Mareep - Confide - TM100
  (179, 17900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Mareep - Sand Attack - Egg
  (179, 17900, 28, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mareep - Body Slam - Egg
  (179, 17900, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mareep - Take Down - Egg
  (179, 17900, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mareep - Agility - Egg
  (179, 17900, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mareep - Screech - Egg
  (179, 17900, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mareep - Iron Tail - Egg
  (179, 17900, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mareep - Flatter - Egg
  (179, 17900, 260, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mareep - Charge - Egg
  (179, 17900, 268, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mareep - Odor Sleuth - Egg
  (179, 17900, 316, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mareep - After You - Egg
  (179, 17900, 495, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mareep - Eerie Impulse - Egg
  (179, 17900, 598, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mareep - Electric Terrain - Egg
  (179, 17900, 604, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mareep - Snore - Tutor
  (179, 17900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Mareep - Heal Bell - Tutor
  (179, 17900, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Mareep - Iron Tail - Tutor
  (179, 17900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Mareep - Signal Beam - Tutor
  (179, 17900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Mareep - Shock Wave - Tutor
  (179, 17900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Mareep - Magnet Rise - Tutor
  (179, 17900, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Mareep - After You - Tutor
  (179, 17900, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Mareep - Electroweb - Tutor
  (179, 17900, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Flaaffy - Tackle - Level 1
  (180, 18000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flaaffy - Growl - Level 1
  (180, 18000, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flaaffy - Thunder Shock - Level 1
  (180, 18000, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flaaffy - Thunder Wave - Level 1
  (180, 18000, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flaaffy - Thunder Wave - Level 4
  (180, 18000, 86, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Flaaffy - Thunder Shock - Level 8
  (180, 18000, 84, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Flaaffy - Cotton Spore - Level 11
  (180, 18000, 178, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Flaaffy - Charge - Level 16
  (180, 18000, 268, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Flaaffy - Take Down - Level 20
  (180, 18000, 36, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Flaaffy - Electro Ball - Level 25
  (180, 18000, 486, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Flaaffy - Confuse Ray - Level 29
  (180, 18000, 109, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Flaaffy - Power Gem - Level 34
  (180, 18000, 408, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Flaaffy - Discharge - Level 38
  (180, 18000, 435, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Flaaffy - Cotton Guard - Level 43
  (180, 18000, 538, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Flaaffy - Signal Beam - Level 47
  (180, 18000, 324, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Flaaffy - Light Screen - Level 52
  (180, 18000, 113, 16, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Flaaffy - Thunder - Level 56
  (180, 18000, 87, 16, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Flaaffy - Toxic - TM06
  (180, 18000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Flaaffy - Hidden Power - TM10
  (180, 18000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Flaaffy - Light Screen - TM16
  (180, 18000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Flaaffy - Protect - TM17
  (180, 18000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Flaaffy - Rain Dance - TM18
  (180, 18000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Flaaffy - Safeguard - TM20
  (180, 18000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 23),
  -- Flaaffy - Frustration - TM21
  (180, 18000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Flaaffy - Thunderbolt - TM24
  (180, 18000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Flaaffy - Thunder - TM25
  (180, 18000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Flaaffy - Return - TM27
  (180, 18000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Flaaffy - Brick Break - TM31
  (180, 18000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Flaaffy - Double Team - TM32
  (180, 18000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Flaaffy - Facade - TM42
  (180, 18000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Flaaffy - Rest - TM44
  (180, 18000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Flaaffy - Attract - TM45
  (180, 18000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Flaaffy - Round - TM48
  (180, 18000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Flaaffy - Echoed Voice - TM49
  (180, 18000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 34),
  -- Flaaffy - Fling - TM56
  (180, 18000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Flaaffy - Charge Beam - TM57
  (180, 18000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 36),
  -- Flaaffy - Volt Switch - TM72
  (180, 18000, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 37),
  -- Flaaffy - Thunder Wave - TM73
  (180, 18000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 38),
  -- Flaaffy - Swagger - TM87
  (180, 18000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Flaaffy - Sleep Talk - TM88
  (180, 18000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Flaaffy - Substitute - TM90
  (180, 18000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Flaaffy - Wild Charge - TM93
  (180, 18000, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 42),
  -- Flaaffy - Confide - TM100
  (180, 18000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Flaaffy - Fire Punch - Tutor
  (180, 18000, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Flaaffy - Thunder Punch - Tutor
  (180, 18000, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Flaaffy - Snore - Tutor
  (180, 18000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Flaaffy - Heal Bell - Tutor
  (180, 18000, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Flaaffy - Iron Tail - Tutor
  (180, 18000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Flaaffy - Focus Punch - Tutor
  (180, 18000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Flaaffy - Signal Beam - Tutor
  (180, 18000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Flaaffy - Shock Wave - Tutor
  (180, 18000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Flaaffy - Magnet Rise - Tutor
  (180, 18000, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Flaaffy - After You - Tutor
  (180, 18000, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Flaaffy - Electroweb - Tutor
  (180, 18000, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),

  -- Ampharos - Fire Punch - Level 1
  (181, 18100, 7, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ampharos - Thunder Punch - Level 1
  (181, 18100, 9, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ampharos - Tackle - Level 1
  (181, 18100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ampharos - Growl - Level 1
  (181, 18100, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ampharos - Thunder Shock - Level 1
  (181, 18100, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ampharos - Thunder Wave - Level 1
  (181, 18100, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ampharos - Zap Cannon - Level 1
  (181, 18100, 192, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Ampharos - Dragon Pulse - Level 1
  (181, 18100, 406, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Ampharos - Ion Deluge - Level 1
  (181, 18100, 569, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Ampharos - Magnetic Flux - Level 1
  (181, 18100, 602, 16, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Ampharos - Thunder Wave - Level 4
  (181, 18100, 86, 16, NULL, 1, 4, NULL, NULL, NULL, 11),
  -- Ampharos - Thunder Shock - Level 8
  (181, 18100, 84, 16, NULL, 1, 8, NULL, NULL, NULL, 12),
  -- Ampharos - Cotton Spore - Level 11
  (181, 18100, 178, 16, NULL, 1, 11, NULL, NULL, NULL, 13),
  -- Ampharos - Charge - Level 16
  (181, 18100, 268, 16, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Ampharos - Take Down - Level 20
  (181, 18100, 36, 16, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Ampharos - Electro Ball - Level 25
  (181, 18100, 486, 16, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Ampharos - Confuse Ray - Level 29
  (181, 18100, 109, 16, NULL, 1, 29, NULL, NULL, NULL, 17),
  -- Ampharos - Power Gem - Level 35
  (181, 18100, 408, 16, NULL, 1, 35, NULL, NULL, NULL, 18),
  -- Ampharos - Discharge - Level 40
  (181, 18100, 435, 16, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Ampharos - Cotton Guard - Level 46
  (181, 18100, 538, 16, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Ampharos - Signal Beam - Level 51
  (181, 18100, 324, 16, NULL, 1, 51, NULL, NULL, NULL, 21),
  -- Ampharos - Light Screen - Level 57
  (181, 18100, 113, 16, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Ampharos - Thunder - Level 62
  (181, 18100, 87, 16, NULL, 1, 62, NULL, NULL, NULL, 23),
  -- Ampharos - Dragon Pulse - Level 65
  (181, 18100, 406, 16, NULL, 1, 65, NULL, NULL, NULL, 24),
  -- Ampharos - Toxic - TM06
  (181, 18100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 25),
  -- Ampharos - Hidden Power - TM10
  (181, 18100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Ampharos - Hyper Beam - TM15
  (181, 18100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Ampharos - Light Screen - TM16
  (181, 18100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 28),
  -- Ampharos - Protect - TM17
  (181, 18100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Ampharos - Rain Dance - TM18
  (181, 18100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Ampharos - Safeguard - TM20
  (181, 18100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 31),
  -- Ampharos - Frustration - TM21
  (181, 18100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Ampharos - Thunderbolt - TM24
  (181, 18100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 33),
  -- Ampharos - Thunder - TM25
  (181, 18100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 34),
  -- Ampharos - Return - TM27
  (181, 18100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 35),
  -- Ampharos - Brick Break - TM31
  (181, 18100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 36),
  -- Ampharos - Double Team - TM32
  (181, 18100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 37),
  -- Ampharos - Facade - TM42
  (181, 18100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Ampharos - Rest - TM44
  (181, 18100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Ampharos - Attract - TM45
  (181, 18100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Ampharos - Round - TM48
  (181, 18100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Ampharos - Echoed Voice - TM49
  (181, 18100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 42),
  -- Ampharos - Focus Blast - TM52
  (181, 18100, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Ampharos - Fling - TM56
  (181, 18100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Ampharos - Charge Beam - TM57
  (181, 18100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 45),
  -- Ampharos - Brutal Swing - TM59
  (181, 18100, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 46),
  -- Ampharos - Giga Impact - TM68
  (181, 18100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Ampharos - Volt Switch - TM72
  (181, 18100, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 48),
  -- Ampharos - Thunder Wave - TM73
  (181, 18100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 49),
  -- Ampharos - Bulldoze - TM78
  (181, 18100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 50),
  -- Ampharos - Swagger - TM87
  (181, 18100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Ampharos - Sleep Talk - TM88
  (181, 18100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Ampharos - Substitute - TM90
  (181, 18100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Ampharos - Wild Charge - TM93
  (181, 18100, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 54),
  -- Ampharos - Confide - TM100
  (181, 18100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Ampharos - Fire Punch - Tutor
  (181, 18100, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Ampharos - Thunder Punch - Tutor
  (181, 18100, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Ampharos - Snore - Tutor
  (181, 18100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Ampharos - Outrage - Tutor
  (181, 18100, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Ampharos - Heal Bell - Tutor
  (181, 18100, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Ampharos - Iron Tail - Tutor
  (181, 18100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Ampharos - Focus Punch - Tutor
  (181, 18100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Ampharos - Signal Beam - Tutor
  (181, 18100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Ampharos - Shock Wave - Tutor
  (181, 18100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Ampharos - Magnet Rise - Tutor
  (181, 18100, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Ampharos - Dragon Pulse - Tutor
  (181, 18100, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Ampharos - After You - Tutor
  (181, 18100, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Ampharos - Electroweb - Tutor
  (181, 18100, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Ampharos - Laser Focus - Tutor
  (181, 18100, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Ampharos - Thunder Punch - Evolution
  (181, 18100, 9, 16, NULL, 7, NULL, NULL, NULL, NULL, 70),

  -- Bellossom - Mega Drain - Level 1
  (182, 18200, 72, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellossom - Stun Spore - Level 1
  (182, 18200, 78, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bellossom - Sweet Scent - Level 1
  (182, 18200, 230, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bellossom - Sunny Day - Level 1
  (182, 18200, 241, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bellossom - Magical Leaf - Level 1
  (182, 18200, 345, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bellossom - Leaf Blade - Level 1
  (182, 18200, 348, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Bellossom - Leaf Storm - Level 1
  (182, 18200, 437, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Bellossom - Quiver Dance - Level 39
  (182, 18200, 483, 16, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Bellossom - Petal Blizzard - Level 49
  (182, 18200, 572, 16, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Bellossom - Petal Dance - Level 59
  (182, 18200, 80, 16, NULL, 1, 59, NULL, NULL, NULL, 10),
  -- Bellossom - Leaf Storm - Level 69
  (182, 18200, 437, 16, NULL, 1, 69, NULL, NULL, NULL, 11),
  -- Bellossom - Toxic - TM06
  (182, 18200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 12),
  -- Bellossom - Venoshock - TM09
  (182, 18200, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 13),
  -- Bellossom - Hidden Power - TM10
  (182, 18200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 14),
  -- Bellossom - Sunny Day - TM11
  (182, 18200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 15),
  -- Bellossom - Hyper Beam - TM15
  (182, 18200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 16),
  -- Bellossom - Protect - TM17
  (182, 18200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Bellossom - Safeguard - TM20
  (182, 18200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 18),
  -- Bellossom - Frustration - TM21
  (182, 18200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Bellossom - Solar Beam - TM22
  (182, 18200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 20),
  -- Bellossom - Return - TM27
  (182, 18200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Bellossom - Double Team - TM32
  (182, 18200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Bellossom - Sludge Bomb - TM36
  (182, 18200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 23),
  -- Bellossom - Facade - TM42
  (182, 18200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 24),
  -- Bellossom - Rest - TM44
  (182, 18200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 25),
  -- Bellossom - Attract - TM45
  (182, 18200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 26),
  -- Bellossom - Round - TM48
  (182, 18200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 27),
  -- Bellossom - Energy Ball - TM53
  (182, 18200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 28),
  -- Bellossom - Fling - TM56
  (182, 18200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 29),
  -- Bellossom - Giga Impact - TM68
  (182, 18200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 30),
  -- Bellossom - Swords Dance - TM75
  (182, 18200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 31),
  -- Bellossom - Infestation - TM83
  (182, 18200, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 32),
  -- Bellossom - Grass Knot - TM86
  (182, 18200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 33),
  -- Bellossom - Swagger - TM87
  (182, 18200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Bellossom - Sleep Talk - TM88
  (182, 18200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Bellossom - Substitute - TM90
  (182, 18200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Bellossom - Nature Power - TM96
  (182, 18200, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 37),
  -- Bellossom - Dazzling Gleam - TM99
  (182, 18200, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 38),
  -- Bellossom - Confide - TM100
  (182, 18200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Bellossom - Snore - Tutor
  (182, 18200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Bellossom - Giga Drain - Tutor
  (182, 18200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Bellossom - Synthesis - Tutor
  (182, 18200, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Bellossom - Uproar - Tutor
  (182, 18200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Bellossom - Gastro Acid - Tutor
  (182, 18200, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Bellossom - Worry Seed - Tutor
  (182, 18200, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Bellossom - Seed Bomb - Tutor
  (182, 18200, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Bellossom - Drain Punch - Tutor
  (182, 18200, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Bellossom - After You - Tutor
  (182, 18200, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Bellossom - Laser Focus - Tutor
  (182, 18200, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Bellossom - Magical Leaf - Evolution
  (182, 18200, 345, 16, NULL, 7, NULL, NULL, NULL, NULL, 50),

  -- Marill - Tackle - Level 1
  (183, 18300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marill - Water Gun - Level 1
  (183, 18300, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marill - Tail Whip - Level 2
  (183, 18300, 39, 16, NULL, 1, 2, NULL, NULL, NULL, 3),
  -- Marill - Water Sport - Level 5
  (183, 18300, 346, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Marill - Bubble - Level 7
  (183, 18300, 145, 16, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Marill - Defense Curl - Level 10
  (183, 18300, 111, 16, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Marill - Rollout - Level 10
  (183, 18300, 205, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Marill - Bubble Beam - Level 13
  (183, 18300, 61, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Marill - Helping Hand - Level 16
  (183, 18300, 270, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Marill - Aqua Tail - Level 20
  (183, 18300, 401, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Marill - Play Rough - Level 23
  (183, 18300, 583, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Marill - Aqua Ring - Level 28
  (183, 18300, 392, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Marill - Rain Dance - Level 31
  (183, 18300, 240, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Marill - Double-Edge - Level 37
  (183, 18300, 38, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Marill - Superpower - Level 40
  (183, 18300, 276, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Marill - Hydro Pump - Level 47
  (183, 18300, 56, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Marill - Work Up - TM01
  (183, 18300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Marill - Toxic - TM06
  (183, 18300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Marill - Hail - TM07
  (183, 18300, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Marill - Hidden Power - TM10
  (183, 18300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Marill - Ice Beam - TM13
  (183, 18300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Marill - Blizzard - TM14
  (183, 18300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Marill - Light Screen - TM16
  (183, 18300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 23),
  -- Marill - Protect - TM17
  (183, 18300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Marill - Rain Dance - TM18
  (183, 18300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Marill - Frustration - TM21
  (183, 18300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Marill - Return - TM27
  (183, 18300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Marill - Brick Break - TM31
  (183, 18300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Marill - Double Team - TM32
  (183, 18300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Marill - Facade - TM42
  (183, 18300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Marill - Rest - TM44
  (183, 18300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Marill - Attract - TM45
  (183, 18300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Marill - Round - TM48
  (183, 18300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Marill - Scald - TM55
  (183, 18300, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 34),
  -- Marill - Fling - TM56
  (183, 18300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Marill - Grass Knot - TM86
  (183, 18300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 36),
  -- Marill - Swagger - TM87
  (183, 18300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Marill - Sleep Talk - TM88
  (183, 18300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Marill - Substitute - TM90
  (183, 18300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Marill - Surf - TM94
  (183, 18300, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 40),
  -- Marill - Waterfall - TM98
  (183, 18300, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 41),
  -- Marill - Confide - TM100
  (183, 18300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Marill - Slam - Egg
  (183, 18300, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Marill - Body Slam - Egg
  (183, 18300, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Marill - Sing - Egg
  (183, 18300, 47, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Marill - Supersonic - Egg
  (183, 18300, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Marill - Amnesia - Egg
  (183, 18300, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Marill - Belly Drum - Egg
  (183, 18300, 187, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Marill - Perish Song - Egg
  (183, 18300, 195, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Marill - Present - Egg
  (183, 18300, 217, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Marill - Encore - Egg
  (183, 18300, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Marill - Future Sight - Egg
  (183, 18300, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Marill - Superpower - Egg
  (183, 18300, 276, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Marill - Refresh - Egg
  (183, 18300, 287, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Marill - Camouflage - Egg
  (183, 18300, 293, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Marill - Fake Tears - Egg
  (183, 18300, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Marill - Tickle - Egg
  (183, 18300, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Marill - Muddy Water - Egg
  (183, 18300, 330, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Marill - Water Sport - Egg
  (183, 18300, 346, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Marill - Copycat - Egg
  (183, 18300, 383, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Marill - Aqua Jet - Egg
  (183, 18300, 453, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Marill - Soak - Egg
  (183, 18300, 487, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Marill - Ice Punch - Tutor
  (183, 18300, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Marill - Snore - Tutor
  (183, 18300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Marill - Icy Wind - Tutor
  (183, 18300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Marill - Iron Tail - Tutor
  (183, 18300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Marill - Focus Punch - Tutor
  (183, 18300, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Marill - Helping Hand - Tutor
  (183, 18300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Marill - Superpower - Tutor
  (183, 18300, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Marill - Knock Off - Tutor
  (183, 18300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Marill - Hyper Voice - Tutor
  (183, 18300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Marill - Bounce - Tutor
  (183, 18300, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Marill - Covet - Tutor
  (183, 18300, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Marill - Water Pulse - Tutor
  (183, 18300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Marill - Aqua Tail - Tutor
  (183, 18300, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),

  -- Azumarill - Tackle - Level 1
  (184, 18400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azumarill - Tail Whip - Level 1
  (184, 18400, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azumarill - Water Gun - Level 1
  (184, 18400, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Azumarill - Water Sport - Level 1
  (184, 18400, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Azumarill - Tail Whip - Level 2
  (184, 18400, 39, 16, NULL, 1, 2, NULL, NULL, NULL, 5),
  -- Azumarill - Water Sport - Level 5
  (184, 18400, 346, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Azumarill - Bubble - Level 7
  (184, 18400, 145, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Azumarill - Defense Curl - Level 10
  (184, 18400, 111, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Azumarill - Rollout - Level 10
  (184, 18400, 205, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Azumarill - Bubble Beam - Level 13
  (184, 18400, 61, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Azumarill - Helping Hand - Level 16
  (184, 18400, 270, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Azumarill - Aqua Tail - Level 21
  (184, 18400, 401, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Azumarill - Play Rough - Level 25
  (184, 18400, 583, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Azumarill - Aqua Ring - Level 31
  (184, 18400, 392, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Azumarill - Rain Dance - Level 35
  (184, 18400, 240, 16, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Azumarill - Double-Edge - Level 42
  (184, 18400, 38, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Azumarill - Superpower - Level 46
  (184, 18400, 276, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Azumarill - Hydro Pump - Level 55
  (184, 18400, 56, 16, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Azumarill - Work Up - TM01
  (184, 18400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Azumarill - Toxic - TM06
  (184, 18400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Azumarill - Hail - TM07
  (184, 18400, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Azumarill - Hidden Power - TM10
  (184, 18400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Azumarill - Ice Beam - TM13
  (184, 18400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Azumarill - Blizzard - TM14
  (184, 18400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Azumarill - Hyper Beam - TM15
  (184, 18400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Azumarill - Light Screen - TM16
  (184, 18400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Azumarill - Protect - TM17
  (184, 18400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Azumarill - Rain Dance - TM18
  (184, 18400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Azumarill - Frustration - TM21
  (184, 18400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Azumarill - Return - TM27
  (184, 18400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Azumarill - Brick Break - TM31
  (184, 18400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Azumarill - Double Team - TM32
  (184, 18400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Azumarill - Facade - TM42
  (184, 18400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Azumarill - Rest - TM44
  (184, 18400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Azumarill - Attract - TM45
  (184, 18400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Azumarill - Round - TM48
  (184, 18400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Azumarill - Focus Blast - TM52
  (184, 18400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 37),
  -- Azumarill - Scald - TM55
  (184, 18400, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 38),
  -- Azumarill - Fling - TM56
  (184, 18400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Azumarill - Giga Impact - TM68
  (184, 18400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Azumarill - Bulldoze - TM78
  (184, 18400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 41),
  -- Azumarill - Grass Knot - TM86
  (184, 18400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 42),
  -- Azumarill - Swagger - TM87
  (184, 18400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Azumarill - Sleep Talk - TM88
  (184, 18400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Azumarill - Substitute - TM90
  (184, 18400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Azumarill - Surf - TM94
  (184, 18400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 46),
  -- Azumarill - Waterfall - TM98
  (184, 18400, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 47),
  -- Azumarill - Confide - TM100
  (184, 18400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Azumarill - Ice Punch - Tutor
  (184, 18400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Azumarill - Snore - Tutor
  (184, 18400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Azumarill - Icy Wind - Tutor
  (184, 18400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Azumarill - Iron Tail - Tutor
  (184, 18400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Azumarill - Focus Punch - Tutor
  (184, 18400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Azumarill - Helping Hand - Tutor
  (184, 18400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Azumarill - Superpower - Tutor
  (184, 18400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Azumarill - Knock Off - Tutor
  (184, 18400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Azumarill - Hyper Voice - Tutor
  (184, 18400, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Azumarill - Bounce - Tutor
  (184, 18400, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Azumarill - Covet - Tutor
  (184, 18400, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Azumarill - Water Pulse - Tutor
  (184, 18400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Azumarill - Aqua Tail - Tutor
  (184, 18400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Azumarill - Liquidation - Tutor
  (184, 18400, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Sudowoodo - Slam - Level 1
  (185, 18500, 21, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sudowoodo - Low Kick - Level 1
  (185, 18500, 67, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sudowoodo - Rock Throw - Level 1
  (185, 18500, 88, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sudowoodo - Flail - Level 1
  (185, 18500, 175, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sudowoodo - Copycat - Level 1
  (185, 18500, 383, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sudowoodo - Wood Hammer - Level 1
  (185, 18500, 452, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sudowoodo - Flail - Level 5
  (185, 18500, 175, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Sudowoodo - Low Kick - Level 8
  (185, 18500, 67, 16, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Sudowoodo - Rock Throw - Level 12
  (185, 18500, 88, 16, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Sudowoodo - Mimic - Level 15
  (185, 18500, 102, 16, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Sudowoodo - Feint Attack - Level 19
  (185, 18500, 185, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Sudowoodo - Tearful Look - Level 22
  (185, 18500, 715, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Sudowoodo - Rock Tomb - Level 26
  (185, 18500, 317, 16, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Sudowoodo - Block - Level 29
  (185, 18500, 335, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Sudowoodo - Rock Slide - Level 33
  (185, 18500, 157, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Sudowoodo - Counter - Level 36
  (185, 18500, 68, 16, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Sudowoodo - Sucker Punch - Level 40
  (185, 18500, 389, 16, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Sudowoodo - Double-Edge - Level 43
  (185, 18500, 38, 16, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Sudowoodo - Stone Edge - Level 47
  (185, 18500, 444, 16, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Sudowoodo - Hammer Arm - Level 50
  (185, 18500, 359, 16, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Sudowoodo - Head Smash - Level 54
  (185, 18500, 457, 16, NULL, 1, 54, NULL, NULL, NULL, 21),
  -- Sudowoodo - Calm Mind - TM04
  (185, 18500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 22),
  -- Sudowoodo - Toxic - TM06
  (185, 18500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Sudowoodo - Hidden Power - TM10
  (185, 18500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Sudowoodo - Sunny Day - TM11
  (185, 18500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Sudowoodo - Taunt - TM12
  (185, 18500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Sudowoodo - Protect - TM17
  (185, 18500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Sudowoodo - Frustration - TM21
  (185, 18500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Sudowoodo - Smack Down - TM23
  (185, 18500, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Sudowoodo - Earthquake - TM26
  (185, 18500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Sudowoodo - Return - TM27
  (185, 18500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Sudowoodo - Brick Break - TM31
  (185, 18500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Sudowoodo - Double Team - TM32
  (185, 18500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Sudowoodo - Sandstorm - TM37
  (185, 18500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Sudowoodo - Rock Tomb - TM39
  (185, 18500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Sudowoodo - Torment - TM41
  (185, 18500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 36),
  -- Sudowoodo - Facade - TM42
  (185, 18500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Sudowoodo - Rest - TM44
  (185, 18500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Sudowoodo - Attract - TM45
  (185, 18500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Sudowoodo - Thief - TM46
  (185, 18500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Sudowoodo - Round - TM48
  (185, 18500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Sudowoodo - Fling - TM56
  (185, 18500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Sudowoodo - Explosion - TM64
  (185, 18500, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 43),
  -- Sudowoodo - Rock Polish - TM69
  (185, 18500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 44),
  -- Sudowoodo - Stone Edge - TM71
  (185, 18500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 45),
  -- Sudowoodo - Psych Up - TM77
  (185, 18500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 46),
  -- Sudowoodo - Bulldoze - TM78
  (185, 18500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 47),
  -- Sudowoodo - Rock Slide - TM80
  (185, 18500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 48),
  -- Sudowoodo - Swagger - TM87
  (185, 18500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Sudowoodo - Sleep Talk - TM88
  (185, 18500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Sudowoodo - Substitute - TM90
  (185, 18500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Sudowoodo - Nature Power - TM96
  (185, 18500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 52),
  -- Sudowoodo - Confide - TM100
  (185, 18500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Sudowoodo - Headbutt - Egg
  (185, 18500, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sudowoodo - Harden - Egg
  (185, 18500, 106, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sudowoodo - Defense Curl - Egg
  (185, 18500, 111, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sudowoodo - Self-Destruct - Egg
  (185, 18500, 120, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sudowoodo - Curse - Egg
  (185, 18500, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sudowoodo - Endure - Egg
  (185, 18500, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sudowoodo - Rollout - Egg
  (185, 18500, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sudowoodo - Sand Tomb - Egg
  (185, 18500, 328, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sudowoodo - Stealth Rock - Egg
  (185, 18500, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sudowoodo - Fire Punch - Tutor
  (185, 18500, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Sudowoodo - Ice Punch - Tutor
  (185, 18500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Sudowoodo - Thunder Punch - Tutor
  (185, 18500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Sudowoodo - Low Kick - Tutor
  (185, 18500, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Sudowoodo - Snore - Tutor
  (185, 18500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Sudowoodo - Focus Punch - Tutor
  (185, 18500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Sudowoodo - Helping Hand - Tutor
  (185, 18500, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Sudowoodo - Role Play - Tutor
  (185, 18500, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Sudowoodo - Block - Tutor
  (185, 18500, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Sudowoodo - Covet - Tutor
  (185, 18500, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Sudowoodo - Earth Power - Tutor
  (185, 18500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Sudowoodo - Stealth Rock - Tutor
  (185, 18500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Sudowoodo - Foul Play - Tutor
  (185, 18500, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Sudowoodo - After You - Tutor
  (185, 18500, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Sudowoodo - Stomping Tantrum - Tutor
  (185, 18500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Sudowoodo - Slam - Evolution
  (185, 18500, 21, 16, NULL, 7, NULL, NULL, NULL, NULL, 78),

  -- Politoed - Double Slap - Level 1
  (186, 18600, 3, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Politoed - Bubble Beam - Level 1
  (186, 18600, 61, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Politoed - Hypnosis - Level 1
  (186, 18600, 95, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Politoed - Perish Song - Level 1
  (186, 18600, 195, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Politoed - Swagger - Level 27
  (186, 18600, 207, 16, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Politoed - Bounce - Level 37
  (186, 18600, 340, 16, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Politoed - Hyper Voice - Level 48
  (186, 18600, 304, 16, NULL, 1, 48, NULL, NULL, NULL, 7),
  -- Politoed - Toxic - TM06
  (186, 18600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 8),
  -- Politoed - Hail - TM07
  (186, 18600, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 9),
  -- Politoed - Hidden Power - TM10
  (186, 18600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 10),
  -- Politoed - Ice Beam - TM13
  (186, 18600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 11),
  -- Politoed - Blizzard - TM14
  (186, 18600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 12),
  -- Politoed - Hyper Beam - TM15
  (186, 18600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 13),
  -- Politoed - Protect - TM17
  (186, 18600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 14),
  -- Politoed - Rain Dance - TM18
  (186, 18600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 15),
  -- Politoed - Frustration - TM21
  (186, 18600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 16),
  -- Politoed - Earthquake - TM26
  (186, 18600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 17),
  -- Politoed - Return - TM27
  (186, 18600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 18),
  -- Politoed - Psychic - TM29
  (186, 18600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 19),
  -- Politoed - Brick Break - TM31
  (186, 18600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 20),
  -- Politoed - Double Team - TM32
  (186, 18600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 21),
  -- Politoed - Facade - TM42
  (186, 18600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 22),
  -- Politoed - Rest - TM44
  (186, 18600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 23),
  -- Politoed - Attract - TM45
  (186, 18600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 24),
  -- Politoed - Thief - TM46
  (186, 18600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 25),
  -- Politoed - Round - TM48
  (186, 18600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 26),
  -- Politoed - Echoed Voice - TM49
  (186, 18600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 27),
  -- Politoed - Focus Blast - TM52
  (186, 18600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 28),
  -- Politoed - Scald - TM55
  (186, 18600, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 29),
  -- Politoed - Fling - TM56
  (186, 18600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 30),
  -- Politoed - Payback - TM66
  (186, 18600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 31),
  -- Politoed - Giga Impact - TM68
  (186, 18600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 32),
  -- Politoed - Bulldoze - TM78
  (186, 18600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 33),
  -- Politoed - Swagger - TM87
  (186, 18600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Politoed - Sleep Talk - TM88
  (186, 18600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Politoed - Substitute - TM90
  (186, 18600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Politoed - Surf - TM94
  (186, 18600, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 37),
  -- Politoed - Waterfall - TM98
  (186, 18600, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 38),
  -- Politoed - Confide - TM100
  (186, 18600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Politoed - Ice Punch - Tutor
  (186, 18600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Politoed - Snore - Tutor
  (186, 18600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Politoed - Icy Wind - Tutor
  (186, 18600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Politoed - Focus Punch - Tutor
  (186, 18600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Politoed - Helping Hand - Tutor
  (186, 18600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Politoed - Endeavor - Tutor
  (186, 18600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Politoed - Hyper Voice - Tutor
  (186, 18600, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Politoed - Bounce - Tutor
  (186, 18600, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Politoed - Water Pulse - Tutor
  (186, 18600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),

  -- Hoppip - Absorb - Level 1
  (187, 18700, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoppip - Splash - Level 1
  (187, 18700, 150, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoppip - Synthesis - Level 4
  (187, 18700, 235, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Hoppip - Tail Whip - Level 6
  (187, 18700, 39, 16, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Hoppip - Tackle - Level 8
  (187, 18700, 33, 16, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Hoppip - Fairy Wind - Level 10
  (187, 18700, 584, 16, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Hoppip - Poison Powder - Level 12
  (187, 18700, 77, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Hoppip - Stun Spore - Level 14
  (187, 18700, 78, 16, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Hoppip - Sleep Powder - Level 16
  (187, 18700, 79, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Hoppip - Bullet Seed - Level 19
  (187, 18700, 331, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Hoppip - Leech Seed - Level 22
  (187, 18700, 73, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Hoppip - Mega Drain - Level 25
  (187, 18700, 72, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Hoppip - Acrobatics - Level 28
  (187, 18700, 512, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Hoppip - Rage Powder - Level 31
  (187, 18700, 476, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Hoppip - Cotton Spore - Level 34
  (187, 18700, 178, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Hoppip - U-turn - Level 37
  (187, 18700, 369, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Hoppip - Worry Seed - Level 40
  (187, 18700, 388, 16, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Hoppip - Giga Drain - Level 43
  (187, 18700, 202, 16, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Hoppip - Bounce - Level 46
  (187, 18700, 340, 16, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Hoppip - Memento - Level 49
  (187, 18700, 262, 16, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Hoppip - Toxic - TM06
  (187, 18700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Hoppip - Hidden Power - TM10
  (187, 18700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Hoppip - Sunny Day - TM11
  (187, 18700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Hoppip - Protect - TM17
  (187, 18700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Hoppip - Frustration - TM21
  (187, 18700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Hoppip - Solar Beam - TM22
  (187, 18700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Hoppip - Return - TM27
  (187, 18700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Hoppip - Double Team - TM32
  (187, 18700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Hoppip - Reflect - TM33
  (187, 18700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 29),
  -- Hoppip - Aerial Ace - TM40
  (187, 18700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Hoppip - Facade - TM42
  (187, 18700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Hoppip - Rest - TM44
  (187, 18700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Hoppip - Attract - TM45
  (187, 18700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Hoppip - Round - TM48
  (187, 18700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Hoppip - Energy Ball - TM53
  (187, 18700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 35),
  -- Hoppip - Acrobatics - TM62
  (187, 18700, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 36),
  -- Hoppip - Swords Dance - TM75
  (187, 18700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 37),
  -- Hoppip - Psych Up - TM77
  (187, 18700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 38),
  -- Hoppip - Infestation - TM83
  (187, 18700, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 39),
  -- Hoppip - Grass Knot - TM86
  (187, 18700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 40),
  -- Hoppip - Swagger - TM87
  (187, 18700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Hoppip - Sleep Talk - TM88
  (187, 18700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Hoppip - U-turn - TM89
  (187, 18700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 43),
  -- Hoppip - Substitute - TM90
  (187, 18700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Hoppip - Dazzling Gleam - TM99
  (187, 18700, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 45),
  -- Hoppip - Confide - TM100
  (187, 18700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Hoppip - Double-Edge - Egg
  (187, 18700, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hoppip - Confusion - Egg
  (187, 18700, 93, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hoppip - Amnesia - Egg
  (187, 18700, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hoppip - Endure - Egg
  (187, 18700, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hoppip - Encore - Egg
  (187, 18700, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hoppip - Helping Hand - Egg
  (187, 18700, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hoppip - Aromatherapy - Egg
  (187, 18700, 312, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hoppip - Worry Seed - Egg
  (187, 18700, 388, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hoppip - Seed Bomb - Egg
  (187, 18700, 402, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hoppip - Cotton Guard - Egg
  (187, 18700, 538, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hoppip - Grassy Terrain - Egg
  (187, 18700, 580, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Hoppip - Strength Sap - Egg
  (187, 18700, 668, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Hoppip - Snore - Tutor
  (187, 18700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Hoppip - Giga Drain - Tutor
  (187, 18700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Hoppip - Synthesis - Tutor
  (187, 18700, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Hoppip - Helping Hand - Tutor
  (187, 18700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Hoppip - Bounce - Tutor
  (187, 18700, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Hoppip - Worry Seed - Tutor
  (187, 18700, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Hoppip - Seed Bomb - Tutor
  (187, 18700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Skiploom - Tail Whip - Level 1
  (188, 18800, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skiploom - Absorb - Level 1
  (188, 18800, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skiploom - Splash - Level 1
  (188, 18800, 150, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skiploom - Synthesis - Level 1
  (188, 18800, 235, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skiploom - Synthesis - Level 4
  (188, 18800, 235, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Skiploom - Tail Whip - Level 6
  (188, 18800, 39, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Skiploom - Tackle - Level 8
  (188, 18800, 33, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Skiploom - Fairy Wind - Level 10
  (188, 18800, 584, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Skiploom - Poison Powder - Level 12
  (188, 18800, 77, 16, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Skiploom - Stun Spore - Level 14
  (188, 18800, 78, 16, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Skiploom - Sleep Powder - Level 16
  (188, 18800, 79, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Skiploom - Bullet Seed - Level 20
  (188, 18800, 331, 16, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Skiploom - Leech Seed - Level 24
  (188, 18800, 73, 16, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Skiploom - Mega Drain - Level 28
  (188, 18800, 72, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Skiploom - Acrobatics - Level 32
  (188, 18800, 512, 16, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Skiploom - Rage Powder - Level 36
  (188, 18800, 476, 16, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Skiploom - Cotton Spore - Level 40
  (188, 18800, 178, 16, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Skiploom - U-turn - Level 44
  (188, 18800, 369, 16, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Skiploom - Worry Seed - Level 48
  (188, 18800, 388, 16, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Skiploom - Giga Drain - Level 52
  (188, 18800, 202, 16, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Skiploom - Bounce - Level 56
  (188, 18800, 340, 16, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Skiploom - Memento - Level 60
  (188, 18800, 262, 16, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Skiploom - Toxic - TM06
  (188, 18800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Skiploom - Hidden Power - TM10
  (188, 18800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Skiploom - Sunny Day - TM11
  (188, 18800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Skiploom - Protect - TM17
  (188, 18800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Skiploom - Frustration - TM21
  (188, 18800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Skiploom - Solar Beam - TM22
  (188, 18800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Skiploom - Return - TM27
  (188, 18800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Skiploom - Double Team - TM32
  (188, 18800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Skiploom - Reflect - TM33
  (188, 18800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 31),
  -- Skiploom - Aerial Ace - TM40
  (188, 18800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Skiploom - Facade - TM42
  (188, 18800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Skiploom - Rest - TM44
  (188, 18800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Skiploom - Attract - TM45
  (188, 18800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Skiploom - Round - TM48
  (188, 18800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Skiploom - Energy Ball - TM53
  (188, 18800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 37),
  -- Skiploom - Acrobatics - TM62
  (188, 18800, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 38),
  -- Skiploom - Swords Dance - TM75
  (188, 18800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 39),
  -- Skiploom - Psych Up - TM77
  (188, 18800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 40),
  -- Skiploom - Infestation - TM83
  (188, 18800, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 41),
  -- Skiploom - Grass Knot - TM86
  (188, 18800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 42),
  -- Skiploom - Swagger - TM87
  (188, 18800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Skiploom - Sleep Talk - TM88
  (188, 18800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Skiploom - U-turn - TM89
  (188, 18800, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 45),
  -- Skiploom - Substitute - TM90
  (188, 18800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Skiploom - Dazzling Gleam - TM99
  (188, 18800, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 47),
  -- Skiploom - Confide - TM100
  (188, 18800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Skiploom - Snore - Tutor
  (188, 18800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Skiploom - Giga Drain - Tutor
  (188, 18800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Skiploom - Synthesis - Tutor
  (188, 18800, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Skiploom - Helping Hand - Tutor
  (188, 18800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Skiploom - Bounce - Tutor
  (188, 18800, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Skiploom - Worry Seed - Tutor
  (188, 18800, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Skiploom - Seed Bomb - Tutor
  (188, 18800, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Jumpluff - Tail Whip - Level 1
  (189, 18900, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jumpluff - Absorb - Level 1
  (189, 18900, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jumpluff - Splash - Level 1
  (189, 18900, 150, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jumpluff - Synthesis - Level 1
  (189, 18900, 235, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jumpluff - Synthesis - Level 4
  (189, 18900, 235, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Jumpluff - Tail Whip - Level 6
  (189, 18900, 39, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Jumpluff - Tackle - Level 8
  (189, 18900, 33, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Jumpluff - Fairy Wind - Level 10
  (189, 18900, 584, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Jumpluff - Poison Powder - Level 12
  (189, 18900, 77, 16, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Jumpluff - Stun Spore - Level 14
  (189, 18900, 78, 16, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Jumpluff - Sleep Powder - Level 16
  (189, 18900, 79, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Jumpluff - Bullet Seed - Level 20
  (189, 18900, 331, 16, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Jumpluff - Leech Seed - Level 24
  (189, 18900, 73, 16, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Jumpluff - Mega Drain - Level 29
  (189, 18900, 72, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Jumpluff - Acrobatics - Level 34
  (189, 18900, 512, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Jumpluff - Rage Powder - Level 39
  (189, 18900, 476, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Jumpluff - Cotton Spore - Level 44
  (189, 18900, 178, 16, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Jumpluff - U-turn - Level 49
  (189, 18900, 369, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Jumpluff - Worry Seed - Level 54
  (189, 18900, 388, 16, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Jumpluff - Giga Drain - Level 59
  (189, 18900, 202, 16, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Jumpluff - Bounce - Level 64
  (189, 18900, 340, 16, NULL, 1, 64, NULL, NULL, NULL, 21),
  -- Jumpluff - Memento - Level 69
  (189, 18900, 262, 16, NULL, 1, 69, NULL, NULL, NULL, 22),
  -- Jumpluff - Toxic - TM06
  (189, 18900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Jumpluff - Hidden Power - TM10
  (189, 18900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Jumpluff - Sunny Day - TM11
  (189, 18900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Jumpluff - Hyper Beam - TM15
  (189, 18900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Jumpluff - Protect - TM17
  (189, 18900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Jumpluff - Frustration - TM21
  (189, 18900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Jumpluff - Solar Beam - TM22
  (189, 18900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Jumpluff - Return - TM27
  (189, 18900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Jumpluff - Double Team - TM32
  (189, 18900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Jumpluff - Reflect - TM33
  (189, 18900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 32),
  -- Jumpluff - Aerial Ace - TM40
  (189, 18900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Jumpluff - Facade - TM42
  (189, 18900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Jumpluff - Rest - TM44
  (189, 18900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Jumpluff - Attract - TM45
  (189, 18900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Jumpluff - Round - TM48
  (189, 18900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Jumpluff - Energy Ball - TM53
  (189, 18900, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 38),
  -- Jumpluff - Acrobatics - TM62
  (189, 18900, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 39),
  -- Jumpluff - Giga Impact - TM68
  (189, 18900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Jumpluff - Swords Dance - TM75
  (189, 18900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 41),
  -- Jumpluff - Psych Up - TM77
  (189, 18900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Jumpluff - Infestation - TM83
  (189, 18900, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 43),
  -- Jumpluff - Grass Knot - TM86
  (189, 18900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 44),
  -- Jumpluff - Swagger - TM87
  (189, 18900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Jumpluff - Sleep Talk - TM88
  (189, 18900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Jumpluff - U-turn - TM89
  (189, 18900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 47),
  -- Jumpluff - Substitute - TM90
  (189, 18900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Jumpluff - Dazzling Gleam - TM99
  (189, 18900, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 49),
  -- Jumpluff - Confide - TM100
  (189, 18900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Jumpluff - Snore - Tutor
  (189, 18900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Jumpluff - Giga Drain - Tutor
  (189, 18900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Jumpluff - Synthesis - Tutor
  (189, 18900, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Jumpluff - Helping Hand - Tutor
  (189, 18900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Jumpluff - Bounce - Tutor
  (189, 18900, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Jumpluff - Worry Seed - Tutor
  (189, 18900, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Jumpluff - Seed Bomb - Tutor
  (189, 18900, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),

  -- Aipom - Scratch - Level 1
  (190, 19000, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aipom - Tail Whip - Level 1
  (190, 19000, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aipom - Sand Attack - Level 4
  (190, 19000, 28, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Aipom - Astonish - Level 8
  (190, 19000, 310, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Aipom - Baton Pass - Level 11
  (190, 19000, 226, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Aipom - Tickle - Level 15
  (190, 19000, 321, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Aipom - Fury Swipes - Level 18
  (190, 19000, 154, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Aipom - Swift - Level 22
  (190, 19000, 129, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Aipom - Screech - Level 25
  (190, 19000, 103, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Aipom - Agility - Level 29
  (190, 19000, 97, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Aipom - Double Hit - Level 32
  (190, 19000, 458, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Aipom - Fling - Level 36
  (190, 19000, 374, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Aipom - Nasty Plot - Level 39
  (190, 19000, 417, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Aipom - Last Resort - Level 43
  (190, 19000, 387, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Aipom - Work Up - TM01
  (190, 19000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 15),
  -- Aipom - Toxic - TM06
  (190, 19000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Aipom - Hidden Power - TM10
  (190, 19000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Aipom - Sunny Day - TM11
  (190, 19000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Aipom - Taunt - TM12
  (190, 19000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Aipom - Protect - TM17
  (190, 19000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Aipom - Rain Dance - TM18
  (190, 19000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Aipom - Frustration - TM21
  (190, 19000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Aipom - Solar Beam - TM22
  (190, 19000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Aipom - Thunderbolt - TM24
  (190, 19000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 24),
  -- Aipom - Thunder - TM25
  (190, 19000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 25),
  -- Aipom - Return - TM27
  (190, 19000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Aipom - Shadow Ball - TM30
  (190, 19000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Aipom - Brick Break - TM31
  (190, 19000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Aipom - Double Team - TM32
  (190, 19000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Aipom - Aerial Ace - TM40
  (190, 19000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Aipom - Facade - TM42
  (190, 19000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Aipom - Rest - TM44
  (190, 19000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Aipom - Attract - TM45
  (190, 19000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Aipom - Thief - TM46
  (190, 19000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Aipom - Low Sweep - TM47
  (190, 19000, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 35),
  -- Aipom - Round - TM48
  (190, 19000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Aipom - Fling - TM56
  (190, 19000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Aipom - Acrobatics - TM62
  (190, 19000, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 38),
  -- Aipom - Shadow Claw - TM65
  (190, 19000, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 39),
  -- Aipom - Payback - TM66
  (190, 19000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 40),
  -- Aipom - Thunder Wave - TM73
  (190, 19000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Aipom - Dream Eater - TM85
  (190, 19000, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 42),
  -- Aipom - Grass Knot - TM86
  (190, 19000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 43),
  -- Aipom - Swagger - TM87
  (190, 19000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Aipom - Sleep Talk - TM88
  (190, 19000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Aipom - U-turn - TM89
  (190, 19000, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 46),
  -- Aipom - Substitute - TM90
  (190, 19000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Aipom - Confide - TM100
  (190, 19000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Aipom - Double Slap - Egg
  (190, 19000, 3, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Aipom - Slam - Egg
  (190, 19000, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Aipom - Counter - Egg
  (190, 19000, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Aipom - Agility - Egg
  (190, 19000, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Aipom - Screech - Egg
  (190, 19000, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Aipom - Spite - Egg
  (190, 19000, 180, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Aipom - Pursuit - Egg
  (190, 19000, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Aipom - Beat Up - Egg
  (190, 19000, 251, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Aipom - Fake Out - Egg
  (190, 19000, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Aipom - Revenge - Egg
  (190, 19000, 279, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Aipom - Bounce - Egg
  (190, 19000, 340, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Aipom - Covet - Egg
  (190, 19000, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Aipom - Switcheroo - Egg
  (190, 19000, 415, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Aipom - Quick Guard - Egg
  (190, 19000, 501, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Aipom - Tail Slap - Egg
  (190, 19000, 541, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Aipom - Fire Punch - Tutor
  (190, 19000, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Aipom - Ice Punch - Tutor
  (190, 19000, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Aipom - Thunder Punch - Tutor
  (190, 19000, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Aipom - Low Kick - Tutor
  (190, 19000, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Aipom - Snore - Tutor
  (190, 19000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Aipom - Spite - Tutor
  (190, 19000, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Aipom - Iron Tail - Tutor
  (190, 19000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Aipom - Uproar - Tutor
  (190, 19000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Aipom - Focus Punch - Tutor
  (190, 19000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Aipom - Role Play - Tutor
  (190, 19000, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Aipom - Knock Off - Tutor
  (190, 19000, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Aipom - Snatch - Tutor
  (190, 19000, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Aipom - Bounce - Tutor
  (190, 19000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Aipom - Covet - Tutor
  (190, 19000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Aipom - Shock Wave - Tutor
  (190, 19000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Aipom - Water Pulse - Tutor
  (190, 19000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Aipom - Last Resort - Tutor
  (190, 19000, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Aipom - Seed Bomb - Tutor
  (190, 19000, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Aipom - Gunk Shot - Tutor
  (190, 19000, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Aipom - Foul Play - Tutor
  (190, 19000, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),

  -- Sunkern - Absorb - Level 1
  (191, 19100, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunkern - Growth - Level 1
  (191, 19100, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sunkern - Ingrain - Level 4
  (191, 19100, 275, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sunkern - Grass Whistle - Level 7
  (191, 19100, 320, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Sunkern - Mega Drain - Level 10
  (191, 19100, 72, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Sunkern - Leech Seed - Level 13
  (191, 19100, 73, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sunkern - Razor Leaf - Level 16
  (191, 19100, 75, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Sunkern - Worry Seed - Level 19
  (191, 19100, 388, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Sunkern - Giga Drain - Level 22
  (191, 19100, 202, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Sunkern - Endeavor - Level 25
  (191, 19100, 283, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Sunkern - Synthesis - Level 28
  (191, 19100, 235, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Sunkern - Natural Gift - Level 31
  (191, 19100, 363, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Sunkern - Solar Beam - Level 34
  (191, 19100, 76, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Sunkern - Double-Edge - Level 37
  (191, 19100, 38, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Sunkern - Sunny Day - Level 40
  (191, 19100, 241, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Sunkern - Seed Bomb - Level 43
  (191, 19100, 402, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Sunkern - Toxic - TM06
  (191, 19100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Sunkern - Hidden Power - TM10
  (191, 19100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Sunkern - Sunny Day - TM11
  (191, 19100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Sunkern - Light Screen - TM16
  (191, 19100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Sunkern - Protect - TM17
  (191, 19100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Sunkern - Safeguard - TM20
  (191, 19100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 22),
  -- Sunkern - Frustration - TM21
  (191, 19100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Sunkern - Solar Beam - TM22
  (191, 19100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 24),
  -- Sunkern - Return - TM27
  (191, 19100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Sunkern - Double Team - TM32
  (191, 19100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Sunkern - Sludge Bomb - TM36
  (191, 19100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 27),
  -- Sunkern - Facade - TM42
  (191, 19100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Sunkern - Rest - TM44
  (191, 19100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Sunkern - Attract - TM45
  (191, 19100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Sunkern - Round - TM48
  (191, 19100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Sunkern - Energy Ball - TM53
  (191, 19100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 32),
  -- Sunkern - Swords Dance - TM75
  (191, 19100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 33),
  -- Sunkern - Grass Knot - TM86
  (191, 19100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 34),
  -- Sunkern - Swagger - TM87
  (191, 19100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Sunkern - Sleep Talk - TM88
  (191, 19100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Sunkern - Substitute - TM90
  (191, 19100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Sunkern - Nature Power - TM96
  (191, 19100, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 38),
  -- Sunkern - Confide - TM100
  (191, 19100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Sunkern - Leech Seed - Egg
  (191, 19100, 73, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sunkern - Bide - Egg
  (191, 19100, 117, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sunkern - Curse - Egg
  (191, 19100, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sunkern - Endure - Egg
  (191, 19100, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sunkern - Encore - Egg
  (191, 19100, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Sunkern - Sweet Scent - Egg
  (191, 19100, 230, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Sunkern - Morning Sun - Egg
  (191, 19100, 234, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Sunkern - Nature Power - Egg
  (191, 19100, 267, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sunkern - Helping Hand - Egg
  (191, 19100, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sunkern - Ingrain - Egg
  (191, 19100, 275, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sunkern - Grass Whistle - Egg
  (191, 19100, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sunkern - Natural Gift - Egg
  (191, 19100, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sunkern - Grassy Terrain - Egg
  (191, 19100, 580, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sunkern - Snore - Tutor
  (191, 19100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Sunkern - Giga Drain - Tutor
  (191, 19100, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Sunkern - Synthesis - Tutor
  (191, 19100, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Sunkern - Uproar - Tutor
  (191, 19100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Sunkern - Helping Hand - Tutor
  (191, 19100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Sunkern - Endeavor - Tutor
  (191, 19100, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Sunkern - Worry Seed - Tutor
  (191, 19100, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Sunkern - Seed Bomb - Tutor
  (191, 19100, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Sunkern - Earth Power - Tutor
  (191, 19100, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Sunkern - After You - Tutor
  (191, 19100, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Sunflora - Pound - Level 1
  (192, 19200, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunflora - Absorb - Level 1
  (192, 19200, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sunflora - Growth - Level 1
  (192, 19200, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sunflora - Flower Shield - Level 1
  (192, 19200, 579, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sunflora - Ingrain - Level 4
  (192, 19200, 275, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Sunflora - Grass Whistle - Level 7
  (192, 19200, 320, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Sunflora - Mega Drain - Level 10
  (192, 19200, 72, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Sunflora - Leech Seed - Level 13
  (192, 19200, 73, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Sunflora - Razor Leaf - Level 16
  (192, 19200, 75, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Sunflora - Worry Seed - Level 19
  (192, 19200, 388, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Sunflora - Giga Drain - Level 22
  (192, 19200, 202, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Sunflora - Bullet Seed - Level 25
  (192, 19200, 331, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Sunflora - Petal Dance - Level 28
  (192, 19200, 80, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Sunflora - Natural Gift - Level 31
  (192, 19200, 363, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Sunflora - Solar Beam - Level 34
  (192, 19200, 76, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Sunflora - Double-Edge - Level 37
  (192, 19200, 38, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Sunflora - Sunny Day - Level 40
  (192, 19200, 241, 16, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Sunflora - Leaf Storm - Level 43
  (192, 19200, 437, 16, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Sunflora - Petal Blizzard - Level 50
  (192, 19200, 572, 16, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Sunflora - Toxic - TM06
  (192, 19200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Sunflora - Hidden Power - TM10
  (192, 19200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Sunflora - Sunny Day - TM11
  (192, 19200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Sunflora - Hyper Beam - TM15
  (192, 19200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Sunflora - Light Screen - TM16
  (192, 19200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Sunflora - Protect - TM17
  (192, 19200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Sunflora - Safeguard - TM20
  (192, 19200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Sunflora - Frustration - TM21
  (192, 19200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Sunflora - Solar Beam - TM22
  (192, 19200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Sunflora - Return - TM27
  (192, 19200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Sunflora - Double Team - TM32
  (192, 19200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Sunflora - Sludge Bomb - TM36
  (192, 19200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 31),
  -- Sunflora - Facade - TM42
  (192, 19200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Sunflora - Rest - TM44
  (192, 19200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Sunflora - Attract - TM45
  (192, 19200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Sunflora - Round - TM48
  (192, 19200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Sunflora - Energy Ball - TM53
  (192, 19200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 36),
  -- Sunflora - Giga Impact - TM68
  (192, 19200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Sunflora - Swords Dance - TM75
  (192, 19200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 38),
  -- Sunflora - Grass Knot - TM86
  (192, 19200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 39),
  -- Sunflora - Swagger - TM87
  (192, 19200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Sunflora - Sleep Talk - TM88
  (192, 19200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Sunflora - Substitute - TM90
  (192, 19200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Sunflora - Nature Power - TM96
  (192, 19200, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 43),
  -- Sunflora - Confide - TM100
  (192, 19200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Sunflora - Snore - Tutor
  (192, 19200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Sunflora - Giga Drain - Tutor
  (192, 19200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Sunflora - Synthesis - Tutor
  (192, 19200, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Sunflora - Uproar - Tutor
  (192, 19200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Sunflora - Helping Hand - Tutor
  (192, 19200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Sunflora - Endeavor - Tutor
  (192, 19200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Sunflora - Worry Seed - Tutor
  (192, 19200, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Sunflora - Seed Bomb - Tutor
  (192, 19200, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Sunflora - Earth Power - Tutor
  (192, 19200, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Sunflora - After You - Tutor
  (192, 19200, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),

  -- Yanma - Tackle - Level 1
  (193, 19300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanma - Foresight - Level 1
  (193, 19300, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yanma - Quick Attack - Level 6
  (193, 19300, 98, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Yanma - Double Team - Level 11
  (193, 19300, 104, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Yanma - Sonic Boom - Level 14
  (193, 19300, 49, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Yanma - Detect - Level 17
  (193, 19300, 197, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Yanma - Supersonic - Level 22
  (193, 19300, 48, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Yanma - Uproar - Level 27
  (193, 19300, 253, 16, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Yanma - Pursuit - Level 30
  (193, 19300, 228, 16, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Yanma - Ancient Power - Level 33
  (193, 19300, 246, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Yanma - Hypnosis - Level 38
  (193, 19300, 95, 16, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Yanma - Wing Attack - Level 43
  (193, 19300, 17, 16, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Yanma - Screech - Level 46
  (193, 19300, 103, 16, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Yanma - U-turn - Level 49
  (193, 19300, 369, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Yanma - Air Slash - Level 54
  (193, 19300, 403, 16, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Yanma - Bug Buzz - Level 57
  (193, 19300, 405, 16, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Yanma - Toxic - TM06
  (193, 19300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Yanma - Hidden Power - TM10
  (193, 19300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Yanma - Sunny Day - TM11
  (193, 19300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Yanma - Protect - TM17
  (193, 19300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Yanma - Roost - TM19
  (193, 19300, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 21),
  -- Yanma - Frustration - TM21
  (193, 19300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Yanma - Solar Beam - TM22
  (193, 19300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Yanma - Return - TM27
  (193, 19300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Yanma - Psychic - TM29
  (193, 19300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 25),
  -- Yanma - Shadow Ball - TM30
  (193, 19300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 26),
  -- Yanma - Double Team - TM32
  (193, 19300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Yanma - Aerial Ace - TM40
  (193, 19300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Yanma - Facade - TM42
  (193, 19300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Yanma - Rest - TM44
  (193, 19300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Yanma - Attract - TM45
  (193, 19300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Yanma - Thief - TM46
  (193, 19300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Yanma - Round - TM48
  (193, 19300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Yanma - Steel Wing - TM51
  (193, 19300, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 34),
  -- Yanma - Dream Eater - TM85
  (193, 19300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 35),
  -- Yanma - Swagger - TM87
  (193, 19300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Yanma - Sleep Talk - TM88
  (193, 19300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Yanma - U-turn - TM89
  (193, 19300, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 38),
  -- Yanma - Substitute - TM90
  (193, 19300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Yanma - Confide - TM100
  (193, 19300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Yanma - Whirlwind - Egg
  (193, 19300, 18, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Yanma - Double-Edge - Egg
  (193, 19300, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Yanma - Leech Life - Egg
  (193, 19300, 141, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Yanma - Reversal - Egg
  (193, 19300, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Yanma - Feint Attack - Egg
  (193, 19300, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Yanma - Pursuit - Egg
  (193, 19300, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Yanma - Secret Power - Egg
  (193, 19300, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Yanma - Silver Wind - Egg
  (193, 19300, 318, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Yanma - Signal Beam - Egg
  (193, 19300, 324, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Yanma - Feint - Egg
  (193, 19300, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Yanma - Snore - Tutor
  (193, 19300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Yanma - Giga Drain - Tutor
  (193, 19300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Yanma - Uproar - Tutor
  (193, 19300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Yanma - Signal Beam - Tutor
  (193, 19300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Yanma - Tailwind - Tutor
  (193, 19300, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Yanma - Defog - Tutor
  (193, 19300, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Yanma - Bug Bite - Tutor
  (193, 19300, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),

  -- Wooper - Tail Whip - Level 1
  (194, 19400, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wooper - Water Gun - Level 1
  (194, 19400, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wooper - Mud Sport - Level 5
  (194, 19400, 300, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wooper - Mud Shot - Level 9
  (194, 19400, 341, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Wooper - Slam - Level 15
  (194, 19400, 21, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wooper - Mud Bomb - Level 19
  (194, 19400, 426, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Wooper - Amnesia - Level 23
  (194, 19400, 133, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Wooper - Yawn - Level 29
  (194, 19400, 281, 16, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Wooper - Earthquake - Level 33
  (194, 19400, 89, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Wooper - Rain Dance - Level 37
  (194, 19400, 240, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Wooper - Mist - Level 43
  (194, 19400, 54, 16, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Wooper - Haze - Level 43
  (194, 19400, 114, 16, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Wooper - Muddy Water - Level 47
  (194, 19400, 330, 16, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wooper - Toxic - TM06
  (194, 19400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Wooper - Hail - TM07
  (194, 19400, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 15),
  -- Wooper - Hidden Power - TM10
  (194, 19400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Wooper - Ice Beam - TM13
  (194, 19400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 17),
  -- Wooper - Blizzard - TM14
  (194, 19400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 18),
  -- Wooper - Protect - TM17
  (194, 19400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Wooper - Rain Dance - TM18
  (194, 19400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Wooper - Safeguard - TM20
  (194, 19400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 21),
  -- Wooper - Frustration - TM21
  (194, 19400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Wooper - Earthquake - TM26
  (194, 19400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 23),
  -- Wooper - Return - TM27
  (194, 19400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Wooper - Double Team - TM32
  (194, 19400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Wooper - Sludge Wave - TM34
  (194, 19400, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 26),
  -- Wooper - Sludge Bomb - TM36
  (194, 19400, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 27),
  -- Wooper - Sandstorm - TM37
  (194, 19400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 28),
  -- Wooper - Facade - TM42
  (194, 19400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Wooper - Rest - TM44
  (194, 19400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Wooper - Attract - TM45
  (194, 19400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Wooper - Round - TM48
  (194, 19400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Wooper - Scald - TM55
  (194, 19400, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 33),
  -- Wooper - Bulldoze - TM78
  (194, 19400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 34),
  -- Wooper - Infestation - TM83
  (194, 19400, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 35),
  -- Wooper - Swagger - TM87
  (194, 19400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Wooper - Sleep Talk - TM88
  (194, 19400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Wooper - Substitute - TM90
  (194, 19400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Wooper - Surf - TM94
  (194, 19400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 39),
  -- Wooper - Waterfall - TM98
  (194, 19400, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 40),
  -- Wooper - Confide - TM100
  (194, 19400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Wooper - Double Kick - Egg
  (194, 19400, 24, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wooper - Body Slam - Egg
  (194, 19400, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wooper - Counter - Egg
  (194, 19400, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wooper - Recover - Egg
  (194, 19400, 105, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wooper - Curse - Egg
  (194, 19400, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wooper - Sleep Talk - Egg
  (194, 19400, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wooper - Encore - Egg
  (194, 19400, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wooper - Ancient Power - Egg
  (194, 19400, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wooper - Stockpile - Egg
  (194, 19400, 254, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wooper - Spit Up - Egg
  (194, 19400, 255, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wooper - Swallow - Egg
  (194, 19400, 256, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wooper - Mud Sport - Egg
  (194, 19400, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wooper - Guard Swap - Egg
  (194, 19400, 385, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wooper - Acid Spray - Egg
  (194, 19400, 491, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wooper - After You - Egg
  (194, 19400, 495, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Wooper - Eerie Impulse - Egg
  (194, 19400, 598, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Wooper - Power-Up Punch - Egg
  (194, 19400, 612, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Wooper - Ice Punch - Tutor
  (194, 19400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Wooper - Snore - Tutor
  (194, 19400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Wooper - Icy Wind - Tutor
  (194, 19400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Wooper - Iron Tail - Tutor
  (194, 19400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Wooper - Water Pulse - Tutor
  (194, 19400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Wooper - Aqua Tail - Tutor
  (194, 19400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Wooper - Earth Power - Tutor
  (194, 19400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Wooper - After You - Tutor
  (194, 19400, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Wooper - Stomping Tantrum - Tutor
  (194, 19400, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Quagsire - Tail Whip - Level 1
  (195, 19500, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quagsire - Water Gun - Level 1
  (195, 19500, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quagsire - Mud Sport - Level 1
  (195, 19500, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quagsire - Mud Sport - Level 5
  (195, 19500, 300, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Quagsire - Mud Shot - Level 9
  (195, 19500, 341, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Quagsire - Slam - Level 15
  (195, 19500, 21, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Quagsire - Mud Bomb - Level 19
  (195, 19500, 426, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Quagsire - Amnesia - Level 24
  (195, 19500, 133, 16, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Quagsire - Yawn - Level 31
  (195, 19500, 281, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Quagsire - Earthquake - Level 36
  (195, 19500, 89, 16, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Quagsire - Rain Dance - Level 41
  (195, 19500, 240, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Quagsire - Mist - Level 48
  (195, 19500, 54, 16, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Quagsire - Haze - Level 48
  (195, 19500, 114, 16, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Quagsire - Muddy Water - Level 53
  (195, 19500, 330, 16, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Quagsire - Toxic - TM06
  (195, 19500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Quagsire - Hail - TM07
  (195, 19500, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 16),
  -- Quagsire - Hidden Power - TM10
  (195, 19500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Quagsire - Ice Beam - TM13
  (195, 19500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 18),
  -- Quagsire - Blizzard - TM14
  (195, 19500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 19),
  -- Quagsire - Hyper Beam - TM15
  (195, 19500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Quagsire - Protect - TM17
  (195, 19500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Quagsire - Rain Dance - TM18
  (195, 19500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Quagsire - Safeguard - TM20
  (195, 19500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 23),
  -- Quagsire - Frustration - TM21
  (195, 19500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Quagsire - Earthquake - TM26
  (195, 19500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Quagsire - Return - TM27
  (195, 19500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Quagsire - Brick Break - TM31
  (195, 19500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Quagsire - Double Team - TM32
  (195, 19500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Quagsire - Sludge Wave - TM34
  (195, 19500, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 29),
  -- Quagsire - Sludge Bomb - TM36
  (195, 19500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 30),
  -- Quagsire - Sandstorm - TM37
  (195, 19500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 31),
  -- Quagsire - Rock Tomb - TM39
  (195, 19500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Quagsire - Facade - TM42
  (195, 19500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Quagsire - Rest - TM44
  (195, 19500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Quagsire - Attract - TM45
  (195, 19500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Quagsire - Thief - TM46
  (195, 19500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Quagsire - Round - TM48
  (195, 19500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Quagsire - Focus Blast - TM52
  (195, 19500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 38),
  -- Quagsire - Scald - TM55
  (195, 19500, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 39),
  -- Quagsire - Fling - TM56
  (195, 19500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 40),
  -- Quagsire - Giga Impact - TM68
  (195, 19500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Quagsire - Stone Edge - TM71
  (195, 19500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 42),
  -- Quagsire - Bulldoze - TM78
  (195, 19500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 43),
  -- Quagsire - Rock Slide - TM80
  (195, 19500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 44),
  -- Quagsire - Infestation - TM83
  (195, 19500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 45),
  -- Quagsire - Swagger - TM87
  (195, 19500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Quagsire - Sleep Talk - TM88
  (195, 19500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Quagsire - Substitute - TM90
  (195, 19500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Quagsire - Surf - TM94
  (195, 19500, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 49),
  -- Quagsire - Waterfall - TM98
  (195, 19500, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 50),
  -- Quagsire - Confide - TM100
  (195, 19500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Quagsire - Ice Punch - Tutor
  (195, 19500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Quagsire - Snore - Tutor
  (195, 19500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Quagsire - Icy Wind - Tutor
  (195, 19500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Quagsire - Iron Tail - Tutor
  (195, 19500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Quagsire - Focus Punch - Tutor
  (195, 19500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Quagsire - Water Pulse - Tutor
  (195, 19500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Quagsire - Aqua Tail - Tutor
  (195, 19500, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Quagsire - Earth Power - Tutor
  (195, 19500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Quagsire - After You - Tutor
  (195, 19500, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Quagsire - Stomping Tantrum - Tutor
  (195, 19500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Espeon - Tackle - Level 1
  (196, 19600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espeon - Tail Whip - Level 1
  (196, 19600, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espeon - Confusion - Level 1
  (196, 19600, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Espeon - Helping Hand - Level 1
  (196, 19600, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Espeon - Sand Attack - Level 5
  (196, 19600, 28, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Espeon - Baby-Doll Eyes - Level 9
  (196, 19600, 608, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Espeon - Quick Attack - Level 13
  (196, 19600, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Espeon - Swift - Level 17
  (196, 19600, 129, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Espeon - Psybeam - Level 20
  (196, 19600, 60, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Espeon - Future Sight - Level 25
  (196, 19600, 248, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Espeon - Psych Up - Level 29
  (196, 19600, 244, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Espeon - Morning Sun - Level 33
  (196, 19600, 234, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Espeon - Psychic - Level 37
  (196, 19600, 94, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Espeon - Last Resort - Level 41
  (196, 19600, 387, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Espeon - Power Swap - Level 45
  (196, 19600, 384, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Espeon - Work Up - TM01
  (196, 19600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Espeon - Psyshock - TM03
  (196, 19600, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Espeon - Calm Mind - TM04
  (196, 19600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Espeon - Toxic - TM06
  (196, 19600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Espeon - Hidden Power - TM10
  (196, 19600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Espeon - Sunny Day - TM11
  (196, 19600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Espeon - Hyper Beam - TM15
  (196, 19600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Espeon - Light Screen - TM16
  (196, 19600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 23),
  -- Espeon - Protect - TM17
  (196, 19600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Espeon - Rain Dance - TM18
  (196, 19600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Espeon - Frustration - TM21
  (196, 19600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Espeon - Return - TM27
  (196, 19600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Espeon - Psychic - TM29
  (196, 19600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 28),
  -- Espeon - Shadow Ball - TM30
  (196, 19600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Espeon - Double Team - TM32
  (196, 19600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Espeon - Reflect - TM33
  (196, 19600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 31),
  -- Espeon - Facade - TM42
  (196, 19600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Espeon - Rest - TM44
  (196, 19600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Espeon - Attract - TM45
  (196, 19600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Espeon - Round - TM48
  (196, 19600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Espeon - Echoed Voice - TM49
  (196, 19600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 36),
  -- Espeon - Giga Impact - TM68
  (196, 19600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Espeon - Psych Up - TM77
  (196, 19600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 38),
  -- Espeon - Dream Eater - TM85
  (196, 19600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 39),
  -- Espeon - Grass Knot - TM86
  (196, 19600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 40),
  -- Espeon - Swagger - TM87
  (196, 19600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Espeon - Sleep Talk - TM88
  (196, 19600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Espeon - Substitute - TM90
  (196, 19600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Espeon - Trick Room - TM92
  (196, 19600, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 44),
  -- Espeon - Dazzling Gleam - TM99
  (196, 19600, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 45),
  -- Espeon - Confide - TM100
  (196, 19600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Espeon - Snore - Tutor
  (196, 19600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Espeon - Heal Bell - Tutor
  (196, 19600, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Espeon - Iron Tail - Tutor
  (196, 19600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Espeon - Helping Hand - Tutor
  (196, 19600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Espeon - Trick - Tutor
  (196, 19600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Espeon - Magic Coat - Tutor
  (196, 19600, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Espeon - Skill Swap - Tutor
  (196, 19600, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Espeon - Hyper Voice - Tutor
  (196, 19600, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Espeon - Signal Beam - Tutor
  (196, 19600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Espeon - Covet - Tutor
  (196, 19600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Espeon - Last Resort - Tutor
  (196, 19600, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Espeon - Zen Headbutt - Tutor
  (196, 19600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Espeon - Telekinesis - Tutor
  (196, 19600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Espeon - Magic Room - Tutor
  (196, 19600, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Espeon - Ally Switch - Tutor
  (196, 19600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Espeon - Laser Focus - Tutor
  (196, 19600, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Espeon - Confusion - Evolution
  (196, 19600, 93, 16, NULL, 7, NULL, NULL, NULL, NULL, 63),

  -- Umbreon - Tackle - Level 1
  (197, 19700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Umbreon - Tail Whip - Level 1
  (197, 19700, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Umbreon - Pursuit - Level 1
  (197, 19700, 228, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Umbreon - Helping Hand - Level 1
  (197, 19700, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Umbreon - Sand Attack - Level 5
  (197, 19700, 28, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Umbreon - Baby-Doll Eyes - Level 9
  (197, 19700, 608, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Umbreon - Quick Attack - Level 13
  (197, 19700, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Umbreon - Confuse Ray - Level 17
  (197, 19700, 109, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Umbreon - Feint Attack - Level 20
  (197, 19700, 185, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Umbreon - Assurance - Level 25
  (197, 19700, 372, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Umbreon - Screech - Level 29
  (197, 19700, 103, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Umbreon - Moonlight - Level 33
  (197, 19700, 236, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Umbreon - Mean Look - Level 37
  (197, 19700, 212, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Umbreon - Last Resort - Level 41
  (197, 19700, 387, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Umbreon - Guard Swap - Level 45
  (197, 19700, 385, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Umbreon - Work Up - TM01
  (197, 19700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Umbreon - Toxic - TM06
  (197, 19700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Umbreon - Hidden Power - TM10
  (197, 19700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Umbreon - Sunny Day - TM11
  (197, 19700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Umbreon - Taunt - TM12
  (197, 19700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Umbreon - Hyper Beam - TM15
  (197, 19700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Umbreon - Protect - TM17
  (197, 19700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Umbreon - Rain Dance - TM18
  (197, 19700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Umbreon - Frustration - TM21
  (197, 19700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Umbreon - Return - TM27
  (197, 19700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Umbreon - Psychic - TM29
  (197, 19700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 26),
  -- Umbreon - Shadow Ball - TM30
  (197, 19700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Umbreon - Double Team - TM32
  (197, 19700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Umbreon - Torment - TM41
  (197, 19700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 29),
  -- Umbreon - Facade - TM42
  (197, 19700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Umbreon - Rest - TM44
  (197, 19700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Umbreon - Attract - TM45
  (197, 19700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Umbreon - Round - TM48
  (197, 19700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Umbreon - Echoed Voice - TM49
  (197, 19700, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 34),
  -- Umbreon - Payback - TM66
  (197, 19700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 35),
  -- Umbreon - Giga Impact - TM68
  (197, 19700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 36),
  -- Umbreon - Psych Up - TM77
  (197, 19700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 37),
  -- Umbreon - Dream Eater - TM85
  (197, 19700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 38),
  -- Umbreon - Swagger - TM87
  (197, 19700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Umbreon - Sleep Talk - TM88
  (197, 19700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Umbreon - Substitute - TM90
  (197, 19700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Umbreon - Snarl - TM95
  (197, 19700, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 42),
  -- Umbreon - Dark Pulse - TM97
  (197, 19700, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 43),
  -- Umbreon - Confide - TM100
  (197, 19700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Umbreon - Snore - Tutor
  (197, 19700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Umbreon - Spite - Tutor
  (197, 19700, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Umbreon - Heal Bell - Tutor
  (197, 19700, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Umbreon - Iron Tail - Tutor
  (197, 19700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Umbreon - Helping Hand - Tutor
  (197, 19700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Umbreon - Snatch - Tutor
  (197, 19700, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Umbreon - Hyper Voice - Tutor
  (197, 19700, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Umbreon - Covet - Tutor
  (197, 19700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Umbreon - Last Resort - Tutor
  (197, 19700, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Umbreon - Wonder Room - Tutor
  (197, 19700, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Umbreon - Foul Play - Tutor
  (197, 19700, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Umbreon - Laser Focus - Tutor
  (197, 19700, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Umbreon - Throat Chop - Tutor
  (197, 19700, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Umbreon - Pursuit - Evolution
  (197, 19700, 228, 16, NULL, 7, NULL, NULL, NULL, NULL, 58),

  -- Murkrow - Peck - Level 1
  (198, 19800, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Murkrow - Astonish - Level 1
  (198, 19800, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Murkrow - Pursuit - Level 5
  (198, 19800, 228, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Murkrow - Haze - Level 11
  (198, 19800, 114, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Murkrow - Wing Attack - Level 15
  (198, 19800, 17, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Murkrow - Night Shade - Level 21
  (198, 19800, 101, 16, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Murkrow - Assurance - Level 25
  (198, 19800, 372, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Murkrow - Taunt - Level 31
  (198, 19800, 269, 16, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Murkrow - Feint Attack - Level 35
  (198, 19800, 185, 16, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Murkrow - Mean Look - Level 41
  (198, 19800, 212, 16, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Murkrow - Foul Play - Level 45
  (198, 19800, 492, 16, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Murkrow - Tailwind - Level 50
  (198, 19800, 366, 16, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Murkrow - Sucker Punch - Level 55
  (198, 19800, 389, 16, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Murkrow - Torment - Level 61
  (198, 19800, 259, 16, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Murkrow - Quash - Level 65
  (198, 19800, 511, 16, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Murkrow - Calm Mind - TM04
  (198, 19800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 16),
  -- Murkrow - Toxic - TM06
  (198, 19800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Murkrow - Hidden Power - TM10
  (198, 19800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Murkrow - Sunny Day - TM11
  (198, 19800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Murkrow - Taunt - TM12
  (198, 19800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Murkrow - Protect - TM17
  (198, 19800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Murkrow - Rain Dance - TM18
  (198, 19800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Murkrow - Roost - TM19
  (198, 19800, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Murkrow - Frustration - TM21
  (198, 19800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Murkrow - Return - TM27
  (198, 19800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Murkrow - Psychic - TM29
  (198, 19800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 26),
  -- Murkrow - Shadow Ball - TM30
  (198, 19800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Murkrow - Double Team - TM32
  (198, 19800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Murkrow - Aerial Ace - TM40
  (198, 19800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Murkrow - Torment - TM41
  (198, 19800, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Murkrow - Facade - TM42
  (198, 19800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Murkrow - Rest - TM44
  (198, 19800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Murkrow - Attract - TM45
  (198, 19800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Murkrow - Thief - TM46
  (198, 19800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Murkrow - Round - TM48
  (198, 19800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Murkrow - Steel Wing - TM51
  (198, 19800, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 36),
  -- Murkrow - Quash - TM60
  (198, 19800, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 37),
  -- Murkrow - Embargo - TM63
  (198, 19800, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 38),
  -- Murkrow - Payback - TM66
  (198, 19800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 39),
  -- Murkrow - Thunder Wave - TM73
  (198, 19800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 40),
  -- Murkrow - Fly - TM76
  (198, 19800, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 41),
  -- Murkrow - Psych Up - TM77
  (198, 19800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Murkrow - Dream Eater - TM85
  (198, 19800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 43),
  -- Murkrow - Swagger - TM87
  (198, 19800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Murkrow - Sleep Talk - TM88
  (198, 19800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Murkrow - Substitute - TM90
  (198, 19800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Murkrow - Snarl - TM95
  (198, 19800, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 47),
  -- Murkrow - Dark Pulse - TM97
  (198, 19800, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 48),
  -- Murkrow - Confide - TM100
  (198, 19800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Murkrow - Wing Attack - Egg
  (198, 19800, 17, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Murkrow - Whirlwind - Egg
  (198, 19800, 18, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Murkrow - Drill Peck - Egg
  (198, 19800, 65, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Murkrow - Screech - Egg
  (198, 19800, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Murkrow - Confuse Ray - Egg
  (198, 19800, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Murkrow - Mirror Move - Egg
  (198, 19800, 119, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Murkrow - Sky Attack - Egg
  (198, 19800, 143, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Murkrow - Feint Attack - Egg
  (198, 19800, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Murkrow - Perish Song - Egg
  (198, 19800, 195, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Murkrow - Flatter - Egg
  (198, 19800, 260, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Murkrow - Feather Dance - Egg
  (198, 19800, 297, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Murkrow - Roost - Egg
  (198, 19800, 355, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Murkrow - Assurance - Egg
  (198, 19800, 372, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Murkrow - Psycho Shift - Egg
  (198, 19800, 375, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Murkrow - Punishment - Egg
  (198, 19800, 386, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Murkrow - Brave Bird - Egg
  (198, 19800, 413, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Murkrow - Sky Attack - Tutor
  (198, 19800, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Murkrow - Snore - Tutor
  (198, 19800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Murkrow - Spite - Tutor
  (198, 19800, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Murkrow - Icy Wind - Tutor
  (198, 19800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Murkrow - Uproar - Tutor
  (198, 19800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Murkrow - Heat Wave - Tutor
  (198, 19800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Murkrow - Snatch - Tutor
  (198, 19800, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Murkrow - Tailwind - Tutor
  (198, 19800, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Murkrow - Defog - Tutor
  (198, 19800, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Murkrow - Foul Play - Tutor
  (198, 19800, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),

  -- Slowking - Tackle - Level 1
  (199, 19900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowking - Curse - Level 1
  (199, 19900, 174, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowking - Hidden Power - Level 1
  (199, 19900, 237, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowking - Yawn - Level 1
  (199, 19900, 281, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowking - Power Gem - Level 1
  (199, 19900, 408, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowking - Heal Pulse - Level 1
  (199, 19900, 505, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Slowking - Growl - Level 5
  (199, 19900, 45, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Slowking - Water Gun - Level 9
  (199, 19900, 55, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Slowking - Confusion - Level 14
  (199, 19900, 93, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Slowking - Disable - Level 19
  (199, 19900, 50, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Slowking - Headbutt - Level 23
  (199, 19900, 29, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Slowking - Water Pulse - Level 28
  (199, 19900, 352, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Slowking - Zen Headbutt - Level 32
  (199, 19900, 428, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Slowking - Nasty Plot - Level 36
  (199, 19900, 417, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Slowking - Swagger - Level 41
  (199, 19900, 207, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Slowking - Psychic - Level 45
  (199, 19900, 94, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Slowking - Trump Card - Level 49
  (199, 19900, 376, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Slowking - Psych Up - Level 54
  (199, 19900, 244, 16, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Slowking - Heal Pulse - Level 58
  (199, 19900, 505, 16, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Slowking - Psyshock - TM03
  (199, 19900, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 20),
  -- Slowking - Calm Mind - TM04
  (199, 19900, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Slowking - Toxic - TM06
  (199, 19900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Slowking - Hail - TM07
  (199, 19900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 23),
  -- Slowking - Hidden Power - TM10
  (199, 19900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Slowking - Sunny Day - TM11
  (199, 19900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Slowking - Ice Beam - TM13
  (199, 19900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 26),
  -- Slowking - Blizzard - TM14
  (199, 19900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 27),
  -- Slowking - Hyper Beam - TM15
  (199, 19900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Slowking - Light Screen - TM16
  (199, 19900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 29),
  -- Slowking - Protect - TM17
  (199, 19900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Slowking - Rain Dance - TM18
  (199, 19900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Slowking - Safeguard - TM20
  (199, 19900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 32),
  -- Slowking - Frustration - TM21
  (199, 19900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 33),
  -- Slowking - Earthquake - TM26
  (199, 19900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 34),
  -- Slowking - Return - TM27
  (199, 19900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 35),
  -- Slowking - Psychic - TM29
  (199, 19900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 36),
  -- Slowking - Shadow Ball - TM30
  (199, 19900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 37),
  -- Slowking - Brick Break - TM31
  (199, 19900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 38),
  -- Slowking - Double Team - TM32
  (199, 19900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Slowking - Flamethrower - TM35
  (199, 19900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 40),
  -- Slowking - Fire Blast - TM38
  (199, 19900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 41),
  -- Slowking - Facade - TM42
  (199, 19900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 42),
  -- Slowking - Rest - TM44
  (199, 19900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 43),
  -- Slowking - Attract - TM45
  (199, 19900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 44),
  -- Slowking - Round - TM48
  (199, 19900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Slowking - Echoed Voice - TM49
  (199, 19900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 46),
  -- Slowking - Focus Blast - TM52
  (199, 19900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 47),
  -- Slowking - Scald - TM55
  (199, 19900, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 48),
  -- Slowking - Fling - TM56
  (199, 19900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 49),
  -- Slowking - Quash - TM60
  (199, 19900, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 50),
  -- Slowking - Giga Impact - TM68
  (199, 19900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 51),
  -- Slowking - Thunder Wave - TM73
  (199, 19900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 52),
  -- Slowking - Psych Up - TM77
  (199, 19900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 53),
  -- Slowking - Bulldoze - TM78
  (199, 19900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 54),
  -- Slowking - Dragon Tail - TM82
  (199, 19900, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 55),
  -- Slowking - Dream Eater - TM85
  (199, 19900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 56),
  -- Slowking - Grass Knot - TM86
  (199, 19900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 57),
  -- Slowking - Swagger - TM87
  (199, 19900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 58),
  -- Slowking - Sleep Talk - TM88
  (199, 19900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 59),
  -- Slowking - Substitute - TM90
  (199, 19900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 60),
  -- Slowking - Trick Room - TM92
  (199, 19900, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 61),
  -- Slowking - Surf - TM94
  (199, 19900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 62),
  -- Slowking - Confide - TM100
  (199, 19900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 63),
  -- Slowking - Ice Punch - Tutor
  (199, 19900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Slowking - Snore - Tutor
  (199, 19900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Slowking - Icy Wind - Tutor
  (199, 19900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Slowking - Iron Tail - Tutor
  (199, 19900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Slowking - Focus Punch - Tutor
  (199, 19900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Slowking - Trick - Tutor
  (199, 19900, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Slowking - Magic Coat - Tutor
  (199, 19900, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Slowking - Recycle - Tutor
  (199, 19900, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Slowking - Skill Swap - Tutor
  (199, 19900, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Slowking - Signal Beam - Tutor
  (199, 19900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Slowking - Iron Defense - Tutor
  (199, 19900, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Slowking - Block - Tutor
  (199, 19900, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Slowking - Water Pulse - Tutor
  (199, 19900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Slowking - Aqua Tail - Tutor
  (199, 19900, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Slowking - Drain Punch - Tutor
  (199, 19900, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Slowking - Zen Headbutt - Tutor
  (199, 19900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Slowking - Wonder Room - Tutor
  (199, 19900, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Slowking - Telekinesis - Tutor
  (199, 19900, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Slowking - Foul Play - Tutor
  (199, 19900, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Slowking - After You - Tutor
  (199, 19900, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Slowking - Ally Switch - Tutor
  (199, 19900, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Slowking - Laser Focus - Tutor
  (199, 19900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),

  -- Misdreavus - Growl - Level 1
  (200, 20000, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Misdreavus - Psywave - Level 1
  (200, 20000, 149, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Misdreavus - Spite - Level 5
  (200, 20000, 180, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Misdreavus - Astonish - Level 10
  (200, 20000, 310, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Misdreavus - Confuse Ray - Level 14
  (200, 20000, 109, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Misdreavus - Mean Look - Level 19
  (200, 20000, 212, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Misdreavus - Hex - Level 23
  (200, 20000, 506, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Misdreavus - Psybeam - Level 28
  (200, 20000, 60, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Misdreavus - Pain Split - Level 32
  (200, 20000, 220, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Misdreavus - Payback - Level 37
  (200, 20000, 371, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Misdreavus - Shadow Ball - Level 41
  (200, 20000, 247, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Misdreavus - Perish Song - Level 46
  (200, 20000, 195, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Misdreavus - Grudge - Level 50
  (200, 20000, 288, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Misdreavus - Power Gem - Level 55
  (200, 20000, 408, 16, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Misdreavus - Calm Mind - TM04
  (200, 20000, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 15),
  -- Misdreavus - Toxic - TM06
  (200, 20000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Misdreavus - Hidden Power - TM10
  (200, 20000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Misdreavus - Sunny Day - TM11
  (200, 20000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Misdreavus - Taunt - TM12
  (200, 20000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Misdreavus - Protect - TM17
  (200, 20000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Misdreavus - Rain Dance - TM18
  (200, 20000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Misdreavus - Frustration - TM21
  (200, 20000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Misdreavus - Thunderbolt - TM24
  (200, 20000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Misdreavus - Thunder - TM25
  (200, 20000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 24),
  -- Misdreavus - Return - TM27
  (200, 20000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Misdreavus - Psychic - TM29
  (200, 20000, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 26),
  -- Misdreavus - Shadow Ball - TM30
  (200, 20000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Misdreavus - Double Team - TM32
  (200, 20000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Misdreavus - Aerial Ace - TM40
  (200, 20000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Misdreavus - Torment - TM41
  (200, 20000, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Misdreavus - Facade - TM42
  (200, 20000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Misdreavus - Rest - TM44
  (200, 20000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Misdreavus - Attract - TM45
  (200, 20000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Misdreavus - Thief - TM46
  (200, 20000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Misdreavus - Round - TM48
  (200, 20000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Misdreavus - Echoed Voice - TM49
  (200, 20000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 36),
  -- Misdreavus - Charge Beam - TM57
  (200, 20000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 37),
  -- Misdreavus - Will-O-Wisp - TM61
  (200, 20000, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 38),
  -- Misdreavus - Embargo - TM63
  (200, 20000, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 39),
  -- Misdreavus - Payback - TM66
  (200, 20000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 40),
  -- Misdreavus - Thunder Wave - TM73
  (200, 20000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Misdreavus - Psych Up - TM77
  (200, 20000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Misdreavus - Dream Eater - TM85
  (200, 20000, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 43),
  -- Misdreavus - Swagger - TM87
  (200, 20000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Misdreavus - Sleep Talk - TM88
  (200, 20000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Misdreavus - Substitute - TM90
  (200, 20000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Misdreavus - Trick Room - TM92
  (200, 20000, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 47),
  -- Misdreavus - Dark Pulse - TM97
  (200, 20000, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 48),
  -- Misdreavus - Dazzling Gleam - TM99
  (200, 20000, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 49),
  -- Misdreavus - Confide - TM100
  (200, 20000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Misdreavus - Screech - Egg
  (200, 20000, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Misdreavus - Curse - Egg
  (200, 20000, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Misdreavus - Spite - Egg
  (200, 20000, 180, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Misdreavus - Destiny Bond - Egg
  (200, 20000, 194, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Misdreavus - Memento - Egg
  (200, 20000, 262, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Misdreavus - Skill Swap - Egg
  (200, 20000, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Misdreavus - Imprison - Egg
  (200, 20000, 286, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Misdreavus - Me First - Egg
  (200, 20000, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Misdreavus - Sucker Punch - Egg
  (200, 20000, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Misdreavus - Nasty Plot - Egg
  (200, 20000, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Misdreavus - Shadow Sneak - Egg
  (200, 20000, 425, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Misdreavus - Ominous Wind - Egg
  (200, 20000, 466, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Misdreavus - Wonder Room - Egg
  (200, 20000, 472, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Misdreavus - Snore - Tutor
  (200, 20000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Misdreavus - Spite - Tutor
  (200, 20000, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Misdreavus - Icy Wind - Tutor
  (200, 20000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Misdreavus - Heal Bell - Tutor
  (200, 20000, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Misdreavus - Pain Split - Tutor
  (200, 20000, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Misdreavus - Uproar - Tutor
  (200, 20000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Misdreavus - Trick - Tutor
  (200, 20000, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Misdreavus - Magic Coat - Tutor
  (200, 20000, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Misdreavus - Skill Swap - Tutor
  (200, 20000, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Misdreavus - Snatch - Tutor
  (200, 20000, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Misdreavus - Hyper Voice - Tutor
  (200, 20000, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Misdreavus - Shock Wave - Tutor
  (200, 20000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Misdreavus - Wonder Room - Tutor
  (200, 20000, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Misdreavus - Telekinesis - Tutor
  (200, 20000, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Misdreavus - Magic Room - Tutor
  (200, 20000, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Misdreavus - Foul Play - Tutor
  (200, 20000, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Misdreavus - Ally Switch - Tutor
  (200, 20000, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),

  -- Unown - Hidden Power - Level 1
  (201, 20100, 237, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Unown - Hidden Power - TM10
  (201, 20100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 2);
