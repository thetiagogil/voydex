-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV Pokémon learnset raw pages, using Platinum
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Platinum Pokedex learnset pages, Serebii Platinum
-- Move Tutor pages, and PokemonDB Generation 4 Platinum learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Platinum
-- Pokémon: #152-#201
-- Rows: 3007
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, and prior-evolution sections are intentionally excluded from
-- this Platinum seed.
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
)
VALUES
  -- Chikorita - Tackle - Level 1
  (152, 15200, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chikorita - Growl - Level 1
  (152, 15200, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chikorita - Razor Leaf - Level 6
  (152, 15200, 75, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Chikorita - Poison Powder - Level 9
  (152, 15200, 77, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chikorita - Synthesis - Level 12
  (152, 15200, 235, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chikorita - Reflect - Level 17
  (152, 15200, 115, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chikorita - Magical Leaf - Level 20
  (152, 15200, 345, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chikorita - Natural Gift - Level 23
  (152, 15200, 363, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chikorita - Sweet Scent - Level 28
  (152, 15200, 230, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Chikorita - Light Screen - Level 31
  (152, 15200, 113, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Chikorita - Body Slam - Level 34
  (152, 15200, 34, 9, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Chikorita - Safeguard - Level 39
  (152, 15200, 219, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Chikorita - Aromatherapy - Level 42
  (152, 15200, 312, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Chikorita - Solar Beam - Level 45
  (152, 15200, 76, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Chikorita - Toxic - TM06
  (152, 15200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Chikorita - Bullet Seed - TM09
  (152, 15200, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 16),
  -- Chikorita - Hidden Power - TM10
  (152, 15200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Chikorita - Sunny Day - TM11
  (152, 15200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Chikorita - Light Screen - TM16
  (152, 15200, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 19),
  -- Chikorita - Protect - TM17
  (152, 15200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Chikorita - Giga Drain - TM19
  (152, 15200, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 21),
  -- Chikorita - Safeguard - TM20
  (152, 15200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 22),
  -- Chikorita - Frustration - TM21
  (152, 15200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Chikorita - Solar Beam - TM22
  (152, 15200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Chikorita - Iron Tail - TM23
  (152, 15200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Chikorita - Return - TM27
  (152, 15200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Chikorita - Double Team - TM32
  (152, 15200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Chikorita - Reflect - TM33
  (152, 15200, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 28),
  -- Chikorita - Facade - TM42
  (152, 15200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Chikorita - Secret Power - TM43
  (152, 15200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Chikorita - Rest - TM44
  (152, 15200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Chikorita - Attract - TM45
  (152, 15200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Chikorita - Energy Ball - TM53
  (152, 15200, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 33),
  -- Chikorita - Endure - TM58
  (152, 15200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Chikorita - Flash - TM70
  (152, 15200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Chikorita - Swords Dance - TM75
  (152, 15200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 36),
  -- Chikorita - Captivate - TM78
  (152, 15200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Chikorita - Sleep Talk - TM82
  (152, 15200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Chikorita - Natural Gift - TM83
  (152, 15200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Chikorita - Grass Knot - TM86
  (152, 15200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 40),
  -- Chikorita - Swagger - TM87
  (152, 15200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Chikorita - Substitute - TM90
  (152, 15200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Chikorita - Cut - HM01
  (152, 15200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 43),
  -- Chikorita - Vine Whip - Egg
  (152, 15200, 22, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chikorita - Counter - Egg
  (152, 15200, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chikorita - Leech Seed - Egg
  (152, 15200, 73, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chikorita - Flail - Egg
  (152, 15200, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chikorita - Ancient Power - Egg
  (152, 15200, 246, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chikorita - Nature Power - Egg
  (152, 15200, 267, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chikorita - Ingrain - Egg
  (152, 15200, 275, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chikorita - Aromatherapy - Egg
  (152, 15200, 312, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chikorita - Grass Whistle - Egg
  (152, 15200, 320, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chikorita - Wring Out - Egg
  (152, 15200, 378, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chikorita - Leaf Storm - Egg
  (152, 15200, 437, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chikorita - Snore - Tutor
  (152, 15200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Chikorita - Mud-Slap - Tutor
  (152, 15200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Chikorita - Fury Cutter - Tutor
  (152, 15200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Chikorita - Synthesis - Tutor
  (152, 15200, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Chikorita - Ancient Power - Tutor
  (152, 15200, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Chikorita - Seed Bomb - Tutor
  (152, 15200, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Bayleef - Tackle - Level 1
  (153, 15300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bayleef - Growl - Level 1
  (153, 15300, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bayleef - Razor Leaf - Level 1
  (153, 15300, 75, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bayleef - Poison Powder - Level 1
  (153, 15300, 77, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bayleef - Razor Leaf - Level 6
  (153, 15300, 75, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Bayleef - Poison Powder - Level 9
  (153, 15300, 77, 9, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Bayleef - Synthesis - Level 12
  (153, 15300, 235, 9, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Bayleef - Reflect - Level 18
  (153, 15300, 115, 9, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Bayleef - Magical Leaf - Level 22
  (153, 15300, 345, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Bayleef - Natural Gift - Level 26
  (153, 15300, 363, 9, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Bayleef - Sweet Scent - Level 32
  (153, 15300, 230, 9, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Bayleef - Light Screen - Level 36
  (153, 15300, 113, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bayleef - Body Slam - Level 40
  (153, 15300, 34, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Bayleef - Safeguard - Level 46
  (153, 15300, 219, 9, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Bayleef - Aromatherapy - Level 50
  (153, 15300, 312, 9, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Bayleef - Solar Beam - Level 54
  (153, 15300, 76, 9, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Bayleef - Toxic - TM06
  (153, 15300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Bayleef - Bullet Seed - TM09
  (153, 15300, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 18),
  -- Bayleef - Hidden Power - TM10
  (153, 15300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Bayleef - Sunny Day - TM11
  (153, 15300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Bayleef - Light Screen - TM16
  (153, 15300, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 21),
  -- Bayleef - Protect - TM17
  (153, 15300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Bayleef - Giga Drain - TM19
  (153, 15300, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 23),
  -- Bayleef - Safeguard - TM20
  (153, 15300, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 24),
  -- Bayleef - Frustration - TM21
  (153, 15300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Bayleef - Solar Beam - TM22
  (153, 15300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 26),
  -- Bayleef - Iron Tail - TM23
  (153, 15300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Bayleef - Return - TM27
  (153, 15300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Bayleef - Double Team - TM32
  (153, 15300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Bayleef - Reflect - TM33
  (153, 15300, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 30),
  -- Bayleef - Facade - TM42
  (153, 15300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Bayleef - Secret Power - TM43
  (153, 15300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Bayleef - Rest - TM44
  (153, 15300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Bayleef - Attract - TM45
  (153, 15300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Bayleef - Energy Ball - TM53
  (153, 15300, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 35),
  -- Bayleef - Endure - TM58
  (153, 15300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Bayleef - Flash - TM70
  (153, 15300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 37),
  -- Bayleef - Swords Dance - TM75
  (153, 15300, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 38),
  -- Bayleef - Captivate - TM78
  (153, 15300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Bayleef - Sleep Talk - TM82
  (153, 15300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Bayleef - Natural Gift - TM83
  (153, 15300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Bayleef - Grass Knot - TM86
  (153, 15300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 42),
  -- Bayleef - Swagger - TM87
  (153, 15300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Bayleef - Substitute - TM90
  (153, 15300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Bayleef - Cut - HM01
  (153, 15300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 45),
  -- Bayleef - Strength - HM04
  (153, 15300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Bayleef - Rock Smash - HM06
  (153, 15300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 47),
  -- Bayleef - Snore - Tutor
  (153, 15300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Bayleef - Mud-Slap - Tutor
  (153, 15300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Bayleef - Fury Cutter - Tutor
  (153, 15300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Bayleef - Synthesis - Tutor
  (153, 15300, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Bayleef - Ancient Power - Tutor
  (153, 15300, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Bayleef - Seed Bomb - Tutor
  (153, 15300, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Meganium - Tackle - Level 1
  (154, 15400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meganium - Growl - Level 1
  (154, 15400, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meganium - Razor Leaf - Level 1
  (154, 15400, 75, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meganium - Poison Powder - Level 1
  (154, 15400, 77, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meganium - Razor Leaf - Level 6
  (154, 15400, 75, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Meganium - Poison Powder - Level 9
  (154, 15400, 77, 9, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Meganium - Synthesis - Level 12
  (154, 15400, 235, 9, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Meganium - Reflect - Level 18
  (154, 15400, 115, 9, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Meganium - Magical Leaf - Level 22
  (154, 15400, 345, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Meganium - Natural Gift - Level 26
  (154, 15400, 363, 9, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Meganium - Petal Dance - Level 32
  (154, 15400, 80, 9, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Meganium - Sweet Scent - Level 34
  (154, 15400, 230, 9, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Meganium - Light Screen - Level 40
  (154, 15400, 113, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Meganium - Body Slam - Level 46
  (154, 15400, 34, 9, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Meganium - Safeguard - Level 54
  (154, 15400, 219, 9, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Meganium - Aromatherapy - Level 60
  (154, 15400, 312, 9, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Meganium - Solar Beam - Level 66
  (154, 15400, 76, 9, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Meganium - Toxic - TM06
  (154, 15400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Meganium - Bullet Seed - TM09
  (154, 15400, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 19),
  -- Meganium - Hidden Power - TM10
  (154, 15400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Meganium - Sunny Day - TM11
  (154, 15400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Meganium - Hyper Beam - TM15
  (154, 15400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Meganium - Light Screen - TM16
  (154, 15400, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 23),
  -- Meganium - Protect - TM17
  (154, 15400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Meganium - Giga Drain - TM19
  (154, 15400, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 25),
  -- Meganium - Safeguard - TM20
  (154, 15400, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 26),
  -- Meganium - Frustration - TM21
  (154, 15400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Meganium - Solar Beam - TM22
  (154, 15400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 28),
  -- Meganium - Iron Tail - TM23
  (154, 15400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Meganium - Earthquake - TM26
  (154, 15400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Meganium - Return - TM27
  (154, 15400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Meganium - Double Team - TM32
  (154, 15400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Meganium - Reflect - TM33
  (154, 15400, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 33),
  -- Meganium - Facade - TM42
  (154, 15400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Meganium - Secret Power - TM43
  (154, 15400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Meganium - Rest - TM44
  (154, 15400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Meganium - Attract - TM45
  (154, 15400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Meganium - Energy Ball - TM53
  (154, 15400, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 38),
  -- Meganium - Endure - TM58
  (154, 15400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Meganium - Giga Impact - TM68
  (154, 15400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 40),
  -- Meganium - Flash - TM70
  (154, 15400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 41),
  -- Meganium - Swords Dance - TM75
  (154, 15400, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 42),
  -- Meganium - Captivate - TM78
  (154, 15400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Meganium - Sleep Talk - TM82
  (154, 15400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Meganium - Natural Gift - TM83
  (154, 15400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Meganium - Grass Knot - TM86
  (154, 15400, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 46),
  -- Meganium - Swagger - TM87
  (154, 15400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Meganium - Substitute - TM90
  (154, 15400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Meganium - Cut - HM01
  (154, 15400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 49),
  -- Meganium - Strength - HM04
  (154, 15400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 50),
  -- Meganium - Rock Smash - HM06
  (154, 15400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 51),
  -- Meganium - Rock Climb - HM08
  (154, 15400, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 52),
  -- Meganium - Snore - Tutor
  (154, 15400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Meganium - Mud-Slap - Tutor
  (154, 15400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Meganium - Outrage - Tutor
  (154, 15400, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Meganium - Fury Cutter - Tutor
  (154, 15400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Meganium - Synthesis - Tutor
  (154, 15400, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Meganium - Ancient Power - Tutor
  (154, 15400, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Meganium - Frenzy Plant - Tutor
  (154, 15400, 338, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Meganium - Seed Bomb - Tutor
  (154, 15400, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Cyndaquil - Tackle - Level 1
  (155, 15500, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cyndaquil - Leer - Level 1
  (155, 15500, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cyndaquil - Smokescreen - Level 4
  (155, 15500, 108, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cyndaquil - Ember - Level 10
  (155, 15500, 52, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cyndaquil - Quick Attack - Level 13
  (155, 15500, 98, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cyndaquil - Flame Wheel - Level 19
  (155, 15500, 172, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cyndaquil - Defense Curl - Level 22
  (155, 15500, 111, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cyndaquil - Swift - Level 28
  (155, 15500, 129, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cyndaquil - Lava Plume - Level 31
  (155, 15500, 436, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Cyndaquil - Flamethrower - Level 37
  (155, 15500, 53, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cyndaquil - Rollout - Level 40
  (155, 15500, 205, 9, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cyndaquil - Double-Edge - Level 46
  (155, 15500, 38, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cyndaquil - Eruption - Level 49
  (155, 15500, 284, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Cyndaquil - Toxic - TM06
  (155, 15500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Cyndaquil - Hidden Power - TM10
  (155, 15500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Cyndaquil - Sunny Day - TM11
  (155, 15500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Cyndaquil - Protect - TM17
  (155, 15500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Cyndaquil - Frustration - TM21
  (155, 15500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 18),
  -- Cyndaquil - Return - TM27
  (155, 15500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 19),
  -- Cyndaquil - Dig - TM28
  (155, 15500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 20),
  -- Cyndaquil - Double Team - TM32
  (155, 15500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 21),
  -- Cyndaquil - Flamethrower - TM35
  (155, 15500, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 22),
  -- Cyndaquil - Fire Blast - TM38
  (155, 15500, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 23),
  -- Cyndaquil - Aerial Ace - TM40
  (155, 15500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 24),
  -- Cyndaquil - Facade - TM42
  (155, 15500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 25),
  -- Cyndaquil - Secret Power - TM43
  (155, 15500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 26),
  -- Cyndaquil - Rest - TM44
  (155, 15500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 27),
  -- Cyndaquil - Attract - TM45
  (155, 15500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 28),
  -- Cyndaquil - Overheat - TM50
  (155, 15500, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 29),
  -- Cyndaquil - Endure - TM58
  (155, 15500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 30),
  -- Cyndaquil - Will-O-Wisp - TM61
  (155, 15500, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 31),
  -- Cyndaquil - Captivate - TM78
  (155, 15500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 32),
  -- Cyndaquil - Sleep Talk - TM82
  (155, 15500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 33),
  -- Cyndaquil - Natural Gift - TM83
  (155, 15500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 34),
  -- Cyndaquil - Swagger - TM87
  (155, 15500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 35),
  -- Cyndaquil - Substitute - TM90
  (155, 15500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 36),
  -- Cyndaquil - Cut - HM01
  (155, 15500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 37),
  -- Cyndaquil - Double Kick - Egg
  (155, 15500, 24, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cyndaquil - Thrash - Egg
  (155, 15500, 37, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cyndaquil - Double-Edge - Egg
  (155, 15500, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cyndaquil - Quick Attack - Egg
  (155, 15500, 98, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cyndaquil - Fury Swipes - Egg
  (155, 15500, 154, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cyndaquil - Reversal - Egg
  (155, 15500, 179, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cyndaquil - Foresight - Egg
  (155, 15500, 193, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cyndaquil - Crush Claw - Egg
  (155, 15500, 306, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cyndaquil - Howl - Egg
  (155, 15500, 336, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cyndaquil - Covet - Egg
  (155, 15500, 343, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cyndaquil - Flare Blitz - Egg
  (155, 15500, 394, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cyndaquil - Swift - Tutor
  (155, 15500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Cyndaquil - Snore - Tutor
  (155, 15500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Cyndaquil - Mud-Slap - Tutor
  (155, 15500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Cyndaquil - Rollout - Tutor
  (155, 15500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Cyndaquil - Heat Wave - Tutor
  (155, 15500, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Quilava - Tackle - Level 1
  (156, 15600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quilava - Leer - Level 1
  (156, 15600, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quilava - Smokescreen - Level 1
  (156, 15600, 108, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quilava - Smokescreen - Level 4
  (156, 15600, 108, 9, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Quilava - Ember - Level 10
  (156, 15600, 52, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Quilava - Quick Attack - Level 13
  (156, 15600, 98, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Quilava - Flame Wheel - Level 20
  (156, 15600, 172, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Quilava - Defense Curl - Level 24
  (156, 15600, 111, 9, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Quilava - Swift - Level 31
  (156, 15600, 129, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Quilava - Lava Plume - Level 35
  (156, 15600, 436, 9, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Quilava - Flamethrower - Level 42
  (156, 15600, 53, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Quilava - Rollout - Level 46
  (156, 15600, 205, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Quilava - Double-Edge - Level 53
  (156, 15600, 38, 9, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Quilava - Eruption - Level 57
  (156, 15600, 284, 9, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Quilava - Focus Punch - TM01
  (156, 15600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Quilava - Roar - TM05
  (156, 15600, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 16),
  -- Quilava - Toxic - TM06
  (156, 15600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Quilava - Hidden Power - TM10
  (156, 15600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Quilava - Sunny Day - TM11
  (156, 15600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Quilava - Protect - TM17
  (156, 15600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Quilava - Frustration - TM21
  (156, 15600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Quilava - Return - TM27
  (156, 15600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Quilava - Dig - TM28
  (156, 15600, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 23),
  -- Quilava - Brick Break - TM31
  (156, 15600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 24),
  -- Quilava - Double Team - TM32
  (156, 15600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Quilava - Flamethrower - TM35
  (156, 15600, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 26),
  -- Quilava - Fire Blast - TM38
  (156, 15600, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 27),
  -- Quilava - Aerial Ace - TM40
  (156, 15600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 28),
  -- Quilava - Facade - TM42
  (156, 15600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Quilava - Secret Power - TM43
  (156, 15600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Quilava - Rest - TM44
  (156, 15600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Quilava - Attract - TM45
  (156, 15600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Quilava - Overheat - TM50
  (156, 15600, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 33),
  -- Quilava - Endure - TM58
  (156, 15600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Quilava - Will-O-Wisp - TM61
  (156, 15600, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 35),
  -- Quilava - Captivate - TM78
  (156, 15600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Quilava - Sleep Talk - TM82
  (156, 15600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 37),
  -- Quilava - Natural Gift - TM83
  (156, 15600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 38),
  -- Quilava - Swagger - TM87
  (156, 15600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 39),
  -- Quilava - Substitute - TM90
  (156, 15600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 40),
  -- Quilava - Cut - HM01
  (156, 15600, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 41),
  -- Quilava - Strength - HM04
  (156, 15600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 42),
  -- Quilava - Rock Smash - HM06
  (156, 15600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 43),
  -- Quilava - Swift - Tutor
  (156, 15600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Quilava - Snore - Tutor
  (156, 15600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Quilava - Mud-Slap - Tutor
  (156, 15600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Quilava - Rollout - Tutor
  (156, 15600, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Quilava - Fury Cutter - Tutor
  (156, 15600, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Quilava - Heat Wave - Tutor
  (156, 15600, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Typhlosion - Tackle - Level 1
  (157, 15700, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Typhlosion - Leer - Level 1
  (157, 15700, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Typhlosion - Ember - Level 1
  (157, 15700, 52, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Typhlosion - Smokescreen - Level 1
  (157, 15700, 108, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Typhlosion - Gyro Ball - Level 1
  (157, 15700, 360, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Typhlosion - Smokescreen - Level 4
  (157, 15700, 108, 9, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Typhlosion - Ember - Level 10
  (157, 15700, 52, 9, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Typhlosion - Quick Attack - Level 13
  (157, 15700, 98, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Typhlosion - Flame Wheel - Level 20
  (157, 15700, 172, 9, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Typhlosion - Defense Curl - Level 24
  (157, 15700, 111, 9, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Typhlosion - Swift - Level 31
  (157, 15700, 129, 9, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Typhlosion - Lava Plume - Level 35
  (157, 15700, 436, 9, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Typhlosion - Flamethrower - Level 42
  (157, 15700, 53, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Typhlosion - Rollout - Level 46
  (157, 15700, 205, 9, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Typhlosion - Double-Edge - Level 53
  (157, 15700, 38, 9, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Typhlosion - Eruption - Level 57
  (157, 15700, 284, 9, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Typhlosion - Focus Punch - TM01
  (157, 15700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Typhlosion - Roar - TM05
  (157, 15700, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Typhlosion - Toxic - TM06
  (157, 15700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Typhlosion - Hidden Power - TM10
  (157, 15700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Typhlosion - Sunny Day - TM11
  (157, 15700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Typhlosion - Hyper Beam - TM15
  (157, 15700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Typhlosion - Protect - TM17
  (157, 15700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Typhlosion - Frustration - TM21
  (157, 15700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Typhlosion - Solar Beam - TM22
  (157, 15700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Typhlosion - Earthquake - TM26
  (157, 15700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 26),
  -- Typhlosion - Return - TM27
  (157, 15700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Typhlosion - Dig - TM28
  (157, 15700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Typhlosion - Brick Break - TM31
  (157, 15700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Typhlosion - Double Team - TM32
  (157, 15700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Typhlosion - Flamethrower - TM35
  (157, 15700, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 31),
  -- Typhlosion - Fire Blast - TM38
  (157, 15700, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 32),
  -- Typhlosion - Rock Tomb - TM39
  (157, 15700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 33),
  -- Typhlosion - Aerial Ace - TM40
  (157, 15700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 34),
  -- Typhlosion - Facade - TM42
  (157, 15700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Typhlosion - Secret Power - TM43
  (157, 15700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Typhlosion - Rest - TM44
  (157, 15700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Typhlosion - Attract - TM45
  (157, 15700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Typhlosion - Overheat - TM50
  (157, 15700, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 39),
  -- Typhlosion - Focus Blast - TM52
  (157, 15700, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 40),
  -- Typhlosion - Fling - TM56
  (157, 15700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 41),
  -- Typhlosion - Endure - TM58
  (157, 15700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Typhlosion - Will-O-Wisp - TM61
  (157, 15700, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 43),
  -- Typhlosion - Shadow Claw - TM65
  (157, 15700, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 44),
  -- Typhlosion - Giga Impact - TM68
  (157, 15700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Typhlosion - Gyro Ball - TM74
  (157, 15700, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 46),
  -- Typhlosion - Captivate - TM78
  (157, 15700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 47),
  -- Typhlosion - Rock Slide - TM80
  (157, 15700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 48),
  -- Typhlosion - Sleep Talk - TM82
  (157, 15700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Typhlosion - Natural Gift - TM83
  (157, 15700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Typhlosion - Swagger - TM87
  (157, 15700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Typhlosion - Substitute - TM90
  (157, 15700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Typhlosion - Cut - HM01
  (157, 15700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 53),
  -- Typhlosion - Strength - HM04
  (157, 15700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 54),
  -- Typhlosion - Rock Smash - HM06
  (157, 15700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 55),
  -- Typhlosion - Rock Climb - HM08
  (157, 15700, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 56),
  -- Typhlosion - Fire Punch - Tutor
  (157, 15700, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Typhlosion - Thunder Punch - Tutor
  (157, 15700, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Typhlosion - Swift - Tutor
  (157, 15700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Typhlosion - Snore - Tutor
  (157, 15700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Typhlosion - Mud-Slap - Tutor
  (157, 15700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Typhlosion - Rollout - Tutor
  (157, 15700, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Typhlosion - Fury Cutter - Tutor
  (157, 15700, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Typhlosion - Heat Wave - Tutor
  (157, 15700, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Typhlosion - Blast Burn - Tutor
  (157, 15700, 307, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Totodile - Scratch - Level 1
  (158, 15800, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Totodile - Leer - Level 1
  (158, 15800, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Totodile - Water Gun - Level 6
  (158, 15800, 55, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Totodile - Rage - Level 8
  (158, 15800, 99, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Totodile - Bite - Level 13
  (158, 15800, 44, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Totodile - Scary Face - Level 15
  (158, 15800, 184, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Totodile - Ice Fang - Level 20
  (158, 15800, 423, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Totodile - Flail - Level 22
  (158, 15800, 175, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Totodile - Crunch - Level 27
  (158, 15800, 242, 9, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Totodile - Slash - Level 29
  (158, 15800, 163, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Totodile - Screech - Level 34
  (158, 15800, 103, 9, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Totodile - Thrash - Level 36
  (158, 15800, 37, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Totodile - Aqua Tail - Level 41
  (158, 15800, 401, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Totodile - Superpower - Level 43
  (158, 15800, 276, 9, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Totodile - Hydro Pump - Level 48
  (158, 15800, 56, 9, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Totodile - Focus Punch - TM01
  (158, 15800, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Totodile - Water Pulse - TM03
  (158, 15800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Totodile - Toxic - TM06
  (158, 15800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Totodile - Hail - TM07
  (158, 15800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 19),
  -- Totodile - Hidden Power - TM10
  (158, 15800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Totodile - Ice Beam - TM13
  (158, 15800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Totodile - Blizzard - TM14
  (158, 15800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Totodile - Protect - TM17
  (158, 15800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Totodile - Rain Dance - TM18
  (158, 15800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Totodile - Frustration - TM21
  (158, 15800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Totodile - Iron Tail - TM23
  (158, 15800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Totodile - Return - TM27
  (158, 15800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Totodile - Dig - TM28
  (158, 15800, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Totodile - Brick Break - TM31
  (158, 15800, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Totodile - Double Team - TM32
  (158, 15800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Totodile - Rock Tomb - TM39
  (158, 15800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 31),
  -- Totodile - Aerial Ace - TM40
  (158, 15800, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 32),
  -- Totodile - Facade - TM42
  (158, 15800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Totodile - Secret Power - TM43
  (158, 15800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Totodile - Rest - TM44
  (158, 15800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Totodile - Attract - TM45
  (158, 15800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Totodile - Fling - TM56
  (158, 15800, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 37),
  -- Totodile - Endure - TM58
  (158, 15800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Totodile - Shadow Claw - TM65
  (158, 15800, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 39),
  -- Totodile - Swords Dance - TM75
  (158, 15800, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 40),
  -- Totodile - Captivate - TM78
  (158, 15800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Totodile - Rock Slide - TM80
  (158, 15800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 42),
  -- Totodile - Sleep Talk - TM82
  (158, 15800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Totodile - Natural Gift - TM83
  (158, 15800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Totodile - Swagger - TM87
  (158, 15800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Totodile - Substitute - TM90
  (158, 15800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Totodile - Cut - HM01
  (158, 15800, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 47),
  -- Totodile - Surf - HM03
  (158, 15800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 48),
  -- Totodile - Defog - HM05
  (158, 15800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 49),
  -- Totodile - Waterfall - HM07
  (158, 15800, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 50),
  -- Totodile - Ice Punch - Egg
  (158, 15800, 8, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Totodile - Thrash - Egg
  (158, 15800, 37, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Totodile - Hydro Pump - Egg
  (158, 15800, 56, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Totodile - Rock Slide - Egg
  (158, 15800, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Totodile - Metal Claw - Egg
  (158, 15800, 232, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Totodile - Crunch - Egg
  (158, 15800, 242, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Totodile - Ancient Power - Egg
  (158, 15800, 246, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Totodile - Mud Sport - Egg
  (158, 15800, 300, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Totodile - Dragon Claw - Egg
  (158, 15800, 337, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Totodile - Water Sport - Egg
  (158, 15800, 346, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Totodile - Dragon Dance - Egg
  (158, 15800, 349, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Totodile - Ice Punch - Tutor
  (158, 15800, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Totodile - Snore - Tutor
  (158, 15800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Totodile - Spite - Tutor
  (158, 15800, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Totodile - Mud-Slap - Tutor
  (158, 15800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Totodile - Icy Wind - Tutor
  (158, 15800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Totodile - Ancient Power - Tutor
  (158, 15800, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Totodile - Uproar - Tutor
  (158, 15800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Totodile - Superpower - Tutor
  (158, 15800, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Totodile - Dive - Tutor
  (158, 15800, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Totodile - Aqua Tail - Tutor
  (158, 15800, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Croconaw - Scratch - Level 1
  (159, 15900, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croconaw - Leer - Level 1
  (159, 15900, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Croconaw - Water Gun - Level 1
  (159, 15900, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Croconaw - Water Gun - Level 6
  (159, 15900, 55, 9, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Croconaw - Rage - Level 8
  (159, 15900, 99, 9, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Croconaw - Bite - Level 13
  (159, 15900, 44, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Croconaw - Scary Face - Level 15
  (159, 15900, 184, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Croconaw - Ice Fang - Level 21
  (159, 15900, 423, 9, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Croconaw - Flail - Level 24
  (159, 15900, 175, 9, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Croconaw - Crunch - Level 30
  (159, 15900, 242, 9, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Croconaw - Slash - Level 33
  (159, 15900, 163, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Croconaw - Screech - Level 39
  (159, 15900, 103, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Croconaw - Thrash - Level 42
  (159, 15900, 37, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Croconaw - Aqua Tail - Level 48
  (159, 15900, 401, 9, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Croconaw - Superpower - Level 51
  (159, 15900, 276, 9, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Croconaw - Hydro Pump - Level 57
  (159, 15900, 56, 9, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Croconaw - Focus Punch - TM01
  (159, 15900, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Croconaw - Water Pulse - TM03
  (159, 15900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Croconaw - Roar - TM05
  (159, 15900, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 19),
  -- Croconaw - Toxic - TM06
  (159, 15900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Croconaw - Hail - TM07
  (159, 15900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 21),
  -- Croconaw - Hidden Power - TM10
  (159, 15900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Croconaw - Ice Beam - TM13
  (159, 15900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Croconaw - Blizzard - TM14
  (159, 15900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 24),
  -- Croconaw - Protect - TM17
  (159, 15900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Croconaw - Rain Dance - TM18
  (159, 15900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Croconaw - Frustration - TM21
  (159, 15900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Croconaw - Iron Tail - TM23
  (159, 15900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Croconaw - Return - TM27
  (159, 15900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Croconaw - Dig - TM28
  (159, 15900, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 30),
  -- Croconaw - Brick Break - TM31
  (159, 15900, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 31),
  -- Croconaw - Double Team - TM32
  (159, 15900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Croconaw - Rock Tomb - TM39
  (159, 15900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 33),
  -- Croconaw - Aerial Ace - TM40
  (159, 15900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 34),
  -- Croconaw - Facade - TM42
  (159, 15900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Croconaw - Secret Power - TM43
  (159, 15900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Croconaw - Rest - TM44
  (159, 15900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Croconaw - Attract - TM45
  (159, 15900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Croconaw - Fling - TM56
  (159, 15900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 39),
  -- Croconaw - Endure - TM58
  (159, 15900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Croconaw - Shadow Claw - TM65
  (159, 15900, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 41),
  -- Croconaw - Swords Dance - TM75
  (159, 15900, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 42),
  -- Croconaw - Captivate - TM78
  (159, 15900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Croconaw - Rock Slide - TM80
  (159, 15900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 44),
  -- Croconaw - Sleep Talk - TM82
  (159, 15900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Croconaw - Natural Gift - TM83
  (159, 15900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Croconaw - Swagger - TM87
  (159, 15900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Croconaw - Substitute - TM90
  (159, 15900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Croconaw - Cut - HM01
  (159, 15900, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 49),
  -- Croconaw - Surf - HM03
  (159, 15900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 50),
  -- Croconaw - Strength - HM04
  (159, 15900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 51),
  -- Croconaw - Defog - HM05
  (159, 15900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 52),
  -- Croconaw - Rock Smash - HM06
  (159, 15900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Croconaw - Waterfall - HM07
  (159, 15900, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 54),
  -- Croconaw - Ice Punch - Tutor
  (159, 15900, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Croconaw - Snore - Tutor
  (159, 15900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Croconaw - Spite - Tutor
  (159, 15900, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Croconaw - Mud-Slap - Tutor
  (159, 15900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Croconaw - Icy Wind - Tutor
  (159, 15900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Croconaw - Fury Cutter - Tutor
  (159, 15900, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Croconaw - Ancient Power - Tutor
  (159, 15900, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Croconaw - Uproar - Tutor
  (159, 15900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Croconaw - Superpower - Tutor
  (159, 15900, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Croconaw - Dive - Tutor
  (159, 15900, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Feraligatr - Scratch - Level 1
  (160, 16000, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feraligatr - Leer - Level 1
  (160, 16000, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Feraligatr - Water Gun - Level 1
  (160, 16000, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Feraligatr - Rage - Level 1
  (160, 16000, 99, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Feraligatr - Water Gun - Level 6
  (160, 16000, 55, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Feraligatr - Rage - Level 8
  (160, 16000, 99, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Feraligatr - Bite - Level 13
  (160, 16000, 44, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Feraligatr - Scary Face - Level 15
  (160, 16000, 184, 9, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Feraligatr - Ice Fang - Level 21
  (160, 16000, 423, 9, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Feraligatr - Flail - Level 24
  (160, 16000, 175, 9, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Feraligatr - Agility - Level 30
  (160, 16000, 97, 9, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Feraligatr - Crunch - Level 32
  (160, 16000, 242, 9, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Feraligatr - Slash - Level 37
  (160, 16000, 163, 9, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Feraligatr - Screech - Level 45
  (160, 16000, 103, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Feraligatr - Thrash - Level 50
  (160, 16000, 37, 9, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Feraligatr - Aqua Tail - Level 58
  (160, 16000, 401, 9, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Feraligatr - Superpower - Level 63
  (160, 16000, 276, 9, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Feraligatr - Hydro Pump - Level 71
  (160, 16000, 56, 9, NULL, 1, 71, NULL, NULL, NULL, 18),
  -- Feraligatr - Focus Punch - TM01
  (160, 16000, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 19),
  -- Feraligatr - Dragon Claw - TM02
  (160, 16000, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 20),
  -- Feraligatr - Water Pulse - TM03
  (160, 16000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 21),
  -- Feraligatr - Roar - TM05
  (160, 16000, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 22),
  -- Feraligatr - Toxic - TM06
  (160, 16000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 23),
  -- Feraligatr - Hail - TM07
  (160, 16000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 24),
  -- Feraligatr - Hidden Power - TM10
  (160, 16000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 25),
  -- Feraligatr - Ice Beam - TM13
  (160, 16000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 26),
  -- Feraligatr - Blizzard - TM14
  (160, 16000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 27),
  -- Feraligatr - Hyper Beam - TM15
  (160, 16000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 28),
  -- Feraligatr - Protect - TM17
  (160, 16000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 29),
  -- Feraligatr - Rain Dance - TM18
  (160, 16000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 30),
  -- Feraligatr - Frustration - TM21
  (160, 16000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 31),
  -- Feraligatr - Iron Tail - TM23
  (160, 16000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 32),
  -- Feraligatr - Earthquake - TM26
  (160, 16000, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 33),
  -- Feraligatr - Return - TM27
  (160, 16000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 34),
  -- Feraligatr - Dig - TM28
  (160, 16000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 35),
  -- Feraligatr - Brick Break - TM31
  (160, 16000, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 36),
  -- Feraligatr - Double Team - TM32
  (160, 16000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 37),
  -- Feraligatr - Rock Tomb - TM39
  (160, 16000, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 38),
  -- Feraligatr - Aerial Ace - TM40
  (160, 16000, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 39),
  -- Feraligatr - Facade - TM42
  (160, 16000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 40),
  -- Feraligatr - Secret Power - TM43
  (160, 16000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 41),
  -- Feraligatr - Rest - TM44
  (160, 16000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 42),
  -- Feraligatr - Attract - TM45
  (160, 16000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 43),
  -- Feraligatr - Focus Blast - TM52
  (160, 16000, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 44),
  -- Feraligatr - Fling - TM56
  (160, 16000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 45),
  -- Feraligatr - Endure - TM58
  (160, 16000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 46),
  -- Feraligatr - Dragon Pulse - TM59
  (160, 16000, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 47),
  -- Feraligatr - Shadow Claw - TM65
  (160, 16000, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 48),
  -- Feraligatr - Giga Impact - TM68
  (160, 16000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 49),
  -- Feraligatr - Avalanche - TM72
  (160, 16000, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 50),
  -- Feraligatr - Swords Dance - TM75
  (160, 16000, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 51),
  -- Feraligatr - Captivate - TM78
  (160, 16000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 52),
  -- Feraligatr - Rock Slide - TM80
  (160, 16000, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 53),
  -- Feraligatr - Sleep Talk - TM82
  (160, 16000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 54),
  -- Feraligatr - Natural Gift - TM83
  (160, 16000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 55),
  -- Feraligatr - Swagger - TM87
  (160, 16000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 56),
  -- Feraligatr - Substitute - TM90
  (160, 16000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 57),
  -- Feraligatr - Cut - HM01
  (160, 16000, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 58),
  -- Feraligatr - Surf - HM03
  (160, 16000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 59),
  -- Feraligatr - Strength - HM04
  (160, 16000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 60),
  -- Feraligatr - Defog - HM05
  (160, 16000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 61),
  -- Feraligatr - Rock Smash - HM06
  (160, 16000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 62),
  -- Feraligatr - Waterfall - HM07
  (160, 16000, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 63),
  -- Feraligatr - Rock Climb - HM08
  (160, 16000, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 64),
  -- Feraligatr - Ice Punch - Tutor
  (160, 16000, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Feraligatr - Snore - Tutor
  (160, 16000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Feraligatr - Spite - Tutor
  (160, 16000, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Feraligatr - Mud-Slap - Tutor
  (160, 16000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Feraligatr - Icy Wind - Tutor
  (160, 16000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Feraligatr - Outrage - Tutor
  (160, 16000, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Feraligatr - Fury Cutter - Tutor
  (160, 16000, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Feraligatr - Ancient Power - Tutor
  (160, 16000, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Feraligatr - Uproar - Tutor
  (160, 16000, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Feraligatr - Superpower - Tutor
  (160, 16000, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Feraligatr - Dive - Tutor
  (160, 16000, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Feraligatr - Hydro Cannon - Tutor
  (160, 16000, 308, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Feraligatr - Aqua Tail - Tutor
  (160, 16000, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Sentret - Scratch - Level 1
  (161, 16100, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sentret - Foresight - Level 1
  (161, 16100, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sentret - Defense Curl - Level 4
  (161, 16100, 111, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sentret - Quick Attack - Level 7
  (161, 16100, 98, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Sentret - Fury Swipes - Level 13
  (161, 16100, 154, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Sentret - Helping Hand - Level 16
  (161, 16100, 270, 9, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Sentret - Follow Me - Level 19
  (161, 16100, 266, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Sentret - Slam - Level 25
  (161, 16100, 21, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sentret - Rest - Level 28
  (161, 16100, 156, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sentret - Sucker Punch - Level 31
  (161, 16100, 389, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Sentret - Amnesia - Level 36
  (161, 16100, 133, 9, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Sentret - Baton Pass - Level 39
  (161, 16100, 226, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Sentret - Me First - Level 42
  (161, 16100, 382, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Sentret - Hyper Voice - Level 47
  (161, 16100, 304, 9, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Sentret - Focus Punch - TM01
  (161, 16100, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Sentret - Water Pulse - TM03
  (161, 16100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Sentret - Toxic - TM06
  (161, 16100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Sentret - Hidden Power - TM10
  (161, 16100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Sentret - Sunny Day - TM11
  (161, 16100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Sentret - Ice Beam - TM13
  (161, 16100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Sentret - Protect - TM17
  (161, 16100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Sentret - Rain Dance - TM18
  (161, 16100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Sentret - Frustration - TM21
  (161, 16100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Sentret - Solar Beam - TM22
  (161, 16100, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Sentret - Iron Tail - TM23
  (161, 16100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Sentret - Thunderbolt - TM24
  (161, 16100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Sentret - Return - TM27
  (161, 16100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Sentret - Dig - TM28
  (161, 16100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Sentret - Shadow Ball - TM30
  (161, 16100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Sentret - Brick Break - TM31
  (161, 16100, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 30),
  -- Sentret - Double Team - TM32
  (161, 16100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Sentret - Shock Wave - TM34
  (161, 16100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 32),
  -- Sentret - Flamethrower - TM35
  (161, 16100, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 33),
  -- Sentret - Facade - TM42
  (161, 16100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Sentret - Secret Power - TM43
  (161, 16100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Sentret - Rest - TM44
  (161, 16100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Sentret - Attract - TM45
  (161, 16100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Sentret - Thief - TM46
  (161, 16100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 38),
  -- Sentret - Fling - TM56
  (161, 16100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 39),
  -- Sentret - Charge Beam - TM57
  (161, 16100, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 40),
  -- Sentret - Endure - TM58
  (161, 16100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Sentret - Shadow Claw - TM65
  (161, 16100, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 42),
  -- Sentret - Captivate - TM78
  (161, 16100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Sentret - Sleep Talk - TM82
  (161, 16100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Sentret - Natural Gift - TM83
  (161, 16100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Sentret - Grass Knot - TM86
  (161, 16100, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 46),
  -- Sentret - Swagger - TM87
  (161, 16100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Sentret - U-turn - TM89
  (161, 16100, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 48),
  -- Sentret - Substitute - TM90
  (161, 16100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Sentret - Cut - HM01
  (161, 16100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 50),
  -- Sentret - Surf - HM03
  (161, 16100, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 51),
  -- Sentret - Defog - HM05
  (161, 16100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 52),
  -- Sentret - Double-Edge - Egg
  (161, 16100, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sentret - Focus Energy - Egg
  (161, 16100, 116, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sentret - Slash - Egg
  (161, 16100, 163, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sentret - Substitute - Egg
  (161, 16100, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sentret - Reversal - Egg
  (161, 16100, 179, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sentret - Charm - Egg
  (161, 16100, 204, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sentret - Pursuit - Egg
  (161, 16100, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sentret - Trick - Egg
  (161, 16100, 271, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sentret - Assist - Egg
  (161, 16100, 274, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sentret - Covet - Egg
  (161, 16100, 343, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sentret - Last Resort - Egg
  (161, 16100, 387, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sentret - Fire Punch - Tutor
  (161, 16100, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Sentret - Ice Punch - Tutor
  (161, 16100, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Sentret - Thunder Punch - Tutor
  (161, 16100, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Sentret - Swift - Tutor
  (161, 16100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Sentret - Snore - Tutor
  (161, 16100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Sentret - Mud-Slap - Tutor
  (161, 16100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Sentret - Rollout - Tutor
  (161, 16100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Sentret - Fury Cutter - Tutor
  (161, 16100, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Sentret - Uproar - Tutor
  (161, 16100, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Sentret - Helping Hand - Tutor
  (161, 16100, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Sentret - Knock Off - Tutor
  (161, 16100, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Sentret - Last Resort - Tutor
  (161, 16100, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Sentret - Sucker Punch - Tutor
  (161, 16100, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Sentret - Aqua Tail - Tutor
  (161, 16100, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Furret - Scratch - Level 1
  (162, 16200, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Furret - Quick Attack - Level 1
  (162, 16200, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Furret - Defense Curl - Level 1
  (162, 16200, 111, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Furret - Foresight - Level 1
  (162, 16200, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Furret - Defense Curl - Level 4
  (162, 16200, 111, 9, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Furret - Quick Attack - Level 7
  (162, 16200, 98, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Furret - Fury Swipes - Level 13
  (162, 16200, 154, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Furret - Helping Hand - Level 17
  (162, 16200, 270, 9, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Furret - Follow Me - Level 21
  (162, 16200, 266, 9, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Furret - Slam - Level 28
  (162, 16200, 21, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Furret - Rest - Level 32
  (162, 16200, 156, 9, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Furret - Sucker Punch - Level 36
  (162, 16200, 389, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Furret - Amnesia - Level 42
  (162, 16200, 133, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Furret - Baton Pass - Level 46
  (162, 16200, 226, 9, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Furret - Me First - Level 50
  (162, 16200, 382, 9, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Furret - Hyper Voice - Level 56
  (162, 16200, 304, 9, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Furret - Focus Punch - TM01
  (162, 16200, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Furret - Water Pulse - TM03
  (162, 16200, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Furret - Toxic - TM06
  (162, 16200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Furret - Hidden Power - TM10
  (162, 16200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Furret - Sunny Day - TM11
  (162, 16200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Furret - Ice Beam - TM13
  (162, 16200, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Furret - Blizzard - TM14
  (162, 16200, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Furret - Hyper Beam - TM15
  (162, 16200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Furret - Protect - TM17
  (162, 16200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Furret - Rain Dance - TM18
  (162, 16200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Furret - Frustration - TM21
  (162, 16200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Furret - Solar Beam - TM22
  (162, 16200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 28),
  -- Furret - Iron Tail - TM23
  (162, 16200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Furret - Thunderbolt - TM24
  (162, 16200, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 30),
  -- Furret - Thunder - TM25
  (162, 16200, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 31),
  -- Furret - Return - TM27
  (162, 16200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Furret - Dig - TM28
  (162, 16200, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 33),
  -- Furret - Shadow Ball - TM30
  (162, 16200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 34),
  -- Furret - Brick Break - TM31
  (162, 16200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 35),
  -- Furret - Double Team - TM32
  (162, 16200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 36),
  -- Furret - Shock Wave - TM34
  (162, 16200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 37),
  -- Furret - Flamethrower - TM35
  (162, 16200, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 38),
  -- Furret - Facade - TM42
  (162, 16200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 39),
  -- Furret - Secret Power - TM43
  (162, 16200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 40),
  -- Furret - Rest - TM44
  (162, 16200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 41),
  -- Furret - Attract - TM45
  (162, 16200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 42),
  -- Furret - Thief - TM46
  (162, 16200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 43),
  -- Furret - Focus Blast - TM52
  (162, 16200, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 44),
  -- Furret - Fling - TM56
  (162, 16200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 45),
  -- Furret - Charge Beam - TM57
  (162, 16200, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 46),
  -- Furret - Endure - TM58
  (162, 16200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 47),
  -- Furret - Shadow Claw - TM65
  (162, 16200, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 48),
  -- Furret - Giga Impact - TM68
  (162, 16200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 49),
  -- Furret - Captivate - TM78
  (162, 16200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 50),
  -- Furret - Sleep Talk - TM82
  (162, 16200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Furret - Natural Gift - TM83
  (162, 16200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Furret - Grass Knot - TM86
  (162, 16200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 53),
  -- Furret - Swagger - TM87
  (162, 16200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Furret - U-turn - TM89
  (162, 16200, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 55),
  -- Furret - Substitute - TM90
  (162, 16200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 56),
  -- Furret - Cut - HM01
  (162, 16200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 57),
  -- Furret - Surf - HM03
  (162, 16200, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 58),
  -- Furret - Strength - HM04
  (162, 16200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 59),
  -- Furret - Defog - HM05
  (162, 16200, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 60),
  -- Furret - Rock Smash - HM06
  (162, 16200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 61),
  -- Furret - Fire Punch - Tutor
  (162, 16200, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Furret - Ice Punch - Tutor
  (162, 16200, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Furret - Thunder Punch - Tutor
  (162, 16200, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Furret - Swift - Tutor
  (162, 16200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Furret - Snore - Tutor
  (162, 16200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Furret - Mud-Slap - Tutor
  (162, 16200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Furret - Rollout - Tutor
  (162, 16200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Furret - Fury Cutter - Tutor
  (162, 16200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Furret - Uproar - Tutor
  (162, 16200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Furret - Helping Hand - Tutor
  (162, 16200, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Furret - Knock Off - Tutor
  (162, 16200, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Furret - Last Resort - Tutor
  (162, 16200, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Furret - Sucker Punch - Tutor
  (162, 16200, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Furret - Aqua Tail - Tutor
  (162, 16200, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Hoothoot - Tackle - Level 1
  (163, 16300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoothoot - Growl - Level 1
  (163, 16300, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoothoot - Foresight - Level 1
  (163, 16300, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hoothoot - Hypnosis - Level 5
  (163, 16300, 95, 9, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Hoothoot - Peck - Level 9
  (163, 16300, 64, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Hoothoot - Uproar - Level 13
  (163, 16300, 253, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Hoothoot - Reflect - Level 17
  (163, 16300, 115, 9, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Hoothoot - Confusion - Level 21
  (163, 16300, 93, 9, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Hoothoot - Take Down - Level 25
  (163, 16300, 36, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Hoothoot - Air Slash - Level 29
  (163, 16300, 403, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Hoothoot - Zen Headbutt - Level 33
  (163, 16300, 428, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Hoothoot - Extrasensory - Level 37
  (163, 16300, 326, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Hoothoot - Psycho Shift - Level 41
  (163, 16300, 375, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Hoothoot - Roost - Level 45
  (163, 16300, 355, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Hoothoot - Dream Eater - Level 49
  (163, 16300, 138, 9, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Hoothoot - Toxic - TM06
  (163, 16300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Hoothoot - Hidden Power - TM10
  (163, 16300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Hoothoot - Sunny Day - TM11
  (163, 16300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Hoothoot - Protect - TM17
  (163, 16300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Hoothoot - Rain Dance - TM18
  (163, 16300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Hoothoot - Frustration - TM21
  (163, 16300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Hoothoot - Return - TM27
  (163, 16300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Hoothoot - Psychic - TM29
  (163, 16300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 23),
  -- Hoothoot - Shadow Ball - TM30
  (163, 16300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 24),
  -- Hoothoot - Double Team - TM32
  (163, 16300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Hoothoot - Reflect - TM33
  (163, 16300, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 26),
  -- Hoothoot - Aerial Ace - TM40
  (163, 16300, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 27),
  -- Hoothoot - Facade - TM42
  (163, 16300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Hoothoot - Secret Power - TM43
  (163, 16300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Hoothoot - Rest - TM44
  (163, 16300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Hoothoot - Attract - TM45
  (163, 16300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Hoothoot - Thief - TM46
  (163, 16300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 32),
  -- Hoothoot - Steel Wing - TM47
  (163, 16300, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 33),
  -- Hoothoot - Roost - TM51
  (163, 16300, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 34),
  -- Hoothoot - Endure - TM58
  (163, 16300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Hoothoot - Silver Wind - TM62
  (163, 16300, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 36),
  -- Hoothoot - Recycle - TM67
  (163, 16300, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 37),
  -- Hoothoot - Psych Up - TM77
  (163, 16300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 38),
  -- Hoothoot - Captivate - TM78
  (163, 16300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Hoothoot - Sleep Talk - TM82
  (163, 16300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Hoothoot - Natural Gift - TM83
  (163, 16300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Hoothoot - Dream Eater - TM85
  (163, 16300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 42),
  -- Hoothoot - Swagger - TM87
  (163, 16300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Hoothoot - Pluck - TM88
  (163, 16300, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 44),
  -- Hoothoot - Substitute - TM90
  (163, 16300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Hoothoot - Fly - HM02
  (163, 16300, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 46),
  -- Hoothoot - Defog - HM05
  (163, 16300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Hoothoot - Wing Attack - Egg
  (163, 16300, 17, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hoothoot - Whirlwind - Egg
  (163, 16300, 18, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hoothoot - Supersonic - Egg
  (163, 16300, 48, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hoothoot - Agility - Egg
  (163, 16300, 97, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hoothoot - Night Shade - Egg
  (163, 16300, 101, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hoothoot - Mirror Move - Egg
  (163, 16300, 119, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hoothoot - Sky Attack - Egg
  (163, 16300, 143, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hoothoot - Feint Attack - Egg
  (163, 16300, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hoothoot - Feather Dance - Egg
  (163, 16300, 297, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hoothoot - Swift - Tutor
  (163, 16300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Hoothoot - Mud-Slap - Tutor
  (163, 16300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Hoothoot - Twister - Tutor
  (163, 16300, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Hoothoot - Uproar - Tutor
  (163, 16300, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Hoothoot - Heat Wave - Tutor
  (163, 16300, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Hoothoot - Air Cutter - Tutor
  (163, 16300, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Hoothoot - Zen Headbutt - Tutor
  (163, 16300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Hoothoot - Ominous Wind - Tutor
  (163, 16300, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Noctowl - Tackle - Level 1
  (164, 16400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noctowl - Growl - Level 1
  (164, 16400, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noctowl - Hypnosis - Level 1
  (164, 16400, 95, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noctowl - Sky Attack - Level 1
  (164, 16400, 143, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Noctowl - Foresight - Level 1
  (164, 16400, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Noctowl - Hypnosis - Level 5
  (164, 16400, 95, 9, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Noctowl - Peck - Level 9
  (164, 16400, 64, 9, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Noctowl - Uproar - Level 13
  (164, 16400, 253, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Noctowl - Reflect - Level 17
  (164, 16400, 115, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Noctowl - Confusion - Level 22
  (164, 16400, 93, 9, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Noctowl - Take Down - Level 27
  (164, 16400, 36, 9, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Noctowl - Air Slash - Level 32
  (164, 16400, 403, 9, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Noctowl - Zen Headbutt - Level 37
  (164, 16400, 428, 9, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Noctowl - Extrasensory - Level 42
  (164, 16400, 326, 9, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Noctowl - Psycho Shift - Level 47
  (164, 16400, 375, 9, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Noctowl - Roost - Level 52
  (164, 16400, 355, 9, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Noctowl - Dream Eater - Level 57
  (164, 16400, 138, 9, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Noctowl - Toxic - TM06
  (164, 16400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Noctowl - Hidden Power - TM10
  (164, 16400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Noctowl - Sunny Day - TM11
  (164, 16400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Noctowl - Hyper Beam - TM15
  (164, 16400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Noctowl - Protect - TM17
  (164, 16400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Noctowl - Rain Dance - TM18
  (164, 16400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Noctowl - Frustration - TM21
  (164, 16400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Noctowl - Return - TM27
  (164, 16400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Noctowl - Psychic - TM29
  (164, 16400, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 26),
  -- Noctowl - Shadow Ball - TM30
  (164, 16400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Noctowl - Double Team - TM32
  (164, 16400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Noctowl - Reflect - TM33
  (164, 16400, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 29),
  -- Noctowl - Aerial Ace - TM40
  (164, 16400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 30),
  -- Noctowl - Facade - TM42
  (164, 16400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Noctowl - Secret Power - TM43
  (164, 16400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Noctowl - Rest - TM44
  (164, 16400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Noctowl - Attract - TM45
  (164, 16400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Noctowl - Thief - TM46
  (164, 16400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Noctowl - Steel Wing - TM47
  (164, 16400, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 36),
  -- Noctowl - Roost - TM51
  (164, 16400, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 37),
  -- Noctowl - Endure - TM58
  (164, 16400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Noctowl - Silver Wind - TM62
  (164, 16400, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 39),
  -- Noctowl - Recycle - TM67
  (164, 16400, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 40),
  -- Noctowl - Giga Impact - TM68
  (164, 16400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Noctowl - Psych Up - TM77
  (164, 16400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 42),
  -- Noctowl - Captivate - TM78
  (164, 16400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Noctowl - Sleep Talk - TM82
  (164, 16400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Noctowl - Natural Gift - TM83
  (164, 16400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Noctowl - Dream Eater - TM85
  (164, 16400, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 46),
  -- Noctowl - Swagger - TM87
  (164, 16400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Noctowl - Pluck - TM88
  (164, 16400, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 48),
  -- Noctowl - Substitute - TM90
  (164, 16400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Noctowl - Fly - HM02
  (164, 16400, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 50),
  -- Noctowl - Defog - HM05
  (164, 16400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 51),
  -- Noctowl - Swift - Tutor
  (164, 16400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Noctowl - Mud-Slap - Tutor
  (164, 16400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Noctowl - Twister - Tutor
  (164, 16400, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Noctowl - Uproar - Tutor
  (164, 16400, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Noctowl - Heat Wave - Tutor
  (164, 16400, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Noctowl - Air Cutter - Tutor
  (164, 16400, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Noctowl - Zen Headbutt - Tutor
  (164, 16400, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Noctowl - Ominous Wind - Tutor
  (164, 16400, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Ledyba - Tackle - Level 1
  (165, 16500, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ledyba - Supersonic - Level 6
  (165, 16500, 48, 9, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Ledyba - Comet Punch - Level 9
  (165, 16500, 4, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Ledyba - Light Screen - Level 14
  (165, 16500, 113, 9, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Ledyba - Reflect - Level 14
  (165, 16500, 115, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Ledyba - Safeguard - Level 14
  (165, 16500, 219, 9, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Ledyba - Mach Punch - Level 17
  (165, 16500, 183, 9, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Ledyba - Baton Pass - Level 22
  (165, 16500, 226, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Ledyba - Silver Wind - Level 25
  (165, 16500, 318, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Ledyba - Agility - Level 30
  (165, 16500, 97, 9, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Ledyba - Swift - Level 33
  (165, 16500, 129, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Ledyba - Double-Edge - Level 38
  (165, 16500, 38, 9, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Ledyba - Bug Buzz - Level 41
  (165, 16500, 405, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Ledyba - Focus Punch - TM01
  (165, 16500, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 14),
  -- Ledyba - Toxic - TM06
  (165, 16500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Ledyba - Hidden Power - TM10
  (165, 16500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Ledyba - Sunny Day - TM11
  (165, 16500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Ledyba - Light Screen - TM16
  (165, 16500, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 18),
  -- Ledyba - Protect - TM17
  (165, 16500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Ledyba - Giga Drain - TM19
  (165, 16500, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 20),
  -- Ledyba - Safeguard - TM20
  (165, 16500, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 21),
  -- Ledyba - Frustration - TM21
  (165, 16500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Ledyba - Solar Beam - TM22
  (165, 16500, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 23),
  -- Ledyba - Return - TM27
  (165, 16500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Ledyba - Dig - TM28
  (165, 16500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 25),
  -- Ledyba - Brick Break - TM31
  (165, 16500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 26),
  -- Ledyba - Double Team - TM32
  (165, 16500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Ledyba - Reflect - TM33
  (165, 16500, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 28),
  -- Ledyba - Aerial Ace - TM40
  (165, 16500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 29),
  -- Ledyba - Facade - TM42
  (165, 16500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Ledyba - Secret Power - TM43
  (165, 16500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Ledyba - Rest - TM44
  (165, 16500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Ledyba - Attract - TM45
  (165, 16500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Ledyba - Thief - TM46
  (165, 16500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 34),
  -- Ledyba - Roost - TM51
  (165, 16500, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 35),
  -- Ledyba - Fling - TM56
  (165, 16500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Ledyba - Endure - TM58
  (165, 16500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Ledyba - Drain Punch - TM60
  (165, 16500, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 38),
  -- Ledyba - Silver Wind - TM62
  (165, 16500, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 39),
  -- Ledyba - Flash - TM70
  (165, 16500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 40),
  -- Ledyba - Swords Dance - TM75
  (165, 16500, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 41),
  -- Ledyba - Captivate - TM78
  (165, 16500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Ledyba - Sleep Talk - TM82
  (165, 16500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Ledyba - Natural Gift - TM83
  (165, 16500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Ledyba - Swagger - TM87
  (165, 16500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Ledyba - U-turn - TM89
  (165, 16500, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 46),
  -- Ledyba - Substitute - TM90
  (165, 16500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Ledyba - Psybeam - Egg
  (165, 16500, 60, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ledyba - Screech - Egg
  (165, 16500, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ledyba - Bide - Egg
  (165, 16500, 117, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ledyba - Encore - Egg
  (165, 16500, 227, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ledyba - Knock Off - Egg
  (165, 16500, 282, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ledyba - Silver Wind - Egg
  (165, 16500, 318, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ledyba - Bug Buzz - Egg
  (165, 16500, 405, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ledyba - Bug Bite - Egg
  (165, 16500, 450, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ledyba - Ice Punch - Tutor
  (165, 16500, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Ledyba - Thunder Punch - Tutor
  (165, 16500, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Ledyba - Swift - Tutor
  (165, 16500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Ledyba - Snore - Tutor
  (165, 16500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Ledyba - Rollout - Tutor
  (165, 16500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Ledyba - Uproar - Tutor
  (165, 16500, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Ledyba - Knock Off - Tutor
  (165, 16500, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Ledyba - Air Cutter - Tutor
  (165, 16500, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Ledyba - Ominous Wind - Tutor
  (165, 16500, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Ledian - Comet Punch - Level 1
  (166, 16600, 4, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ledian - Tackle - Level 1
  (166, 16600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ledian - Supersonic - Level 1
  (166, 16600, 48, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ledian - Supersonic - Level 6
  (166, 16600, 48, 9, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Ledian - Comet Punch - Level 9
  (166, 16600, 4, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ledian - Light Screen - Level 14
  (166, 16600, 113, 9, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Ledian - Reflect - Level 14
  (166, 16600, 115, 9, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Ledian - Safeguard - Level 14
  (166, 16600, 219, 9, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Ledian - Mach Punch - Level 17
  (166, 16600, 183, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Ledian - Baton Pass - Level 24
  (166, 16600, 226, 9, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Ledian - Silver Wind - Level 29
  (166, 16600, 318, 9, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Ledian - Agility - Level 36
  (166, 16600, 97, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Ledian - Swift - Level 41
  (166, 16600, 129, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Ledian - Double-Edge - Level 48
  (166, 16600, 38, 9, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Ledian - Bug Buzz - Level 53
  (166, 16600, 405, 9, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Ledian - Focus Punch - TM01
  (166, 16600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Ledian - Toxic - TM06
  (166, 16600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Ledian - Hidden Power - TM10
  (166, 16600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Ledian - Sunny Day - TM11
  (166, 16600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Ledian - Hyper Beam - TM15
  (166, 16600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Ledian - Light Screen - TM16
  (166, 16600, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 21),
  -- Ledian - Protect - TM17
  (166, 16600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Ledian - Giga Drain - TM19
  (166, 16600, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 23),
  -- Ledian - Safeguard - TM20
  (166, 16600, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 24),
  -- Ledian - Frustration - TM21
  (166, 16600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Ledian - Solar Beam - TM22
  (166, 16600, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 26),
  -- Ledian - Return - TM27
  (166, 16600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Ledian - Dig - TM28
  (166, 16600, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Ledian - Brick Break - TM31
  (166, 16600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Ledian - Double Team - TM32
  (166, 16600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Ledian - Reflect - TM33
  (166, 16600, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 31),
  -- Ledian - Aerial Ace - TM40
  (166, 16600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 32),
  -- Ledian - Facade - TM42
  (166, 16600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Ledian - Secret Power - TM43
  (166, 16600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Ledian - Rest - TM44
  (166, 16600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Ledian - Attract - TM45
  (166, 16600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Ledian - Thief - TM46
  (166, 16600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 37),
  -- Ledian - Roost - TM51
  (166, 16600, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 38),
  -- Ledian - Focus Blast - TM52
  (166, 16600, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 39),
  -- Ledian - Fling - TM56
  (166, 16600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 40),
  -- Ledian - Endure - TM58
  (166, 16600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Ledian - Drain Punch - TM60
  (166, 16600, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 42),
  -- Ledian - Silver Wind - TM62
  (166, 16600, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 43),
  -- Ledian - Giga Impact - TM68
  (166, 16600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 44),
  -- Ledian - Flash - TM70
  (166, 16600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 45),
  -- Ledian - Swords Dance - TM75
  (166, 16600, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 46),
  -- Ledian - Captivate - TM78
  (166, 16600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 47),
  -- Ledian - Sleep Talk - TM82
  (166, 16600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Ledian - Natural Gift - TM83
  (166, 16600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Ledian - Swagger - TM87
  (166, 16600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Ledian - U-turn - TM89
  (166, 16600, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 51),
  -- Ledian - Substitute - TM90
  (166, 16600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Ledian - Strength - HM04
  (166, 16600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 53),
  -- Ledian - Rock Smash - HM06
  (166, 16600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 54),
  -- Ledian - Ice Punch - Tutor
  (166, 16600, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Ledian - Thunder Punch - Tutor
  (166, 16600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Ledian - Swift - Tutor
  (166, 16600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Ledian - Snore - Tutor
  (166, 16600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Ledian - Rollout - Tutor
  (166, 16600, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Ledian - Uproar - Tutor
  (166, 16600, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Ledian - Knock Off - Tutor
  (166, 16600, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Ledian - Air Cutter - Tutor
  (166, 16600, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Ledian - Ominous Wind - Tutor
  (166, 16600, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Spinarak - Poison Sting - Level 1
  (167, 16700, 40, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinarak - String Shot - Level 1
  (167, 16700, 81, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spinarak - Scary Face - Level 5
  (167, 16700, 184, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Spinarak - Constrict - Level 8
  (167, 16700, 132, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Spinarak - Leech Life - Level 12
  (167, 16700, 141, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Spinarak - Night Shade - Level 15
  (167, 16700, 101, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Spinarak - Shadow Sneak - Level 19
  (167, 16700, 425, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Spinarak - Fury Swipes - Level 22
  (167, 16700, 154, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Spinarak - Sucker Punch - Level 26
  (167, 16700, 389, 9, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Spinarak - Spider Web - Level 29
  (167, 16700, 169, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Spinarak - Agility - Level 33
  (167, 16700, 97, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Spinarak - Pin Missile - Level 36
  (167, 16700, 42, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Spinarak - Psychic - Level 40
  (167, 16700, 94, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Spinarak - Poison Jab - Level 43
  (167, 16700, 398, 9, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Spinarak - Toxic - TM06
  (167, 16700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Spinarak - Hidden Power - TM10
  (167, 16700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Spinarak - Sunny Day - TM11
  (167, 16700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Spinarak - Protect - TM17
  (167, 16700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Spinarak - Giga Drain - TM19
  (167, 16700, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 19),
  -- Spinarak - Frustration - TM21
  (167, 16700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Spinarak - Solar Beam - TM22
  (167, 16700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 21),
  -- Spinarak - Return - TM27
  (167, 16700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Spinarak - Dig - TM28
  (167, 16700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 23),
  -- Spinarak - Psychic - TM29
  (167, 16700, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 24),
  -- Spinarak - Double Team - TM32
  (167, 16700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Spinarak - Sludge Bomb - TM36
  (167, 16700, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 26),
  -- Spinarak - Facade - TM42
  (167, 16700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Spinarak - Secret Power - TM43
  (167, 16700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Spinarak - Rest - TM44
  (167, 16700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Spinarak - Attract - TM45
  (167, 16700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Spinarak - Thief - TM46
  (167, 16700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 31),
  -- Spinarak - Endure - TM58
  (167, 16700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Spinarak - Flash - TM70
  (167, 16700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 33),
  -- Spinarak - Captivate - TM78
  (167, 16700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 34),
  -- Spinarak - Sleep Talk - TM82
  (167, 16700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Spinarak - Natural Gift - TM83
  (167, 16700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Spinarak - Poison Jab - TM84
  (167, 16700, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 37),
  -- Spinarak - Swagger - TM87
  (167, 16700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Spinarak - Substitute - TM90
  (167, 16700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Spinarak - Sonic Boom - Egg
  (167, 16700, 49, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Spinarak - Disable - Egg
  (167, 16700, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Spinarak - Psybeam - Egg
  (167, 16700, 60, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Spinarak - Baton Pass - Egg
  (167, 16700, 226, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spinarak - Pursuit - Egg
  (167, 16700, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spinarak - Signal Beam - Egg
  (167, 16700, 324, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spinarak - Toxic Spikes - Egg
  (167, 16700, 390, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spinarak - Poison Jab - Egg
  (167, 16700, 398, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spinarak - Signal Beam - Tutor
  (167, 16700, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Spinarak - Bounce - Tutor
  (167, 16700, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Spinarak - Sucker Punch - Tutor
  (167, 16700, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Ariados - Poison Sting - Level 1
  (168, 16800, 40, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ariados - String Shot - Level 1
  (168, 16800, 81, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ariados - Constrict - Level 1
  (168, 16800, 132, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ariados - Scary Face - Level 1
  (168, 16800, 184, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ariados - Bug Bite - Level 1
  (168, 16800, 450, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ariados - Scary Face - Level 5
  (168, 16800, 184, 9, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Ariados - Constrict - Level 8
  (168, 16800, 132, 9, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Ariados - Leech Life - Level 12
  (168, 16800, 141, 9, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Ariados - Night Shade - Level 15
  (168, 16800, 101, 9, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Ariados - Shadow Sneak - Level 19
  (168, 16800, 425, 9, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Ariados - Fury Swipes - Level 23
  (168, 16800, 154, 9, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Ariados - Sucker Punch - Level 28
  (168, 16800, 389, 9, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Ariados - Spider Web - Level 32
  (168, 16800, 169, 9, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Ariados - Agility - Level 37
  (168, 16800, 97, 9, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Ariados - Pin Missile - Level 41
  (168, 16800, 42, 9, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Ariados - Psychic - Level 46
  (168, 16800, 94, 9, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Ariados - Poison Jab - Level 50
  (168, 16800, 398, 9, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Ariados - Toxic - TM06
  (168, 16800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Ariados - Hidden Power - TM10
  (168, 16800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Ariados - Sunny Day - TM11
  (168, 16800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Ariados - Hyper Beam - TM15
  (168, 16800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Ariados - Protect - TM17
  (168, 16800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Ariados - Giga Drain - TM19
  (168, 16800, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 23),
  -- Ariados - Frustration - TM21
  (168, 16800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Ariados - Solar Beam - TM22
  (168, 16800, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Ariados - Return - TM27
  (168, 16800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Ariados - Dig - TM28
  (168, 16800, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 27),
  -- Ariados - Psychic - TM29
  (168, 16800, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 28),
  -- Ariados - Double Team - TM32
  (168, 16800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Ariados - Sludge Bomb - TM36
  (168, 16800, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 30),
  -- Ariados - Facade - TM42
  (168, 16800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Ariados - Secret Power - TM43
  (168, 16800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Ariados - Rest - TM44
  (168, 16800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Ariados - Attract - TM45
  (168, 16800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Ariados - Thief - TM46
  (168, 16800, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Ariados - Endure - TM58
  (168, 16800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Ariados - Giga Impact - TM68
  (168, 16800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Ariados - Flash - TM70
  (168, 16800, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Ariados - Captivate - TM78
  (168, 16800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Ariados - Sleep Talk - TM82
  (168, 16800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Ariados - Natural Gift - TM83
  (168, 16800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Ariados - Poison Jab - TM84
  (168, 16800, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 42),
  -- Ariados - Swagger - TM87
  (168, 16800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Ariados - Substitute - TM90
  (168, 16800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Ariados - Signal Beam - Tutor
  (168, 16800, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Ariados - Bounce - Tutor
  (168, 16800, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Ariados - Sucker Punch - Tutor
  (168, 16800, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Crobat - Supersonic - Level 1
  (169, 16900, 48, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crobat - Screech - Level 1
  (169, 16900, 103, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crobat - Leech Life - Level 1
  (169, 16900, 141, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crobat - Astonish - Level 1
  (169, 16900, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crobat - Cross Poison - Level 1
  (169, 16900, 440, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Crobat - Supersonic - Level 5
  (169, 16900, 48, 9, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Crobat - Astonish - Level 9
  (169, 16900, 310, 9, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Crobat - Bite - Level 13
  (169, 16900, 44, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Crobat - Wing Attack - Level 17
  (169, 16900, 17, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Crobat - Confuse Ray - Level 21
  (169, 16900, 109, 9, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Crobat - Air Cutter - Level 27
  (169, 16900, 314, 9, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Crobat - Mean Look - Level 33
  (169, 16900, 212, 9, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Crobat - Poison Fang - Level 39
  (169, 16900, 305, 9, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Crobat - Haze - Level 45
  (169, 16900, 114, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Crobat - Air Slash - Level 51
  (169, 16900, 403, 9, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Crobat - Toxic - TM06
  (169, 16900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Crobat - Hidden Power - TM10
  (169, 16900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Crobat - Sunny Day - TM11
  (169, 16900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Crobat - Taunt - TM12
  (169, 16900, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 19),
  -- Crobat - Hyper Beam - TM15
  (169, 16900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Crobat - Protect - TM17
  (169, 16900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Crobat - Rain Dance - TM18
  (169, 16900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Crobat - Giga Drain - TM19
  (169, 16900, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 23),
  -- Crobat - Frustration - TM21
  (169, 16900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Crobat - Return - TM27
  (169, 16900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Crobat - Shadow Ball - TM30
  (169, 16900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Crobat - Double Team - TM32
  (169, 16900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Crobat - Sludge Bomb - TM36
  (169, 16900, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 28),
  -- Crobat - Aerial Ace - TM40
  (169, 16900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 29),
  -- Crobat - Torment - TM41
  (169, 16900, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 30),
  -- Crobat - Facade - TM42
  (169, 16900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Crobat - Secret Power - TM43
  (169, 16900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Crobat - Rest - TM44
  (169, 16900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Crobat - Attract - TM45
  (169, 16900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Crobat - Thief - TM46
  (169, 16900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Crobat - Steel Wing - TM47
  (169, 16900, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 36),
  -- Crobat - Snatch - TM49
  (169, 16900, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 37),
  -- Crobat - Roost - TM51
  (169, 16900, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 38),
  -- Crobat - Endure - TM58
  (169, 16900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Crobat - Payback - TM66
  (169, 16900, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 40),
  -- Crobat - Giga Impact - TM68
  (169, 16900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Crobat - Captivate - TM78
  (169, 16900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Crobat - Dark Pulse - TM79
  (169, 16900, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 43),
  -- Crobat - X-Scissor - TM81
  (169, 16900, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 44),
  -- Crobat - Sleep Talk - TM82
  (169, 16900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Crobat - Natural Gift - TM83
  (169, 16900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Crobat - Swagger - TM87
  (169, 16900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Crobat - Pluck - TM88
  (169, 16900, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 48),
  -- Crobat - U-turn - TM89
  (169, 16900, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 49),
  -- Crobat - Substitute - TM90
  (169, 16900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Crobat - Fly - HM02
  (169, 16900, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 51),
  -- Crobat - Defog - HM05
  (169, 16900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 52),
  -- Crobat - Swift - Tutor
  (169, 16900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Crobat - Snore - Tutor
  (169, 16900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Crobat - Twister - Tutor
  (169, 16900, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Crobat - Uproar - Tutor
  (169, 16900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Crobat - Heat Wave - Tutor
  (169, 16900, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Crobat - Air Cutter - Tutor
  (169, 16900, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Crobat - Zen Headbutt - Tutor
  (169, 16900, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Crobat - Ominous Wind - Tutor
  (169, 16900, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Chinchou - Supersonic - Level 1
  (170, 17000, 48, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chinchou - Bubble - Level 1
  (170, 17000, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chinchou - Thunder Wave - Level 6
  (170, 17000, 86, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Chinchou - Flail - Level 9
  (170, 17000, 175, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chinchou - Water Gun - Level 12
  (170, 17000, 55, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chinchou - Confuse Ray - Level 17
  (170, 17000, 109, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chinchou - Spark - Level 20
  (170, 17000, 209, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chinchou - Take Down - Level 23
  (170, 17000, 36, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chinchou - Bubble Beam - Level 28
  (170, 17000, 61, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Chinchou - Signal Beam - Level 31
  (170, 17000, 324, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Chinchou - Discharge - Level 34
  (170, 17000, 435, 9, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Chinchou - Aqua Ring - Level 39
  (170, 17000, 392, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Chinchou - Hydro Pump - Level 42
  (170, 17000, 56, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Chinchou - Charge - Level 45
  (170, 17000, 268, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Chinchou - Water Pulse - TM03
  (170, 17000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Chinchou - Toxic - TM06
  (170, 17000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Chinchou - Hail - TM07
  (170, 17000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 17),
  -- Chinchou - Hidden Power - TM10
  (170, 17000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Chinchou - Ice Beam - TM13
  (170, 17000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Chinchou - Blizzard - TM14
  (170, 17000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Chinchou - Protect - TM17
  (170, 17000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Chinchou - Rain Dance - TM18
  (170, 17000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Chinchou - Frustration - TM21
  (170, 17000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Chinchou - Thunderbolt - TM24
  (170, 17000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 24),
  -- Chinchou - Thunder - TM25
  (170, 17000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 25),
  -- Chinchou - Return - TM27
  (170, 17000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Chinchou - Double Team - TM32
  (170, 17000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Chinchou - Shock Wave - TM34
  (170, 17000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 28),
  -- Chinchou - Facade - TM42
  (170, 17000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Chinchou - Secret Power - TM43
  (170, 17000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Chinchou - Rest - TM44
  (170, 17000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Chinchou - Attract - TM45
  (170, 17000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Chinchou - Brine - TM55
  (170, 17000, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 33),
  -- Chinchou - Charge Beam - TM57
  (170, 17000, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 34),
  -- Chinchou - Endure - TM58
  (170, 17000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Chinchou - Flash - TM70
  (170, 17000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 36),
  -- Chinchou - Thunder Wave - TM73
  (170, 17000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 37),
  -- Chinchou - Captivate - TM78
  (170, 17000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Chinchou - Sleep Talk - TM82
  (170, 17000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Chinchou - Natural Gift - TM83
  (170, 17000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Chinchou - Swagger - TM87
  (170, 17000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Chinchou - Substitute - TM90
  (170, 17000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Chinchou - Surf - HM03
  (170, 17000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 43),
  -- Chinchou - Defog - HM05
  (170, 17000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 44),
  -- Chinchou - Waterfall - HM07
  (170, 17000, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 45),
  -- Chinchou - Mist - Egg
  (170, 17000, 54, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chinchou - Psybeam - Egg
  (170, 17000, 60, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chinchou - Agility - Egg
  (170, 17000, 97, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chinchou - Screech - Egg
  (170, 17000, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chinchou - Amnesia - Egg
  (170, 17000, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chinchou - Flail - Egg
  (170, 17000, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chinchou - Whirlpool - Egg
  (170, 17000, 250, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chinchou - Snore - Tutor
  (170, 17000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Chinchou - Icy Wind - Tutor
  (170, 17000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Chinchou - Dive - Tutor
  (170, 17000, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Chinchou - Signal Beam - Tutor
  (170, 17000, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Chinchou - Bounce - Tutor
  (170, 17000, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Chinchou - Sucker Punch - Tutor
  (170, 17000, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Lanturn - Supersonic - Level 1
  (171, 17100, 48, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lanturn - Thunder Wave - Level 1
  (171, 17100, 86, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lanturn - Bubble - Level 1
  (171, 17100, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lanturn - Thunder Wave - Level 6
  (171, 17100, 86, 9, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Lanturn - Flail - Level 9
  (171, 17100, 175, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Lanturn - Water Gun - Level 12
  (171, 17100, 55, 9, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Lanturn - Confuse Ray - Level 17
  (171, 17100, 109, 9, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Lanturn - Spark - Level 20
  (171, 17100, 209, 9, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Lanturn - Take Down - Level 23
  (171, 17100, 36, 9, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Lanturn - Stockpile - Level 27
  (171, 17100, 254, 9, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Lanturn - Spit Up - Level 27
  (171, 17100, 255, 9, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Lanturn - Swallow - Level 27
  (171, 17100, 256, 9, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Lanturn - Bubble Beam - Level 30
  (171, 17100, 61, 9, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Lanturn - Signal Beam - Level 35
  (171, 17100, 324, 9, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Lanturn - Discharge - Level 40
  (171, 17100, 435, 9, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Lanturn - Aqua Ring - Level 47
  (171, 17100, 392, 9, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Lanturn - Hydro Pump - Level 52
  (171, 17100, 56, 9, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Lanturn - Charge - Level 57
  (171, 17100, 268, 9, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Lanturn - Water Pulse - TM03
  (171, 17100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 19),
  -- Lanturn - Toxic - TM06
  (171, 17100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Lanturn - Hail - TM07
  (171, 17100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 21),
  -- Lanturn - Hidden Power - TM10
  (171, 17100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Lanturn - Ice Beam - TM13
  (171, 17100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Lanturn - Blizzard - TM14
  (171, 17100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 24),
  -- Lanturn - Hyper Beam - TM15
  (171, 17100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Lanturn - Protect - TM17
  (171, 17100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Lanturn - Rain Dance - TM18
  (171, 17100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Lanturn - Frustration - TM21
  (171, 17100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Lanturn - Thunderbolt - TM24
  (171, 17100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 29),
  -- Lanturn - Thunder - TM25
  (171, 17100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 30),
  -- Lanturn - Return - TM27
  (171, 17100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Lanturn - Double Team - TM32
  (171, 17100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Lanturn - Shock Wave - TM34
  (171, 17100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Lanturn - Facade - TM42
  (171, 17100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Lanturn - Secret Power - TM43
  (171, 17100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Lanturn - Rest - TM44
  (171, 17100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Lanturn - Attract - TM45
  (171, 17100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Lanturn - Brine - TM55
  (171, 17100, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 38),
  -- Lanturn - Charge Beam - TM57
  (171, 17100, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 39),
  -- Lanturn - Endure - TM58
  (171, 17100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Lanturn - Giga Impact - TM68
  (171, 17100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Lanturn - Flash - TM70
  (171, 17100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 42),
  -- Lanturn - Thunder Wave - TM73
  (171, 17100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 43),
  -- Lanturn - Captivate - TM78
  (171, 17100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Lanturn - Sleep Talk - TM82
  (171, 17100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Lanturn - Natural Gift - TM83
  (171, 17100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Lanturn - Swagger - TM87
  (171, 17100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Lanturn - Substitute - TM90
  (171, 17100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Lanturn - Surf - HM03
  (171, 17100, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 49),
  -- Lanturn - Defog - HM05
  (171, 17100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 50),
  -- Lanturn - Waterfall - HM07
  (171, 17100, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 51),
  -- Lanturn - Snore - Tutor
  (171, 17100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Lanturn - Icy Wind - Tutor
  (171, 17100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Lanturn - Dive - Tutor
  (171, 17100, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Lanturn - Signal Beam - Tutor
  (171, 17100, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Lanturn - Bounce - Tutor
  (171, 17100, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Lanturn - Sucker Punch - Tutor
  (171, 17100, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Lanturn - Aqua Tail - Tutor
  (171, 17100, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Pichu - Thunder Shock - Level 1
  (172, 17200, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pichu - Charm - Level 1
  (172, 17200, 204, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pichu - Tail Whip - Level 5
  (172, 17200, 39, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pichu - Thunder Wave - Level 10
  (172, 17200, 86, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pichu - Sweet Kiss - Level 13
  (172, 17200, 186, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pichu - Nasty Plot - Level 18
  (172, 17200, 417, 9, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Pichu - Toxic - TM06
  (172, 17200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 7),
  -- Pichu - Hidden Power - TM10
  (172, 17200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 8),
  -- Pichu - Light Screen - TM16
  (172, 17200, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 9),
  -- Pichu - Protect - TM17
  (172, 17200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 10),
  -- Pichu - Rain Dance - TM18
  (172, 17200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 11),
  -- Pichu - Frustration - TM21
  (172, 17200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 12),
  -- Pichu - Iron Tail - TM23
  (172, 17200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 13),
  -- Pichu - Thunderbolt - TM24
  (172, 17200, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 14),
  -- Pichu - Thunder - TM25
  (172, 17200, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 15),
  -- Pichu - Return - TM27
  (172, 17200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 16),
  -- Pichu - Double Team - TM32
  (172, 17200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 17),
  -- Pichu - Shock Wave - TM34
  (172, 17200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 18),
  -- Pichu - Facade - TM42
  (172, 17200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 19),
  -- Pichu - Secret Power - TM43
  (172, 17200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 20),
  -- Pichu - Rest - TM44
  (172, 17200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 21),
  -- Pichu - Attract - TM45
  (172, 17200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 22),
  -- Pichu - Fling - TM56
  (172, 17200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 23),
  -- Pichu - Charge Beam - TM57
  (172, 17200, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 24),
  -- Pichu - Endure - TM58
  (172, 17200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 25),
  -- Pichu - Flash - TM70
  (172, 17200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 26),
  -- Pichu - Thunder Wave - TM73
  (172, 17200, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 27),
  -- Pichu - Captivate - TM78
  (172, 17200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 28),
  -- Pichu - Sleep Talk - TM82
  (172, 17200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 29),
  -- Pichu - Natural Gift - TM83
  (172, 17200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 30),
  -- Pichu - Grass Knot - TM86
  (172, 17200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 31),
  -- Pichu - Swagger - TM87
  (172, 17200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 32),
  -- Pichu - Substitute - TM90
  (172, 17200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 33),
  -- Pichu - Double Slap - Egg
  (172, 17200, 3, 9, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Pichu - Thunder Punch - Egg
  (172, 17200, 9, 9, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Pichu - Bide - Egg
  (172, 17200, 117, 9, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Pichu - Reversal - Egg
  (172, 17200, 179, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Pichu - Present - Egg
  (172, 17200, 217, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Pichu - Encore - Egg
  (172, 17200, 227, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Pichu - Fake Out - Egg
  (172, 17200, 252, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pichu - Charge - Egg
  (172, 17200, 268, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pichu - Wish - Egg
  (172, 17200, 273, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pichu - Tickle - Egg
  (172, 17200, 321, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pichu - Volt Tackle - Egg
  (172, 17200, 344, 9, NULL, 5, NULL, 364, NULL, 'Requires either parent to hold Light Ball in Platinum.', 44),
  -- Pichu - Swift - Tutor
  (172, 17200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Pichu - Snore - Tutor
  (172, 17200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Pichu - Mud-Slap - Tutor
  (172, 17200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Pichu - Rollout - Tutor
  (172, 17200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Pichu - Uproar - Tutor
  (172, 17200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Pichu - Helping Hand - Tutor
  (172, 17200, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Pichu - Signal Beam - Tutor
  (172, 17200, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Pichu - Magnet Rise - Tutor
  (172, 17200, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Cleffa - Pound - Level 1
  (173, 17300, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cleffa - Charm - Level 1
  (173, 17300, 204, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cleffa - Encore - Level 4
  (173, 17300, 227, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cleffa - Sing - Level 7
  (173, 17300, 47, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Cleffa - Sweet Kiss - Level 10
  (173, 17300, 186, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Cleffa - Copycat - Level 13
  (173, 17300, 383, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Cleffa - Magical Leaf - Level 16
  (173, 17300, 345, 9, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cleffa - Water Pulse - TM03
  (173, 17300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 8),
  -- Cleffa - Toxic - TM06
  (173, 17300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 9),
  -- Cleffa - Hidden Power - TM10
  (173, 17300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 10),
  -- Cleffa - Sunny Day - TM11
  (173, 17300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 11),
  -- Cleffa - Light Screen - TM16
  (173, 17300, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 12),
  -- Cleffa - Protect - TM17
  (173, 17300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 13),
  -- Cleffa - Rain Dance - TM18
  (173, 17300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 14),
  -- Cleffa - Safeguard - TM20
  (173, 17300, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 15),
  -- Cleffa - Frustration - TM21
  (173, 17300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 16),
  -- Cleffa - Solar Beam - TM22
  (173, 17300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 17),
  -- Cleffa - Iron Tail - TM23
  (173, 17300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 18),
  -- Cleffa - Return - TM27
  (173, 17300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 19),
  -- Cleffa - Dig - TM28
  (173, 17300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 20),
  -- Cleffa - Psychic - TM29
  (173, 17300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 21),
  -- Cleffa - Shadow Ball - TM30
  (173, 17300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 22),
  -- Cleffa - Double Team - TM32
  (173, 17300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Cleffa - Reflect - TM33
  (173, 17300, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 24),
  -- Cleffa - Shock Wave - TM34
  (173, 17300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 25),
  -- Cleffa - Flamethrower - TM35
  (173, 17300, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 26),
  -- Cleffa - Fire Blast - TM38
  (173, 17300, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 27),
  -- Cleffa - Facade - TM42
  (173, 17300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Cleffa - Secret Power - TM43
  (173, 17300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Cleffa - Rest - TM44
  (173, 17300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Cleffa - Attract - TM45
  (173, 17300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Cleffa - Fling - TM56
  (173, 17300, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 32),
  -- Cleffa - Endure - TM58
  (173, 17300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Cleffa - Recycle - TM67
  (173, 17300, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 34),
  -- Cleffa - Flash - TM70
  (173, 17300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Cleffa - Thunder Wave - TM73
  (173, 17300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 36),
  -- Cleffa - Psych Up - TM77
  (173, 17300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 37),
  -- Cleffa - Captivate - TM78
  (173, 17300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Cleffa - Sleep Talk - TM82
  (173, 17300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Cleffa - Natural Gift - TM83
  (173, 17300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Cleffa - Dream Eater - TM85
  (173, 17300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 41),
  -- Cleffa - Grass Knot - TM86
  (173, 17300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 42),
  -- Cleffa - Swagger - TM87
  (173, 17300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Cleffa - Substitute - TM90
  (173, 17300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Cleffa - Mimic - Egg
  (173, 17300, 102, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cleffa - Metronome - Egg
  (173, 17300, 118, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cleffa - Amnesia - Egg
  (173, 17300, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cleffa - Splash - Egg
  (173, 17300, 150, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cleffa - Substitute - Egg
  (173, 17300, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cleffa - Belly Drum - Egg
  (173, 17300, 187, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cleffa - Present - Egg
  (173, 17300, 217, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cleffa - Wish - Egg
  (173, 17300, 273, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cleffa - Fake Tears - Egg
  (173, 17300, 313, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cleffa - Covet - Egg
  (173, 17300, 343, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cleffa - Snore - Tutor
  (173, 17300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Cleffa - Mud-Slap - Tutor
  (173, 17300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Cleffa - Icy Wind - Tutor
  (173, 17300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Cleffa - Rollout - Tutor
  (173, 17300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Cleffa - Uproar - Tutor
  (173, 17300, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Cleffa - Helping Hand - Tutor
  (173, 17300, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Cleffa - Trick - Tutor
  (173, 17300, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Cleffa - Endeavor - Tutor
  (173, 17300, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Cleffa - Signal Beam - Tutor
  (173, 17300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Cleffa - Last Resort - Tutor
  (173, 17300, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Cleffa - Zen Headbutt - Tutor
  (173, 17300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Igglybuff - Sing - Level 1
  (174, 17400, 47, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Igglybuff - Charm - Level 1
  (174, 17400, 204, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Igglybuff - Defense Curl - Level 5
  (174, 17400, 111, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Igglybuff - Pound - Level 9
  (174, 17400, 1, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Igglybuff - Sweet Kiss - Level 13
  (174, 17400, 186, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Igglybuff - Copycat - Level 17
  (174, 17400, 383, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Igglybuff - Water Pulse - TM03
  (174, 17400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 7),
  -- Igglybuff - Toxic - TM06
  (174, 17400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 8),
  -- Igglybuff - Hidden Power - TM10
  (174, 17400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 9),
  -- Igglybuff - Sunny Day - TM11
  (174, 17400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 10),
  -- Igglybuff - Light Screen - TM16
  (174, 17400, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 11),
  -- Igglybuff - Protect - TM17
  (174, 17400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 12),
  -- Igglybuff - Rain Dance - TM18
  (174, 17400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 13),
  -- Igglybuff - Safeguard - TM20
  (174, 17400, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 14),
  -- Igglybuff - Frustration - TM21
  (174, 17400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 15),
  -- Igglybuff - Solar Beam - TM22
  (174, 17400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 16),
  -- Igglybuff - Return - TM27
  (174, 17400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 17),
  -- Igglybuff - Dig - TM28
  (174, 17400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 18),
  -- Igglybuff - Psychic - TM29
  (174, 17400, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 19),
  -- Igglybuff - Shadow Ball - TM30
  (174, 17400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 20),
  -- Igglybuff - Double Team - TM32
  (174, 17400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 21),
  -- Igglybuff - Reflect - TM33
  (174, 17400, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 22),
  -- Igglybuff - Shock Wave - TM34
  (174, 17400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 23),
  -- Igglybuff - Flamethrower - TM35
  (174, 17400, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 24),
  -- Igglybuff - Fire Blast - TM38
  (174, 17400, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 25),
  -- Igglybuff - Facade - TM42
  (174, 17400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Igglybuff - Secret Power - TM43
  (174, 17400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Igglybuff - Rest - TM44
  (174, 17400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Igglybuff - Attract - TM45
  (174, 17400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Igglybuff - Fling - TM56
  (174, 17400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 30),
  -- Igglybuff - Endure - TM58
  (174, 17400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Igglybuff - Recycle - TM67
  (174, 17400, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 32),
  -- Igglybuff - Flash - TM70
  (174, 17400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 33),
  -- Igglybuff - Thunder Wave - TM73
  (174, 17400, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 34),
  -- Igglybuff - Psych Up - TM77
  (174, 17400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 35),
  -- Igglybuff - Captivate - TM78
  (174, 17400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Igglybuff - Sleep Talk - TM82
  (174, 17400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 37),
  -- Igglybuff - Natural Gift - TM83
  (174, 17400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 38),
  -- Igglybuff - Dream Eater - TM85
  (174, 17400, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 39),
  -- Igglybuff - Grass Knot - TM86
  (174, 17400, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 40),
  -- Igglybuff - Swagger - TM87
  (174, 17400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Igglybuff - Substitute - TM90
  (174, 17400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Igglybuff - Feint Attack - Egg
  (174, 17400, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Igglybuff - Perish Song - Egg
  (174, 17400, 195, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Igglybuff - Present - Egg
  (174, 17400, 217, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Igglybuff - Wish - Egg
  (174, 17400, 273, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Igglybuff - Fake Tears - Egg
  (174, 17400, 313, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Igglybuff - Covet - Egg
  (174, 17400, 343, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Igglybuff - Gravity - Egg
  (174, 17400, 356, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Igglybuff - Last Resort - Egg
  (174, 17400, 387, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Igglybuff - Snore - Tutor
  (174, 17400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Igglybuff - Mud-Slap - Tutor
  (174, 17400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Igglybuff - Icy Wind - Tutor
  (174, 17400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Igglybuff - Rollout - Tutor
  (174, 17400, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Igglybuff - Uproar - Tutor
  (174, 17400, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Igglybuff - Helping Hand - Tutor
  (174, 17400, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Igglybuff - Endeavor - Tutor
  (174, 17400, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Igglybuff - Bounce - Tutor
  (174, 17400, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Igglybuff - Last Resort - Tutor
  (174, 17400, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Togepi - Growl - Level 1
  (175, 17500, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togepi - Charm - Level 1
  (175, 17500, 204, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togepi - Metronome - Level 6
  (175, 17500, 118, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Togepi - Sweet Kiss - Level 10
  (175, 17500, 186, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Togepi - Yawn - Level 15
  (175, 17500, 281, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Togepi - Encore - Level 19
  (175, 17500, 227, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Togepi - Follow Me - Level 24
  (175, 17500, 266, 9, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Togepi - Wish - Level 28
  (175, 17500, 273, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Togepi - Ancient Power - Level 33
  (175, 17500, 246, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Togepi - Safeguard - Level 37
  (175, 17500, 219, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Togepi - Baton Pass - Level 42
  (175, 17500, 226, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Togepi - Double-Edge - Level 46
  (175, 17500, 38, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Togepi - Last Resort - Level 51
  (175, 17500, 387, 9, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Togepi - Water Pulse - TM03
  (175, 17500, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Togepi - Toxic - TM06
  (175, 17500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Togepi - Hidden Power - TM10
  (175, 17500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Togepi - Sunny Day - TM11
  (175, 17500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Togepi - Light Screen - TM16
  (175, 17500, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 18),
  -- Togepi - Protect - TM17
  (175, 17500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Togepi - Rain Dance - TM18
  (175, 17500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Togepi - Safeguard - TM20
  (175, 17500, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 21),
  -- Togepi - Frustration - TM21
  (175, 17500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Togepi - Solar Beam - TM22
  (175, 17500, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 23),
  -- Togepi - Return - TM27
  (175, 17500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Togepi - Psychic - TM29
  (175, 17500, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 25),
  -- Togepi - Shadow Ball - TM30
  (175, 17500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Togepi - Double Team - TM32
  (175, 17500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Togepi - Reflect - TM33
  (175, 17500, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 28),
  -- Togepi - Shock Wave - TM34
  (175, 17500, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 29),
  -- Togepi - Flamethrower - TM35
  (175, 17500, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 30),
  -- Togepi - Fire Blast - TM38
  (175, 17500, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 31),
  -- Togepi - Facade - TM42
  (175, 17500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Togepi - Secret Power - TM43
  (175, 17500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Togepi - Rest - TM44
  (175, 17500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Togepi - Attract - TM45
  (175, 17500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Togepi - Fling - TM56
  (175, 17500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Togepi - Endure - TM58
  (175, 17500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Togepi - Flash - TM70
  (175, 17500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Togepi - Thunder Wave - TM73
  (175, 17500, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 39),
  -- Togepi - Psych Up - TM77
  (175, 17500, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 40),
  -- Togepi - Captivate - TM78
  (175, 17500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Togepi - Sleep Talk - TM82
  (175, 17500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Togepi - Natural Gift - TM83
  (175, 17500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Togepi - Dream Eater - TM85
  (175, 17500, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 44),
  -- Togepi - Grass Knot - TM86
  (175, 17500, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 45),
  -- Togepi - Swagger - TM87
  (175, 17500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Togepi - Substitute - TM90
  (175, 17500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Togepi - Rock Smash - HM06
  (175, 17500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Togepi - Peck - Egg
  (175, 17500, 64, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Togepi - Mirror Move - Egg
  (175, 17500, 119, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Togepi - Substitute - Egg
  (175, 17500, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Togepi - Foresight - Egg
  (175, 17500, 193, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Togepi - Present - Egg
  (175, 17500, 217, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Togepi - Psych Up - Egg
  (175, 17500, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Togepi - Future Sight - Egg
  (175, 17500, 248, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Togepi - Psycho Shift - Egg
  (175, 17500, 375, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Togepi - Lucky Chant - Egg
  (175, 17500, 381, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Togepi - Nasty Plot - Egg
  (175, 17500, 417, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Togepi - Swift - Tutor
  (175, 17500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Togepi - Snore - Tutor
  (175, 17500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Togepi - Mud-Slap - Tutor
  (175, 17500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Togepi - Rollout - Tutor
  (175, 17500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Togepi - Ancient Power - Tutor
  (175, 17500, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Togepi - Uproar - Tutor
  (175, 17500, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Togepi - Trick - Tutor
  (175, 17500, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Togepi - Endeavor - Tutor
  (175, 17500, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Togepi - Signal Beam - Tutor
  (175, 17500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Togepi - Last Resort - Tutor
  (175, 17500, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Togepi - Zen Headbutt - Tutor
  (175, 17500, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Togetic - Growl - Level 1
  (176, 17600, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togetic - Metronome - Level 1
  (176, 17600, 118, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togetic - Sweet Kiss - Level 1
  (176, 17600, 186, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Togetic - Charm - Level 1
  (176, 17600, 204, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Togetic - Magical Leaf - Level 1
  (176, 17600, 345, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Togetic - Metronome - Level 6
  (176, 17600, 118, 9, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Togetic - Sweet Kiss - Level 10
  (176, 17600, 186, 9, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Togetic - Yawn - Level 15
  (176, 17600, 281, 9, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Togetic - Encore - Level 19
  (176, 17600, 227, 9, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Togetic - Follow Me - Level 24
  (176, 17600, 266, 9, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Togetic - Wish - Level 28
  (176, 17600, 273, 9, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Togetic - Ancient Power - Level 33
  (176, 17600, 246, 9, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Togetic - Safeguard - Level 37
  (176, 17600, 219, 9, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Togetic - Baton Pass - Level 42
  (176, 17600, 226, 9, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Togetic - Double-Edge - Level 46
  (176, 17600, 38, 9, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Togetic - Last Resort - Level 51
  (176, 17600, 387, 9, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Togetic - Focus Punch - TM01
  (176, 17600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Togetic - Water Pulse - TM03
  (176, 17600, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Togetic - Toxic - TM06
  (176, 17600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Togetic - Hidden Power - TM10
  (176, 17600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Togetic - Sunny Day - TM11
  (176, 17600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Togetic - Hyper Beam - TM15
  (176, 17600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Togetic - Light Screen - TM16
  (176, 17600, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 23),
  -- Togetic - Protect - TM17
  (176, 17600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Togetic - Rain Dance - TM18
  (176, 17600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Togetic - Safeguard - TM20
  (176, 17600, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 26),
  -- Togetic - Frustration - TM21
  (176, 17600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Togetic - Solar Beam - TM22
  (176, 17600, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 28),
  -- Togetic - Return - TM27
  (176, 17600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Togetic - Psychic - TM29
  (176, 17600, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 30),
  -- Togetic - Shadow Ball - TM30
  (176, 17600, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Togetic - Brick Break - TM31
  (176, 17600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Togetic - Double Team - TM32
  (176, 17600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Togetic - Reflect - TM33
  (176, 17600, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 34),
  -- Togetic - Shock Wave - TM34
  (176, 17600, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 35),
  -- Togetic - Flamethrower - TM35
  (176, 17600, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 36),
  -- Togetic - Fire Blast - TM38
  (176, 17600, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 37),
  -- Togetic - Aerial Ace - TM40
  (176, 17600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 38),
  -- Togetic - Facade - TM42
  (176, 17600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 39),
  -- Togetic - Secret Power - TM43
  (176, 17600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 40),
  -- Togetic - Rest - TM44
  (176, 17600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 41),
  -- Togetic - Attract - TM45
  (176, 17600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 42),
  -- Togetic - Steel Wing - TM47
  (176, 17600, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 43),
  -- Togetic - Roost - TM51
  (176, 17600, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 44),
  -- Togetic - Fling - TM56
  (176, 17600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 45),
  -- Togetic - Endure - TM58
  (176, 17600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 46),
  -- Togetic - Drain Punch - TM60
  (176, 17600, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 47),
  -- Togetic - Silver Wind - TM62
  (176, 17600, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 48),
  -- Togetic - Giga Impact - TM68
  (176, 17600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 49),
  -- Togetic - Flash - TM70
  (176, 17600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 50),
  -- Togetic - Thunder Wave - TM73
  (176, 17600, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 51),
  -- Togetic - Psych Up - TM77
  (176, 17600, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 52),
  -- Togetic - Captivate - TM78
  (176, 17600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 53),
  -- Togetic - Sleep Talk - TM82
  (176, 17600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 54),
  -- Togetic - Natural Gift - TM83
  (176, 17600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 55),
  -- Togetic - Dream Eater - TM85
  (176, 17600, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 56),
  -- Togetic - Grass Knot - TM86
  (176, 17600, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 57),
  -- Togetic - Swagger - TM87
  (176, 17600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 58),
  -- Togetic - Substitute - TM90
  (176, 17600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 59),
  -- Togetic - Fly - HM02
  (176, 17600, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 60),
  -- Togetic - Defog - HM05
  (176, 17600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 61),
  -- Togetic - Rock Smash - HM06
  (176, 17600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 62),
  -- Togetic - Swift - Tutor
  (176, 17600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Togetic - Snore - Tutor
  (176, 17600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Togetic - Mud-Slap - Tutor
  (176, 17600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Togetic - Rollout - Tutor
  (176, 17600, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Togetic - Twister - Tutor
  (176, 17600, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Togetic - Ancient Power - Tutor
  (176, 17600, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Togetic - Heat Wave - Tutor
  (176, 17600, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Togetic - Trick - Tutor
  (176, 17600, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Togetic - Endeavor - Tutor
  (176, 17600, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Togetic - Air Cutter - Tutor
  (176, 17600, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Togetic - Signal Beam - Tutor
  (176, 17600, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Togetic - Last Resort - Tutor
  (176, 17600, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Togetic - Zen Headbutt - Tutor
  (176, 17600, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Togetic - Ominous Wind - Tutor
  (176, 17600, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Natu - Leer - Level 1
  (177, 17700, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Natu - Peck - Level 1
  (177, 17700, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Natu - Night Shade - Level 6
  (177, 17700, 101, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Natu - Teleport - Level 9
  (177, 17700, 100, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Natu - Lucky Chant - Level 12
  (177, 17700, 381, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Natu - Miracle Eye - Level 17
  (177, 17700, 357, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Natu - Me First - Level 20
  (177, 17700, 382, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Natu - Confuse Ray - Level 23
  (177, 17700, 109, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Natu - Wish - Level 28
  (177, 17700, 273, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Natu - Psycho Shift - Level 33
  (177, 17700, 375, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Natu - Future Sight - Level 36
  (177, 17700, 248, 9, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Natu - Ominous Wind - Level 39
  (177, 17700, 466, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Natu - Power Swap - Level 44
  (177, 17700, 384, 9, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Natu - Guard Swap - Level 44
  (177, 17700, 385, 9, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Natu - Psychic - Level 47
  (177, 17700, 94, 9, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Natu - Calm Mind - TM04
  (177, 17700, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 16),
  -- Natu - Toxic - TM06
  (177, 17700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Natu - Hidden Power - TM10
  (177, 17700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Natu - Sunny Day - TM11
  (177, 17700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Natu - Light Screen - TM16
  (177, 17700, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 20),
  -- Natu - Protect - TM17
  (177, 17700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Natu - Rain Dance - TM18
  (177, 17700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Natu - Giga Drain - TM19
  (177, 17700, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 23),
  -- Natu - Frustration - TM21
  (177, 17700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Natu - Solar Beam - TM22
  (177, 17700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Natu - Return - TM27
  (177, 17700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Natu - Psychic - TM29
  (177, 17700, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 27),
  -- Natu - Shadow Ball - TM30
  (177, 17700, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 28),
  -- Natu - Double Team - TM32
  (177, 17700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Natu - Reflect - TM33
  (177, 17700, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 30),
  -- Natu - Aerial Ace - TM40
  (177, 17700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 31),
  -- Natu - Facade - TM42
  (177, 17700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Natu - Secret Power - TM43
  (177, 17700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Natu - Rest - TM44
  (177, 17700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Natu - Attract - TM45
  (177, 17700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Natu - Thief - TM46
  (177, 17700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 36),
  -- Natu - Steel Wing - TM47
  (177, 17700, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 37),
  -- Natu - Skill Swap - TM48
  (177, 17700, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 38),
  -- Natu - Roost - TM51
  (177, 17700, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 39),
  -- Natu - Endure - TM58
  (177, 17700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Natu - Silver Wind - TM62
  (177, 17700, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 41),
  -- Natu - Flash - TM70
  (177, 17700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 42),
  -- Natu - Thunder Wave - TM73
  (177, 17700, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 43),
  -- Natu - Psych Up - TM77
  (177, 17700, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 44),
  -- Natu - Captivate - TM78
  (177, 17700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 45),
  -- Natu - Sleep Talk - TM82
  (177, 17700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Natu - Natural Gift - TM83
  (177, 17700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Natu - Dream Eater - TM85
  (177, 17700, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 48),
  -- Natu - Grass Knot - TM86
  (177, 17700, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 49),
  -- Natu - Swagger - TM87
  (177, 17700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Natu - Pluck - TM88
  (177, 17700, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 51),
  -- Natu - U-turn - TM89
  (177, 17700, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 52),
  -- Natu - Substitute - TM90
  (177, 17700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 53),
  -- Natu - Trick Room - TM92
  (177, 17700, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 54),
  -- Natu - Drill Peck - Egg
  (177, 17700, 65, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Natu - Quick Attack - Egg
  (177, 17700, 98, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Natu - Haze - Egg
  (177, 17700, 114, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Natu - Feint Attack - Egg
  (177, 17700, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Natu - Steel Wing - Egg
  (177, 17700, 211, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Natu - Psych Up - Egg
  (177, 17700, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Natu - Refresh - Egg
  (177, 17700, 287, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Natu - Feather Dance - Egg
  (177, 17700, 297, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Natu - Sucker Punch - Egg
  (177, 17700, 389, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Natu - Zen Headbutt - Egg
  (177, 17700, 428, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Natu - Swift - Tutor
  (177, 17700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Natu - Snore - Tutor
  (177, 17700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Natu - Twister - Tutor
  (177, 17700, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Natu - Heat Wave - Tutor
  (177, 17700, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Natu - Trick - Tutor
  (177, 17700, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Natu - Air Cutter - Tutor
  (177, 17700, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Natu - Signal Beam - Tutor
  (177, 17700, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Natu - Sucker Punch - Tutor
  (177, 17700, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Natu - Zen Headbutt - Tutor
  (177, 17700, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Natu - Ominous Wind - Tutor
  (177, 17700, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Xatu - Leer - Level 1
  (178, 17800, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Xatu - Peck - Level 1
  (178, 17800, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Xatu - Night Shade - Level 6
  (178, 17800, 101, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Xatu - Teleport - Level 9
  (178, 17800, 100, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Xatu - Lucky Chant - Level 12
  (178, 17800, 381, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Xatu - Miracle Eye - Level 17
  (178, 17800, 357, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Xatu - Me First - Level 20
  (178, 17800, 382, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Xatu - Confuse Ray - Level 23
  (178, 17800, 109, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Xatu - Tailwind - Level 27
  (178, 17800, 366, 9, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Xatu - Wish - Level 30
  (178, 17800, 273, 9, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Xatu - Psycho Shift - Level 37
  (178, 17800, 375, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Xatu - Future Sight - Level 42
  (178, 17800, 248, 9, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Xatu - Ominous Wind - Level 47
  (178, 17800, 466, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Xatu - Power Swap - Level 54
  (178, 17800, 384, 9, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Xatu - Guard Swap - Level 54
  (178, 17800, 385, 9, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Xatu - Psychic - Level 59
  (178, 17800, 94, 9, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Xatu - Calm Mind - TM04
  (178, 17800, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 17),
  -- Xatu - Toxic - TM06
  (178, 17800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Xatu - Hidden Power - TM10
  (178, 17800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Xatu - Sunny Day - TM11
  (178, 17800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Xatu - Hyper Beam - TM15
  (178, 17800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Xatu - Light Screen - TM16
  (178, 17800, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 22),
  -- Xatu - Protect - TM17
  (178, 17800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Xatu - Rain Dance - TM18
  (178, 17800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Xatu - Giga Drain - TM19
  (178, 17800, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 25),
  -- Xatu - Frustration - TM21
  (178, 17800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Xatu - Solar Beam - TM22
  (178, 17800, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Xatu - Return - TM27
  (178, 17800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Xatu - Psychic - TM29
  (178, 17800, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 29),
  -- Xatu - Shadow Ball - TM30
  (178, 17800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Xatu - Double Team - TM32
  (178, 17800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Xatu - Reflect - TM33
  (178, 17800, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 32),
  -- Xatu - Aerial Ace - TM40
  (178, 17800, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 33),
  -- Xatu - Facade - TM42
  (178, 17800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Xatu - Secret Power - TM43
  (178, 17800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Xatu - Rest - TM44
  (178, 17800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Xatu - Attract - TM45
  (178, 17800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Xatu - Thief - TM46
  (178, 17800, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 38),
  -- Xatu - Steel Wing - TM47
  (178, 17800, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 39),
  -- Xatu - Skill Swap - TM48
  (178, 17800, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 40),
  -- Xatu - Roost - TM51
  (178, 17800, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 41),
  -- Xatu - Endure - TM58
  (178, 17800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Xatu - Silver Wind - TM62
  (178, 17800, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 43),
  -- Xatu - Giga Impact - TM68
  (178, 17800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 44),
  -- Xatu - Flash - TM70
  (178, 17800, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 45),
  -- Xatu - Thunder Wave - TM73
  (178, 17800, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 46),
  -- Xatu - Psych Up - TM77
  (178, 17800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 47),
  -- Xatu - Captivate - TM78
  (178, 17800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 48),
  -- Xatu - Sleep Talk - TM82
  (178, 17800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Xatu - Natural Gift - TM83
  (178, 17800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Xatu - Dream Eater - TM85
  (178, 17800, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 51),
  -- Xatu - Grass Knot - TM86
  (178, 17800, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 52),
  -- Xatu - Swagger - TM87
  (178, 17800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 53),
  -- Xatu - Pluck - TM88
  (178, 17800, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 54),
  -- Xatu - U-turn - TM89
  (178, 17800, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 55),
  -- Xatu - Substitute - TM90
  (178, 17800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 56),
  -- Xatu - Trick Room - TM92
  (178, 17800, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 57),
  -- Xatu - Fly - HM02
  (178, 17800, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 58),
  -- Xatu - Defog - HM05
  (178, 17800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 59),
  -- Xatu - Swift - Tutor
  (178, 17800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Xatu - Snore - Tutor
  (178, 17800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Xatu - Twister - Tutor
  (178, 17800, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Xatu - Heat Wave - Tutor
  (178, 17800, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Xatu - Trick - Tutor
  (178, 17800, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Xatu - Air Cutter - Tutor
  (178, 17800, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Xatu - Signal Beam - Tutor
  (178, 17800, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Xatu - Sucker Punch - Tutor
  (178, 17800, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Xatu - Zen Headbutt - Tutor
  (178, 17800, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Xatu - Ominous Wind - Tutor
  (178, 17800, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Mareep - Tackle - Level 1
  (179, 17900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mareep - Growl - Level 5
  (179, 17900, 45, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Mareep - Thunder Shock - Level 10
  (179, 17900, 84, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Mareep - Thunder Wave - Level 14
  (179, 17900, 86, 9, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Mareep - Cotton Spore - Level 19
  (179, 17900, 178, 9, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Mareep - Charge - Level 23
  (179, 17900, 268, 9, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Mareep - Discharge - Level 28
  (179, 17900, 435, 9, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Mareep - Signal Beam - Level 32
  (179, 17900, 324, 9, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Mareep - Light Screen - Level 37
  (179, 17900, 113, 9, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Mareep - Power Gem - Level 41
  (179, 17900, 408, 9, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Mareep - Thunder - Level 46
  (179, 17900, 87, 9, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Mareep - Toxic - TM06
  (179, 17900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 12),
  -- Mareep - Hidden Power - TM10
  (179, 17900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 13),
  -- Mareep - Light Screen - TM16
  (179, 17900, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 14),
  -- Mareep - Protect - TM17
  (179, 17900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 15),
  -- Mareep - Rain Dance - TM18
  (179, 17900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 16),
  -- Mareep - Frustration - TM21
  (179, 17900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 17),
  -- Mareep - Iron Tail - TM23
  (179, 17900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 18),
  -- Mareep - Thunderbolt - TM24
  (179, 17900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 19),
  -- Mareep - Thunder - TM25
  (179, 17900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 20),
  -- Mareep - Return - TM27
  (179, 17900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 21),
  -- Mareep - Double Team - TM32
  (179, 17900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 22),
  -- Mareep - Shock Wave - TM34
  (179, 17900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 23),
  -- Mareep - Facade - TM42
  (179, 17900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Mareep - Secret Power - TM43
  (179, 17900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Mareep - Rest - TM44
  (179, 17900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Mareep - Attract - TM45
  (179, 17900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 27),
  -- Mareep - Charge Beam - TM57
  (179, 17900, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 28),
  -- Mareep - Endure - TM58
  (179, 17900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 29),
  -- Mareep - Flash - TM70
  (179, 17900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 30),
  -- Mareep - Thunder Wave - TM73
  (179, 17900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 31),
  -- Mareep - Captivate - TM78
  (179, 17900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 32),
  -- Mareep - Sleep Talk - TM82
  (179, 17900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 33),
  -- Mareep - Natural Gift - TM83
  (179, 17900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 34),
  -- Mareep - Swagger - TM87
  (179, 17900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 35),
  -- Mareep - Substitute - TM90
  (179, 17900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 36),
  -- Mareep - Sand Attack - Egg
  (179, 17900, 28, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Mareep - Body Slam - Egg
  (179, 17900, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Mareep - Take Down - Egg
  (179, 17900, 36, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mareep - Screech - Egg
  (179, 17900, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mareep - Reflect - Egg
  (179, 17900, 115, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mareep - Safeguard - Egg
  (179, 17900, 219, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mareep - Flatter - Egg
  (179, 17900, 260, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mareep - Charge - Egg
  (179, 17900, 268, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mareep - Odor Sleuth - Egg
  (179, 17900, 316, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mareep - Swift - Tutor
  (179, 17900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Mareep - Snore - Tutor
  (179, 17900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Mareep - Signal Beam - Tutor
  (179, 17900, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Mareep - Magnet Rise - Tutor
  (179, 17900, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Flaaffy - Tackle - Level 1
  (180, 18000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flaaffy - Growl - Level 1
  (180, 18000, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flaaffy - Thunder Shock - Level 1
  (180, 18000, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flaaffy - Growl - Level 5
  (180, 18000, 45, 9, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Flaaffy - Thunder Shock - Level 10
  (180, 18000, 84, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Flaaffy - Thunder Wave - Level 14
  (180, 18000, 86, 9, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Flaaffy - Cotton Spore - Level 20
  (180, 18000, 178, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Flaaffy - Charge - Level 25
  (180, 18000, 268, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Flaaffy - Discharge - Level 31
  (180, 18000, 435, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Flaaffy - Signal Beam - Level 36
  (180, 18000, 324, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Flaaffy - Light Screen - Level 42
  (180, 18000, 113, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Flaaffy - Power Gem - Level 47
  (180, 18000, 408, 9, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Flaaffy - Thunder - Level 53
  (180, 18000, 87, 9, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Flaaffy - Focus Punch - TM01
  (180, 18000, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 14),
  -- Flaaffy - Toxic - TM06
  (180, 18000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Flaaffy - Hidden Power - TM10
  (180, 18000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Flaaffy - Light Screen - TM16
  (180, 18000, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 17),
  -- Flaaffy - Protect - TM17
  (180, 18000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Flaaffy - Rain Dance - TM18
  (180, 18000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Flaaffy - Frustration - TM21
  (180, 18000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Flaaffy - Iron Tail - TM23
  (180, 18000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 21),
  -- Flaaffy - Thunderbolt - TM24
  (180, 18000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 22),
  -- Flaaffy - Thunder - TM25
  (180, 18000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 23),
  -- Flaaffy - Return - TM27
  (180, 18000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Flaaffy - Brick Break - TM31
  (180, 18000, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 25),
  -- Flaaffy - Double Team - TM32
  (180, 18000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Flaaffy - Shock Wave - TM34
  (180, 18000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 27),
  -- Flaaffy - Facade - TM42
  (180, 18000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Flaaffy - Secret Power - TM43
  (180, 18000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Flaaffy - Rest - TM44
  (180, 18000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Flaaffy - Attract - TM45
  (180, 18000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Flaaffy - Fling - TM56
  (180, 18000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 32),
  -- Flaaffy - Charge Beam - TM57
  (180, 18000, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 33),
  -- Flaaffy - Endure - TM58
  (180, 18000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Flaaffy - Flash - TM70
  (180, 18000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Flaaffy - Thunder Wave - TM73
  (180, 18000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 36),
  -- Flaaffy - Captivate - TM78
  (180, 18000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Flaaffy - Sleep Talk - TM82
  (180, 18000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Flaaffy - Natural Gift - TM83
  (180, 18000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Flaaffy - Swagger - TM87
  (180, 18000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Flaaffy - Substitute - TM90
  (180, 18000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Flaaffy - Strength - HM04
  (180, 18000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 42),
  -- Flaaffy - Rock Smash - HM06
  (180, 18000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 43),
  -- Flaaffy - Fire Punch - Tutor
  (180, 18000, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Flaaffy - Thunder Punch - Tutor
  (180, 18000, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Flaaffy - Swift - Tutor
  (180, 18000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Flaaffy - Snore - Tutor
  (180, 18000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Flaaffy - Signal Beam - Tutor
  (180, 18000, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Flaaffy - Magnet Rise - Tutor
  (180, 18000, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Ampharos - Fire Punch - Level 1
  (181, 18100, 7, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ampharos - Tackle - Level 1
  (181, 18100, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ampharos - Growl - Level 1
  (181, 18100, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ampharos - Thunder Shock - Level 1
  (181, 18100, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ampharos - Thunder Wave - Level 1
  (181, 18100, 86, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ampharos - Growl - Level 5
  (181, 18100, 45, 9, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Ampharos - Thunder Shock - Level 10
  (181, 18100, 84, 9, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Ampharos - Thunder Wave - Level 14
  (181, 18100, 86, 9, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Ampharos - Cotton Spore - Level 20
  (181, 18100, 178, 9, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Ampharos - Charge - Level 25
  (181, 18100, 268, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Ampharos - Thunder Punch - Level 30
  (181, 18100, 9, 9, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Ampharos - Discharge - Level 34
  (181, 18100, 435, 9, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Ampharos - Signal Beam - Level 42
  (181, 18100, 324, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Ampharos - Light Screen - Level 51
  (181, 18100, 113, 9, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Ampharos - Power Gem - Level 59
  (181, 18100, 408, 9, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Ampharos - Thunder - Level 68
  (181, 18100, 87, 9, NULL, 1, 68, NULL, NULL, NULL, 16),
  -- Ampharos - Focus Punch - TM01
  (181, 18100, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Ampharos - Toxic - TM06
  (181, 18100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Ampharos - Hidden Power - TM10
  (181, 18100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Ampharos - Hyper Beam - TM15
  (181, 18100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Ampharos - Light Screen - TM16
  (181, 18100, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 21),
  -- Ampharos - Protect - TM17
  (181, 18100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Ampharos - Rain Dance - TM18
  (181, 18100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Ampharos - Frustration - TM21
  (181, 18100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Ampharos - Iron Tail - TM23
  (181, 18100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Ampharos - Thunderbolt - TM24
  (181, 18100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Ampharos - Thunder - TM25
  (181, 18100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 27),
  -- Ampharos - Return - TM27
  (181, 18100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Ampharos - Brick Break - TM31
  (181, 18100, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Ampharos - Double Team - TM32
  (181, 18100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Ampharos - Shock Wave - TM34
  (181, 18100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 31),
  -- Ampharos - Facade - TM42
  (181, 18100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Ampharos - Secret Power - TM43
  (181, 18100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Ampharos - Rest - TM44
  (181, 18100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Ampharos - Attract - TM45
  (181, 18100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Ampharos - Focus Blast - TM52
  (181, 18100, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 36),
  -- Ampharos - Fling - TM56
  (181, 18100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 37),
  -- Ampharos - Charge Beam - TM57
  (181, 18100, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 38),
  -- Ampharos - Endure - TM58
  (181, 18100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Ampharos - Giga Impact - TM68
  (181, 18100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 40),
  -- Ampharos - Flash - TM70
  (181, 18100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 41),
  -- Ampharos - Thunder Wave - TM73
  (181, 18100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 42),
  -- Ampharos - Captivate - TM78
  (181, 18100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Ampharos - Sleep Talk - TM82
  (181, 18100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Ampharos - Natural Gift - TM83
  (181, 18100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Ampharos - Swagger - TM87
  (181, 18100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Ampharos - Substitute - TM90
  (181, 18100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Ampharos - Strength - HM04
  (181, 18100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 48),
  -- Ampharos - Rock Smash - HM06
  (181, 18100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 49),
  -- Ampharos - Rock Climb - HM08
  (181, 18100, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 50),
  -- Ampharos - Fire Punch - Tutor
  (181, 18100, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Ampharos - Thunder Punch - Tutor
  (181, 18100, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Ampharos - Swift - Tutor
  (181, 18100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Ampharos - Snore - Tutor
  (181, 18100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Ampharos - Outrage - Tutor
  (181, 18100, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Ampharos - Signal Beam - Tutor
  (181, 18100, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Ampharos - Magnet Rise - Tutor
  (181, 18100, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Bellossom - Mega Drain - Level 1
  (182, 18200, 72, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellossom - Stun Spore - Level 1
  (182, 18200, 78, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bellossom - Sweet Scent - Level 1
  (182, 18200, 230, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bellossom - Sunny Day - Level 1
  (182, 18200, 241, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bellossom - Leaf Blade - Level 1
  (182, 18200, 348, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bellossom - Magical Leaf - Level 23
  (182, 18200, 345, 9, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Bellossom - Leaf Storm - Level 53
  (182, 18200, 437, 9, NULL, 1, 53, NULL, NULL, NULL, 7),
  -- Bellossom - Toxic - TM06
  (182, 18200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 8),
  -- Bellossom - Bullet Seed - TM09
  (182, 18200, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 9),
  -- Bellossom - Hidden Power - TM10
  (182, 18200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 10),
  -- Bellossom - Sunny Day - TM11
  (182, 18200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 11),
  -- Bellossom - Hyper Beam - TM15
  (182, 18200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 12),
  -- Bellossom - Protect - TM17
  (182, 18200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 13),
  -- Bellossom - Giga Drain - TM19
  (182, 18200, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 14),
  -- Bellossom - Safeguard - TM20
  (182, 18200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 15),
  -- Bellossom - Frustration - TM21
  (182, 18200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 16),
  -- Bellossom - Solar Beam - TM22
  (182, 18200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 17),
  -- Bellossom - Return - TM27
  (182, 18200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 18),
  -- Bellossom - Double Team - TM32
  (182, 18200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 19),
  -- Bellossom - Sludge Bomb - TM36
  (182, 18200, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 20),
  -- Bellossom - Facade - TM42
  (182, 18200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 21),
  -- Bellossom - Secret Power - TM43
  (182, 18200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 22),
  -- Bellossom - Rest - TM44
  (182, 18200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 23),
  -- Bellossom - Attract - TM45
  (182, 18200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 24),
  -- Bellossom - Energy Ball - TM53
  (182, 18200, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 25),
  -- Bellossom - Fling - TM56
  (182, 18200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 26),
  -- Bellossom - Endure - TM58
  (182, 18200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 27),
  -- Bellossom - Drain Punch - TM60
  (182, 18200, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 28),
  -- Bellossom - Giga Impact - TM68
  (182, 18200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 29),
  -- Bellossom - Flash - TM70
  (182, 18200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 30),
  -- Bellossom - Swords Dance - TM75
  (182, 18200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 31),
  -- Bellossom - Captivate - TM78
  (182, 18200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 32),
  -- Bellossom - Sleep Talk - TM82
  (182, 18200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 33),
  -- Bellossom - Natural Gift - TM83
  (182, 18200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 34),
  -- Bellossom - Grass Knot - TM86
  (182, 18200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 35),
  -- Bellossom - Swagger - TM87
  (182, 18200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 36),
  -- Bellossom - Substitute - TM90
  (182, 18200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 37),
  -- Bellossom - Cut - HM01
  (182, 18200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 38),
  -- Bellossom - Snore - Tutor
  (182, 18200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 39),
  -- Bellossom - Synthesis - Tutor
  (182, 18200, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 40),
  -- Bellossom - Uproar - Tutor
  (182, 18200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 41),
  -- Bellossom - Gastro Acid - Tutor
  (182, 18200, 380, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Bellossom - Seed Bomb - Tutor
  (182, 18200, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Marill - Tackle - Level 1
  (183, 18300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marill - Defense Curl - Level 2
  (183, 18300, 111, 9, NULL, 1, 2, NULL, NULL, NULL, 2),
  -- Marill - Tail Whip - Level 7
  (183, 18300, 39, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Marill - Water Gun - Level 10
  (183, 18300, 55, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Marill - Rollout - Level 15
  (183, 18300, 205, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Marill - Bubble Beam - Level 18
  (183, 18300, 61, 9, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Marill - Aqua Ring - Level 23
  (183, 18300, 392, 9, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Marill - Double-Edge - Level 27
  (183, 18300, 38, 9, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Marill - Rain Dance - Level 32
  (183, 18300, 240, 9, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Marill - Aqua Tail - Level 37
  (183, 18300, 401, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Marill - Hydro Pump - Level 42
  (183, 18300, 56, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Marill - Focus Punch - TM01
  (183, 18300, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 12),
  -- Marill - Water Pulse - TM03
  (183, 18300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Marill - Toxic - TM06
  (183, 18300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Marill - Hail - TM07
  (183, 18300, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 15),
  -- Marill - Hidden Power - TM10
  (183, 18300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Marill - Ice Beam - TM13
  (183, 18300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Marill - Blizzard - TM14
  (183, 18300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Marill - Protect - TM17
  (183, 18300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Marill - Rain Dance - TM18
  (183, 18300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Marill - Frustration - TM21
  (183, 18300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Marill - Iron Tail - TM23
  (183, 18300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 22),
  -- Marill - Return - TM27
  (183, 18300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Marill - Dig - TM28
  (183, 18300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 24),
  -- Marill - Brick Break - TM31
  (183, 18300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 25),
  -- Marill - Double Team - TM32
  (183, 18300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Marill - Facade - TM42
  (183, 18300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Marill - Secret Power - TM43
  (183, 18300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Marill - Rest - TM44
  (183, 18300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Marill - Attract - TM45
  (183, 18300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Marill - Fling - TM56
  (183, 18300, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 31),
  -- Marill - Endure - TM58
  (183, 18300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Marill - Captivate - TM78
  (183, 18300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 33),
  -- Marill - Sleep Talk - TM82
  (183, 18300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 34),
  -- Marill - Natural Gift - TM83
  (183, 18300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 35),
  -- Marill - Grass Knot - TM86
  (183, 18300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 36),
  -- Marill - Swagger - TM87
  (183, 18300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 37),
  -- Marill - Substitute - TM90
  (183, 18300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 38),
  -- Marill - Surf - HM03
  (183, 18300, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 39),
  -- Marill - Strength - HM04
  (183, 18300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 40),
  -- Marill - Defog - HM05
  (183, 18300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 41),
  -- Marill - Rock Smash - HM06
  (183, 18300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 42),
  -- Marill - Waterfall - HM07
  (183, 18300, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 43),
  -- Marill - Slam - Egg
  (183, 18300, 21, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Marill - Sing - Egg
  (183, 18300, 47, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Marill - Supersonic - Egg
  (183, 18300, 48, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Marill - Light Screen - Egg
  (183, 18300, 113, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Marill - Amnesia - Egg
  (183, 18300, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Marill - Substitute - Egg
  (183, 18300, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Marill - Belly Drum - Egg
  (183, 18300, 187, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Marill - Perish Song - Egg
  (183, 18300, 195, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Marill - Present - Egg
  (183, 18300, 217, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Marill - Encore - Egg
  (183, 18300, 227, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Marill - Future Sight - Egg
  (183, 18300, 248, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Marill - Superpower - Egg
  (183, 18300, 276, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Marill - Refresh - Egg
  (183, 18300, 287, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Marill - Fake Tears - Egg
  (183, 18300, 313, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Marill - Tickle - Egg
  (183, 18300, 321, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Marill - Aqua Jet - Egg
  (183, 18300, 453, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Marill - Ice Punch - Tutor
  (183, 18300, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Marill - Swift - Tutor
  (183, 18300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Marill - Snore - Tutor
  (183, 18300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Marill - Mud-Slap - Tutor
  (183, 18300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Marill - Icy Wind - Tutor
  (183, 18300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Marill - Rollout - Tutor
  (183, 18300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Marill - Helping Hand - Tutor
  (183, 18300, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Marill - Superpower - Tutor
  (183, 18300, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Marill - Knock Off - Tutor
  (183, 18300, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Marill - Dive - Tutor
  (183, 18300, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Marill - Aqua Tail - Tutor
  (183, 18300, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Azumarill - Tackle - Level 1
  (184, 18400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azumarill - Tail Whip - Level 1
  (184, 18400, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azumarill - Water Gun - Level 1
  (184, 18400, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Azumarill - Defense Curl - Level 1
  (184, 18400, 111, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Azumarill - Defense Curl - Level 2
  (184, 18400, 111, 9, NULL, 1, 2, NULL, NULL, NULL, 5),
  -- Azumarill - Tail Whip - Level 7
  (184, 18400, 39, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Azumarill - Water Gun - Level 10
  (184, 18400, 55, 9, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Azumarill - Rollout - Level 15
  (184, 18400, 205, 9, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Azumarill - Bubble Beam - Level 20
  (184, 18400, 61, 9, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Azumarill - Aqua Ring - Level 27
  (184, 18400, 392, 9, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Azumarill - Double-Edge - Level 33
  (184, 18400, 38, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Azumarill - Rain Dance - Level 40
  (184, 18400, 240, 9, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Azumarill - Aqua Tail - Level 47
  (184, 18400, 401, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Azumarill - Hydro Pump - Level 54
  (184, 18400, 56, 9, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Azumarill - Focus Punch - TM01
  (184, 18400, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Azumarill - Water Pulse - TM03
  (184, 18400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Azumarill - Toxic - TM06
  (184, 18400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Azumarill - Hail - TM07
  (184, 18400, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Azumarill - Hidden Power - TM10
  (184, 18400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Azumarill - Ice Beam - TM13
  (184, 18400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Azumarill - Blizzard - TM14
  (184, 18400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Azumarill - Hyper Beam - TM15
  (184, 18400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Azumarill - Protect - TM17
  (184, 18400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Azumarill - Rain Dance - TM18
  (184, 18400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Azumarill - Frustration - TM21
  (184, 18400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Azumarill - Iron Tail - TM23
  (184, 18400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Azumarill - Return - TM27
  (184, 18400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Azumarill - Dig - TM28
  (184, 18400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Azumarill - Brick Break - TM31
  (184, 18400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Azumarill - Double Team - TM32
  (184, 18400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Azumarill - Facade - TM42
  (184, 18400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Azumarill - Secret Power - TM43
  (184, 18400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Azumarill - Rest - TM44
  (184, 18400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Azumarill - Attract - TM45
  (184, 18400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Azumarill - Focus Blast - TM52
  (184, 18400, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 35),
  -- Azumarill - Fling - TM56
  (184, 18400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Azumarill - Endure - TM58
  (184, 18400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Azumarill - Giga Impact - TM68
  (184, 18400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 38),
  -- Azumarill - Captivate - TM78
  (184, 18400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Azumarill - Sleep Talk - TM82
  (184, 18400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Azumarill - Natural Gift - TM83
  (184, 18400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Azumarill - Grass Knot - TM86
  (184, 18400, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 42),
  -- Azumarill - Swagger - TM87
  (184, 18400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Azumarill - Substitute - TM90
  (184, 18400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Azumarill - Surf - HM03
  (184, 18400, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 45),
  -- Azumarill - Strength - HM04
  (184, 18400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Azumarill - Defog - HM05
  (184, 18400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Azumarill - Rock Smash - HM06
  (184, 18400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Azumarill - Waterfall - HM07
  (184, 18400, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 49),
  -- Azumarill - Ice Punch - Tutor
  (184, 18400, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Azumarill - Swift - Tutor
  (184, 18400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Azumarill - Snore - Tutor
  (184, 18400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Azumarill - Mud-Slap - Tutor
  (184, 18400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Azumarill - Icy Wind - Tutor
  (184, 18400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Azumarill - Rollout - Tutor
  (184, 18400, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Azumarill - Helping Hand - Tutor
  (184, 18400, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Azumarill - Superpower - Tutor
  (184, 18400, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Azumarill - Knock Off - Tutor
  (184, 18400, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Azumarill - Dive - Tutor
  (184, 18400, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Azumarill - Aqua Tail - Tutor
  (184, 18400, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Sudowoodo - Low Kick - Level 1
  (185, 18500, 67, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sudowoodo - Rock Throw - Level 1
  (185, 18500, 88, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sudowoodo - Flail - Level 1
  (185, 18500, 175, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sudowoodo - Copycat - Level 1
  (185, 18500, 383, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sudowoodo - Wood Hammer - Level 1
  (185, 18500, 452, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sudowoodo - Flail - Level 6
  (185, 18500, 175, 9, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Sudowoodo - Low Kick - Level 9
  (185, 18500, 67, 9, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Sudowoodo - Rock Throw - Level 14
  (185, 18500, 88, 9, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Sudowoodo - Mimic - Level 17
  (185, 18500, 102, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Sudowoodo - Block - Level 22
  (185, 18500, 335, 9, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Sudowoodo - Feint Attack - Level 25
  (185, 18500, 185, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Sudowoodo - Rock Tomb - Level 30
  (185, 18500, 317, 9, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sudowoodo - Rock Slide - Level 33
  (185, 18500, 157, 9, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Sudowoodo - Slam - Level 38
  (185, 18500, 21, 9, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Sudowoodo - Sucker Punch - Level 41
  (185, 18500, 389, 9, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Sudowoodo - Double-Edge - Level 46
  (185, 18500, 38, 9, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Sudowoodo - Hammer Arm - Level 49
  (185, 18500, 359, 9, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Sudowoodo - Focus Punch - TM01
  (185, 18500, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 18),
  -- Sudowoodo - Calm Mind - TM04
  (185, 18500, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 19),
  -- Sudowoodo - Toxic - TM06
  (185, 18500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Sudowoodo - Hidden Power - TM10
  (185, 18500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Sudowoodo - Sunny Day - TM11
  (185, 18500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Sudowoodo - Taunt - TM12
  (185, 18500, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 23),
  -- Sudowoodo - Protect - TM17
  (185, 18500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Sudowoodo - Frustration - TM21
  (185, 18500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Sudowoodo - Earthquake - TM26
  (185, 18500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 26),
  -- Sudowoodo - Return - TM27
  (185, 18500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Sudowoodo - Dig - TM28
  (185, 18500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Sudowoodo - Brick Break - TM31
  (185, 18500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Sudowoodo - Double Team - TM32
  (185, 18500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Sudowoodo - Sandstorm - TM37
  (185, 18500, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 31),
  -- Sudowoodo - Rock Tomb - TM39
  (185, 18500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 32),
  -- Sudowoodo - Torment - TM41
  (185, 18500, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 33),
  -- Sudowoodo - Facade - TM42
  (185, 18500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Sudowoodo - Secret Power - TM43
  (185, 18500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Sudowoodo - Rest - TM44
  (185, 18500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Sudowoodo - Attract - TM45
  (185, 18500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Sudowoodo - Thief - TM46
  (185, 18500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 38),
  -- Sudowoodo - Fling - TM56
  (185, 18500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 39),
  -- Sudowoodo - Endure - TM58
  (185, 18500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Sudowoodo - Explosion - TM64
  (185, 18500, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 41),
  -- Sudowoodo - Rock Polish - TM69
  (185, 18500, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 42),
  -- Sudowoodo - Stone Edge - TM71
  (185, 18500, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 43),
  -- Sudowoodo - Stealth Rock - TM76
  (185, 18500, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 44),
  -- Sudowoodo - Psych Up - TM77
  (185, 18500, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 45),
  -- Sudowoodo - Captivate - TM78
  (185, 18500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Sudowoodo - Rock Slide - TM80
  (185, 18500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 47),
  -- Sudowoodo - Sleep Talk - TM82
  (185, 18500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Sudowoodo - Natural Gift - TM83
  (185, 18500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Sudowoodo - Swagger - TM87
  (185, 18500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Sudowoodo - Substitute - TM90
  (185, 18500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Sudowoodo - Strength - HM04
  (185, 18500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 52),
  -- Sudowoodo - Rock Smash - HM06
  (185, 18500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Sudowoodo - Headbutt - Egg
  (185, 18500, 29, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sudowoodo - Harden - Egg
  (185, 18500, 106, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sudowoodo - Defense Curl - Egg
  (185, 18500, 111, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sudowoodo - Self-Destruct - Egg
  (185, 18500, 120, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sudowoodo - Rollout - Egg
  (185, 18500, 205, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sudowoodo - Sand Tomb - Egg
  (185, 18500, 328, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sudowoodo - Fire Punch - Tutor
  (185, 18500, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Sudowoodo - Ice Punch - Tutor
  (185, 18500, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Sudowoodo - Thunder Punch - Tutor
  (185, 18500, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Sudowoodo - Snore - Tutor
  (185, 18500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Sudowoodo - Mud-Slap - Tutor
  (185, 18500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Sudowoodo - Rollout - Tutor
  (185, 18500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Sudowoodo - Helping Hand - Tutor
  (185, 18500, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Sudowoodo - Sucker Punch - Tutor
  (185, 18500, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Sudowoodo - Earth Power - Tutor
  (185, 18500, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Politoed - Double Slap - Level 1
  (186, 18600, 3, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Politoed - Bubble Beam - Level 1
  (186, 18600, 61, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Politoed - Hypnosis - Level 1
  (186, 18600, 95, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Politoed - Perish Song - Level 1
  (186, 18600, 195, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Politoed - Swagger - Level 27
  (186, 18600, 207, 9, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Politoed - Bounce - Level 37
  (186, 18600, 340, 9, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Politoed - Hyper Voice - Level 48
  (186, 18600, 304, 9, NULL, 1, 48, NULL, NULL, NULL, 7),
  -- Politoed - Focus Punch - TM01
  (186, 18600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 8),
  -- Politoed - Water Pulse - TM03
  (186, 18600, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 9),
  -- Politoed - Toxic - TM06
  (186, 18600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 10),
  -- Politoed - Hail - TM07
  (186, 18600, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 11),
  -- Politoed - Hidden Power - TM10
  (186, 18600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 12),
  -- Politoed - Ice Beam - TM13
  (186, 18600, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 13),
  -- Politoed - Blizzard - TM14
  (186, 18600, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 14),
  -- Politoed - Hyper Beam - TM15
  (186, 18600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 15),
  -- Politoed - Protect - TM17
  (186, 18600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 16),
  -- Politoed - Rain Dance - TM18
  (186, 18600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 17),
  -- Politoed - Frustration - TM21
  (186, 18600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 18),
  -- Politoed - Earthquake - TM26
  (186, 18600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 19),
  -- Politoed - Return - TM27
  (186, 18600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Politoed - Dig - TM28
  (186, 18600, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 21),
  -- Politoed - Psychic - TM29
  (186, 18600, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 22),
  -- Politoed - Brick Break - TM31
  (186, 18600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 23),
  -- Politoed - Double Team - TM32
  (186, 18600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Politoed - Facade - TM42
  (186, 18600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 25),
  -- Politoed - Secret Power - TM43
  (186, 18600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 26),
  -- Politoed - Rest - TM44
  (186, 18600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 27),
  -- Politoed - Attract - TM45
  (186, 18600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 28),
  -- Politoed - Thief - TM46
  (186, 18600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 29),
  -- Politoed - Focus Blast - TM52
  (186, 18600, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 30),
  -- Politoed - Fling - TM56
  (186, 18600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 31),
  -- Politoed - Endure - TM58
  (186, 18600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Politoed - Payback - TM66
  (186, 18600, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 33),
  -- Politoed - Giga Impact - TM68
  (186, 18600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 34),
  -- Politoed - Captivate - TM78
  (186, 18600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 35),
  -- Politoed - Sleep Talk - TM82
  (186, 18600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 36),
  -- Politoed - Natural Gift - TM83
  (186, 18600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 37),
  -- Politoed - Swagger - TM87
  (186, 18600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Politoed - Substitute - TM90
  (186, 18600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Politoed - Surf - HM03
  (186, 18600, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 40),
  -- Politoed - Strength - HM04
  (186, 18600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 41),
  -- Politoed - Defog - HM05
  (186, 18600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 42),
  -- Politoed - Rock Smash - HM06
  (186, 18600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 43),
  -- Politoed - Waterfall - HM07
  (186, 18600, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 44),
  -- Politoed - Snore - Tutor
  (186, 18600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Politoed - Mud-Slap - Tutor
  (186, 18600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Politoed - Icy Wind - Tutor
  (186, 18600, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Politoed - Helping Hand - Tutor
  (186, 18600, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Politoed - Dive - Tutor
  (186, 18600, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Politoed - Bounce - Tutor
  (186, 18600, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Hoppip - Splash - Level 1
  (187, 18700, 150, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoppip - Synthesis - Level 4
  (187, 18700, 235, 9, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Hoppip - Tail Whip - Level 7
  (187, 18700, 39, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Hoppip - Tackle - Level 10
  (187, 18700, 33, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Hoppip - Poison Powder - Level 12
  (187, 18700, 77, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Hoppip - Stun Spore - Level 14
  (187, 18700, 78, 9, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Hoppip - Sleep Powder - Level 16
  (187, 18700, 79, 9, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Hoppip - Bullet Seed - Level 19
  (187, 18700, 331, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Hoppip - Leech Seed - Level 22
  (187, 18700, 73, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Hoppip - Mega Drain - Level 25
  (187, 18700, 72, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Hoppip - Cotton Spore - Level 28
  (187, 18700, 178, 9, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Hoppip - U-turn - Level 31
  (187, 18700, 369, 9, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Hoppip - Worry Seed - Level 34
  (187, 18700, 388, 9, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Hoppip - Giga Drain - Level 37
  (187, 18700, 202, 9, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Hoppip - Bounce - Level 40
  (187, 18700, 340, 9, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Hoppip - Memento - Level 43
  (187, 18700, 262, 9, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Hoppip - Toxic - TM06
  (187, 18700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Hoppip - Bullet Seed - TM09
  (187, 18700, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 18),
  -- Hoppip - Hidden Power - TM10
  (187, 18700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Hoppip - Sunny Day - TM11
  (187, 18700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Hoppip - Protect - TM17
  (187, 18700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Hoppip - Giga Drain - TM19
  (187, 18700, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 22),
  -- Hoppip - Frustration - TM21
  (187, 18700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Hoppip - Solar Beam - TM22
  (187, 18700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Hoppip - Return - TM27
  (187, 18700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Hoppip - Double Team - TM32
  (187, 18700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Hoppip - Aerial Ace - TM40
  (187, 18700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 27),
  -- Hoppip - Facade - TM42
  (187, 18700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Hoppip - Secret Power - TM43
  (187, 18700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Hoppip - Rest - TM44
  (187, 18700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Hoppip - Attract - TM45
  (187, 18700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Hoppip - Energy Ball - TM53
  (187, 18700, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 32),
  -- Hoppip - Endure - TM58
  (187, 18700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Hoppip - Silver Wind - TM62
  (187, 18700, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 34),
  -- Hoppip - Flash - TM70
  (187, 18700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Hoppip - Swords Dance - TM75
  (187, 18700, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 36),
  -- Hoppip - Captivate - TM78
  (187, 18700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Hoppip - Sleep Talk - TM82
  (187, 18700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Hoppip - Natural Gift - TM83
  (187, 18700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Hoppip - Grass Knot - TM86
  (187, 18700, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 40),
  -- Hoppip - Swagger - TM87
  (187, 18700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Hoppip - U-turn - TM89
  (187, 18700, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 42),
  -- Hoppip - Substitute - TM90
  (187, 18700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Hoppip - Double-Edge - Egg
  (187, 18700, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Hoppip - Confusion - Egg
  (187, 18700, 93, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hoppip - Reflect - Egg
  (187, 18700, 115, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hoppip - Amnesia - Egg
  (187, 18700, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hoppip - Encore - Egg
  (187, 18700, 227, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hoppip - Psych Up - Egg
  (187, 18700, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hoppip - Helping Hand - Egg
  (187, 18700, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hoppip - Aromatherapy - Egg
  (187, 18700, 312, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hoppip - Worry Seed - Egg
  (187, 18700, 388, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hoppip - Snore - Tutor
  (187, 18700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Hoppip - Synthesis - Tutor
  (187, 18700, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Hoppip - Helping Hand - Tutor
  (187, 18700, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Hoppip - Bounce - Tutor
  (187, 18700, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Hoppip - Seed Bomb - Tutor
  (187, 18700, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Skiploom - Tackle - Level 1
  (188, 18800, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skiploom - Tail Whip - Level 1
  (188, 18800, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skiploom - Splash - Level 1
  (188, 18800, 150, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skiploom - Synthesis - Level 1
  (188, 18800, 235, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skiploom - Synthesis - Level 4
  (188, 18800, 235, 9, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Skiploom - Tail Whip - Level 7
  (188, 18800, 39, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Skiploom - Tackle - Level 10
  (188, 18800, 33, 9, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Skiploom - Poison Powder - Level 12
  (188, 18800, 77, 9, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Skiploom - Stun Spore - Level 14
  (188, 18800, 78, 9, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Skiploom - Sleep Powder - Level 16
  (188, 18800, 79, 9, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Skiploom - Bullet Seed - Level 20
  (188, 18800, 331, 9, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Skiploom - Leech Seed - Level 24
  (188, 18800, 73, 9, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Skiploom - Mega Drain - Level 28
  (188, 18800, 72, 9, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Skiploom - Cotton Spore - Level 32
  (188, 18800, 178, 9, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Skiploom - U-turn - Level 36
  (188, 18800, 369, 9, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Skiploom - Worry Seed - Level 40
  (188, 18800, 388, 9, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Skiploom - Giga Drain - Level 44
  (188, 18800, 202, 9, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Skiploom - Bounce - Level 48
  (188, 18800, 340, 9, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Skiploom - Memento - Level 52
  (188, 18800, 262, 9, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Skiploom - Toxic - TM06
  (188, 18800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Skiploom - Bullet Seed - TM09
  (188, 18800, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 21),
  -- Skiploom - Hidden Power - TM10
  (188, 18800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Skiploom - Sunny Day - TM11
  (188, 18800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 23),
  -- Skiploom - Protect - TM17
  (188, 18800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Skiploom - Giga Drain - TM19
  (188, 18800, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 25),
  -- Skiploom - Frustration - TM21
  (188, 18800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Skiploom - Solar Beam - TM22
  (188, 18800, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Skiploom - Return - TM27
  (188, 18800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Skiploom - Double Team - TM32
  (188, 18800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Skiploom - Aerial Ace - TM40
  (188, 18800, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 30),
  -- Skiploom - Facade - TM42
  (188, 18800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Skiploom - Secret Power - TM43
  (188, 18800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Skiploom - Rest - TM44
  (188, 18800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Skiploom - Attract - TM45
  (188, 18800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Skiploom - Energy Ball - TM53
  (188, 18800, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 35),
  -- Skiploom - Endure - TM58
  (188, 18800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Skiploom - Silver Wind - TM62
  (188, 18800, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 37),
  -- Skiploom - Flash - TM70
  (188, 18800, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Skiploom - Swords Dance - TM75
  (188, 18800, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 39),
  -- Skiploom - Captivate - TM78
  (188, 18800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Skiploom - Sleep Talk - TM82
  (188, 18800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Skiploom - Natural Gift - TM83
  (188, 18800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Skiploom - Grass Knot - TM86
  (188, 18800, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 43),
  -- Skiploom - Swagger - TM87
  (188, 18800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Skiploom - U-turn - TM89
  (188, 18800, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 45),
  -- Skiploom - Substitute - TM90
  (188, 18800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Skiploom - Snore - Tutor
  (188, 18800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Skiploom - Synthesis - Tutor
  (188, 18800, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Skiploom - Helping Hand - Tutor
  (188, 18800, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Skiploom - Bounce - Tutor
  (188, 18800, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Skiploom - Seed Bomb - Tutor
  (188, 18800, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Jumpluff - Tackle - Level 1
  (189, 18900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jumpluff - Tail Whip - Level 1
  (189, 18900, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jumpluff - Splash - Level 1
  (189, 18900, 150, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jumpluff - Synthesis - Level 1
  (189, 18900, 235, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jumpluff - Synthesis - Level 4
  (189, 18900, 235, 9, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Jumpluff - Tail Whip - Level 7
  (189, 18900, 39, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Jumpluff - Tackle - Level 10
  (189, 18900, 33, 9, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Jumpluff - Poison Powder - Level 12
  (189, 18900, 77, 9, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Jumpluff - Stun Spore - Level 14
  (189, 18900, 78, 9, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Jumpluff - Sleep Powder - Level 16
  (189, 18900, 79, 9, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Jumpluff - Bullet Seed - Level 20
  (189, 18900, 331, 9, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Jumpluff - Leech Seed - Level 24
  (189, 18900, 73, 9, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Jumpluff - Mega Drain - Level 28
  (189, 18900, 72, 9, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Jumpluff - Cotton Spore - Level 32
  (189, 18900, 178, 9, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Jumpluff - U-turn - Level 36
  (189, 18900, 369, 9, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Jumpluff - Worry Seed - Level 40
  (189, 18900, 388, 9, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Jumpluff - Giga Drain - Level 44
  (189, 18900, 202, 9, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Jumpluff - Bounce - Level 48
  (189, 18900, 340, 9, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Jumpluff - Memento - Level 52
  (189, 18900, 262, 9, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Jumpluff - Toxic - TM06
  (189, 18900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Jumpluff - Bullet Seed - TM09
  (189, 18900, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 21),
  -- Jumpluff - Hidden Power - TM10
  (189, 18900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Jumpluff - Sunny Day - TM11
  (189, 18900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 23),
  -- Jumpluff - Hyper Beam - TM15
  (189, 18900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Jumpluff - Protect - TM17
  (189, 18900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Jumpluff - Giga Drain - TM19
  (189, 18900, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 26),
  -- Jumpluff - Frustration - TM21
  (189, 18900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Jumpluff - Solar Beam - TM22
  (189, 18900, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 28),
  -- Jumpluff - Return - TM27
  (189, 18900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Jumpluff - Double Team - TM32
  (189, 18900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Jumpluff - Aerial Ace - TM40
  (189, 18900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 31),
  -- Jumpluff - Facade - TM42
  (189, 18900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Jumpluff - Secret Power - TM43
  (189, 18900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Jumpluff - Rest - TM44
  (189, 18900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Jumpluff - Attract - TM45
  (189, 18900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Jumpluff - Energy Ball - TM53
  (189, 18900, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 36),
  -- Jumpluff - Endure - TM58
  (189, 18900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Jumpluff - Silver Wind - TM62
  (189, 18900, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 38),
  -- Jumpluff - Giga Impact - TM68
  (189, 18900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 39),
  -- Jumpluff - Flash - TM70
  (189, 18900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 40),
  -- Jumpluff - Swords Dance - TM75
  (189, 18900, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 41),
  -- Jumpluff - Captivate - TM78
  (189, 18900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Jumpluff - Sleep Talk - TM82
  (189, 18900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Jumpluff - Natural Gift - TM83
  (189, 18900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Jumpluff - Grass Knot - TM86
  (189, 18900, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 45),
  -- Jumpluff - Swagger - TM87
  (189, 18900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Jumpluff - U-turn - TM89
  (189, 18900, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 47),
  -- Jumpluff - Substitute - TM90
  (189, 18900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Jumpluff - Snore - Tutor
  (189, 18900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Jumpluff - Synthesis - Tutor
  (189, 18900, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Jumpluff - Helping Hand - Tutor
  (189, 18900, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Jumpluff - Bounce - Tutor
  (189, 18900, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Jumpluff - Seed Bomb - Tutor
  (189, 18900, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Aipom - Scratch - Level 1
  (190, 19000, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aipom - Tail Whip - Level 1
  (190, 19000, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aipom - Sand Attack - Level 4
  (190, 19000, 28, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Aipom - Astonish - Level 8
  (190, 19000, 310, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Aipom - Baton Pass - Level 11
  (190, 19000, 226, 9, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Aipom - Tickle - Level 15
  (190, 19000, 321, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Aipom - Fury Swipes - Level 18
  (190, 19000, 154, 9, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Aipom - Swift - Level 22
  (190, 19000, 129, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Aipom - Screech - Level 25
  (190, 19000, 103, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Aipom - Agility - Level 29
  (190, 19000, 97, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Aipom - Double Hit - Level 32
  (190, 19000, 458, 9, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Aipom - Fling - Level 36
  (190, 19000, 374, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Aipom - Nasty Plot - Level 39
  (190, 19000, 417, 9, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Aipom - Last Resort - Level 43
  (190, 19000, 387, 9, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Aipom - Focus Punch - TM01
  (190, 19000, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Aipom - Water Pulse - TM03
  (190, 19000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Aipom - Toxic - TM06
  (190, 19000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Aipom - Hidden Power - TM10
  (190, 19000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Aipom - Sunny Day - TM11
  (190, 19000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Aipom - Taunt - TM12
  (190, 19000, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 20),
  -- Aipom - Protect - TM17
  (190, 19000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Aipom - Rain Dance - TM18
  (190, 19000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Aipom - Frustration - TM21
  (190, 19000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Aipom - Solar Beam - TM22
  (190, 19000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Aipom - Iron Tail - TM23
  (190, 19000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Aipom - Thunderbolt - TM24
  (190, 19000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Aipom - Thunder - TM25
  (190, 19000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 27),
  -- Aipom - Return - TM27
  (190, 19000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Aipom - Dig - TM28
  (190, 19000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 29),
  -- Aipom - Shadow Ball - TM30
  (190, 19000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Aipom - Brick Break - TM31
  (190, 19000, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 31),
  -- Aipom - Double Team - TM32
  (190, 19000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Aipom - Shock Wave - TM34
  (190, 19000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Aipom - Aerial Ace - TM40
  (190, 19000, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 34),
  -- Aipom - Facade - TM42
  (190, 19000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Aipom - Secret Power - TM43
  (190, 19000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Aipom - Rest - TM44
  (190, 19000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Aipom - Attract - TM45
  (190, 19000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Aipom - Thief - TM46
  (190, 19000, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 39),
  -- Aipom - Snatch - TM49
  (190, 19000, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 40),
  -- Aipom - Fling - TM56
  (190, 19000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 41),
  -- Aipom - Endure - TM58
  (190, 19000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Aipom - Shadow Claw - TM65
  (190, 19000, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 43),
  -- Aipom - Payback - TM66
  (190, 19000, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 44),
  -- Aipom - Thunder Wave - TM73
  (190, 19000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 45),
  -- Aipom - Captivate - TM78
  (190, 19000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Aipom - Sleep Talk - TM82
  (190, 19000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Aipom - Natural Gift - TM83
  (190, 19000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Aipom - Dream Eater - TM85
  (190, 19000, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 49),
  -- Aipom - Grass Knot - TM86
  (190, 19000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 50),
  -- Aipom - Swagger - TM87
  (190, 19000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Aipom - U-turn - TM89
  (190, 19000, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 52),
  -- Aipom - Substitute - TM90
  (190, 19000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 53),
  -- Aipom - Cut - HM01
  (190, 19000, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 54),
  -- Aipom - Strength - HM04
  (190, 19000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 55),
  -- Aipom - Rock Smash - HM06
  (190, 19000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 56),
  -- Aipom - Double Slap - Egg
  (190, 19000, 3, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Aipom - Slam - Egg
  (190, 19000, 21, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Aipom - Counter - Egg
  (190, 19000, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Aipom - Agility - Egg
  (190, 19000, 97, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Aipom - Screech - Egg
  (190, 19000, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Aipom - Spite - Egg
  (190, 19000, 180, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Aipom - Pursuit - Egg
  (190, 19000, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Aipom - Beat Up - Egg
  (190, 19000, 251, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Aipom - Fake Out - Egg
  (190, 19000, 252, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Aipom - Bounce - Egg
  (190, 19000, 340, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Aipom - Covet - Egg
  (190, 19000, 343, 9, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Aipom - Fire Punch - Tutor
  (190, 19000, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Aipom - Ice Punch - Tutor
  (190, 19000, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Aipom - Thunder Punch - Tutor
  (190, 19000, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Aipom - Swift - Tutor
  (190, 19000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Aipom - Snore - Tutor
  (190, 19000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Aipom - Spite - Tutor
  (190, 19000, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Aipom - Mud-Slap - Tutor
  (190, 19000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Aipom - Fury Cutter - Tutor
  (190, 19000, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Aipom - Uproar - Tutor
  (190, 19000, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Aipom - Knock Off - Tutor
  (190, 19000, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Aipom - Bounce - Tutor
  (190, 19000, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Aipom - Last Resort - Tutor
  (190, 19000, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Aipom - Seed Bomb - Tutor
  (190, 19000, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Aipom - Gunk Shot - Tutor
  (190, 19000, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Sunkern - Absorb - Level 1
  (191, 19100, 71, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunkern - Growth - Level 1
  (191, 19100, 74, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sunkern - Mega Drain - Level 5
  (191, 19100, 72, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Sunkern - Ingrain - Level 9
  (191, 19100, 275, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Sunkern - Grass Whistle - Level 13
  (191, 19100, 320, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Sunkern - Leech Seed - Level 17
  (191, 19100, 73, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Sunkern - Endeavor - Level 21
  (191, 19100, 283, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Sunkern - Worry Seed - Level 25
  (191, 19100, 388, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sunkern - Razor Leaf - Level 29
  (191, 19100, 75, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Sunkern - Synthesis - Level 33
  (191, 19100, 235, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Sunkern - Sunny Day - Level 37
  (191, 19100, 241, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Sunkern - Giga Drain - Level 41
  (191, 19100, 202, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Sunkern - Seed Bomb - Level 45
  (191, 19100, 402, 9, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Sunkern - Toxic - TM06
  (191, 19100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Sunkern - Bullet Seed - TM09
  (191, 19100, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 15),
  -- Sunkern - Hidden Power - TM10
  (191, 19100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Sunkern - Sunny Day - TM11
  (191, 19100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Sunkern - Light Screen - TM16
  (191, 19100, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 18),
  -- Sunkern - Protect - TM17
  (191, 19100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Sunkern - Giga Drain - TM19
  (191, 19100, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 20),
  -- Sunkern - Safeguard - TM20
  (191, 19100, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 21),
  -- Sunkern - Frustration - TM21
  (191, 19100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Sunkern - Solar Beam - TM22
  (191, 19100, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 23),
  -- Sunkern - Return - TM27
  (191, 19100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Sunkern - Double Team - TM32
  (191, 19100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Sunkern - Sludge Bomb - TM36
  (191, 19100, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 26),
  -- Sunkern - Facade - TM42
  (191, 19100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Sunkern - Secret Power - TM43
  (191, 19100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Sunkern - Rest - TM44
  (191, 19100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Sunkern - Attract - TM45
  (191, 19100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Sunkern - Energy Ball - TM53
  (191, 19100, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 31),
  -- Sunkern - Endure - TM58
  (191, 19100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Sunkern - Flash - TM70
  (191, 19100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 33),
  -- Sunkern - Swords Dance - TM75
  (191, 19100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 34),
  -- Sunkern - Captivate - TM78
  (191, 19100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 35),
  -- Sunkern - Sleep Talk - TM82
  (191, 19100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 36),
  -- Sunkern - Natural Gift - TM83
  (191, 19100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 37),
  -- Sunkern - Grass Knot - TM86
  (191, 19100, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 38),
  -- Sunkern - Swagger - TM87
  (191, 19100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 39),
  -- Sunkern - Substitute - TM90
  (191, 19100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 40),
  -- Sunkern - Cut - HM01
  (191, 19100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 41),
  -- Sunkern - Leech Seed - Egg
  (191, 19100, 73, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sunkern - Curse - Egg
  (191, 19100, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sunkern - Encore - Egg
  (191, 19100, 227, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Sunkern - Sweet Scent - Egg
  (191, 19100, 230, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Sunkern - Nature Power - Egg
  (191, 19100, 267, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Sunkern - Helping Hand - Egg
  (191, 19100, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sunkern - Ingrain - Egg
  (191, 19100, 275, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sunkern - Grass Whistle - Egg
  (191, 19100, 320, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sunkern - Snore - Tutor
  (191, 19100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Sunkern - Synthesis - Tutor
  (191, 19100, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Sunkern - Uproar - Tutor
  (191, 19100, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Sunkern - Helping Hand - Tutor
  (191, 19100, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Sunkern - Endeavor - Tutor
  (191, 19100, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Sunkern - Seed Bomb - Tutor
  (191, 19100, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Sunflora - Pound - Level 1
  (192, 19200, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunflora - Absorb - Level 1
  (192, 19200, 71, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sunflora - Growth - Level 1
  (192, 19200, 74, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sunflora - Mega Drain - Level 5
  (192, 19200, 72, 9, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Sunflora - Ingrain - Level 9
  (192, 19200, 275, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Sunflora - Grass Whistle - Level 13
  (192, 19200, 320, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sunflora - Leech Seed - Level 17
  (192, 19200, 73, 9, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Sunflora - Bullet Seed - Level 21
  (192, 19200, 331, 9, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Sunflora - Worry Seed - Level 25
  (192, 19200, 388, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Sunflora - Razor Leaf - Level 29
  (192, 19200, 75, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Sunflora - Petal Dance - Level 33
  (192, 19200, 80, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Sunflora - Sunny Day - Level 37
  (192, 19200, 241, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Sunflora - Solar Beam - Level 41
  (192, 19200, 76, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Sunflora - Leaf Storm - Level 43
  (192, 19200, 437, 9, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Sunflora - Toxic - TM06
  (192, 19200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Sunflora - Bullet Seed - TM09
  (192, 19200, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 16),
  -- Sunflora - Hidden Power - TM10
  (192, 19200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Sunflora - Sunny Day - TM11
  (192, 19200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Sunflora - Hyper Beam - TM15
  (192, 19200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Sunflora - Light Screen - TM16
  (192, 19200, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 20),
  -- Sunflora - Protect - TM17
  (192, 19200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Sunflora - Giga Drain - TM19
  (192, 19200, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 22),
  -- Sunflora - Safeguard - TM20
  (192, 19200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 23),
  -- Sunflora - Frustration - TM21
  (192, 19200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Sunflora - Solar Beam - TM22
  (192, 19200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Sunflora - Return - TM27
  (192, 19200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Sunflora - Double Team - TM32
  (192, 19200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Sunflora - Sludge Bomb - TM36
  (192, 19200, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 28),
  -- Sunflora - Facade - TM42
  (192, 19200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Sunflora - Secret Power - TM43
  (192, 19200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Sunflora - Rest - TM44
  (192, 19200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Sunflora - Attract - TM45
  (192, 19200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Sunflora - Energy Ball - TM53
  (192, 19200, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 33),
  -- Sunflora - Endure - TM58
  (192, 19200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Sunflora - Giga Impact - TM68
  (192, 19200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 35),
  -- Sunflora - Flash - TM70
  (192, 19200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 36),
  -- Sunflora - Swords Dance - TM75
  (192, 19200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 37),
  -- Sunflora - Captivate - TM78
  (192, 19200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Sunflora - Sleep Talk - TM82
  (192, 19200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Sunflora - Natural Gift - TM83
  (192, 19200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Sunflora - Grass Knot - TM86
  (192, 19200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 41),
  -- Sunflora - Swagger - TM87
  (192, 19200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Sunflora - Substitute - TM90
  (192, 19200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Sunflora - Cut - HM01
  (192, 19200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 44),
  -- Sunflora - Snore - Tutor
  (192, 19200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Sunflora - Synthesis - Tutor
  (192, 19200, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Sunflora - Uproar - Tutor
  (192, 19200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Sunflora - Helping Hand - Tutor
  (192, 19200, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Sunflora - Endeavor - Tutor
  (192, 19200, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Sunflora - Seed Bomb - Tutor
  (192, 19200, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Yanma - Tackle - Level 1
  (193, 19300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanma - Foresight - Level 1
  (193, 19300, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yanma - Quick Attack - Level 6
  (193, 19300, 98, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Yanma - Double Team - Level 11
  (193, 19300, 104, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Yanma - Sonic Boom - Level 14
  (193, 19300, 49, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Yanma - Detect - Level 17
  (193, 19300, 197, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Yanma - Supersonic - Level 22
  (193, 19300, 48, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Yanma - Uproar - Level 27
  (193, 19300, 253, 9, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Yanma - Pursuit - Level 30
  (193, 19300, 228, 9, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Yanma - Ancient Power - Level 33
  (193, 19300, 246, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Yanma - Hypnosis - Level 38
  (193, 19300, 95, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Yanma - Wing Attack - Level 43
  (193, 19300, 17, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Yanma - Screech - Level 46
  (193, 19300, 103, 9, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Yanma - U-turn - Level 49
  (193, 19300, 369, 9, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Yanma - Air Slash - Level 54
  (193, 19300, 403, 9, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Yanma - Bug Buzz - Level 57
  (193, 19300, 405, 9, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Yanma - Toxic - TM06
  (193, 19300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Yanma - Hidden Power - TM10
  (193, 19300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Yanma - Sunny Day - TM11
  (193, 19300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Yanma - Protect - TM17
  (193, 19300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Yanma - Giga Drain - TM19
  (193, 19300, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 21),
  -- Yanma - Frustration - TM21
  (193, 19300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Yanma - Solar Beam - TM22
  (193, 19300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 23),
  -- Yanma - Return - TM27
  (193, 19300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Yanma - Psychic - TM29
  (193, 19300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 25),
  -- Yanma - Shadow Ball - TM30
  (193, 19300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Yanma - Double Team - TM32
  (193, 19300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Yanma - Aerial Ace - TM40
  (193, 19300, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 28),
  -- Yanma - Facade - TM42
  (193, 19300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Yanma - Secret Power - TM43
  (193, 19300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Yanma - Rest - TM44
  (193, 19300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Yanma - Attract - TM45
  (193, 19300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Yanma - Thief - TM46
  (193, 19300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 33),
  -- Yanma - Steel Wing - TM47
  (193, 19300, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 34),
  -- Yanma - Roost - TM51
  (193, 19300, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 35),
  -- Yanma - Endure - TM58
  (193, 19300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Yanma - Silver Wind - TM62
  (193, 19300, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 37),
  -- Yanma - Flash - TM70
  (193, 19300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Yanma - Captivate - TM78
  (193, 19300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Yanma - Sleep Talk - TM82
  (193, 19300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Yanma - Natural Gift - TM83
  (193, 19300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Yanma - Dream Eater - TM85
  (193, 19300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 42),
  -- Yanma - Swagger - TM87
  (193, 19300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Yanma - U-turn - TM89
  (193, 19300, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 44),
  -- Yanma - Substitute - TM90
  (193, 19300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Yanma - Defog - HM05
  (193, 19300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 46),
  -- Yanma - Whirlwind - Egg
  (193, 19300, 18, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Yanma - Leech Life - Egg
  (193, 19300, 141, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Yanma - Reversal - Egg
  (193, 19300, 179, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Yanma - Feint Attack - Egg
  (193, 19300, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Yanma - Pursuit - Egg
  (193, 19300, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Yanma - Silver Wind - Egg
  (193, 19300, 318, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Yanma - Signal Beam - Egg
  (193, 19300, 324, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Yanma - Feint - Egg
  (193, 19300, 364, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Yanma - Swift - Tutor
  (193, 19300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Yanma - Snore - Tutor
  (193, 19300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Yanma - Ancient Power - Tutor
  (193, 19300, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Yanma - Uproar - Tutor
  (193, 19300, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Yanma - Air Cutter - Tutor
  (193, 19300, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Yanma - Signal Beam - Tutor
  (193, 19300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Yanma - Ominous Wind - Tutor
  (193, 19300, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Wooper - Tail Whip - Level 1
  (194, 19400, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wooper - Water Gun - Level 1
  (194, 19400, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wooper - Mud Sport - Level 5
  (194, 19400, 300, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wooper - Mud Shot - Level 9
  (194, 19400, 341, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Wooper - Slam - Level 15
  (194, 19400, 21, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wooper - Mud Bomb - Level 19
  (194, 19400, 426, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Wooper - Amnesia - Level 23
  (194, 19400, 133, 9, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Wooper - Yawn - Level 29
  (194, 19400, 281, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Wooper - Earthquake - Level 33
  (194, 19400, 89, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Wooper - Rain Dance - Level 37
  (194, 19400, 240, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Wooper - Mist - Level 43
  (194, 19400, 54, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Wooper - Haze - Level 43
  (194, 19400, 114, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Wooper - Muddy Water - Level 47
  (194, 19400, 330, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wooper - Water Pulse - TM03
  (194, 19400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Wooper - Toxic - TM06
  (194, 19400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Wooper - Hail - TM07
  (194, 19400, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 16),
  -- Wooper - Hidden Power - TM10
  (194, 19400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Wooper - Ice Beam - TM13
  (194, 19400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Wooper - Blizzard - TM14
  (194, 19400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Wooper - Protect - TM17
  (194, 19400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Wooper - Rain Dance - TM18
  (194, 19400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Wooper - Frustration - TM21
  (194, 19400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Wooper - Iron Tail - TM23
  (194, 19400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Wooper - Earthquake - TM26
  (194, 19400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Wooper - Return - TM27
  (194, 19400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Wooper - Dig - TM28
  (194, 19400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Wooper - Double Team - TM32
  (194, 19400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Wooper - Sludge Bomb - TM36
  (194, 19400, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 28),
  -- Wooper - Sandstorm - TM37
  (194, 19400, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 29),
  -- Wooper - Facade - TM42
  (194, 19400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Wooper - Secret Power - TM43
  (194, 19400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Wooper - Rest - TM44
  (194, 19400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Wooper - Attract - TM45
  (194, 19400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Wooper - Endure - TM58
  (194, 19400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Wooper - Flash - TM70
  (194, 19400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Wooper - Captivate - TM78
  (194, 19400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Wooper - Sleep Talk - TM82
  (194, 19400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 37),
  -- Wooper - Natural Gift - TM83
  (194, 19400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 38),
  -- Wooper - Swagger - TM87
  (194, 19400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 39),
  -- Wooper - Substitute - TM90
  (194, 19400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 40),
  -- Wooper - Surf - HM03
  (194, 19400, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 41),
  -- Wooper - Defog - HM05
  (194, 19400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 42),
  -- Wooper - Rock Smash - HM06
  (194, 19400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 43),
  -- Wooper - Waterfall - HM07
  (194, 19400, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 44),
  -- Wooper - Double Kick - Egg
  (194, 19400, 24, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wooper - Body Slam - Egg
  (194, 19400, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wooper - Counter - Egg
  (194, 19400, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wooper - Curse - Egg
  (194, 19400, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wooper - Safeguard - Egg
  (194, 19400, 219, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wooper - Encore - Egg
  (194, 19400, 227, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wooper - Ancient Power - Egg
  (194, 19400, 246, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wooper - Stockpile - Egg
  (194, 19400, 254, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wooper - Spit Up - Egg
  (194, 19400, 255, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wooper - Swallow - Egg
  (194, 19400, 256, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wooper - Mud Sport - Egg
  (194, 19400, 300, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wooper - Ice Punch - Tutor
  (194, 19400, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Wooper - Snore - Tutor
  (194, 19400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Wooper - Mud-Slap - Tutor
  (194, 19400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Wooper - Icy Wind - Tutor
  (194, 19400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Wooper - Rollout - Tutor
  (194, 19400, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Wooper - Ancient Power - Tutor
  (194, 19400, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Wooper - Dive - Tutor
  (194, 19400, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Wooper - Aqua Tail - Tutor
  (194, 19400, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Wooper - Earth Power - Tutor
  (194, 19400, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Quagsire - Tail Whip - Level 1
  (195, 19500, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quagsire - Water Gun - Level 1
  (195, 19500, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quagsire - Mud Sport - Level 1
  (195, 19500, 300, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quagsire - Mud Sport - Level 5
  (195, 19500, 300, 9, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Quagsire - Mud Shot - Level 9
  (195, 19500, 341, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Quagsire - Slam - Level 15
  (195, 19500, 21, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Quagsire - Mud Bomb - Level 19
  (195, 19500, 426, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Quagsire - Amnesia - Level 24
  (195, 19500, 133, 9, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Quagsire - Yawn - Level 31
  (195, 19500, 281, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Quagsire - Earthquake - Level 36
  (195, 19500, 89, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Quagsire - Rain Dance - Level 41
  (195, 19500, 240, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Quagsire - Mist - Level 48
  (195, 19500, 54, 9, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Quagsire - Haze - Level 48
  (195, 19500, 114, 9, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Quagsire - Muddy Water - Level 53
  (195, 19500, 330, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Quagsire - Focus Punch - TM01
  (195, 19500, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Quagsire - Water Pulse - TM03
  (195, 19500, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Quagsire - Toxic - TM06
  (195, 19500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Quagsire - Hail - TM07
  (195, 19500, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Quagsire - Hidden Power - TM10
  (195, 19500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Quagsire - Ice Beam - TM13
  (195, 19500, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Quagsire - Blizzard - TM14
  (195, 19500, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Quagsire - Hyper Beam - TM15
  (195, 19500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Quagsire - Protect - TM17
  (195, 19500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Quagsire - Rain Dance - TM18
  (195, 19500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Quagsire - Frustration - TM21
  (195, 19500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Quagsire - Iron Tail - TM23
  (195, 19500, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Quagsire - Earthquake - TM26
  (195, 19500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 27),
  -- Quagsire - Return - TM27
  (195, 19500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Quagsire - Dig - TM28
  (195, 19500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 29),
  -- Quagsire - Brick Break - TM31
  (195, 19500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 30),
  -- Quagsire - Double Team - TM32
  (195, 19500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Quagsire - Sludge Bomb - TM36
  (195, 19500, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 32),
  -- Quagsire - Sandstorm - TM37
  (195, 19500, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 33),
  -- Quagsire - Rock Tomb - TM39
  (195, 19500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Quagsire - Facade - TM42
  (195, 19500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Quagsire - Secret Power - TM43
  (195, 19500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Quagsire - Rest - TM44
  (195, 19500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Quagsire - Attract - TM45
  (195, 19500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Quagsire - Focus Blast - TM52
  (195, 19500, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 39),
  -- Quagsire - Fling - TM56
  (195, 19500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 40),
  -- Quagsire - Endure - TM58
  (195, 19500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Quagsire - Giga Impact - TM68
  (195, 19500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 42),
  -- Quagsire - Flash - TM70
  (195, 19500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 43),
  -- Quagsire - Stone Edge - TM71
  (195, 19500, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 44),
  -- Quagsire - Captivate - TM78
  (195, 19500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 45),
  -- Quagsire - Rock Slide - TM80
  (195, 19500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 46),
  -- Quagsire - Sleep Talk - TM82
  (195, 19500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Quagsire - Natural Gift - TM83
  (195, 19500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Quagsire - Swagger - TM87
  (195, 19500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Quagsire - Substitute - TM90
  (195, 19500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Quagsire - Surf - HM03
  (195, 19500, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 51),
  -- Quagsire - Strength - HM04
  (195, 19500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 52),
  -- Quagsire - Defog - HM05
  (195, 19500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 53),
  -- Quagsire - Rock Smash - HM06
  (195, 19500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 54),
  -- Quagsire - Waterfall - HM07
  (195, 19500, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 55),
  -- Quagsire - Ice Punch - Tutor
  (195, 19500, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Quagsire - Snore - Tutor
  (195, 19500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Quagsire - Mud-Slap - Tutor
  (195, 19500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Quagsire - Icy Wind - Tutor
  (195, 19500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Quagsire - Rollout - Tutor
  (195, 19500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Quagsire - Ancient Power - Tutor
  (195, 19500, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Quagsire - Dive - Tutor
  (195, 19500, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Quagsire - Aqua Tail - Tutor
  (195, 19500, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Quagsire - Earth Power - Tutor
  (195, 19500, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Espeon - Tackle - Level 1
  (196, 19600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espeon - Tail Whip - Level 1
  (196, 19600, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espeon - Helping Hand - Level 1
  (196, 19600, 270, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Espeon - Sand Attack - Level 8
  (196, 19600, 28, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Espeon - Confusion - Level 15
  (196, 19600, 93, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Espeon - Quick Attack - Level 22
  (196, 19600, 98, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Espeon - Swift - Level 29
  (196, 19600, 129, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Espeon - Psybeam - Level 36
  (196, 19600, 60, 9, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Espeon - Future Sight - Level 43
  (196, 19600, 248, 9, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Espeon - Last Resort - Level 50
  (196, 19600, 387, 9, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Espeon - Psych Up - Level 57
  (196, 19600, 244, 9, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Espeon - Psychic - Level 64
  (196, 19600, 94, 9, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Espeon - Morning Sun - Level 71
  (196, 19600, 234, 9, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Espeon - Power Swap - Level 78
  (196, 19600, 384, 9, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Espeon - Calm Mind - TM04
  (196, 19600, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 15),
  -- Espeon - Toxic - TM06
  (196, 19600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Espeon - Hidden Power - TM10
  (196, 19600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Espeon - Sunny Day - TM11
  (196, 19600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Espeon - Hyper Beam - TM15
  (196, 19600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Espeon - Light Screen - TM16
  (196, 19600, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 20),
  -- Espeon - Protect - TM17
  (196, 19600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Espeon - Rain Dance - TM18
  (196, 19600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Espeon - Frustration - TM21
  (196, 19600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Espeon - Iron Tail - TM23
  (196, 19600, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 24),
  -- Espeon - Return - TM27
  (196, 19600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Espeon - Dig - TM28
  (196, 19600, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Espeon - Psychic - TM29
  (196, 19600, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 27),
  -- Espeon - Shadow Ball - TM30
  (196, 19600, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 28),
  -- Espeon - Double Team - TM32
  (196, 19600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Espeon - Reflect - TM33
  (196, 19600, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 30),
  -- Espeon - Facade - TM42
  (196, 19600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Espeon - Secret Power - TM43
  (196, 19600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Espeon - Rest - TM44
  (196, 19600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Espeon - Attract - TM45
  (196, 19600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Espeon - Skill Swap - TM48
  (196, 19600, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 35),
  -- Espeon - Endure - TM58
  (196, 19600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Espeon - Giga Impact - TM68
  (196, 19600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Espeon - Flash - TM70
  (196, 19600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Espeon - Psych Up - TM77
  (196, 19600, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 39),
  -- Espeon - Captivate - TM78
  (196, 19600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Espeon - Sleep Talk - TM82
  (196, 19600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Espeon - Natural Gift - TM83
  (196, 19600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Espeon - Dream Eater - TM85
  (196, 19600, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 43),
  -- Espeon - Grass Knot - TM86
  (196, 19600, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 44),
  -- Espeon - Swagger - TM87
  (196, 19600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Espeon - Substitute - TM90
  (196, 19600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Espeon - Trick Room - TM92
  (196, 19600, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 47),
  -- Espeon - Cut - HM01
  (196, 19600, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 48),
  -- Espeon - Swift - Tutor
  (196, 19600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Espeon - Snore - Tutor
  (196, 19600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Espeon - Mud-Slap - Tutor
  (196, 19600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Espeon - Helping Hand - Tutor
  (196, 19600, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Espeon - Trick - Tutor
  (196, 19600, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Espeon - Signal Beam - Tutor
  (196, 19600, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Espeon - Last Resort - Tutor
  (196, 19600, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Espeon - Zen Headbutt - Tutor
  (196, 19600, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Umbreon - Tackle - Level 1
  (197, 19700, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Umbreon - Tail Whip - Level 1
  (197, 19700, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Umbreon - Helping Hand - Level 1
  (197, 19700, 270, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Umbreon - Sand Attack - Level 8
  (197, 19700, 28, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Umbreon - Pursuit - Level 15
  (197, 19700, 228, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Umbreon - Quick Attack - Level 22
  (197, 19700, 98, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Umbreon - Confuse Ray - Level 29
  (197, 19700, 109, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Umbreon - Feint Attack - Level 36
  (197, 19700, 185, 9, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Umbreon - Assurance - Level 43
  (197, 19700, 372, 9, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Umbreon - Last Resort - Level 50
  (197, 19700, 387, 9, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Umbreon - Mean Look - Level 57
  (197, 19700, 212, 9, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Umbreon - Screech - Level 64
  (197, 19700, 103, 9, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Umbreon - Moonlight - Level 71
  (197, 19700, 236, 9, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Umbreon - Guard Swap - Level 78
  (197, 19700, 385, 9, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Umbreon - Toxic - TM06
  (197, 19700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Umbreon - Hidden Power - TM10
  (197, 19700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Umbreon - Sunny Day - TM11
  (197, 19700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Umbreon - Taunt - TM12
  (197, 19700, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 18),
  -- Umbreon - Hyper Beam - TM15
  (197, 19700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Umbreon - Protect - TM17
  (197, 19700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Umbreon - Rain Dance - TM18
  (197, 19700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Umbreon - Frustration - TM21
  (197, 19700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Umbreon - Iron Tail - TM23
  (197, 19700, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Umbreon - Return - TM27
  (197, 19700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Umbreon - Dig - TM28
  (197, 19700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 25),
  -- Umbreon - Psychic - TM29
  (197, 19700, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 26),
  -- Umbreon - Shadow Ball - TM30
  (197, 19700, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Umbreon - Double Team - TM32
  (197, 19700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Umbreon - Torment - TM41
  (197, 19700, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 29),
  -- Umbreon - Facade - TM42
  (197, 19700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Umbreon - Secret Power - TM43
  (197, 19700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Umbreon - Rest - TM44
  (197, 19700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Umbreon - Attract - TM45
  (197, 19700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Umbreon - Snatch - TM49
  (197, 19700, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 34),
  -- Umbreon - Endure - TM58
  (197, 19700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Umbreon - Payback - TM66
  (197, 19700, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 36),
  -- Umbreon - Giga Impact - TM68
  (197, 19700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Umbreon - Flash - TM70
  (197, 19700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Umbreon - Psych Up - TM77
  (197, 19700, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 39),
  -- Umbreon - Captivate - TM78
  (197, 19700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Umbreon - Dark Pulse - TM79
  (197, 19700, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 41),
  -- Umbreon - Sleep Talk - TM82
  (197, 19700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Umbreon - Natural Gift - TM83
  (197, 19700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Umbreon - Dream Eater - TM85
  (197, 19700, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 44),
  -- Umbreon - Swagger - TM87
  (197, 19700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Umbreon - Substitute - TM90
  (197, 19700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Umbreon - Cut - HM01
  (197, 19700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 47),
  -- Umbreon - Swift - Tutor
  (197, 19700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Umbreon - Snore - Tutor
  (197, 19700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Umbreon - Spite - Tutor
  (197, 19700, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Umbreon - Mud-Slap - Tutor
  (197, 19700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Umbreon - Helping Hand - Tutor
  (197, 19700, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Umbreon - Last Resort - Tutor
  (197, 19700, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Umbreon - Sucker Punch - Tutor
  (197, 19700, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Murkrow - Peck - Level 1
  (198, 19800, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Murkrow - Astonish - Level 1
  (198, 19800, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Murkrow - Pursuit - Level 5
  (198, 19800, 228, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Murkrow - Haze - Level 11
  (198, 19800, 114, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Murkrow - Wing Attack - Level 15
  (198, 19800, 17, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Murkrow - Night Shade - Level 21
  (198, 19800, 101, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Murkrow - Assurance - Level 25
  (198, 19800, 372, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Murkrow - Taunt - Level 31
  (198, 19800, 269, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Murkrow - Feint Attack - Level 35
  (198, 19800, 185, 9, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Murkrow - Mean Look - Level 41
  (198, 19800, 212, 9, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Murkrow - Sucker Punch - Level 45
  (198, 19800, 389, 9, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Murkrow - Calm Mind - TM04
  (198, 19800, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 12),
  -- Murkrow - Toxic - TM06
  (198, 19800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Murkrow - Hidden Power - TM10
  (198, 19800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Murkrow - Sunny Day - TM11
  (198, 19800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Murkrow - Taunt - TM12
  (198, 19800, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 16),
  -- Murkrow - Protect - TM17
  (198, 19800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Murkrow - Rain Dance - TM18
  (198, 19800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Murkrow - Frustration - TM21
  (198, 19800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Murkrow - Return - TM27
  (198, 19800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Murkrow - Psychic - TM29
  (198, 19800, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 21),
  -- Murkrow - Shadow Ball - TM30
  (198, 19800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 22),
  -- Murkrow - Double Team - TM32
  (198, 19800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Murkrow - Aerial Ace - TM40
  (198, 19800, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 24),
  -- Murkrow - Torment - TM41
  (198, 19800, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 25),
  -- Murkrow - Facade - TM42
  (198, 19800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Murkrow - Secret Power - TM43
  (198, 19800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Murkrow - Rest - TM44
  (198, 19800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Murkrow - Attract - TM45
  (198, 19800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Murkrow - Thief - TM46
  (198, 19800, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Murkrow - Steel Wing - TM47
  (198, 19800, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 31),
  -- Murkrow - Snatch - TM49
  (198, 19800, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 32),
  -- Murkrow - Roost - TM51
  (198, 19800, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 33),
  -- Murkrow - Endure - TM58
  (198, 19800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Murkrow - Embargo - TM63
  (198, 19800, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 35),
  -- Murkrow - Payback - TM66
  (198, 19800, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 36),
  -- Murkrow - Thunder Wave - TM73
  (198, 19800, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 37),
  -- Murkrow - Psych Up - TM77
  (198, 19800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 38),
  -- Murkrow - Captivate - TM78
  (198, 19800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Murkrow - Dark Pulse - TM79
  (198, 19800, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 40),
  -- Murkrow - Sleep Talk - TM82
  (198, 19800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Murkrow - Natural Gift - TM83
  (198, 19800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Murkrow - Dream Eater - TM85
  (198, 19800, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 43),
  -- Murkrow - Swagger - TM87
  (198, 19800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Murkrow - Pluck - TM88
  (198, 19800, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 45),
  -- Murkrow - Substitute - TM90
  (198, 19800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Murkrow - Fly - HM02
  (198, 19800, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 47),
  -- Murkrow - Defog - HM05
  (198, 19800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 48),
  -- Murkrow - Wing Attack - Egg
  (198, 19800, 17, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Murkrow - Whirlwind - Egg
  (198, 19800, 18, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Murkrow - Drill Peck - Egg
  (198, 19800, 65, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Murkrow - Screech - Egg
  (198, 19800, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Murkrow - Confuse Ray - Egg
  (198, 19800, 109, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Murkrow - Mirror Move - Egg
  (198, 19800, 119, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Murkrow - Sky Attack - Egg
  (198, 19800, 143, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Murkrow - Feint Attack - Egg
  (198, 19800, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Murkrow - Perish Song - Egg
  (198, 19800, 195, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Murkrow - Feather Dance - Egg
  (198, 19800, 297, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Murkrow - Psycho Shift - Egg
  (198, 19800, 375, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Murkrow - Brave Bird - Egg
  (198, 19800, 413, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Murkrow - Swift - Tutor
  (198, 19800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Murkrow - Spite - Tutor
  (198, 19800, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Murkrow - Mud-Slap - Tutor
  (198, 19800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Murkrow - Icy Wind - Tutor
  (198, 19800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Murkrow - Twister - Tutor
  (198, 19800, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Murkrow - Uproar - Tutor
  (198, 19800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Murkrow - Heat Wave - Tutor
  (198, 19800, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Murkrow - Air Cutter - Tutor
  (198, 19800, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Murkrow - Sucker Punch - Tutor
  (198, 19800, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Murkrow - Ominous Wind - Tutor
  (198, 19800, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Slowking - Tackle - Level 1
  (199, 19900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowking - Curse - Level 1
  (199, 19900, 174, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowking - Hidden Power - Level 1
  (199, 19900, 237, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowking - Yawn - Level 1
  (199, 19900, 281, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowking - Power Gem - Level 1
  (199, 19900, 408, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowking - Growl - Level 6
  (199, 19900, 45, 9, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Slowking - Water Gun - Level 11
  (199, 19900, 55, 9, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Slowking - Confusion - Level 15
  (199, 19900, 93, 9, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Slowking - Disable - Level 20
  (199, 19900, 50, 9, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Slowking - Headbutt - Level 25
  (199, 19900, 29, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Slowking - Water Pulse - Level 29
  (199, 19900, 352, 9, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Slowking - Zen Headbutt - Level 34
  (199, 19900, 428, 9, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Slowking - Nasty Plot - Level 39
  (199, 19900, 417, 9, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Slowking - Swagger - Level 43
  (199, 19900, 207, 9, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Slowking - Psychic - Level 48
  (199, 19900, 94, 9, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Slowking - Trump Card - Level 53
  (199, 19900, 376, 9, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Slowking - Psych Up - Level 57
  (199, 19900, 244, 9, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Slowking - Focus Punch - TM01
  (199, 19900, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 18),
  -- Slowking - Water Pulse - TM03
  (199, 19900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 19),
  -- Slowking - Calm Mind - TM04
  (199, 19900, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 20),
  -- Slowking - Toxic - TM06
  (199, 19900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 21),
  -- Slowking - Hail - TM07
  (199, 19900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 22),
  -- Slowking - Hidden Power - TM10
  (199, 19900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 23),
  -- Slowking - Sunny Day - TM11
  (199, 19900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 24),
  -- Slowking - Ice Beam - TM13
  (199, 19900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 25),
  -- Slowking - Blizzard - TM14
  (199, 19900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 26),
  -- Slowking - Hyper Beam - TM15
  (199, 19900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 27),
  -- Slowking - Light Screen - TM16
  (199, 19900, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 28),
  -- Slowking - Protect - TM17
  (199, 19900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 29),
  -- Slowking - Rain Dance - TM18
  (199, 19900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 30),
  -- Slowking - Safeguard - TM20
  (199, 19900, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 31),
  -- Slowking - Frustration - TM21
  (199, 19900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 32),
  -- Slowking - Iron Tail - TM23
  (199, 19900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 33),
  -- Slowking - Earthquake - TM26
  (199, 19900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 34),
  -- Slowking - Return - TM27
  (199, 19900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 35),
  -- Slowking - Dig - TM28
  (199, 19900, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 36),
  -- Slowking - Psychic - TM29
  (199, 19900, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 37),
  -- Slowking - Shadow Ball - TM30
  (199, 19900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 38),
  -- Slowking - Brick Break - TM31
  (199, 19900, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 39),
  -- Slowking - Double Team - TM32
  (199, 19900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 40),
  -- Slowking - Flamethrower - TM35
  (199, 19900, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 41),
  -- Slowking - Fire Blast - TM38
  (199, 19900, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 42),
  -- Slowking - Facade - TM42
  (199, 19900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 43),
  -- Slowking - Secret Power - TM43
  (199, 19900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 44),
  -- Slowking - Rest - TM44
  (199, 19900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 45),
  -- Slowking - Attract - TM45
  (199, 19900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 46),
  -- Slowking - Skill Swap - TM48
  (199, 19900, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 47),
  -- Slowking - Focus Blast - TM52
  (199, 19900, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 48),
  -- Slowking - Brine - TM55
  (199, 19900, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 49),
  -- Slowking - Fling - TM56
  (199, 19900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 50),
  -- Slowking - Endure - TM58
  (199, 19900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 51),
  -- Slowking - Drain Punch - TM60
  (199, 19900, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 52),
  -- Slowking - Recycle - TM67
  (199, 19900, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 53),
  -- Slowking - Giga Impact - TM68
  (199, 19900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 54),
  -- Slowking - Flash - TM70
  (199, 19900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 55),
  -- Slowking - Avalanche - TM72
  (199, 19900, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 56),
  -- Slowking - Thunder Wave - TM73
  (199, 19900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 57),
  -- Slowking - Psych Up - TM77
  (199, 19900, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 58),
  -- Slowking - Captivate - TM78
  (199, 19900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 59),
  -- Slowking - Sleep Talk - TM82
  (199, 19900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 60),
  -- Slowking - Natural Gift - TM83
  (199, 19900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 61),
  -- Slowking - Dream Eater - TM85
  (199, 19900, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 62),
  -- Slowking - Grass Knot - TM86
  (199, 19900, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 63),
  -- Slowking - Swagger - TM87
  (199, 19900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 64),
  -- Slowking - Substitute - TM90
  (199, 19900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 65),
  -- Slowking - Trick Room - TM92
  (199, 19900, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 66),
  -- Slowking - Surf - HM03
  (199, 19900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 67),
  -- Slowking - Strength - HM04
  (199, 19900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 68),
  -- Slowking - Defog - HM05
  (199, 19900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 69),
  -- Slowking - Rock Smash - HM06
  (199, 19900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 70),
  -- Slowking - Ice Punch - Tutor
  (199, 19900, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Slowking - Swift - Tutor
  (199, 19900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Slowking - Snore - Tutor
  (199, 19900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Slowking - Mud-Slap - Tutor
  (199, 19900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Slowking - Icy Wind - Tutor
  (199, 19900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Slowking - Fury Cutter - Tutor
  (199, 19900, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Slowking - Trick - Tutor
  (199, 19900, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Slowking - Dive - Tutor
  (199, 19900, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Slowking - Signal Beam - Tutor
  (199, 19900, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Slowking - Iron Defense - Tutor
  (199, 19900, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Slowking - Aqua Tail - Tutor
  (199, 19900, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Slowking - Zen Headbutt - Tutor
  (199, 19900, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Misdreavus - Growl - Level 1
  (200, 20000, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Misdreavus - Psywave - Level 1
  (200, 20000, 149, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Misdreavus - Spite - Level 5
  (200, 20000, 180, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Misdreavus - Astonish - Level 10
  (200, 20000, 310, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Misdreavus - Confuse Ray - Level 14
  (200, 20000, 109, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Misdreavus - Mean Look - Level 19
  (200, 20000, 212, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Misdreavus - Psybeam - Level 23
  (200, 20000, 60, 9, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Misdreavus - Pain Split - Level 28
  (200, 20000, 220, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Misdreavus - Payback - Level 32
  (200, 20000, 371, 9, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Misdreavus - Shadow Ball - Level 37
  (200, 20000, 247, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Misdreavus - Perish Song - Level 41
  (200, 20000, 195, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Misdreavus - Grudge - Level 46
  (200, 20000, 288, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Misdreavus - Power Gem - Level 50
  (200, 20000, 408, 9, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Misdreavus - Calm Mind - TM04
  (200, 20000, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Misdreavus - Toxic - TM06
  (200, 20000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Misdreavus - Hidden Power - TM10
  (200, 20000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Misdreavus - Sunny Day - TM11
  (200, 20000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Misdreavus - Taunt - TM12
  (200, 20000, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 18),
  -- Misdreavus - Protect - TM17
  (200, 20000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Misdreavus - Rain Dance - TM18
  (200, 20000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Misdreavus - Frustration - TM21
  (200, 20000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Misdreavus - Thunderbolt - TM24
  (200, 20000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 22),
  -- Misdreavus - Thunder - TM25
  (200, 20000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 23),
  -- Misdreavus - Return - TM27
  (200, 20000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Misdreavus - Psychic - TM29
  (200, 20000, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 25),
  -- Misdreavus - Shadow Ball - TM30
  (200, 20000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Misdreavus - Double Team - TM32
  (200, 20000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Misdreavus - Shock Wave - TM34
  (200, 20000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 28),
  -- Misdreavus - Aerial Ace - TM40
  (200, 20000, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 29),
  -- Misdreavus - Torment - TM41
  (200, 20000, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 30),
  -- Misdreavus - Facade - TM42
  (200, 20000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Misdreavus - Secret Power - TM43
  (200, 20000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Misdreavus - Rest - TM44
  (200, 20000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Misdreavus - Attract - TM45
  (200, 20000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Misdreavus - Thief - TM46
  (200, 20000, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Misdreavus - Skill Swap - TM48
  (200, 20000, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 36),
  -- Misdreavus - Snatch - TM49
  (200, 20000, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 37),
  -- Misdreavus - Charge Beam - TM57
  (200, 20000, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 38),
  -- Misdreavus - Endure - TM58
  (200, 20000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Misdreavus - Will-O-Wisp - TM61
  (200, 20000, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 40),
  -- Misdreavus - Embargo - TM63
  (200, 20000, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 41),
  -- Misdreavus - Payback - TM66
  (200, 20000, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 42),
  -- Misdreavus - Flash - TM70
  (200, 20000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 43),
  -- Misdreavus - Thunder Wave - TM73
  (200, 20000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 44),
  -- Misdreavus - Psych Up - TM77
  (200, 20000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 45),
  -- Misdreavus - Captivate - TM78
  (200, 20000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Misdreavus - Dark Pulse - TM79
  (200, 20000, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 47),
  -- Misdreavus - Sleep Talk - TM82
  (200, 20000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Misdreavus - Natural Gift - TM83
  (200, 20000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Misdreavus - Dream Eater - TM85
  (200, 20000, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 50),
  -- Misdreavus - Swagger - TM87
  (200, 20000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Misdreavus - Substitute - TM90
  (200, 20000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Misdreavus - Trick Room - TM92
  (200, 20000, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 53),
  -- Misdreavus - Screech - Egg
  (200, 20000, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Misdreavus - Curse - Egg
  (200, 20000, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Misdreavus - Spite - Egg
  (200, 20000, 180, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Misdreavus - Destiny Bond - Egg
  (200, 20000, 194, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Misdreavus - Psych Up - Egg
  (200, 20000, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Misdreavus - Memento - Egg
  (200, 20000, 262, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Misdreavus - Imprison - Egg
  (200, 20000, 286, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Misdreavus - Sucker Punch - Egg
  (200, 20000, 389, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Misdreavus - Shadow Sneak - Egg
  (200, 20000, 425, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Misdreavus - Ominous Wind - Egg
  (200, 20000, 466, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Misdreavus - Swift - Tutor
  (200, 20000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Misdreavus - Snore - Tutor
  (200, 20000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Misdreavus - Spite - Tutor
  (200, 20000, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Misdreavus - Icy Wind - Tutor
  (200, 20000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Misdreavus - Uproar - Tutor
  (200, 20000, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Misdreavus - Trick - Tutor
  (200, 20000, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Misdreavus - Sucker Punch - Tutor
  (200, 20000, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Misdreavus - Ominous Wind - Tutor
  (200, 20000, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Unown - Hidden Power - Level 1
  (201, 20100, 237, 9, NULL, 1, 1, NULL, NULL, NULL, 1);
