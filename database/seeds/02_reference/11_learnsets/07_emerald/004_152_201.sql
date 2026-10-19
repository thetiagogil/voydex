-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation III Pokémon learnset raw pages, using Emerald
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Emerald Pokedex learnset pages, Serebii Emerald Move
-- Tutor pages, and PokemonDB Generation 3 Emerald learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Emerald
-- Pokémon: #152-#201
-- Rows: 2440
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, and prior-evolution sections are intentionally excluded from
-- this Emerald seed.
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
  (152, 15200, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chikorita - Growl - Level 1
  (152, 15200, 45, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chikorita - Razor Leaf - Level 8
  (152, 15200, 75, 7, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Chikorita - Reflect - Level 12
  (152, 15200, 115, 7, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Chikorita - Poison Powder - Level 15
  (152, 15200, 77, 7, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Chikorita - Synthesis - Level 22
  (152, 15200, 235, 7, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Chikorita - Body Slam - Level 29
  (152, 15200, 34, 7, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Chikorita - Light Screen - Level 36
  (152, 15200, 113, 7, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Chikorita - Safeguard - Level 43
  (152, 15200, 219, 7, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Chikorita - Solar Beam - Level 50
  (152, 15200, 76, 7, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Chikorita - Toxic - TM06
  (152, 15200, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 11),
  -- Chikorita - Bullet Seed - TM09
  (152, 15200, 331, 7, NULL, 2, NULL, NULL, 7002009, NULL, 12),
  -- Chikorita - Hidden Power - TM10
  (152, 15200, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 13),
  -- Chikorita - Sunny Day - TM11
  (152, 15200, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 14),
  -- Chikorita - Light Screen - TM16
  (152, 15200, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 15),
  -- Chikorita - Protect - TM17
  (152, 15200, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 16),
  -- Chikorita - Giga Drain - TM19
  (152, 15200, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 17),
  -- Chikorita - Safeguard - TM20
  (152, 15200, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 18),
  -- Chikorita - Frustration - TM21
  (152, 15200, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 19),
  -- Chikorita - Solar Beam - TM22
  (152, 15200, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 20),
  -- Chikorita - Iron Tail - TM23
  (152, 15200, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 21),
  -- Chikorita - Return - TM27
  (152, 15200, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 22),
  -- Chikorita - Double Team - TM32
  (152, 15200, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 23),
  -- Chikorita - Reflect - TM33
  (152, 15200, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 24),
  -- Chikorita - Facade - TM42
  (152, 15200, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 25),
  -- Chikorita - Secret Power - TM43
  (152, 15200, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 26),
  -- Chikorita - Rest - TM44
  (152, 15200, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 27),
  -- Chikorita - Attract - TM45
  (152, 15200, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 28),
  -- Chikorita - Cut - HM01
  (152, 15200, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 29),
  -- Chikorita - Flash - HM05
  (152, 15200, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 30),
  -- Chikorita - Ancient Power - Egg Move
  (152, 15200, 246, 7, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Chikorita - Counter - Egg Move
  (152, 15200, 68, 7, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Chikorita - Flail - Egg Move
  (152, 15200, 175, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Chikorita - Grass Whistle - Egg Move
  (152, 15200, 320, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Chikorita - Ingrain - Egg Move
  (152, 15200, 275, 7, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Chikorita - Leech Seed - Egg Move
  (152, 15200, 73, 7, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Chikorita - Nature Power - Egg Move
  (152, 15200, 267, 7, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Chikorita - Vine Whip - Egg Move
  (152, 15200, 22, 7, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Chikorita - Body Slam - Move Tutor
  (152, 15200, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Chikorita - Counter - Move Tutor
  (152, 15200, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Chikorita - Double-Edge - Move Tutor
  (152, 15200, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Chikorita - Endure - Move Tutor
  (152, 15200, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Chikorita - Mimic - Move Tutor
  (152, 15200, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Chikorita - Mud-Slap - Move Tutor
  (152, 15200, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Chikorita - Sleep Talk - Move Tutor
  (152, 15200, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Chikorita - Snore - Move Tutor
  (152, 15200, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Chikorita - Substitute - Move Tutor
  (152, 15200, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Chikorita - Swagger - Move Tutor
  (152, 15200, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Chikorita - Swords Dance - Move Tutor
  (152, 15200, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Bayleef - Tackle - Level 1
  (153, 15300, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bayleef - Growl - Level 1
  (153, 15300, 45, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bayleef - Razor Leaf - Level 1
  (153, 15300, 75, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bayleef - Reflect - Level 1
  (153, 15300, 115, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bayleef - Razor Leaf - Level 8
  (153, 15300, 75, 7, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Bayleef - Reflect - Level 12
  (153, 15300, 115, 7, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Bayleef - Poison Powder - Level 15
  (153, 15300, 77, 7, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bayleef - Synthesis - Level 23
  (153, 15300, 235, 7, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Bayleef - Body Slam - Level 31
  (153, 15300, 34, 7, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Bayleef - Light Screen - Level 39
  (153, 15300, 113, 7, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Bayleef - Safeguard - Level 47
  (153, 15300, 219, 7, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Bayleef - Solar Beam - Level 55
  (153, 15300, 76, 7, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Bayleef - Toxic - TM06
  (153, 15300, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 13),
  -- Bayleef - Bullet Seed - TM09
  (153, 15300, 331, 7, NULL, 2, NULL, NULL, 7002009, NULL, 14),
  -- Bayleef - Hidden Power - TM10
  (153, 15300, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 15),
  -- Bayleef - Sunny Day - TM11
  (153, 15300, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 16),
  -- Bayleef - Light Screen - TM16
  (153, 15300, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 17),
  -- Bayleef - Protect - TM17
  (153, 15300, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 18),
  -- Bayleef - Giga Drain - TM19
  (153, 15300, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 19),
  -- Bayleef - Safeguard - TM20
  (153, 15300, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 20),
  -- Bayleef - Frustration - TM21
  (153, 15300, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 21),
  -- Bayleef - Solar Beam - TM22
  (153, 15300, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 22),
  -- Bayleef - Iron Tail - TM23
  (153, 15300, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 23),
  -- Bayleef - Return - TM27
  (153, 15300, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 24),
  -- Bayleef - Double Team - TM32
  (153, 15300, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 25),
  -- Bayleef - Reflect - TM33
  (153, 15300, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 26),
  -- Bayleef - Facade - TM42
  (153, 15300, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 27),
  -- Bayleef - Secret Power - TM43
  (153, 15300, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 28),
  -- Bayleef - Rest - TM44
  (153, 15300, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 29),
  -- Bayleef - Attract - TM45
  (153, 15300, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 30),
  -- Bayleef - Cut - HM01
  (153, 15300, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 31),
  -- Bayleef - Strength - HM04
  (153, 15300, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 32),
  -- Bayleef - Flash - HM05
  (153, 15300, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 33),
  -- Bayleef - Rock Smash - HM06
  (153, 15300, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 34),
  -- Bayleef - Body Slam - Move Tutor
  (153, 15300, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Bayleef - Counter - Move Tutor
  (153, 15300, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Bayleef - Double-Edge - Move Tutor
  (153, 15300, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Bayleef - Endure - Move Tutor
  (153, 15300, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Bayleef - Fury Cutter - Move Tutor
  (153, 15300, 210, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Bayleef - Mimic - Move Tutor
  (153, 15300, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Bayleef - Mud-Slap - Move Tutor
  (153, 15300, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Bayleef - Sleep Talk - Move Tutor
  (153, 15300, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Bayleef - Snore - Move Tutor
  (153, 15300, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Bayleef - Substitute - Move Tutor
  (153, 15300, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Bayleef - Swagger - Move Tutor
  (153, 15300, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Bayleef - Swords Dance - Move Tutor
  (153, 15300, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Meganium - Tackle - Level 1
  (154, 15400, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meganium - Growl - Level 1
  (154, 15400, 45, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meganium - Razor Leaf - Level 1
  (154, 15400, 75, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meganium - Reflect - Level 1
  (154, 15400, 115, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meganium - Razor Leaf - Level 8
  (154, 15400, 75, 7, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Meganium - Reflect - Level 12
  (154, 15400, 115, 7, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Meganium - Poison Powder - Level 15
  (154, 15400, 77, 7, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Meganium - Synthesis - Level 23
  (154, 15400, 235, 7, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Meganium - Body Slam - Level 31
  (154, 15400, 34, 7, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Meganium - Light Screen - Level 41
  (154, 15400, 113, 7, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Meganium - Safeguard - Level 51
  (154, 15400, 219, 7, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Meganium - Solar Beam - Level 61
  (154, 15400, 76, 7, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Meganium - Toxic - TM06
  (154, 15400, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 13),
  -- Meganium - Bullet Seed - TM09
  (154, 15400, 331, 7, NULL, 2, NULL, NULL, 7002009, NULL, 14),
  -- Meganium - Hidden Power - TM10
  (154, 15400, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 15),
  -- Meganium - Sunny Day - TM11
  (154, 15400, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 16),
  -- Meganium - Hyper Beam - TM15
  (154, 15400, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 17),
  -- Meganium - Light Screen - TM16
  (154, 15400, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 18),
  -- Meganium - Protect - TM17
  (154, 15400, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 19),
  -- Meganium - Giga Drain - TM19
  (154, 15400, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 20),
  -- Meganium - Safeguard - TM20
  (154, 15400, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 21),
  -- Meganium - Frustration - TM21
  (154, 15400, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 22),
  -- Meganium - Solar Beam - TM22
  (154, 15400, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 23),
  -- Meganium - Iron Tail - TM23
  (154, 15400, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 24),
  -- Meganium - Earthquake - TM26
  (154, 15400, 89, 7, NULL, 2, NULL, NULL, 7002026, NULL, 25),
  -- Meganium - Return - TM27
  (154, 15400, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 26),
  -- Meganium - Double Team - TM32
  (154, 15400, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 27),
  -- Meganium - Reflect - TM33
  (154, 15400, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 28),
  -- Meganium - Facade - TM42
  (154, 15400, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 29),
  -- Meganium - Secret Power - TM43
  (154, 15400, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 30),
  -- Meganium - Rest - TM44
  (154, 15400, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 31),
  -- Meganium - Attract - TM45
  (154, 15400, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 32),
  -- Meganium - Cut - HM01
  (154, 15400, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 33),
  -- Meganium - Strength - HM04
  (154, 15400, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 34),
  -- Meganium - Flash - HM05
  (154, 15400, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 35),
  -- Meganium - Rock Smash - HM06
  (154, 15400, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 36),
  -- Meganium - Body Slam - Move Tutor
  (154, 15400, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Meganium - Counter - Move Tutor
  (154, 15400, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Meganium - Double-Edge - Move Tutor
  (154, 15400, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Meganium - Endure - Move Tutor
  (154, 15400, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Meganium - Fury Cutter - Move Tutor
  (154, 15400, 210, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Meganium - Mimic - Move Tutor
  (154, 15400, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Meganium - Mud-Slap - Move Tutor
  (154, 15400, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Meganium - Sleep Talk - Move Tutor
  (154, 15400, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Meganium - Snore - Move Tutor
  (154, 15400, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Meganium - Substitute - Move Tutor
  (154, 15400, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Meganium - Swagger - Move Tutor
  (154, 15400, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Meganium - Swords Dance - Move Tutor
  (154, 15400, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Cyndaquil - Tackle - Level 1
  (155, 15500, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cyndaquil - Leer - Level 1
  (155, 15500, 43, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cyndaquil - Smokescreen - Level 6
  (155, 15500, 108, 7, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cyndaquil - Ember - Level 12
  (155, 15500, 52, 7, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Cyndaquil - Quick Attack - Level 19
  (155, 15500, 98, 7, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Cyndaquil - Flame Wheel - Level 27
  (155, 15500, 172, 7, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Cyndaquil - Swift - Level 36
  (155, 15500, 129, 7, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Cyndaquil - Flamethrower - Level 46
  (155, 15500, 53, 7, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Cyndaquil - Toxic - TM06
  (155, 15500, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 9),
  -- Cyndaquil - Hidden Power - TM10
  (155, 15500, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 10),
  -- Cyndaquil - Sunny Day - TM11
  (155, 15500, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 11),
  -- Cyndaquil - Protect - TM17
  (155, 15500, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 12),
  -- Cyndaquil - Frustration - TM21
  (155, 15500, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 13),
  -- Cyndaquil - Return - TM27
  (155, 15500, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 14),
  -- Cyndaquil - Dig - TM28
  (155, 15500, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 15),
  -- Cyndaquil - Double Team - TM32
  (155, 15500, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 16),
  -- Cyndaquil - Flamethrower - TM35
  (155, 15500, 53, 7, NULL, 2, NULL, NULL, 7002035, NULL, 17),
  -- Cyndaquil - Fire Blast - TM38
  (155, 15500, 126, 7, NULL, 2, NULL, NULL, 7002038, NULL, 18),
  -- Cyndaquil - Aerial Ace - TM40
  (155, 15500, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 19),
  -- Cyndaquil - Facade - TM42
  (155, 15500, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 20),
  -- Cyndaquil - Secret Power - TM43
  (155, 15500, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 21),
  -- Cyndaquil - Rest - TM44
  (155, 15500, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 22),
  -- Cyndaquil - Attract - TM45
  (155, 15500, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 23),
  -- Cyndaquil - Overheat - TM50
  (155, 15500, 315, 7, NULL, 2, NULL, NULL, 7002050, NULL, 24),
  -- Cyndaquil - Cut - HM01
  (155, 15500, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 25),
  -- Cyndaquil - Covet - Egg Move
  (155, 15500, 343, 7, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Cyndaquil - Crush Claw - Egg Move
  (155, 15500, 306, 7, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Cyndaquil - Foresight - Egg Move
  (155, 15500, 193, 7, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Cyndaquil - Fury Swipes - Egg Move
  (155, 15500, 154, 7, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Cyndaquil - Howl - Egg Move
  (155, 15500, 336, 7, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Cyndaquil - Quick Attack - Egg Move
  (155, 15500, 98, 7, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Cyndaquil - Reversal - Egg Move
  (155, 15500, 179, 7, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Cyndaquil - Thrash - Egg Move
  (155, 15500, 37, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Cyndaquil - Body Slam - Move Tutor
  (155, 15500, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Cyndaquil - Defense Curl - Move Tutor
  (155, 15500, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Cyndaquil - Double-Edge - Move Tutor
  (155, 15500, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Cyndaquil - Endure - Move Tutor
  (155, 15500, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Cyndaquil - Mimic - Move Tutor
  (155, 15500, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Cyndaquil - Mud-Slap - Move Tutor
  (155, 15500, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Cyndaquil - Rollout - Move Tutor
  (155, 15500, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Cyndaquil - Sleep Talk - Move Tutor
  (155, 15500, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Cyndaquil - Snore - Move Tutor
  (155, 15500, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Cyndaquil - Substitute - Move Tutor
  (155, 15500, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Cyndaquil - Swagger - Move Tutor
  (155, 15500, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Cyndaquil - Swift - Move Tutor
  (155, 15500, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Quilava - Tackle - Level 1
  (156, 15600, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quilava - Leer - Level 1
  (156, 15600, 43, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quilava - Smokescreen - Level 1
  (156, 15600, 108, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quilava - Smokescreen - Level 6
  (156, 15600, 108, 7, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Quilava - Ember - Level 12
  (156, 15600, 52, 7, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Quilava - Quick Attack - Level 21
  (156, 15600, 98, 7, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Quilava - Flame Wheel - Level 31
  (156, 15600, 172, 7, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Quilava - Swift - Level 42
  (156, 15600, 129, 7, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Quilava - Flamethrower - Level 54
  (156, 15600, 53, 7, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Quilava - Focus Punch - TM01
  (156, 15600, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 10),
  -- Quilava - Roar - TM05
  (156, 15600, 46, 7, NULL, 2, NULL, NULL, 7002005, NULL, 11),
  -- Quilava - Toxic - TM06
  (156, 15600, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Quilava - Hidden Power - TM10
  (156, 15600, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 13),
  -- Quilava - Sunny Day - TM11
  (156, 15600, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 14),
  -- Quilava - Protect - TM17
  (156, 15600, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 15),
  -- Quilava - Frustration - TM21
  (156, 15600, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 16),
  -- Quilava - Return - TM27
  (156, 15600, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 17),
  -- Quilava - Dig - TM28
  (156, 15600, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 18),
  -- Quilava - Brick Break - TM31
  (156, 15600, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 19),
  -- Quilava - Double Team - TM32
  (156, 15600, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 20),
  -- Quilava - Flamethrower - TM35
  (156, 15600, 53, 7, NULL, 2, NULL, NULL, 7002035, NULL, 21),
  -- Quilava - Fire Blast - TM38
  (156, 15600, 126, 7, NULL, 2, NULL, NULL, 7002038, NULL, 22),
  -- Quilava - Aerial Ace - TM40
  (156, 15600, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 23),
  -- Quilava - Facade - TM42
  (156, 15600, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 24),
  -- Quilava - Secret Power - TM43
  (156, 15600, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 25),
  -- Quilava - Rest - TM44
  (156, 15600, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 26),
  -- Quilava - Attract - TM45
  (156, 15600, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 27),
  -- Quilava - Overheat - TM50
  (156, 15600, 315, 7, NULL, 2, NULL, NULL, 7002050, NULL, 28),
  -- Quilava - Cut - HM01
  (156, 15600, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 29),
  -- Quilava - Strength - HM04
  (156, 15600, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 30),
  -- Quilava - Rock Smash - HM06
  (156, 15600, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 31),
  -- Quilava - Body Slam - Move Tutor
  (156, 15600, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 32),
  -- Quilava - Defense Curl - Move Tutor
  (156, 15600, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Quilava - Double-Edge - Move Tutor
  (156, 15600, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Quilava - Endure - Move Tutor
  (156, 15600, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Quilava - Fury Cutter - Move Tutor
  (156, 15600, 210, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Quilava - Mimic - Move Tutor
  (156, 15600, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Quilava - Mud-Slap - Move Tutor
  (156, 15600, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Quilava - Rollout - Move Tutor
  (156, 15600, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Quilava - Sleep Talk - Move Tutor
  (156, 15600, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Quilava - Snore - Move Tutor
  (156, 15600, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Quilava - Substitute - Move Tutor
  (156, 15600, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Quilava - Swagger - Move Tutor
  (156, 15600, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Quilava - Swift - Move Tutor
  (156, 15600, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Typhlosion - Tackle - Level 1
  (157, 15700, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Typhlosion - Leer - Level 1
  (157, 15700, 43, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Typhlosion - Smokescreen - Level 1
  (157, 15700, 108, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Typhlosion - Ember - Level 1
  (157, 15700, 52, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Typhlosion - Smokescreen - Level 6
  (157, 15700, 108, 7, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Typhlosion - Ember - Level 12
  (157, 15700, 52, 7, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Typhlosion - Quick Attack - Level 21
  (157, 15700, 98, 7, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Typhlosion - Flame Wheel - Level 31
  (157, 15700, 172, 7, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Typhlosion - Swift - Level 45
  (157, 15700, 129, 7, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Typhlosion - Flamethrower - Level 60
  (157, 15700, 53, 7, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Typhlosion - Focus Punch - TM01
  (157, 15700, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 11),
  -- Typhlosion - Roar - TM05
  (157, 15700, 46, 7, NULL, 2, NULL, NULL, 7002005, NULL, 12),
  -- Typhlosion - Toxic - TM06
  (157, 15700, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 13),
  -- Typhlosion - Hidden Power - TM10
  (157, 15700, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 14),
  -- Typhlosion - Sunny Day - TM11
  (157, 15700, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 15),
  -- Typhlosion - Hyper Beam - TM15
  (157, 15700, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 16),
  -- Typhlosion - Protect - TM17
  (157, 15700, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 17),
  -- Typhlosion - Frustration - TM21
  (157, 15700, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 18),
  -- Typhlosion - Earthquake - TM26
  (157, 15700, 89, 7, NULL, 2, NULL, NULL, 7002026, NULL, 19),
  -- Typhlosion - Return - TM27
  (157, 15700, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 20),
  -- Typhlosion - Dig - TM28
  (157, 15700, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 21),
  -- Typhlosion - Brick Break - TM31
  (157, 15700, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 22),
  -- Typhlosion - Double Team - TM32
  (157, 15700, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 23),
  -- Typhlosion - Flamethrower - TM35
  (157, 15700, 53, 7, NULL, 2, NULL, NULL, 7002035, NULL, 24),
  -- Typhlosion - Fire Blast - TM38
  (157, 15700, 126, 7, NULL, 2, NULL, NULL, 7002038, NULL, 25),
  -- Typhlosion - Aerial Ace - TM40
  (157, 15700, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 26),
  -- Typhlosion - Facade - TM42
  (157, 15700, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 27),
  -- Typhlosion - Secret Power - TM43
  (157, 15700, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 28),
  -- Typhlosion - Rest - TM44
  (157, 15700, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 29),
  -- Typhlosion - Attract - TM45
  (157, 15700, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 30),
  -- Typhlosion - Overheat - TM50
  (157, 15700, 315, 7, NULL, 2, NULL, NULL, 7002050, NULL, 31),
  -- Typhlosion - Cut - HM01
  (157, 15700, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 32),
  -- Typhlosion - Strength - HM04
  (157, 15700, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 33),
  -- Typhlosion - Rock Smash - HM06
  (157, 15700, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 34),
  -- Typhlosion - Body Slam - Move Tutor
  (157, 15700, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Typhlosion - Counter - Move Tutor
  (157, 15700, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Typhlosion - Defense Curl - Move Tutor
  (157, 15700, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Typhlosion - Double-Edge - Move Tutor
  (157, 15700, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Typhlosion - Dynamic Punch - Move Tutor
  (157, 15700, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Typhlosion - Endure - Move Tutor
  (157, 15700, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Typhlosion - Fire Punch - Move Tutor
  (157, 15700, 7, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Typhlosion - Fury Cutter - Move Tutor
  (157, 15700, 210, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Typhlosion - Mega Kick - Move Tutor
  (157, 15700, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Typhlosion - Mega Punch - Move Tutor
  (157, 15700, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Typhlosion - Mimic - Move Tutor
  (157, 15700, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Typhlosion - Mud-Slap - Move Tutor
  (157, 15700, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Typhlosion - Rock Slide - Move Tutor
  (157, 15700, 157, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Typhlosion - Rollout - Move Tutor
  (157, 15700, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Typhlosion - Seismic Toss - Move Tutor
  (157, 15700, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Typhlosion - Sleep Talk - Move Tutor
  (157, 15700, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Typhlosion - Snore - Move Tutor
  (157, 15700, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Typhlosion - Substitute - Move Tutor
  (157, 15700, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Typhlosion - Swagger - Move Tutor
  (157, 15700, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Typhlosion - Swift - Move Tutor
  (157, 15700, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Typhlosion - Thunder Punch - Move Tutor
  (157, 15700, 9, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Totodile - Scratch - Level 1
  (158, 15800, 10, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Totodile - Leer - Level 1
  (158, 15800, 43, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Totodile - Rage - Level 7
  (158, 15800, 99, 7, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Totodile - Water Gun - Level 13
  (158, 15800, 55, 7, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Totodile - Bite - Level 20
  (158, 15800, 44, 7, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Totodile - Scary Face - Level 27
  (158, 15800, 184, 7, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Totodile - Slash - Level 35
  (158, 15800, 163, 7, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Totodile - Screech - Level 43
  (158, 15800, 103, 7, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Totodile - Hydro Pump - Level 52
  (158, 15800, 56, 7, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Totodile - Focus Punch - TM01
  (158, 15800, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 10),
  -- Totodile - Water Pulse - TM03
  (158, 15800, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 11),
  -- Totodile - Toxic - TM06
  (158, 15800, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Totodile - Hail - TM07
  (158, 15800, 258, 7, NULL, 2, NULL, NULL, 7002007, NULL, 13),
  -- Totodile - Hidden Power - TM10
  (158, 15800, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 14),
  -- Totodile - Ice Beam - TM13
  (158, 15800, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 15),
  -- Totodile - Blizzard - TM14
  (158, 15800, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 16),
  -- Totodile - Protect - TM17
  (158, 15800, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 17),
  -- Totodile - Rain Dance - TM18
  (158, 15800, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 18),
  -- Totodile - Frustration - TM21
  (158, 15800, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 19),
  -- Totodile - Iron Tail - TM23
  (158, 15800, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 20),
  -- Totodile - Return - TM27
  (158, 15800, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 21),
  -- Totodile - Dig - TM28
  (158, 15800, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 22),
  -- Totodile - Brick Break - TM31
  (158, 15800, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 23),
  -- Totodile - Double Team - TM32
  (158, 15800, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 24),
  -- Totodile - Aerial Ace - TM40
  (158, 15800, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 25),
  -- Totodile - Facade - TM42
  (158, 15800, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 26),
  -- Totodile - Secret Power - TM43
  (158, 15800, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 27),
  -- Totodile - Rest - TM44
  (158, 15800, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 28),
  -- Totodile - Attract - TM45
  (158, 15800, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 29),
  -- Totodile - Cut - HM01
  (158, 15800, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 30),
  -- Totodile - Surf - HM03
  (158, 15800, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 31),
  -- Totodile - Waterfall - HM07
  (158, 15800, 127, 7, NULL, 3, NULL, NULL, 7003007, NULL, 32),
  -- Totodile - Dive - HM08
  (158, 15800, 291, 7, NULL, 3, NULL, NULL, 7003008, NULL, 33),
  -- Totodile - Ancient Power - Egg Move
  (158, 15800, 246, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Totodile - Crunch - Egg Move
  (158, 15800, 242, 7, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Totodile - Dragon Claw - Egg Move
  (158, 15800, 337, 7, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Totodile - Hydro Pump - Egg Move
  (158, 15800, 56, 7, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Totodile - Mud Sport - Egg Move
  (158, 15800, 300, 7, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Totodile - Rock Slide - Egg Move
  (158, 15800, 157, 7, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Totodile - Thrash - Egg Move
  (158, 15800, 37, 7, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Totodile - Water Sport - Egg Move
  (158, 15800, 346, 7, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Totodile - Body Slam - Move Tutor
  (158, 15800, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Totodile - Counter - Move Tutor
  (158, 15800, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Totodile - Double-Edge - Move Tutor
  (158, 15800, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Totodile - Dynamic Punch - Move Tutor
  (158, 15800, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Totodile - Endure - Move Tutor
  (158, 15800, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Totodile - Ice Punch - Move Tutor
  (158, 15800, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Totodile - Icy Wind - Move Tutor
  (158, 15800, 196, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Totodile - Mega Kick - Move Tutor
  (158, 15800, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Totodile - Mega Punch - Move Tutor
  (158, 15800, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Totodile - Mimic - Move Tutor
  (158, 15800, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Totodile - Mud-Slap - Move Tutor
  (158, 15800, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Totodile - Rock Slide - Move Tutor
  (158, 15800, 157, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Totodile - Seismic Toss - Move Tutor
  (158, 15800, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Totodile - Sleep Talk - Move Tutor
  (158, 15800, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Totodile - Snore - Move Tutor
  (158, 15800, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Totodile - Substitute - Move Tutor
  (158, 15800, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Totodile - Swagger - Move Tutor
  (158, 15800, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 58),
  -- Totodile - Swords Dance - Move Tutor
  (158, 15800, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 59),
  -- Croconaw - Scratch - Level 1
  (159, 15900, 10, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croconaw - Leer - Level 1
  (159, 15900, 43, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Croconaw - Rage - Level 1
  (159, 15900, 99, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Croconaw - Rage - Level 7
  (159, 15900, 99, 7, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Croconaw - Water Gun - Level 13
  (159, 15900, 55, 7, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Croconaw - Bite - Level 21
  (159, 15900, 44, 7, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Croconaw - Scary Face - Level 28
  (159, 15900, 184, 7, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Croconaw - Slash - Level 37
  (159, 15900, 163, 7, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Croconaw - Screech - Level 45
  (159, 15900, 103, 7, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Croconaw - Hydro Pump - Level 55
  (159, 15900, 56, 7, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Croconaw - Focus Punch - TM01
  (159, 15900, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 11),
  -- Croconaw - Water Pulse - TM03
  (159, 15900, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 12),
  -- Croconaw - Roar - TM05
  (159, 15900, 46, 7, NULL, 2, NULL, NULL, 7002005, NULL, 13),
  -- Croconaw - Toxic - TM06
  (159, 15900, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 14),
  -- Croconaw - Hail - TM07
  (159, 15900, 258, 7, NULL, 2, NULL, NULL, 7002007, NULL, 15),
  -- Croconaw - Hidden Power - TM10
  (159, 15900, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 16),
  -- Croconaw - Ice Beam - TM13
  (159, 15900, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 17),
  -- Croconaw - Blizzard - TM14
  (159, 15900, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 18),
  -- Croconaw - Protect - TM17
  (159, 15900, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 19),
  -- Croconaw - Rain Dance - TM18
  (159, 15900, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 20),
  -- Croconaw - Frustration - TM21
  (159, 15900, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 21),
  -- Croconaw - Iron Tail - TM23
  (159, 15900, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 22),
  -- Croconaw - Return - TM27
  (159, 15900, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 23),
  -- Croconaw - Dig - TM28
  (159, 15900, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 24),
  -- Croconaw - Brick Break - TM31
  (159, 15900, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 25),
  -- Croconaw - Double Team - TM32
  (159, 15900, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 26),
  -- Croconaw - Aerial Ace - TM40
  (159, 15900, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 27),
  -- Croconaw - Facade - TM42
  (159, 15900, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 28),
  -- Croconaw - Secret Power - TM43
  (159, 15900, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 29),
  -- Croconaw - Rest - TM44
  (159, 15900, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 30),
  -- Croconaw - Attract - TM45
  (159, 15900, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 31),
  -- Croconaw - Cut - HM01
  (159, 15900, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 32),
  -- Croconaw - Surf - HM03
  (159, 15900, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 33),
  -- Croconaw - Strength - HM04
  (159, 15900, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 34),
  -- Croconaw - Rock Smash - HM06
  (159, 15900, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 35),
  -- Croconaw - Waterfall - HM07
  (159, 15900, 127, 7, NULL, 3, NULL, NULL, 7003007, NULL, 36),
  -- Croconaw - Dive - HM08
  (159, 15900, 291, 7, NULL, 3, NULL, NULL, 7003008, NULL, 37),
  -- Croconaw - Body Slam - Move Tutor
  (159, 15900, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Croconaw - Counter - Move Tutor
  (159, 15900, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Croconaw - Double-Edge - Move Tutor
  (159, 15900, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Croconaw - Dynamic Punch - Move Tutor
  (159, 15900, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Croconaw - Endure - Move Tutor
  (159, 15900, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Croconaw - Fury Cutter - Move Tutor
  (159, 15900, 210, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Croconaw - Ice Punch - Move Tutor
  (159, 15900, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Croconaw - Icy Wind - Move Tutor
  (159, 15900, 196, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Croconaw - Mega Kick - Move Tutor
  (159, 15900, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Croconaw - Mega Punch - Move Tutor
  (159, 15900, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Croconaw - Mimic - Move Tutor
  (159, 15900, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Croconaw - Mud-Slap - Move Tutor
  (159, 15900, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Croconaw - Rock Slide - Move Tutor
  (159, 15900, 157, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Croconaw - Seismic Toss - Move Tutor
  (159, 15900, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Croconaw - Sleep Talk - Move Tutor
  (159, 15900, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Croconaw - Snore - Move Tutor
  (159, 15900, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Croconaw - Substitute - Move Tutor
  (159, 15900, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Croconaw - Swagger - Move Tutor
  (159, 15900, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Croconaw - Swords Dance - Move Tutor
  (159, 15900, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Feraligatr - Scratch - Level 1
  (160, 16000, 10, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feraligatr - Leer - Level 1
  (160, 16000, 43, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Feraligatr - Rage - Level 1
  (160, 16000, 99, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Feraligatr - Water Gun - Level 1
  (160, 16000, 55, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Feraligatr - Rage - Level 7
  (160, 16000, 99, 7, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Feraligatr - Water Gun - Level 13
  (160, 16000, 55, 7, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Feraligatr - Bite - Level 21
  (160, 16000, 44, 7, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Feraligatr - Scary Face - Level 28
  (160, 16000, 184, 7, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Feraligatr - Slash - Level 38
  (160, 16000, 163, 7, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Feraligatr - Screech - Level 47
  (160, 16000, 103, 7, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Feraligatr - Hydro Pump - Level 58
  (160, 16000, 56, 7, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Feraligatr - Focus Punch - TM01
  (160, 16000, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 12),
  -- Feraligatr - Dragon Claw - TM02
  (160, 16000, 337, 7, NULL, 2, NULL, NULL, 7002002, NULL, 13),
  -- Feraligatr - Water Pulse - TM03
  (160, 16000, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 14),
  -- Feraligatr - Roar - TM05
  (160, 16000, 46, 7, NULL, 2, NULL, NULL, 7002005, NULL, 15),
  -- Feraligatr - Toxic - TM06
  (160, 16000, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 16),
  -- Feraligatr - Hail - TM07
  (160, 16000, 258, 7, NULL, 2, NULL, NULL, 7002007, NULL, 17),
  -- Feraligatr - Hidden Power - TM10
  (160, 16000, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 18),
  -- Feraligatr - Ice Beam - TM13
  (160, 16000, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 19),
  -- Feraligatr - Blizzard - TM14
  (160, 16000, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 20),
  -- Feraligatr - Hyper Beam - TM15
  (160, 16000, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 21),
  -- Feraligatr - Protect - TM17
  (160, 16000, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 22),
  -- Feraligatr - Rain Dance - TM18
  (160, 16000, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 23),
  -- Feraligatr - Frustration - TM21
  (160, 16000, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 24),
  -- Feraligatr - Iron Tail - TM23
  (160, 16000, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 25),
  -- Feraligatr - Earthquake - TM26
  (160, 16000, 89, 7, NULL, 2, NULL, NULL, 7002026, NULL, 26),
  -- Feraligatr - Return - TM27
  (160, 16000, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 27),
  -- Feraligatr - Dig - TM28
  (160, 16000, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 28),
  -- Feraligatr - Brick Break - TM31
  (160, 16000, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 29),
  -- Feraligatr - Double Team - TM32
  (160, 16000, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 30),
  -- Feraligatr - Aerial Ace - TM40
  (160, 16000, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 31),
  -- Feraligatr - Facade - TM42
  (160, 16000, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 32),
  -- Feraligatr - Secret Power - TM43
  (160, 16000, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 33),
  -- Feraligatr - Rest - TM44
  (160, 16000, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 34),
  -- Feraligatr - Attract - TM45
  (160, 16000, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 35),
  -- Feraligatr - Cut - HM01
  (160, 16000, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 36),
  -- Feraligatr - Surf - HM03
  (160, 16000, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 37),
  -- Feraligatr - Strength - HM04
  (160, 16000, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 38),
  -- Feraligatr - Rock Smash - HM06
  (160, 16000, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 39),
  -- Feraligatr - Waterfall - HM07
  (160, 16000, 127, 7, NULL, 3, NULL, NULL, 7003007, NULL, 40),
  -- Feraligatr - Dive - HM08
  (160, 16000, 291, 7, NULL, 3, NULL, NULL, 7003008, NULL, 41),
  -- Feraligatr - Body Slam - Move Tutor
  (160, 16000, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Feraligatr - Counter - Move Tutor
  (160, 16000, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Feraligatr - Double-Edge - Move Tutor
  (160, 16000, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Feraligatr - Dynamic Punch - Move Tutor
  (160, 16000, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Feraligatr - Endure - Move Tutor
  (160, 16000, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Feraligatr - Fury Cutter - Move Tutor
  (160, 16000, 210, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Feraligatr - Ice Punch - Move Tutor
  (160, 16000, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Feraligatr - Icy Wind - Move Tutor
  (160, 16000, 196, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Feraligatr - Mega Kick - Move Tutor
  (160, 16000, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Feraligatr - Mega Punch - Move Tutor
  (160, 16000, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Feraligatr - Mimic - Move Tutor
  (160, 16000, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Feraligatr - Mud-Slap - Move Tutor
  (160, 16000, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Feraligatr - Rock Slide - Move Tutor
  (160, 16000, 157, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Feraligatr - Seismic Toss - Move Tutor
  (160, 16000, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Feraligatr - Sleep Talk - Move Tutor
  (160, 16000, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Feraligatr - Snore - Move Tutor
  (160, 16000, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Feraligatr - Substitute - Move Tutor
  (160, 16000, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 58),
  -- Feraligatr - Swagger - Move Tutor
  (160, 16000, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 59),
  -- Feraligatr - Swords Dance - Move Tutor
  (160, 16000, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 60),
  -- Sentret - Scratch - Level 1
  (161, 16100, 10, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sentret - Defense Curl - Level 4
  (161, 16100, 111, 7, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Sentret - Quick Attack - Level 7
  (161, 16100, 98, 7, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Sentret - Fury Swipes - Level 12
  (161, 16100, 154, 7, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Sentret - Helping Hand - Level 17
  (161, 16100, 270, 7, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Sentret - Slam - Level 24
  (161, 16100, 21, 7, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Sentret - Follow Me - Level 31
  (161, 16100, 266, 7, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Sentret - Rest - Level 40
  (161, 16100, 156, 7, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Sentret - Amnesia - Level 49
  (161, 16100, 133, 7, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Sentret - Focus Punch - TM01
  (161, 16100, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 10),
  -- Sentret - Water Pulse - TM03
  (161, 16100, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 11),
  -- Sentret - Toxic - TM06
  (161, 16100, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Sentret - Hidden Power - TM10
  (161, 16100, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 13),
  -- Sentret - Sunny Day - TM11
  (161, 16100, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 14),
  -- Sentret - Ice Beam - TM13
  (161, 16100, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 15),
  -- Sentret - Protect - TM17
  (161, 16100, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 16),
  -- Sentret - Rain Dance - TM18
  (161, 16100, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 17),
  -- Sentret - Frustration - TM21
  (161, 16100, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 18),
  -- Sentret - Solar Beam - TM22
  (161, 16100, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 19),
  -- Sentret - Iron Tail - TM23
  (161, 16100, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 20),
  -- Sentret - Thunderbolt - TM24
  (161, 16100, 85, 7, NULL, 2, NULL, NULL, 7002024, NULL, 21),
  -- Sentret - Return - TM27
  (161, 16100, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 22),
  -- Sentret - Dig - TM28
  (161, 16100, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 23),
  -- Sentret - Shadow Ball - TM30
  (161, 16100, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 24),
  -- Sentret - Brick Break - TM31
  (161, 16100, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 25),
  -- Sentret - Double Team - TM32
  (161, 16100, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 26),
  -- Sentret - Shock Wave - TM34
  (161, 16100, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 27),
  -- Sentret - Flamethrower - TM35
  (161, 16100, 53, 7, NULL, 2, NULL, NULL, 7002035, NULL, 28),
  -- Sentret - Facade - TM42
  (161, 16100, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 29),
  -- Sentret - Secret Power - TM43
  (161, 16100, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 30),
  -- Sentret - Rest - TM44
  (161, 16100, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 31),
  -- Sentret - Attract - TM45
  (161, 16100, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 32),
  -- Sentret - Thief - TM46
  (161, 16100, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 33),
  -- Sentret - Cut - HM01
  (161, 16100, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 34),
  -- Sentret - Surf - HM03
  (161, 16100, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 35),
  -- Sentret - Assist - Egg Move
  (161, 16100, 274, 7, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Sentret - Double-Edge - Egg Move
  (161, 16100, 38, 7, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Sentret - Focus Energy - Egg Move
  (161, 16100, 116, 7, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Sentret - Pursuit - Egg Move
  (161, 16100, 228, 7, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sentret - Reversal - Egg Move
  (161, 16100, 179, 7, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sentret - Slash - Egg Move
  (161, 16100, 163, 7, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sentret - Substitute - Egg Move
  (161, 16100, 164, 7, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sentret - Trick - Egg Move
  (161, 16100, 271, 7, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sentret - Body Slam - Move Tutor
  (161, 16100, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Sentret - Defense Curl - Move Tutor
  (161, 16100, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Sentret - Double-Edge - Move Tutor
  (161, 16100, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Sentret - Dynamic Punch - Move Tutor
  (161, 16100, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Sentret - Endure - Move Tutor
  (161, 16100, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Sentret - Fire Punch - Move Tutor
  (161, 16100, 7, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Sentret - Fury Cutter - Move Tutor
  (161, 16100, 210, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Sentret - Ice Punch - Move Tutor
  (161, 16100, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Sentret - Mimic - Move Tutor
  (161, 16100, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Sentret - Mud-Slap - Move Tutor
  (161, 16100, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Sentret - Rollout - Move Tutor
  (161, 16100, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Sentret - Sleep Talk - Move Tutor
  (161, 16100, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Sentret - Snore - Move Tutor
  (161, 16100, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Sentret - Substitute - Move Tutor
  (161, 16100, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Sentret - Swagger - Move Tutor
  (161, 16100, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 58),
  -- Sentret - Swift - Move Tutor
  (161, 16100, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 59),
  -- Sentret - Thunder Punch - Move Tutor
  (161, 16100, 9, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 60),
  -- Furret - Scratch - Level 1
  (162, 16200, 10, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Furret - Defense Curl - Level 1
  (162, 16200, 111, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Furret - Quick Attack - Level 1
  (162, 16200, 98, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Furret - Defense Curl - Level 4
  (162, 16200, 111, 7, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Furret - Quick Attack - Level 7
  (162, 16200, 98, 7, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Furret - Fury Swipes - Level 12
  (162, 16200, 154, 7, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Furret - Helping Hand - Level 19
  (162, 16200, 270, 7, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Furret - Slam - Level 28
  (162, 16200, 21, 7, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Furret - Follow Me - Level 37
  (162, 16200, 266, 7, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Furret - Rest - Level 48
  (162, 16200, 156, 7, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Furret - Amnesia - Level 59
  (162, 16200, 133, 7, NULL, 1, 59, NULL, NULL, NULL, 11),
  -- Furret - Focus Punch - TM01
  (162, 16200, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 12),
  -- Furret - Water Pulse - TM03
  (162, 16200, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 13),
  -- Furret - Toxic - TM06
  (162, 16200, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 14),
  -- Furret - Hidden Power - TM10
  (162, 16200, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 15),
  -- Furret - Sunny Day - TM11
  (162, 16200, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 16),
  -- Furret - Ice Beam - TM13
  (162, 16200, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 17),
  -- Furret - Blizzard - TM14
  (162, 16200, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 18),
  -- Furret - Hyper Beam - TM15
  (162, 16200, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 19),
  -- Furret - Protect - TM17
  (162, 16200, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 20),
  -- Furret - Rain Dance - TM18
  (162, 16200, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 21),
  -- Furret - Frustration - TM21
  (162, 16200, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 22),
  -- Furret - Solar Beam - TM22
  (162, 16200, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 23),
  -- Furret - Iron Tail - TM23
  (162, 16200, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 24),
  -- Furret - Thunderbolt - TM24
  (162, 16200, 85, 7, NULL, 2, NULL, NULL, 7002024, NULL, 25),
  -- Furret - Thunder - TM25
  (162, 16200, 87, 7, NULL, 2, NULL, NULL, 7002025, NULL, 26),
  -- Furret - Return - TM27
  (162, 16200, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 27),
  -- Furret - Dig - TM28
  (162, 16200, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 28),
  -- Furret - Shadow Ball - TM30
  (162, 16200, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 29),
  -- Furret - Brick Break - TM31
  (162, 16200, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 30),
  -- Furret - Double Team - TM32
  (162, 16200, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 31),
  -- Furret - Shock Wave - TM34
  (162, 16200, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 32),
  -- Furret - Flamethrower - TM35
  (162, 16200, 53, 7, NULL, 2, NULL, NULL, 7002035, NULL, 33),
  -- Furret - Facade - TM42
  (162, 16200, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 34),
  -- Furret - Secret Power - TM43
  (162, 16200, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 35),
  -- Furret - Rest - TM44
  (162, 16200, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 36),
  -- Furret - Attract - TM45
  (162, 16200, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 37),
  -- Furret - Thief - TM46
  (162, 16200, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 38),
  -- Furret - Cut - HM01
  (162, 16200, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 39),
  -- Furret - Surf - HM03
  (162, 16200, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 40),
  -- Furret - Strength - HM04
  (162, 16200, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 41),
  -- Furret - Rock Smash - HM06
  (162, 16200, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 42),
  -- Furret - Body Slam - Move Tutor
  (162, 16200, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Furret - Defense Curl - Move Tutor
  (162, 16200, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Furret - Double-Edge - Move Tutor
  (162, 16200, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Furret - Dynamic Punch - Move Tutor
  (162, 16200, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Furret - Endure - Move Tutor
  (162, 16200, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Furret - Fire Punch - Move Tutor
  (162, 16200, 7, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Furret - Fury Cutter - Move Tutor
  (162, 16200, 210, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Furret - Ice Punch - Move Tutor
  (162, 16200, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Furret - Mimic - Move Tutor
  (162, 16200, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Furret - Mud-Slap - Move Tutor
  (162, 16200, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Furret - Rollout - Move Tutor
  (162, 16200, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Furret - Sleep Talk - Move Tutor
  (162, 16200, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Furret - Snore - Move Tutor
  (162, 16200, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Furret - Substitute - Move Tutor
  (162, 16200, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Furret - Swagger - Move Tutor
  (162, 16200, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Furret - Swift - Move Tutor
  (162, 16200, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 58),
  -- Furret - Thunder Punch - Move Tutor
  (162, 16200, 9, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 59),
  -- Hoothoot - Tackle - Level 1
  (163, 16300, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoothoot - Growl - Level 1
  (163, 16300, 45, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoothoot - Foresight - Level 6
  (163, 16300, 193, 7, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Hoothoot - Peck - Level 11
  (163, 16300, 64, 7, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Hoothoot - Hypnosis - Level 16
  (163, 16300, 95, 7, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Hoothoot - Reflect - Level 22
  (163, 16300, 115, 7, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Hoothoot - Take Down - Level 28
  (163, 16300, 36, 7, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Hoothoot - Confusion - Level 34
  (163, 16300, 93, 7, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Hoothoot - Dream Eater - Level 48
  (163, 16300, 138, 7, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Hoothoot - Toxic - TM06
  (163, 16300, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 10),
  -- Hoothoot - Hidden Power - TM10
  (163, 16300, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 11),
  -- Hoothoot - Sunny Day - TM11
  (163, 16300, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 12),
  -- Hoothoot - Protect - TM17
  (163, 16300, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 13),
  -- Hoothoot - Rain Dance - TM18
  (163, 16300, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 14),
  -- Hoothoot - Frustration - TM21
  (163, 16300, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 15),
  -- Hoothoot - Return - TM27
  (163, 16300, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 16),
  -- Hoothoot - Psychic - TM29
  (163, 16300, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 17),
  -- Hoothoot - Shadow Ball - TM30
  (163, 16300, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 18),
  -- Hoothoot - Double Team - TM32
  (163, 16300, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 19),
  -- Hoothoot - Reflect - TM33
  (163, 16300, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 20),
  -- Hoothoot - Aerial Ace - TM40
  (163, 16300, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 21),
  -- Hoothoot - Facade - TM42
  (163, 16300, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 22),
  -- Hoothoot - Secret Power - TM43
  (163, 16300, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 23),
  -- Hoothoot - Rest - TM44
  (163, 16300, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 24),
  -- Hoothoot - Attract - TM45
  (163, 16300, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 25),
  -- Hoothoot - Thief - TM46
  (163, 16300, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 26),
  -- Hoothoot - Steel Wing - TM47
  (163, 16300, 211, 7, NULL, 2, NULL, NULL, 7002047, NULL, 27),
  -- Hoothoot - Fly - HM02
  (163, 16300, 19, 7, NULL, 3, NULL, NULL, 7003002, NULL, 28),
  -- Hoothoot - Flash - HM05
  (163, 16300, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 29),
  -- Hoothoot - Feint Attack - Egg Move
  (163, 16300, 185, 7, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Hoothoot - Feather Dance - Egg Move
  (163, 16300, 297, 7, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Hoothoot - Mirror Move - Egg Move
  (163, 16300, 119, 7, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Hoothoot - Sky Attack - Egg Move
  (163, 16300, 143, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Hoothoot - Supersonic - Egg Move
  (163, 16300, 48, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Hoothoot - Whirlwind - Egg Move
  (163, 16300, 18, 7, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Hoothoot - Wing Attack - Egg Move
  (163, 16300, 17, 7, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Hoothoot - Double-Edge - Move Tutor
  (163, 16300, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Hoothoot - Dream Eater - Move Tutor
  (163, 16300, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Hoothoot - Endure - Move Tutor
  (163, 16300, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Hoothoot - Mimic - Move Tutor
  (163, 16300, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Hoothoot - Mud-Slap - Move Tutor
  (163, 16300, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Hoothoot - Sleep Talk - Move Tutor
  (163, 16300, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Hoothoot - Snore - Move Tutor
  (163, 16300, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Hoothoot - Substitute - Move Tutor
  (163, 16300, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Hoothoot - Swagger - Move Tutor
  (163, 16300, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Hoothoot - Swift - Move Tutor
  (163, 16300, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Noctowl - Tackle - Level 1
  (164, 16400, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noctowl - Growl - Level 1
  (164, 16400, 45, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noctowl - Foresight - Level 1
  (164, 16400, 193, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noctowl - Peck - Level 1
  (164, 16400, 64, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Noctowl - Foresight - Level 6
  (164, 16400, 193, 7, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Noctowl - Peck - Level 11
  (164, 16400, 64, 7, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Noctowl - Hypnosis - Level 16
  (164, 16400, 95, 7, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Noctowl - Reflect - Level 25
  (164, 16400, 115, 7, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Noctowl - Take Down - Level 33
  (164, 16400, 36, 7, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Noctowl - Confusion - Level 41
  (164, 16400, 93, 7, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Noctowl - Dream Eater - Level 57
  (164, 16400, 138, 7, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Noctowl - Toxic - TM06
  (164, 16400, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Noctowl - Hidden Power - TM10
  (164, 16400, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 13),
  -- Noctowl - Sunny Day - TM11
  (164, 16400, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 14),
  -- Noctowl - Hyper Beam - TM15
  (164, 16400, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 15),
  -- Noctowl - Protect - TM17
  (164, 16400, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 16),
  -- Noctowl - Rain Dance - TM18
  (164, 16400, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 17),
  -- Noctowl - Frustration - TM21
  (164, 16400, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 18),
  -- Noctowl - Return - TM27
  (164, 16400, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 19),
  -- Noctowl - Psychic - TM29
  (164, 16400, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 20),
  -- Noctowl - Shadow Ball - TM30
  (164, 16400, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 21),
  -- Noctowl - Double Team - TM32
  (164, 16400, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 22),
  -- Noctowl - Reflect - TM33
  (164, 16400, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 23),
  -- Noctowl - Aerial Ace - TM40
  (164, 16400, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 24),
  -- Noctowl - Facade - TM42
  (164, 16400, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 25),
  -- Noctowl - Secret Power - TM43
  (164, 16400, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 26),
  -- Noctowl - Rest - TM44
  (164, 16400, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 27),
  -- Noctowl - Attract - TM45
  (164, 16400, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 28),
  -- Noctowl - Thief - TM46
  (164, 16400, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 29),
  -- Noctowl - Steel Wing - TM47
  (164, 16400, 211, 7, NULL, 2, NULL, NULL, 7002047, NULL, 30),
  -- Noctowl - Fly - HM02
  (164, 16400, 19, 7, NULL, 3, NULL, NULL, 7003002, NULL, 31),
  -- Noctowl - Flash - HM05
  (164, 16400, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 32),
  -- Noctowl - Double-Edge - Move Tutor
  (164, 16400, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Noctowl - Dream Eater - Move Tutor
  (164, 16400, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Noctowl - Endure - Move Tutor
  (164, 16400, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Noctowl - Mimic - Move Tutor
  (164, 16400, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Noctowl - Mud-Slap - Move Tutor
  (164, 16400, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Noctowl - Sleep Talk - Move Tutor
  (164, 16400, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Noctowl - Snore - Move Tutor
  (164, 16400, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Noctowl - Substitute - Move Tutor
  (164, 16400, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Noctowl - Swagger - Move Tutor
  (164, 16400, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Noctowl - Swift - Move Tutor
  (164, 16400, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Ledyba - Tackle - Level 1
  (165, 16500, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ledyba - Supersonic - Level 8
  (165, 16500, 48, 7, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Ledyba - Comet Punch - Level 15
  (165, 16500, 4, 7, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Ledyba - Light Screen - Level 22
  (165, 16500, 113, 7, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Ledyba - Reflect - Level 22
  (165, 16500, 115, 7, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Ledyba - Safeguard - Level 22
  (165, 16500, 219, 7, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Ledyba - Baton Pass - Level 29
  (165, 16500, 226, 7, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Ledyba - Swift - Level 36
  (165, 16500, 129, 7, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Ledyba - Agility - Level 43
  (165, 16500, 97, 7, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Ledyba - Double-Edge - Level 50
  (165, 16500, 38, 7, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Ledyba - Focus Punch - TM01
  (165, 16500, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 11),
  -- Ledyba - Toxic - TM06
  (165, 16500, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Ledyba - Hidden Power - TM10
  (165, 16500, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 13),
  -- Ledyba - Sunny Day - TM11
  (165, 16500, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 14),
  -- Ledyba - Light Screen - TM16
  (165, 16500, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 15),
  -- Ledyba - Protect - TM17
  (165, 16500, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 16),
  -- Ledyba - Giga Drain - TM19
  (165, 16500, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 17),
  -- Ledyba - Safeguard - TM20
  (165, 16500, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 18),
  -- Ledyba - Frustration - TM21
  (165, 16500, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 19),
  -- Ledyba - Solar Beam - TM22
  (165, 16500, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 20),
  -- Ledyba - Return - TM27
  (165, 16500, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 21),
  -- Ledyba - Dig - TM28
  (165, 16500, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 22),
  -- Ledyba - Brick Break - TM31
  (165, 16500, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 23),
  -- Ledyba - Double Team - TM32
  (165, 16500, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 24),
  -- Ledyba - Reflect - TM33
  (165, 16500, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 25),
  -- Ledyba - Aerial Ace - TM40
  (165, 16500, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 26),
  -- Ledyba - Facade - TM42
  (165, 16500, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 27),
  -- Ledyba - Secret Power - TM43
  (165, 16500, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 28),
  -- Ledyba - Rest - TM44
  (165, 16500, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 29),
  -- Ledyba - Attract - TM45
  (165, 16500, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 30),
  -- Ledyba - Thief - TM46
  (165, 16500, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 31),
  -- Ledyba - Flash - HM05
  (165, 16500, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 32),
  -- Ledyba - Bide - Egg Move
  (165, 16500, 117, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Ledyba - Psybeam - Egg Move
  (165, 16500, 60, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Ledyba - Silver Wind - Egg Move
  (165, 16500, 318, 7, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Ledyba - Double-Edge - Move Tutor
  (165, 16500, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Ledyba - Dynamic Punch - Move Tutor
  (165, 16500, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Ledyba - Endure - Move Tutor
  (165, 16500, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Ledyba - Ice Punch - Move Tutor
  (165, 16500, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Ledyba - Mega Punch - Move Tutor
  (165, 16500, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Ledyba - Mimic - Move Tutor
  (165, 16500, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Ledyba - Rollout - Move Tutor
  (165, 16500, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Ledyba - Sleep Talk - Move Tutor
  (165, 16500, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Ledyba - Snore - Move Tutor
  (165, 16500, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Ledyba - Substitute - Move Tutor
  (165, 16500, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Ledyba - Swagger - Move Tutor
  (165, 16500, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Ledyba - Swift - Move Tutor
  (165, 16500, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Ledyba - Swords Dance - Move Tutor
  (165, 16500, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Ledyba - Thunder Punch - Move Tutor
  (165, 16500, 9, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Ledian - Tackle - Level 1
  (166, 16600, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ledian - Supersonic - Level 1
  (166, 16600, 48, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ledian - Supersonic - Level 8
  (166, 16600, 48, 7, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Ledian - Comet Punch - Level 15
  (166, 16600, 4, 7, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Ledian - Light Screen - Level 24
  (166, 16600, 113, 7, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Ledian - Reflect - Level 24
  (166, 16600, 115, 7, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Ledian - Safeguard - Level 24
  (166, 16600, 219, 7, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Ledian - Baton Pass - Level 33
  (166, 16600, 226, 7, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Ledian - Swift - Level 42
  (166, 16600, 129, 7, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Ledian - Agility - Level 51
  (166, 16600, 97, 7, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Ledian - Double-Edge - Level 60
  (166, 16600, 38, 7, NULL, 1, 60, NULL, NULL, NULL, 11),
  -- Ledian - Focus Punch - TM01
  (166, 16600, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 12),
  -- Ledian - Toxic - TM06
  (166, 16600, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 13),
  -- Ledian - Hidden Power - TM10
  (166, 16600, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 14),
  -- Ledian - Sunny Day - TM11
  (166, 16600, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 15),
  -- Ledian - Hyper Beam - TM15
  (166, 16600, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 16),
  -- Ledian - Light Screen - TM16
  (166, 16600, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 17),
  -- Ledian - Protect - TM17
  (166, 16600, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 18),
  -- Ledian - Giga Drain - TM19
  (166, 16600, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 19),
  -- Ledian - Safeguard - TM20
  (166, 16600, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 20),
  -- Ledian - Frustration - TM21
  (166, 16600, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 21),
  -- Ledian - Solar Beam - TM22
  (166, 16600, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 22),
  -- Ledian - Return - TM27
  (166, 16600, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 23),
  -- Ledian - Dig - TM28
  (166, 16600, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 24),
  -- Ledian - Brick Break - TM31
  (166, 16600, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 25),
  -- Ledian - Double Team - TM32
  (166, 16600, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 26),
  -- Ledian - Reflect - TM33
  (166, 16600, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 27),
  -- Ledian - Aerial Ace - TM40
  (166, 16600, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 28),
  -- Ledian - Facade - TM42
  (166, 16600, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 29),
  -- Ledian - Secret Power - TM43
  (166, 16600, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 30),
  -- Ledian - Rest - TM44
  (166, 16600, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 31),
  -- Ledian - Attract - TM45
  (166, 16600, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 32),
  -- Ledian - Thief - TM46
  (166, 16600, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 33),
  -- Ledian - Flash - HM05
  (166, 16600, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 34),
  -- Ledian - Double-Edge - Move Tutor
  (166, 16600, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Ledian - Dynamic Punch - Move Tutor
  (166, 16600, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Ledian - Endure - Move Tutor
  (166, 16600, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Ledian - Ice Punch - Move Tutor
  (166, 16600, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Ledian - Mega Punch - Move Tutor
  (166, 16600, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Ledian - Mimic - Move Tutor
  (166, 16600, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Ledian - Rollout - Move Tutor
  (166, 16600, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Ledian - Sleep Talk - Move Tutor
  (166, 16600, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Ledian - Snore - Move Tutor
  (166, 16600, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Ledian - Substitute - Move Tutor
  (166, 16600, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Ledian - Swagger - Move Tutor
  (166, 16600, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Ledian - Swift - Move Tutor
  (166, 16600, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Ledian - Swords Dance - Move Tutor
  (166, 16600, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Ledian - Thunder Punch - Move Tutor
  (166, 16600, 9, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Spinarak - Poison Sting - Level 1
  (167, 16700, 40, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinarak - String Shot - Level 1
  (167, 16700, 81, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spinarak - Scary Face - Level 6
  (167, 16700, 184, 7, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Spinarak - Constrict - Level 11
  (167, 16700, 132, 7, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Spinarak - Night Shade - Level 17
  (167, 16700, 101, 7, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Spinarak - Leech Life - Level 23
  (167, 16700, 141, 7, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Spinarak - Fury Swipes - Level 30
  (167, 16700, 154, 7, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Spinarak - Spider Web - Level 37
  (167, 16700, 169, 7, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Spinarak - Agility - Level 45
  (167, 16700, 97, 7, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Spinarak - Psychic - Level 53
  (167, 16700, 94, 7, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Spinarak - Toxic - TM06
  (167, 16700, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 11),
  -- Spinarak - Hidden Power - TM10
  (167, 16700, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 12),
  -- Spinarak - Sunny Day - TM11
  (167, 16700, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 13),
  -- Spinarak - Protect - TM17
  (167, 16700, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 14),
  -- Spinarak - Giga Drain - TM19
  (167, 16700, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 15),
  -- Spinarak - Frustration - TM21
  (167, 16700, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 16),
  -- Spinarak - Solar Beam - TM22
  (167, 16700, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 17),
  -- Spinarak - Return - TM27
  (167, 16700, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 18),
  -- Spinarak - Dig - TM28
  (167, 16700, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 19),
  -- Spinarak - Psychic - TM29
  (167, 16700, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 20),
  -- Spinarak - Double Team - TM32
  (167, 16700, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 21),
  -- Spinarak - Sludge Bomb - TM36
  (167, 16700, 188, 7, NULL, 2, NULL, NULL, 7002036, NULL, 22),
  -- Spinarak - Facade - TM42
  (167, 16700, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 23),
  -- Spinarak - Secret Power - TM43
  (167, 16700, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 24),
  -- Spinarak - Rest - TM44
  (167, 16700, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 25),
  -- Spinarak - Attract - TM45
  (167, 16700, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 26),
  -- Spinarak - Thief - TM46
  (167, 16700, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 27),
  -- Spinarak - Flash - HM05
  (167, 16700, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 28),
  -- Spinarak - Baton Pass - Egg Move
  (167, 16700, 226, 7, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Spinarak - Disable - Egg Move
  (167, 16700, 50, 7, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Spinarak - Pursuit - Egg Move
  (167, 16700, 228, 7, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Spinarak - Psybeam - Egg Move
  (167, 16700, 60, 7, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Spinarak - Signal Beam - Egg Move
  (167, 16700, 324, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Spinarak - Sonic Boom - Egg Move
  (167, 16700, 49, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Spinarak - Body Slam - Move Tutor
  (167, 16700, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Spinarak - Double-Edge - Move Tutor
  (167, 16700, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Spinarak - Endure - Move Tutor
  (167, 16700, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Spinarak - Mimic - Move Tutor
  (167, 16700, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Spinarak - Sleep Talk - Move Tutor
  (167, 16700, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Spinarak - Snore - Move Tutor
  (167, 16700, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Spinarak - Substitute - Move Tutor
  (167, 16700, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Spinarak - Swagger - Move Tutor
  (167, 16700, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Ariados - Poison Sting - Level 1
  (168, 16800, 40, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ariados - String Shot - Level 1
  (168, 16800, 81, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ariados - Scary Face - Level 1
  (168, 16800, 184, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ariados - Constrict - Level 1
  (168, 16800, 132, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ariados - Scary Face - Level 6
  (168, 16800, 184, 7, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Ariados - Constrict - Level 11
  (168, 16800, 132, 7, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Ariados - Night Shade - Level 17
  (168, 16800, 101, 7, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Ariados - Leech Life - Level 25
  (168, 16800, 141, 7, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ariados - Fury Swipes - Level 34
  (168, 16800, 154, 7, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Ariados - Spider Web - Level 43
  (168, 16800, 169, 7, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Ariados - Agility - Level 53
  (168, 16800, 97, 7, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Ariados - Psychic - Level 63
  (168, 16800, 94, 7, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Ariados - Toxic - TM06
  (168, 16800, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 13),
  -- Ariados - Hidden Power - TM10
  (168, 16800, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 14),
  -- Ariados - Sunny Day - TM11
  (168, 16800, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 15),
  -- Ariados - Hyper Beam - TM15
  (168, 16800, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 16),
  -- Ariados - Protect - TM17
  (168, 16800, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 17),
  -- Ariados - Giga Drain - TM19
  (168, 16800, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 18),
  -- Ariados - Frustration - TM21
  (168, 16800, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 19),
  -- Ariados - Solar Beam - TM22
  (168, 16800, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 20),
  -- Ariados - Return - TM27
  (168, 16800, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 21),
  -- Ariados - Dig - TM28
  (168, 16800, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 22),
  -- Ariados - Psychic - TM29
  (168, 16800, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 23),
  -- Ariados - Double Team - TM32
  (168, 16800, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 24),
  -- Ariados - Sludge Bomb - TM36
  (168, 16800, 188, 7, NULL, 2, NULL, NULL, 7002036, NULL, 25),
  -- Ariados - Facade - TM42
  (168, 16800, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 26),
  -- Ariados - Secret Power - TM43
  (168, 16800, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 27),
  -- Ariados - Rest - TM44
  (168, 16800, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 28),
  -- Ariados - Attract - TM45
  (168, 16800, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 29),
  -- Ariados - Thief - TM46
  (168, 16800, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 30),
  -- Ariados - Flash - HM05
  (168, 16800, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 31),
  -- Ariados - Body Slam - Move Tutor
  (168, 16800, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 32),
  -- Ariados - Double-Edge - Move Tutor
  (168, 16800, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Ariados - Endure - Move Tutor
  (168, 16800, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Ariados - Mimic - Move Tutor
  (168, 16800, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Ariados - Sleep Talk - Move Tutor
  (168, 16800, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Ariados - Snore - Move Tutor
  (168, 16800, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Ariados - Substitute - Move Tutor
  (168, 16800, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Ariados - Swagger - Move Tutor
  (168, 16800, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Crobat - Screech - Level 1
  (169, 16900, 103, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crobat - Leech Life - Level 1
  (169, 16900, 141, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crobat - Supersonic - Level 1
  (169, 16900, 48, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crobat - Astonish - Level 1
  (169, 16900, 310, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crobat - Supersonic - Level 11
  (169, 16900, 48, 7, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Crobat - Astonish - Level 6
  (169, 16900, 310, 7, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Crobat - Bite - Level 16
  (169, 16900, 44, 7, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Crobat - Wing Attack - Level 21
  (169, 16900, 17, 7, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Crobat - Confuse Ray - Level 28
  (169, 16900, 109, 7, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Crobat - Air Cutter - Level 35
  (169, 16900, 314, 7, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Crobat - Mean Look - Level 42
  (169, 16900, 212, 7, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Crobat - Poison Fang - Level 49
  (169, 16900, 305, 7, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Crobat - Haze - Level 56
  (169, 16900, 114, 7, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Crobat - Toxic - TM06
  (169, 16900, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 14),
  -- Crobat - Hidden Power - TM10
  (169, 16900, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 15),
  -- Crobat - Sunny Day - TM11
  (169, 16900, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 16),
  -- Crobat - Taunt - TM12
  (169, 16900, 269, 7, NULL, 2, NULL, NULL, 7002012, NULL, 17),
  -- Crobat - Hyper Beam - TM15
  (169, 16900, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 18),
  -- Crobat - Protect - TM17
  (169, 16900, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 19),
  -- Crobat - Rain Dance - TM18
  (169, 16900, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 20),
  -- Crobat - Giga Drain - TM19
  (169, 16900, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 21),
  -- Crobat - Frustration - TM21
  (169, 16900, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 22),
  -- Crobat - Return - TM27
  (169, 16900, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 23),
  -- Crobat - Shadow Ball - TM30
  (169, 16900, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 24),
  -- Crobat - Double Team - TM32
  (169, 16900, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 25),
  -- Crobat - Sludge Bomb - TM36
  (169, 16900, 188, 7, NULL, 2, NULL, NULL, 7002036, NULL, 26),
  -- Crobat - Aerial Ace - TM40
  (169, 16900, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 27),
  -- Crobat - Torment - TM41
  (169, 16900, 259, 7, NULL, 2, NULL, NULL, 7002041, NULL, 28),
  -- Crobat - Facade - TM42
  (169, 16900, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 29),
  -- Crobat - Secret Power - TM43
  (169, 16900, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 30),
  -- Crobat - Rest - TM44
  (169, 16900, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 31),
  -- Crobat - Attract - TM45
  (169, 16900, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 32),
  -- Crobat - Thief - TM46
  (169, 16900, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 33),
  -- Crobat - Steel Wing - TM47
  (169, 16900, 211, 7, NULL, 2, NULL, NULL, 7002047, NULL, 34),
  -- Crobat - Snatch - TM49
  (169, 16900, 289, 7, NULL, 2, NULL, NULL, 7002049, NULL, 35),
  -- Crobat - Fly - HM02
  (169, 16900, 19, 7, NULL, 3, NULL, NULL, 7003002, NULL, 36),
  -- Crobat - Double-Edge - Move Tutor
  (169, 16900, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Crobat - Endure - Move Tutor
  (169, 16900, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Crobat - Mimic - Move Tutor
  (169, 16900, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Crobat - Sleep Talk - Move Tutor
  (169, 16900, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Crobat - Snore - Move Tutor
  (169, 16900, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Crobat - Substitute - Move Tutor
  (169, 16900, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Crobat - Swagger - Move Tutor
  (169, 16900, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Crobat - Swift - Move Tutor
  (169, 16900, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Chinchou - Bubble - Level 1
  (170, 17000, 145, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chinchou - Thunder Wave - Level 1
  (170, 17000, 86, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chinchou - Supersonic - Level 5
  (170, 17000, 48, 7, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Chinchou - Flail - Level 13
  (170, 17000, 175, 7, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Chinchou - Water Gun - Level 17
  (170, 17000, 55, 7, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Chinchou - Spark - Level 25
  (170, 17000, 209, 7, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Chinchou - Confuse Ray - Level 29
  (170, 17000, 109, 7, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Chinchou - Take Down - Level 37
  (170, 17000, 36, 7, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Chinchou - Hydro Pump - Level 41
  (170, 17000, 56, 7, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Chinchou - Charge - Level 49
  (170, 17000, 268, 7, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Chinchou - Water Pulse - TM03
  (170, 17000, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 11),
  -- Chinchou - Toxic - TM06
  (170, 17000, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Chinchou - Hail - TM07
  (170, 17000, 258, 7, NULL, 2, NULL, NULL, 7002007, NULL, 13),
  -- Chinchou - Hidden Power - TM10
  (170, 17000, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 14),
  -- Chinchou - Ice Beam - TM13
  (170, 17000, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 15),
  -- Chinchou - Blizzard - TM14
  (170, 17000, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 16),
  -- Chinchou - Protect - TM17
  (170, 17000, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 17),
  -- Chinchou - Rain Dance - TM18
  (170, 17000, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 18),
  -- Chinchou - Frustration - TM21
  (170, 17000, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 19),
  -- Chinchou - Thunderbolt - TM24
  (170, 17000, 85, 7, NULL, 2, NULL, NULL, 7002024, NULL, 20),
  -- Chinchou - Thunder - TM25
  (170, 17000, 87, 7, NULL, 2, NULL, NULL, 7002025, NULL, 21),
  -- Chinchou - Return - TM27
  (170, 17000, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 22),
  -- Chinchou - Double Team - TM32
  (170, 17000, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 23),
  -- Chinchou - Shock Wave - TM34
  (170, 17000, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 24),
  -- Chinchou - Facade - TM42
  (170, 17000, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 25),
  -- Chinchou - Secret Power - TM43
  (170, 17000, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 26),
  -- Chinchou - Rest - TM44
  (170, 17000, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 27),
  -- Chinchou - Attract - TM45
  (170, 17000, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 28),
  -- Chinchou - Surf - HM03
  (170, 17000, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 29),
  -- Chinchou - Flash - HM05
  (170, 17000, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 30),
  -- Chinchou - Waterfall - HM07
  (170, 17000, 127, 7, NULL, 3, NULL, NULL, 7003007, NULL, 31),
  -- Chinchou - Dive - HM08
  (170, 17000, 291, 7, NULL, 3, NULL, NULL, 7003008, NULL, 32),
  -- Chinchou - Amnesia - Egg Move
  (170, 17000, 133, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Chinchou - Flail - Egg Move
  (170, 17000, 175, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Chinchou - Screech - Egg Move
  (170, 17000, 103, 7, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Chinchou - Double-Edge - Move Tutor
  (170, 17000, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Chinchou - Endure - Move Tutor
  (170, 17000, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Chinchou - Mimic - Move Tutor
  (170, 17000, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Chinchou - Snore - Move Tutor
  (170, 17000, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Chinchou - Substitute - Move Tutor
  (170, 17000, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Chinchou - Swagger - Move Tutor
  (170, 17000, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Chinchou - Sleep Talk - Move Tutor
  (170, 17000, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Chinchou - Thunder Wave - Move Tutor
  (170, 17000, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Lanturn - Bubble - Level 1
  (171, 17100, 145, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lanturn - Thunder Wave - Level 1
  (171, 17100, 86, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lanturn - Supersonic - Level 1
  (171, 17100, 48, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lanturn - Supersonic - Level 5
  (171, 17100, 48, 7, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Lanturn - Flail - Level 13
  (171, 17100, 175, 7, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Lanturn - Water Gun - Level 17
  (171, 17100, 55, 7, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Lanturn - Spark - Level 25
  (171, 17100, 209, 7, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lanturn - Confuse Ray - Level 32
  (171, 17100, 109, 7, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Lanturn - Take Down - Level 43
  (171, 17100, 36, 7, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Lanturn - Hydro Pump - Level 50
  (171, 17100, 56, 7, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Lanturn - Charge - Level 61
  (171, 17100, 268, 7, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Lanturn - Water Pulse - TM03
  (171, 17100, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 12),
  -- Lanturn - Toxic - TM06
  (171, 17100, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 13),
  -- Lanturn - Hail - TM07
  (171, 17100, 258, 7, NULL, 2, NULL, NULL, 7002007, NULL, 14),
  -- Lanturn - Hidden Power - TM10
  (171, 17100, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 15),
  -- Lanturn - Ice Beam - TM13
  (171, 17100, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 16),
  -- Lanturn - Blizzard - TM14
  (171, 17100, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 17),
  -- Lanturn - Hyper Beam - TM15
  (171, 17100, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 18),
  -- Lanturn - Protect - TM17
  (171, 17100, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 19),
  -- Lanturn - Rain Dance - TM18
  (171, 17100, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 20),
  -- Lanturn - Frustration - TM21
  (171, 17100, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 21),
  -- Lanturn - Thunderbolt - TM24
  (171, 17100, 85, 7, NULL, 2, NULL, NULL, 7002024, NULL, 22),
  -- Lanturn - Thunder - TM25
  (171, 17100, 87, 7, NULL, 2, NULL, NULL, 7002025, NULL, 23),
  -- Lanturn - Return - TM27
  (171, 17100, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 24),
  -- Lanturn - Double Team - TM32
  (171, 17100, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 25),
  -- Lanturn - Shock Wave - TM34
  (171, 17100, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 26),
  -- Lanturn - Facade - TM42
  (171, 17100, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 27),
  -- Lanturn - Secret Power - TM43
  (171, 17100, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 28),
  -- Lanturn - Rest - TM44
  (171, 17100, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 29),
  -- Lanturn - Attract - TM45
  (171, 17100, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 30),
  -- Lanturn - Surf - HM03
  (171, 17100, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 31),
  -- Lanturn - Flash - HM05
  (171, 17100, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 32),
  -- Lanturn - Waterfall - HM07
  (171, 17100, 127, 7, NULL, 3, NULL, NULL, 7003007, NULL, 33),
  -- Lanturn - Dive - HM08
  (171, 17100, 291, 7, NULL, 3, NULL, NULL, 7003008, NULL, 34),
  -- Lanturn - Double-Edge - Move Tutor
  (171, 17100, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Lanturn - Endure - Move Tutor
  (171, 17100, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Lanturn - Mimic - Move Tutor
  (171, 17100, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Lanturn - Snore - Move Tutor
  (171, 17100, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Lanturn - Substitute - Move Tutor
  (171, 17100, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Lanturn - Swagger - Move Tutor
  (171, 17100, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Lanturn - Sleep Talk - Move Tutor
  (171, 17100, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Lanturn - Thunder Wave - Move Tutor
  (171, 17100, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Pichu - Thunder Shock - Level 1
  (172, 17200, 84, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pichu - Charm - Level 1
  (172, 17200, 204, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pichu - Tail Whip - Level 6
  (172, 17200, 39, 7, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Pichu - Thunder Wave - Level 8
  (172, 17200, 86, 7, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pichu - Sweet Kiss - Level 11
  (172, 17200, 186, 7, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Pichu - Toxic - TM06
  (172, 17200, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 6),
  -- Pichu - Hidden Power - TM10
  (172, 17200, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 7),
  -- Pichu - Light Screen - TM16
  (172, 17200, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 8),
  -- Pichu - Protect - TM17
  (172, 17200, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 9),
  -- Pichu - Rain Dance - TM18
  (172, 17200, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 10),
  -- Pichu - Frustration - TM21
  (172, 17200, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 11),
  -- Pichu - Iron Tail - TM23
  (172, 17200, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 12),
  -- Pichu - Thunderbolt - TM24
  (172, 17200, 85, 7, NULL, 2, NULL, NULL, 7002024, NULL, 13),
  -- Pichu - Thunder - TM25
  (172, 17200, 87, 7, NULL, 2, NULL, NULL, 7002025, NULL, 14),
  -- Pichu - Return - TM27
  (172, 17200, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 15),
  -- Pichu - Double Team - TM32
  (172, 17200, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 16),
  -- Pichu - Shock Wave - TM34
  (172, 17200, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 17),
  -- Pichu - Facade - TM42
  (172, 17200, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 18),
  -- Pichu - Secret Power - TM43
  (172, 17200, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 19),
  -- Pichu - Rest - TM44
  (172, 17200, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 20),
  -- Pichu - Attract - TM45
  (172, 17200, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 21),
  -- Pichu - Flash - HM05
  (172, 17200, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 22),
  -- Pichu - Bide - Egg Move
  (172, 17200, 117, 7, NULL, 5, NULL, NULL, NULL, NULL, 23),
  -- Pichu - Charge - Egg Move
  (172, 17200, 268, 7, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Pichu - Double Slap - Egg Move
  (172, 17200, 3, 7, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Pichu - Encore - Egg Move
  (172, 17200, 227, 7, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Pichu - Present - Egg Move
  (172, 17200, 217, 7, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Pichu - Reversal - Egg Move
  (172, 17200, 179, 7, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Pichu - Volt Tackle - Egg Move
  (172, 17200, 344, 7, NULL, 5, NULL, 364, NULL, 'Requires either parent to hold Light Ball in Emerald.', 29),
  -- Pichu - Wish - Egg Move
  (172, 17200, 273, 7, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Pichu - Body Slam - Move Tutor
  (172, 17200, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 31),
  -- Pichu - Counter - Move Tutor
  (172, 17200, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 32),
  -- Pichu - Defense Curl - Move Tutor
  (172, 17200, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Pichu - Double-Edge - Move Tutor
  (172, 17200, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Pichu - Endure - Move Tutor
  (172, 17200, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Pichu - Mega Kick - Move Tutor
  (172, 17200, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Pichu - Mega Punch - Move Tutor
  (172, 17200, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Pichu - Mimic - Move Tutor
  (172, 17200, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Pichu - Mud-Slap - Move Tutor
  (172, 17200, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Pichu - Rollout - Move Tutor
  (172, 17200, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Pichu - Seismic Toss - Move Tutor
  (172, 17200, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Pichu - Sleep Talk - Move Tutor
  (172, 17200, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Pichu - Snore - Move Tutor
  (172, 17200, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Pichu - Substitute - Move Tutor
  (172, 17200, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Pichu - Swagger - Move Tutor
  (172, 17200, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Pichu - Swift - Move Tutor
  (172, 17200, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Pichu - Thunder Wave - Move Tutor
  (172, 17200, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Cleffa - Pound - Level 1
  (173, 17300, 1, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cleffa - Charm - Level 1
  (173, 17300, 204, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cleffa - Encore - Level 4
  (173, 17300, 227, 7, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cleffa - Sing - Level 8
  (173, 17300, 47, 7, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Cleffa - Sweet Kiss - Level 13
  (173, 17300, 186, 7, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cleffa - Magical Leaf - Level 17
  (173, 17300, 345, 7, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Cleffa - Water Pulse - TM03
  (173, 17300, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 7),
  -- Cleffa - Toxic - TM06
  (173, 17300, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 8),
  -- Cleffa - Hidden Power - TM10
  (173, 17300, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 9),
  -- Cleffa - Sunny Day - TM11
  (173, 17300, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 10),
  -- Cleffa - Light Screen - TM16
  (173, 17300, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 11),
  -- Cleffa - Protect - TM17
  (173, 17300, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 12),
  -- Cleffa - Rain Dance - TM18
  (173, 17300, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 13),
  -- Cleffa - Safeguard - TM20
  (173, 17300, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 14),
  -- Cleffa - Frustration - TM21
  (173, 17300, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 15),
  -- Cleffa - Solar Beam - TM22
  (173, 17300, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 16),
  -- Cleffa - Iron Tail - TM23
  (173, 17300, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 17),
  -- Cleffa - Return - TM27
  (173, 17300, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 18),
  -- Cleffa - Dig - TM28
  (173, 17300, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 19),
  -- Cleffa - Psychic - TM29
  (173, 17300, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 20),
  -- Cleffa - Shadow Ball - TM30
  (173, 17300, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 21),
  -- Cleffa - Double Team - TM32
  (173, 17300, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 22),
  -- Cleffa - Reflect - TM33
  (173, 17300, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 23),
  -- Cleffa - Shock Wave - TM34
  (173, 17300, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 24),
  -- Cleffa - Flamethrower - TM35
  (173, 17300, 53, 7, NULL, 2, NULL, NULL, 7002035, NULL, 25),
  -- Cleffa - Fire Blast - TM38
  (173, 17300, 126, 7, NULL, 2, NULL, NULL, 7002038, NULL, 26),
  -- Cleffa - Facade - TM42
  (173, 17300, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 27),
  -- Cleffa - Secret Power - TM43
  (173, 17300, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 28),
  -- Cleffa - Rest - TM44
  (173, 17300, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 29),
  -- Cleffa - Attract - TM45
  (173, 17300, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 30),
  -- Cleffa - Flash - HM05
  (173, 17300, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 31),
  -- Cleffa - Amnesia - Egg Move
  (173, 17300, 133, 7, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Cleffa - Belly Drum - Egg Move
  (173, 17300, 187, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Cleffa - Metronome - Egg Move
  (173, 17300, 118, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Cleffa - Mimic - Egg Move
  (173, 17300, 102, 7, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Cleffa - Present - Egg Move
  (173, 17300, 217, 7, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Cleffa - Splash - Egg Move
  (173, 17300, 150, 7, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cleffa - Substitute - Egg Move
  (173, 17300, 164, 7, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cleffa - Wish - Egg Move
  (173, 17300, 273, 7, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cleffa - Body Slam - Move Tutor
  (173, 17300, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Cleffa - Counter - Move Tutor
  (173, 17300, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Cleffa - Defense Curl - Move Tutor
  (173, 17300, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Cleffa - Double-Edge - Move Tutor
  (173, 17300, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Cleffa - Dream Eater - Move Tutor
  (173, 17300, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Cleffa - Endure - Move Tutor
  (173, 17300, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Cleffa - Icy Wind - Move Tutor
  (173, 17300, 196, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Cleffa - Mega Kick - Move Tutor
  (173, 17300, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Cleffa - Mega Punch - Move Tutor
  (173, 17300, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Cleffa - Metronome - Move Tutor
  (173, 17300, 118, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Cleffa - Mimic - Move Tutor
  (173, 17300, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Cleffa - Mud-Slap - Move Tutor
  (173, 17300, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Cleffa - Psych Up - Move Tutor
  (173, 17300, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Cleffa - Rollout - Move Tutor
  (173, 17300, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Cleffa - Seismic Toss - Move Tutor
  (173, 17300, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Cleffa - Sleep Talk - Move Tutor
  (173, 17300, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Cleffa - Snore - Move Tutor
  (173, 17300, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Cleffa - Soft-Boiled - Move Tutor
  (173, 17300, 135, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Cleffa - Substitute - Move Tutor
  (173, 17300, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 58),
  -- Cleffa - Swagger - Move Tutor
  (173, 17300, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 59),
  -- Cleffa - Thunder Wave - Move Tutor
  (173, 17300, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 60),
  -- Igglybuff - Sing - Level 1
  (174, 17400, 47, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Igglybuff - Charm - Level 1
  (174, 17400, 204, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Igglybuff - Defense Curl - Level 4
  (174, 17400, 111, 7, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Igglybuff - Pound - Level 9
  (174, 17400, 1, 7, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Igglybuff - Sweet Kiss - Level 14
  (174, 17400, 186, 7, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Igglybuff - Water Pulse - TM03
  (174, 17400, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 6),
  -- Igglybuff - Toxic - TM06
  (174, 17400, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 7),
  -- Igglybuff - Hidden Power - TM10
  (174, 17400, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 8),
  -- Igglybuff - Sunny Day - TM11
  (174, 17400, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 9),
  -- Igglybuff - Light Screen - TM16
  (174, 17400, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 10),
  -- Igglybuff - Protect - TM17
  (174, 17400, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 11),
  -- Igglybuff - Rain Dance - TM18
  (174, 17400, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 12),
  -- Igglybuff - Safeguard - TM20
  (174, 17400, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 13),
  -- Igglybuff - Frustration - TM21
  (174, 17400, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 14),
  -- Igglybuff - Solar Beam - TM22
  (174, 17400, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 15),
  -- Igglybuff - Return - TM27
  (174, 17400, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 16),
  -- Igglybuff - Dig - TM28
  (174, 17400, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 17),
  -- Igglybuff - Psychic - TM29
  (174, 17400, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 18),
  -- Igglybuff - Shadow Ball - TM30
  (174, 17400, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 19),
  -- Igglybuff - Double Team - TM32
  (174, 17400, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 20),
  -- Igglybuff - Reflect - TM33
  (174, 17400, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 21),
  -- Igglybuff - Shock Wave - TM34
  (174, 17400, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 22),
  -- Igglybuff - Flamethrower - TM35
  (174, 17400, 53, 7, NULL, 2, NULL, NULL, 7002035, NULL, 23),
  -- Igglybuff - Fire Blast - TM38
  (174, 17400, 126, 7, NULL, 2, NULL, NULL, 7002038, NULL, 24),
  -- Igglybuff - Facade - TM42
  (174, 17400, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 25),
  -- Igglybuff - Secret Power - TM43
  (174, 17400, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 26),
  -- Igglybuff - Rest - TM44
  (174, 17400, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 27),
  -- Igglybuff - Attract - TM45
  (174, 17400, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 28),
  -- Igglybuff - Flash - HM05
  (174, 17400, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 29),
  -- Igglybuff - Feint Attack - Egg Move
  (174, 17400, 185, 7, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Igglybuff - Fake Tears - Egg Move
  (174, 17400, 313, 7, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Igglybuff - Perish Song - Egg Move
  (174, 17400, 195, 7, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Igglybuff - Present - Egg Move
  (174, 17400, 217, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Igglybuff - Wish - Egg Move
  (174, 17400, 273, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Igglybuff - Body Slam - Move Tutor
  (174, 17400, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Igglybuff - Counter - Move Tutor
  (174, 17400, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Igglybuff - Defense Curl - Move Tutor
  (174, 17400, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Igglybuff - Double-Edge - Move Tutor
  (174, 17400, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Igglybuff - Dream Eater - Move Tutor
  (174, 17400, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Igglybuff - Endure - Move Tutor
  (174, 17400, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Igglybuff - Icy Wind - Move Tutor
  (174, 17400, 196, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Igglybuff - Mega Kick - Move Tutor
  (174, 17400, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Igglybuff - Mega Punch - Move Tutor
  (174, 17400, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Igglybuff - Mimic - Move Tutor
  (174, 17400, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Igglybuff - Mud-Slap - Move Tutor
  (174, 17400, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Igglybuff - Psych Up - Move Tutor
  (174, 17400, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Igglybuff - Rollout - Move Tutor
  (174, 17400, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Igglybuff - Seismic Toss - Move Tutor
  (174, 17400, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Igglybuff - Sleep Talk - Move Tutor
  (174, 17400, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Igglybuff - Snore - Move Tutor
  (174, 17400, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Igglybuff - Substitute - Move Tutor
  (174, 17400, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Igglybuff - Swagger - Move Tutor
  (174, 17400, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Igglybuff - Thunder Wave - Move Tutor
  (174, 17400, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Togepi - Growl - Level 1
  (175, 17500, 45, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togepi - Charm - Level 1
  (175, 17500, 204, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togepi - Metronome - Level 4
  (175, 17500, 118, 7, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Togepi - Sweet Kiss - Level 9
  (175, 17500, 186, 7, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Togepi - Yawn - Level 13
  (175, 17500, 281, 7, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Togepi - Encore - Level 17
  (175, 17500, 227, 7, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Togepi - Ancient Power - Level 21
  (175, 17500, 246, 7, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Togepi - Follow Me - Level 25
  (175, 17500, 266, 7, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Togepi - Wish - Level 29
  (175, 17500, 273, 7, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Togepi - Safeguard - Level 33
  (175, 17500, 219, 7, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Togepi - Double-Edge - Level 37
  (175, 17500, 38, 7, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Togepi - Baton Pass - Level 41
  (175, 17500, 226, 7, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Togepi - Water Pulse - TM03
  (175, 17500, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 13),
  -- Togepi - Toxic - TM06
  (175, 17500, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 14),
  -- Togepi - Hidden Power - TM10
  (175, 17500, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 15),
  -- Togepi - Sunny Day - TM11
  (175, 17500, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 16),
  -- Togepi - Light Screen - TM16
  (175, 17500, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 17),
  -- Togepi - Protect - TM17
  (175, 17500, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 18),
  -- Togepi - Rain Dance - TM18
  (175, 17500, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 19),
  -- Togepi - Safeguard - TM20
  (175, 17500, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 20),
  -- Togepi - Frustration - TM21
  (175, 17500, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 21),
  -- Togepi - Solar Beam - TM22
  (175, 17500, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 22),
  -- Togepi - Return - TM27
  (175, 17500, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 23),
  -- Togepi - Psychic - TM29
  (175, 17500, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 24),
  -- Togepi - Shadow Ball - TM30
  (175, 17500, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 25),
  -- Togepi - Double Team - TM32
  (175, 17500, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 26),
  -- Togepi - Reflect - TM33
  (175, 17500, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 27),
  -- Togepi - Shock Wave - TM34
  (175, 17500, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 28),
  -- Togepi - Flamethrower - TM35
  (175, 17500, 53, 7, NULL, 2, NULL, NULL, 7002035, NULL, 29),
  -- Togepi - Fire Blast - TM38
  (175, 17500, 126, 7, NULL, 2, NULL, NULL, 7002038, NULL, 30),
  -- Togepi - Facade - TM42
  (175, 17500, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 31),
  -- Togepi - Secret Power - TM43
  (175, 17500, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 32),
  -- Togepi - Rest - TM44
  (175, 17500, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 33),
  -- Togepi - Attract - TM45
  (175, 17500, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 34),
  -- Togepi - Flash - HM05
  (175, 17500, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 35),
  -- Togepi - Rock Smash - HM06
  (175, 17500, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 36),
  -- Togepi - Foresight - Egg Move
  (175, 17500, 193, 7, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Togepi - Future Sight - Egg Move
  (175, 17500, 248, 7, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Togepi - Mirror Move - Egg Move
  (175, 17500, 119, 7, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Togepi - Peck - Egg Move
  (175, 17500, 64, 7, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Togepi - Present - Egg Move
  (175, 17500, 217, 7, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Togepi - Psych Up - Egg Move
  (175, 17500, 244, 7, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Togepi - Substitute - Egg Move
  (175, 17500, 164, 7, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Togepi - Body Slam - Move Tutor
  (175, 17500, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Togepi - Counter - Move Tutor
  (175, 17500, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Togepi - Defense Curl - Move Tutor
  (175, 17500, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Togepi - Double-Edge - Move Tutor
  (175, 17500, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Togepi - Dream Eater - Move Tutor
  (175, 17500, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Togepi - Endure - Move Tutor
  (175, 17500, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Togepi - Mega Kick - Move Tutor
  (175, 17500, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Togepi - Mega Punch - Move Tutor
  (175, 17500, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Togepi - Metronome - Move Tutor
  (175, 17500, 118, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Togepi - Mimic - Move Tutor
  (175, 17500, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Togepi - Mud-Slap - Move Tutor
  (175, 17500, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Togepi - Psych Up - Move Tutor
  (175, 17500, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Togepi - Rollout - Move Tutor
  (175, 17500, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Togepi - Seismic Toss - Move Tutor
  (175, 17500, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Togepi - Sleep Talk - Move Tutor
  (175, 17500, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 58),
  -- Togepi - Snore - Move Tutor
  (175, 17500, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 59),
  -- Togepi - Soft-Boiled - Move Tutor
  (175, 17500, 135, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 60),
  -- Togepi - Substitute - Move Tutor
  (175, 17500, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 61),
  -- Togepi - Swagger - Move Tutor
  (175, 17500, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 62),
  -- Togepi - Swift - Move Tutor
  (175, 17500, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 63),
  -- Togepi - Thunder Wave - Move Tutor
  (175, 17500, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 64),
  -- Togetic - Magical Leaf - Level 1
  (176, 17600, 345, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togetic - Growl - Level 1
  (176, 17600, 45, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togetic - Charm - Level 1
  (176, 17600, 204, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Togetic - Metronome - Level 1
  (176, 17600, 118, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Togetic - Sweet Kiss - Level 1
  (176, 17600, 186, 7, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Togetic - Metronome - Level 4
  (176, 17600, 118, 7, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Togetic - Sweet Kiss - Level 9
  (176, 17600, 186, 7, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Togetic - Yawn - Level 13
  (176, 17600, 281, 7, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Togetic - Encore - Level 17
  (176, 17600, 227, 7, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Togetic - Ancient Power - Level 21
  (176, 17600, 246, 7, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Togetic - Follow Me - Level 25
  (176, 17600, 266, 7, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Togetic - Wish - Level 29
  (176, 17600, 273, 7, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Togetic - Safeguard - Level 33
  (176, 17600, 219, 7, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Togetic - Double-Edge - Level 37
  (176, 17600, 38, 7, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Togetic - Baton Pass - Level 41
  (176, 17600, 226, 7, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Togetic - Focus Punch - TM01
  (176, 17600, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 16),
  -- Togetic - Water Pulse - TM03
  (176, 17600, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 17),
  -- Togetic - Toxic - TM06
  (176, 17600, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 18),
  -- Togetic - Hidden Power - TM10
  (176, 17600, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 19),
  -- Togetic - Sunny Day - TM11
  (176, 17600, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 20),
  -- Togetic - Hyper Beam - TM15
  (176, 17600, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 21),
  -- Togetic - Light Screen - TM16
  (176, 17600, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 22),
  -- Togetic - Protect - TM17
  (176, 17600, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 23),
  -- Togetic - Rain Dance - TM18
  (176, 17600, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 24),
  -- Togetic - Safeguard - TM20
  (176, 17600, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 25),
  -- Togetic - Frustration - TM21
  (176, 17600, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 26),
  -- Togetic - Solar Beam - TM22
  (176, 17600, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 27),
  -- Togetic - Return - TM27
  (176, 17600, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 28),
  -- Togetic - Psychic - TM29
  (176, 17600, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 29),
  -- Togetic - Shadow Ball - TM30
  (176, 17600, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 30),
  -- Togetic - Brick Break - TM31
  (176, 17600, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 31),
  -- Togetic - Double Team - TM32
  (176, 17600, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 32),
  -- Togetic - Reflect - TM33
  (176, 17600, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 33),
  -- Togetic - Shock Wave - TM34
  (176, 17600, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 34),
  -- Togetic - Flamethrower - TM35
  (176, 17600, 53, 7, NULL, 2, NULL, NULL, 7002035, NULL, 35),
  -- Togetic - Fire Blast - TM38
  (176, 17600, 126, 7, NULL, 2, NULL, NULL, 7002038, NULL, 36),
  -- Togetic - Aerial Ace - TM40
  (176, 17600, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 37),
  -- Togetic - Facade - TM42
  (176, 17600, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 38),
  -- Togetic - Secret Power - TM43
  (176, 17600, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 39),
  -- Togetic - Rest - TM44
  (176, 17600, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 40),
  -- Togetic - Attract - TM45
  (176, 17600, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 41),
  -- Togetic - Steel Wing - TM47
  (176, 17600, 211, 7, NULL, 2, NULL, NULL, 7002047, NULL, 42),
  -- Togetic - Fly - HM02
  (176, 17600, 19, 7, NULL, 3, NULL, NULL, 7003002, NULL, 43),
  -- Togetic - Flash - HM05
  (176, 17600, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 44),
  -- Togetic - Rock Smash - HM06
  (176, 17600, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 45),
  -- Togetic - Body Slam - Move Tutor
  (176, 17600, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Togetic - Counter - Move Tutor
  (176, 17600, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Togetic - Defense Curl - Move Tutor
  (176, 17600, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Togetic - Double-Edge - Move Tutor
  (176, 17600, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Togetic - Dream Eater - Move Tutor
  (176, 17600, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Togetic - Endure - Move Tutor
  (176, 17600, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Togetic - Mega Kick - Move Tutor
  (176, 17600, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Togetic - Mega Punch - Move Tutor
  (176, 17600, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Togetic - Metronome - Move Tutor
  (176, 17600, 118, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Togetic - Mimic - Move Tutor
  (176, 17600, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Togetic - Mud-Slap - Move Tutor
  (176, 17600, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Togetic - Psych Up - Move Tutor
  (176, 17600, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Togetic - Rollout - Move Tutor
  (176, 17600, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 58),
  -- Togetic - Seismic Toss - Move Tutor
  (176, 17600, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 59),
  -- Togetic - Sleep Talk - Move Tutor
  (176, 17600, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 60),
  -- Togetic - Snore - Move Tutor
  (176, 17600, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 61),
  -- Togetic - Soft-Boiled - Move Tutor
  (176, 17600, 135, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 62),
  -- Togetic - Substitute - Move Tutor
  (176, 17600, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 63),
  -- Togetic - Swagger - Move Tutor
  (176, 17600, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 64),
  -- Togetic - Swift - Move Tutor
  (176, 17600, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 65),
  -- Togetic - Thunder Wave - Move Tutor
  (176, 17600, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 66),
  -- Natu - Peck - Level 1
  (177, 17700, 64, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Natu - Leer - Level 1
  (177, 17700, 43, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Natu - Night Shade - Level 10
  (177, 17700, 101, 7, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Natu - Teleport - Level 20
  (177, 17700, 100, 7, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Natu - Wish - Level 30
  (177, 17700, 273, 7, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Natu - Future Sight - Level 30
  (177, 17700, 248, 7, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Natu - Confuse Ray - Level 40
  (177, 17700, 109, 7, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Natu - Psychic - Level 50
  (177, 17700, 94, 7, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Natu - Calm Mind - TM04
  (177, 17700, 347, 7, NULL, 2, NULL, NULL, 7002004, NULL, 9),
  -- Natu - Toxic - TM06
  (177, 17700, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 10),
  -- Natu - Hidden Power - TM10
  (177, 17700, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 11),
  -- Natu - Sunny Day - TM11
  (177, 17700, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 12),
  -- Natu - Light Screen - TM16
  (177, 17700, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 13),
  -- Natu - Protect - TM17
  (177, 17700, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 14),
  -- Natu - Rain Dance - TM18
  (177, 17700, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 15),
  -- Natu - Giga Drain - TM19
  (177, 17700, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 16),
  -- Natu - Frustration - TM21
  (177, 17700, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 17),
  -- Natu - Solar Beam - TM22
  (177, 17700, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 18),
  -- Natu - Return - TM27
  (177, 17700, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 19),
  -- Natu - Psychic - TM29
  (177, 17700, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 20),
  -- Natu - Shadow Ball - TM30
  (177, 17700, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 21),
  -- Natu - Double Team - TM32
  (177, 17700, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 22),
  -- Natu - Reflect - TM33
  (177, 17700, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 23),
  -- Natu - Aerial Ace - TM40
  (177, 17700, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 24),
  -- Natu - Facade - TM42
  (177, 17700, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 25),
  -- Natu - Secret Power - TM43
  (177, 17700, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 26),
  -- Natu - Rest - TM44
  (177, 17700, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 27),
  -- Natu - Attract - TM45
  (177, 17700, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 28),
  -- Natu - Thief - TM46
  (177, 17700, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 29),
  -- Natu - Steel Wing - TM47
  (177, 17700, 211, 7, NULL, 2, NULL, NULL, 7002047, NULL, 30),
  -- Natu - Skill Swap - TM48
  (177, 17700, 285, 7, NULL, 2, NULL, NULL, 7002048, NULL, 31),
  -- Natu - Flash - HM05
  (177, 17700, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 32),
  -- Natu - Drill Peck - Egg Move
  (177, 17700, 65, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Natu - Feint Attack - Egg Move
  (177, 17700, 185, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Natu - Feather Dance - Egg Move
  (177, 17700, 297, 7, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Natu - Haze - Egg Move
  (177, 17700, 114, 7, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Natu - Psych Up - Egg Move
  (177, 17700, 244, 7, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Natu - Quick Attack - Egg Move
  (177, 17700, 98, 7, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Natu - Refresh - Egg Move
  (177, 17700, 287, 7, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Natu - Steel Wing - Egg Move
  (177, 17700, 211, 7, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Natu - Double-Edge - Move Tutor
  (177, 17700, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Natu - Dream Eater - Move Tutor
  (177, 17700, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Natu - Endure - Move Tutor
  (177, 17700, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Natu - Mimic - Move Tutor
  (177, 17700, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Natu - Psych Up - Move Tutor
  (177, 17700, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Natu - Sleep Talk - Move Tutor
  (177, 17700, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Natu - Snore - Move Tutor
  (177, 17700, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Natu - Substitute - Move Tutor
  (177, 17700, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Natu - Swagger - Move Tutor
  (177, 17700, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Natu - Swift - Move Tutor
  (177, 17700, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Natu - Thunder Wave - Move Tutor
  (177, 17700, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Xatu - Peck - Level 1
  (178, 17800, 64, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Xatu - Leer - Level 1
  (178, 17800, 43, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Xatu - Night Shade - Level 10
  (178, 17800, 101, 7, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Xatu - Teleport - Level 20
  (178, 17800, 100, 7, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Xatu - Wish - Level 35
  (178, 17800, 273, 7, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Xatu - Future Sight - Level 35
  (178, 17800, 248, 7, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Xatu - Confuse Ray - Level 50
  (178, 17800, 109, 7, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Xatu - Psychic - Level 65
  (178, 17800, 94, 7, NULL, 1, 65, NULL, NULL, NULL, 8),
  -- Xatu - Calm Mind - TM04
  (178, 17800, 347, 7, NULL, 2, NULL, NULL, 7002004, NULL, 9),
  -- Xatu - Toxic - TM06
  (178, 17800, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 10),
  -- Xatu - Hidden Power - TM10
  (178, 17800, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 11),
  -- Xatu - Sunny Day - TM11
  (178, 17800, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 12),
  -- Xatu - Hyper Beam - TM15
  (178, 17800, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 13),
  -- Xatu - Light Screen - TM16
  (178, 17800, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 14),
  -- Xatu - Protect - TM17
  (178, 17800, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 15),
  -- Xatu - Rain Dance - TM18
  (178, 17800, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 16),
  -- Xatu - Giga Drain - TM19
  (178, 17800, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 17),
  -- Xatu - Frustration - TM21
  (178, 17800, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 18),
  -- Xatu - Solar Beam - TM22
  (178, 17800, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 19),
  -- Xatu - Return - TM27
  (178, 17800, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 20),
  -- Xatu - Psychic - TM29
  (178, 17800, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 21),
  -- Xatu - Shadow Ball - TM30
  (178, 17800, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 22),
  -- Xatu - Double Team - TM32
  (178, 17800, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 23),
  -- Xatu - Reflect - TM33
  (178, 17800, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 24),
  -- Xatu - Aerial Ace - TM40
  (178, 17800, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 25),
  -- Xatu - Facade - TM42
  (178, 17800, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 26),
  -- Xatu - Secret Power - TM43
  (178, 17800, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 27),
  -- Xatu - Rest - TM44
  (178, 17800, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 28),
  -- Xatu - Attract - TM45
  (178, 17800, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 29),
  -- Xatu - Thief - TM46
  (178, 17800, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 30),
  -- Xatu - Steel Wing - TM47
  (178, 17800, 211, 7, NULL, 2, NULL, NULL, 7002047, NULL, 31),
  -- Xatu - Skill Swap - TM48
  (178, 17800, 285, 7, NULL, 2, NULL, NULL, 7002048, NULL, 32),
  -- Xatu - Fly - HM02
  (178, 17800, 19, 7, NULL, 3, NULL, NULL, 7003002, NULL, 33),
  -- Xatu - Flash - HM05
  (178, 17800, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 34),
  -- Xatu - Double-Edge - Move Tutor
  (178, 17800, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Xatu - Dream Eater - Move Tutor
  (178, 17800, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Xatu - Endure - Move Tutor
  (178, 17800, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Xatu - Mimic - Move Tutor
  (178, 17800, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Xatu - Psych Up - Move Tutor
  (178, 17800, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Xatu - Sleep Talk - Move Tutor
  (178, 17800, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Xatu - Snore - Move Tutor
  (178, 17800, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Xatu - Substitute - Move Tutor
  (178, 17800, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Xatu - Swagger - Move Tutor
  (178, 17800, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Xatu - Swift - Move Tutor
  (178, 17800, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Xatu - Thunder Wave - Move Tutor
  (178, 17800, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Mareep - Tackle - Level 1
  (179, 17900, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mareep - Growl - Level 1
  (179, 17900, 45, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mareep - Thunder Shock - Level 9
  (179, 17900, 84, 7, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Mareep - Thunder Wave - Level 16
  (179, 17900, 86, 7, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Mareep - Cotton Spore - Level 23
  (179, 17900, 178, 7, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Mareep - Light Screen - Level 30
  (179, 17900, 113, 7, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Mareep - Thunder - Level 37
  (179, 17900, 87, 7, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Mareep - Toxic - TM06
  (179, 17900, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 8),
  -- Mareep - Hidden Power - TM10
  (179, 17900, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 9),
  -- Mareep - Light Screen - TM16
  (179, 17900, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 10),
  -- Mareep - Protect - TM17
  (179, 17900, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 11),
  -- Mareep - Rain Dance - TM18
  (179, 17900, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 12),
  -- Mareep - Frustration - TM21
  (179, 17900, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 13),
  -- Mareep - Iron Tail - TM23
  (179, 17900, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 14),
  -- Mareep - Thunderbolt - TM24
  (179, 17900, 85, 7, NULL, 2, NULL, NULL, 7002024, NULL, 15),
  -- Mareep - Thunder - TM25
  (179, 17900, 87, 7, NULL, 2, NULL, NULL, 7002025, NULL, 16),
  -- Mareep - Return - TM27
  (179, 17900, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 17),
  -- Mareep - Double Team - TM32
  (179, 17900, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 18),
  -- Mareep - Shock Wave - TM34
  (179, 17900, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 19),
  -- Mareep - Facade - TM42
  (179, 17900, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 20),
  -- Mareep - Secret Power - TM43
  (179, 17900, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 21),
  -- Mareep - Rest - TM44
  (179, 17900, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 22),
  -- Mareep - Attract - TM45
  (179, 17900, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 23),
  -- Mareep - Flash - HM05
  (179, 17900, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 24),
  -- Mareep - Body Slam - Egg Move
  (179, 17900, 34, 7, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Mareep - Charge - Egg Move
  (179, 17900, 268, 7, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Mareep - Odor Sleuth - Egg Move
  (179, 17900, 316, 7, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Mareep - Reflect - Egg Move
  (179, 17900, 115, 7, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Mareep - Safeguard - Egg Move
  (179, 17900, 219, 7, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Mareep - Screech - Egg Move
  (179, 17900, 103, 7, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Mareep - Take Down - Egg Move
  (179, 17900, 36, 7, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Mareep - Body Slam - Move Tutor
  (179, 17900, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 32),
  -- Mareep - Defense Curl - Move Tutor
  (179, 17900, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Mareep - Double-Edge - Move Tutor
  (179, 17900, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Mareep - Endure - Move Tutor
  (179, 17900, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Mareep - Mimic - Move Tutor
  (179, 17900, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Mareep - Sleep Talk - Move Tutor
  (179, 17900, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Mareep - Snore - Move Tutor
  (179, 17900, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Mareep - Substitute - Move Tutor
  (179, 17900, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Mareep - Swagger - Move Tutor
  (179, 17900, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Mareep - Swift - Move Tutor
  (179, 17900, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Mareep - Thunder Wave - Move Tutor
  (179, 17900, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Flaaffy - Tackle - Level 1
  (180, 18000, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flaaffy - Growl - Level 1
  (180, 18000, 45, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flaaffy - Thunder Shock - Level 1
  (180, 18000, 84, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flaaffy - Thunder Shock - Level 9
  (180, 18000, 84, 7, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Flaaffy - Thunder Wave - Level 18
  (180, 18000, 86, 7, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Flaaffy - Cotton Spore - Level 27
  (180, 18000, 178, 7, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Flaaffy - Light Screen - Level 36
  (180, 18000, 113, 7, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Flaaffy - Thunder - Level 45
  (180, 18000, 87, 7, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Flaaffy - Focus Punch - TM01
  (180, 18000, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 9),
  -- Flaaffy - Toxic - TM06
  (180, 18000, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 10),
  -- Flaaffy - Hidden Power - TM10
  (180, 18000, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 11),
  -- Flaaffy - Light Screen - TM16
  (180, 18000, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 12),
  -- Flaaffy - Protect - TM17
  (180, 18000, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 13),
  -- Flaaffy - Rain Dance - TM18
  (180, 18000, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 14),
  -- Flaaffy - Frustration - TM21
  (180, 18000, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 15),
  -- Flaaffy - Iron Tail - TM23
  (180, 18000, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 16),
  -- Flaaffy - Thunderbolt - TM24
  (180, 18000, 85, 7, NULL, 2, NULL, NULL, 7002024, NULL, 17),
  -- Flaaffy - Thunder - TM25
  (180, 18000, 87, 7, NULL, 2, NULL, NULL, 7002025, NULL, 18),
  -- Flaaffy - Return - TM27
  (180, 18000, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 19),
  -- Flaaffy - Brick Break - TM31
  (180, 18000, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 20),
  -- Flaaffy - Double Team - TM32
  (180, 18000, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 21),
  -- Flaaffy - Shock Wave - TM34
  (180, 18000, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 22),
  -- Flaaffy - Facade - TM42
  (180, 18000, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 23),
  -- Flaaffy - Secret Power - TM43
  (180, 18000, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 24),
  -- Flaaffy - Rest - TM44
  (180, 18000, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 25),
  -- Flaaffy - Attract - TM45
  (180, 18000, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 26),
  -- Flaaffy - Strength - HM04
  (180, 18000, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 27),
  -- Flaaffy - Flash - HM05
  (180, 18000, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 28),
  -- Flaaffy - Rock Smash - HM06
  (180, 18000, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 29),
  -- Flaaffy - Body Slam - Move Tutor
  (180, 18000, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 30),
  -- Flaaffy - Counter - Move Tutor
  (180, 18000, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 31),
  -- Flaaffy - Defense Curl - Move Tutor
  (180, 18000, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 32),
  -- Flaaffy - Double-Edge - Move Tutor
  (180, 18000, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Flaaffy - Dynamic Punch - Move Tutor
  (180, 18000, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Flaaffy - Endure - Move Tutor
  (180, 18000, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Flaaffy - Fire Punch - Move Tutor
  (180, 18000, 7, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Flaaffy - Mega Kick - Move Tutor
  (180, 18000, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Flaaffy - Mega Punch - Move Tutor
  (180, 18000, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Flaaffy - Mimic - Move Tutor
  (180, 18000, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Flaaffy - Seismic Toss - Move Tutor
  (180, 18000, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Flaaffy - Sleep Talk - Move Tutor
  (180, 18000, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Flaaffy - Snore - Move Tutor
  (180, 18000, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Flaaffy - Substitute - Move Tutor
  (180, 18000, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Flaaffy - Swagger - Move Tutor
  (180, 18000, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Flaaffy - Swift - Move Tutor
  (180, 18000, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Flaaffy - Thunder Punch - Move Tutor
  (180, 18000, 9, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Flaaffy - Thunder Wave - Move Tutor
  (180, 18000, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Ampharos - Tackle - Level 1
  (181, 18100, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ampharos - Growl - Level 1
  (181, 18100, 45, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ampharos - Thunder Shock - Level 1
  (181, 18100, 84, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ampharos - Thunder Wave - Level 1
  (181, 18100, 86, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ampharos - Thunder Shock - Level 9
  (181, 18100, 84, 7, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ampharos - Thunder Wave - Level 18
  (181, 18100, 86, 7, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Ampharos - Cotton Spore - Level 27
  (181, 18100, 178, 7, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Ampharos - Thunder Punch - Level 30
  (181, 18100, 9, 7, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Ampharos - Light Screen - Level 42
  (181, 18100, 113, 7, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Ampharos - Thunder - Level 57
  (181, 18100, 87, 7, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Ampharos - Focus Punch - TM01
  (181, 18100, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 11),
  -- Ampharos - Toxic - TM06
  (181, 18100, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Ampharos - Hidden Power - TM10
  (181, 18100, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 13),
  -- Ampharos - Hyper Beam - TM15
  (181, 18100, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 14),
  -- Ampharos - Light Screen - TM16
  (181, 18100, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 15),
  -- Ampharos - Protect - TM17
  (181, 18100, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 16),
  -- Ampharos - Rain Dance - TM18
  (181, 18100, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 17),
  -- Ampharos - Frustration - TM21
  (181, 18100, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 18),
  -- Ampharos - Iron Tail - TM23
  (181, 18100, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 19),
  -- Ampharos - Thunderbolt - TM24
  (181, 18100, 85, 7, NULL, 2, NULL, NULL, 7002024, NULL, 20),
  -- Ampharos - Thunder - TM25
  (181, 18100, 87, 7, NULL, 2, NULL, NULL, 7002025, NULL, 21),
  -- Ampharos - Return - TM27
  (181, 18100, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 22),
  -- Ampharos - Brick Break - TM31
  (181, 18100, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 23),
  -- Ampharos - Double Team - TM32
  (181, 18100, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 24),
  -- Ampharos - Shock Wave - TM34
  (181, 18100, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 25),
  -- Ampharos - Facade - TM42
  (181, 18100, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 26),
  -- Ampharos - Secret Power - TM43
  (181, 18100, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 27),
  -- Ampharos - Rest - TM44
  (181, 18100, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 28),
  -- Ampharos - Attract - TM45
  (181, 18100, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 29),
  -- Ampharos - Strength - HM04
  (181, 18100, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 30),
  -- Ampharos - Flash - HM05
  (181, 18100, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 31),
  -- Ampharos - Rock Smash - HM06
  (181, 18100, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 32),
  -- Ampharos - Body Slam - Move Tutor
  (181, 18100, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Ampharos - Counter - Move Tutor
  (181, 18100, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Ampharos - Defense Curl - Move Tutor
  (181, 18100, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Ampharos - Double-Edge - Move Tutor
  (181, 18100, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Ampharos - Dynamic Punch - Move Tutor
  (181, 18100, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Ampharos - Endure - Move Tutor
  (181, 18100, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Ampharos - Fire Punch - Move Tutor
  (181, 18100, 7, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Ampharos - Mega Kick - Move Tutor
  (181, 18100, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Ampharos - Mega Punch - Move Tutor
  (181, 18100, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Ampharos - Mimic - Move Tutor
  (181, 18100, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Ampharos - Seismic Toss - Move Tutor
  (181, 18100, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Ampharos - Sleep Talk - Move Tutor
  (181, 18100, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Ampharos - Snore - Move Tutor
  (181, 18100, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Ampharos - Substitute - Move Tutor
  (181, 18100, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Ampharos - Swagger - Move Tutor
  (181, 18100, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Ampharos - Swift - Move Tutor
  (181, 18100, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Ampharos - Thunder Punch - Move Tutor
  (181, 18100, 9, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Ampharos - Thunder Wave - Move Tutor
  (181, 18100, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Bellossom - Absorb - Level 1
  (182, 18200, 71, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellossom - Sweet Scent - Level 1
  (182, 18200, 230, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bellossom - Stun Spore - Level 1
  (182, 18200, 78, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bellossom - Magical Leaf - Level 1
  (182, 18200, 345, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bellossom - Petal Dance - Level 44
  (182, 18200, 80, 7, NULL, 1, 44, NULL, NULL, NULL, 5),
  -- Bellossom - Solar Beam - Level 55
  (182, 18200, 76, 7, NULL, 1, 55, NULL, NULL, NULL, 6),
  -- Bellossom - Toxic - TM06
  (182, 18200, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 7),
  -- Bellossom - Bullet Seed - TM09
  (182, 18200, 331, 7, NULL, 2, NULL, NULL, 7002009, NULL, 8),
  -- Bellossom - Hidden Power - TM10
  (182, 18200, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 9),
  -- Bellossom - Sunny Day - TM11
  (182, 18200, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 10),
  -- Bellossom - Hyper Beam - TM15
  (182, 18200, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 11),
  -- Bellossom - Protect - TM17
  (182, 18200, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 12),
  -- Bellossom - Giga Drain - TM19
  (182, 18200, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 13),
  -- Bellossom - Safeguard - TM20
  (182, 18200, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 14),
  -- Bellossom - Frustration - TM21
  (182, 18200, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 15),
  -- Bellossom - Solar Beam - TM22
  (182, 18200, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 16),
  -- Bellossom - Return - TM27
  (182, 18200, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 17),
  -- Bellossom - Double Team - TM32
  (182, 18200, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 18),
  -- Bellossom - Sludge Bomb - TM36
  (182, 18200, 188, 7, NULL, 2, NULL, NULL, 7002036, NULL, 19),
  -- Bellossom - Facade - TM42
  (182, 18200, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 20),
  -- Bellossom - Secret Power - TM43
  (182, 18200, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 21),
  -- Bellossom - Rest - TM44
  (182, 18200, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 22),
  -- Bellossom - Attract - TM45
  (182, 18200, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 23),
  -- Bellossom - Cut - HM01
  (182, 18200, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 24),
  -- Bellossom - Flash - HM05
  (182, 18200, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 25),
  -- Bellossom - Double-Edge - Move Tutor
  (182, 18200, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 26),
  -- Bellossom - Endure - Move Tutor
  (182, 18200, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 27),
  -- Bellossom - Mimic - Move Tutor
  (182, 18200, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 28),
  -- Bellossom - Sleep Talk - Move Tutor
  (182, 18200, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 29),
  -- Bellossom - Snore - Move Tutor
  (182, 18200, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 30),
  -- Bellossom - Substitute - Move Tutor
  (182, 18200, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 31),
  -- Bellossom - Swagger - Move Tutor
  (182, 18200, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 32),
  -- Bellossom - Swords Dance - Move Tutor
  (182, 18200, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Marill - Tackle - Level 1
  (183, 18300, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marill - Defense Curl - Level 3
  (183, 18300, 111, 7, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Marill - Tail Whip - Level 6
  (183, 18300, 39, 7, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Marill - Water Gun - Level 10
  (183, 18300, 55, 7, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Marill - Rollout - Level 15
  (183, 18300, 205, 7, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Marill - Bubble Beam - Level 21
  (183, 18300, 61, 7, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Marill - Double-Edge - Level 28
  (183, 18300, 38, 7, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Marill - Rain Dance - Level 36
  (183, 18300, 240, 7, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Marill - Hydro Pump - Level 45
  (183, 18300, 56, 7, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Marill - Focus Punch - TM01
  (183, 18300, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 10),
  -- Marill - Water Pulse - TM03
  (183, 18300, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 11),
  -- Marill - Toxic - TM06
  (183, 18300, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Marill - Hail - TM07
  (183, 18300, 258, 7, NULL, 2, NULL, NULL, 7002007, NULL, 13),
  -- Marill - Hidden Power - TM10
  (183, 18300, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 14),
  -- Marill - Ice Beam - TM13
  (183, 18300, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 15),
  -- Marill - Blizzard - TM14
  (183, 18300, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 16),
  -- Marill - Protect - TM17
  (183, 18300, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 17),
  -- Marill - Rain Dance - TM18
  (183, 18300, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 18),
  -- Marill - Frustration - TM21
  (183, 18300, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 19),
  -- Marill - Iron Tail - TM23
  (183, 18300, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 20),
  -- Marill - Return - TM27
  (183, 18300, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 21),
  -- Marill - Dig - TM28
  (183, 18300, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 22),
  -- Marill - Brick Break - TM31
  (183, 18300, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 23),
  -- Marill - Double Team - TM32
  (183, 18300, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 24),
  -- Marill - Facade - TM42
  (183, 18300, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 25),
  -- Marill - Secret Power - TM43
  (183, 18300, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 26),
  -- Marill - Rest - TM44
  (183, 18300, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 27),
  -- Marill - Attract - TM45
  (183, 18300, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 28),
  -- Marill - Surf - HM03
  (183, 18300, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 29),
  -- Marill - Strength - HM04
  (183, 18300, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 30),
  -- Marill - Rock Smash - HM06
  (183, 18300, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 31),
  -- Marill - Waterfall - HM07
  (183, 18300, 127, 7, NULL, 3, NULL, NULL, 7003007, NULL, 32),
  -- Marill - Dive - HM08
  (183, 18300, 291, 7, NULL, 3, NULL, NULL, 7003008, NULL, 33),
  -- Marill - Amnesia - Egg Move
  (183, 18300, 133, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Marill - Belly Drum - Egg Move
  (183, 18300, 187, 7, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Marill - Encore - Egg Move
  (183, 18300, 227, 7, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Marill - Future Sight - Egg Move
  (183, 18300, 248, 7, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Marill - Light Screen - Egg Move
  (183, 18300, 113, 7, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Marill - Perish Song - Egg Move
  (183, 18300, 195, 7, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Marill - Present - Egg Move
  (183, 18300, 217, 7, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Marill - Refresh - Egg Move
  (183, 18300, 287, 7, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Marill - Sing - Egg Move
  (183, 18300, 47, 7, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Marill - Slam - Egg Move
  (183, 18300, 21, 7, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Marill - Substitute - Egg Move
  (183, 18300, 164, 7, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Marill - Supersonic - Egg Move
  (183, 18300, 48, 7, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Marill - Tickle - Egg Move
  (183, 18300, 321, 7, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Marill - Body Slam - Move Tutor
  (183, 18300, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Marill - Defense Curl - Move Tutor
  (183, 18300, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Marill - Double-Edge - Move Tutor
  (183, 18300, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Marill - Dynamic Punch - Move Tutor
  (183, 18300, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Marill - Endure - Move Tutor
  (183, 18300, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Marill - Ice Punch - Move Tutor
  (183, 18300, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Marill - Icy Wind - Move Tutor
  (183, 18300, 196, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Marill - Mega Kick - Move Tutor
  (183, 18300, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Marill - Mega Punch - Move Tutor
  (183, 18300, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Marill - Mimic - Move Tutor
  (183, 18300, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Marill - Mud-Slap - Move Tutor
  (183, 18300, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Marill - Rollout - Move Tutor
  (183, 18300, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 58),
  -- Marill - Seismic Toss - Move Tutor
  (183, 18300, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 59),
  -- Marill - Sleep Talk - Move Tutor
  (183, 18300, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 60),
  -- Marill - Snore - Move Tutor
  (183, 18300, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 61),
  -- Marill - Substitute - Move Tutor
  (183, 18300, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 62),
  -- Marill - Swagger - Move Tutor
  (183, 18300, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 63),
  -- Marill - Swift - Move Tutor
  (183, 18300, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 64),
  -- Azumarill - Tackle - Level 1
  (184, 18400, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azumarill - Defense Curl - Level 1
  (184, 18400, 111, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azumarill - Tail Whip - Level 1
  (184, 18400, 39, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Azumarill - Water Gun - Level 1
  (184, 18400, 55, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Azumarill - Defense Curl - Level 3
  (184, 18400, 111, 7, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Azumarill - Tail Whip - Level 6
  (184, 18400, 39, 7, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Azumarill - Water Gun - Level 10
  (184, 18400, 55, 7, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Azumarill - Rollout - Level 15
  (184, 18400, 205, 7, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Azumarill - Bubble Beam - Level 24
  (184, 18400, 61, 7, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Azumarill - Double-Edge - Level 34
  (184, 18400, 38, 7, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Azumarill - Rain Dance - Level 45
  (184, 18400, 240, 7, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Azumarill - Hydro Pump - Level 57
  (184, 18400, 56, 7, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Azumarill - Focus Punch - TM01
  (184, 18400, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 13),
  -- Azumarill - Water Pulse - TM03
  (184, 18400, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 14),
  -- Azumarill - Toxic - TM06
  (184, 18400, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 15),
  -- Azumarill - Hail - TM07
  (184, 18400, 258, 7, NULL, 2, NULL, NULL, 7002007, NULL, 16),
  -- Azumarill - Hidden Power - TM10
  (184, 18400, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 17),
  -- Azumarill - Ice Beam - TM13
  (184, 18400, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 18),
  -- Azumarill - Blizzard - TM14
  (184, 18400, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 19),
  -- Azumarill - Hyper Beam - TM15
  (184, 18400, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 20),
  -- Azumarill - Protect - TM17
  (184, 18400, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 21),
  -- Azumarill - Rain Dance - TM18
  (184, 18400, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 22),
  -- Azumarill - Frustration - TM21
  (184, 18400, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 23),
  -- Azumarill - Iron Tail - TM23
  (184, 18400, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 24),
  -- Azumarill - Return - TM27
  (184, 18400, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 25),
  -- Azumarill - Dig - TM28
  (184, 18400, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 26),
  -- Azumarill - Brick Break - TM31
  (184, 18400, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 27),
  -- Azumarill - Double Team - TM32
  (184, 18400, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 28),
  -- Azumarill - Facade - TM42
  (184, 18400, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 29),
  -- Azumarill - Secret Power - TM43
  (184, 18400, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 30),
  -- Azumarill - Rest - TM44
  (184, 18400, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 31),
  -- Azumarill - Attract - TM45
  (184, 18400, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 32),
  -- Azumarill - Surf - HM03
  (184, 18400, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 33),
  -- Azumarill - Strength - HM04
  (184, 18400, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 34),
  -- Azumarill - Rock Smash - HM06
  (184, 18400, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 35),
  -- Azumarill - Waterfall - HM07
  (184, 18400, 127, 7, NULL, 3, NULL, NULL, 7003007, NULL, 36),
  -- Azumarill - Dive - HM08
  (184, 18400, 291, 7, NULL, 3, NULL, NULL, 7003008, NULL, 37),
  -- Azumarill - Body Slam - Move Tutor
  (184, 18400, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Azumarill - Defense Curl - Move Tutor
  (184, 18400, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Azumarill - Double-Edge - Move Tutor
  (184, 18400, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Azumarill - Dynamic Punch - Move Tutor
  (184, 18400, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Azumarill - Endure - Move Tutor
  (184, 18400, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Azumarill - Ice Punch - Move Tutor
  (184, 18400, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Azumarill - Icy Wind - Move Tutor
  (184, 18400, 196, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Azumarill - Mega Kick - Move Tutor
  (184, 18400, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Azumarill - Mega Punch - Move Tutor
  (184, 18400, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Azumarill - Mimic - Move Tutor
  (184, 18400, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Azumarill - Mud-Slap - Move Tutor
  (184, 18400, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Azumarill - Rollout - Move Tutor
  (184, 18400, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Azumarill - Seismic Toss - Move Tutor
  (184, 18400, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Azumarill - Sleep Talk - Move Tutor
  (184, 18400, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Azumarill - Snore - Move Tutor
  (184, 18400, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Azumarill - Substitute - Move Tutor
  (184, 18400, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Azumarill - Swagger - Move Tutor
  (184, 18400, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Azumarill - Swift - Move Tutor
  (184, 18400, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Sudowoodo - Rock Throw - Level 1
  (185, 18500, 88, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sudowoodo - Mimic - Level 1
  (185, 18500, 102, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sudowoodo - Flail - Level 9
  (185, 18500, 175, 7, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Sudowoodo - Low Kick - Level 17
  (185, 18500, 67, 7, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Sudowoodo - Rock Slide - Level 25
  (185, 18500, 157, 7, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Sudowoodo - Block - Level 33
  (185, 18500, 335, 7, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Sudowoodo - Feint Attack - Level 41
  (185, 18500, 185, 7, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Sudowoodo - Slam - Level 49
  (185, 18500, 21, 7, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Sudowoodo - Double-Edge - Level 57
  (185, 18500, 38, 7, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Sudowoodo - Focus Punch - TM01
  (185, 18500, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 10),
  -- Sudowoodo - Calm Mind - TM04
  (185, 18500, 347, 7, NULL, 2, NULL, NULL, 7002004, NULL, 11),
  -- Sudowoodo - Toxic - TM06
  (185, 18500, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Sudowoodo - Hidden Power - TM10
  (185, 18500, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 13),
  -- Sudowoodo - Sunny Day - TM11
  (185, 18500, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 14),
  -- Sudowoodo - Taunt - TM12
  (185, 18500, 269, 7, NULL, 2, NULL, NULL, 7002012, NULL, 15),
  -- Sudowoodo - Protect - TM17
  (185, 18500, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 16),
  -- Sudowoodo - Frustration - TM21
  (185, 18500, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 17),
  -- Sudowoodo - Earthquake - TM26
  (185, 18500, 89, 7, NULL, 2, NULL, NULL, 7002026, NULL, 18),
  -- Sudowoodo - Return - TM27
  (185, 18500, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 19),
  -- Sudowoodo - Dig - TM28
  (185, 18500, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 20),
  -- Sudowoodo - Brick Break - TM31
  (185, 18500, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 21),
  -- Sudowoodo - Double Team - TM32
  (185, 18500, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 22),
  -- Sudowoodo - Sandstorm - TM37
  (185, 18500, 201, 7, NULL, 2, NULL, NULL, 7002037, NULL, 23),
  -- Sudowoodo - Rock Tomb - TM39
  (185, 18500, 317, 7, NULL, 2, NULL, NULL, 7002039, NULL, 24),
  -- Sudowoodo - Facade - TM42
  (185, 18500, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 25),
  -- Sudowoodo - Secret Power - TM43
  (185, 18500, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 26),
  -- Sudowoodo - Rest - TM44
  (185, 18500, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 27),
  -- Sudowoodo - Attract - TM45
  (185, 18500, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 28),
  -- Sudowoodo - Thief - TM46
  (185, 18500, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 29),
  -- Sudowoodo - Strength - HM04
  (185, 18500, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 30),
  -- Sudowoodo - Rock Smash - HM06
  (185, 18500, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 31),
  -- Sudowoodo - Self-Destruct - Egg Move
  (185, 18500, 120, 7, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Sudowoodo - Body Slam - Move Tutor
  (185, 18500, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Sudowoodo - Counter - Move Tutor
  (185, 18500, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Sudowoodo - Defense Curl - Move Tutor
  (185, 18500, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Sudowoodo - Double-Edge - Move Tutor
  (185, 18500, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Sudowoodo - Dynamic Punch - Move Tutor
  (185, 18500, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Sudowoodo - Endure - Move Tutor
  (185, 18500, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Sudowoodo - Explosion - Move Tutor
  (185, 18500, 153, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Sudowoodo - Fire Punch - Move Tutor
  (185, 18500, 7, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Sudowoodo - Ice Punch - Move Tutor
  (185, 18500, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Sudowoodo - Mega Kick - Move Tutor
  (185, 18500, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Sudowoodo - Mega Punch - Move Tutor
  (185, 18500, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Sudowoodo - Mimic - Move Tutor
  (185, 18500, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Sudowoodo - Mud-Slap - Move Tutor
  (185, 18500, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Sudowoodo - Psych Up - Move Tutor
  (185, 18500, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Sudowoodo - Rock Slide - Move Tutor
  (185, 18500, 157, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Sudowoodo - Rollout - Move Tutor
  (185, 18500, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Sudowoodo - Seismic Toss - Move Tutor
  (185, 18500, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Sudowoodo - Sleep Talk - Move Tutor
  (185, 18500, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Sudowoodo - Snore - Move Tutor
  (185, 18500, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Sudowoodo - Substitute - Move Tutor
  (185, 18500, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Sudowoodo - Swagger - Move Tutor
  (185, 18500, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Sudowoodo - Thunder Punch - Move Tutor
  (185, 18500, 9, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Politoed - Water Gun - Level 1
  (186, 18600, 55, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Politoed - Hypnosis - Level 1
  (186, 18600, 95, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Politoed - Double Slap - Level 1
  (186, 18600, 3, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Politoed - Perish Song - Level 1
  (186, 18600, 195, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Politoed - Perish Song - Level 35
  (186, 18600, 195, 7, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Politoed - Swagger - Level 51
  (186, 18600, 207, 7, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Politoed - Focus Punch - TM01
  (186, 18600, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 7),
  -- Politoed - Water Pulse - TM03
  (186, 18600, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 8),
  -- Politoed - Toxic - TM06
  (186, 18600, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 9),
  -- Politoed - Hail - TM07
  (186, 18600, 258, 7, NULL, 2, NULL, NULL, 7002007, NULL, 10),
  -- Politoed - Hidden Power - TM10
  (186, 18600, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 11),
  -- Politoed - Ice Beam - TM13
  (186, 18600, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 12),
  -- Politoed - Blizzard - TM14
  (186, 18600, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 13),
  -- Politoed - Hyper Beam - TM15
  (186, 18600, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 14),
  -- Politoed - Protect - TM17
  (186, 18600, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 15),
  -- Politoed - Rain Dance - TM18
  (186, 18600, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 16),
  -- Politoed - Frustration - TM21
  (186, 18600, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 17),
  -- Politoed - Earthquake - TM26
  (186, 18600, 89, 7, NULL, 2, NULL, NULL, 7002026, NULL, 18),
  -- Politoed - Return - TM27
  (186, 18600, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 19),
  -- Politoed - Dig - TM28
  (186, 18600, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 20),
  -- Politoed - Psychic - TM29
  (186, 18600, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 21),
  -- Politoed - Brick Break - TM31
  (186, 18600, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 22),
  -- Politoed - Double Team - TM32
  (186, 18600, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 23),
  -- Politoed - Facade - TM42
  (186, 18600, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 24),
  -- Politoed - Secret Power - TM43
  (186, 18600, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 25),
  -- Politoed - Rest - TM44
  (186, 18600, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 26),
  -- Politoed - Attract - TM45
  (186, 18600, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 27),
  -- Politoed - Thief - TM46
  (186, 18600, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 28),
  -- Politoed - Surf - HM03
  (186, 18600, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 29),
  -- Politoed - Strength - HM04
  (186, 18600, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 30),
  -- Politoed - Rock Smash - HM06
  (186, 18600, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 31),
  -- Politoed - Waterfall - HM07
  (186, 18600, 127, 7, NULL, 3, NULL, NULL, 7003007, NULL, 32),
  -- Politoed - Dive - HM08
  (186, 18600, 291, 7, NULL, 3, NULL, NULL, 7003008, NULL, 33),
  -- Politoed - Body Slam - Move Tutor
  (186, 18600, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Politoed - Counter - Move Tutor
  (186, 18600, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Politoed - Defense Curl - Move Tutor
  (186, 18600, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Politoed - Double-Edge - Move Tutor
  (186, 18600, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Politoed - Dynamic Punch - Move Tutor
  (186, 18600, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Politoed - Endure - Move Tutor
  (186, 18600, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Politoed - Icy Wind - Move Tutor
  (186, 18600, 196, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Politoed - Mega Kick - Move Tutor
  (186, 18600, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Politoed - Mega Punch - Move Tutor
  (186, 18600, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Politoed - Metronome - Move Tutor
  (186, 18600, 118, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Politoed - Mimic - Move Tutor
  (186, 18600, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Politoed - Mud-Slap - Move Tutor
  (186, 18600, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Politoed - Seismic Toss - Move Tutor
  (186, 18600, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Politoed - Sleep Talk - Move Tutor
  (186, 18600, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Politoed - Snore - Move Tutor
  (186, 18600, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Politoed - Substitute - Move Tutor
  (186, 18600, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Politoed - Swagger - Move Tutor
  (186, 18600, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Hoppip - Splash - Level 1
  (187, 18700, 150, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoppip - Synthesis - Level 5
  (187, 18700, 235, 7, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Hoppip - Tail Whip - Level 5
  (187, 18700, 39, 7, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Hoppip - Tackle - Level 10
  (187, 18700, 33, 7, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Hoppip - Poison Powder - Level 13
  (187, 18700, 77, 7, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Hoppip - Stun Spore - Level 15
  (187, 18700, 78, 7, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Hoppip - Sleep Powder - Level 17
  (187, 18700, 79, 7, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Hoppip - Leech Seed - Level 20
  (187, 18700, 73, 7, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Hoppip - Cotton Spore - Level 25
  (187, 18700, 178, 7, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Hoppip - Mega Drain - Level 30
  (187, 18700, 72, 7, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Hoppip - Toxic - TM06
  (187, 18700, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 11),
  -- Hoppip - Bullet Seed - TM09
  (187, 18700, 331, 7, NULL, 2, NULL, NULL, 7002009, NULL, 12),
  -- Hoppip - Hidden Power - TM10
  (187, 18700, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 13),
  -- Hoppip - Sunny Day - TM11
  (187, 18700, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 14),
  -- Hoppip - Protect - TM17
  (187, 18700, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 15),
  -- Hoppip - Giga Drain - TM19
  (187, 18700, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 16),
  -- Hoppip - Frustration - TM21
  (187, 18700, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 17),
  -- Hoppip - Solar Beam - TM22
  (187, 18700, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 18),
  -- Hoppip - Return - TM27
  (187, 18700, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 19),
  -- Hoppip - Double Team - TM32
  (187, 18700, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 20),
  -- Hoppip - Aerial Ace - TM40
  (187, 18700, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 21),
  -- Hoppip - Facade - TM42
  (187, 18700, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 22),
  -- Hoppip - Secret Power - TM43
  (187, 18700, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 23),
  -- Hoppip - Rest - TM44
  (187, 18700, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 24),
  -- Hoppip - Attract - TM45
  (187, 18700, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 25),
  -- Hoppip - Flash - HM05
  (187, 18700, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 26),
  -- Hoppip - Amnesia - Egg Move
  (187, 18700, 133, 7, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Hoppip - Confusion - Egg Move
  (187, 18700, 93, 7, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Hoppip - Double-Edge - Egg Move
  (187, 18700, 38, 7, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Hoppip - Encore - Egg Move
  (187, 18700, 227, 7, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Hoppip - Helping Hand - Egg Move
  (187, 18700, 270, 7, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Hoppip - Psych Up - Egg Move
  (187, 18700, 244, 7, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Hoppip - Reflect - Egg Move
  (187, 18700, 115, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Hoppip - Defense Curl - Move Tutor
  (187, 18700, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Hoppip - Double-Edge - Move Tutor
  (187, 18700, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Hoppip - Endure - Move Tutor
  (187, 18700, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Hoppip - Mimic - Move Tutor
  (187, 18700, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Hoppip - Sleep Talk - Move Tutor
  (187, 18700, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Hoppip - Snore - Move Tutor
  (187, 18700, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Hoppip - Substitute - Move Tutor
  (187, 18700, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Hoppip - Swagger - Move Tutor
  (187, 18700, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Hoppip - Swords Dance - Move Tutor
  (187, 18700, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Skiploom - Splash - Level 1
  (188, 18800, 150, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skiploom - Synthesis - Level 1
  (188, 18800, 235, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skiploom - Tail Whip - Level 1
  (188, 18800, 39, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skiploom - Tackle - Level 1
  (188, 18800, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skiploom - Synthesis - Level 5
  (188, 18800, 235, 7, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Skiploom - Tail Whip - Level 5
  (188, 18800, 39, 7, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Skiploom - Tackle - Level 10
  (188, 18800, 33, 7, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Skiploom - Poison Powder - Level 13
  (188, 18800, 77, 7, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Skiploom - Stun Spore - Level 15
  (188, 18800, 78, 7, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Skiploom - Sleep Powder - Level 17
  (188, 18800, 79, 7, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Skiploom - Leech Seed - Level 22
  (188, 18800, 73, 7, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Skiploom - Cotton Spore - Level 29
  (188, 18800, 178, 7, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Skiploom - Mega Drain - Level 36
  (188, 18800, 72, 7, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Skiploom - Toxic - TM06
  (188, 18800, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 14),
  -- Skiploom - Bullet Seed - TM09
  (188, 18800, 331, 7, NULL, 2, NULL, NULL, 7002009, NULL, 15),
  -- Skiploom - Hidden Power - TM10
  (188, 18800, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 16),
  -- Skiploom - Sunny Day - TM11
  (188, 18800, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 17),
  -- Skiploom - Protect - TM17
  (188, 18800, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 18),
  -- Skiploom - Giga Drain - TM19
  (188, 18800, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 19),
  -- Skiploom - Frustration - TM21
  (188, 18800, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 20),
  -- Skiploom - Solar Beam - TM22
  (188, 18800, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 21),
  -- Skiploom - Return - TM27
  (188, 18800, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 22),
  -- Skiploom - Double Team - TM32
  (188, 18800, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 23),
  -- Skiploom - Aerial Ace - TM40
  (188, 18800, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 24),
  -- Skiploom - Facade - TM42
  (188, 18800, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 25),
  -- Skiploom - Secret Power - TM43
  (188, 18800, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 26),
  -- Skiploom - Rest - TM44
  (188, 18800, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 27),
  -- Skiploom - Attract - TM45
  (188, 18800, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 28),
  -- Skiploom - Flash - HM05
  (188, 18800, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 29),
  -- Skiploom - Defense Curl - Move Tutor
  (188, 18800, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 30),
  -- Skiploom - Double-Edge - Move Tutor
  (188, 18800, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 31),
  -- Skiploom - Endure - Move Tutor
  (188, 18800, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 32),
  -- Skiploom - Mimic - Move Tutor
  (188, 18800, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Skiploom - Sleep Talk - Move Tutor
  (188, 18800, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Skiploom - Snore - Move Tutor
  (188, 18800, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Skiploom - Substitute - Move Tutor
  (188, 18800, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Skiploom - Swagger - Move Tutor
  (188, 18800, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Skiploom - Swords Dance - Move Tutor
  (188, 18800, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Jumpluff - Splash - Level 1
  (189, 18900, 150, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jumpluff - Synthesis - Level 1
  (189, 18900, 235, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jumpluff - Tail Whip - Level 1
  (189, 18900, 39, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jumpluff - Tackle - Level 1
  (189, 18900, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jumpluff - Synthesis - Level 5
  (189, 18900, 235, 7, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Jumpluff - Tail Whip - Level 5
  (189, 18900, 39, 7, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Jumpluff - Tackle - Level 10
  (189, 18900, 33, 7, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Jumpluff - Poison Powder - Level 13
  (189, 18900, 77, 7, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Jumpluff - Stun Spore - Level 15
  (189, 18900, 78, 7, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Jumpluff - Sleep Powder - Level 17
  (189, 18900, 79, 7, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Jumpluff - Leech Seed - Level 22
  (189, 18900, 73, 7, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Jumpluff - Cotton Spore - Level 33
  (189, 18900, 178, 7, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Jumpluff - Mega Drain - Level 44
  (189, 18900, 72, 7, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Jumpluff - Toxic - TM06
  (189, 18900, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 14),
  -- Jumpluff - Bullet Seed - TM09
  (189, 18900, 331, 7, NULL, 2, NULL, NULL, 7002009, NULL, 15),
  -- Jumpluff - Hidden Power - TM10
  (189, 18900, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 16),
  -- Jumpluff - Sunny Day - TM11
  (189, 18900, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 17),
  -- Jumpluff - Hyper Beam - TM15
  (189, 18900, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 18),
  -- Jumpluff - Protect - TM17
  (189, 18900, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 19),
  -- Jumpluff - Giga Drain - TM19
  (189, 18900, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 20),
  -- Jumpluff - Frustration - TM21
  (189, 18900, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 21),
  -- Jumpluff - Solar Beam - TM22
  (189, 18900, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 22),
  -- Jumpluff - Return - TM27
  (189, 18900, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 23),
  -- Jumpluff - Double Team - TM32
  (189, 18900, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 24),
  -- Jumpluff - Aerial Ace - TM40
  (189, 18900, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 25),
  -- Jumpluff - Facade - TM42
  (189, 18900, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 26),
  -- Jumpluff - Secret Power - TM43
  (189, 18900, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 27),
  -- Jumpluff - Rest - TM44
  (189, 18900, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 28),
  -- Jumpluff - Attract - TM45
  (189, 18900, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 29),
  -- Jumpluff - Flash - HM05
  (189, 18900, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 30),
  -- Jumpluff - Defense Curl - Move Tutor
  (189, 18900, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 31),
  -- Jumpluff - Double-Edge - Move Tutor
  (189, 18900, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 32),
  -- Jumpluff - Endure - Move Tutor
  (189, 18900, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Jumpluff - Mimic - Move Tutor
  (189, 18900, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Jumpluff - Sleep Talk - Move Tutor
  (189, 18900, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Jumpluff - Snore - Move Tutor
  (189, 18900, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Jumpluff - Substitute - Move Tutor
  (189, 18900, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Jumpluff - Swagger - Move Tutor
  (189, 18900, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Jumpluff - Swords Dance - Move Tutor
  (189, 18900, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Aipom - Scratch - Level 1
  (190, 19000, 10, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aipom - Tail Whip - Level 1
  (190, 19000, 39, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aipom - Sand Attack - Level 6
  (190, 19000, 28, 7, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Aipom - Astonish - Level 13
  (190, 19000, 310, 7, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Aipom - Baton Pass - Level 18
  (190, 19000, 226, 7, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Aipom - Tickle - Level 25
  (190, 19000, 321, 7, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Aipom - Fury Swipes - Level 31
  (190, 19000, 154, 7, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Aipom - Swift - Level 38
  (190, 19000, 129, 7, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Aipom - Screech - Level 43
  (190, 19000, 103, 7, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Aipom - Agility - Level 50
  (190, 19000, 97, 7, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Aipom - Focus Punch - TM01
  (190, 19000, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 11),
  -- Aipom - Water Pulse - TM03
  (190, 19000, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 12),
  -- Aipom - Toxic - TM06
  (190, 19000, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 13),
  -- Aipom - Hidden Power - TM10
  (190, 19000, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 14),
  -- Aipom - Sunny Day - TM11
  (190, 19000, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 15),
  -- Aipom - Taunt - TM12
  (190, 19000, 269, 7, NULL, 2, NULL, NULL, 7002012, NULL, 16),
  -- Aipom - Protect - TM17
  (190, 19000, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 17),
  -- Aipom - Rain Dance - TM18
  (190, 19000, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 18),
  -- Aipom - Frustration - TM21
  (190, 19000, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 19),
  -- Aipom - Solar Beam - TM22
  (190, 19000, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 20),
  -- Aipom - Iron Tail - TM23
  (190, 19000, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 21),
  -- Aipom - Thunderbolt - TM24
  (190, 19000, 85, 7, NULL, 2, NULL, NULL, 7002024, NULL, 22),
  -- Aipom - Thunder - TM25
  (190, 19000, 87, 7, NULL, 2, NULL, NULL, 7002025, NULL, 23),
  -- Aipom - Return - TM27
  (190, 19000, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 24),
  -- Aipom - Dig - TM28
  (190, 19000, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 25),
  -- Aipom - Shadow Ball - TM30
  (190, 19000, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 26),
  -- Aipom - Brick Break - TM31
  (190, 19000, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 27),
  -- Aipom - Double Team - TM32
  (190, 19000, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 28),
  -- Aipom - Shock Wave - TM34
  (190, 19000, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 29),
  -- Aipom - Aerial Ace - TM40
  (190, 19000, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 30),
  -- Aipom - Facade - TM42
  (190, 19000, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 31),
  -- Aipom - Secret Power - TM43
  (190, 19000, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 32),
  -- Aipom - Rest - TM44
  (190, 19000, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 33),
  -- Aipom - Attract - TM45
  (190, 19000, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 34),
  -- Aipom - Thief - TM46
  (190, 19000, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 35),
  -- Aipom - Snatch - TM49
  (190, 19000, 289, 7, NULL, 2, NULL, NULL, 7002049, NULL, 36),
  -- Aipom - Cut - HM01
  (190, 19000, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 37),
  -- Aipom - Strength - HM04
  (190, 19000, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 38),
  -- Aipom - Rock Smash - HM06
  (190, 19000, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 39),
  -- Aipom - Agility - Egg Move
  (190, 19000, 97, 7, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Aipom - Beat Up - Egg Move
  (190, 19000, 251, 7, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Aipom - Counter - Egg Move
  (190, 19000, 68, 7, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Aipom - Double Slap - Egg Move
  (190, 19000, 3, 7, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Aipom - Pursuit - Egg Move
  (190, 19000, 228, 7, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Aipom - Screech - Egg Move
  (190, 19000, 103, 7, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Aipom - Slam - Egg Move
  (190, 19000, 21, 7, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Aipom - Spite - Egg Move
  (190, 19000, 180, 7, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Aipom - Body Slam - Move Tutor
  (190, 19000, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Aipom - Counter - Move Tutor
  (190, 19000, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Aipom - Defense Curl - Move Tutor
  (190, 19000, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Aipom - Double-Edge - Move Tutor
  (190, 19000, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Aipom - Dream Eater - Move Tutor
  (190, 19000, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Aipom - Dynamic Punch - Move Tutor
  (190, 19000, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Aipom - Endure - Move Tutor
  (190, 19000, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Aipom - Fire Punch - Move Tutor
  (190, 19000, 7, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Aipom - Fury Cutter - Move Tutor
  (190, 19000, 210, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Aipom - Ice Punch - Move Tutor
  (190, 19000, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Aipom - Mega Kick - Move Tutor
  (190, 19000, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 58),
  -- Aipom - Mega Punch - Move Tutor
  (190, 19000, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 59),
  -- Aipom - Metronome - Move Tutor
  (190, 19000, 118, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 60),
  -- Aipom - Mimic - Move Tutor
  (190, 19000, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 61),
  -- Aipom - Mud-Slap - Move Tutor
  (190, 19000, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 62),
  -- Aipom - Seismic Toss - Move Tutor
  (190, 19000, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 63),
  -- Aipom - Sleep Talk - Move Tutor
  (190, 19000, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 64),
  -- Aipom - Snore - Move Tutor
  (190, 19000, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 65),
  -- Aipom - Substitute - Move Tutor
  (190, 19000, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 66),
  -- Aipom - Swagger - Move Tutor
  (190, 19000, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 67),
  -- Aipom - Swift - Move Tutor
  (190, 19000, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 68),
  -- Aipom - Thunder Punch - Move Tutor
  (190, 19000, 9, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 69),
  -- Aipom - Thunder Wave - Move Tutor
  (190, 19000, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 70),
  -- Sunkern - Absorb - Level 1
  (191, 19100, 71, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunkern - Growth - Level 6
  (191, 19100, 74, 7, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Sunkern - Mega Drain - Level 13
  (191, 19100, 72, 7, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Sunkern - Ingrain - Level 18
  (191, 19100, 275, 7, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Sunkern - Endeavor - Level 25
  (191, 19100, 283, 7, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Sunkern - Sunny Day - Level 30
  (191, 19100, 241, 7, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Sunkern - Synthesis - Level 37
  (191, 19100, 235, 7, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Sunkern - Giga Drain - Level 42
  (191, 19100, 202, 7, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Sunkern - Toxic - TM06
  (191, 19100, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 9),
  -- Sunkern - Bullet Seed - TM09
  (191, 19100, 331, 7, NULL, 2, NULL, NULL, 7002009, NULL, 10),
  -- Sunkern - Hidden Power - TM10
  (191, 19100, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 11),
  -- Sunkern - Sunny Day - TM11
  (191, 19100, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 12),
  -- Sunkern - Light Screen - TM16
  (191, 19100, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 13),
  -- Sunkern - Protect - TM17
  (191, 19100, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 14),
  -- Sunkern - Giga Drain - TM19
  (191, 19100, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 15),
  -- Sunkern - Safeguard - TM20
  (191, 19100, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 16),
  -- Sunkern - Frustration - TM21
  (191, 19100, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 17),
  -- Sunkern - Solar Beam - TM22
  (191, 19100, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 18),
  -- Sunkern - Return - TM27
  (191, 19100, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 19),
  -- Sunkern - Double Team - TM32
  (191, 19100, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 20),
  -- Sunkern - Sludge Bomb - TM36
  (191, 19100, 188, 7, NULL, 2, NULL, NULL, 7002036, NULL, 21),
  -- Sunkern - Facade - TM42
  (191, 19100, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 22),
  -- Sunkern - Secret Power - TM43
  (191, 19100, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 23),
  -- Sunkern - Rest - TM44
  (191, 19100, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 24),
  -- Sunkern - Attract - TM45
  (191, 19100, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 25),
  -- Sunkern - Cut - HM01
  (191, 19100, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 26),
  -- Sunkern - Flash - HM05
  (191, 19100, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 27),
  -- Sunkern - Curse - Egg Move
  (191, 19100, 174, 7, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Sunkern - Encore - Egg Move
  (191, 19100, 227, 7, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Sunkern - Grass Whistle - Egg Move
  (191, 19100, 320, 7, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Sunkern - Helping Hand - Egg Move
  (191, 19100, 270, 7, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Sunkern - Leech Seed - Egg Move
  (191, 19100, 73, 7, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Sunkern - Nature Power - Egg Move
  (191, 19100, 267, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Sunkern - Double-Edge - Move Tutor
  (191, 19100, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Sunkern - Endure - Move Tutor
  (191, 19100, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Sunkern - Mimic - Move Tutor
  (191, 19100, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Sunkern - Sleep Talk - Move Tutor
  (191, 19100, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Sunkern - Snore - Move Tutor
  (191, 19100, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Sunkern - Substitute - Move Tutor
  (191, 19100, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Sunkern - Swagger - Move Tutor
  (191, 19100, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Sunkern - Swords Dance - Move Tutor
  (191, 19100, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Sunflora - Absorb - Level 1
  (192, 19200, 71, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunflora - Pound - Level 1
  (192, 19200, 1, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sunflora - Growth - Level 6
  (192, 19200, 74, 7, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Sunflora - Razor Leaf - Level 13
  (192, 19200, 75, 7, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Sunflora - Ingrain - Level 18
  (192, 19200, 275, 7, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Sunflora - Bullet Seed - Level 25
  (192, 19200, 331, 7, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Sunflora - Sunny Day - Level 30
  (192, 19200, 241, 7, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Sunflora - Petal Dance - Level 37
  (192, 19200, 80, 7, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Sunflora - Solar Beam - Level 42
  (192, 19200, 76, 7, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Sunflora - Toxic - TM06
  (192, 19200, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 10),
  -- Sunflora - Bullet Seed - TM09
  (192, 19200, 331, 7, NULL, 2, NULL, NULL, 7002009, NULL, 11),
  -- Sunflora - Hidden Power - TM10
  (192, 19200, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 12),
  -- Sunflora - Sunny Day - TM11
  (192, 19200, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 13),
  -- Sunflora - Hyper Beam - TM15
  (192, 19200, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 14),
  -- Sunflora - Light Screen - TM16
  (192, 19200, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 15),
  -- Sunflora - Protect - TM17
  (192, 19200, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 16),
  -- Sunflora - Giga Drain - TM19
  (192, 19200, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 17),
  -- Sunflora - Safeguard - TM20
  (192, 19200, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 18),
  -- Sunflora - Frustration - TM21
  (192, 19200, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 19),
  -- Sunflora - Solar Beam - TM22
  (192, 19200, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 20),
  -- Sunflora - Return - TM27
  (192, 19200, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 21),
  -- Sunflora - Double Team - TM32
  (192, 19200, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 22),
  -- Sunflora - Sludge Bomb - TM36
  (192, 19200, 188, 7, NULL, 2, NULL, NULL, 7002036, NULL, 23),
  -- Sunflora - Facade - TM42
  (192, 19200, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 24),
  -- Sunflora - Secret Power - TM43
  (192, 19200, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 25),
  -- Sunflora - Rest - TM44
  (192, 19200, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 26),
  -- Sunflora - Attract - TM45
  (192, 19200, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 27),
  -- Sunflora - Cut - HM01
  (192, 19200, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 28),
  -- Sunflora - Flash - HM05
  (192, 19200, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 29),
  -- Sunflora - Double-Edge - Move Tutor
  (192, 19200, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 30),
  -- Sunflora - Endure - Move Tutor
  (192, 19200, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 31),
  -- Sunflora - Mimic - Move Tutor
  (192, 19200, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 32),
  -- Sunflora - Sleep Talk - Move Tutor
  (192, 19200, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 33),
  -- Sunflora - Snore - Move Tutor
  (192, 19200, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Sunflora - Substitute - Move Tutor
  (192, 19200, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Sunflora - Swagger - Move Tutor
  (192, 19200, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Sunflora - Swords Dance - Move Tutor
  (192, 19200, 14, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Yanma - Tackle - Level 1
  (193, 19300, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanma - Foresight - Level 1
  (193, 19300, 193, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yanma - Quick Attack - Level 6
  (193, 19300, 98, 7, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Yanma - Double Team - Level 12
  (193, 19300, 104, 7, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Yanma - Sonic Boom - Level 17
  (193, 19300, 49, 7, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Yanma - Hypnosis - Level 23
  (193, 19300, 95, 7, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Yanma - Detect - Level 28
  (193, 19300, 197, 7, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Yanma - Supersonic - Level 45
  (193, 19300, 48, 7, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Yanma - Uproar - Level 34
  (193, 19300, 253, 7, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Yanma - Wing Attack - Level 39
  (193, 19300, 17, 7, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Yanma - Screech - Level 50
  (193, 19300, 103, 7, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Yanma - Toxic - TM06
  (193, 19300, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Yanma - Hidden Power - TM10
  (193, 19300, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 13),
  -- Yanma - Sunny Day - TM11
  (193, 19300, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 14),
  -- Yanma - Protect - TM17
  (193, 19300, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 15),
  -- Yanma - Giga Drain - TM19
  (193, 19300, 202, 7, NULL, 2, NULL, NULL, 7002019, NULL, 16),
  -- Yanma - Frustration - TM21
  (193, 19300, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 17),
  -- Yanma - Solar Beam - TM22
  (193, 19300, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 18),
  -- Yanma - Return - TM27
  (193, 19300, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 19),
  -- Yanma - Psychic - TM29
  (193, 19300, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 20),
  -- Yanma - Shadow Ball - TM30
  (193, 19300, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 21),
  -- Yanma - Double Team - TM32
  (193, 19300, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 22),
  -- Yanma - Aerial Ace - TM40
  (193, 19300, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 23),
  -- Yanma - Facade - TM42
  (193, 19300, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 24),
  -- Yanma - Secret Power - TM43
  (193, 19300, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 25),
  -- Yanma - Rest - TM44
  (193, 19300, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 26),
  -- Yanma - Attract - TM45
  (193, 19300, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 27),
  -- Yanma - Thief - TM46
  (193, 19300, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 28),
  -- Yanma - Steel Wing - TM47
  (193, 19300, 211, 7, NULL, 2, NULL, NULL, 7002047, NULL, 29),
  -- Yanma - Flash - HM05
  (193, 19300, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 30),
  -- Yanma - Leech Life - Egg Move
  (193, 19300, 141, 7, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Yanma - Reversal - Egg Move
  (193, 19300, 179, 7, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Yanma - Signal Beam - Egg Move
  (193, 19300, 324, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Yanma - Silver Wind - Egg Move
  (193, 19300, 318, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Yanma - Whirlwind - Egg Move
  (193, 19300, 18, 7, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Yanma - Double-Edge - Move Tutor
  (193, 19300, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Yanma - Dream Eater - Move Tutor
  (193, 19300, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Yanma - Endure - Move Tutor
  (193, 19300, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Yanma - Mimic - Move Tutor
  (193, 19300, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Yanma - Sleep Talk - Move Tutor
  (193, 19300, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Yanma - Snore - Move Tutor
  (193, 19300, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Yanma - Substitute - Move Tutor
  (193, 19300, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Yanma - Swagger - Move Tutor
  (193, 19300, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Yanma - Swift - Move Tutor
  (193, 19300, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Wooper - Water Gun - Level 1
  (194, 19400, 55, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wooper - Tail Whip - Level 1
  (194, 19400, 39, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wooper - Slam - Level 11
  (194, 19400, 21, 7, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Wooper - Mud Shot - Level 16
  (194, 19400, 341, 7, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Wooper - Amnesia - Level 21
  (194, 19400, 133, 7, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Wooper - Yawn - Level 31
  (194, 19400, 281, 7, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Wooper - Earthquake - Level 36
  (194, 19400, 89, 7, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Wooper - Rain Dance - Level 41
  (194, 19400, 240, 7, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Wooper - Mist - Level 51
  (194, 19400, 54, 7, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Wooper - Haze - Level 51
  (194, 19400, 114, 7, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Wooper - Water Pulse - TM03
  (194, 19400, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 11),
  -- Wooper - Toxic - TM06
  (194, 19400, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Wooper - Hail - TM07
  (194, 19400, 258, 7, NULL, 2, NULL, NULL, 7002007, NULL, 13),
  -- Wooper - Hidden Power - TM10
  (194, 19400, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 14),
  -- Wooper - Ice Beam - TM13
  (194, 19400, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 15),
  -- Wooper - Blizzard - TM14
  (194, 19400, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 16),
  -- Wooper - Protect - TM17
  (194, 19400, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 17),
  -- Wooper - Rain Dance - TM18
  (194, 19400, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 18),
  -- Wooper - Frustration - TM21
  (194, 19400, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 19),
  -- Wooper - Iron Tail - TM23
  (194, 19400, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 20),
  -- Wooper - Earthquake - TM26
  (194, 19400, 89, 7, NULL, 2, NULL, NULL, 7002026, NULL, 21),
  -- Wooper - Return - TM27
  (194, 19400, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 22),
  -- Wooper - Dig - TM28
  (194, 19400, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 23),
  -- Wooper - Double Team - TM32
  (194, 19400, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 24),
  -- Wooper - Sludge Bomb - TM36
  (194, 19400, 188, 7, NULL, 2, NULL, NULL, 7002036, NULL, 25),
  -- Wooper - Sandstorm - TM37
  (194, 19400, 201, 7, NULL, 2, NULL, NULL, 7002037, NULL, 26),
  -- Wooper - Facade - TM42
  (194, 19400, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 27),
  -- Wooper - Secret Power - TM43
  (194, 19400, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 28),
  -- Wooper - Rest - TM44
  (194, 19400, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 29),
  -- Wooper - Attract - TM45
  (194, 19400, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 30),
  -- Wooper - Surf - HM03
  (194, 19400, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 31),
  -- Wooper - Flash - HM05
  (194, 19400, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 32),
  -- Wooper - Rock Smash - HM06
  (194, 19400, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 33),
  -- Wooper - Waterfall - HM07
  (194, 19400, 127, 7, NULL, 3, NULL, NULL, 7003007, NULL, 34),
  -- Wooper - Dive - HM08
  (194, 19400, 291, 7, NULL, 3, NULL, NULL, 7003008, NULL, 35),
  -- Wooper - Ancient Power - Egg Move
  (194, 19400, 246, 7, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Wooper - Body Slam - Egg Move
  (194, 19400, 34, 7, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Wooper - Curse - Egg Move
  (194, 19400, 174, 7, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Wooper - Mud Sport - Egg Move
  (194, 19400, 300, 7, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Wooper - Safeguard - Egg Move
  (194, 19400, 219, 7, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Wooper - Spit Up - Egg Move
  (194, 19400, 255, 7, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Wooper - Stockpile - Egg Move
  (194, 19400, 254, 7, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wooper - Swallow - Egg Move
  (194, 19400, 256, 7, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wooper - Body Slam - Move Tutor
  (194, 19400, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Wooper - Defense Curl - Move Tutor
  (194, 19400, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Wooper - Double-Edge - Move Tutor
  (194, 19400, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Wooper - Dynamic Punch - Move Tutor
  (194, 19400, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Wooper - Endure - Move Tutor
  (194, 19400, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Wooper - Ice Punch - Move Tutor
  (194, 19400, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Wooper - Mimic - Move Tutor
  (194, 19400, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Wooper - Mud-Slap - Move Tutor
  (194, 19400, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Wooper - Rollout - Move Tutor
  (194, 19400, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Wooper - Sleep Talk - Move Tutor
  (194, 19400, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Wooper - Snore - Move Tutor
  (194, 19400, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Wooper - Substitute - Move Tutor
  (194, 19400, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Wooper - Swagger - Move Tutor
  (194, 19400, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Quagsire - Water Gun - Level 1
  (195, 19500, 55, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quagsire - Tail Whip - Level 1
  (195, 19500, 39, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quagsire - Slam - Level 11
  (195, 19500, 21, 7, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Quagsire - Mud Shot - Level 16
  (195, 19500, 341, 7, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Quagsire - Amnesia - Level 23
  (195, 19500, 133, 7, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Quagsire - Yawn - Level 35
  (195, 19500, 281, 7, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Quagsire - Earthquake - Level 42
  (195, 19500, 89, 7, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Quagsire - Rain Dance - Level 49
  (195, 19500, 240, 7, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Quagsire - Mist - Level 61
  (195, 19500, 54, 7, NULL, 1, 61, NULL, NULL, NULL, 9),
  -- Quagsire - Haze - Level 61
  (195, 19500, 114, 7, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Quagsire - Focus Punch - TM01
  (195, 19500, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 11),
  -- Quagsire - Water Pulse - TM03
  (195, 19500, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 12),
  -- Quagsire - Toxic - TM06
  (195, 19500, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 13),
  -- Quagsire - Hail - TM07
  (195, 19500, 258, 7, NULL, 2, NULL, NULL, 7002007, NULL, 14),
  -- Quagsire - Hidden Power - TM10
  (195, 19500, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 15),
  -- Quagsire - Ice Beam - TM13
  (195, 19500, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 16),
  -- Quagsire - Blizzard - TM14
  (195, 19500, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 17),
  -- Quagsire - Hyper Beam - TM15
  (195, 19500, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 18),
  -- Quagsire - Protect - TM17
  (195, 19500, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 19),
  -- Quagsire - Rain Dance - TM18
  (195, 19500, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 20),
  -- Quagsire - Frustration - TM21
  (195, 19500, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 21),
  -- Quagsire - Iron Tail - TM23
  (195, 19500, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 22),
  -- Quagsire - Earthquake - TM26
  (195, 19500, 89, 7, NULL, 2, NULL, NULL, 7002026, NULL, 23),
  -- Quagsire - Return - TM27
  (195, 19500, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 24),
  -- Quagsire - Dig - TM28
  (195, 19500, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 25),
  -- Quagsire - Brick Break - TM31
  (195, 19500, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 26),
  -- Quagsire - Double Team - TM32
  (195, 19500, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 27),
  -- Quagsire - Sludge Bomb - TM36
  (195, 19500, 188, 7, NULL, 2, NULL, NULL, 7002036, NULL, 28),
  -- Quagsire - Sandstorm - TM37
  (195, 19500, 201, 7, NULL, 2, NULL, NULL, 7002037, NULL, 29),
  -- Quagsire - Rock Tomb - TM39
  (195, 19500, 317, 7, NULL, 2, NULL, NULL, 7002039, NULL, 30),
  -- Quagsire - Facade - TM42
  (195, 19500, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 31),
  -- Quagsire - Secret Power - TM43
  (195, 19500, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 32),
  -- Quagsire - Rest - TM44
  (195, 19500, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 33),
  -- Quagsire - Attract - TM45
  (195, 19500, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 34),
  -- Quagsire - Surf - HM03
  (195, 19500, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 35),
  -- Quagsire - Strength - HM04
  (195, 19500, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 36),
  -- Quagsire - Flash - HM05
  (195, 19500, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 37),
  -- Quagsire - Rock Smash - HM06
  (195, 19500, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 38),
  -- Quagsire - Waterfall - HM07
  (195, 19500, 127, 7, NULL, 3, NULL, NULL, 7003007, NULL, 39),
  -- Quagsire - Dive - HM08
  (195, 19500, 291, 7, NULL, 3, NULL, NULL, 7003008, NULL, 40),
  -- Quagsire - Body Slam - Move Tutor
  (195, 19500, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Quagsire - Counter - Move Tutor
  (195, 19500, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Quagsire - Defense Curl - Move Tutor
  (195, 19500, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Quagsire - Double-Edge - Move Tutor
  (195, 19500, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Quagsire - Dynamic Punch - Move Tutor
  (195, 19500, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Quagsire - Endure - Move Tutor
  (195, 19500, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Quagsire - Ice Punch - Move Tutor
  (195, 19500, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Quagsire - Mega Kick - Move Tutor
  (195, 19500, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Quagsire - Mega Punch - Move Tutor
  (195, 19500, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Quagsire - Mimic - Move Tutor
  (195, 19500, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Quagsire - Mud-Slap - Move Tutor
  (195, 19500, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Quagsire - Rollout - Move Tutor
  (195, 19500, 205, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Quagsire - Seismic Toss - Move Tutor
  (195, 19500, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Quagsire - Sleep Talk - Move Tutor
  (195, 19500, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Quagsire - Snore - Move Tutor
  (195, 19500, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Quagsire - Substitute - Move Tutor
  (195, 19500, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Quagsire - Swagger - Move Tutor
  (195, 19500, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Espeon - Tackle - Level 1
  (196, 19600, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espeon - Tail Whip - Level 1
  (196, 19600, 39, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espeon - Helping Hand - Level 1
  (196, 19600, 270, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Espeon - Sand Attack - Level 8
  (196, 19600, 28, 7, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Espeon - Confusion - Level 16
  (196, 19600, 93, 7, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Espeon - Quick Attack - Level 23
  (196, 19600, 98, 7, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Espeon - Swift - Level 30
  (196, 19600, 129, 7, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Espeon - Psybeam - Level 36
  (196, 19600, 60, 7, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Espeon - Psych Up - Level 42
  (196, 19600, 244, 7, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Espeon - Psychic - Level 47
  (196, 19600, 94, 7, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Espeon - Morning Sun - Level 52
  (196, 19600, 234, 7, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Espeon - Calm Mind - TM04
  (196, 19600, 347, 7, NULL, 2, NULL, NULL, 7002004, NULL, 12),
  -- Espeon - Toxic - TM06
  (196, 19600, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 13),
  -- Espeon - Hidden Power - TM10
  (196, 19600, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 14),
  -- Espeon - Sunny Day - TM11
  (196, 19600, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 15),
  -- Espeon - Hyper Beam - TM15
  (196, 19600, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 16),
  -- Espeon - Light Screen - TM16
  (196, 19600, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 17),
  -- Espeon - Protect - TM17
  (196, 19600, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 18),
  -- Espeon - Rain Dance - TM18
  (196, 19600, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 19),
  -- Espeon - Frustration - TM21
  (196, 19600, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 20),
  -- Espeon - Iron Tail - TM23
  (196, 19600, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 21),
  -- Espeon - Return - TM27
  (196, 19600, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 22),
  -- Espeon - Dig - TM28
  (196, 19600, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 23),
  -- Espeon - Psychic - TM29
  (196, 19600, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 24),
  -- Espeon - Shadow Ball - TM30
  (196, 19600, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 25),
  -- Espeon - Double Team - TM32
  (196, 19600, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 26),
  -- Espeon - Reflect - TM33
  (196, 19600, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 27),
  -- Espeon - Facade - TM42
  (196, 19600, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 28),
  -- Espeon - Secret Power - TM43
  (196, 19600, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 29),
  -- Espeon - Rest - TM44
  (196, 19600, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 30),
  -- Espeon - Attract - TM45
  (196, 19600, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 31),
  -- Espeon - Skill Swap - TM48
  (196, 19600, 285, 7, NULL, 2, NULL, NULL, 7002048, NULL, 32),
  -- Espeon - Cut - HM01
  (196, 19600, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 33),
  -- Espeon - Flash - HM05
  (196, 19600, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 34),
  -- Espeon - Body Slam - Move Tutor
  (196, 19600, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Espeon - Double-Edge - Move Tutor
  (196, 19600, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Espeon - Dream Eater - Move Tutor
  (196, 19600, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Espeon - Endure - Move Tutor
  (196, 19600, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Espeon - Mimic - Move Tutor
  (196, 19600, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Espeon - Mud-Slap - Move Tutor
  (196, 19600, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Espeon - Psych Up - Move Tutor
  (196, 19600, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Espeon - Sleep Talk - Move Tutor
  (196, 19600, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Espeon - Snore - Move Tutor
  (196, 19600, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Espeon - Substitute - Move Tutor
  (196, 19600, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Espeon - Swagger - Move Tutor
  (196, 19600, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Espeon - Swift - Move Tutor
  (196, 19600, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Umbreon - Tackle - Level 1
  (197, 19700, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Umbreon - Tail Whip - Level 1
  (197, 19700, 39, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Umbreon - Helping Hand - Level 1
  (197, 19700, 270, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Umbreon - Sand Attack - Level 8
  (197, 19700, 28, 7, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Umbreon - Pursuit - Level 16
  (197, 19700, 228, 7, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Umbreon - Quick Attack - Level 23
  (197, 19700, 98, 7, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Umbreon - Confuse Ray - Level 30
  (197, 19700, 109, 7, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Umbreon - Feint Attack - Level 36
  (197, 19700, 185, 7, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Umbreon - Mean Look - Level 42
  (197, 19700, 212, 7, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Umbreon - Screech - Level 47
  (197, 19700, 103, 7, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Umbreon - Moonlight - Level 52
  (197, 19700, 236, 7, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Umbreon - Toxic - TM06
  (197, 19700, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Umbreon - Hidden Power - TM10
  (197, 19700, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 13),
  -- Umbreon - Sunny Day - TM11
  (197, 19700, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 14),
  -- Umbreon - Taunt - TM12
  (197, 19700, 269, 7, NULL, 2, NULL, NULL, 7002012, NULL, 15),
  -- Umbreon - Hyper Beam - TM15
  (197, 19700, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 16),
  -- Umbreon - Protect - TM17
  (197, 19700, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 17),
  -- Umbreon - Rain Dance - TM18
  (197, 19700, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 18),
  -- Umbreon - Frustration - TM21
  (197, 19700, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 19),
  -- Umbreon - Iron Tail - TM23
  (197, 19700, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 20),
  -- Umbreon - Return - TM27
  (197, 19700, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 21),
  -- Umbreon - Dig - TM28
  (197, 19700, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 22),
  -- Umbreon - Psychic - TM29
  (197, 19700, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 23),
  -- Umbreon - Shadow Ball - TM30
  (197, 19700, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 24),
  -- Umbreon - Double Team - TM32
  (197, 19700, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 25),
  -- Umbreon - Torment - TM41
  (197, 19700, 259, 7, NULL, 2, NULL, NULL, 7002041, NULL, 26),
  -- Umbreon - Facade - TM42
  (197, 19700, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 27),
  -- Umbreon - Secret Power - TM43
  (197, 19700, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 28),
  -- Umbreon - Rest - TM44
  (197, 19700, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 29),
  -- Umbreon - Attract - TM45
  (197, 19700, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 30),
  -- Umbreon - Snatch - TM49
  (197, 19700, 289, 7, NULL, 2, NULL, NULL, 7002049, NULL, 31),
  -- Umbreon - Cut - HM01
  (197, 19700, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 32),
  -- Umbreon - Flash - HM05
  (197, 19700, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 33),
  -- Umbreon - Body Slam - Move Tutor
  (197, 19700, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 34),
  -- Umbreon - Double-Edge - Move Tutor
  (197, 19700, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 35),
  -- Umbreon - Dream Eater - Move Tutor
  (197, 19700, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 36),
  -- Umbreon - Endure - Move Tutor
  (197, 19700, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 37),
  -- Umbreon - Mimic - Move Tutor
  (197, 19700, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Umbreon - Mud-Slap - Move Tutor
  (197, 19700, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Umbreon - Psych Up - Move Tutor
  (197, 19700, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Umbreon - Sleep Talk - Move Tutor
  (197, 19700, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Umbreon - Snore - Move Tutor
  (197, 19700, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Umbreon - Substitute - Move Tutor
  (197, 19700, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Umbreon - Swagger - Move Tutor
  (197, 19700, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Umbreon - Swift - Move Tutor
  (197, 19700, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Murkrow - Peck - Level 1
  (198, 19800, 64, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Murkrow - Astonish - Level 9
  (198, 19800, 310, 7, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Murkrow - Pursuit - Level 14
  (198, 19800, 228, 7, NULL, 1, 14, NULL, NULL, NULL, 3),
  -- Murkrow - Haze - Level 22
  (198, 19800, 114, 7, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Murkrow - Night Shade - Level 27
  (198, 19800, 101, 7, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Murkrow - Feint Attack - Level 35
  (198, 19800, 185, 7, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Murkrow - Taunt - Level 40
  (198, 19800, 269, 7, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Murkrow - Mean Look - Level 48
  (198, 19800, 212, 7, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Murkrow - Calm Mind - TM04
  (198, 19800, 347, 7, NULL, 2, NULL, NULL, 7002004, NULL, 9),
  -- Murkrow - Toxic - TM06
  (198, 19800, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 10),
  -- Murkrow - Hidden Power - TM10
  (198, 19800, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 11),
  -- Murkrow - Sunny Day - TM11
  (198, 19800, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 12),
  -- Murkrow - Taunt - TM12
  (198, 19800, 269, 7, NULL, 2, NULL, NULL, 7002012, NULL, 13),
  -- Murkrow - Protect - TM17
  (198, 19800, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 14),
  -- Murkrow - Rain Dance - TM18
  (198, 19800, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 15),
  -- Murkrow - Frustration - TM21
  (198, 19800, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 16),
  -- Murkrow - Return - TM27
  (198, 19800, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 17),
  -- Murkrow - Shadow Ball - TM30
  (198, 19800, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 18),
  -- Murkrow - Double Team - TM32
  (198, 19800, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 19),
  -- Murkrow - Aerial Ace - TM40
  (198, 19800, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 20),
  -- Murkrow - Torment - TM41
  (198, 19800, 259, 7, NULL, 2, NULL, NULL, 7002041, NULL, 21),
  -- Murkrow - Facade - TM42
  (198, 19800, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 22),
  -- Murkrow - Secret Power - TM43
  (198, 19800, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 23),
  -- Murkrow - Rest - TM44
  (198, 19800, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 24),
  -- Murkrow - Attract - TM45
  (198, 19800, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 25),
  -- Murkrow - Thief - TM46
  (198, 19800, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 26),
  -- Murkrow - Steel Wing - TM47
  (198, 19800, 211, 7, NULL, 2, NULL, NULL, 7002047, NULL, 27),
  -- Murkrow - Snatch - TM49
  (198, 19800, 289, 7, NULL, 2, NULL, NULL, 7002049, NULL, 28),
  -- Murkrow - Fly - HM02
  (198, 19800, 19, 7, NULL, 3, NULL, NULL, 7003002, NULL, 29),
  -- Murkrow - Confuse Ray - Egg Move
  (198, 19800, 109, 7, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Murkrow - Drill Peck - Egg Move
  (198, 19800, 65, 7, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Murkrow - Feather Dance - Egg Move
  (198, 19800, 297, 7, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Murkrow - Mirror Move - Egg Move
  (198, 19800, 119, 7, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Murkrow - Perish Song - Egg Move
  (198, 19800, 195, 7, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Murkrow - Sky Attack - Egg Move
  (198, 19800, 143, 7, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Murkrow - Whirlwind - Egg Move
  (198, 19800, 18, 7, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Murkrow - Wing Attack - Egg Move
  (198, 19800, 17, 7, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Murkrow - Double-Edge - Move Tutor
  (198, 19800, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 38),
  -- Murkrow - Dream Eater - Move Tutor
  (198, 19800, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 39),
  -- Murkrow - Endure - Move Tutor
  (198, 19800, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Murkrow - Icy Wind - Move Tutor
  (198, 19800, 196, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Murkrow - Mimic - Move Tutor
  (198, 19800, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Murkrow - Mud-Slap - Move Tutor
  (198, 19800, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Murkrow - Psych Up - Move Tutor
  (198, 19800, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Murkrow - Sleep Talk - Move Tutor
  (198, 19800, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Murkrow - Snore - Move Tutor
  (198, 19800, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Murkrow - Substitute - Move Tutor
  (198, 19800, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Murkrow - Swagger - Move Tutor
  (198, 19800, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Murkrow - Swift - Move Tutor
  (198, 19800, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Murkrow - Thunder Wave - Move Tutor
  (198, 19800, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Slowking - Curse - Level 1
  (199, 19900, 174, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowking - Tackle - Level 1
  (199, 19900, 33, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowking - Yawn - Level 1
  (199, 19900, 281, 7, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowking - Growl - Level 6
  (199, 19900, 45, 7, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Slowking - Water Gun - Level 13
  (199, 19900, 55, 7, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Slowking - Confusion - Level 17
  (199, 19900, 93, 7, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Slowking - Disable - Level 24
  (199, 19900, 50, 7, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Slowking - Headbutt - Level 29
  (199, 19900, 29, 7, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Slowking - Swagger - Level 36
  (199, 19900, 207, 7, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Slowking - Psychic - Level 40
  (199, 19900, 94, 7, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Slowking - Psych Up - Level 47
  (199, 19900, 244, 7, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Slowking - Focus Punch - TM01
  (199, 19900, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 12),
  -- Slowking - Water Pulse - TM03
  (199, 19900, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 13),
  -- Slowking - Calm Mind - TM04
  (199, 19900, 347, 7, NULL, 2, NULL, NULL, 7002004, NULL, 14),
  -- Slowking - Toxic - TM06
  (199, 19900, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 15),
  -- Slowking - Hail - TM07
  (199, 19900, 258, 7, NULL, 2, NULL, NULL, 7002007, NULL, 16),
  -- Slowking - Hidden Power - TM10
  (199, 19900, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 17),
  -- Slowking - Sunny Day - TM11
  (199, 19900, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 18),
  -- Slowking - Ice Beam - TM13
  (199, 19900, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 19),
  -- Slowking - Blizzard - TM14
  (199, 19900, 59, 7, NULL, 2, NULL, NULL, 7002014, NULL, 20),
  -- Slowking - Hyper Beam - TM15
  (199, 19900, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 21),
  -- Slowking - Protect - TM17
  (199, 19900, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 22),
  -- Slowking - Rain Dance - TM18
  (199, 19900, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 23),
  -- Slowking - Safeguard - TM20
  (199, 19900, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 24),
  -- Slowking - Frustration - TM21
  (199, 19900, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 25),
  -- Slowking - Iron Tail - TM23
  (199, 19900, 231, 7, NULL, 2, NULL, NULL, 7002023, NULL, 26),
  -- Slowking - Earthquake - TM26
  (199, 19900, 89, 7, NULL, 2, NULL, NULL, 7002026, NULL, 27),
  -- Slowking - Return - TM27
  (199, 19900, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 28),
  -- Slowking - Dig - TM28
  (199, 19900, 91, 7, NULL, 2, NULL, NULL, 7002028, NULL, 29),
  -- Slowking - Psychic - TM29
  (199, 19900, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 30),
  -- Slowking - Shadow Ball - TM30
  (199, 19900, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 31),
  -- Slowking - Brick Break - TM31
  (199, 19900, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 32),
  -- Slowking - Double Team - TM32
  (199, 19900, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 33),
  -- Slowking - Flamethrower - TM35
  (199, 19900, 53, 7, NULL, 2, NULL, NULL, 7002035, NULL, 34),
  -- Slowking - Fire Blast - TM38
  (199, 19900, 126, 7, NULL, 2, NULL, NULL, 7002038, NULL, 35),
  -- Slowking - Facade - TM42
  (199, 19900, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 36),
  -- Slowking - Secret Power - TM43
  (199, 19900, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 37),
  -- Slowking - Rest - TM44
  (199, 19900, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 38),
  -- Slowking - Attract - TM45
  (199, 19900, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 39),
  -- Slowking - Skill Swap - TM48
  (199, 19900, 285, 7, NULL, 2, NULL, NULL, 7002048, NULL, 40),
  -- Slowking - Surf - HM03
  (199, 19900, 57, 7, NULL, 3, NULL, NULL, 7003003, NULL, 41),
  -- Slowking - Strength - HM04
  (199, 19900, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 42),
  -- Slowking - Flash - HM05
  (199, 19900, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 43),
  -- Slowking - Rock Smash - HM06
  (199, 19900, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 44),
  -- Slowking - Dive - HM08
  (199, 19900, 291, 7, NULL, 3, NULL, NULL, 7003008, NULL, 45),
  -- Slowking - Body Slam - Move Tutor
  (199, 19900, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Slowking - Counter - Move Tutor
  (199, 19900, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Slowking - Double-Edge - Move Tutor
  (199, 19900, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Slowking - Dream Eater - Move Tutor
  (199, 19900, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Slowking - Dynamic Punch - Move Tutor
  (199, 19900, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Slowking - Endure - Move Tutor
  (199, 19900, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Slowking - Fury Cutter - Move Tutor
  (199, 19900, 210, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Slowking - Ice Punch - Move Tutor
  (199, 19900, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Slowking - Icy Wind - Move Tutor
  (199, 19900, 196, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Slowking - Mega Kick - Move Tutor
  (199, 19900, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Slowking - Mega Punch - Move Tutor
  (199, 19900, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Slowking - Mimic - Move Tutor
  (199, 19900, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Slowking - Mud-Slap - Move Tutor
  (199, 19900, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 58),
  -- Slowking - Psych Up - Move Tutor
  (199, 19900, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 59),
  -- Slowking - Seismic Toss - Move Tutor
  (199, 19900, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 60),
  -- Slowking - Sleep Talk - Move Tutor
  (199, 19900, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 61),
  -- Slowking - Snore - Move Tutor
  (199, 19900, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 62),
  -- Slowking - Substitute - Move Tutor
  (199, 19900, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 63),
  -- Slowking - Swagger - Move Tutor
  (199, 19900, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 64),
  -- Slowking - Swift - Move Tutor
  (199, 19900, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 65),
  -- Slowking - Thunder Wave - Move Tutor
  (199, 19900, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 66),
  -- Misdreavus - Growl - Level 1
  (200, 20000, 45, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Misdreavus - Psywave - Level 1
  (200, 20000, 149, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Misdreavus - Spite - Level 6
  (200, 20000, 180, 7, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Misdreavus - Astonish - Level 11
  (200, 20000, 310, 7, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Misdreavus - Confuse Ray - Level 17
  (200, 20000, 109, 7, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Misdreavus - Mean Look - Level 23
  (200, 20000, 212, 7, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Misdreavus - Psybeam - Level 30
  (200, 20000, 60, 7, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Misdreavus - Pain Split - Level 37
  (200, 20000, 220, 7, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Misdreavus - Perish Song - Level 45
  (200, 20000, 195, 7, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Misdreavus - Grudge - Level 53
  (200, 20000, 288, 7, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Misdreavus - Calm Mind - TM04
  (200, 20000, 347, 7, NULL, 2, NULL, NULL, 7002004, NULL, 11),
  -- Misdreavus - Toxic - TM06
  (200, 20000, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 12),
  -- Misdreavus - Hidden Power - TM10
  (200, 20000, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 13),
  -- Misdreavus - Sunny Day - TM11
  (200, 20000, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 14),
  -- Misdreavus - Taunt - TM12
  (200, 20000, 269, 7, NULL, 2, NULL, NULL, 7002012, NULL, 15),
  -- Misdreavus - Protect - TM17
  (200, 20000, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 16),
  -- Misdreavus - Rain Dance - TM18
  (200, 20000, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 17),
  -- Misdreavus - Frustration - TM21
  (200, 20000, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 18),
  -- Misdreavus - Thunderbolt - TM24
  (200, 20000, 85, 7, NULL, 2, NULL, NULL, 7002024, NULL, 19),
  -- Misdreavus - Thunder - TM25
  (200, 20000, 87, 7, NULL, 2, NULL, NULL, 7002025, NULL, 20),
  -- Misdreavus - Return - TM27
  (200, 20000, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 21),
  -- Misdreavus - Psychic - TM29
  (200, 20000, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 22),
  -- Misdreavus - Shadow Ball - TM30
  (200, 20000, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 23),
  -- Misdreavus - Double Team - TM32
  (200, 20000, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 24),
  -- Misdreavus - Shock Wave - TM34
  (200, 20000, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 25),
  -- Misdreavus - Aerial Ace - TM40
  (200, 20000, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 26),
  -- Misdreavus - Torment - TM41
  (200, 20000, 259, 7, NULL, 2, NULL, NULL, 7002041, NULL, 27),
  -- Misdreavus - Facade - TM42
  (200, 20000, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 28),
  -- Misdreavus - Secret Power - TM43
  (200, 20000, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 29),
  -- Misdreavus - Rest - TM44
  (200, 20000, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 30),
  -- Misdreavus - Attract - TM45
  (200, 20000, 213, 7, NULL, 2, NULL, NULL, 7002045, NULL, 31),
  -- Misdreavus - Thief - TM46
  (200, 20000, 168, 7, NULL, 2, NULL, NULL, 7002046, NULL, 32),
  -- Misdreavus - Skill Swap - TM48
  (200, 20000, 285, 7, NULL, 2, NULL, NULL, 7002048, NULL, 33),
  -- Misdreavus - Snatch - TM49
  (200, 20000, 289, 7, NULL, 2, NULL, NULL, 7002049, NULL, 34),
  -- Misdreavus - Flash - HM05
  (200, 20000, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 35),
  -- Misdreavus - Destiny Bond - Egg Move
  (200, 20000, 194, 7, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Misdreavus - Imprison - Egg Move
  (200, 20000, 286, 7, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Misdreavus - Psych Up - Egg Move
  (200, 20000, 244, 7, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Misdreavus - Screech - Egg Move
  (200, 20000, 103, 7, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Misdreavus - Defense Curl - Move Tutor
  (200, 20000, 111, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 40),
  -- Misdreavus - Double-Edge - Move Tutor
  (200, 20000, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 41),
  -- Misdreavus - Dream Eater - Move Tutor
  (200, 20000, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 42),
  -- Misdreavus - Endure - Move Tutor
  (200, 20000, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 43),
  -- Misdreavus - Mimic - Move Tutor
  (200, 20000, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 44),
  -- Misdreavus - Psych Up - Move Tutor
  (200, 20000, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 45),
  -- Misdreavus - Sleep Talk - Move Tutor
  (200, 20000, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 46),
  -- Misdreavus - Snore - Move Tutor
  (200, 20000, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 47),
  -- Misdreavus - Substitute - Move Tutor
  (200, 20000, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 48),
  -- Misdreavus - Swagger - Move Tutor
  (200, 20000, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Misdreavus - Swift - Move Tutor
  (200, 20000, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Misdreavus - Thunder Wave - Move Tutor
  (200, 20000, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Unown - Hidden Power - Level 1
  (201, 20100, 237, 7, NULL, 1, 1, NULL, NULL, NULL, 1);
