-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII raw Pokémon learnset pages for Brilliant Diamond / Shining Pearl.
-- Cross-check: Serebii BDSP game learnset pages and PokemonDB generation learnset pages where useful.
-- Machine normalization: Bulbapedia BDSP TM catalog data.
-- Product scope: default-form BDSP direct acquisition rows only; alternate/regional form sections are excluded until separately seeded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Brilliant Diamond / Shining Pearl learnsets for default forms, species 152-201.
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
  -- Chikorita - Tackle - Starting Move
  (152, 15200, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Chikorita - Growl - Starting Move
  (152, 15200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Chikorita - Razor Leaf - Level 6
  (152, 15200, 75, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Chikorita - Poison Powder - Level 9
  (152, 15200, 77, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chikorita - Synthesis - Level 12
  (152, 15200, 235, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chikorita - Reflect - Level 17
  (152, 15200, 115, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chikorita - Magical Leaf - Level 20
  (152, 15200, 345, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chikorita - Nature Power - Level 23
  (152, 15200, 267, 21, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chikorita - Sweet Scent - Level 28
  (152, 15200, 230, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Chikorita - Light Screen - Level 31
  (152, 15200, 113, 21, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Chikorita - Body Slam - Level 34
  (152, 15200, 34, 21, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Chikorita - Safeguard - Level 39
  (152, 15200, 219, 21, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Chikorita - Aromatherapy - Level 42
  (152, 15200, 312, 21, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Chikorita - Solar Beam - Level 45
  (152, 15200, 76, 21, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Chikorita - Bullet Seed - TM09
  (152, 15200, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 15),
  -- Chikorita - Work Up - TM10
  (152, 15200, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 16),
  -- Chikorita - Sunny Day - TM11
  (152, 15200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Chikorita - Light Screen - TM16
  (152, 15200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 18),
  -- Chikorita - Protect - TM17
  (152, 15200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Chikorita - Giga Drain - TM19
  (152, 15200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 20),
  -- Chikorita - Safeguard - TM20
  (152, 15200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 21),
  -- Chikorita - Solar Beam - TM22
  (152, 15200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Chikorita - Iron Tail - TM23
  (152, 15200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Chikorita - Double Team - TM32
  (152, 15200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Chikorita - Reflect - TM33
  (152, 15200, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 25),
  -- Chikorita - Facade - TM42
  (152, 15200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Chikorita - Rest - TM44
  (152, 15200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Chikorita - Attract - TM45
  (152, 15200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Chikorita - Energy Ball - TM53
  (152, 15200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 29),
  -- Chikorita - Endure - TM58
  (152, 15200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Chikorita - Flash - TM70
  (152, 15200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 31),
  -- Chikorita - Swords Dance - TM75
  (152, 15200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 32),
  -- Chikorita - Sleep Talk - TM82
  (152, 15200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Chikorita - Grass Knot - TM86
  (152, 15200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 34),
  -- Chikorita - Swagger - TM87
  (152, 15200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Chikorita - Substitute - TM90
  (152, 15200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Chikorita - Cut - TM93
  (152, 15200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 37),
  -- Chikorita - Ancient Power - Egg
  (152, 15200, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Chikorita - Aromatherapy - Egg
  (152, 15200, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Chikorita - Body Slam - Egg
  (152, 15200, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Chikorita - Counter - Egg
  (152, 15200, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Chikorita - Flail - Egg
  (152, 15200, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chikorita - Grassy Terrain - Egg
  (152, 15200, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chikorita - Heal Pulse - Egg
  (152, 15200, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chikorita - Ingrain - Egg
  (152, 15200, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chikorita - Leaf Storm - Egg
  (152, 15200, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chikorita - Leech Seed - Egg
  (152, 15200, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chikorita - Nature Power - Egg
  (152, 15200, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chikorita - Vine Whip - Egg
  (152, 15200, 22, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bayleef - Tackle - Starting Move
  (153, 15300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Bayleef - Growl - Starting Move
  (153, 15300, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Bayleef - Razor Leaf - Starting Move
  (153, 15300, 75, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Bayleef - Poison Powder - Starting Move
  (153, 15300, 77, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Bayleef - Razor Leaf - Level 6
  (153, 15300, 75, 21, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Bayleef - Poison Powder - Level 9
  (153, 15300, 77, 21, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Bayleef - Synthesis - Level 12
  (153, 15300, 235, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Bayleef - Reflect - Level 18
  (153, 15300, 115, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Bayleef - Magical Leaf - Level 22
  (153, 15300, 345, 21, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Bayleef - Nature Power - Level 26
  (153, 15300, 267, 21, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Bayleef - Sweet Scent - Level 32
  (153, 15300, 230, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Bayleef - Light Screen - Level 36
  (153, 15300, 113, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bayleef - Body Slam - Level 40
  (153, 15300, 34, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Bayleef - Safeguard - Level 46
  (153, 15300, 219, 21, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Bayleef - Aromatherapy - Level 50
  (153, 15300, 312, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Bayleef - Solar Beam - Level 54
  (153, 15300, 76, 21, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Bayleef - Bullet Seed - TM09
  (153, 15300, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 17),
  -- Bayleef - Work Up - TM10
  (153, 15300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Bayleef - Sunny Day - TM11
  (153, 15300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Bayleef - Light Screen - TM16
  (153, 15300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Bayleef - Protect - TM17
  (153, 15300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Bayleef - Giga Drain - TM19
  (153, 15300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 22),
  -- Bayleef - Safeguard - TM20
  (153, 15300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Bayleef - Solar Beam - TM22
  (153, 15300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Bayleef - Iron Tail - TM23
  (153, 15300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Bayleef - Double Team - TM32
  (153, 15300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Bayleef - Reflect - TM33
  (153, 15300, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 27),
  -- Bayleef - Facade - TM42
  (153, 15300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Bayleef - Rest - TM44
  (153, 15300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Bayleef - Attract - TM45
  (153, 15300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Bayleef - Energy Ball - TM53
  (153, 15300, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 31),
  -- Bayleef - Endure - TM58
  (153, 15300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Bayleef - Flash - TM70
  (153, 15300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 33),
  -- Bayleef - Swords Dance - TM75
  (153, 15300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 34),
  -- Bayleef - Sleep Talk - TM82
  (153, 15300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Bayleef - Grass Knot - TM86
  (153, 15300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 36),
  -- Bayleef - Swagger - TM87
  (153, 15300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Bayleef - Substitute - TM90
  (153, 15300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Bayleef - Cut - TM93
  (153, 15300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 39),
  -- Bayleef - Strength - TM96
  (153, 15300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 40),
  -- Bayleef - Rock Smash - TM98
  (153, 15300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 41),
  -- Bayleef - Ancient Power - Egg
  (153, 15300, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bayleef - Aromatherapy - Egg
  (153, 15300, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bayleef - Body Slam - Egg
  (153, 15300, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bayleef - Counter - Egg
  (153, 15300, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bayleef - Flail - Egg
  (153, 15300, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bayleef - Grassy Terrain - Egg
  (153, 15300, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bayleef - Heal Pulse - Egg
  (153, 15300, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bayleef - Ingrain - Egg
  (153, 15300, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bayleef - Leaf Storm - Egg
  (153, 15300, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bayleef - Leech Seed - Egg
  (153, 15300, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bayleef - Nature Power - Egg
  (153, 15300, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bayleef - Vine Whip - Egg
  (153, 15300, 22, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Meganium - Petal Dance - Starting Move
  (154, 15400, 80, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Meganium - Petal Blizzard - Starting Move
  (154, 15400, 572, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Meganium - Tackle - Starting Move
  (154, 15400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Meganium - Growl - Starting Move
  (154, 15400, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Meganium - Razor Leaf - Starting Move
  (154, 15400, 75, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Meganium - Poison Powder - Starting Move
  (154, 15400, 77, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Meganium - Petal Dance - Evolution
  (154, 15400, 80, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Meganium - Razor Leaf - Level 6
  (154, 15400, 75, 21, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Meganium - Poison Powder - Level 9
  (154, 15400, 77, 21, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Meganium - Synthesis - Level 12
  (154, 15400, 235, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Meganium - Reflect - Level 18
  (154, 15400, 115, 21, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Meganium - Magical Leaf - Level 22
  (154, 15400, 345, 21, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Meganium - Nature Power - Level 26
  (154, 15400, 267, 21, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Meganium - Sweet Scent - Level 34
  (154, 15400, 230, 21, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Meganium - Light Screen - Level 40
  (154, 15400, 113, 21, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Meganium - Body Slam - Level 46
  (154, 15400, 34, 21, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Meganium - Safeguard - Level 54
  (154, 15400, 219, 21, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Meganium - Aromatherapy - Level 60
  (154, 15400, 312, 21, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Meganium - Solar Beam - Level 66
  (154, 15400, 76, 21, NULL, 1, 66, NULL, NULL, NULL, 19),
  -- Meganium - Petal Blizzard - Level 70
  (154, 15400, 572, 21, NULL, 1, 70, NULL, NULL, NULL, 20),
  -- Meganium - Bullet Seed - TM09
  (154, 15400, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 21),
  -- Meganium - Work Up - TM10
  (154, 15400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Meganium - Sunny Day - TM11
  (154, 15400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Meganium - Hyper Beam - TM15
  (154, 15400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Meganium - Light Screen - TM16
  (154, 15400, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 25),
  -- Meganium - Protect - TM17
  (154, 15400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Meganium - Giga Drain - TM19
  (154, 15400, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Meganium - Safeguard - TM20
  (154, 15400, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 28),
  -- Meganium - Solar Beam - TM22
  (154, 15400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Meganium - Iron Tail - TM23
  (154, 15400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Meganium - Earthquake - TM26
  (154, 15400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 31),
  -- Meganium - Double Team - TM32
  (154, 15400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Meganium - Reflect - TM33
  (154, 15400, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 33),
  -- Meganium - Facade - TM42
  (154, 15400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Meganium - Rest - TM44
  (154, 15400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Meganium - Attract - TM45
  (154, 15400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Meganium - Energy Ball - TM53
  (154, 15400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 37),
  -- Meganium - Endure - TM58
  (154, 15400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Meganium - Giga Impact - TM68
  (154, 15400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 39),
  -- Meganium - Flash - TM70
  (154, 15400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 40),
  -- Meganium - Swords Dance - TM75
  (154, 15400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 41),
  -- Meganium - Sleep Talk - TM82
  (154, 15400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Meganium - Bulldoze - TM83
  (154, 15400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Meganium - Grass Knot - TM86
  (154, 15400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 44),
  -- Meganium - Swagger - TM87
  (154, 15400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Meganium - Substitute - TM90
  (154, 15400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Meganium - Cut - TM93
  (154, 15400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 47),
  -- Meganium - Strength - TM96
  (154, 15400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Meganium - Rock Smash - TM98
  (154, 15400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Meganium - Rock Climb - TM100
  (154, 15400, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 50),
  -- Meganium - Ancient Power - Egg
  (154, 15400, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Meganium - Aromatherapy - Egg
  (154, 15400, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Meganium - Body Slam - Egg
  (154, 15400, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Meganium - Counter - Egg
  (154, 15400, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meganium - Flail - Egg
  (154, 15400, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meganium - Grassy Terrain - Egg
  (154, 15400, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meganium - Heal Pulse - Egg
  (154, 15400, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meganium - Ingrain - Egg
  (154, 15400, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meganium - Leaf Storm - Egg
  (154, 15400, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meganium - Leech Seed - Egg
  (154, 15400, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meganium - Nature Power - Egg
  (154, 15400, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Meganium - Vine Whip - Egg
  (154, 15400, 22, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cyndaquil - Tackle - Starting Move
  (155, 15500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cyndaquil - Leer - Starting Move
  (155, 15500, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Cyndaquil - Smokescreen - Level 6
  (155, 15500, 108, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cyndaquil - Ember - Level 10
  (155, 15500, 52, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cyndaquil - Quick Attack - Level 13
  (155, 15500, 98, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cyndaquil - Flame Wheel - Level 19
  (155, 15500, 172, 21, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cyndaquil - Defense Curl - Level 22
  (155, 15500, 111, 21, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cyndaquil - Flame Charge - Level 28
  (155, 15500, 488, 21, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cyndaquil - Swift - Level 31
  (155, 15500, 129, 21, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Cyndaquil - Lava Plume - Level 37
  (155, 15500, 436, 21, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cyndaquil - Flamethrower - Level 40
  (155, 15500, 53, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cyndaquil - Inferno - Level 46
  (155, 15500, 517, 21, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cyndaquil - Rollout - Level 49
  (155, 15500, 205, 21, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Cyndaquil - Double-Edge - Level 55
  (155, 15500, 38, 21, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Cyndaquil - Burn Up - Level 58
  (155, 15500, 682, 21, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Cyndaquil - Eruption - Level 64
  (155, 15500, 284, 21, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Cyndaquil - Work Up - TM10
  (155, 15500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Cyndaquil - Sunny Day - TM11
  (155, 15500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Cyndaquil - Protect - TM17
  (155, 15500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Cyndaquil - Dig - TM28
  (155, 15500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 20),
  -- Cyndaquil - Double Team - TM32
  (155, 15500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Cyndaquil - Flamethrower - TM35
  (155, 15500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 22),
  -- Cyndaquil - Fire Blast - TM38
  (155, 15500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 23),
  -- Cyndaquil - Aerial Ace - TM40
  (155, 15500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 24),
  -- Cyndaquil - Facade - TM42
  (155, 15500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Cyndaquil - Rest - TM44
  (155, 15500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Cyndaquil - Attract - TM45
  (155, 15500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Cyndaquil - Overheat - TM50
  (155, 15500, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 28),
  -- Cyndaquil - Endure - TM58
  (155, 15500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Cyndaquil - Will-O-Wisp - TM61
  (155, 15500, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 30),
  -- Cyndaquil - Sleep Talk - TM82
  (155, 15500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 31),
  -- Cyndaquil - Swagger - TM87
  (155, 15500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 32),
  -- Cyndaquil - Substitute - TM90
  (155, 15500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 33),
  -- Cyndaquil - Cut - TM93
  (155, 15500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 34),
  -- Cyndaquil - Covet - Egg
  (155, 15500, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Cyndaquil - Crush Claw - Egg
  (155, 15500, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Cyndaquil - Double-Edge - Egg
  (155, 15500, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cyndaquil - Double Kick - Egg
  (155, 15500, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cyndaquil - Extrasensory - Egg
  (155, 15500, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cyndaquil - Flare Blitz - Egg
  (155, 15500, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cyndaquil - Fury Swipes - Egg
  (155, 15500, 154, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cyndaquil - Howl - Egg
  (155, 15500, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cyndaquil - Nature Power - Egg
  (155, 15500, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cyndaquil - Quick Attack - Egg
  (155, 15500, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cyndaquil - Reversal - Egg
  (155, 15500, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cyndaquil - Thrash - Egg
  (155, 15500, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Quilava - Tackle - Starting Move
  (156, 15600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Quilava - Leer - Starting Move
  (156, 15600, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Quilava - Smokescreen - Starting Move
  (156, 15600, 108, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Quilava - Smokescreen - Level 6
  (156, 15600, 108, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Quilava - Ember - Level 10
  (156, 15600, 52, 21, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Quilava - Quick Attack - Level 13
  (156, 15600, 98, 21, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Quilava - Flame Wheel - Level 20
  (156, 15600, 172, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Quilava - Defense Curl - Level 24
  (156, 15600, 111, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Quilava - Swift - Level 31
  (156, 15600, 129, 21, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Quilava - Flame Charge - Level 35
  (156, 15600, 488, 21, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Quilava - Lava Plume - Level 42
  (156, 15600, 436, 21, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Quilava - Flamethrower - Level 46
  (156, 15600, 53, 21, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Quilava - Inferno - Level 53
  (156, 15600, 517, 21, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Quilava - Rollout - Level 57
  (156, 15600, 205, 21, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Quilava - Double-Edge - Level 64
  (156, 15600, 38, 21, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Quilava - Burn Up - Level 68
  (156, 15600, 682, 21, NULL, 1, 68, NULL, NULL, NULL, 16),
  -- Quilava - Eruption - Level 75
  (156, 15600, 284, 21, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Quilava - Focus Punch - TM01
  (156, 15600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Quilava - Roar - TM05
  (156, 15600, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Quilava - Work Up - TM10
  (156, 15600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Quilava - Sunny Day - TM11
  (156, 15600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Quilava - Protect - TM17
  (156, 15600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Quilava - Dig - TM28
  (156, 15600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 23),
  -- Quilava - Brick Break - TM31
  (156, 15600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 24),
  -- Quilava - Double Team - TM32
  (156, 15600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Quilava - Flamethrower - TM35
  (156, 15600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 26),
  -- Quilava - Fire Blast - TM38
  (156, 15600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 27),
  -- Quilava - Aerial Ace - TM40
  (156, 15600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Quilava - Facade - TM42
  (156, 15600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Quilava - Rest - TM44
  (156, 15600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Quilava - Attract - TM45
  (156, 15600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Quilava - Overheat - TM50
  (156, 15600, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 32),
  -- Quilava - Endure - TM58
  (156, 15600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Quilava - Will-O-Wisp - TM61
  (156, 15600, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 34),
  -- Quilava - Sleep Talk - TM82
  (156, 15600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Quilava - Swagger - TM87
  (156, 15600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Quilava - Substitute - TM90
  (156, 15600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Quilava - Cut - TM93
  (156, 15600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 38),
  -- Quilava - Strength - TM96
  (156, 15600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 39),
  -- Quilava - Rock Smash - TM98
  (156, 15600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 40),
  -- Quilava - Covet - Egg
  (156, 15600, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Quilava - Crush Claw - Egg
  (156, 15600, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Quilava - Double-Edge - Egg
  (156, 15600, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Quilava - Double Kick - Egg
  (156, 15600, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Quilava - Extrasensory - Egg
  (156, 15600, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Quilava - Flare Blitz - Egg
  (156, 15600, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Quilava - Fury Swipes - Egg
  (156, 15600, 154, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Quilava - Howl - Egg
  (156, 15600, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Quilava - Nature Power - Egg
  (156, 15600, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Quilava - Quick Attack - Egg
  (156, 15600, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Quilava - Reversal - Egg
  (156, 15600, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Quilava - Thrash - Egg
  (156, 15600, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Typhlosion - Eruption - Starting Move
  (157, 15700, 284, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Typhlosion - Double-Edge - Starting Move
  (157, 15700, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Typhlosion - Gyro Ball - Starting Move
  (157, 15700, 360, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Typhlosion - Tackle - Starting Move
  (157, 15700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Typhlosion - Leer - Starting Move
  (157, 15700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Typhlosion - Smokescreen - Starting Move
  (157, 15700, 108, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Typhlosion - Ember - Starting Move
  (157, 15700, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Typhlosion - Smokescreen - Level 6
  (157, 15700, 108, 21, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Typhlosion - Ember - Level 10
  (157, 15700, 52, 21, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Typhlosion - Quick Attack - Level 13
  (157, 15700, 98, 21, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Typhlosion - Flame Wheel - Level 20
  (157, 15700, 172, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Typhlosion - Defense Curl - Level 24
  (157, 15700, 111, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Typhlosion - Swift - Level 31
  (157, 15700, 129, 21, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Typhlosion - Flame Charge - Level 35
  (157, 15700, 488, 21, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Typhlosion - Lava Plume - Level 43
  (157, 15700, 436, 21, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Typhlosion - Flamethrower - Level 48
  (157, 15700, 53, 21, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Typhlosion - Inferno - Level 56
  (157, 15700, 517, 21, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Typhlosion - Rollout - Level 61
  (157, 15700, 205, 21, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Typhlosion - Double-Edge - Level 69
  (157, 15700, 38, 21, NULL, 1, 69, NULL, NULL, NULL, 19),
  -- Typhlosion - Burn Up - Level 74
  (157, 15700, 682, 21, NULL, 1, 74, NULL, NULL, NULL, 20),
  -- Typhlosion - Eruption - Level 82
  (157, 15700, 284, 21, NULL, 1, 82, NULL, NULL, NULL, 21),
  -- Typhlosion - Focus Punch - TM01
  (157, 15700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Typhlosion - Roar - TM05
  (157, 15700, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 23),
  -- Typhlosion - Work Up - TM10
  (157, 15700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 24),
  -- Typhlosion - Sunny Day - TM11
  (157, 15700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 25),
  -- Typhlosion - Hyper Beam - TM15
  (157, 15700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Typhlosion - Protect - TM17
  (157, 15700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Typhlosion - Solar Beam - TM22
  (157, 15700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Typhlosion - Earthquake - TM26
  (157, 15700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 29),
  -- Typhlosion - Dig - TM28
  (157, 15700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Typhlosion - Brick Break - TM31
  (157, 15700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Typhlosion - Double Team - TM32
  (157, 15700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Typhlosion - Flamethrower - TM35
  (157, 15700, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 33),
  -- Typhlosion - Fire Blast - TM38
  (157, 15700, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 34),
  -- Typhlosion - Rock Tomb - TM39
  (157, 15700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Typhlosion - Aerial Ace - TM40
  (157, 15700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 36),
  -- Typhlosion - Facade - TM42
  (157, 15700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Typhlosion - Rest - TM44
  (157, 15700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Typhlosion - Attract - TM45
  (157, 15700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Typhlosion - Overheat - TM50
  (157, 15700, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 40),
  -- Typhlosion - Focus Blast - TM52
  (157, 15700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 41),
  -- Typhlosion - Fling - TM56
  (157, 15700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Typhlosion - Endure - TM58
  (157, 15700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Typhlosion - Will-O-Wisp - TM61
  (157, 15700, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 44),
  -- Typhlosion - Shadow Claw - TM65
  (157, 15700, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 45),
  -- Typhlosion - Giga Impact - TM68
  (157, 15700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 46),
  -- Typhlosion - Gyro Ball - TM74
  (157, 15700, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 47),
  -- Typhlosion - Rock Slide - TM80
  (157, 15700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 48),
  -- Typhlosion - Sleep Talk - TM82
  (157, 15700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Typhlosion - Bulldoze - TM83
  (157, 15700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 50),
  -- Typhlosion - Swagger - TM87
  (157, 15700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Typhlosion - Substitute - TM90
  (157, 15700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Typhlosion - Cut - TM93
  (157, 15700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 53),
  -- Typhlosion - Strength - TM96
  (157, 15700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Typhlosion - Rock Smash - TM98
  (157, 15700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 55),
  -- Typhlosion - Rock Climb - TM100
  (157, 15700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 56),
  -- Typhlosion - Covet - Egg
  (157, 15700, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Typhlosion - Crush Claw - Egg
  (157, 15700, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Typhlosion - Double-Edge - Egg
  (157, 15700, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Typhlosion - Double Kick - Egg
  (157, 15700, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Typhlosion - Extrasensory - Egg
  (157, 15700, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Typhlosion - Flare Blitz - Egg
  (157, 15700, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Typhlosion - Fury Swipes - Egg
  (157, 15700, 154, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Typhlosion - Howl - Egg
  (157, 15700, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Typhlosion - Nature Power - Egg
  (157, 15700, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Typhlosion - Quick Attack - Egg
  (157, 15700, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Typhlosion - Reversal - Egg
  (157, 15700, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Typhlosion - Thrash - Egg
  (157, 15700, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Totodile - Scratch - Starting Move
  (158, 15800, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Totodile - Leer - Starting Move
  (158, 15800, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Totodile - Water Gun - Level 6
  (158, 15800, 55, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Totodile - Mud-Slap - Level 8
  (158, 15800, 189, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Totodile - Bite - Level 13
  (158, 15800, 44, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Totodile - Scary Face - Level 15
  (158, 15800, 184, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Totodile - Ice Fang - Level 20
  (158, 15800, 423, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Totodile - Flail - Level 22
  (158, 15800, 175, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Totodile - Crunch - Level 27
  (158, 15800, 242, 21, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Totodile - Low Kick - Level 29
  (158, 15800, 67, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Totodile - Slash - Level 34
  (158, 15800, 163, 21, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Totodile - Screech - Level 36
  (158, 15800, 103, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Totodile - Thrash - Level 41
  (158, 15800, 37, 21, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Totodile - Aqua Tail - Level 43
  (158, 15800, 401, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Totodile - Superpower - Level 48
  (158, 15800, 276, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Totodile - Hydro Pump - Level 50
  (158, 15800, 56, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Totodile - Focus Punch - TM01
  (158, 15800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Totodile - Dragon Claw - TM02
  (158, 15800, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 18),
  -- Totodile - Water Pulse - TM03
  (158, 15800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Totodile - Hail - TM07
  (158, 15800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 20),
  -- Totodile - Work Up - TM10
  (158, 15800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 21),
  -- Totodile - Ice Beam - TM13
  (158, 15800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Totodile - Blizzard - TM14
  (158, 15800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Totodile - Protect - TM17
  (158, 15800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Totodile - Rain Dance - TM18
  (158, 15800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Totodile - Iron Tail - TM23
  (158, 15800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 26),
  -- Totodile - Dig - TM28
  (158, 15800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Totodile - Brick Break - TM31
  (158, 15800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Totodile - Double Team - TM32
  (158, 15800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Totodile - Rock Tomb - TM39
  (158, 15800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Totodile - Aerial Ace - TM40
  (158, 15800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Totodile - Facade - TM42
  (158, 15800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Totodile - Rest - TM44
  (158, 15800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Totodile - Attract - TM45
  (158, 15800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Totodile - Scald - TM49
  (158, 15800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 35),
  -- Totodile - Fling - TM56
  (158, 15800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Totodile - Endure - TM58
  (158, 15800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Totodile - Shadow Claw - TM65
  (158, 15800, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 38),
  -- Totodile - Swords Dance - TM75
  (158, 15800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 39),
  -- Totodile - Rock Slide - TM80
  (158, 15800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 40),
  -- Totodile - Sleep Talk - TM82
  (158, 15800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Totodile - Swagger - TM87
  (158, 15800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Totodile - Substitute - TM90
  (158, 15800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Totodile - Cut - TM93
  (158, 15800, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Totodile - Surf - TM95
  (158, 15800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 45),
  -- Totodile - Waterfall - TM99
  (158, 15800, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 46),
  -- Totodile - Ancient Power - Egg
  (158, 15800, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Totodile - Aqua Jet - Egg
  (158, 15800, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Totodile - Block - Egg
  (158, 15800, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Totodile - Crunch - Egg
  (158, 15800, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Totodile - Dragon Dance - Egg
  (158, 15800, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Totodile - Fake Tears - Egg
  (158, 15800, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Totodile - Flatter - Egg
  (158, 15800, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Totodile - Hydro Pump - Egg
  (158, 15800, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Totodile - Ice Punch - Egg
  (158, 15800, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Totodile - Metal Claw - Egg
  (158, 15800, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Totodile - Thrash - Egg
  (158, 15800, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Croconaw - Scratch - Starting Move
  (159, 15900, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Croconaw - Leer - Starting Move
  (159, 15900, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Croconaw - Water Gun - Starting Move
  (159, 15900, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Croconaw - Water Gun - Level 6
  (159, 15900, 55, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Croconaw - Mud-Slap - Level 8
  (159, 15900, 189, 21, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Croconaw - Bite - Level 13
  (159, 15900, 44, 21, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Croconaw - Scary Face - Level 15
  (159, 15900, 184, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Croconaw - Ice Fang - Level 21
  (159, 15900, 423, 21, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Croconaw - Flail - Level 24
  (159, 15900, 175, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Croconaw - Crunch - Level 30
  (159, 15900, 242, 21, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Croconaw - Low Kick - Level 33
  (159, 15900, 67, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Croconaw - Slash - Level 39
  (159, 15900, 163, 21, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Croconaw - Screech - Level 42
  (159, 15900, 103, 21, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Croconaw - Thrash - Level 48
  (159, 15900, 37, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Croconaw - Aqua Tail - Level 51
  (159, 15900, 401, 21, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Croconaw - Superpower - Level 57
  (159, 15900, 276, 21, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Croconaw - Hydro Pump - Level 60
  (159, 15900, 56, 21, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Croconaw - Focus Punch - TM01
  (159, 15900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Croconaw - Dragon Claw - TM02
  (159, 15900, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 19),
  -- Croconaw - Water Pulse - TM03
  (159, 15900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Croconaw - Roar - TM05
  (159, 15900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 21),
  -- Croconaw - Hail - TM07
  (159, 15900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 22),
  -- Croconaw - Work Up - TM10
  (159, 15900, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 23),
  -- Croconaw - Ice Beam - TM13
  (159, 15900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 24),
  -- Croconaw - Blizzard - TM14
  (159, 15900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 25),
  -- Croconaw - Protect - TM17
  (159, 15900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Croconaw - Rain Dance - TM18
  (159, 15900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Croconaw - Iron Tail - TM23
  (159, 15900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 28),
  -- Croconaw - Dig - TM28
  (159, 15900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Croconaw - Brick Break - TM31
  (159, 15900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 30),
  -- Croconaw - Double Team - TM32
  (159, 15900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Croconaw - Rock Tomb - TM39
  (159, 15900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Croconaw - Aerial Ace - TM40
  (159, 15900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 33),
  -- Croconaw - Facade - TM42
  (159, 15900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Croconaw - Rest - TM44
  (159, 15900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Croconaw - Attract - TM45
  (159, 15900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Croconaw - Scald - TM49
  (159, 15900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 37),
  -- Croconaw - Fling - TM56
  (159, 15900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Croconaw - Endure - TM58
  (159, 15900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Croconaw - Shadow Claw - TM65
  (159, 15900, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 40),
  -- Croconaw - Swords Dance - TM75
  (159, 15900, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 41),
  -- Croconaw - Rock Slide - TM80
  (159, 15900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 42),
  -- Croconaw - Sleep Talk - TM82
  (159, 15900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Croconaw - Swagger - TM87
  (159, 15900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Croconaw - Substitute - TM90
  (159, 15900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Croconaw - Cut - TM93
  (159, 15900, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 46),
  -- Croconaw - Surf - TM95
  (159, 15900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 47),
  -- Croconaw - Strength - TM96
  (159, 15900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Croconaw - Rock Smash - TM98
  (159, 15900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Croconaw - Waterfall - TM99
  (159, 15900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 50),
  -- Croconaw - Ancient Power - Egg
  (159, 15900, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Croconaw - Aqua Jet - Egg
  (159, 15900, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Croconaw - Block - Egg
  (159, 15900, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Croconaw - Crunch - Egg
  (159, 15900, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Croconaw - Dragon Dance - Egg
  (159, 15900, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Croconaw - Fake Tears - Egg
  (159, 15900, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Croconaw - Flatter - Egg
  (159, 15900, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Croconaw - Hydro Pump - Egg
  (159, 15900, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Croconaw - Ice Punch - Egg
  (159, 15900, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Croconaw - Metal Claw - Egg
  (159, 15900, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Croconaw - Thrash - Egg
  (159, 15900, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Feraligatr - Agility - Starting Move
  (160, 16000, 97, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Feraligatr - Scratch - Starting Move
  (160, 16000, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Feraligatr - Leer - Starting Move
  (160, 16000, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Feraligatr - Water Gun - Starting Move
  (160, 16000, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Feraligatr - Mud-Slap - Starting Move
  (160, 16000, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Feraligatr - Water Gun - Level 6
  (160, 16000, 55, 21, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Feraligatr - Mud-Slap - Level 8
  (160, 16000, 189, 21, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Feraligatr - Bite - Level 13
  (160, 16000, 44, 21, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Feraligatr - Scary Face - Level 15
  (160, 16000, 184, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Feraligatr - Ice Fang - Level 21
  (160, 16000, 423, 21, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Feraligatr - Flail - Level 24
  (160, 16000, 175, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Feraligatr - Crunch - Level 32
  (160, 16000, 242, 21, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Feraligatr - Low Kick - Level 37
  (160, 16000, 67, 21, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Feraligatr - Slash - Level 45
  (160, 16000, 163, 21, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Feraligatr - Screech - Level 50
  (160, 16000, 103, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Feraligatr - Thrash - Level 58
  (160, 16000, 37, 21, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Feraligatr - Aqua Tail - Level 63
  (160, 16000, 401, 21, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Feraligatr - Superpower - Level 71
  (160, 16000, 276, 21, NULL, 1, 71, NULL, NULL, NULL, 18),
  -- Feraligatr - Hydro Pump - Level 76
  (160, 16000, 56, 21, NULL, 1, 76, NULL, NULL, NULL, 19),
  -- Feraligatr - Focus Punch - TM01
  (160, 16000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Feraligatr - Dragon Claw - TM02
  (160, 16000, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 21),
  -- Feraligatr - Water Pulse - TM03
  (160, 16000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 22),
  -- Feraligatr - Roar - TM05
  (160, 16000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 23),
  -- Feraligatr - Hail - TM07
  (160, 16000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 24),
  -- Feraligatr - Work Up - TM10
  (160, 16000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 25),
  -- Feraligatr - Ice Beam - TM13
  (160, 16000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 26),
  -- Feraligatr - Blizzard - TM14
  (160, 16000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 27),
  -- Feraligatr - Hyper Beam - TM15
  (160, 16000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Feraligatr - Protect - TM17
  (160, 16000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Feraligatr - Rain Dance - TM18
  (160, 16000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 30),
  -- Feraligatr - Iron Tail - TM23
  (160, 16000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 31),
  -- Feraligatr - Earthquake - TM26
  (160, 16000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 32),
  -- Feraligatr - Dig - TM28
  (160, 16000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 33),
  -- Feraligatr - Brick Break - TM31
  (160, 16000, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Feraligatr - Double Team - TM32
  (160, 16000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Feraligatr - Rock Tomb - TM39
  (160, 16000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 36),
  -- Feraligatr - Aerial Ace - TM40
  (160, 16000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 37),
  -- Feraligatr - Facade - TM42
  (160, 16000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 38),
  -- Feraligatr - Rest - TM44
  (160, 16000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 39),
  -- Feraligatr - Attract - TM45
  (160, 16000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 40),
  -- Feraligatr - Scald - TM49
  (160, 16000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 41),
  -- Feraligatr - Focus Blast - TM52
  (160, 16000, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 42),
  -- Feraligatr - Fling - TM56
  (160, 16000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 43),
  -- Feraligatr - Endure - TM58
  (160, 16000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 44),
  -- Feraligatr - Dragon Pulse - TM59
  (160, 16000, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 45),
  -- Feraligatr - Shadow Claw - TM65
  (160, 16000, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 46),
  -- Feraligatr - Giga Impact - TM68
  (160, 16000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Feraligatr - Avalanche - TM72
  (160, 16000, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 48),
  -- Feraligatr - Swords Dance - TM75
  (160, 16000, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 49),
  -- Feraligatr - Rock Slide - TM80
  (160, 16000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 50),
  -- Feraligatr - Sleep Talk - TM82
  (160, 16000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 51),
  -- Feraligatr - Bulldoze - TM83
  (160, 16000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 52),
  -- Feraligatr - Swagger - TM87
  (160, 16000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 53),
  -- Feraligatr - Substitute - TM90
  (160, 16000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 54),
  -- Feraligatr - Cut - TM93
  (160, 16000, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 55),
  -- Feraligatr - Surf - TM95
  (160, 16000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 56),
  -- Feraligatr - Strength - TM96
  (160, 16000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 57),
  -- Feraligatr - Rock Smash - TM98
  (160, 16000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 58),
  -- Feraligatr - Waterfall - TM99
  (160, 16000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 59),
  -- Feraligatr - Rock Climb - TM100
  (160, 16000, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 60),
  -- Feraligatr - Ancient Power - Egg
  (160, 16000, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Feraligatr - Aqua Jet - Egg
  (160, 16000, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Feraligatr - Block - Egg
  (160, 16000, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Feraligatr - Crunch - Egg
  (160, 16000, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Feraligatr - Dragon Dance - Egg
  (160, 16000, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Feraligatr - Fake Tears - Egg
  (160, 16000, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Feraligatr - Flatter - Egg
  (160, 16000, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Feraligatr - Hydro Pump - Egg
  (160, 16000, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Feraligatr - Ice Punch - Egg
  (160, 16000, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Feraligatr - Metal Claw - Egg
  (160, 16000, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Feraligatr - Thrash - Egg
  (160, 16000, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Sentret - Scratch - Starting Move
  (161, 16100, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Sentret - Growl - Starting Move
  (161, 16100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Sentret - Defense Curl - Level 4
  (161, 16100, 111, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sentret - Quick Attack - Level 7
  (161, 16100, 98, 21, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Sentret - Fury Swipes - Level 13
  (161, 16100, 154, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Sentret - Helping Hand - Level 16
  (161, 16100, 270, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Sentret - Follow Me - Level 19
  (161, 16100, 266, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Sentret - Slam - Level 25
  (161, 16100, 21, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sentret - Rest - Level 28
  (161, 16100, 156, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sentret - Sucker Punch - Level 31
  (161, 16100, 389, 21, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Sentret - Amnesia - Level 36
  (161, 16100, 133, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Sentret - Baton Pass - Level 39
  (161, 16100, 226, 21, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Sentret - Reversal - Level 42
  (161, 16100, 179, 21, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Sentret - Hyper Voice - Level 47
  (161, 16100, 304, 21, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Sentret - Focus Punch - TM01
  (161, 16100, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Sentret - Water Pulse - TM03
  (161, 16100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Sentret - Work Up - TM10
  (161, 16100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Sentret - Sunny Day - TM11
  (161, 16100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Sentret - Ice Beam - TM13
  (161, 16100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Sentret - Blizzard - TM14
  (161, 16100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Sentret - Protect - TM17
  (161, 16100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Sentret - Rain Dance - TM18
  (161, 16100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Sentret - Solar Beam - TM22
  (161, 16100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Sentret - Iron Tail - TM23
  (161, 16100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Sentret - Thunderbolt - TM24
  (161, 16100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Sentret - Dig - TM28
  (161, 16100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Sentret - Shadow Ball - TM30
  (161, 16100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Sentret - Brick Break - TM31
  (161, 16100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Sentret - Double Team - TM32
  (161, 16100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Sentret - Shock Wave - TM34
  (161, 16100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Sentret - Flamethrower - TM35
  (161, 16100, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 31),
  -- Sentret - Facade - TM42
  (161, 16100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Sentret - Rest - TM44
  (161, 16100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Sentret - Attract - TM45
  (161, 16100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Sentret - Thief - TM46
  (161, 16100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Sentret - Fling - TM56
  (161, 16100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Sentret - Charge Beam - TM57
  (161, 16100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 37),
  -- Sentret - Endure - TM58
  (161, 16100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Sentret - Shadow Claw - TM65
  (161, 16100, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 39),
  -- Sentret - Sleep Talk - TM82
  (161, 16100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Sentret - Grass Knot - TM86
  (161, 16100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 41),
  -- Sentret - Swagger - TM87
  (161, 16100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Sentret - U-turn - TM89
  (161, 16100, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 43),
  -- Sentret - Substitute - TM90
  (161, 16100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Sentret - Cut - TM93
  (161, 16100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 45),
  -- Sentret - Surf - TM95
  (161, 16100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 46),
  -- Sentret - Baby-Doll Eyes - Egg
  (161, 16100, 608, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sentret - Charm - Egg
  (161, 16100, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sentret - Covet - Egg
  (161, 16100, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sentret - Double-Edge - Egg
  (161, 16100, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sentret - Focus Energy - Egg
  (161, 16100, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sentret - Last Resort - Egg
  (161, 16100, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sentret - Reversal - Egg
  (161, 16100, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sentret - Slash - Egg
  (161, 16100, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sentret - Trick - Egg
  (161, 16100, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Furret - Agility - Starting Move
  (162, 16200, 97, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Furret - Coil - Starting Move
  (162, 16200, 489, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Furret - Scratch - Starting Move
  (162, 16200, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Furret - Defense Curl - Starting Move
  (162, 16200, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Furret - Quick Attack - Starting Move
  (162, 16200, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Furret - Growl - Starting Move
  (162, 16200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Furret - Agility - Evolution
  (162, 16200, 97, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Furret - Defense Curl - Level 4
  (162, 16200, 111, 21, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Furret - Quick Attack - Level 7
  (162, 16200, 98, 21, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Furret - Fury Swipes - Level 13
  (162, 16200, 154, 21, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Furret - Helping Hand - Level 17
  (162, 16200, 270, 21, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Furret - Follow Me - Level 21
  (162, 16200, 266, 21, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Furret - Slam - Level 28
  (162, 16200, 21, 21, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Furret - Rest - Level 32
  (162, 16200, 156, 21, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Furret - Sucker Punch - Level 36
  (162, 16200, 389, 21, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Furret - Amnesia - Level 42
  (162, 16200, 133, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Furret - Baton Pass - Level 46
  (162, 16200, 226, 21, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Furret - Reversal - Level 50
  (162, 16200, 179, 21, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Furret - Hyper Voice - Level 56
  (162, 16200, 304, 21, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Furret - Focus Punch - TM01
  (162, 16200, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Furret - Water Pulse - TM03
  (162, 16200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 21),
  -- Furret - Work Up - TM10
  (162, 16200, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Furret - Sunny Day - TM11
  (162, 16200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Furret - Ice Beam - TM13
  (162, 16200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 24),
  -- Furret - Blizzard - TM14
  (162, 16200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 25),
  -- Furret - Hyper Beam - TM15
  (162, 16200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Furret - Protect - TM17
  (162, 16200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Furret - Rain Dance - TM18
  (162, 16200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Furret - Solar Beam - TM22
  (162, 16200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Furret - Iron Tail - TM23
  (162, 16200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Furret - Thunderbolt - TM24
  (162, 16200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 31),
  -- Furret - Thunder - TM25
  (162, 16200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 32),
  -- Furret - Dig - TM28
  (162, 16200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 33),
  -- Furret - Shadow Ball - TM30
  (162, 16200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 34),
  -- Furret - Brick Break - TM31
  (162, 16200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 35),
  -- Furret - Double Team - TM32
  (162, 16200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 36),
  -- Furret - Shock Wave - TM34
  (162, 16200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 37),
  -- Furret - Flamethrower - TM35
  (162, 16200, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 38),
  -- Furret - Facade - TM42
  (162, 16200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Furret - Rest - TM44
  (162, 16200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Furret - Attract - TM45
  (162, 16200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 41),
  -- Furret - Thief - TM46
  (162, 16200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 42),
  -- Furret - Focus Blast - TM52
  (162, 16200, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 43),
  -- Furret - Fling - TM56
  (162, 16200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 44),
  -- Furret - Charge Beam - TM57
  (162, 16200, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 45),
  -- Furret - Endure - TM58
  (162, 16200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 46),
  -- Furret - Shadow Claw - TM65
  (162, 16200, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 47),
  -- Furret - Giga Impact - TM68
  (162, 16200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 48),
  -- Furret - Sleep Talk - TM82
  (162, 16200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Furret - Grass Knot - TM86
  (162, 16200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 50),
  -- Furret - Swagger - TM87
  (162, 16200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Furret - U-turn - TM89
  (162, 16200, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 52),
  -- Furret - Substitute - TM90
  (162, 16200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Furret - Cut - TM93
  (162, 16200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 54),
  -- Furret - Surf - TM95
  (162, 16200, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 55),
  -- Furret - Strength - TM96
  (162, 16200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 56),
  -- Furret - Rock Smash - TM98
  (162, 16200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 57),
  -- Furret - Baby-Doll Eyes - Egg
  (162, 16200, 608, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Furret - Charm - Egg
  (162, 16200, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Furret - Covet - Egg
  (162, 16200, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Furret - Double-Edge - Egg
  (162, 16200, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Furret - Focus Energy - Egg
  (162, 16200, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Furret - Last Resort - Egg
  (162, 16200, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Furret - Reversal - Egg
  (162, 16200, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Furret - Slash - Egg
  (162, 16200, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Furret - Trick - Egg
  (162, 16200, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Hoothoot - Peck - Starting Move
  (163, 16300, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Hoothoot - Growl - Starting Move
  (163, 16300, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Hoothoot - Tackle - Level 3
  (163, 16300, 33, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Hoothoot - Echoed Voice - Level 6
  (163, 16300, 497, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Hoothoot - Confusion - Level 9
  (163, 16300, 93, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Hoothoot - Reflect - Level 12
  (163, 16300, 115, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Hoothoot - Psycho Shift - Level 15
  (163, 16300, 375, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Hoothoot - Air Slash - Level 18
  (163, 16300, 403, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Hoothoot - Extrasensory - Level 21
  (163, 16300, 326, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Hoothoot - Take Down - Level 24
  (163, 16300, 36, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Hoothoot - Uproar - Level 27
  (163, 16300, 253, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Hoothoot - Roost - Level 30
  (163, 16300, 355, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Hoothoot - Moonblast - Level 33
  (163, 16300, 585, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Hoothoot - Hypnosis - Level 36
  (163, 16300, 95, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Hoothoot - Dream Eater - Level 39
  (163, 16300, 138, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Hoothoot - Calm Mind - TM04
  (163, 16300, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Hoothoot - Work Up - TM10
  (163, 16300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Hoothoot - Sunny Day - TM11
  (163, 16300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Hoothoot - Protect - TM17
  (163, 16300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Hoothoot - Rain Dance - TM18
  (163, 16300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Hoothoot - Psychic - TM29
  (163, 16300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 21),
  -- Hoothoot - Shadow Ball - TM30
  (163, 16300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 22),
  -- Hoothoot - Double Team - TM32
  (163, 16300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Hoothoot - Reflect - TM33
  (163, 16300, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 24),
  -- Hoothoot - Aerial Ace - TM40
  (163, 16300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 25),
  -- Hoothoot - Facade - TM42
  (163, 16300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Hoothoot - Rest - TM44
  (163, 16300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Hoothoot - Attract - TM45
  (163, 16300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Hoothoot - Thief - TM46
  (163, 16300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 29),
  -- Hoothoot - Steel Wing - TM47
  (163, 16300, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 30),
  -- Hoothoot - Roost - TM51
  (163, 16300, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 31),
  -- Hoothoot - Endure - TM58
  (163, 16300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Hoothoot - Nasty Plot - TM63
  (163, 16300, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 33),
  -- Hoothoot - Recycle - TM67
  (163, 16300, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 34),
  -- Hoothoot - Psych Up - TM77
  (163, 16300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 35),
  -- Hoothoot - Sleep Talk - TM82
  (163, 16300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 36),
  -- Hoothoot - Dream Eater - TM85
  (163, 16300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 37),
  -- Hoothoot - Swagger - TM87
  (163, 16300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Hoothoot - Pluck - TM88
  (163, 16300, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 39),
  -- Hoothoot - Substitute - TM90
  (163, 16300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Hoothoot - Fly - TM94
  (163, 16300, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 41),
  -- Hoothoot - Defog - TM97
  (163, 16300, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 42),
  -- Hoothoot - Agility - Egg
  (163, 16300, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Hoothoot - Feather Dance - Egg
  (163, 16300, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Hoothoot - Hurricane - Egg
  (163, 16300, 542, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hoothoot - Mean Look - Egg
  (163, 16300, 212, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hoothoot - Night Shade - Egg
  (163, 16300, 101, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hoothoot - Sky Attack - Egg
  (163, 16300, 143, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hoothoot - Supersonic - Egg
  (163, 16300, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hoothoot - Whirlwind - Egg
  (163, 16300, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hoothoot - Wing Attack - Egg
  (163, 16300, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Noctowl - Sky Attack - Starting Move
  (164, 16400, 143, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Noctowl - Peck - Starting Move
  (164, 16400, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Noctowl - Growl - Starting Move
  (164, 16400, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Noctowl - Tackle - Starting Move
  (164, 16400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Noctowl - Echoed Voice - Starting Move
  (164, 16400, 497, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Noctowl - Confusion - Level 9
  (164, 16400, 93, 21, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Noctowl - Reflect - Level 12
  (164, 16400, 115, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Noctowl - Psycho Shift - Level 15
  (164, 16400, 375, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Noctowl - Air Slash - Level 18
  (164, 16400, 403, 21, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Noctowl - Extrasensory - Level 23
  (164, 16400, 326, 21, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Noctowl - Take Down - Level 28
  (164, 16400, 36, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Noctowl - Uproar - Level 33
  (164, 16400, 253, 21, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Noctowl - Roost - Level 38
  (164, 16400, 355, 21, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Noctowl - Moonblast - Level 43
  (164, 16400, 585, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Noctowl - Hypnosis - Level 48
  (164, 16400, 95, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Noctowl - Dream Eater - Level 53
  (164, 16400, 138, 21, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Noctowl - Calm Mind - TM04
  (164, 16400, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 17),
  -- Noctowl - Work Up - TM10
  (164, 16400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Noctowl - Sunny Day - TM11
  (164, 16400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Noctowl - Hyper Beam - TM15
  (164, 16400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Noctowl - Protect - TM17
  (164, 16400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Noctowl - Rain Dance - TM18
  (164, 16400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Noctowl - Psychic - TM29
  (164, 16400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 23),
  -- Noctowl - Shadow Ball - TM30
  (164, 16400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Noctowl - Double Team - TM32
  (164, 16400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Noctowl - Reflect - TM33
  (164, 16400, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 26),
  -- Noctowl - Aerial Ace - TM40
  (164, 16400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 27),
  -- Noctowl - Facade - TM42
  (164, 16400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Noctowl - Rest - TM44
  (164, 16400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Noctowl - Attract - TM45
  (164, 16400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Noctowl - Thief - TM46
  (164, 16400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 31),
  -- Noctowl - Steel Wing - TM47
  (164, 16400, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 32),
  -- Noctowl - Roost - TM51
  (164, 16400, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 33),
  -- Noctowl - Endure - TM58
  (164, 16400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Noctowl - Nasty Plot - TM63
  (164, 16400, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 35),
  -- Noctowl - Recycle - TM67
  (164, 16400, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 36),
  -- Noctowl - Giga Impact - TM68
  (164, 16400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Noctowl - Psych Up - TM77
  (164, 16400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 38),
  -- Noctowl - Sleep Talk - TM82
  (164, 16400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Noctowl - Dream Eater - TM85
  (164, 16400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 40),
  -- Noctowl - Swagger - TM87
  (164, 16400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Noctowl - Pluck - TM88
  (164, 16400, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 42),
  -- Noctowl - Substitute - TM90
  (164, 16400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Noctowl - Fly - TM94
  (164, 16400, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 44),
  -- Noctowl - Defog - TM97
  (164, 16400, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 45),
  -- Noctowl - Agility - Egg
  (164, 16400, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Noctowl - Feather Dance - Egg
  (164, 16400, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Noctowl - Hurricane - Egg
  (164, 16400, 542, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Noctowl - Mean Look - Egg
  (164, 16400, 212, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Noctowl - Night Shade - Egg
  (164, 16400, 101, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Noctowl - Sky Attack - Egg
  (164, 16400, 143, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Noctowl - Supersonic - Egg
  (164, 16400, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Noctowl - Whirlwind - Egg
  (164, 16400, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Noctowl - Wing Attack - Egg
  (164, 16400, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ledyba - Tackle - Starting Move
  (165, 16500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ledyba - Supersonic - Level 5
  (165, 16500, 48, 21, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Ledyba - Swift - Level 8
  (165, 16500, 129, 21, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Ledyba - Light Screen - Level 12
  (165, 16500, 113, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Ledyba - Reflect - Level 12
  (165, 16500, 115, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Ledyba - Safeguard - Level 12
  (165, 16500, 219, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ledyba - Mach Punch - Level 15
  (165, 16500, 183, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ledyba - Roost - Level 19
  (165, 16500, 355, 21, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Ledyba - Struggle Bug - Level 22
  (165, 16500, 522, 21, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Ledyba - Baton Pass - Level 26
  (165, 16500, 226, 21, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Ledyba - Agility - Level 29
  (165, 16500, 97, 21, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Ledyba - Bug Buzz - Level 33
  (165, 16500, 405, 21, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Ledyba - Air Slash - Level 36
  (165, 16500, 403, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Ledyba - Double-Edge - Level 40
  (165, 16500, 38, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Ledyba - Focus Punch - TM01
  (165, 16500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Ledyba - Sunny Day - TM11
  (165, 16500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Ledyba - Light Screen - TM16
  (165, 16500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 17),
  -- Ledyba - Protect - TM17
  (165, 16500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Ledyba - Giga Drain - TM19
  (165, 16500, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 19),
  -- Ledyba - Safeguard - TM20
  (165, 16500, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 20),
  -- Ledyba - Solar Beam - TM22
  (165, 16500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 21),
  -- Ledyba - Dig - TM28
  (165, 16500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Ledyba - Brick Break - TM31
  (165, 16500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 23),
  -- Ledyba - Double Team - TM32
  (165, 16500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Ledyba - Reflect - TM33
  (165, 16500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 25),
  -- Ledyba - Aerial Ace - TM40
  (165, 16500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 26),
  -- Ledyba - Facade - TM42
  (165, 16500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Ledyba - Rest - TM44
  (165, 16500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Ledyba - Attract - TM45
  (165, 16500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Ledyba - Thief - TM46
  (165, 16500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Ledyba - Roost - TM51
  (165, 16500, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 31),
  -- Ledyba - Fling - TM56
  (165, 16500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 32),
  -- Ledyba - Endure - TM58
  (165, 16500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Ledyba - Drain Punch - TM60
  (165, 16500, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 34),
  -- Ledyba - Bug Buzz - TM62
  (165, 16500, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 35),
  -- Ledyba - Flash - TM70
  (165, 16500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 36),
  -- Ledyba - Swords Dance - TM75
  (165, 16500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 37),
  -- Ledyba - Sleep Talk - TM82
  (165, 16500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Ledyba - Swagger - TM87
  (165, 16500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Ledyba - U-turn - TM89
  (165, 16500, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 40),
  -- Ledyba - Substitute - TM90
  (165, 16500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Ledyba - Bug Bite - Egg
  (165, 16500, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ledyba - Counter - Egg
  (165, 16500, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ledyba - Encore - Egg
  (165, 16500, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ledyba - Knock Off - Egg
  (165, 16500, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ledyba - Psybeam - Egg
  (165, 16500, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ledyba - Screech - Egg
  (165, 16500, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ledyba - Tailwind - Egg
  (165, 16500, 366, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ledian - Tackle - Starting Move
  (166, 16600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ledian - Supersonic - Starting Move
  (166, 16600, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ledian - Swift - Starting Move
  (166, 16600, 129, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Ledian - Supersonic - Level 5
  (166, 16600, 48, 21, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Ledian - Swift - Level 8
  (166, 16600, 129, 21, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Ledian - Light Screen - Level 12
  (166, 16600, 113, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ledian - Reflect - Level 12
  (166, 16600, 115, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Ledian - Safeguard - Level 12
  (166, 16600, 219, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Ledian - Mach Punch - Level 15
  (166, 16600, 183, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Ledian - Roost - Level 20
  (166, 16600, 355, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Ledian - Struggle Bug - Level 24
  (166, 16600, 522, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Ledian - Baton Pass - Level 29
  (166, 16600, 226, 21, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Ledian - Agility - Level 33
  (166, 16600, 97, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Ledian - Bug Buzz - Level 38
  (166, 16600, 405, 21, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Ledian - Air Slash - Level 42
  (166, 16600, 403, 21, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Ledian - Double-Edge - Level 47
  (166, 16600, 38, 21, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Ledian - Focus Punch - TM01
  (166, 16600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Ledian - Sunny Day - TM11
  (166, 16600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Ledian - Hyper Beam - TM15
  (166, 16600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Ledian - Light Screen - TM16
  (166, 16600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Ledian - Protect - TM17
  (166, 16600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Ledian - Giga Drain - TM19
  (166, 16600, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 22),
  -- Ledian - Safeguard - TM20
  (166, 16600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Ledian - Solar Beam - TM22
  (166, 16600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Ledian - Dig - TM28
  (166, 16600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Ledian - Brick Break - TM31
  (166, 16600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Ledian - Double Team - TM32
  (166, 16600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Ledian - Reflect - TM33
  (166, 16600, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Ledian - Aerial Ace - TM40
  (166, 16600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Ledian - Facade - TM42
  (166, 16600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Ledian - Rest - TM44
  (166, 16600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Ledian - Attract - TM45
  (166, 16600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Ledian - Thief - TM46
  (166, 16600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Ledian - Roost - TM51
  (166, 16600, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 34),
  -- Ledian - Focus Blast - TM52
  (166, 16600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 35),
  -- Ledian - Fling - TM56
  (166, 16600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Ledian - Endure - TM58
  (166, 16600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Ledian - Drain Punch - TM60
  (166, 16600, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 38),
  -- Ledian - Bug Buzz - TM62
  (166, 16600, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 39),
  -- Ledian - Giga Impact - TM68
  (166, 16600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Ledian - Flash - TM70
  (166, 16600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 41),
  -- Ledian - Swords Dance - TM75
  (166, 16600, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 42),
  -- Ledian - Sleep Talk - TM82
  (166, 16600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Ledian - Swagger - TM87
  (166, 16600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Ledian - U-turn - TM89
  (166, 16600, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 45),
  -- Ledian - Substitute - TM90
  (166, 16600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Ledian - Strength - TM96
  (166, 16600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Ledian - Rock Smash - TM98
  (166, 16600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Ledian - Bug Bite - Egg
  (166, 16600, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ledian - Counter - Egg
  (166, 16600, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ledian - Encore - Egg
  (166, 16600, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ledian - Knock Off - Egg
  (166, 16600, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ledian - Psybeam - Egg
  (166, 16600, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ledian - Screech - Egg
  (166, 16600, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ledian - Tailwind - Egg
  (166, 16600, 366, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spinarak - Poison Sting - Starting Move
  (167, 16700, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Spinarak - String Shot - Starting Move
  (167, 16700, 81, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Spinarak - Absorb - Level 5
  (167, 16700, 71, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Spinarak - Infestation - Level 8
  (167, 16700, 611, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Spinarak - Scary Face - Level 12
  (167, 16700, 184, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Spinarak - Night Shade - Level 15
  (167, 16700, 101, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Spinarak - Shadow Sneak - Level 19
  (167, 16700, 425, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Spinarak - Fury Swipes - Level 22
  (167, 16700, 154, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Spinarak - Sucker Punch - Level 26
  (167, 16700, 389, 21, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Spinarak - Leech Life - Level 29
  (167, 16700, 141, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Spinarak - Agility - Level 33
  (167, 16700, 97, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Spinarak - Pin Missile - Level 36
  (167, 16700, 42, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Spinarak - Psychic - Level 40
  (167, 16700, 94, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Spinarak - Poison Jab - Level 43
  (167, 16700, 398, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Spinarak - Cross Poison - Level 47
  (167, 16700, 440, 21, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Spinarak - Sticky Web - Level 50
  (167, 16700, 564, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Spinarak - Toxic Thread - Level 54
  (167, 16700, 672, 21, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Spinarak - Sunny Day - TM11
  (167, 16700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Spinarak - Protect - TM17
  (167, 16700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Spinarak - Giga Drain - TM19
  (167, 16700, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 20),
  -- Spinarak - Solar Beam - TM22
  (167, 16700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 21),
  -- Spinarak - Dig - TM28
  (167, 16700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Spinarak - Psychic - TM29
  (167, 16700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 23),
  -- Spinarak - Double Team - TM32
  (167, 16700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Spinarak - Sludge Bomb - TM36
  (167, 16700, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 25),
  -- Spinarak - Facade - TM42
  (167, 16700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Spinarak - Rest - TM44
  (167, 16700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Spinarak - Attract - TM45
  (167, 16700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Spinarak - Thief - TM46
  (167, 16700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 29),
  -- Spinarak - Endure - TM58
  (167, 16700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Spinarak - Bug Buzz - TM62
  (167, 16700, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 31),
  -- Spinarak - Flash - TM70
  (167, 16700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Spinarak - X-Scissor - TM81
  (167, 16700, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 33),
  -- Spinarak - Sleep Talk - TM82
  (167, 16700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Spinarak - Poison Jab - TM84
  (167, 16700, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 35),
  -- Spinarak - Swagger - TM87
  (167, 16700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Spinarak - Substitute - TM90
  (167, 16700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Spinarak - Baton Pass - Egg
  (167, 16700, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Spinarak - Disable - Egg
  (167, 16700, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Spinarak - Lunge - Egg
  (167, 16700, 679, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Spinarak - Megahorn - Egg
  (167, 16700, 224, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Spinarak - Night Slash - Egg
  (167, 16700, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Spinarak - Psybeam - Egg
  (167, 16700, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spinarak - Rage Powder - Egg
  (167, 16700, 476, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spinarak - Toxic Spikes - Egg
  (167, 16700, 390, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ariados - Swords Dance - Starting Move
  (168, 16800, 14, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ariados - Focus Energy - Starting Move
  (168, 16800, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ariados - Venom Drench - Starting Move
  (168, 16800, 599, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Ariados - Fell Stinger - Starting Move
  (168, 16800, 565, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Ariados - Bug Bite - Starting Move
  (168, 16800, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Ariados - Poison Sting - Starting Move
  (168, 16800, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Ariados - String Shot - Starting Move
  (168, 16800, 81, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Ariados - Absorb - Starting Move
  (168, 16800, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Ariados - Swords Dance - Evolution
  (168, 16800, 14, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Ariados - Absorb - Level 5
  (168, 16800, 71, 21, NULL, 1, 5, NULL, NULL, NULL, 10),
  -- Ariados - Infestation - Level 8
  (168, 16800, 611, 21, NULL, 1, 8, NULL, NULL, NULL, 11),
  -- Ariados - Scary Face - Level 12
  (168, 16800, 184, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Ariados - Night Shade - Level 15
  (168, 16800, 101, 21, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Ariados - Shadow Sneak - Level 19
  (168, 16800, 425, 21, NULL, 1, 19, NULL, NULL, NULL, 14),
  -- Ariados - Fury Swipes - Level 23
  (168, 16800, 154, 21, NULL, 1, 23, NULL, NULL, NULL, 15),
  -- Ariados - Sucker Punch - Level 28
  (168, 16800, 389, 21, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Ariados - Leech Life - Level 32
  (168, 16800, 141, 21, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Ariados - Agility - Level 37
  (168, 16800, 97, 21, NULL, 1, 37, NULL, NULL, NULL, 18),
  -- Ariados - Pin Missile - Level 41
  (168, 16800, 42, 21, NULL, 1, 41, NULL, NULL, NULL, 19),
  -- Ariados - Psychic - Level 46
  (168, 16800, 94, 21, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Ariados - Poison Jab - Level 50
  (168, 16800, 398, 21, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Ariados - Cross Poison - Level 55
  (168, 16800, 440, 21, NULL, 1, 55, NULL, NULL, NULL, 22),
  -- Ariados - Sticky Web - Level 58
  (168, 16800, 564, 21, NULL, 1, 58, NULL, NULL, NULL, 23),
  -- Ariados - Toxic Thread - Level 63
  (168, 16800, 672, 21, NULL, 1, 63, NULL, NULL, NULL, 24),
  -- Ariados - Sunny Day - TM11
  (168, 16800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 25),
  -- Ariados - Hyper Beam - TM15
  (168, 16800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Ariados - Protect - TM17
  (168, 16800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Ariados - Giga Drain - TM19
  (168, 16800, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 28),
  -- Ariados - Solar Beam - TM22
  (168, 16800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Ariados - Dig - TM28
  (168, 16800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Ariados - Psychic - TM29
  (168, 16800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 31),
  -- Ariados - Double Team - TM32
  (168, 16800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Ariados - Sludge Bomb - TM36
  (168, 16800, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 33),
  -- Ariados - Facade - TM42
  (168, 16800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Ariados - Rest - TM44
  (168, 16800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Ariados - Attract - TM45
  (168, 16800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Ariados - Thief - TM46
  (168, 16800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 37),
  -- Ariados - Endure - TM58
  (168, 16800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Ariados - Bug Buzz - TM62
  (168, 16800, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 39),
  -- Ariados - Giga Impact - TM68
  (168, 16800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Ariados - Flash - TM70
  (168, 16800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 41),
  -- Ariados - Swords Dance - TM75
  (168, 16800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 42),
  -- Ariados - X-Scissor - TM81
  (168, 16800, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 43),
  -- Ariados - Sleep Talk - TM82
  (168, 16800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Ariados - Poison Jab - TM84
  (168, 16800, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 45),
  -- Ariados - Swagger - TM87
  (168, 16800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Ariados - Substitute - TM90
  (168, 16800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Ariados - Baton Pass - Egg
  (168, 16800, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ariados - Disable - Egg
  (168, 16800, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ariados - Lunge - Egg
  (168, 16800, 679, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ariados - Megahorn - Egg
  (168, 16800, 224, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ariados - Night Slash - Egg
  (168, 16800, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ariados - Psybeam - Egg
  (168, 16800, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ariados - Rage Powder - Egg
  (168, 16800, 476, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ariados - Toxic Spikes - Egg
  (168, 16800, 390, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Crobat - Cross Poison - Starting Move
  (169, 16900, 440, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Crobat - Tailwind - Starting Move
  (169, 16900, 366, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Crobat - Toxic - Starting Move
  (169, 16900, 92, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Crobat - Screech - Starting Move
  (169, 16900, 103, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Crobat - Absorb - Starting Move
  (169, 16900, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Crobat - Supersonic - Starting Move
  (169, 16900, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Crobat - Astonish - Starting Move
  (169, 16900, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Crobat - Mean Look - Starting Move
  (169, 16900, 212, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Crobat - Cross Poison - Evolution
  (169, 16900, 440, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Crobat - Poison Fang - Level 15
  (169, 16900, 305, 21, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Crobat - Quick Guard - Level 20
  (169, 16900, 501, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Crobat - Air Cutter - Level 27
  (169, 16900, 314, 21, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Crobat - Bite - Level 34
  (169, 16900, 44, 21, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Crobat - Haze - Level 41
  (169, 16900, 114, 21, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Crobat - Venoshock - Level 48
  (169, 16900, 474, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Crobat - Confuse Ray - Level 55
  (169, 16900, 109, 21, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Crobat - Air Slash - Level 62
  (169, 16900, 403, 21, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Crobat - Leech Life - Level 69
  (169, 16900, 141, 21, NULL, 1, 69, NULL, NULL, NULL, 18),
  -- Crobat - Toxic - TM06
  (169, 16900, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 19),
  -- Crobat - Sunny Day - TM11
  (169, 16900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Crobat - Taunt - TM12
  (169, 16900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 21),
  -- Crobat - Hyper Beam - TM15
  (169, 16900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Crobat - Protect - TM17
  (169, 16900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Crobat - Rain Dance - TM18
  (169, 16900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Crobat - Giga Drain - TM19
  (169, 16900, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 25),
  -- Crobat - Shadow Ball - TM30
  (169, 16900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Crobat - Double Team - TM32
  (169, 16900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Crobat - Sludge Bomb - TM36
  (169, 16900, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 28),
  -- Crobat - Aerial Ace - TM40
  (169, 16900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Crobat - Torment - TM41
  (169, 16900, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 30),
  -- Crobat - Facade - TM42
  (169, 16900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Crobat - Rest - TM44
  (169, 16900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Crobat - Attract - TM45
  (169, 16900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Crobat - Thief - TM46
  (169, 16900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Crobat - Steel Wing - TM47
  (169, 16900, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 35),
  -- Crobat - Roost - TM51
  (169, 16900, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 36),
  -- Crobat - Endure - TM58
  (169, 16900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Crobat - Nasty Plot - TM63
  (169, 16900, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 38),
  -- Crobat - Payback - TM66
  (169, 16900, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 39),
  -- Crobat - Giga Impact - TM68
  (169, 16900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Crobat - Dark Pulse - TM79
  (169, 16900, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 41),
  -- Crobat - X-Scissor - TM81
  (169, 16900, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 42),
  -- Crobat - Sleep Talk - TM82
  (169, 16900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Crobat - Swagger - TM87
  (169, 16900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Crobat - Pluck - TM88
  (169, 16900, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 45),
  -- Crobat - U-turn - TM89
  (169, 16900, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 46),
  -- Crobat - Substitute - TM90
  (169, 16900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Crobat - Fly - TM94
  (169, 16900, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 48),
  -- Crobat - Defog - TM97
  (169, 16900, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 49),
  -- Crobat - Brave Bird - Egg
  (169, 16900, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Crobat - Curse - Egg
  (169, 16900, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Crobat - Gust - Egg
  (169, 16900, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Crobat - Hypnosis - Egg
  (169, 16900, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Crobat - Quick Attack - Egg
  (169, 16900, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Crobat - Venom Drench - Egg
  (169, 16900, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Crobat - Whirlwind - Egg
  (169, 16900, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Crobat - Wing Attack - Egg
  (169, 16900, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Crobat - Zen Headbutt - Egg
  (169, 16900, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Chinchou - Water Gun - Starting Move
  (170, 17000, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Chinchou - Supersonic - Starting Move
  (170, 17000, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Chinchou - Electro Ball - Level 4
  (170, 17000, 486, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Chinchou - Thunder Wave - Level 8
  (170, 17000, 86, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Chinchou - Bubble Beam - Level 12
  (170, 17000, 61, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chinchou - Confuse Ray - Level 16
  (170, 17000, 109, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Chinchou - Spark - Level 20
  (170, 17000, 209, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chinchou - Charge - Level 24
  (170, 17000, 268, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Chinchou - Discharge - Level 28
  (170, 17000, 435, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Chinchou - Aqua Ring - Level 32
  (170, 17000, 392, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Chinchou - Flail - Level 36
  (170, 17000, 175, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Chinchou - Take Down - Level 40
  (170, 17000, 36, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Chinchou - Hydro Pump - Level 44
  (170, 17000, 56, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Chinchou - Water Pulse - TM03
  (170, 17000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Chinchou - Hail - TM07
  (170, 17000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 15),
  -- Chinchou - Ice Beam - TM13
  (170, 17000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 16),
  -- Chinchou - Blizzard - TM14
  (170, 17000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 17),
  -- Chinchou - Protect - TM17
  (170, 17000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Chinchou - Rain Dance - TM18
  (170, 17000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Chinchou - Dazzling Gleam - TM21
  (170, 17000, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 20),
  -- Chinchou - Thunderbolt - TM24
  (170, 17000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 21),
  -- Chinchou - Thunder - TM25
  (170, 17000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 22),
  -- Chinchou - Double Team - TM32
  (170, 17000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Chinchou - Shock Wave - TM34
  (170, 17000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 24),
  -- Chinchou - Facade - TM42
  (170, 17000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Chinchou - Volt Switch - TM43
  (170, 17000, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 26),
  -- Chinchou - Rest - TM44
  (170, 17000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Chinchou - Attract - TM45
  (170, 17000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Chinchou - Scald - TM49
  (170, 17000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 29),
  -- Chinchou - Brine - TM55
  (170, 17000, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 30),
  -- Chinchou - Charge Beam - TM57
  (170, 17000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 31),
  -- Chinchou - Endure - TM58
  (170, 17000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Chinchou - Flash - TM70
  (170, 17000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 33),
  -- Chinchou - Thunder Wave - TM73
  (170, 17000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 34),
  -- Chinchou - Sleep Talk - TM82
  (170, 17000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Chinchou - Swagger - TM87
  (170, 17000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Chinchou - Substitute - TM90
  (170, 17000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Chinchou - Surf - TM95
  (170, 17000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 38),
  -- Chinchou - Waterfall - TM99
  (170, 17000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 39),
  -- Chinchou - Agility - Egg
  (170, 17000, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Chinchou - Amnesia - Egg
  (170, 17000, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Chinchou - Flail - Egg
  (170, 17000, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chinchou - Mist - Egg
  (170, 17000, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chinchou - Psybeam - Egg
  (170, 17000, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chinchou - Screech - Egg
  (170, 17000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chinchou - Soak - Egg
  (170, 17000, 487, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chinchou - Whirlpool - Egg
  (170, 17000, 250, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lanturn - Stockpile - Starting Move
  (171, 17100, 254, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lanturn - Swallow - Starting Move
  (171, 17100, 256, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lanturn - Spit Up - Starting Move
  (171, 17100, 255, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Lanturn - Eerie Impulse - Starting Move
  (171, 17100, 598, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Lanturn - Water Gun - Starting Move
  (171, 17100, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Lanturn - Supersonic - Starting Move
  (171, 17100, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Lanturn - Electro Ball - Starting Move
  (171, 17100, 486, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Lanturn - Thunder Wave - Starting Move
  (171, 17100, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Lanturn - Stockpile - Evolution
  (171, 17100, 254, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Lanturn - Swallow - Evolution
  (171, 17100, 256, 21, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Lanturn - Spit Up - Evolution
  (171, 17100, 255, 21, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Lanturn - Bubble Beam - Level 12
  (171, 17100, 61, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Lanturn - Confuse Ray - Level 16
  (171, 17100, 109, 21, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Lanturn - Spark - Level 20
  (171, 17100, 209, 21, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Lanturn - Charge - Level 24
  (171, 17100, 268, 21, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Lanturn - Discharge - Level 30
  (171, 17100, 435, 21, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Lanturn - Aqua Ring - Level 36
  (171, 17100, 392, 21, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Lanturn - Flail - Level 42
  (171, 17100, 175, 21, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Lanturn - Take Down - Level 48
  (171, 17100, 36, 21, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Lanturn - Hydro Pump - Level 54
  (171, 17100, 56, 21, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Lanturn - Water Pulse - TM03
  (171, 17100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 21),
  -- Lanturn - Hail - TM07
  (171, 17100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 22),
  -- Lanturn - Ice Beam - TM13
  (171, 17100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Lanturn - Blizzard - TM14
  (171, 17100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Lanturn - Hyper Beam - TM15
  (171, 17100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Lanturn - Protect - TM17
  (171, 17100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Lanturn - Rain Dance - TM18
  (171, 17100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Lanturn - Dazzling Gleam - TM21
  (171, 17100, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 28),
  -- Lanturn - Thunderbolt - TM24
  (171, 17100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 29),
  -- Lanturn - Thunder - TM25
  (171, 17100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 30),
  -- Lanturn - Double Team - TM32
  (171, 17100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Lanturn - Shock Wave - TM34
  (171, 17100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Lanturn - Facade - TM42
  (171, 17100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Lanturn - Volt Switch - TM43
  (171, 17100, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 34),
  -- Lanturn - Rest - TM44
  (171, 17100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Lanturn - Attract - TM45
  (171, 17100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Lanturn - Scald - TM49
  (171, 17100, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 37),
  -- Lanturn - Brine - TM55
  (171, 17100, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 38),
  -- Lanturn - Charge Beam - TM57
  (171, 17100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Lanturn - Endure - TM58
  (171, 17100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Lanturn - Giga Impact - TM68
  (171, 17100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Lanturn - Flash - TM70
  (171, 17100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Lanturn - Thunder Wave - TM73
  (171, 17100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Lanturn - Sleep Talk - TM82
  (171, 17100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Lanturn - Swagger - TM87
  (171, 17100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Lanturn - Substitute - TM90
  (171, 17100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Lanturn - Surf - TM95
  (171, 17100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 47),
  -- Lanturn - Waterfall - TM99
  (171, 17100, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 48),
  -- Lanturn - Agility - Egg
  (171, 17100, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lanturn - Amnesia - Egg
  (171, 17100, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lanturn - Flail - Egg
  (171, 17100, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lanturn - Mist - Egg
  (171, 17100, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lanturn - Psybeam - Egg
  (171, 17100, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lanturn - Screech - Egg
  (171, 17100, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Lanturn - Soak - Egg
  (171, 17100, 487, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Lanturn - Whirlpool - Egg
  (171, 17100, 250, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pichu - Thunder Shock - Starting Move
  (172, 17200, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Pichu - Tail Whip - Starting Move
  (172, 17200, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Pichu - Play Nice - Level 4
  (172, 17200, 589, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pichu - Sweet Kiss - Level 8
  (172, 17200, 186, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pichu - Nuzzle - Level 12
  (172, 17200, 609, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pichu - Nasty Plot - Level 16
  (172, 17200, 417, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Pichu - Charm - Level 20
  (172, 17200, 204, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pichu - Light Screen - TM16
  (172, 17200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 8),
  -- Pichu - Protect - TM17
  (172, 17200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 9),
  -- Pichu - Rain Dance - TM18
  (172, 17200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 10),
  -- Pichu - Iron Tail - TM23
  (172, 17200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 11),
  -- Pichu - Thunderbolt - TM24
  (172, 17200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 12),
  -- Pichu - Thunder - TM25
  (172, 17200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 13),
  -- Pichu - Double Team - TM32
  (172, 17200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 14),
  -- Pichu - Reflect - TM33
  (172, 17200, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 15),
  -- Pichu - Shock Wave - TM34
  (172, 17200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 16),
  -- Pichu - Facade - TM42
  (172, 17200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 17),
  -- Pichu - Volt Switch - TM43
  (172, 17200, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 18),
  -- Pichu - Rest - TM44
  (172, 17200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 19),
  -- Pichu - Attract - TM45
  (172, 17200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 20),
  -- Pichu - Fling - TM56
  (172, 17200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 21),
  -- Pichu - Charge Beam - TM57
  (172, 17200, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 22),
  -- Pichu - Endure - TM58
  (172, 17200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 23),
  -- Pichu - Nasty Plot - TM63
  (172, 17200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 24),
  -- Pichu - Flash - TM70
  (172, 17200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 25),
  -- Pichu - Thunder Wave - TM73
  (172, 17200, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 26),
  -- Pichu - Sleep Talk - TM82
  (172, 17200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 27),
  -- Pichu - Grass Knot - TM86
  (172, 17200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 28),
  -- Pichu - Swagger - TM87
  (172, 17200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 29),
  -- Pichu - Substitute - TM90
  (172, 17200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 30),
  -- Pichu - Surf - TM95
  (172, 17200, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 31),
  -- Pichu - Charge - Egg
  (172, 17200, 268, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Pichu - Disarming Voice - Egg
  (172, 17200, 574, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Pichu - Electric Terrain - Egg
  (172, 17200, 604, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Pichu - Encore - Egg
  (172, 17200, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Pichu - Fake Out - Egg
  (172, 17200, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Pichu - Flail - Egg
  (172, 17200, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Pichu - Present - Egg
  (172, 17200, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Pichu - Reversal - Egg
  (172, 17200, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Pichu - Thunder Punch - Egg
  (172, 17200, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pichu - Tickle - Egg
  (172, 17200, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pichu - Volt Tackle - Egg (Light Ball)
  (172, 17200, 344, 21, NULL, 5, NULL, 364, NULL, 'Requires either parent to hold Light Ball.', 42),
  -- Pichu - Wish - Egg
  (172, 17200, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cleffa - Splash - Starting Move
  (173, 17300, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cleffa - Pound - Starting Move
  (173, 17300, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Cleffa - Copycat - Starting Move
  (173, 17300, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Cleffa - Sing - Level 4
  (173, 17300, 47, 21, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Cleffa - Sweet Kiss - Level 8
  (173, 17300, 186, 21, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Cleffa - Disarming Voice - Level 12
  (173, 17300, 574, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Cleffa - Encore - Level 16
  (173, 17300, 227, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cleffa - Charm - Level 20
  (173, 17300, 204, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Cleffa - Water Pulse - TM03
  (173, 17300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 9),
  -- Cleffa - Work Up - TM10
  (173, 17300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 10),
  -- Cleffa - Sunny Day - TM11
  (173, 17300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 11),
  -- Cleffa - Light Screen - TM16
  (173, 17300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 12),
  -- Cleffa - Protect - TM17
  (173, 17300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 13),
  -- Cleffa - Rain Dance - TM18
  (173, 17300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 14),
  -- Cleffa - Safeguard - TM20
  (173, 17300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 15),
  -- Cleffa - Solar Beam - TM22
  (173, 17300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 16),
  -- Cleffa - Iron Tail - TM23
  (173, 17300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 17),
  -- Cleffa - Dig - TM28
  (173, 17300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 18),
  -- Cleffa - Psychic - TM29
  (173, 17300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 19),
  -- Cleffa - Shadow Ball - TM30
  (173, 17300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 20),
  -- Cleffa - Double Team - TM32
  (173, 17300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Cleffa - Reflect - TM33
  (173, 17300, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 22),
  -- Cleffa - Shock Wave - TM34
  (173, 17300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 23),
  -- Cleffa - Flamethrower - TM35
  (173, 17300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 24),
  -- Cleffa - Fire Blast - TM38
  (173, 17300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 25),
  -- Cleffa - Facade - TM42
  (173, 17300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Cleffa - Rest - TM44
  (173, 17300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Cleffa - Attract - TM45
  (173, 17300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Cleffa - Fling - TM56
  (173, 17300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 29),
  -- Cleffa - Endure - TM58
  (173, 17300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Cleffa - Recycle - TM67
  (173, 17300, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 31),
  -- Cleffa - Flash - TM70
  (173, 17300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Cleffa - Thunder Wave - TM73
  (173, 17300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 33),
  -- Cleffa - Psych Up - TM77
  (173, 17300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 34),
  -- Cleffa - Sleep Talk - TM82
  (173, 17300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Cleffa - Dream Eater - TM85
  (173, 17300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 36),
  -- Cleffa - Grass Knot - TM86
  (173, 17300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 37),
  -- Cleffa - Swagger - TM87
  (173, 17300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Cleffa - Substitute - TM90
  (173, 17300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Cleffa - Amnesia - Egg
  (173, 17300, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cleffa - Aromatherapy - Egg
  (173, 17300, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cleffa - Belly Drum - Egg
  (173, 17300, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cleffa - Covet - Egg
  (173, 17300, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cleffa - Fake Tears - Egg
  (173, 17300, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cleffa - Heal Pulse - Egg
  (173, 17300, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cleffa - Metronome - Egg
  (173, 17300, 118, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cleffa - Mimic - Egg
  (173, 17300, 102, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cleffa - Misty Terrain - Egg
  (173, 17300, 581, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cleffa - Present - Egg
  (173, 17300, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cleffa - Splash - Egg
  (173, 17300, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cleffa - Stored Power - Egg
  (173, 17300, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cleffa - Tickle - Egg
  (173, 17300, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cleffa - Wish - Egg
  (173, 17300, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Igglybuff - Sing - Starting Move
  (174, 17400, 47, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Igglybuff - Pound - Starting Move
  (174, 17400, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Igglybuff - Copycat - Starting Move
  (174, 17400, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Igglybuff - Defense Curl - Level 4
  (174, 17400, 111, 21, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Igglybuff - Sweet Kiss - Level 8
  (174, 17400, 186, 21, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Igglybuff - Disarming Voice - Level 12
  (174, 17400, 574, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Igglybuff - Disable - Level 16
  (174, 17400, 50, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Igglybuff - Charm - Level 20
  (174, 17400, 204, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Igglybuff - Water Pulse - TM03
  (174, 17400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 9),
  -- Igglybuff - Work Up - TM10
  (174, 17400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 10),
  -- Igglybuff - Sunny Day - TM11
  (174, 17400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 11),
  -- Igglybuff - Light Screen - TM16
  (174, 17400, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 12),
  -- Igglybuff - Protect - TM17
  (174, 17400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 13),
  -- Igglybuff - Rain Dance - TM18
  (174, 17400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 14),
  -- Igglybuff - Safeguard - TM20
  (174, 17400, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 15),
  -- Igglybuff - Solar Beam - TM22
  (174, 17400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 16),
  -- Igglybuff - Dig - TM28
  (174, 17400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 17),
  -- Igglybuff - Psychic - TM29
  (174, 17400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 18),
  -- Igglybuff - Shadow Ball - TM30
  (174, 17400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 19),
  -- Igglybuff - Double Team - TM32
  (174, 17400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Igglybuff - Reflect - TM33
  (174, 17400, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 21),
  -- Igglybuff - Shock Wave - TM34
  (174, 17400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 22),
  -- Igglybuff - Flamethrower - TM35
  (174, 17400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 23),
  -- Igglybuff - Fire Blast - TM38
  (174, 17400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 24),
  -- Igglybuff - Facade - TM42
  (174, 17400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Igglybuff - Rest - TM44
  (174, 17400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Igglybuff - Attract - TM45
  (174, 17400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Igglybuff - Fling - TM56
  (174, 17400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 28),
  -- Igglybuff - Endure - TM58
  (174, 17400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Igglybuff - Recycle - TM67
  (174, 17400, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 30),
  -- Igglybuff - Flash - TM70
  (174, 17400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 31),
  -- Igglybuff - Thunder Wave - TM73
  (174, 17400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 32),
  -- Igglybuff - Psych Up - TM77
  (174, 17400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 33),
  -- Igglybuff - Sleep Talk - TM82
  (174, 17400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Igglybuff - Dream Eater - TM85
  (174, 17400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 35),
  -- Igglybuff - Grass Knot - TM86
  (174, 17400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 36),
  -- Igglybuff - Swagger - TM87
  (174, 17400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Igglybuff - Substitute - TM90
  (174, 17400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Igglybuff - Covet - Egg
  (174, 17400, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Igglybuff - Fake Tears - Egg
  (174, 17400, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Igglybuff - Gravity - Egg
  (174, 17400, 356, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Igglybuff - Heal Pulse - Egg
  (174, 17400, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Igglybuff - Last Resort - Egg
  (174, 17400, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Igglybuff - Misty Terrain - Egg
  (174, 17400, 581, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Igglybuff - Perish Song - Egg
  (174, 17400, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Igglybuff - Present - Egg
  (174, 17400, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Igglybuff - Rollout - Egg
  (174, 17400, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Igglybuff - Wish - Egg
  (174, 17400, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Togepi - Growl - Starting Move
  (175, 17500, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Togepi - Pound - Starting Move
  (175, 17500, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Togepi - Sweet Kiss - Level 4
  (175, 17500, 186, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Togepi - Life Dew - Level 8
  (175, 17500, 791, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Togepi - Charm - Level 12
  (175, 17500, 204, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Togepi - Ancient Power - Level 16
  (175, 17500, 246, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Togepi - Yawn - Level 20
  (175, 17500, 281, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Togepi - Metronome - Level 24
  (175, 17500, 118, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Togepi - After You - Level 28
  (175, 17500, 495, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Togepi - Double-Edge - Level 32
  (175, 17500, 38, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Togepi - Safeguard - Level 36
  (175, 17500, 219, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Togepi - Follow Me - Level 40
  (175, 17500, 266, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Togepi - Baton Pass - Level 44
  (175, 17500, 226, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Togepi - Last Resort - Level 48
  (175, 17500, 387, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Togepi - Wish - Level 52
  (175, 17500, 273, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Togepi - Water Pulse - TM03
  (175, 17500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Togepi - Work Up - TM10
  (175, 17500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Togepi - Sunny Day - TM11
  (175, 17500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Togepi - Light Screen - TM16
  (175, 17500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Togepi - Protect - TM17
  (175, 17500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Togepi - Rain Dance - TM18
  (175, 17500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Togepi - Safeguard - TM20
  (175, 17500, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Togepi - Dazzling Gleam - TM21
  (175, 17500, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 23),
  -- Togepi - Solar Beam - TM22
  (175, 17500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Togepi - Psychic - TM29
  (175, 17500, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 25),
  -- Togepi - Shadow Ball - TM30
  (175, 17500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Togepi - Double Team - TM32
  (175, 17500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Togepi - Reflect - TM33
  (175, 17500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Togepi - Shock Wave - TM34
  (175, 17500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Togepi - Flamethrower - TM35
  (175, 17500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 30),
  -- Togepi - Fire Blast - TM38
  (175, 17500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 31),
  -- Togepi - Facade - TM42
  (175, 17500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Togepi - Rest - TM44
  (175, 17500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Togepi - Attract - TM45
  (175, 17500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Togepi - Fling - TM56
  (175, 17500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 35),
  -- Togepi - Endure - TM58
  (175, 17500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Togepi - Nasty Plot - TM63
  (175, 17500, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 37),
  -- Togepi - Flash - TM70
  (175, 17500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Togepi - Thunder Wave - TM73
  (175, 17500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 39),
  -- Togepi - Psych Up - TM77
  (175, 17500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 40),
  -- Togepi - Sleep Talk - TM82
  (175, 17500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Togepi - Dream Eater - TM85
  (175, 17500, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 42),
  -- Togepi - Grass Knot - TM86
  (175, 17500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 43),
  -- Togepi - Swagger - TM87
  (175, 17500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Togepi - Substitute - TM90
  (175, 17500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Togepi - Rock Smash - TM98
  (175, 17500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Togepi - Extrasensory - Egg
  (175, 17500, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Togepi - Future Sight - Egg
  (175, 17500, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Togepi - Morning Sun - Egg
  (175, 17500, 234, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Togepi - Peck - Egg
  (175, 17500, 64, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Togepi - Present - Egg
  (175, 17500, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Togepi - Psycho Shift - Egg
  (175, 17500, 375, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Togepi - Stored Power - Egg
  (175, 17500, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Togetic - Fairy Wind - Starting Move
  (176, 17600, 584, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Togetic - Growl - Starting Move
  (176, 17600, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Togetic - Pound - Starting Move
  (176, 17600, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Togetic - Sweet Kiss - Starting Move
  (176, 17600, 186, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Togetic - Life Dew - Starting Move
  (176, 17600, 791, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Togetic - Fairy Wind - Evolution
  (176, 17600, 584, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Togetic - Charm - Level 12
  (176, 17600, 204, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Togetic - Ancient Power - Level 16
  (176, 17600, 246, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Togetic - Yawn - Level 20
  (176, 17600, 281, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Togetic - Metronome - Level 24
  (176, 17600, 118, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Togetic - After You - Level 28
  (176, 17600, 495, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Togetic - Double-Edge - Level 32
  (176, 17600, 38, 21, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Togetic - Safeguard - Level 36
  (176, 17600, 219, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Togetic - Follow Me - Level 40
  (176, 17600, 266, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Togetic - Baton Pass - Level 44
  (176, 17600, 226, 21, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Togetic - Last Resort - Level 48
  (176, 17600, 387, 21, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Togetic - Wish - Level 52
  (176, 17600, 273, 21, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Togetic - Focus Punch - TM01
  (176, 17600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Togetic - Water Pulse - TM03
  (176, 17600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Togetic - Work Up - TM10
  (176, 17600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Togetic - Sunny Day - TM11
  (176, 17600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Togetic - Hyper Beam - TM15
  (176, 17600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Togetic - Light Screen - TM16
  (176, 17600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 23),
  -- Togetic - Protect - TM17
  (176, 17600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Togetic - Rain Dance - TM18
  (176, 17600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Togetic - Safeguard - TM20
  (176, 17600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 26),
  -- Togetic - Dazzling Gleam - TM21
  (176, 17600, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 27),
  -- Togetic - Solar Beam - TM22
  (176, 17600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Togetic - Psychic - TM29
  (176, 17600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 29),
  -- Togetic - Shadow Ball - TM30
  (176, 17600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Togetic - Brick Break - TM31
  (176, 17600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Togetic - Double Team - TM32
  (176, 17600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Togetic - Reflect - TM33
  (176, 17600, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 33),
  -- Togetic - Shock Wave - TM34
  (176, 17600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 34),
  -- Togetic - Flamethrower - TM35
  (176, 17600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 35),
  -- Togetic - Fire Blast - TM38
  (176, 17600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 36),
  -- Togetic - Aerial Ace - TM40
  (176, 17600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 37),
  -- Togetic - Facade - TM42
  (176, 17600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 38),
  -- Togetic - Rest - TM44
  (176, 17600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 39),
  -- Togetic - Attract - TM45
  (176, 17600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 40),
  -- Togetic - Steel Wing - TM47
  (176, 17600, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 41),
  -- Togetic - Roost - TM51
  (176, 17600, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 42),
  -- Togetic - Fling - TM56
  (176, 17600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 43),
  -- Togetic - Endure - TM58
  (176, 17600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 44),
  -- Togetic - Drain Punch - TM60
  (176, 17600, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 45),
  -- Togetic - Nasty Plot - TM63
  (176, 17600, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 46),
  -- Togetic - Giga Impact - TM68
  (176, 17600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Togetic - Flash - TM70
  (176, 17600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 48),
  -- Togetic - Thunder Wave - TM73
  (176, 17600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 49),
  -- Togetic - Psych Up - TM77
  (176, 17600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 50),
  -- Togetic - Sleep Talk - TM82
  (176, 17600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 51),
  -- Togetic - Dream Eater - TM85
  (176, 17600, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 52),
  -- Togetic - Grass Knot - TM86
  (176, 17600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 53),
  -- Togetic - Swagger - TM87
  (176, 17600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 54),
  -- Togetic - Substitute - TM90
  (176, 17600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 55),
  -- Togetic - Fly - TM94
  (176, 17600, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 56),
  -- Togetic - Defog - TM97
  (176, 17600, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 57),
  -- Togetic - Rock Smash - TM98
  (176, 17600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 58),
  -- Togetic - Extrasensory - Egg
  (176, 17600, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Togetic - Future Sight - Egg
  (176, 17600, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Togetic - Morning Sun - Egg
  (176, 17600, 234, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Togetic - Peck - Egg
  (176, 17600, 64, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Togetic - Present - Egg
  (176, 17600, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Togetic - Psycho Shift - Egg
  (176, 17600, 375, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Togetic - Stored Power - Egg
  (176, 17600, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Natu - Peck - Starting Move
  (177, 17700, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Natu - Leer - Starting Move
  (177, 17700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Natu - Stored Power - Level 5
  (177, 17700, 500, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Natu - Teleport - Level 10
  (177, 17700, 100, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Natu - Confuse Ray - Level 15
  (177, 17700, 109, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Natu - Night Shade - Level 20
  (177, 17700, 101, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Natu - Psycho Shift - Level 26
  (177, 17700, 375, 21, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Natu - Power Swap - Level 30
  (177, 17700, 384, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Natu - Guard Swap - Level 35
  (177, 17700, 385, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Natu - Psychic - Level 35
  (177, 17700, 94, 21, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Natu - Wish - Level 40
  (177, 17700, 273, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Natu - Future Sight - Level 45
  (177, 17700, 248, 21, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Natu - Calm Mind - TM04
  (177, 17700, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 13),
  -- Natu - Sunny Day - TM11
  (177, 17700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Natu - Light Screen - TM16
  (177, 17700, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 15),
  -- Natu - Protect - TM17
  (177, 17700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Natu - Rain Dance - TM18
  (177, 17700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Natu - Giga Drain - TM19
  (177, 17700, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 18),
  -- Natu - Dazzling Gleam - TM21
  (177, 17700, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 19),
  -- Natu - Solar Beam - TM22
  (177, 17700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 20),
  -- Natu - Psychic - TM29
  (177, 17700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 21),
  -- Natu - Shadow Ball - TM30
  (177, 17700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 22),
  -- Natu - Double Team - TM32
  (177, 17700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Natu - Reflect - TM33
  (177, 17700, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 24),
  -- Natu - Aerial Ace - TM40
  (177, 17700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 25),
  -- Natu - Facade - TM42
  (177, 17700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Natu - Rest - TM44
  (177, 17700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Natu - Attract - TM45
  (177, 17700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Natu - Thief - TM46
  (177, 17700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 29),
  -- Natu - Steel Wing - TM47
  (177, 17700, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 30),
  -- Natu - Skill Swap - TM48
  (177, 17700, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 31),
  -- Natu - Roost - TM51
  (177, 17700, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 32),
  -- Natu - Endure - TM58
  (177, 17700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Natu - Flash - TM70
  (177, 17700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 34),
  -- Natu - Thunder Wave - TM73
  (177, 17700, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 35),
  -- Natu - Psych Up - TM77
  (177, 17700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 36),
  -- Natu - Sleep Talk - TM82
  (177, 17700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Natu - Dream Eater - TM85
  (177, 17700, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 38),
  -- Natu - Grass Knot - TM86
  (177, 17700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 39),
  -- Natu - Swagger - TM87
  (177, 17700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Natu - Pluck - TM88
  (177, 17700, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 41),
  -- Natu - U-turn - TM89
  (177, 17700, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 42),
  -- Natu - Substitute - TM90
  (177, 17700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Natu - Trick Room - TM92
  (177, 17700, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 44),
  -- Natu - Ally Switch - Egg
  (177, 17700, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Natu - Drill Peck - Egg
  (177, 17700, 65, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Natu - Feather Dance - Egg
  (177, 17700, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Natu - Haze - Egg
  (177, 17700, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Natu - Quick Attack - Egg
  (177, 17700, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Natu - Simple Beam - Egg
  (177, 17700, 493, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Natu - Sucker Punch - Egg
  (177, 17700, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Natu - Zen Headbutt - Egg
  (177, 17700, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Xatu - Air Slash - Starting Move
  (178, 17800, 403, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Xatu - Tailwind - Starting Move
  (178, 17800, 366, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Xatu - Peck - Starting Move
  (178, 17800, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Xatu - Leer - Starting Move
  (178, 17800, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Xatu - Stored Power - Starting Move
  (178, 17800, 500, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Xatu - Teleport - Starting Move
  (178, 17800, 100, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Xatu - Air Slash - Evolution
  (178, 17800, 403, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Xatu - Confuse Ray - Level 15
  (178, 17800, 109, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Xatu - Night Shade - Level 20
  (178, 17800, 101, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Xatu - Psycho Shift - Level 28
  (178, 17800, 375, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Xatu - Power Swap - Level 34
  (178, 17800, 384, 21, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Xatu - Guard Swap - Level 34
  (178, 17800, 385, 21, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Xatu - Psychic - Level 41
  (178, 17800, 94, 21, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Xatu - Wish - Level 48
  (178, 17800, 273, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Xatu - Future Sight - Level 55
  (178, 17800, 248, 21, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Xatu - Calm Mind - TM04
  (178, 17800, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Xatu - Sunny Day - TM11
  (178, 17800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Xatu - Hyper Beam - TM15
  (178, 17800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Xatu - Light Screen - TM16
  (178, 17800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Xatu - Protect - TM17
  (178, 17800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Xatu - Rain Dance - TM18
  (178, 17800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Xatu - Giga Drain - TM19
  (178, 17800, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 22),
  -- Xatu - Dazzling Gleam - TM21
  (178, 17800, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 23),
  -- Xatu - Solar Beam - TM22
  (178, 17800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Xatu - Psychic - TM29
  (178, 17800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 25),
  -- Xatu - Shadow Ball - TM30
  (178, 17800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Xatu - Double Team - TM32
  (178, 17800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Xatu - Reflect - TM33
  (178, 17800, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Xatu - Aerial Ace - TM40
  (178, 17800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Xatu - Facade - TM42
  (178, 17800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Xatu - Rest - TM44
  (178, 17800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Xatu - Attract - TM45
  (178, 17800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Xatu - Thief - TM46
  (178, 17800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Xatu - Steel Wing - TM47
  (178, 17800, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 34),
  -- Xatu - Skill Swap - TM48
  (178, 17800, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 35),
  -- Xatu - Roost - TM51
  (178, 17800, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 36),
  -- Xatu - Endure - TM58
  (178, 17800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Xatu - Giga Impact - TM68
  (178, 17800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Xatu - Flash - TM70
  (178, 17800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 39),
  -- Xatu - Thunder Wave - TM73
  (178, 17800, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 40),
  -- Xatu - Psych Up - TM77
  (178, 17800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Xatu - Sleep Talk - TM82
  (178, 17800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Xatu - Dream Eater - TM85
  (178, 17800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 43),
  -- Xatu - Grass Knot - TM86
  (178, 17800, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 44),
  -- Xatu - Swagger - TM87
  (178, 17800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Xatu - Pluck - TM88
  (178, 17800, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 46),
  -- Xatu - U-turn - TM89
  (178, 17800, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 47),
  -- Xatu - Substitute - TM90
  (178, 17800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Xatu - Trick Room - TM92
  (178, 17800, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 49),
  -- Xatu - Fly - TM94
  (178, 17800, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 50),
  -- Xatu - Defog - TM97
  (178, 17800, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 51),
  -- Xatu - Ally Switch - Egg
  (178, 17800, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Xatu - Drill Peck - Egg
  (178, 17800, 65, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Xatu - Feather Dance - Egg
  (178, 17800, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Xatu - Haze - Egg
  (178, 17800, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Xatu - Quick Attack - Egg
  (178, 17800, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Xatu - Simple Beam - Egg
  (178, 17800, 493, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Xatu - Sucker Punch - Egg
  (178, 17800, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Xatu - Zen Headbutt - Egg
  (178, 17800, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mareep - Tackle - Starting Move
  (179, 17900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mareep - Growl - Starting Move
  (179, 17900, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mareep - Thunder Wave - Level 4
  (179, 17900, 86, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mareep - Thunder Shock - Level 8
  (179, 17900, 84, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mareep - Cotton Spore - Level 11
  (179, 17900, 178, 21, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Mareep - Charge - Level 15
  (179, 17900, 268, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Mareep - Take Down - Level 18
  (179, 17900, 36, 21, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Mareep - Electro Ball - Level 22
  (179, 17900, 486, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Mareep - Confuse Ray - Level 25
  (179, 17900, 109, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Mareep - Power Gem - Level 29
  (179, 17900, 408, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Mareep - Discharge - Level 32
  (179, 17900, 435, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mareep - Cotton Guard - Level 36
  (179, 17900, 538, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Mareep - Charge Beam - Level 39
  (179, 17900, 451, 21, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Mareep - Light Screen - Level 43
  (179, 17900, 113, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Mareep - Thunder - Level 46
  (179, 17900, 87, 21, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Mareep - Light Screen - TM16
  (179, 17900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 16),
  -- Mareep - Protect - TM17
  (179, 17900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Mareep - Rain Dance - TM18
  (179, 17900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Mareep - Safeguard - TM20
  (179, 17900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 19),
  -- Mareep - Iron Tail - TM23
  (179, 17900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 20),
  -- Mareep - Thunderbolt - TM24
  (179, 17900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 21),
  -- Mareep - Thunder - TM25
  (179, 17900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 22),
  -- Mareep - Double Team - TM32
  (179, 17900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Mareep - Reflect - TM33
  (179, 17900, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 24),
  -- Mareep - Shock Wave - TM34
  (179, 17900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 25),
  -- Mareep - Facade - TM42
  (179, 17900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Mareep - Rest - TM44
  (179, 17900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Mareep - Attract - TM45
  (179, 17900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Mareep - Charge Beam - TM57
  (179, 17900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 29),
  -- Mareep - Endure - TM58
  (179, 17900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Mareep - Flash - TM70
  (179, 17900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 31),
  -- Mareep - Thunder Wave - TM73
  (179, 17900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 32),
  -- Mareep - Sleep Talk - TM82
  (179, 17900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Mareep - Swagger - TM87
  (179, 17900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 34),
  -- Mareep - Substitute - TM90
  (179, 17900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 35),
  -- Mareep - After You - Egg
  (179, 17900, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Mareep - Agility - Egg
  (179, 17900, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Mareep - Body Slam - Egg
  (179, 17900, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Mareep - Charge - Egg
  (179, 17900, 268, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mareep - Eerie Impulse - Egg
  (179, 17900, 598, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mareep - Electric Terrain - Egg
  (179, 17900, 604, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mareep - Flatter - Egg
  (179, 17900, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mareep - Sand Attack - Egg
  (179, 17900, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mareep - Screech - Egg
  (179, 17900, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mareep - Take Down - Egg
  (179, 17900, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Flaaffy - Tackle - Starting Move
  (180, 18000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Flaaffy - Growl - Starting Move
  (180, 18000, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Flaaffy - Thunder Wave - Starting Move
  (180, 18000, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Flaaffy - Thunder Shock - Starting Move
  (180, 18000, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Flaaffy - Thunder Wave - Level 4
  (180, 18000, 86, 21, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Flaaffy - Thunder Shock - Level 8
  (180, 18000, 84, 21, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Flaaffy - Cotton Spore - Level 11
  (180, 18000, 178, 21, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Flaaffy - Charge - Level 16
  (180, 18000, 268, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Flaaffy - Take Down - Level 20
  (180, 18000, 36, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Flaaffy - Electro Ball - Level 25
  (180, 18000, 486, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Flaaffy - Confuse Ray - Level 29
  (180, 18000, 109, 21, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Flaaffy - Power Gem - Level 34
  (180, 18000, 408, 21, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Flaaffy - Discharge - Level 38
  (180, 18000, 435, 21, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Flaaffy - Cotton Guard - Level 43
  (180, 18000, 538, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Flaaffy - Charge Beam - Level 47
  (180, 18000, 451, 21, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Flaaffy - Light Screen - Level 52
  (180, 18000, 113, 21, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Flaaffy - Thunder - Level 56
  (180, 18000, 87, 21, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Flaaffy - Focus Punch - TM01
  (180, 18000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Flaaffy - Light Screen - TM16
  (180, 18000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Flaaffy - Protect - TM17
  (180, 18000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Flaaffy - Rain Dance - TM18
  (180, 18000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Flaaffy - Safeguard - TM20
  (180, 18000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Flaaffy - Iron Tail - TM23
  (180, 18000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Flaaffy - Thunderbolt - TM24
  (180, 18000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Flaaffy - Thunder - TM25
  (180, 18000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Flaaffy - Brick Break - TM31
  (180, 18000, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Flaaffy - Double Team - TM32
  (180, 18000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Flaaffy - Reflect - TM33
  (180, 18000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Flaaffy - Shock Wave - TM34
  (180, 18000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Flaaffy - Facade - TM42
  (180, 18000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Flaaffy - Volt Switch - TM43
  (180, 18000, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 31),
  -- Flaaffy - Rest - TM44
  (180, 18000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Flaaffy - Attract - TM45
  (180, 18000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Flaaffy - Fling - TM56
  (180, 18000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Flaaffy - Charge Beam - TM57
  (180, 18000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 35),
  -- Flaaffy - Endure - TM58
  (180, 18000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Flaaffy - Flash - TM70
  (180, 18000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Flaaffy - Thunder Wave - TM73
  (180, 18000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 38),
  -- Flaaffy - Sleep Talk - TM82
  (180, 18000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Flaaffy - Swagger - TM87
  (180, 18000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Flaaffy - Substitute - TM90
  (180, 18000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Flaaffy - Strength - TM96
  (180, 18000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 42),
  -- Flaaffy - Rock Smash - TM98
  (180, 18000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 43),
  -- Flaaffy - After You - Egg
  (180, 18000, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Flaaffy - Agility - Egg
  (180, 18000, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Flaaffy - Body Slam - Egg
  (180, 18000, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Flaaffy - Charge - Egg
  (180, 18000, 268, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Flaaffy - Eerie Impulse - Egg
  (180, 18000, 598, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Flaaffy - Electric Terrain - Egg
  (180, 18000, 604, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Flaaffy - Flatter - Egg
  (180, 18000, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Flaaffy - Sand Attack - Egg
  (180, 18000, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Flaaffy - Screech - Egg
  (180, 18000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Flaaffy - Take Down - Egg
  (180, 18000, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ampharos - Thunder Punch - Starting Move
  (181, 18100, 9, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ampharos - Zap Cannon - Starting Move
  (181, 18100, 192, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ampharos - Magnetic Flux - Starting Move
  (181, 18100, 602, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Ampharos - Dragon Pulse - Starting Move
  (181, 18100, 406, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Ampharos - Fire Punch - Starting Move
  (181, 18100, 7, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Ampharos - Tackle - Starting Move
  (181, 18100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Ampharos - Growl - Starting Move
  (181, 18100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Ampharos - Thunder Wave - Starting Move
  (181, 18100, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Ampharos - Thunder Shock - Starting Move
  (181, 18100, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Ampharos - Thunder Punch - Evolution
  (181, 18100, 9, 21, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Ampharos - Thunder Wave - Level 4
  (181, 18100, 86, 21, NULL, 1, 4, NULL, NULL, NULL, 11),
  -- Ampharos - Thunder Shock - Level 8
  (181, 18100, 84, 21, NULL, 1, 8, NULL, NULL, NULL, 12),
  -- Ampharos - Cotton Spore - Level 11
  (181, 18100, 178, 21, NULL, 1, 11, NULL, NULL, NULL, 13),
  -- Ampharos - Charge - Level 16
  (181, 18100, 268, 21, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Ampharos - Take Down - Level 20
  (181, 18100, 36, 21, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Ampharos - Electro Ball - Level 25
  (181, 18100, 486, 21, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Ampharos - Confuse Ray - Level 29
  (181, 18100, 109, 21, NULL, 1, 29, NULL, NULL, NULL, 17),
  -- Ampharos - Power Gem - Level 35
  (181, 18100, 408, 21, NULL, 1, 35, NULL, NULL, NULL, 18),
  -- Ampharos - Discharge - Level 40
  (181, 18100, 435, 21, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Ampharos - Cotton Guard - Level 46
  (181, 18100, 538, 21, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Ampharos - Charge Beam - Level 51
  (181, 18100, 451, 21, NULL, 1, 51, NULL, NULL, NULL, 21),
  -- Ampharos - Light Screen - Level 57
  (181, 18100, 113, 21, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Ampharos - Thunder - Level 62
  (181, 18100, 87, 21, NULL, 1, 62, NULL, NULL, NULL, 23),
  -- Ampharos - Dragon Pulse - Level 65
  (181, 18100, 406, 21, NULL, 1, 65, NULL, NULL, NULL, 24),
  -- Ampharos - Focus Punch - TM01
  (181, 18100, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 25),
  -- Ampharos - Hyper Beam - TM15
  (181, 18100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Ampharos - Light Screen - TM16
  (181, 18100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 27),
  -- Ampharos - Protect - TM17
  (181, 18100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Ampharos - Rain Dance - TM18
  (181, 18100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 29),
  -- Ampharos - Safeguard - TM20
  (181, 18100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 30),
  -- Ampharos - Iron Tail - TM23
  (181, 18100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 31),
  -- Ampharos - Thunderbolt - TM24
  (181, 18100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 32),
  -- Ampharos - Thunder - TM25
  (181, 18100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 33),
  -- Ampharos - Brick Break - TM31
  (181, 18100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Ampharos - Double Team - TM32
  (181, 18100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Ampharos - Reflect - TM33
  (181, 18100, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 36),
  -- Ampharos - Shock Wave - TM34
  (181, 18100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 37),
  -- Ampharos - Facade - TM42
  (181, 18100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 38),
  -- Ampharos - Volt Switch - TM43
  (181, 18100, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 39),
  -- Ampharos - Rest - TM44
  (181, 18100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Ampharos - Attract - TM45
  (181, 18100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 41),
  -- Ampharos - Focus Blast - TM52
  (181, 18100, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 42),
  -- Ampharos - Fling - TM56
  (181, 18100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 43),
  -- Ampharos - Charge Beam - TM57
  (181, 18100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 44),
  -- Ampharos - Endure - TM58
  (181, 18100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 45),
  -- Ampharos - Dragon Pulse - TM59
  (181, 18100, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 46),
  -- Ampharos - Giga Impact - TM68
  (181, 18100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Ampharos - Flash - TM70
  (181, 18100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 48),
  -- Ampharos - Thunder Wave - TM73
  (181, 18100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 49),
  -- Ampharos - Sleep Talk - TM82
  (181, 18100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 50),
  -- Ampharos - Bulldoze - TM83
  (181, 18100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 51),
  -- Ampharos - Swagger - TM87
  (181, 18100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Ampharos - Substitute - TM90
  (181, 18100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Ampharos - Strength - TM96
  (181, 18100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Ampharos - Rock Smash - TM98
  (181, 18100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 55),
  -- Ampharos - Rock Climb - TM100
  (181, 18100, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 56),
  -- Ampharos - After You - Egg
  (181, 18100, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ampharos - Agility - Egg
  (181, 18100, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ampharos - Body Slam - Egg
  (181, 18100, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ampharos - Charge - Egg
  (181, 18100, 268, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Ampharos - Eerie Impulse - Egg
  (181, 18100, 598, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Ampharos - Electric Terrain - Egg
  (181, 18100, 604, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Ampharos - Flatter - Egg
  (181, 18100, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Ampharos - Sand Attack - Egg
  (181, 18100, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ampharos - Screech - Egg
  (181, 18100, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ampharos - Take Down - Egg
  (181, 18100, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Bellossom - Petal Blizzard - Starting Move
  (182, 18200, 572, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Bellossom - Quiver Dance - Starting Move
  (182, 18200, 483, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Bellossom - Mega Drain - Starting Move
  (182, 18200, 72, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Bellossom - Poison Powder - Starting Move
  (182, 18200, 77, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Bellossom - Stun Spore - Starting Move
  (182, 18200, 78, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Bellossom - Sleep Powder - Starting Move
  (182, 18200, 79, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Bellossom - Giga Drain - Starting Move
  (182, 18200, 202, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Bellossom - Toxic - Starting Move
  (182, 18200, 92, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Bellossom - Moonblast - Starting Move
  (182, 18200, 585, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Bellossom - Grassy Terrain - Starting Move
  (182, 18200, 580, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Bellossom - Moonlight - Starting Move
  (182, 18200, 236, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Bellossom - Petal Dance - Starting Move
  (182, 18200, 80, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Bellossom - Absorb - Starting Move
  (182, 18200, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Bellossom - Growth - Starting Move
  (182, 18200, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Bellossom - Acid - Starting Move
  (182, 18200, 51, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Bellossom - Sweet Scent - Starting Move
  (182, 18200, 230, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Bellossom - Petal Blizzard - Evolution
  (182, 18200, 572, 21, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Bellossom - Toxic - TM06
  (182, 18200, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 18),
  -- Bellossom - Bullet Seed - TM09
  (182, 18200, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 19),
  -- Bellossom - Sunny Day - TM11
  (182, 18200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Bellossom - Hyper Beam - TM15
  (182, 18200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Bellossom - Protect - TM17
  (182, 18200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Bellossom - Giga Drain - TM19
  (182, 18200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 23),
  -- Bellossom - Safeguard - TM20
  (182, 18200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Bellossom - Dazzling Gleam - TM21
  (182, 18200, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 25),
  -- Bellossom - Solar Beam - TM22
  (182, 18200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Bellossom - Double Team - TM32
  (182, 18200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Bellossom - Sludge Bomb - TM36
  (182, 18200, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 28),
  -- Bellossom - Facade - TM42
  (182, 18200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Bellossom - Rest - TM44
  (182, 18200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Bellossom - Attract - TM45
  (182, 18200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Bellossom - Energy Ball - TM53
  (182, 18200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 32),
  -- Bellossom - Fling - TM56
  (182, 18200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 33),
  -- Bellossom - Endure - TM58
  (182, 18200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Bellossom - Drain Punch - TM60
  (182, 18200, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 35),
  -- Bellossom - Giga Impact - TM68
  (182, 18200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Bellossom - Flash - TM70
  (182, 18200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Bellossom - Swords Dance - TM75
  (182, 18200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 38),
  -- Bellossom - Sleep Talk - TM82
  (182, 18200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Bellossom - Grass Knot - TM86
  (182, 18200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 40),
  -- Bellossom - Swagger - TM87
  (182, 18200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Bellossom - Substitute - TM90
  (182, 18200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Bellossom - Cut - TM93
  (182, 18200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 43),
  -- Bellossom - After You - Egg
  (182, 18200, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bellossom - Charm - Egg
  (182, 18200, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bellossom - Flail - Egg
  (182, 18200, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bellossom - Ingrain - Egg
  (182, 18200, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bellossom - Leech Seed - Egg
  (182, 18200, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bellossom - Nature Power - Egg
  (182, 18200, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bellossom - Razor Leaf - Egg
  (182, 18200, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bellossom - Strength Sap - Egg
  (182, 18200, 668, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bellossom - Synthesis - Egg
  (182, 18200, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bellossom - Teeter Dance - Egg
  (182, 18200, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bellossom - Tickle - Egg
  (182, 18200, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Marill - Rollout - Starting Move
  (183, 18300, 205, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Marill - Defense Curl - Starting Move
  (183, 18300, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Marill - Splash - Starting Move
  (183, 18300, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Marill - Tackle - Starting Move
  (183, 18300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Marill - Water Gun - Starting Move
  (183, 18300, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Marill - Tail Whip - Starting Move
  (183, 18300, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Marill - Helping Hand - Starting Move
  (183, 18300, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Marill - Bubble Beam - Level 6
  (183, 18300, 61, 21, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Marill - Charm - Level 9
  (183, 18300, 204, 21, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Marill - Slam - Level 12
  (183, 18300, 21, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Marill - Bounce - Level 15
  (183, 18300, 340, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Marill - Aqua Tail - Level 19
  (183, 18300, 401, 21, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Marill - Play Rough - Level 21
  (183, 18300, 583, 21, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Marill - Aqua Ring - Level 24
  (183, 18300, 392, 21, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Marill - Rain Dance - Level 27
  (183, 18300, 240, 21, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Marill - Hydro Pump - Level 30
  (183, 18300, 56, 21, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Marill - Double-Edge - Level 33
  (183, 18300, 38, 21, NULL, 1, 33, NULL, NULL, NULL, 17),
  -- Marill - Superpower - Level 36
  (183, 18300, 276, 21, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Marill - Focus Punch - TM01
  (183, 18300, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 19),
  -- Marill - Water Pulse - TM03
  (183, 18300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Marill - Hail - TM07
  (183, 18300, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 21),
  -- Marill - Work Up - TM10
  (183, 18300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Marill - Ice Beam - TM13
  (183, 18300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Marill - Blizzard - TM14
  (183, 18300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Marill - Light Screen - TM16
  (183, 18300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 25),
  -- Marill - Protect - TM17
  (183, 18300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Marill - Rain Dance - TM18
  (183, 18300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Marill - Iron Tail - TM23
  (183, 18300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 28),
  -- Marill - Dig - TM28
  (183, 18300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Marill - Brick Break - TM31
  (183, 18300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 30),
  -- Marill - Double Team - TM32
  (183, 18300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Marill - Facade - TM42
  (183, 18300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Marill - Rest - TM44
  (183, 18300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Marill - Attract - TM45
  (183, 18300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Marill - Scald - TM49
  (183, 18300, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 35),
  -- Marill - Fling - TM56
  (183, 18300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Marill - Endure - TM58
  (183, 18300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Marill - Sleep Talk - TM82
  (183, 18300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Marill - Grass Knot - TM86
  (183, 18300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 39),
  -- Marill - Swagger - TM87
  (183, 18300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Marill - Substitute - TM90
  (183, 18300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Marill - Surf - TM95
  (183, 18300, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 42),
  -- Marill - Strength - TM96
  (183, 18300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 43),
  -- Marill - Rock Smash - TM98
  (183, 18300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Marill - Waterfall - TM99
  (183, 18300, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 45),
  -- Marill - Amnesia - Egg
  (183, 18300, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Marill - Aqua Jet - Egg
  (183, 18300, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Marill - Belly Drum - Egg
  (183, 18300, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Marill - Body Slam - Egg
  (183, 18300, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Marill - Copycat - Egg
  (183, 18300, 383, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Marill - Encore - Egg
  (183, 18300, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Marill - Fake Tears - Egg
  (183, 18300, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Marill - Future Sight - Egg
  (183, 18300, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Marill - Muddy Water - Egg
  (183, 18300, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Marill - Perish Song - Egg
  (183, 18300, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Marill - Present - Egg
  (183, 18300, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Marill - Sing - Egg
  (183, 18300, 47, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Marill - Slam - Egg
  (183, 18300, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Marill - Soak - Egg
  (183, 18300, 487, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Marill - Superpower - Egg
  (183, 18300, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Marill - Supersonic - Egg
  (183, 18300, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Marill - Tickle - Egg
  (183, 18300, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Azumarill - Rollout - Starting Move
  (184, 18400, 205, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Azumarill - Defense Curl - Starting Move
  (184, 18400, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Azumarill - Splash - Starting Move
  (184, 18400, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Azumarill - Tackle - Starting Move
  (184, 18400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Azumarill - Water Gun - Starting Move
  (184, 18400, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Azumarill - Tail Whip - Starting Move
  (184, 18400, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Azumarill - Helping Hand - Starting Move
  (184, 18400, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Azumarill - Bubble Beam - Level 6
  (184, 18400, 61, 21, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Azumarill - Charm - Level 9
  (184, 18400, 204, 21, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Azumarill - Slam - Level 12
  (184, 18400, 21, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Azumarill - Bounce - Level 15
  (184, 18400, 340, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Azumarill - Aqua Tail - Level 21
  (184, 18400, 401, 21, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Azumarill - Play Rough - Level 25
  (184, 18400, 583, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Azumarill - Aqua Ring - Level 30
  (184, 18400, 392, 21, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Azumarill - Rain Dance - Level 35
  (184, 18400, 240, 21, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Azumarill - Hydro Pump - Level 40
  (184, 18400, 56, 21, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Azumarill - Double-Edge - Level 45
  (184, 18400, 38, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Azumarill - Superpower - Level 50
  (184, 18400, 276, 21, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Azumarill - Focus Punch - TM01
  (184, 18400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 19),
  -- Azumarill - Water Pulse - TM03
  (184, 18400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Azumarill - Hail - TM07
  (184, 18400, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 21),
  -- Azumarill - Work Up - TM10
  (184, 18400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Azumarill - Ice Beam - TM13
  (184, 18400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Azumarill - Blizzard - TM14
  (184, 18400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Azumarill - Hyper Beam - TM15
  (184, 18400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Azumarill - Light Screen - TM16
  (184, 18400, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 26),
  -- Azumarill - Protect - TM17
  (184, 18400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Azumarill - Rain Dance - TM18
  (184, 18400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Azumarill - Iron Tail - TM23
  (184, 18400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Azumarill - Dig - TM28
  (184, 18400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Azumarill - Brick Break - TM31
  (184, 18400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Azumarill - Double Team - TM32
  (184, 18400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Azumarill - Facade - TM42
  (184, 18400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Azumarill - Rest - TM44
  (184, 18400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Azumarill - Attract - TM45
  (184, 18400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Azumarill - Scald - TM49
  (184, 18400, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 36),
  -- Azumarill - Focus Blast - TM52
  (184, 18400, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Azumarill - Fling - TM56
  (184, 18400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Azumarill - Endure - TM58
  (184, 18400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Azumarill - Giga Impact - TM68
  (184, 18400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Azumarill - Sleep Talk - TM82
  (184, 18400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Azumarill - Bulldoze - TM83
  (184, 18400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 42),
  -- Azumarill - Grass Knot - TM86
  (184, 18400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 43),
  -- Azumarill - Swagger - TM87
  (184, 18400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Azumarill - Substitute - TM90
  (184, 18400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Azumarill - Surf - TM95
  (184, 18400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 46),
  -- Azumarill - Strength - TM96
  (184, 18400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Azumarill - Rock Smash - TM98
  (184, 18400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Azumarill - Waterfall - TM99
  (184, 18400, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 49),
  -- Azumarill - Amnesia - Egg
  (184, 18400, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Azumarill - Aqua Jet - Egg
  (184, 18400, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Azumarill - Belly Drum - Egg
  (184, 18400, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Azumarill - Body Slam - Egg
  (184, 18400, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Azumarill - Copycat - Egg
  (184, 18400, 383, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Azumarill - Encore - Egg
  (184, 18400, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Azumarill - Fake Tears - Egg
  (184, 18400, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Azumarill - Future Sight - Egg
  (184, 18400, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Azumarill - Muddy Water - Egg
  (184, 18400, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Azumarill - Perish Song - Egg
  (184, 18400, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Azumarill - Present - Egg
  (184, 18400, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Azumarill - Sing - Egg
  (184, 18400, 47, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Azumarill - Slam - Egg
  (184, 18400, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Azumarill - Soak - Egg
  (184, 18400, 487, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Azumarill - Superpower - Egg
  (184, 18400, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Azumarill - Supersonic - Egg
  (184, 18400, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Azumarill - Tickle - Egg
  (184, 18400, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sudowoodo - Slam - Starting Move
  (185, 18500, 21, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Sudowoodo - Stone Edge - Starting Move
  (185, 18500, 444, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Sudowoodo - Hammer Arm - Starting Move
  (185, 18500, 359, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Sudowoodo - Wood Hammer - Starting Move
  (185, 18500, 452, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Sudowoodo - Fake Tears - Starting Move
  (185, 18500, 313, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Sudowoodo - Copycat - Starting Move
  (185, 18500, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Sudowoodo - Flail - Starting Move
  (185, 18500, 175, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Sudowoodo - Rock Throw - Starting Move
  (185, 18500, 88, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Sudowoodo - Slam - Evolution
  (185, 18500, 21, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Sudowoodo - Block - Level 12
  (185, 18500, 335, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Sudowoodo - Mimic - Level 16
  (185, 18500, 102, 21, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Sudowoodo - Rock Tomb - Level 20
  (185, 18500, 317, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Sudowoodo - Tearful Look - Level 24
  (185, 18500, 715, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Sudowoodo - Sucker Punch - Level 28
  (185, 18500, 389, 21, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Sudowoodo - Rock Slide - Level 32
  (185, 18500, 157, 21, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Sudowoodo - Low Kick - Level 36
  (185, 18500, 67, 21, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Sudowoodo - Counter - Level 40
  (185, 18500, 68, 21, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Sudowoodo - Double-Edge - Level 44
  (185, 18500, 38, 21, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Sudowoodo - Head Smash - Level 48
  (185, 18500, 457, 21, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Sudowoodo - Focus Punch - TM01
  (185, 18500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Sudowoodo - Calm Mind - TM04
  (185, 18500, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 21),
  -- Sudowoodo - Sunny Day - TM11
  (185, 18500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Sudowoodo - Taunt - TM12
  (185, 18500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 23),
  -- Sudowoodo - Protect - TM17
  (185, 18500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Sudowoodo - Earthquake - TM26
  (185, 18500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Sudowoodo - Dig - TM28
  (185, 18500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Sudowoodo - Brick Break - TM31
  (185, 18500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Sudowoodo - Double Team - TM32
  (185, 18500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Sudowoodo - Sandstorm - TM37
  (185, 18500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 29),
  -- Sudowoodo - Rock Tomb - TM39
  (185, 18500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Sudowoodo - Torment - TM41
  (185, 18500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 31),
  -- Sudowoodo - Facade - TM42
  (185, 18500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Sudowoodo - Rest - TM44
  (185, 18500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Sudowoodo - Attract - TM45
  (185, 18500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Sudowoodo - Thief - TM46
  (185, 18500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Sudowoodo - Fling - TM56
  (185, 18500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Sudowoodo - Endure - TM58
  (185, 18500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Sudowoodo - Explosion - TM64
  (185, 18500, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 38),
  -- Sudowoodo - Rock Polish - TM69
  (185, 18500, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 39),
  -- Sudowoodo - Stone Edge - TM71
  (185, 18500, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 40),
  -- Sudowoodo - Stealth Rock - TM76
  (185, 18500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 41),
  -- Sudowoodo - Psych Up - TM77
  (185, 18500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 42),
  -- Sudowoodo - Rock Slide - TM80
  (185, 18500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Sudowoodo - Sleep Talk - TM82
  (185, 18500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Sudowoodo - Bulldoze - TM83
  (185, 18500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Sudowoodo - Swagger - TM87
  (185, 18500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Sudowoodo - Substitute - TM90
  (185, 18500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Sudowoodo - Strength - TM96
  (185, 18500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Sudowoodo - Rock Smash - TM98
  (185, 18500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Sudowoodo - Curse - Egg
  (185, 18500, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sudowoodo - Defense Curl - Egg
  (185, 18500, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sudowoodo - Harden - Egg
  (185, 18500, 106, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sudowoodo - Headbutt - Egg
  (185, 18500, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sudowoodo - Rollout - Egg
  (185, 18500, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sudowoodo - Sand Tomb - Egg
  (185, 18500, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sudowoodo - Self-Destruct - Egg
  (185, 18500, 120, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Politoed - Bounce - Starting Move
  (186, 18600, 340, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Politoed - Swagger - Starting Move
  (186, 18600, 207, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Politoed - Hyper Voice - Starting Move
  (186, 18600, 304, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Politoed - Perish Song - Starting Move
  (186, 18600, 195, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Politoed - Bubble Beam - Starting Move
  (186, 18600, 61, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Politoed - Rain Dance - Starting Move
  (186, 18600, 240, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Politoed - Body Slam - Starting Move
  (186, 18600, 34, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Politoed - Earth Power - Starting Move
  (186, 18600, 414, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Politoed - Hydro Pump - Starting Move
  (186, 18600, 56, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Politoed - Belly Drum - Starting Move
  (186, 18600, 187, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Politoed - Double-Edge - Starting Move
  (186, 18600, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Politoed - Water Gun - Starting Move
  (186, 18600, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Politoed - Hypnosis - Starting Move
  (186, 18600, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Politoed - Pound - Starting Move
  (186, 18600, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Politoed - Mud Shot - Starting Move
  (186, 18600, 341, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Politoed - Bounce - Evolution
  (186, 18600, 340, 21, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Politoed - Focus Punch - TM01
  (186, 18600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Politoed - Water Pulse - TM03
  (186, 18600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Politoed - Hail - TM07
  (186, 18600, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Politoed - Ice Beam - TM13
  (186, 18600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Politoed - Blizzard - TM14
  (186, 18600, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Politoed - Hyper Beam - TM15
  (186, 18600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Politoed - Protect - TM17
  (186, 18600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Politoed - Rain Dance - TM18
  (186, 18600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Politoed - Earthquake - TM26
  (186, 18600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Politoed - Dig - TM28
  (186, 18600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Politoed - Psychic - TM29
  (186, 18600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Politoed - Brick Break - TM31
  (186, 18600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Politoed - Double Team - TM32
  (186, 18600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Politoed - Facade - TM42
  (186, 18600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Politoed - Rest - TM44
  (186, 18600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Politoed - Attract - TM45
  (186, 18600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Politoed - Thief - TM46
  (186, 18600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Politoed - Scald - TM49
  (186, 18600, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 34),
  -- Politoed - Focus Blast - TM52
  (186, 18600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 35),
  -- Politoed - Fling - TM56
  (186, 18600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Politoed - Endure - TM58
  (186, 18600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Politoed - Payback - TM66
  (186, 18600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 38),
  -- Politoed - Giga Impact - TM68
  (186, 18600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 39),
  -- Politoed - Sleep Talk - TM82
  (186, 18600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Politoed - Bulldoze - TM83
  (186, 18600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Politoed - Swagger - TM87
  (186, 18600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Politoed - Substitute - TM90
  (186, 18600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Politoed - Surf - TM95
  (186, 18600, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 44),
  -- Politoed - Strength - TM96
  (186, 18600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Politoed - Rock Smash - TM98
  (186, 18600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Politoed - Waterfall - TM99
  (186, 18600, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 47),
  -- Politoed - Bubble Beam - Egg
  (186, 18600, 61, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Politoed - Encore - Egg
  (186, 18600, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Politoed - Endeavor - Egg
  (186, 18600, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Politoed - Haze - Egg
  (186, 18600, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Politoed - Mind Reader - Egg
  (186, 18600, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Politoed - Mist - Egg
  (186, 18600, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Politoed - Mud Shot - Egg
  (186, 18600, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Politoed - Splash - Egg
  (186, 18600, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hoppip - Splash - Starting Move
  (187, 18700, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Hoppip - Absorb - Starting Move
  (187, 18700, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Hoppip - Synthesis - Level 4
  (187, 18700, 235, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Hoppip - Tail Whip - Level 6
  (187, 18700, 39, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Hoppip - Tackle - Level 8
  (187, 18700, 33, 21, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Hoppip - Fairy Wind - Level 10
  (187, 18700, 584, 21, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Hoppip - Poison Powder - Level 12
  (187, 18700, 77, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Hoppip - Stun Spore - Level 14
  (187, 18700, 78, 21, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Hoppip - Sleep Powder - Level 16
  (187, 18700, 79, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Hoppip - Bullet Seed - Level 19
  (187, 18700, 331, 21, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Hoppip - Leech Seed - Level 22
  (187, 18700, 73, 21, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Hoppip - Mega Drain - Level 25
  (187, 18700, 72, 21, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Hoppip - Acrobatics - Level 28
  (187, 18700, 512, 21, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Hoppip - Rage Powder - Level 31
  (187, 18700, 476, 21, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Hoppip - Cotton Spore - Level 34
  (187, 18700, 178, 21, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Hoppip - U-turn - Level 37
  (187, 18700, 369, 21, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Hoppip - Worry Seed - Level 40
  (187, 18700, 388, 21, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Hoppip - Giga Drain - Level 43
  (187, 18700, 202, 21, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Hoppip - Bounce - Level 46
  (187, 18700, 340, 21, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Hoppip - Memento - Level 49
  (187, 18700, 262, 21, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Hoppip - Bullet Seed - TM09
  (187, 18700, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 21),
  -- Hoppip - Sunny Day - TM11
  (187, 18700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Hoppip - Protect - TM17
  (187, 18700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Hoppip - Giga Drain - TM19
  (187, 18700, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 24),
  -- Hoppip - Dazzling Gleam - TM21
  (187, 18700, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 25),
  -- Hoppip - Solar Beam - TM22
  (187, 18700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Hoppip - Double Team - TM32
  (187, 18700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Hoppip - Reflect - TM33
  (187, 18700, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Hoppip - Aerial Ace - TM40
  (187, 18700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Hoppip - Facade - TM42
  (187, 18700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Hoppip - Rest - TM44
  (187, 18700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Hoppip - Attract - TM45
  (187, 18700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Hoppip - Energy Ball - TM53
  (187, 18700, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 33),
  -- Hoppip - Endure - TM58
  (187, 18700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Hoppip - Flash - TM70
  (187, 18700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 35),
  -- Hoppip - Swords Dance - TM75
  (187, 18700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 36),
  -- Hoppip - Psych Up - TM77
  (187, 18700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 37),
  -- Hoppip - Sleep Talk - TM82
  (187, 18700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Hoppip - Grass Knot - TM86
  (187, 18700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 39),
  -- Hoppip - Swagger - TM87
  (187, 18700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Hoppip - U-turn - TM89
  (187, 18700, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 41),
  -- Hoppip - Substitute - TM90
  (187, 18700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Hoppip - Amnesia - Egg
  (187, 18700, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Hoppip - Aromatherapy - Egg
  (187, 18700, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Hoppip - Confusion - Egg
  (187, 18700, 93, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hoppip - Cotton Guard - Egg
  (187, 18700, 538, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hoppip - Double-Edge - Egg
  (187, 18700, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hoppip - Encore - Egg
  (187, 18700, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hoppip - Grassy Terrain - Egg
  (187, 18700, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hoppip - Helping Hand - Egg
  (187, 18700, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hoppip - Seed Bomb - Egg
  (187, 18700, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hoppip - Strength Sap - Egg
  (187, 18700, 668, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hoppip - Worry Seed - Egg
  (187, 18700, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skiploom - Splash - Starting Move
  (188, 18800, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Skiploom - Absorb - Starting Move
  (188, 18800, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Skiploom - Synthesis - Starting Move
  (188, 18800, 235, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Skiploom - Tail Whip - Starting Move
  (188, 18800, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Skiploom - Synthesis - Level 4
  (188, 18800, 235, 21, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Skiploom - Tail Whip - Level 6
  (188, 18800, 39, 21, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Skiploom - Tackle - Level 8
  (188, 18800, 33, 21, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Skiploom - Fairy Wind - Level 10
  (188, 18800, 584, 21, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Skiploom - Poison Powder - Level 12
  (188, 18800, 77, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Skiploom - Stun Spore - Level 14
  (188, 18800, 78, 21, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Skiploom - Sleep Powder - Level 16
  (188, 18800, 79, 21, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Skiploom - Bullet Seed - Level 20
  (188, 18800, 331, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Skiploom - Leech Seed - Level 24
  (188, 18800, 73, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Skiploom - Mega Drain - Level 28
  (188, 18800, 72, 21, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Skiploom - Acrobatics - Level 32
  (188, 18800, 512, 21, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Skiploom - Rage Powder - Level 36
  (188, 18800, 476, 21, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Skiploom - Cotton Spore - Level 40
  (188, 18800, 178, 21, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Skiploom - U-turn - Level 44
  (188, 18800, 369, 21, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Skiploom - Worry Seed - Level 48
  (188, 18800, 388, 21, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Skiploom - Giga Drain - Level 52
  (188, 18800, 202, 21, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Skiploom - Bounce - Level 56
  (188, 18800, 340, 21, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Skiploom - Memento - Level 60
  (188, 18800, 262, 21, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Skiploom - Bullet Seed - TM09
  (188, 18800, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 23),
  -- Skiploom - Sunny Day - TM11
  (188, 18800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 24),
  -- Skiploom - Protect - TM17
  (188, 18800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Skiploom - Giga Drain - TM19
  (188, 18800, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 26),
  -- Skiploom - Dazzling Gleam - TM21
  (188, 18800, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 27),
  -- Skiploom - Solar Beam - TM22
  (188, 18800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Skiploom - Double Team - TM32
  (188, 18800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Skiploom - Reflect - TM33
  (188, 18800, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 30),
  -- Skiploom - Aerial Ace - TM40
  (188, 18800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Skiploom - Facade - TM42
  (188, 18800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Skiploom - Rest - TM44
  (188, 18800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Skiploom - Attract - TM45
  (188, 18800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Skiploom - Energy Ball - TM53
  (188, 18800, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 35),
  -- Skiploom - Endure - TM58
  (188, 18800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Skiploom - Flash - TM70
  (188, 18800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Skiploom - Swords Dance - TM75
  (188, 18800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 38),
  -- Skiploom - Psych Up - TM77
  (188, 18800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 39),
  -- Skiploom - Sleep Talk - TM82
  (188, 18800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Skiploom - Grass Knot - TM86
  (188, 18800, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 41),
  -- Skiploom - Swagger - TM87
  (188, 18800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Skiploom - U-turn - TM89
  (188, 18800, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 43),
  -- Skiploom - Substitute - TM90
  (188, 18800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Skiploom - Amnesia - Egg
  (188, 18800, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Skiploom - Aromatherapy - Egg
  (188, 18800, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Skiploom - Confusion - Egg
  (188, 18800, 93, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Skiploom - Cotton Guard - Egg
  (188, 18800, 538, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Skiploom - Double-Edge - Egg
  (188, 18800, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Skiploom - Encore - Egg
  (188, 18800, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Skiploom - Grassy Terrain - Egg
  (188, 18800, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skiploom - Helping Hand - Egg
  (188, 18800, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Skiploom - Seed Bomb - Egg
  (188, 18800, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skiploom - Strength Sap - Egg
  (188, 18800, 668, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skiploom - Worry Seed - Egg
  (188, 18800, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Jumpluff - Splash - Starting Move
  (189, 18900, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Jumpluff - Absorb - Starting Move
  (189, 18900, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Jumpluff - Synthesis - Starting Move
  (189, 18900, 235, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Jumpluff - Tail Whip - Starting Move
  (189, 18900, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Jumpluff - Synthesis - Level 4
  (189, 18900, 235, 21, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Jumpluff - Tail Whip - Level 6
  (189, 18900, 39, 21, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Jumpluff - Tackle - Level 8
  (189, 18900, 33, 21, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Jumpluff - Fairy Wind - Level 10
  (189, 18900, 584, 21, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Jumpluff - Poison Powder - Level 12
  (189, 18900, 77, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Jumpluff - Stun Spore - Level 14
  (189, 18900, 78, 21, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Jumpluff - Sleep Powder - Level 16
  (189, 18900, 79, 21, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Jumpluff - Bullet Seed - Level 20
  (189, 18900, 331, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Jumpluff - Leech Seed - Level 24
  (189, 18900, 73, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Jumpluff - Mega Drain - Level 29
  (189, 18900, 72, 21, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Jumpluff - Acrobatics - Level 34
  (189, 18900, 512, 21, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Jumpluff - Rage Powder - Level 39
  (189, 18900, 476, 21, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Jumpluff - Cotton Spore - Level 44
  (189, 18900, 178, 21, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Jumpluff - U-turn - Level 49
  (189, 18900, 369, 21, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Jumpluff - Worry Seed - Level 54
  (189, 18900, 388, 21, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Jumpluff - Giga Drain - Level 59
  (189, 18900, 202, 21, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Jumpluff - Bounce - Level 64
  (189, 18900, 340, 21, NULL, 1, 64, NULL, NULL, NULL, 21),
  -- Jumpluff - Memento - Level 69
  (189, 18900, 262, 21, NULL, 1, 69, NULL, NULL, NULL, 22),
  -- Jumpluff - Bullet Seed - TM09
  (189, 18900, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 23),
  -- Jumpluff - Sunny Day - TM11
  (189, 18900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 24),
  -- Jumpluff - Hyper Beam - TM15
  (189, 18900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Jumpluff - Protect - TM17
  (189, 18900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Jumpluff - Giga Drain - TM19
  (189, 18900, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Jumpluff - Dazzling Gleam - TM21
  (189, 18900, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 28),
  -- Jumpluff - Solar Beam - TM22
  (189, 18900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Jumpluff - Double Team - TM32
  (189, 18900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Jumpluff - Reflect - TM33
  (189, 18900, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 31),
  -- Jumpluff - Aerial Ace - TM40
  (189, 18900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 32),
  -- Jumpluff - Facade - TM42
  (189, 18900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Jumpluff - Rest - TM44
  (189, 18900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Jumpluff - Attract - TM45
  (189, 18900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Jumpluff - Energy Ball - TM53
  (189, 18900, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 36),
  -- Jumpluff - Endure - TM58
  (189, 18900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Jumpluff - Giga Impact - TM68
  (189, 18900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Jumpluff - Flash - TM70
  (189, 18900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 39),
  -- Jumpluff - Swords Dance - TM75
  (189, 18900, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 40),
  -- Jumpluff - Psych Up - TM77
  (189, 18900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Jumpluff - Sleep Talk - TM82
  (189, 18900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Jumpluff - Grass Knot - TM86
  (189, 18900, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 43),
  -- Jumpluff - Swagger - TM87
  (189, 18900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Jumpluff - U-turn - TM89
  (189, 18900, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 45),
  -- Jumpluff - Substitute - TM90
  (189, 18900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Jumpluff - Amnesia - Egg
  (189, 18900, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Jumpluff - Aromatherapy - Egg
  (189, 18900, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Jumpluff - Confusion - Egg
  (189, 18900, 93, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Jumpluff - Cotton Guard - Egg
  (189, 18900, 538, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Jumpluff - Double-Edge - Egg
  (189, 18900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Jumpluff - Encore - Egg
  (189, 18900, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Jumpluff - Grassy Terrain - Egg
  (189, 18900, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Jumpluff - Helping Hand - Egg
  (189, 18900, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Jumpluff - Seed Bomb - Egg
  (189, 18900, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Jumpluff - Strength Sap - Egg
  (189, 18900, 668, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Jumpluff - Worry Seed - Egg
  (189, 18900, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Aipom - Scratch - Starting Move
  (190, 19000, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Aipom - Tail Whip - Starting Move
  (190, 19000, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Aipom - Sand Attack - Level 4
  (190, 19000, 28, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Aipom - Astonish - Level 8
  (190, 19000, 310, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Aipom - Baton Pass - Level 11
  (190, 19000, 226, 21, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Aipom - Tickle - Level 15
  (190, 19000, 321, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Aipom - Fury Swipes - Level 18
  (190, 19000, 154, 21, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Aipom - Swift - Level 22
  (190, 19000, 129, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Aipom - Screech - Level 25
  (190, 19000, 103, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Aipom - Agility - Level 29
  (190, 19000, 97, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Aipom - Double Hit - Level 32
  (190, 19000, 458, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Aipom - Fling - Level 36
  (190, 19000, 374, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Aipom - Nasty Plot - Level 39
  (190, 19000, 417, 21, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Aipom - Last Resort - Level 43
  (190, 19000, 387, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Aipom - Focus Punch - TM01
  (190, 19000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Aipom - Water Pulse - TM03
  (190, 19000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Aipom - Work Up - TM10
  (190, 19000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Aipom - Sunny Day - TM11
  (190, 19000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Aipom - Taunt - TM12
  (190, 19000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Aipom - Protect - TM17
  (190, 19000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Aipom - Rain Dance - TM18
  (190, 19000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Aipom - Solar Beam - TM22
  (190, 19000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Aipom - Iron Tail - TM23
  (190, 19000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Aipom - Thunderbolt - TM24
  (190, 19000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Aipom - Thunder - TM25
  (190, 19000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Aipom - Low Sweep - TM27
  (190, 19000, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 26),
  -- Aipom - Dig - TM28
  (190, 19000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Aipom - Shadow Ball - TM30
  (190, 19000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Aipom - Brick Break - TM31
  (190, 19000, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Aipom - Double Team - TM32
  (190, 19000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Aipom - Shock Wave - TM34
  (190, 19000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 31),
  -- Aipom - Aerial Ace - TM40
  (190, 19000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 32),
  -- Aipom - Facade - TM42
  (190, 19000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Aipom - Rest - TM44
  (190, 19000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Aipom - Attract - TM45
  (190, 19000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Aipom - Thief - TM46
  (190, 19000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Aipom - Fling - TM56
  (190, 19000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Aipom - Endure - TM58
  (190, 19000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Aipom - Nasty Plot - TM63
  (190, 19000, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 39),
  -- Aipom - Shadow Claw - TM65
  (190, 19000, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 40),
  -- Aipom - Payback - TM66
  (190, 19000, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 41),
  -- Aipom - Thunder Wave - TM73
  (190, 19000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 42),
  -- Aipom - Sleep Talk - TM82
  (190, 19000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Aipom - Dream Eater - TM85
  (190, 19000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 44),
  -- Aipom - Grass Knot - TM86
  (190, 19000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 45),
  -- Aipom - Swagger - TM87
  (190, 19000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Aipom - U-turn - TM89
  (190, 19000, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 47),
  -- Aipom - Substitute - TM90
  (190, 19000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Aipom - Cut - TM93
  (190, 19000, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 49),
  -- Aipom - Strength - TM96
  (190, 19000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 50),
  -- Aipom - Rock Smash - TM98
  (190, 19000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Aipom - Agility - Egg
  (190, 19000, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Aipom - Beat Up - Egg
  (190, 19000, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Aipom - Bounce - Egg
  (190, 19000, 340, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Aipom - Counter - Egg
  (190, 19000, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Aipom - Covet - Egg
  (190, 19000, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Aipom - Fake Out - Egg
  (190, 19000, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Aipom - Quick Guard - Egg
  (190, 19000, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Aipom - Revenge - Egg
  (190, 19000, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Aipom - Screech - Egg
  (190, 19000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Aipom - Slam - Egg
  (190, 19000, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Aipom - Spite - Egg
  (190, 19000, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Aipom - Switcheroo - Egg
  (190, 19000, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sunkern - Tackle - Starting Move
  (191, 19100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Sunkern - Growth - Starting Move
  (191, 19100, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Sunkern - Ingrain - Level 4
  (191, 19100, 275, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sunkern - Absorb - Level 7
  (191, 19100, 71, 21, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Sunkern - Mega Drain - Level 10
  (191, 19100, 72, 21, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Sunkern - Leech Seed - Level 13
  (191, 19100, 73, 21, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sunkern - Razor Leaf - Level 16
  (191, 19100, 75, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Sunkern - Worry Seed - Level 19
  (191, 19100, 388, 21, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Sunkern - Giga Drain - Level 22
  (191, 19100, 202, 21, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Sunkern - Endeavor - Level 25
  (191, 19100, 283, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Sunkern - Synthesis - Level 28
  (191, 19100, 235, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Sunkern - Solar Beam - Level 34
  (191, 19100, 76, 21, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Sunkern - Double-Edge - Level 37
  (191, 19100, 38, 21, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Sunkern - Sunny Day - Level 40
  (191, 19100, 241, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Sunkern - Seed Bomb - Level 43
  (191, 19100, 402, 21, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Sunkern - Bullet Seed - TM09
  (191, 19100, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 16),
  -- Sunkern - Sunny Day - TM11
  (191, 19100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Sunkern - Light Screen - TM16
  (191, 19100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 18),
  -- Sunkern - Protect - TM17
  (191, 19100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Sunkern - Giga Drain - TM19
  (191, 19100, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 20),
  -- Sunkern - Safeguard - TM20
  (191, 19100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 21),
  -- Sunkern - Solar Beam - TM22
  (191, 19100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Sunkern - Double Team - TM32
  (191, 19100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Sunkern - Sludge Bomb - TM36
  (191, 19100, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 24),
  -- Sunkern - Facade - TM42
  (191, 19100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Sunkern - Rest - TM44
  (191, 19100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Sunkern - Attract - TM45
  (191, 19100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Sunkern - Energy Ball - TM53
  (191, 19100, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 28),
  -- Sunkern - Endure - TM58
  (191, 19100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Sunkern - Flash - TM70
  (191, 19100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 30),
  -- Sunkern - Sleep Talk - TM82
  (191, 19100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 31),
  -- Sunkern - Grass Knot - TM86
  (191, 19100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 32),
  -- Sunkern - Swagger - TM87
  (191, 19100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Sunkern - Substitute - TM90
  (191, 19100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Sunkern - Cut - TM93
  (191, 19100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 35),
  -- Sunkern - Curse - Egg
  (191, 19100, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Sunkern - Encore - Egg
  (191, 19100, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Sunkern - Grassy Terrain - Egg
  (191, 19100, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Sunkern - Helping Hand - Egg
  (191, 19100, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sunkern - Ingrain - Egg
  (191, 19100, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sunkern - Leech Seed - Egg
  (191, 19100, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sunkern - Morning Sun - Egg
  (191, 19100, 234, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sunkern - Nature Power - Egg
  (191, 19100, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sunkern - Sweet Scent - Egg
  (191, 19100, 230, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Sunflora - Flower Shield - Starting Move
  (192, 19200, 579, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Sunflora - Endeavor - Starting Move
  (192, 19200, 283, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Sunflora - Synthesis - Starting Move
  (192, 19200, 235, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Sunflora - Seed Bomb - Starting Move
  (192, 19200, 402, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Sunflora - Pound - Starting Move
  (192, 19200, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Sunflora - Growth - Starting Move
  (192, 19200, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Sunflora - Tackle - Starting Move
  (192, 19200, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Sunflora - Ingrain - Level 4
  (192, 19200, 275, 21, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Sunflora - Absorb - Level 7
  (192, 19200, 71, 21, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Sunflora - Mega Drain - Level 10
  (192, 19200, 72, 21, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Sunflora - Leech Seed - Level 13
  (192, 19200, 73, 21, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Sunflora - Razor Leaf - Level 16
  (192, 19200, 75, 21, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Sunflora - Worry Seed - Level 19
  (192, 19200, 388, 21, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Sunflora - Giga Drain - Level 22
  (192, 19200, 202, 21, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Sunflora - Bullet Seed - Level 25
  (192, 19200, 331, 21, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Sunflora - Petal Dance - Level 28
  (192, 19200, 80, 21, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Sunflora - Solar Beam - Level 34
  (192, 19200, 76, 21, NULL, 1, 34, NULL, NULL, NULL, 17),
  -- Sunflora - Double-Edge - Level 37
  (192, 19200, 38, 21, NULL, 1, 37, NULL, NULL, NULL, 18),
  -- Sunflora - Sunny Day - Level 40
  (192, 19200, 241, 21, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Sunflora - Leaf Storm - Level 43
  (192, 19200, 437, 21, NULL, 1, 43, NULL, NULL, NULL, 20),
  -- Sunflora - Petal Blizzard - Level 50
  (192, 19200, 572, 21, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Sunflora - Bullet Seed - TM09
  (192, 19200, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 22),
  -- Sunflora - Sunny Day - TM11
  (192, 19200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Sunflora - Hyper Beam - TM15
  (192, 19200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Sunflora - Light Screen - TM16
  (192, 19200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 25),
  -- Sunflora - Protect - TM17
  (192, 19200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Sunflora - Giga Drain - TM19
  (192, 19200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Sunflora - Safeguard - TM20
  (192, 19200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 28),
  -- Sunflora - Solar Beam - TM22
  (192, 19200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Sunflora - Double Team - TM32
  (192, 19200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Sunflora - Sludge Bomb - TM36
  (192, 19200, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 31),
  -- Sunflora - Facade - TM42
  (192, 19200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Sunflora - Rest - TM44
  (192, 19200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Sunflora - Attract - TM45
  (192, 19200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Sunflora - Energy Ball - TM53
  (192, 19200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 35),
  -- Sunflora - Endure - TM58
  (192, 19200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Sunflora - Giga Impact - TM68
  (192, 19200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Sunflora - Flash - TM70
  (192, 19200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Sunflora - Swords Dance - TM75
  (192, 19200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 39),
  -- Sunflora - Sleep Talk - TM82
  (192, 19200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Sunflora - Grass Knot - TM86
  (192, 19200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 41),
  -- Sunflora - Swagger - TM87
  (192, 19200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Sunflora - Substitute - TM90
  (192, 19200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Sunflora - Cut - TM93
  (192, 19200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Sunflora - Curse - Egg
  (192, 19200, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Sunflora - Encore - Egg
  (192, 19200, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Sunflora - Grassy Terrain - Egg
  (192, 19200, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sunflora - Helping Hand - Egg
  (192, 19200, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sunflora - Ingrain - Egg
  (192, 19200, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sunflora - Leech Seed - Egg
  (192, 19200, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sunflora - Morning Sun - Egg
  (192, 19200, 234, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sunflora - Nature Power - Egg
  (192, 19200, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sunflora - Sweet Scent - Egg
  (192, 19200, 230, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Yanma - Tackle - Starting Move
  (193, 19300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Yanma - Gust - Starting Move
  (193, 19300, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Yanma - Quick Attack - Level 6
  (193, 19300, 98, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Yanma - Double Team - Level 11
  (193, 19300, 104, 21, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Yanma - Aerial Ace - Level 14
  (193, 19300, 332, 21, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Yanma - Detect - Level 17
  (193, 19300, 197, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Yanma - Supersonic - Level 22
  (193, 19300, 48, 21, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Yanma - Uproar - Level 27
  (193, 19300, 253, 21, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Yanma - String Shot - Level 30
  (193, 19300, 81, 21, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Yanma - Ancient Power - Level 33
  (193, 19300, 246, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Yanma - Hypnosis - Level 38
  (193, 19300, 95, 21, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Yanma - Wing Attack - Level 43
  (193, 19300, 17, 21, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Yanma - Screech - Level 46
  (193, 19300, 103, 21, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Yanma - U-turn - Level 49
  (193, 19300, 369, 21, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Yanma - Air Slash - Level 54
  (193, 19300, 403, 21, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Yanma - Bug Buzz - Level 57
  (193, 19300, 405, 21, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Yanma - Sunny Day - TM11
  (193, 19300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Yanma - Protect - TM17
  (193, 19300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Yanma - Giga Drain - TM19
  (193, 19300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 19),
  -- Yanma - Solar Beam - TM22
  (193, 19300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 20),
  -- Yanma - Psychic - TM29
  (193, 19300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 21),
  -- Yanma - Shadow Ball - TM30
  (193, 19300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 22),
  -- Yanma - Double Team - TM32
  (193, 19300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Yanma - Aerial Ace - TM40
  (193, 19300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 24),
  -- Yanma - Facade - TM42
  (193, 19300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Yanma - Rest - TM44
  (193, 19300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Yanma - Attract - TM45
  (193, 19300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Yanma - Thief - TM46
  (193, 19300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 28),
  -- Yanma - Steel Wing - TM47
  (193, 19300, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 29),
  -- Yanma - Roost - TM51
  (193, 19300, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 30),
  -- Yanma - Endure - TM58
  (193, 19300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Yanma - Bug Buzz - TM62
  (193, 19300, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 32),
  -- Yanma - Flash - TM70
  (193, 19300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 33),
  -- Yanma - Swords Dance - TM75
  (193, 19300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 34),
  -- Yanma - Sleep Talk - TM82
  (193, 19300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Yanma - Dream Eater - TM85
  (193, 19300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 36),
  -- Yanma - Swagger - TM87
  (193, 19300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Yanma - U-turn - TM89
  (193, 19300, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 38),
  -- Yanma - Substitute - TM90
  (193, 19300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Yanma - Defog - TM97
  (193, 19300, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 40),
  -- Yanma - Double-Edge - Egg
  (193, 19300, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Yanma - Feint - Egg
  (193, 19300, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Yanma - Leech Life - Egg
  (193, 19300, 141, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Yanma - Reversal - Egg
  (193, 19300, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Yanma - Whirlwind - Egg
  (193, 19300, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wooper - Water Gun - Starting Move
  (194, 19400, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Wooper - Tail Whip - Starting Move
  (194, 19400, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Wooper - Rain Dance - Level 4
  (194, 19400, 240, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Wooper - Mud Shot - Level 8
  (194, 19400, 341, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Wooper - Mist - Level 12
  (194, 19400, 54, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Wooper - Haze - Level 12
  (194, 19400, 114, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Wooper - Slam - Level 16
  (194, 19400, 21, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Wooper - Yawn - Level 21
  (194, 19400, 281, 21, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Wooper - Aqua Tail - Level 24
  (194, 19400, 401, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Wooper - Muddy Water - Level 28
  (194, 19400, 330, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Wooper - Amnesia - Level 32
  (194, 19400, 133, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Wooper - Toxic - Level 36
  (194, 19400, 92, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Wooper - Earthquake - Level 40
  (194, 19400, 89, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Wooper - Water Pulse - TM03
  (194, 19400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Wooper - Toxic - TM06
  (194, 19400, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 15),
  -- Wooper - Hail - TM07
  (194, 19400, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Wooper - Ice Beam - TM13
  (194, 19400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Wooper - Blizzard - TM14
  (194, 19400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Wooper - Protect - TM17
  (194, 19400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Wooper - Rain Dance - TM18
  (194, 19400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Wooper - Safeguard - TM20
  (194, 19400, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 21),
  -- Wooper - Iron Tail - TM23
  (194, 19400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Wooper - Earthquake - TM26
  (194, 19400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Wooper - Dig - TM28
  (194, 19400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Wooper - Double Team - TM32
  (194, 19400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Wooper - Sludge Bomb - TM36
  (194, 19400, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 26),
  -- Wooper - Sandstorm - TM37
  (194, 19400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 27),
  -- Wooper - Facade - TM42
  (194, 19400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Wooper - Rest - TM44
  (194, 19400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Wooper - Attract - TM45
  (194, 19400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Wooper - Scald - TM49
  (194, 19400, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 31),
  -- Wooper - Endure - TM58
  (194, 19400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Wooper - Flash - TM70
  (194, 19400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 33),
  -- Wooper - Sleep Talk - TM82
  (194, 19400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Wooper - Bulldoze - TM83
  (194, 19400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 35),
  -- Wooper - Swagger - TM87
  (194, 19400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Wooper - Substitute - TM90
  (194, 19400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Wooper - Surf - TM95
  (194, 19400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 38),
  -- Wooper - Rock Smash - TM98
  (194, 19400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 39),
  -- Wooper - Waterfall - TM99
  (194, 19400, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 40),
  -- Wooper - Acid Spray - Egg
  (194, 19400, 491, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Wooper - After You - Egg
  (194, 19400, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wooper - Ancient Power - Egg
  (194, 19400, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wooper - Body Slam - Egg
  (194, 19400, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wooper - Counter - Egg
  (194, 19400, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wooper - Curse - Egg
  (194, 19400, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wooper - Double Kick - Egg
  (194, 19400, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wooper - Eerie Impulse - Egg
  (194, 19400, 598, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wooper - Encore - Egg
  (194, 19400, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wooper - Guard Swap - Egg
  (194, 19400, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wooper - Power-Up Punch - Egg
  (194, 19400, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wooper - Recover - Egg
  (194, 19400, 105, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wooper - Spit Up - Egg
  (194, 19400, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wooper - Stockpile - Egg
  (194, 19400, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wooper - Swallow - Egg
  (194, 19400, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Quagsire - Water Gun - Starting Move
  (195, 19500, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Quagsire - Tail Whip - Starting Move
  (195, 19500, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Quagsire - Rain Dance - Starting Move
  (195, 19500, 240, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Quagsire - Mud Shot - Starting Move
  (195, 19500, 341, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Quagsire - Mist - Level 12
  (195, 19500, 54, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Quagsire - Haze - Level 12
  (195, 19500, 114, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Quagsire - Slam - Level 16
  (195, 19500, 21, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Quagsire - Yawn - Level 23
  (195, 19500, 281, 21, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Quagsire - Aqua Tail - Level 28
  (195, 19500, 401, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Quagsire - Muddy Water - Level 34
  (195, 19500, 330, 21, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Quagsire - Amnesia - Level 40
  (195, 19500, 133, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Quagsire - Toxic - Level 46
  (195, 19500, 92, 21, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Quagsire - Earthquake - Level 52
  (195, 19500, 89, 21, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Quagsire - Focus Punch - TM01
  (195, 19500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 14),
  -- Quagsire - Water Pulse - TM03
  (195, 19500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Quagsire - Toxic - TM06
  (195, 19500, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 16),
  -- Quagsire - Hail - TM07
  (195, 19500, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Quagsire - Ice Beam - TM13
  (195, 19500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Quagsire - Blizzard - TM14
  (195, 19500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Quagsire - Hyper Beam - TM15
  (195, 19500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Quagsire - Protect - TM17
  (195, 19500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Quagsire - Rain Dance - TM18
  (195, 19500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Quagsire - Safeguard - TM20
  (195, 19500, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Quagsire - Iron Tail - TM23
  (195, 19500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Quagsire - Earthquake - TM26
  (195, 19500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Quagsire - Dig - TM28
  (195, 19500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Quagsire - Brick Break - TM31
  (195, 19500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Quagsire - Double Team - TM32
  (195, 19500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Quagsire - Sludge Bomb - TM36
  (195, 19500, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 29),
  -- Quagsire - Sandstorm - TM37
  (195, 19500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 30),
  -- Quagsire - Rock Tomb - TM39
  (195, 19500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 31),
  -- Quagsire - Facade - TM42
  (195, 19500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Quagsire - Rest - TM44
  (195, 19500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Quagsire - Attract - TM45
  (195, 19500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Quagsire - Thief - TM46
  (195, 19500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Quagsire - Scald - TM49
  (195, 19500, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 36),
  -- Quagsire - Focus Blast - TM52
  (195, 19500, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Quagsire - Fling - TM56
  (195, 19500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Quagsire - Endure - TM58
  (195, 19500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Quagsire - Giga Impact - TM68
  (195, 19500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Quagsire - Flash - TM70
  (195, 19500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 41),
  -- Quagsire - Stone Edge - TM71
  (195, 19500, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 42),
  -- Quagsire - Rock Slide - TM80
  (195, 19500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Quagsire - Sleep Talk - TM82
  (195, 19500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Quagsire - Bulldoze - TM83
  (195, 19500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Quagsire - Swagger - TM87
  (195, 19500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Quagsire - Substitute - TM90
  (195, 19500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Quagsire - Surf - TM95
  (195, 19500, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 48),
  -- Quagsire - Strength - TM96
  (195, 19500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Quagsire - Rock Smash - TM98
  (195, 19500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Quagsire - Waterfall - TM99
  (195, 19500, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 51),
  -- Quagsire - Acid Spray - Egg
  (195, 19500, 491, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Quagsire - After You - Egg
  (195, 19500, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Quagsire - Ancient Power - Egg
  (195, 19500, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Quagsire - Body Slam - Egg
  (195, 19500, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Quagsire - Counter - Egg
  (195, 19500, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Quagsire - Curse - Egg
  (195, 19500, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Quagsire - Double Kick - Egg
  (195, 19500, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Quagsire - Eerie Impulse - Egg
  (195, 19500, 598, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Quagsire - Encore - Egg
  (195, 19500, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Quagsire - Guard Swap - Egg
  (195, 19500, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Quagsire - Power-Up Punch - Egg
  (195, 19500, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Quagsire - Recover - Egg
  (195, 19500, 105, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Quagsire - Spit Up - Egg
  (195, 19500, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Quagsire - Stockpile - Egg
  (195, 19500, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Quagsire - Swallow - Egg
  (195, 19500, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Espeon - Confusion - Starting Move
  (196, 19600, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Espeon - Covet - Starting Move
  (196, 19600, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Espeon - Bite - Starting Move
  (196, 19600, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Espeon - Copycat - Starting Move
  (196, 19600, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Espeon - Baton Pass - Starting Move
  (196, 19600, 226, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Espeon - Take Down - Starting Move
  (196, 19600, 36, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Espeon - Charm - Starting Move
  (196, 19600, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Espeon - Double-Edge - Starting Move
  (196, 19600, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Espeon - Helping Hand - Starting Move
  (196, 19600, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Espeon - Tackle - Starting Move
  (196, 19600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Espeon - Growl - Starting Move
  (196, 19600, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Espeon - Tail Whip - Starting Move
  (196, 19600, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Espeon - Confusion - Evolution
  (196, 19600, 93, 21, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Espeon - Sand Attack - Level 5
  (196, 19600, 28, 21, NULL, 1, 5, NULL, NULL, NULL, 14),
  -- Espeon - Quick Attack - Level 10
  (196, 19600, 98, 21, NULL, 1, 10, NULL, NULL, NULL, 15),
  -- Espeon - Baby-Doll Eyes - Level 15
  (196, 19600, 608, 21, NULL, 1, 15, NULL, NULL, NULL, 16),
  -- Espeon - Swift - Level 20
  (196, 19600, 129, 21, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Espeon - Psybeam - Level 25
  (196, 19600, 60, 21, NULL, 1, 25, NULL, NULL, NULL, 18),
  -- Espeon - Morning Sun - Level 30
  (196, 19600, 234, 21, NULL, 1, 30, NULL, NULL, NULL, 19),
  -- Espeon - Power Swap - Level 35
  (196, 19600, 384, 21, NULL, 1, 35, NULL, NULL, NULL, 20),
  -- Espeon - Psychic - Level 40
  (196, 19600, 94, 21, NULL, 1, 40, NULL, NULL, NULL, 21),
  -- Espeon - Psych Up - Level 45
  (196, 19600, 244, 21, NULL, 1, 45, NULL, NULL, NULL, 22),
  -- Espeon - Future Sight - Level 50
  (196, 19600, 248, 21, NULL, 1, 50, NULL, NULL, NULL, 23),
  -- Espeon - Last Resort - Level 55
  (196, 19600, 387, 21, NULL, 1, 55, NULL, NULL, NULL, 24),
  -- Espeon - Calm Mind - TM04
  (196, 19600, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 25),
  -- Espeon - Work Up - TM10
  (196, 19600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 26),
  -- Espeon - Sunny Day - TM11
  (196, 19600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 27),
  -- Espeon - Hyper Beam - TM15
  (196, 19600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Espeon - Light Screen - TM16
  (196, 19600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 29),
  -- Espeon - Protect - TM17
  (196, 19600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 30),
  -- Espeon - Rain Dance - TM18
  (196, 19600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 31),
  -- Espeon - Dazzling Gleam - TM21
  (196, 19600, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 32),
  -- Espeon - Iron Tail - TM23
  (196, 19600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 33),
  -- Espeon - Dig - TM28
  (196, 19600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 34),
  -- Espeon - Psychic - TM29
  (196, 19600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 35),
  -- Espeon - Shadow Ball - TM30
  (196, 19600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 36),
  -- Espeon - Double Team - TM32
  (196, 19600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Espeon - Reflect - TM33
  (196, 19600, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 38),
  -- Espeon - Facade - TM42
  (196, 19600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Espeon - Rest - TM44
  (196, 19600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Espeon - Attract - TM45
  (196, 19600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 41),
  -- Espeon - Skill Swap - TM48
  (196, 19600, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 42),
  -- Espeon - Endure - TM58
  (196, 19600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Espeon - Giga Impact - TM68
  (196, 19600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Espeon - Flash - TM70
  (196, 19600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 45),
  -- Espeon - Psych Up - TM77
  (196, 19600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 46),
  -- Espeon - Sleep Talk - TM82
  (196, 19600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Espeon - Dream Eater - TM85
  (196, 19600, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 48),
  -- Espeon - Grass Knot - TM86
  (196, 19600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 49),
  -- Espeon - Swagger - TM87
  (196, 19600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Espeon - Substitute - TM90
  (196, 19600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Espeon - Trick Room - TM92
  (196, 19600, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 52),
  -- Espeon - Cut - TM93
  (196, 19600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 53),
  -- Espeon - Charm - Egg
  (196, 19600, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Espeon - Covet - Egg
  (196, 19600, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Espeon - Curse - Egg
  (196, 19600, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Espeon - Detect - Egg
  (196, 19600, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Espeon - Double Kick - Egg
  (196, 19600, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Espeon - Fake Tears - Egg
  (196, 19600, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Espeon - Flail - Egg
  (196, 19600, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Espeon - Mud-Slap - Egg
  (196, 19600, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Espeon - Stored Power - Egg
  (196, 19600, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Espeon - Tickle - Egg
  (196, 19600, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Espeon - Wish - Egg
  (196, 19600, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Espeon - Yawn - Egg
  (196, 19600, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Umbreon - Snarl - Starting Move
  (197, 19700, 555, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Umbreon - Foul Play - Starting Move
  (197, 19700, 492, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Umbreon - Covet - Starting Move
  (197, 19700, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Umbreon - Swift - Starting Move
  (197, 19700, 129, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Umbreon - Bite - Starting Move
  (197, 19700, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Umbreon - Copycat - Starting Move
  (197, 19700, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Umbreon - Baton Pass - Starting Move
  (197, 19700, 226, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Umbreon - Take Down - Starting Move
  (197, 19700, 36, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Umbreon - Charm - Starting Move
  (197, 19700, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Umbreon - Double-Edge - Starting Move
  (197, 19700, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Umbreon - Helping Hand - Starting Move
  (197, 19700, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Umbreon - Tackle - Starting Move
  (197, 19700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Umbreon - Growl - Starting Move
  (197, 19700, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Umbreon - Tail Whip - Starting Move
  (197, 19700, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Umbreon - Snarl - Evolution
  (197, 19700, 555, 21, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Umbreon - Sand Attack - Level 5
  (197, 19700, 28, 21, NULL, 1, 5, NULL, NULL, NULL, 16),
  -- Umbreon - Quick Attack - Level 10
  (197, 19700, 98, 21, NULL, 1, 10, NULL, NULL, NULL, 17),
  -- Umbreon - Baby-Doll Eyes - Level 15
  (197, 19700, 608, 21, NULL, 1, 15, NULL, NULL, NULL, 18),
  -- Umbreon - Confuse Ray - Level 20
  (197, 19700, 109, 21, NULL, 1, 20, NULL, NULL, NULL, 19),
  -- Umbreon - Assurance - Level 25
  (197, 19700, 372, 21, NULL, 1, 25, NULL, NULL, NULL, 20),
  -- Umbreon - Moonlight - Level 30
  (197, 19700, 236, 21, NULL, 1, 30, NULL, NULL, NULL, 21),
  -- Umbreon - Guard Swap - Level 35
  (197, 19700, 385, 21, NULL, 1, 35, NULL, NULL, NULL, 22),
  -- Umbreon - Dark Pulse - Level 40
  (197, 19700, 399, 21, NULL, 1, 40, NULL, NULL, NULL, 23),
  -- Umbreon - Screech - Level 45
  (197, 19700, 103, 21, NULL, 1, 45, NULL, NULL, NULL, 24),
  -- Umbreon - Mean Look - Level 50
  (197, 19700, 212, 21, NULL, 1, 50, NULL, NULL, NULL, 25),
  -- Umbreon - Last Resort - Level 55
  (197, 19700, 387, 21, NULL, 1, 55, NULL, NULL, NULL, 26),
  -- Umbreon - Work Up - TM10
  (197, 19700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 27),
  -- Umbreon - Sunny Day - TM11
  (197, 19700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 28),
  -- Umbreon - Taunt - TM12
  (197, 19700, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 29),
  -- Umbreon - Hyper Beam - TM15
  (197, 19700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 30),
  -- Umbreon - Protect - TM17
  (197, 19700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 31),
  -- Umbreon - Rain Dance - TM18
  (197, 19700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 32),
  -- Umbreon - Iron Tail - TM23
  (197, 19700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 33),
  -- Umbreon - Dig - TM28
  (197, 19700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 34),
  -- Umbreon - Psychic - TM29
  (197, 19700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 35),
  -- Umbreon - Shadow Ball - TM30
  (197, 19700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 36),
  -- Umbreon - Double Team - TM32
  (197, 19700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Umbreon - Torment - TM41
  (197, 19700, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 38),
  -- Umbreon - Facade - TM42
  (197, 19700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Umbreon - Rest - TM44
  (197, 19700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Umbreon - Attract - TM45
  (197, 19700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 41),
  -- Umbreon - Thief - TM46
  (197, 19700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 42),
  -- Umbreon - Endure - TM58
  (197, 19700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Umbreon - Payback - TM66
  (197, 19700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 44),
  -- Umbreon - Giga Impact - TM68
  (197, 19700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 45),
  -- Umbreon - Flash - TM70
  (197, 19700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 46),
  -- Umbreon - Psych Up - TM77
  (197, 19700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 47),
  -- Umbreon - Snarl - TM78
  (197, 19700, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 48),
  -- Umbreon - Dark Pulse - TM79
  (197, 19700, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 49),
  -- Umbreon - Sleep Talk - TM82
  (197, 19700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 50),
  -- Umbreon - Dream Eater - TM85
  (197, 19700, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 51),
  -- Umbreon - Swagger - TM87
  (197, 19700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Umbreon - Substitute - TM90
  (197, 19700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Umbreon - Cut - TM93
  (197, 19700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 54),
  -- Umbreon - Charm - Egg
  (197, 19700, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Umbreon - Covet - Egg
  (197, 19700, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Umbreon - Curse - Egg
  (197, 19700, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Umbreon - Detect - Egg
  (197, 19700, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Umbreon - Double Kick - Egg
  (197, 19700, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Umbreon - Fake Tears - Egg
  (197, 19700, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Umbreon - Flail - Egg
  (197, 19700, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Umbreon - Mud-Slap - Egg
  (197, 19700, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Umbreon - Stored Power - Egg
  (197, 19700, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Umbreon - Tickle - Egg
  (197, 19700, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Umbreon - Wish - Egg
  (197, 19700, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Umbreon - Yawn - Egg
  (197, 19700, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Murkrow - Peck - Starting Move
  (198, 19800, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Murkrow - Astonish - Starting Move
  (198, 19800, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Murkrow - Gust - Level 5
  (198, 19800, 16, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Murkrow - Haze - Level 11
  (198, 19800, 114, 21, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Murkrow - Wing Attack - Level 15
  (198, 19800, 17, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Murkrow - Night Shade - Level 21
  (198, 19800, 101, 21, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Murkrow - Assurance - Level 25
  (198, 19800, 372, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Murkrow - Taunt - Level 31
  (198, 19800, 269, 21, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Murkrow - Air Cutter - Level 35
  (198, 19800, 314, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Murkrow - Mean Look - Level 41
  (198, 19800, 212, 21, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Murkrow - Foul Play - Level 45
  (198, 19800, 492, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Murkrow - Tailwind - Level 50
  (198, 19800, 366, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Murkrow - Sucker Punch - Level 55
  (198, 19800, 389, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Murkrow - Torment - Level 61
  (198, 19800, 259, 21, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Murkrow - Quash - Level 65
  (198, 19800, 511, 21, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Murkrow - Calm Mind - TM04
  (198, 19800, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Murkrow - Sunny Day - TM11
  (198, 19800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Murkrow - Taunt - TM12
  (198, 19800, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Murkrow - Protect - TM17
  (198, 19800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Murkrow - Rain Dance - TM18
  (198, 19800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Murkrow - Psychic - TM29
  (198, 19800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 21),
  -- Murkrow - Shadow Ball - TM30
  (198, 19800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 22),
  -- Murkrow - Double Team - TM32
  (198, 19800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Murkrow - Aerial Ace - TM40
  (198, 19800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 24),
  -- Murkrow - Torment - TM41
  (198, 19800, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 25),
  -- Murkrow - Facade - TM42
  (198, 19800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Murkrow - Rest - TM44
  (198, 19800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Murkrow - Attract - TM45
  (198, 19800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Murkrow - Thief - TM46
  (198, 19800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 29),
  -- Murkrow - Steel Wing - TM47
  (198, 19800, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 30),
  -- Murkrow - Roost - TM51
  (198, 19800, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 31),
  -- Murkrow - Endure - TM58
  (198, 19800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Murkrow - Payback - TM66
  (198, 19800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 33),
  -- Murkrow - Thunder Wave - TM73
  (198, 19800, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 34),
  -- Murkrow - Psych Up - TM77
  (198, 19800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 35),
  -- Murkrow - Snarl - TM78
  (198, 19800, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 36),
  -- Murkrow - Dark Pulse - TM79
  (198, 19800, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 37),
  -- Murkrow - Sleep Talk - TM82
  (198, 19800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Murkrow - Dream Eater - TM85
  (198, 19800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 39),
  -- Murkrow - Swagger - TM87
  (198, 19800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Murkrow - Pluck - TM88
  (198, 19800, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 41),
  -- Murkrow - Substitute - TM90
  (198, 19800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Murkrow - Fly - TM94
  (198, 19800, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 43),
  -- Murkrow - Defog - TM97
  (198, 19800, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 44),
  -- Murkrow - Assurance - Egg
  (198, 19800, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Murkrow - Brave Bird - Egg
  (198, 19800, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Murkrow - Confuse Ray - Egg
  (198, 19800, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Murkrow - Drill Peck - Egg
  (198, 19800, 65, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Murkrow - Feather Dance - Egg
  (198, 19800, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Murkrow - Flatter - Egg
  (198, 19800, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Murkrow - Perish Song - Egg
  (198, 19800, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Murkrow - Psycho Shift - Egg
  (198, 19800, 375, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Murkrow - Screech - Egg
  (198, 19800, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Murkrow - Sky Attack - Egg
  (198, 19800, 143, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Murkrow - Whirlwind - Egg
  (198, 19800, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Murkrow - Wing Attack - Egg
  (198, 19800, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Slowking - Power Gem - Starting Move
  (199, 19900, 408, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Slowking - Nasty Plot - Starting Move
  (199, 19900, 417, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Slowking - Swagger - Starting Move
  (199, 19900, 207, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Slowking - Tackle - Starting Move
  (199, 19900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Slowking - Curse - Starting Move
  (199, 19900, 174, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Slowking - Growl - Starting Move
  (199, 19900, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Slowking - Water Gun - Starting Move
  (199, 19900, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Slowking - Yawn - Level 9
  (199, 19900, 281, 21, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Slowking - Confusion - Level 12
  (199, 19900, 93, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Slowking - Disable - Level 15
  (199, 19900, 50, 21, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Slowking - Water Pulse - Level 18
  (199, 19900, 352, 21, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Slowking - Headbutt - Level 21
  (199, 19900, 29, 21, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Slowking - Zen Headbutt - Level 24
  (199, 19900, 428, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Slowking - Amnesia - Level 27
  (199, 19900, 133, 21, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Slowking - Surf - Level 30
  (199, 19900, 57, 21, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Slowking - Slack Off - Level 33
  (199, 19900, 303, 21, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Slowking - Psychic - Level 36
  (199, 19900, 94, 21, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Slowking - Psych Up - Level 39
  (199, 19900, 244, 21, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Slowking - Rain Dance - Level 42
  (199, 19900, 240, 21, NULL, 1, 42, NULL, NULL, NULL, 19),
  -- Slowking - Heal Pulse - Level 45
  (199, 19900, 505, 21, NULL, 1, 45, NULL, NULL, NULL, 20),
  -- Slowking - Focus Punch - TM01
  (199, 19900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 21),
  -- Slowking - Water Pulse - TM03
  (199, 19900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 22),
  -- Slowking - Calm Mind - TM04
  (199, 19900, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 23),
  -- Slowking - Hail - TM07
  (199, 19900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 24),
  -- Slowking - Sunny Day - TM11
  (199, 19900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 25),
  -- Slowking - Ice Beam - TM13
  (199, 19900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 26),
  -- Slowking - Blizzard - TM14
  (199, 19900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 27),
  -- Slowking - Hyper Beam - TM15
  (199, 19900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Slowking - Light Screen - TM16
  (199, 19900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 29),
  -- Slowking - Protect - TM17
  (199, 19900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 30),
  -- Slowking - Rain Dance - TM18
  (199, 19900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 31),
  -- Slowking - Safeguard - TM20
  (199, 19900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 32),
  -- Slowking - Iron Tail - TM23
  (199, 19900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 33),
  -- Slowking - Earthquake - TM26
  (199, 19900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 34),
  -- Slowking - Dig - TM28
  (199, 19900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 35),
  -- Slowking - Psychic - TM29
  (199, 19900, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 36),
  -- Slowking - Shadow Ball - TM30
  (199, 19900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 37),
  -- Slowking - Brick Break - TM31
  (199, 19900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 38),
  -- Slowking - Double Team - TM32
  (199, 19900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 39),
  -- Slowking - Flamethrower - TM35
  (199, 19900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 40),
  -- Slowking - Fire Blast - TM38
  (199, 19900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 41),
  -- Slowking - Facade - TM42
  (199, 19900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 42),
  -- Slowking - Rest - TM44
  (199, 19900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 43),
  -- Slowking - Attract - TM45
  (199, 19900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 44),
  -- Slowking - Skill Swap - TM48
  (199, 19900, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 45),
  -- Slowking - Scald - TM49
  (199, 19900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 46),
  -- Slowking - Focus Blast - TM52
  (199, 19900, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 47),
  -- Slowking - Brine - TM55
  (199, 19900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 48),
  -- Slowking - Fling - TM56
  (199, 19900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 49),
  -- Slowking - Endure - TM58
  (199, 19900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 50),
  -- Slowking - Drain Punch - TM60
  (199, 19900, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 51),
  -- Slowking - Nasty Plot - TM63
  (199, 19900, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 52),
  -- Slowking - Recycle - TM67
  (199, 19900, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 53),
  -- Slowking - Giga Impact - TM68
  (199, 19900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 54),
  -- Slowking - Flash - TM70
  (199, 19900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 55),
  -- Slowking - Avalanche - TM72
  (199, 19900, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 56),
  -- Slowking - Thunder Wave - TM73
  (199, 19900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 57),
  -- Slowking - Psych Up - TM77
  (199, 19900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 58),
  -- Slowking - Sleep Talk - TM82
  (199, 19900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 59),
  -- Slowking - Bulldoze - TM83
  (199, 19900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 60),
  -- Slowking - Dream Eater - TM85
  (199, 19900, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 61),
  -- Slowking - Grass Knot - TM86
  (199, 19900, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 62),
  -- Slowking - Swagger - TM87
  (199, 19900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 63),
  -- Slowking - Substitute - TM90
  (199, 19900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 64),
  -- Slowking - Trick Room - TM92
  (199, 19900, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 65),
  -- Slowking - Surf - TM95
  (199, 19900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 66),
  -- Slowking - Strength - TM96
  (199, 19900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 67),
  -- Slowking - Rock Smash - TM98
  (199, 19900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 68),
  -- Slowking - Belch - Egg
  (199, 19900, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Slowking - Belly Drum - Egg
  (199, 19900, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Slowking - Block - Egg
  (199, 19900, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Slowking - Future Sight - Egg
  (199, 19900, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Slowking - Snore - Egg
  (199, 19900, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Slowking - Stomp - Egg
  (199, 19900, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Slowking - Wonder Room - Egg
  (199, 19900, 472, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Slowking - Zen Headbutt - Egg
  (199, 19900, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Misdreavus - Growl - Starting Move
  (200, 20000, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Misdreavus - Confusion - Starting Move
  (200, 20000, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Misdreavus - Spite - Level 5
  (200, 20000, 180, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Misdreavus - Astonish - Level 10
  (200, 20000, 310, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Misdreavus - Confuse Ray - Level 14
  (200, 20000, 109, 21, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Misdreavus - Mean Look - Level 19
  (200, 20000, 212, 21, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Misdreavus - Hex - Level 23
  (200, 20000, 506, 21, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Misdreavus - Psybeam - Level 28
  (200, 20000, 60, 21, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Misdreavus - Pain Split - Level 32
  (200, 20000, 220, 21, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Misdreavus - Payback - Level 37
  (200, 20000, 371, 21, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Misdreavus - Shadow Ball - Level 41
  (200, 20000, 247, 21, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Misdreavus - Perish Song - Level 46
  (200, 20000, 195, 21, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Misdreavus - Grudge - Level 50
  (200, 20000, 288, 21, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Misdreavus - Power Gem - Level 55
  (200, 20000, 408, 21, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Misdreavus - Calm Mind - TM04
  (200, 20000, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 15),
  -- Misdreavus - Sunny Day - TM11
  (200, 20000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Misdreavus - Taunt - TM12
  (200, 20000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 17),
  -- Misdreavus - Protect - TM17
  (200, 20000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Misdreavus - Rain Dance - TM18
  (200, 20000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Misdreavus - Dazzling Gleam - TM21
  (200, 20000, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 20),
  -- Misdreavus - Thunderbolt - TM24
  (200, 20000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 21),
  -- Misdreavus - Thunder - TM25
  (200, 20000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 22),
  -- Misdreavus - Psychic - TM29
  (200, 20000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 23),
  -- Misdreavus - Shadow Ball - TM30
  (200, 20000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Misdreavus - Double Team - TM32
  (200, 20000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Misdreavus - Shock Wave - TM34
  (200, 20000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 26),
  -- Misdreavus - Aerial Ace - TM40
  (200, 20000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 27),
  -- Misdreavus - Torment - TM41
  (200, 20000, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 28),
  -- Misdreavus - Facade - TM42
  (200, 20000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Misdreavus - Rest - TM44
  (200, 20000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Misdreavus - Attract - TM45
  (200, 20000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Misdreavus - Thief - TM46
  (200, 20000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Misdreavus - Skill Swap - TM48
  (200, 20000, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 33),
  -- Misdreavus - Charge Beam - TM57
  (200, 20000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 34),
  -- Misdreavus - Endure - TM58
  (200, 20000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Misdreavus - Will-O-Wisp - TM61
  (200, 20000, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 36),
  -- Misdreavus - Nasty Plot - TM63
  (200, 20000, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 37),
  -- Misdreavus - Payback - TM66
  (200, 20000, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 38),
  -- Misdreavus - Flash - TM70
  (200, 20000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 39),
  -- Misdreavus - Thunder Wave - TM73
  (200, 20000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 40),
  -- Misdreavus - Psych Up - TM77
  (200, 20000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Misdreavus - Dark Pulse - TM79
  (200, 20000, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 42),
  -- Misdreavus - Sleep Talk - TM82
  (200, 20000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Misdreavus - Dream Eater - TM85
  (200, 20000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 44),
  -- Misdreavus - Swagger - TM87
  (200, 20000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Misdreavus - Substitute - TM90
  (200, 20000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Misdreavus - Trick Room - TM92
  (200, 20000, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 47),
  -- Misdreavus - Curse - Egg
  (200, 20000, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Misdreavus - Destiny Bond - Egg
  (200, 20000, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Misdreavus - Imprison - Egg
  (200, 20000, 286, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Misdreavus - Memento - Egg
  (200, 20000, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Misdreavus - Screech - Egg
  (200, 20000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Misdreavus - Shadow Sneak - Egg
  (200, 20000, 425, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Misdreavus - Spite - Egg
  (200, 20000, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Misdreavus - Sucker Punch - Egg
  (200, 20000, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Misdreavus - Wonder Room - Egg
  (200, 20000, 472, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Unown - Hidden Power - Starting Move
  (201, 20100, 237, 21, NULL, 8, NULL, NULL, NULL, NULL, 1);
