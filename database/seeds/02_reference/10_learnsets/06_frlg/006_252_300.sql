-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation III Pokémon learnset raw pages, using FireRed /
-- LeafGreen level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii FireRed / LeafGreen Pokedex learnset pages and PokemonDB
-- Generation 3 FireRed / LeafGreen learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: FireRed / LeafGreen
-- Pokémon: #252-#300
-- Rows: 2015
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- HM08 Dive compatibility rows from game data are intentionally excluded because
-- HM08 is not legitimately obtainable in FireRed / LeafGreen.
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
  -- Treecko - Pound - Level 1
  (252, 25200, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Treecko - Leer - Level 1
  (252, 25200, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Treecko - Absorb - Level 6
  (252, 25200, 71, 6, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Treecko - Quick Attack - Level 11
  (252, 25200, 98, 6, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Treecko - Pursuit - Level 16
  (252, 25200, 228, 6, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Treecko - Screech - Level 21
  (252, 25200, 103, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Treecko - Mega Drain - Level 26
  (252, 25200, 72, 6, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Treecko - Agility - Level 31
  (252, 25200, 97, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Treecko - Slam - Level 36
  (252, 25200, 21, 6, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Treecko - Detect - Level 41
  (252, 25200, 197, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Treecko - Giga Drain - Level 46
  (252, 25200, 202, 6, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Treecko - Focus Punch - TM01
  (252, 25200, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 12),
  -- Treecko - Toxic - TM06
  (252, 25200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 13),
  -- Treecko - Bullet Seed - TM09
  (252, 25200, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 14),
  -- Treecko - Hidden Power - TM10
  (252, 25200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Treecko - Sunny Day - TM11
  (252, 25200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Treecko - Protect - TM17
  (252, 25200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Treecko - Giga Drain - TM19
  (252, 25200, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 18),
  -- Treecko - Safeguard - TM20
  (252, 25200, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 19),
  -- Treecko - Frustration - TM21
  (252, 25200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Treecko - Solar Beam - TM22
  (252, 25200, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 21),
  -- Treecko - Iron Tail - TM23
  (252, 25200, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 22),
  -- Treecko - Return - TM27
  (252, 25200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Treecko - Dig - TM28
  (252, 25200, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 24),
  -- Treecko - Brick Break - TM31
  (252, 25200, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 25),
  -- Treecko - Double Team - TM32
  (252, 25200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Treecko - Rock Tomb - TM39
  (252, 25200, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 27),
  -- Treecko - Aerial Ace - TM40
  (252, 25200, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 28),
  -- Treecko - Facade - TM42
  (252, 25200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Treecko - Secret Power - TM43
  (252, 25200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Treecko - Rest - TM44
  (252, 25200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Treecko - Attract - TM45
  (252, 25200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Treecko - Cut - HM01
  (252, 25200, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 33),
  -- Treecko - Strength - HM04
  (252, 25200, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 34),
  -- Treecko - Flash - HM05
  (252, 25200, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 35),
  -- Treecko - Rock Smash - HM06
  (252, 25200, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 36),
  -- Treecko - Crunch - Egg Move
  (252, 25200, 242, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Treecko - Crush Claw - Egg Move
  (252, 25200, 306, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Treecko - Dragon Breath - Egg Move
  (252, 25200, 225, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Treecko - Endeavor - Egg Move
  (252, 25200, 283, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Treecko - Leech Seed - Egg Move
  (252, 25200, 73, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Treecko - Mud Sport - Egg Move
  (252, 25200, 300, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Treecko - Body Slam - Move Tutor
  (252, 25200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Treecko - Counter - Move Tutor
  (252, 25200, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Treecko - Double-Edge - Move Tutor
  (252, 25200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Treecko - Mega Kick - Move Tutor
  (252, 25200, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Treecko - Mega Punch - Move Tutor
  (252, 25200, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Treecko - Mimic - Move Tutor
  (252, 25200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Treecko - Seismic Toss - Move Tutor
  (252, 25200, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Treecko - Substitute - Move Tutor
  (252, 25200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Treecko - Swords Dance - Move Tutor
  (252, 25200, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Grovyle - Pound - Level 1
  (253, 25300, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grovyle - Leer - Level 1
  (253, 25300, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grovyle - Absorb - Level 1
  (253, 25300, 71, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grovyle - Quick Attack - Level 1
  (253, 25300, 98, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grovyle - Absorb - Level 6
  (253, 25300, 71, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Grovyle - Quick Attack - Level 11
  (253, 25300, 98, 6, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Grovyle - Fury Cutter - Level 16
  (253, 25300, 210, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Grovyle - Pursuit - Level 17
  (253, 25300, 228, 6, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Grovyle - Screech - Level 23
  (253, 25300, 103, 6, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Grovyle - Leaf Blade - Level 29
  (253, 25300, 348, 6, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Grovyle - Agility - Level 35
  (253, 25300, 97, 6, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Grovyle - Slam - Level 41
  (253, 25300, 21, 6, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Grovyle - Detect - Level 47
  (253, 25300, 197, 6, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Grovyle - False Swipe - Level 53
  (253, 25300, 206, 6, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Grovyle - Focus Punch - TM01
  (253, 25300, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 15),
  -- Grovyle - Toxic - TM06
  (253, 25300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Grovyle - Bullet Seed - TM09
  (253, 25300, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 17),
  -- Grovyle - Hidden Power - TM10
  (253, 25300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Grovyle - Sunny Day - TM11
  (253, 25300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Grovyle - Protect - TM17
  (253, 25300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Grovyle - Giga Drain - TM19
  (253, 25300, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 21),
  -- Grovyle - Safeguard - TM20
  (253, 25300, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 22),
  -- Grovyle - Frustration - TM21
  (253, 25300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Grovyle - Solar Beam - TM22
  (253, 25300, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 24),
  -- Grovyle - Iron Tail - TM23
  (253, 25300, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 25),
  -- Grovyle - Return - TM27
  (253, 25300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Grovyle - Dig - TM28
  (253, 25300, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 27),
  -- Grovyle - Brick Break - TM31
  (253, 25300, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 28),
  -- Grovyle - Double Team - TM32
  (253, 25300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Grovyle - Rock Tomb - TM39
  (253, 25300, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 30),
  -- Grovyle - Aerial Ace - TM40
  (253, 25300, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 31),
  -- Grovyle - Facade - TM42
  (253, 25300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 32),
  -- Grovyle - Secret Power - TM43
  (253, 25300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 33),
  -- Grovyle - Rest - TM44
  (253, 25300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 34),
  -- Grovyle - Attract - TM45
  (253, 25300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 35),
  -- Grovyle - Cut - HM01
  (253, 25300, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 36),
  -- Grovyle - Strength - HM04
  (253, 25300, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 37),
  -- Grovyle - Flash - HM05
  (253, 25300, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 38),
  -- Grovyle - Rock Smash - HM06
  (253, 25300, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 39),
  -- Grovyle - Body Slam - Move Tutor
  (253, 25300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Grovyle - Counter - Move Tutor
  (253, 25300, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Grovyle - Double-Edge - Move Tutor
  (253, 25300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Grovyle - Mega Kick - Move Tutor
  (253, 25300, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Grovyle - Mega Punch - Move Tutor
  (253, 25300, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Grovyle - Mimic - Move Tutor
  (253, 25300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Grovyle - Seismic Toss - Move Tutor
  (253, 25300, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Grovyle - Substitute - Move Tutor
  (253, 25300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Grovyle - Swords Dance - Move Tutor
  (253, 25300, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Sceptile - Pound - Level 1
  (254, 25400, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sceptile - Leer - Level 1
  (254, 25400, 43, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sceptile - Absorb - Level 1
  (254, 25400, 71, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sceptile - Quick Attack - Level 1
  (254, 25400, 98, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sceptile - Absorb - Level 6
  (254, 25400, 71, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Sceptile - Quick Attack - Level 11
  (254, 25400, 98, 6, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Sceptile - Fury Cutter - Level 16
  (254, 25400, 210, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Sceptile - Pursuit - Level 17
  (254, 25400, 228, 6, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Sceptile - Screech - Level 23
  (254, 25400, 103, 6, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Sceptile - Leaf Blade - Level 29
  (254, 25400, 348, 6, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Sceptile - Agility - Level 35
  (254, 25400, 97, 6, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Sceptile - Slam - Level 43
  (254, 25400, 21, 6, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Sceptile - Detect - Level 51
  (254, 25400, 197, 6, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Sceptile - False Swipe - Level 59
  (254, 25400, 206, 6, NULL, 1, 59, NULL, NULL, NULL, 14),
  -- Sceptile - Focus Punch - TM01
  (254, 25400, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 15),
  -- Sceptile - Dragon Claw - TM02
  (254, 25400, 337, 6, NULL, 2, NULL, NULL, 6002002, NULL, 16),
  -- Sceptile - Roar - TM05
  (254, 25400, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 17),
  -- Sceptile - Toxic - TM06
  (254, 25400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 18),
  -- Sceptile - Bullet Seed - TM09
  (254, 25400, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 19),
  -- Sceptile - Hidden Power - TM10
  (254, 25400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 20),
  -- Sceptile - Sunny Day - TM11
  (254, 25400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 21),
  -- Sceptile - Hyper Beam - TM15
  (254, 25400, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 22),
  -- Sceptile - Protect - TM17
  (254, 25400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 23),
  -- Sceptile - Giga Drain - TM19
  (254, 25400, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 24),
  -- Sceptile - Safeguard - TM20
  (254, 25400, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 25),
  -- Sceptile - Frustration - TM21
  (254, 25400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 26),
  -- Sceptile - Solar Beam - TM22
  (254, 25400, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 27),
  -- Sceptile - Iron Tail - TM23
  (254, 25400, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 28),
  -- Sceptile - Earthquake - TM26
  (254, 25400, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 29),
  -- Sceptile - Return - TM27
  (254, 25400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 30),
  -- Sceptile - Dig - TM28
  (254, 25400, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 31),
  -- Sceptile - Brick Break - TM31
  (254, 25400, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 32),
  -- Sceptile - Double Team - TM32
  (254, 25400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 33),
  -- Sceptile - Rock Tomb - TM39
  (254, 25400, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 34),
  -- Sceptile - Aerial Ace - TM40
  (254, 25400, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 35),
  -- Sceptile - Facade - TM42
  (254, 25400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 36),
  -- Sceptile - Secret Power - TM43
  (254, 25400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 37),
  -- Sceptile - Rest - TM44
  (254, 25400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 38),
  -- Sceptile - Attract - TM45
  (254, 25400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 39),
  -- Sceptile - Cut - HM01
  (254, 25400, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 40),
  -- Sceptile - Strength - HM04
  (254, 25400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 41),
  -- Sceptile - Flash - HM05
  (254, 25400, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 42),
  -- Sceptile - Rock Smash - HM06
  (254, 25400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 43),
  -- Sceptile - Body Slam - Move Tutor
  (254, 25400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Sceptile - Counter - Move Tutor
  (254, 25400, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Sceptile - Double-Edge - Move Tutor
  (254, 25400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Sceptile - Mega Kick - Move Tutor
  (254, 25400, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Sceptile - Mega Punch - Move Tutor
  (254, 25400, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Sceptile - Mimic - Move Tutor
  (254, 25400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Sceptile - Seismic Toss - Move Tutor
  (254, 25400, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Sceptile - Substitute - Move Tutor
  (254, 25400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Sceptile - Swords Dance - Move Tutor
  (254, 25400, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Torchic - Scratch - Level 1
  (255, 25500, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torchic - Growl - Level 1
  (255, 25500, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torchic - Focus Energy - Level 7
  (255, 25500, 116, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Torchic - Ember - Level 10
  (255, 25500, 52, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Torchic - Peck - Level 16
  (255, 25500, 64, 6, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Torchic - Sand Attack - Level 19
  (255, 25500, 28, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Torchic - Fire Spin - Level 25
  (255, 25500, 83, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Torchic - Quick Attack - Level 28
  (255, 25500, 98, 6, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Torchic - Slash - Level 34
  (255, 25500, 163, 6, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Torchic - Mirror Move - Level 37
  (255, 25500, 119, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Torchic - Flamethrower - Level 43
  (255, 25500, 53, 6, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Torchic - Toxic - TM06
  (255, 25500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Torchic - Hidden Power - TM10
  (255, 25500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Torchic - Sunny Day - TM11
  (255, 25500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Torchic - Protect - TM17
  (255, 25500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Torchic - Frustration - TM21
  (255, 25500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 16),
  -- Torchic - Return - TM27
  (255, 25500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 17),
  -- Torchic - Dig - TM28
  (255, 25500, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 18),
  -- Torchic - Double Team - TM32
  (255, 25500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 19),
  -- Torchic - Flamethrower - TM35
  (255, 25500, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 20),
  -- Torchic - Fire Blast - TM38
  (255, 25500, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 21),
  -- Torchic - Rock Tomb - TM39
  (255, 25500, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 22),
  -- Torchic - Aerial Ace - TM40
  (255, 25500, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 23),
  -- Torchic - Facade - TM42
  (255, 25500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Torchic - Secret Power - TM43
  (255, 25500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Torchic - Rest - TM44
  (255, 25500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Torchic - Attract - TM45
  (255, 25500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 27),
  -- Torchic - Overheat - TM50
  (255, 25500, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 28),
  -- Torchic - Cut - HM01
  (255, 25500, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 29),
  -- Torchic - Strength - HM04
  (255, 25500, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 30),
  -- Torchic - Rock Smash - HM06
  (255, 25500, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 31),
  -- Torchic - Counter - Egg Move
  (255, 25500, 68, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Torchic - Endure - Egg Move
  (255, 25500, 203, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Torchic - Reversal - Egg Move
  (255, 25500, 179, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Torchic - Rock Slide - Egg Move
  (255, 25500, 157, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Torchic - Smelling Salts - Egg Move
  (255, 25500, 265, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Torchic - Swagger - Egg Move
  (255, 25500, 207, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Torchic - Body Slam - Move Tutor
  (255, 25500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Torchic - Counter - Move Tutor
  (255, 25500, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Torchic - Double-Edge - Move Tutor
  (255, 25500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Torchic - Mega Kick - Move Tutor
  (255, 25500, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Torchic - Mega Punch - Move Tutor
  (255, 25500, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Torchic - Mimic - Move Tutor
  (255, 25500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Torchic - Rock Slide - Move Tutor
  (255, 25500, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Torchic - Seismic Toss - Move Tutor
  (255, 25500, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Torchic - Substitute - Move Tutor
  (255, 25500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Torchic - Swords Dance - Move Tutor
  (255, 25500, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Combusken - Scratch - Level 1
  (256, 25600, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combusken - Growl - Level 1
  (256, 25600, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combusken - Focus Energy - Level 1
  (256, 25600, 116, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Combusken - Ember - Level 1
  (256, 25600, 52, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Combusken - Focus Energy - Level 7
  (256, 25600, 116, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Combusken - Ember - Level 13
  (256, 25600, 52, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Combusken - Double Kick - Level 16
  (256, 25600, 24, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Combusken - Peck - Level 17
  (256, 25600, 64, 6, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Combusken - Sand Attack - Level 21
  (256, 25600, 28, 6, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Combusken - Bulk Up - Level 28
  (256, 25600, 339, 6, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Combusken - Quick Attack - Level 32
  (256, 25600, 98, 6, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Combusken - Slash - Level 39
  (256, 25600, 163, 6, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Combusken - Mirror Move - Level 43
  (256, 25600, 119, 6, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Combusken - Sky Uppercut - Level 50
  (256, 25600, 327, 6, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Combusken - Focus Punch - TM01
  (256, 25600, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 15),
  -- Combusken - Toxic - TM06
  (256, 25600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Combusken - Bulk Up - TM08
  (256, 25600, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 17),
  -- Combusken - Hidden Power - TM10
  (256, 25600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Combusken - Sunny Day - TM11
  (256, 25600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Combusken - Protect - TM17
  (256, 25600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Combusken - Frustration - TM21
  (256, 25600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Combusken - Return - TM27
  (256, 25600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Combusken - Dig - TM28
  (256, 25600, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 23),
  -- Combusken - Brick Break - TM31
  (256, 25600, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 24),
  -- Combusken - Double Team - TM32
  (256, 25600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Combusken - Flamethrower - TM35
  (256, 25600, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 26),
  -- Combusken - Fire Blast - TM38
  (256, 25600, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 27),
  -- Combusken - Rock Tomb - TM39
  (256, 25600, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 28),
  -- Combusken - Aerial Ace - TM40
  (256, 25600, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 29),
  -- Combusken - Facade - TM42
  (256, 25600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Combusken - Secret Power - TM43
  (256, 25600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Combusken - Rest - TM44
  (256, 25600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Combusken - Attract - TM45
  (256, 25600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Combusken - Overheat - TM50
  (256, 25600, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 34),
  -- Combusken - Cut - HM01
  (256, 25600, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 35),
  -- Combusken - Strength - HM04
  (256, 25600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 36),
  -- Combusken - Rock Smash - HM06
  (256, 25600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 37),
  -- Combusken - Body Slam - Move Tutor
  (256, 25600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Combusken - Counter - Move Tutor
  (256, 25600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Combusken - Double-Edge - Move Tutor
  (256, 25600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Combusken - Mega Kick - Move Tutor
  (256, 25600, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Combusken - Mega Punch - Move Tutor
  (256, 25600, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Combusken - Mimic - Move Tutor
  (256, 25600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Combusken - Rock Slide - Move Tutor
  (256, 25600, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Combusken - Seismic Toss - Move Tutor
  (256, 25600, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Combusken - Substitute - Move Tutor
  (256, 25600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Combusken - Swords Dance - Move Tutor
  (256, 25600, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Blaziken - Fire Punch - Level 1
  (257, 25700, 7, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blaziken - Scratch - Level 1
  (257, 25700, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blaziken - Growl - Level 1
  (257, 25700, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blaziken - Focus Energy - Level 1
  (257, 25700, 116, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blaziken - Ember - Level 1
  (257, 25700, 52, 6, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blaziken - Focus Energy - Level 7
  (257, 25700, 116, 6, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Blaziken - Ember - Level 13
  (257, 25700, 52, 6, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Blaziken - Double Kick - Level 16
  (257, 25700, 24, 6, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Blaziken - Peck - Level 17
  (257, 25700, 64, 6, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Blaziken - Sand Attack - Level 21
  (257, 25700, 28, 6, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Blaziken - Bulk Up - Level 28
  (257, 25700, 339, 6, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Blaziken - Quick Attack - Level 32
  (257, 25700, 98, 6, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Blaziken - Blaze Kick - Level 36
  (257, 25700, 299, 6, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Blaziken - Slash - Level 42
  (257, 25700, 163, 6, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Blaziken - Mirror Move - Level 49
  (257, 25700, 119, 6, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Blaziken - Sky Uppercut - Level 59
  (257, 25700, 327, 6, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Blaziken - Focus Punch - TM01
  (257, 25700, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 17),
  -- Blaziken - Roar - TM05
  (257, 25700, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 18),
  -- Blaziken - Toxic - TM06
  (257, 25700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 19),
  -- Blaziken - Bulk Up - TM08
  (257, 25700, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 20),
  -- Blaziken - Hidden Power - TM10
  (257, 25700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 21),
  -- Blaziken - Sunny Day - TM11
  (257, 25700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 22),
  -- Blaziken - Hyper Beam - TM15
  (257, 25700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 23),
  -- Blaziken - Protect - TM17
  (257, 25700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 24),
  -- Blaziken - Frustration - TM21
  (257, 25700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 25),
  -- Blaziken - Earthquake - TM26
  (257, 25700, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 26),
  -- Blaziken - Return - TM27
  (257, 25700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 27),
  -- Blaziken - Dig - TM28
  (257, 25700, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 28),
  -- Blaziken - Brick Break - TM31
  (257, 25700, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 29),
  -- Blaziken - Double Team - TM32
  (257, 25700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 30),
  -- Blaziken - Flamethrower - TM35
  (257, 25700, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 31),
  -- Blaziken - Fire Blast - TM38
  (257, 25700, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 32),
  -- Blaziken - Rock Tomb - TM39
  (257, 25700, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 33),
  -- Blaziken - Aerial Ace - TM40
  (257, 25700, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 34),
  -- Blaziken - Facade - TM42
  (257, 25700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 35),
  -- Blaziken - Secret Power - TM43
  (257, 25700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 36),
  -- Blaziken - Rest - TM44
  (257, 25700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 37),
  -- Blaziken - Attract - TM45
  (257, 25700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 38),
  -- Blaziken - Overheat - TM50
  (257, 25700, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 39),
  -- Blaziken - Cut - HM01
  (257, 25700, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 40),
  -- Blaziken - Strength - HM04
  (257, 25700, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 41),
  -- Blaziken - Rock Smash - HM06
  (257, 25700, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 42),
  -- Blaziken - Body Slam - Move Tutor
  (257, 25700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Blaziken - Counter - Move Tutor
  (257, 25700, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Blaziken - Double-Edge - Move Tutor
  (257, 25700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Blaziken - Mega Kick - Move Tutor
  (257, 25700, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Blaziken - Mega Punch - Move Tutor
  (257, 25700, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Blaziken - Mimic - Move Tutor
  (257, 25700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Blaziken - Rock Slide - Move Tutor
  (257, 25700, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Blaziken - Seismic Toss - Move Tutor
  (257, 25700, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Blaziken - Substitute - Move Tutor
  (257, 25700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Blaziken - Swords Dance - Move Tutor
  (257, 25700, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Mudkip - Tackle - Level 1
  (258, 25800, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudkip - Growl - Level 1
  (258, 25800, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudkip - Mud-Slap - Level 6
  (258, 25800, 189, 6, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Mudkip - Water Gun - Level 10
  (258, 25800, 55, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mudkip - Bide - Level 15
  (258, 25800, 117, 6, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mudkip - Foresight - Level 19
  (258, 25800, 193, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Mudkip - Mud Sport - Level 24
  (258, 25800, 300, 6, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Mudkip - Take Down - Level 28
  (258, 25800, 36, 6, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Mudkip - Whirlpool - Level 33
  (258, 25800, 250, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Mudkip - Protect - Level 37
  (258, 25800, 182, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Mudkip - Hydro Pump - Level 42
  (258, 25800, 56, 6, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Mudkip - Endeavor - Level 46
  (258, 25800, 283, 6, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Mudkip - Water Pulse - TM03
  (258, 25800, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Mudkip - Toxic - TM06
  (258, 25800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Mudkip - Hail - TM07
  (258, 25800, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 15),
  -- Mudkip - Hidden Power - TM10
  (258, 25800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Mudkip - Ice Beam - TM13
  (258, 25800, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 17),
  -- Mudkip - Blizzard - TM14
  (258, 25800, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 18),
  -- Mudkip - Protect - TM17
  (258, 25800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Mudkip - Rain Dance - TM18
  (258, 25800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Mudkip - Frustration - TM21
  (258, 25800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Mudkip - Iron Tail - TM23
  (258, 25800, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 22),
  -- Mudkip - Return - TM27
  (258, 25800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Mudkip - Dig - TM28
  (258, 25800, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 24),
  -- Mudkip - Double Team - TM32
  (258, 25800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Mudkip - Rock Tomb - TM39
  (258, 25800, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 26),
  -- Mudkip - Facade - TM42
  (258, 25800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Mudkip - Secret Power - TM43
  (258, 25800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Mudkip - Rest - TM44
  (258, 25800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Mudkip - Attract - TM45
  (258, 25800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Mudkip - Surf - HM03
  (258, 25800, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 31),
  -- Mudkip - Strength - HM04
  (258, 25800, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 32),
  -- Mudkip - Rock Smash - HM06
  (258, 25800, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 33),
  -- Mudkip - Waterfall - HM07
  (258, 25800, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 34),
  -- Mudkip - Curse - Egg Move
  (258, 25800, 174, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Mudkip - Ice Ball - Egg Move
  (258, 25800, 301, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Mudkip - Mirror Coat - Egg Move
  (258, 25800, 243, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Mudkip - Refresh - Egg Move
  (258, 25800, 287, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Mudkip - Stomp - Egg Move
  (258, 25800, 23, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mudkip - Uproar - Egg Move
  (258, 25800, 253, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mudkip - Body Slam - Move Tutor
  (258, 25800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Mudkip - Double-Edge - Move Tutor
  (258, 25800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Mudkip - Mimic - Move Tutor
  (258, 25800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Mudkip - Substitute - Move Tutor
  (258, 25800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Marshtomp - Tackle - Level 1
  (259, 25900, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marshtomp - Growl - Level 1
  (259, 25900, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marshtomp - Mud-Slap - Level 1
  (259, 25900, 189, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marshtomp - Water Gun - Level 1
  (259, 25900, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marshtomp - Mud-Slap - Level 6
  (259, 25900, 189, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Marshtomp - Water Gun - Level 10
  (259, 25900, 55, 6, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Marshtomp - Bide - Level 15
  (259, 25900, 117, 6, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Marshtomp - Mud Shot - Level 16
  (259, 25900, 341, 6, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Marshtomp - Foresight - Level 20
  (259, 25900, 193, 6, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Marshtomp - Mud Sport - Level 25
  (259, 25900, 300, 6, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Marshtomp - Take Down - Level 31
  (259, 25900, 36, 6, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Marshtomp - Muddy Water - Level 37
  (259, 25900, 330, 6, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Marshtomp - Protect - Level 42
  (259, 25900, 182, 6, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Marshtomp - Earthquake - Level 46
  (259, 25900, 89, 6, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Marshtomp - Endeavor - Level 53
  (259, 25900, 283, 6, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Marshtomp - Water Pulse - TM03
  (259, 25900, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 16),
  -- Marshtomp - Toxic - TM06
  (259, 25900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Marshtomp - Hail - TM07
  (259, 25900, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 18),
  -- Marshtomp - Hidden Power - TM10
  (259, 25900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Marshtomp - Ice Beam - TM13
  (259, 25900, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 20),
  -- Marshtomp - Blizzard - TM14
  (259, 25900, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 21),
  -- Marshtomp - Protect - TM17
  (259, 25900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Marshtomp - Rain Dance - TM18
  (259, 25900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Marshtomp - Frustration - TM21
  (259, 25900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Marshtomp - Iron Tail - TM23
  (259, 25900, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 25),
  -- Marshtomp - Earthquake - TM26
  (259, 25900, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 26),
  -- Marshtomp - Return - TM27
  (259, 25900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 27),
  -- Marshtomp - Dig - TM28
  (259, 25900, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 28),
  -- Marshtomp - Double Team - TM32
  (259, 25900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Marshtomp - Rock Tomb - TM39
  (259, 25900, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 30),
  -- Marshtomp - Facade - TM42
  (259, 25900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Marshtomp - Secret Power - TM43
  (259, 25900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Marshtomp - Rest - TM44
  (259, 25900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Marshtomp - Attract - TM45
  (259, 25900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 34),
  -- Marshtomp - Surf - HM03
  (259, 25900, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 35),
  -- Marshtomp - Strength - HM04
  (259, 25900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 36),
  -- Marshtomp - Rock Smash - HM06
  (259, 25900, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 37),
  -- Marshtomp - Waterfall - HM07
  (259, 25900, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 38),
  -- Marshtomp - Body Slam - Move Tutor
  (259, 25900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Marshtomp - Counter - Move Tutor
  (259, 25900, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Marshtomp - Double-Edge - Move Tutor
  (259, 25900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Marshtomp - Mega Kick - Move Tutor
  (259, 25900, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Marshtomp - Mega Punch - Move Tutor
  (259, 25900, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Marshtomp - Mimic - Move Tutor
  (259, 25900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Marshtomp - Rock Slide - Move Tutor
  (259, 25900, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Marshtomp - Seismic Toss - Move Tutor
  (259, 25900, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Marshtomp - Substitute - Move Tutor
  (259, 25900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Swampert - Tackle - Level 1
  (260, 26000, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swampert - Growl - Level 1
  (260, 26000, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swampert - Mud-Slap - Level 1
  (260, 26000, 189, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swampert - Water Gun - Level 1
  (260, 26000, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swampert - Mud-Slap - Level 6
  (260, 26000, 189, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Swampert - Water Gun - Level 10
  (260, 26000, 55, 6, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Swampert - Bide - Level 15
  (260, 26000, 117, 6, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Swampert - Mud Shot - Level 16
  (260, 26000, 341, 6, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Swampert - Foresight - Level 20
  (260, 26000, 193, 6, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Swampert - Mud Sport - Level 25
  (260, 26000, 300, 6, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Swampert - Take Down - Level 31
  (260, 26000, 36, 6, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Swampert - Muddy Water - Level 39
  (260, 26000, 330, 6, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Swampert - Protect - Level 46
  (260, 26000, 182, 6, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Swampert - Earthquake - Level 52
  (260, 26000, 89, 6, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Swampert - Endeavor - Level 61
  (260, 26000, 283, 6, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Swampert - Focus Punch - TM01
  (260, 26000, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 16),
  -- Swampert - Water Pulse - TM03
  (260, 26000, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 17),
  -- Swampert - Roar - TM05
  (260, 26000, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 18),
  -- Swampert - Toxic - TM06
  (260, 26000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 19),
  -- Swampert - Hail - TM07
  (260, 26000, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 20),
  -- Swampert - Hidden Power - TM10
  (260, 26000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 21),
  -- Swampert - Ice Beam - TM13
  (260, 26000, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 22),
  -- Swampert - Blizzard - TM14
  (260, 26000, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 23),
  -- Swampert - Hyper Beam - TM15
  (260, 26000, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 24),
  -- Swampert - Protect - TM17
  (260, 26000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 25),
  -- Swampert - Rain Dance - TM18
  (260, 26000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 26),
  -- Swampert - Frustration - TM21
  (260, 26000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 27),
  -- Swampert - Iron Tail - TM23
  (260, 26000, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 28),
  -- Swampert - Earthquake - TM26
  (260, 26000, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 29),
  -- Swampert - Return - TM27
  (260, 26000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 30),
  -- Swampert - Dig - TM28
  (260, 26000, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 31),
  -- Swampert - Brick Break - TM31
  (260, 26000, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 32),
  -- Swampert - Double Team - TM32
  (260, 26000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 33),
  -- Swampert - Rock Tomb - TM39
  (260, 26000, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 34),
  -- Swampert - Facade - TM42
  (260, 26000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 35),
  -- Swampert - Secret Power - TM43
  (260, 26000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 36),
  -- Swampert - Rest - TM44
  (260, 26000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 37),
  -- Swampert - Attract - TM45
  (260, 26000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 38),
  -- Swampert - Surf - HM03
  (260, 26000, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 39),
  -- Swampert - Strength - HM04
  (260, 26000, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 40),
  -- Swampert - Rock Smash - HM06
  (260, 26000, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 41),
  -- Swampert - Waterfall - HM07
  (260, 26000, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 42),
  -- Swampert - Body Slam - Move Tutor
  (260, 26000, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Swampert - Counter - Move Tutor
  (260, 26000, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Swampert - Double-Edge - Move Tutor
  (260, 26000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Swampert - Mega Kick - Move Tutor
  (260, 26000, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Swampert - Mega Punch - Move Tutor
  (260, 26000, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Swampert - Mimic - Move Tutor
  (260, 26000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Swampert - Rock Slide - Move Tutor
  (260, 26000, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Swampert - Seismic Toss - Move Tutor
  (260, 26000, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Swampert - Substitute - Move Tutor
  (260, 26000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Poochyena - Tackle - Level 1
  (261, 26100, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poochyena - Howl - Level 5
  (261, 26100, 336, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Poochyena - Sand Attack - Level 9
  (261, 26100, 28, 6, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Poochyena - Bite - Level 13
  (261, 26100, 44, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Poochyena - Odor Sleuth - Level 17
  (261, 26100, 316, 6, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Poochyena - Roar - Level 21
  (261, 26100, 46, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Poochyena - Swagger - Level 25
  (261, 26100, 207, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Poochyena - Scary Face - Level 29
  (261, 26100, 184, 6, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Poochyena - Take Down - Level 33
  (261, 26100, 36, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Poochyena - Taunt - Level 37
  (261, 26100, 269, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Poochyena - Crunch - Level 41
  (261, 26100, 242, 6, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Poochyena - Thief - Level 45
  (261, 26100, 168, 6, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Poochyena - Roar - TM05
  (261, 26100, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 13),
  -- Poochyena - Toxic - TM06
  (261, 26100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Poochyena - Hidden Power - TM10
  (261, 26100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Poochyena - Sunny Day - TM11
  (261, 26100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Poochyena - Taunt - TM12
  (261, 26100, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 17),
  -- Poochyena - Protect - TM17
  (261, 26100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Poochyena - Rain Dance - TM18
  (261, 26100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Poochyena - Frustration - TM21
  (261, 26100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Poochyena - Iron Tail - TM23
  (261, 26100, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 21),
  -- Poochyena - Return - TM27
  (261, 26100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Poochyena - Dig - TM28
  (261, 26100, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 23),
  -- Poochyena - Shadow Ball - TM30
  (261, 26100, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 24),
  -- Poochyena - Double Team - TM32
  (261, 26100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Poochyena - Torment - TM41
  (261, 26100, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 26),
  -- Poochyena - Facade - TM42
  (261, 26100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Poochyena - Secret Power - TM43
  (261, 26100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Poochyena - Rest - TM44
  (261, 26100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Poochyena - Attract - TM45
  (261, 26100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Poochyena - Thief - TM46
  (261, 26100, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 31),
  -- Poochyena - Snatch - TM49
  (261, 26100, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 32),
  -- Poochyena - Rock Smash - HM06
  (261, 26100, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 33),
  -- Poochyena - Astonish - Egg Move
  (261, 26100, 310, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Poochyena - Covet - Egg Move
  (261, 26100, 343, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Poochyena - Leer - Egg Move
  (261, 26100, 43, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Poochyena - Poison Fang - Egg Move
  (261, 26100, 305, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Poochyena - Yawn - Egg Move
  (261, 26100, 281, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Poochyena - Body Slam - Move Tutor
  (261, 26100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Poochyena - Counter - Move Tutor
  (261, 26100, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Poochyena - Double-Edge - Move Tutor
  (261, 26100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Poochyena - Mimic - Move Tutor
  (261, 26100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Poochyena - Substitute - Move Tutor
  (261, 26100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Mightyena - Tackle - Level 1
  (262, 26200, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mightyena - Howl - Level 1
  (262, 26200, 336, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mightyena - Sand Attack - Level 1
  (262, 26200, 28, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mightyena - Bite - Level 1
  (262, 26200, 44, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mightyena - Howl - Level 5
  (262, 26200, 336, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Mightyena - Sand Attack - Level 9
  (262, 26200, 28, 6, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Mightyena - Bite - Level 13
  (262, 26200, 44, 6, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Mightyena - Odor Sleuth - Level 17
  (262, 26200, 316, 6, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Mightyena - Roar - Level 22
  (262, 26200, 46, 6, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Mightyena - Swagger - Level 27
  (262, 26200, 207, 6, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Mightyena - Scary Face - Level 32
  (262, 26200, 184, 6, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mightyena - Take Down - Level 37
  (262, 26200, 36, 6, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Mightyena - Taunt - Level 42
  (262, 26200, 269, 6, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Mightyena - Crunch - Level 47
  (262, 26200, 242, 6, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Mightyena - Thief - Level 52
  (262, 26200, 168, 6, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Mightyena - Roar - TM05
  (262, 26200, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 16),
  -- Mightyena - Toxic - TM06
  (262, 26200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Mightyena - Hidden Power - TM10
  (262, 26200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Mightyena - Sunny Day - TM11
  (262, 26200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Mightyena - Taunt - TM12
  (262, 26200, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 20),
  -- Mightyena - Hyper Beam - TM15
  (262, 26200, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Mightyena - Protect - TM17
  (262, 26200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Mightyena - Rain Dance - TM18
  (262, 26200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Mightyena - Frustration - TM21
  (262, 26200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Mightyena - Iron Tail - TM23
  (262, 26200, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 25),
  -- Mightyena - Return - TM27
  (262, 26200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Mightyena - Dig - TM28
  (262, 26200, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 27),
  -- Mightyena - Shadow Ball - TM30
  (262, 26200, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 28),
  -- Mightyena - Double Team - TM32
  (262, 26200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Mightyena - Torment - TM41
  (262, 26200, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 30),
  -- Mightyena - Facade - TM42
  (262, 26200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Mightyena - Secret Power - TM43
  (262, 26200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Mightyena - Rest - TM44
  (262, 26200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Mightyena - Attract - TM45
  (262, 26200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 34),
  -- Mightyena - Thief - TM46
  (262, 26200, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 35),
  -- Mightyena - Snatch - TM49
  (262, 26200, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 36),
  -- Mightyena - Strength - HM04
  (262, 26200, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 37),
  -- Mightyena - Rock Smash - HM06
  (262, 26200, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 38),
  -- Mightyena - Body Slam - Move Tutor
  (262, 26200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Mightyena - Counter - Move Tutor
  (262, 26200, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Mightyena - Double-Edge - Move Tutor
  (262, 26200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Mightyena - Mimic - Move Tutor
  (262, 26200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Mightyena - Substitute - Move Tutor
  (262, 26200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Zigzagoon - Tackle - Level 1
  (263, 26300, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zigzagoon - Growl - Level 1
  (263, 26300, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zigzagoon - Tail Whip - Level 5
  (263, 26300, 39, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zigzagoon - Headbutt - Level 9
  (263, 26300, 29, 6, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Zigzagoon - Sand Attack - Level 13
  (263, 26300, 28, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Zigzagoon - Odor Sleuth - Level 17
  (263, 26300, 316, 6, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Zigzagoon - Mud Sport - Level 21
  (263, 26300, 300, 6, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Zigzagoon - Pin Missile - Level 25
  (263, 26300, 42, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Zigzagoon - Covet - Level 29
  (263, 26300, 343, 6, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Zigzagoon - Flail - Level 33
  (263, 26300, 175, 6, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Zigzagoon - Rest - Level 37
  (263, 26300, 156, 6, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Zigzagoon - Belly Drum - Level 41
  (263, 26300, 187, 6, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Zigzagoon - Water Pulse - TM03
  (263, 26300, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Zigzagoon - Toxic - TM06
  (263, 26300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Zigzagoon - Hidden Power - TM10
  (263, 26300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Zigzagoon - Sunny Day - TM11
  (263, 26300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Zigzagoon - Ice Beam - TM13
  (263, 26300, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 17),
  -- Zigzagoon - Blizzard - TM14
  (263, 26300, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 18),
  -- Zigzagoon - Protect - TM17
  (263, 26300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Zigzagoon - Rain Dance - TM18
  (263, 26300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Zigzagoon - Frustration - TM21
  (263, 26300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Zigzagoon - Iron Tail - TM23
  (263, 26300, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 22),
  -- Zigzagoon - Thunderbolt - TM24
  (263, 26300, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 23),
  -- Zigzagoon - Thunder - TM25
  (263, 26300, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 24),
  -- Zigzagoon - Return - TM27
  (263, 26300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Zigzagoon - Dig - TM28
  (263, 26300, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 26),
  -- Zigzagoon - Shadow Ball - TM30
  (263, 26300, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 27),
  -- Zigzagoon - Double Team - TM32
  (263, 26300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 28),
  -- Zigzagoon - Shock Wave - TM34
  (263, 26300, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 29),
  -- Zigzagoon - Facade - TM42
  (263, 26300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Zigzagoon - Secret Power - TM43
  (263, 26300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Zigzagoon - Rest - TM44
  (263, 26300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Zigzagoon - Attract - TM45
  (263, 26300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Zigzagoon - Thief - TM46
  (263, 26300, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 34),
  -- Zigzagoon - Cut - HM01
  (263, 26300, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 35),
  -- Zigzagoon - Surf - HM03
  (263, 26300, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 36),
  -- Zigzagoon - Rock Smash - HM06
  (263, 26300, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 37),
  -- Zigzagoon - Charm - Egg Move
  (263, 26300, 204, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Zigzagoon - Pursuit - Egg Move
  (263, 26300, 228, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Zigzagoon - Substitute - Egg Move
  (263, 26300, 164, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Zigzagoon - Tickle - Egg Move
  (263, 26300, 321, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Zigzagoon - Trick - Egg Move
  (263, 26300, 271, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Zigzagoon - Body Slam - Move Tutor
  (263, 26300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Zigzagoon - Double-Edge - Move Tutor
  (263, 26300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Zigzagoon - Mimic - Move Tutor
  (263, 26300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Zigzagoon - Substitute - Move Tutor
  (263, 26300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Zigzagoon - Thunder Wave - Move Tutor
  (263, 26300, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Linoone - Tackle - Level 1
  (264, 26400, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Linoone - Growl - Level 1
  (264, 26400, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Linoone - Tail Whip - Level 1
  (264, 26400, 39, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Linoone - Headbutt - Level 1
  (264, 26400, 29, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Linoone - Tail Whip - Level 5
  (264, 26400, 39, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Linoone - Headbutt - Level 9
  (264, 26400, 29, 6, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Linoone - Sand Attack - Level 13
  (264, 26400, 28, 6, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Linoone - Odor Sleuth - Level 17
  (264, 26400, 316, 6, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Linoone - Mud Sport - Level 23
  (264, 26400, 300, 6, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Linoone - Fury Swipes - Level 29
  (264, 26400, 154, 6, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Linoone - Covet - Level 35
  (264, 26400, 343, 6, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Linoone - Slash - Level 41
  (264, 26400, 163, 6, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Linoone - Rest - Level 47
  (264, 26400, 156, 6, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Linoone - Belly Drum - Level 53
  (264, 26400, 187, 6, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Linoone - Water Pulse - TM03
  (264, 26400, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 15),
  -- Linoone - Roar - TM05
  (264, 26400, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 16),
  -- Linoone - Toxic - TM06
  (264, 26400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Linoone - Hidden Power - TM10
  (264, 26400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Linoone - Sunny Day - TM11
  (264, 26400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Linoone - Ice Beam - TM13
  (264, 26400, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 20),
  -- Linoone - Blizzard - TM14
  (264, 26400, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 21),
  -- Linoone - Hyper Beam - TM15
  (264, 26400, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 22),
  -- Linoone - Protect - TM17
  (264, 26400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 23),
  -- Linoone - Rain Dance - TM18
  (264, 26400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 24),
  -- Linoone - Frustration - TM21
  (264, 26400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 25),
  -- Linoone - Iron Tail - TM23
  (264, 26400, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 26),
  -- Linoone - Thunderbolt - TM24
  (264, 26400, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 27),
  -- Linoone - Thunder - TM25
  (264, 26400, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 28),
  -- Linoone - Return - TM27
  (264, 26400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 29),
  -- Linoone - Dig - TM28
  (264, 26400, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 30),
  -- Linoone - Shadow Ball - TM30
  (264, 26400, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 31),
  -- Linoone - Double Team - TM32
  (264, 26400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 32),
  -- Linoone - Shock Wave - TM34
  (264, 26400, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 33),
  -- Linoone - Facade - TM42
  (264, 26400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 34),
  -- Linoone - Secret Power - TM43
  (264, 26400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 35),
  -- Linoone - Rest - TM44
  (264, 26400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 36),
  -- Linoone - Attract - TM45
  (264, 26400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 37),
  -- Linoone - Thief - TM46
  (264, 26400, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 38),
  -- Linoone - Cut - HM01
  (264, 26400, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 39),
  -- Linoone - Surf - HM03
  (264, 26400, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 40),
  -- Linoone - Strength - HM04
  (264, 26400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 41),
  -- Linoone - Rock Smash - HM06
  (264, 26400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 42),
  -- Linoone - Body Slam - Move Tutor
  (264, 26400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Linoone - Double-Edge - Move Tutor
  (264, 26400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Linoone - Mimic - Move Tutor
  (264, 26400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Linoone - Substitute - Move Tutor
  (264, 26400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Linoone - Thunder Wave - Move Tutor
  (264, 26400, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Wurmple - Tackle - Level 1
  (265, 26500, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wurmple - String Shot - Level 1
  (265, 26500, 81, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wurmple - Poison Sting - Level 5
  (265, 26500, 40, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Silcoon - Harden - Level 1
  (266, 26600, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silcoon - Harden - Level 7
  (266, 26600, 106, 6, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Beautifly - Absorb - Level 1
  (267, 26700, 71, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beautifly - Absorb - Level 10
  (267, 26700, 71, 6, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Beautifly - Gust - Level 13
  (267, 26700, 16, 6, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Beautifly - Stun Spore - Level 17
  (267, 26700, 78, 6, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Beautifly - Morning Sun - Level 20
  (267, 26700, 234, 6, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Beautifly - Mega Drain - Level 24
  (267, 26700, 72, 6, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Beautifly - Whirlwind - Level 27
  (267, 26700, 18, 6, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Beautifly - Attract - Level 31
  (267, 26700, 213, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Beautifly - Silver Wind - Level 34
  (267, 26700, 318, 6, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Beautifly - Giga Drain - Level 38
  (267, 26700, 202, 6, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Beautifly - Toxic - TM06
  (267, 26700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Beautifly - Hidden Power - TM10
  (267, 26700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Beautifly - Sunny Day - TM11
  (267, 26700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Beautifly - Hyper Beam - TM15
  (267, 26700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 14),
  -- Beautifly - Protect - TM17
  (267, 26700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Beautifly - Giga Drain - TM19
  (267, 26700, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 16),
  -- Beautifly - Safeguard - TM20
  (267, 26700, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 17),
  -- Beautifly - Frustration - TM21
  (267, 26700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Beautifly - Solar Beam - TM22
  (267, 26700, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 19),
  -- Beautifly - Return - TM27
  (267, 26700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Beautifly - Psychic - TM29
  (267, 26700, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 21),
  -- Beautifly - Shadow Ball - TM30
  (267, 26700, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 22),
  -- Beautifly - Double Team - TM32
  (267, 26700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 23),
  -- Beautifly - Aerial Ace - TM40
  (267, 26700, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 24),
  -- Beautifly - Facade - TM42
  (267, 26700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 25),
  -- Beautifly - Secret Power - TM43
  (267, 26700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 26),
  -- Beautifly - Rest - TM44
  (267, 26700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 27),
  -- Beautifly - Attract - TM45
  (267, 26700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 28),
  -- Beautifly - Thief - TM46
  (267, 26700, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 29),
  -- Beautifly - Flash - HM05
  (267, 26700, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 30),
  -- Beautifly - Double-Edge - Move Tutor
  (267, 26700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Beautifly - Mimic - Move Tutor
  (267, 26700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Beautifly - Substitute - Move Tutor
  (267, 26700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Cascoon - Harden - Level 1
  (268, 26800, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cascoon - Harden - Level 7
  (268, 26800, 106, 6, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Dustox - Confusion - Level 1
  (269, 26900, 93, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dustox - Confusion - Level 10
  (269, 26900, 93, 6, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Dustox - Gust - Level 13
  (269, 26900, 16, 6, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Dustox - Protect - Level 17
  (269, 26900, 182, 6, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Dustox - Moonlight - Level 20
  (269, 26900, 236, 6, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Dustox - Psybeam - Level 24
  (269, 26900, 60, 6, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Dustox - Whirlwind - Level 27
  (269, 26900, 18, 6, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Dustox - Light Screen - Level 31
  (269, 26900, 113, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Dustox - Silver Wind - Level 34
  (269, 26900, 318, 6, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Dustox - Toxic - Level 38
  (269, 26900, 92, 6, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Dustox - Toxic - TM06
  (269, 26900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Dustox - Hidden Power - TM10
  (269, 26900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Dustox - Sunny Day - TM11
  (269, 26900, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Dustox - Hyper Beam - TM15
  (269, 26900, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 14),
  -- Dustox - Light Screen - TM16
  (269, 26900, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 15),
  -- Dustox - Protect - TM17
  (269, 26900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Dustox - Giga Drain - TM19
  (269, 26900, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 17),
  -- Dustox - Frustration - TM21
  (269, 26900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Dustox - Solar Beam - TM22
  (269, 26900, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 19),
  -- Dustox - Return - TM27
  (269, 26900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Dustox - Psychic - TM29
  (269, 26900, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 21),
  -- Dustox - Shadow Ball - TM30
  (269, 26900, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 22),
  -- Dustox - Double Team - TM32
  (269, 26900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 23),
  -- Dustox - Sludge Bomb - TM36
  (269, 26900, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 24),
  -- Dustox - Aerial Ace - TM40
  (269, 26900, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 25),
  -- Dustox - Facade - TM42
  (269, 26900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 26),
  -- Dustox - Secret Power - TM43
  (269, 26900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 27),
  -- Dustox - Rest - TM44
  (269, 26900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 28),
  -- Dustox - Attract - TM45
  (269, 26900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 29),
  -- Dustox - Thief - TM46
  (269, 26900, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 30),
  -- Dustox - Flash - HM05
  (269, 26900, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 31),
  -- Dustox - Double-Edge - Move Tutor
  (269, 26900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Dustox - Mimic - Move Tutor
  (269, 26900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Dustox - Substitute - Move Tutor
  (269, 26900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Lotad - Astonish - Level 1
  (270, 27000, 310, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lotad - Growl - Level 3
  (270, 27000, 45, 6, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Lotad - Absorb - Level 7
  (270, 27000, 71, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Lotad - Nature Power - Level 13
  (270, 27000, 267, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Lotad - Mist - Level 21
  (270, 27000, 54, 6, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Lotad - Rain Dance - Level 31
  (270, 27000, 240, 6, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Lotad - Mega Drain - Level 43
  (270, 27000, 72, 6, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Lotad - Water Pulse - TM03
  (270, 27000, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 8),
  -- Lotad - Toxic - TM06
  (270, 27000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 9),
  -- Lotad - Hail - TM07
  (270, 27000, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 10),
  -- Lotad - Bullet Seed - TM09
  (270, 27000, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 11),
  -- Lotad - Hidden Power - TM10
  (270, 27000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Lotad - Sunny Day - TM11
  (270, 27000, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Lotad - Ice Beam - TM13
  (270, 27000, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 14),
  -- Lotad - Blizzard - TM14
  (270, 27000, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 15),
  -- Lotad - Protect - TM17
  (270, 27000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Lotad - Rain Dance - TM18
  (270, 27000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Lotad - Giga Drain - TM19
  (270, 27000, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 18),
  -- Lotad - Frustration - TM21
  (270, 27000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 19),
  -- Lotad - Solar Beam - TM22
  (270, 27000, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 20),
  -- Lotad - Return - TM27
  (270, 27000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 21),
  -- Lotad - Double Team - TM32
  (270, 27000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Lotad - Facade - TM42
  (270, 27000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 23),
  -- Lotad - Secret Power - TM43
  (270, 27000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 24),
  -- Lotad - Rest - TM44
  (270, 27000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 25),
  -- Lotad - Attract - TM45
  (270, 27000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 26),
  -- Lotad - Thief - TM46
  (270, 27000, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 27),
  -- Lotad - Surf - HM03
  (270, 27000, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 28),
  -- Lotad - Flash - HM05
  (270, 27000, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 29),
  -- Lotad - Flail - Egg Move
  (270, 27000, 175, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Lotad - Leech Seed - Egg Move
  (270, 27000, 73, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Lotad - Razor Leaf - Egg Move
  (270, 27000, 75, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Lotad - Sweet Scent - Egg Move
  (270, 27000, 230, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Lotad - Synthesis - Egg Move
  (270, 27000, 235, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Lotad - Water Gun - Egg Move
  (270, 27000, 55, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Lotad - Body Slam - Move Tutor
  (270, 27000, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Lotad - Double-Edge - Move Tutor
  (270, 27000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Lotad - Mimic - Move Tutor
  (270, 27000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Lotad - Substitute - Move Tutor
  (270, 27000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Lotad - Swords Dance - Move Tutor
  (270, 27000, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Lombre - Astonish - Level 1
  (271, 27100, 310, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lombre - Growl - Level 3
  (271, 27100, 45, 6, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Lombre - Absorb - Level 7
  (271, 27100, 71, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Lombre - Nature Power - Level 13
  (271, 27100, 267, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Lombre - Fake Out - Level 19
  (271, 27100, 252, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Lombre - Fury Swipes - Level 25
  (271, 27100, 154, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Lombre - Water Sport - Level 31
  (271, 27100, 346, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Lombre - Thief - Level 37
  (271, 27100, 168, 6, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Lombre - Uproar - Level 43
  (271, 27100, 253, 6, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Lombre - Hydro Pump - Level 49
  (271, 27100, 56, 6, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Lombre - Water Pulse - TM03
  (271, 27100, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 11),
  -- Lombre - Toxic - TM06
  (271, 27100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Lombre - Hail - TM07
  (271, 27100, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 13),
  -- Lombre - Bullet Seed - TM09
  (271, 27100, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 14),
  -- Lombre - Hidden Power - TM10
  (271, 27100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Lombre - Sunny Day - TM11
  (271, 27100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Lombre - Ice Beam - TM13
  (271, 27100, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 17),
  -- Lombre - Blizzard - TM14
  (271, 27100, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 18),
  -- Lombre - Protect - TM17
  (271, 27100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Lombre - Rain Dance - TM18
  (271, 27100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Lombre - Giga Drain - TM19
  (271, 27100, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 21),
  -- Lombre - Frustration - TM21
  (271, 27100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Lombre - Solar Beam - TM22
  (271, 27100, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 23),
  -- Lombre - Return - TM27
  (271, 27100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Lombre - Brick Break - TM31
  (271, 27100, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 25),
  -- Lombre - Double Team - TM32
  (271, 27100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Lombre - Facade - TM42
  (271, 27100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Lombre - Secret Power - TM43
  (271, 27100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Lombre - Rest - TM44
  (271, 27100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Lombre - Attract - TM45
  (271, 27100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Lombre - Thief - TM46
  (271, 27100, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 31),
  -- Lombre - Surf - HM03
  (271, 27100, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 32),
  -- Lombre - Strength - HM04
  (271, 27100, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 33),
  -- Lombre - Flash - HM05
  (271, 27100, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 34),
  -- Lombre - Rock Smash - HM06
  (271, 27100, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 35),
  -- Lombre - Waterfall - HM07
  (271, 27100, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 36),
  -- Lombre - Body Slam - Move Tutor
  (271, 27100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Lombre - Double-Edge - Move Tutor
  (271, 27100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Lombre - Mimic - Move Tutor
  (271, 27100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Lombre - Substitute - Move Tutor
  (271, 27100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Lombre - Swords Dance - Move Tutor
  (271, 27100, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Ludicolo - Astonish - Level 1
  (272, 27200, 310, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ludicolo - Growl - Level 1
  (272, 27200, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ludicolo - Absorb - Level 1
  (272, 27200, 71, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ludicolo - Nature Power - Level 1
  (272, 27200, 267, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ludicolo - Focus Punch - TM01
  (272, 27200, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 5),
  -- Ludicolo - Water Pulse - TM03
  (272, 27200, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 6),
  -- Ludicolo - Toxic - TM06
  (272, 27200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 7),
  -- Ludicolo - Hail - TM07
  (272, 27200, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 8),
  -- Ludicolo - Bullet Seed - TM09
  (272, 27200, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 9),
  -- Ludicolo - Hidden Power - TM10
  (272, 27200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 10),
  -- Ludicolo - Sunny Day - TM11
  (272, 27200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 11),
  -- Ludicolo - Ice Beam - TM13
  (272, 27200, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 12),
  -- Ludicolo - Blizzard - TM14
  (272, 27200, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 13),
  -- Ludicolo - Hyper Beam - TM15
  (272, 27200, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 14),
  -- Ludicolo - Protect - TM17
  (272, 27200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Ludicolo - Rain Dance - TM18
  (272, 27200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 16),
  -- Ludicolo - Giga Drain - TM19
  (272, 27200, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 17),
  -- Ludicolo - Frustration - TM21
  (272, 27200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Ludicolo - Solar Beam - TM22
  (272, 27200, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 19),
  -- Ludicolo - Return - TM27
  (272, 27200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Ludicolo - Brick Break - TM31
  (272, 27200, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 21),
  -- Ludicolo - Double Team - TM32
  (272, 27200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Ludicolo - Facade - TM42
  (272, 27200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 23),
  -- Ludicolo - Secret Power - TM43
  (272, 27200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 24),
  -- Ludicolo - Rest - TM44
  (272, 27200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 25),
  -- Ludicolo - Attract - TM45
  (272, 27200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 26),
  -- Ludicolo - Thief - TM46
  (272, 27200, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 27),
  -- Ludicolo - Surf - HM03
  (272, 27200, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 28),
  -- Ludicolo - Strength - HM04
  (272, 27200, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 29),
  -- Ludicolo - Flash - HM05
  (272, 27200, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 30),
  -- Ludicolo - Rock Smash - HM06
  (272, 27200, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 31),
  -- Ludicolo - Waterfall - HM07
  (272, 27200, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 32),
  -- Ludicolo - Body Slam - Move Tutor
  (272, 27200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Ludicolo - Counter - Move Tutor
  (272, 27200, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Ludicolo - Double-Edge - Move Tutor
  (272, 27200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Ludicolo - Mega Kick - Move Tutor
  (272, 27200, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Ludicolo - Mega Punch - Move Tutor
  (272, 27200, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Ludicolo - Metronome - Move Tutor
  (272, 27200, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Ludicolo - Mimic - Move Tutor
  (272, 27200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Ludicolo - Seismic Toss - Move Tutor
  (272, 27200, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Ludicolo - Substitute - Move Tutor
  (272, 27200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Ludicolo - Swords Dance - Move Tutor
  (272, 27200, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Seedot - Bide - Level 1
  (273, 27300, 117, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seedot - Harden - Level 3
  (273, 27300, 106, 6, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Seedot - Growth - Level 7
  (273, 27300, 74, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Seedot - Nature Power - Level 13
  (273, 27300, 267, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Seedot - Synthesis - Level 21
  (273, 27300, 235, 6, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Seedot - Sunny Day - Level 31
  (273, 27300, 241, 6, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Seedot - Explosion - Level 43
  (273, 27300, 153, 6, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Seedot - Toxic - TM06
  (273, 27300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 8),
  -- Seedot - Bullet Seed - TM09
  (273, 27300, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 9),
  -- Seedot - Hidden Power - TM10
  (273, 27300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 10),
  -- Seedot - Sunny Day - TM11
  (273, 27300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 11),
  -- Seedot - Protect - TM17
  (273, 27300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 12),
  -- Seedot - Giga Drain - TM19
  (273, 27300, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 13),
  -- Seedot - Frustration - TM21
  (273, 27300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 14),
  -- Seedot - Solar Beam - TM22
  (273, 27300, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 15),
  -- Seedot - Return - TM27
  (273, 27300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 16),
  -- Seedot - Dig - TM28
  (273, 27300, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 17),
  -- Seedot - Shadow Ball - TM30
  (273, 27300, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 18),
  -- Seedot - Double Team - TM32
  (273, 27300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 19),
  -- Seedot - Facade - TM42
  (273, 27300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 20),
  -- Seedot - Secret Power - TM43
  (273, 27300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 21),
  -- Seedot - Rest - TM44
  (273, 27300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 22),
  -- Seedot - Attract - TM45
  (273, 27300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 23),
  -- Seedot - Flash - HM05
  (273, 27300, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 24),
  -- Seedot - Rock Smash - HM06
  (273, 27300, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 25),
  -- Seedot - Amnesia - Egg Move
  (273, 27300, 133, 6, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Seedot - False Swipe - Egg Move
  (273, 27300, 206, 6, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Seedot - Leech Seed - Egg Move
  (273, 27300, 73, 6, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Seedot - Quick Attack - Egg Move
  (273, 27300, 98, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Seedot - Razor Wind - Egg Move
  (273, 27300, 13, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Seedot - Take Down - Egg Move
  (273, 27300, 36, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Seedot - Body Slam - Move Tutor
  (273, 27300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Seedot - Double-Edge - Move Tutor
  (273, 27300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Seedot - Explosion - Move Tutor
  (273, 27300, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Seedot - Mimic - Move Tutor
  (273, 27300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Seedot - Substitute - Move Tutor
  (273, 27300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Seedot - Swords Dance - Move Tutor
  (273, 27300, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Nuzleaf - Pound - Level 1
  (274, 27400, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nuzleaf - Harden - Level 3
  (274, 27400, 106, 6, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Nuzleaf - Growth - Level 7
  (274, 27400, 74, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nuzleaf - Nature Power - Level 13
  (274, 27400, 267, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Nuzleaf - Fake Out - Level 19
  (274, 27400, 252, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Nuzleaf - Torment - Level 25
  (274, 27400, 259, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Nuzleaf - Feint Attack - Level 31
  (274, 27400, 185, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Nuzleaf - Razor Wind - Level 37
  (274, 27400, 13, 6, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Nuzleaf - Swagger - Level 43
  (274, 27400, 207, 6, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Nuzleaf - Extrasensory - Level 49
  (274, 27400, 326, 6, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Nuzleaf - Toxic - TM06
  (274, 27400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Nuzleaf - Bullet Seed - TM09
  (274, 27400, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 12),
  -- Nuzleaf - Hidden Power - TM10
  (274, 27400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Nuzleaf - Sunny Day - TM11
  (274, 27400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Nuzleaf - Hyper Beam - TM15
  (274, 27400, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 15),
  -- Nuzleaf - Protect - TM17
  (274, 27400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Nuzleaf - Giga Drain - TM19
  (274, 27400, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 17),
  -- Nuzleaf - Frustration - TM21
  (274, 27400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Nuzleaf - Solar Beam - TM22
  (274, 27400, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 19),
  -- Nuzleaf - Return - TM27
  (274, 27400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Nuzleaf - Dig - TM28
  (274, 27400, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 21),
  -- Nuzleaf - Shadow Ball - TM30
  (274, 27400, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 22),
  -- Nuzleaf - Brick Break - TM31
  (274, 27400, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 23),
  -- Nuzleaf - Double Team - TM32
  (274, 27400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 24),
  -- Nuzleaf - Rock Tomb - TM39
  (274, 27400, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 25),
  -- Nuzleaf - Torment - TM41
  (274, 27400, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 26),
  -- Nuzleaf - Facade - TM42
  (274, 27400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 27),
  -- Nuzleaf - Secret Power - TM43
  (274, 27400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 28),
  -- Nuzleaf - Rest - TM44
  (274, 27400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 29),
  -- Nuzleaf - Attract - TM45
  (274, 27400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 30),
  -- Nuzleaf - Thief - TM46
  (274, 27400, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 31),
  -- Nuzleaf - Cut - HM01
  (274, 27400, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 32),
  -- Nuzleaf - Strength - HM04
  (274, 27400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 33),
  -- Nuzleaf - Flash - HM05
  (274, 27400, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 34),
  -- Nuzleaf - Rock Smash - HM06
  (274, 27400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 35),
  -- Nuzleaf - Body Slam - Move Tutor
  (274, 27400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Nuzleaf - Double-Edge - Move Tutor
  (274, 27400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Nuzleaf - Explosion - Move Tutor
  (274, 27400, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Nuzleaf - Mega Kick - Move Tutor
  (274, 27400, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Nuzleaf - Mimic - Move Tutor
  (274, 27400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Nuzleaf - Substitute - Move Tutor
  (274, 27400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Nuzleaf - Swords Dance - Move Tutor
  (274, 27400, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Shiftry - Pound - Level 1
  (275, 27500, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shiftry - Harden - Level 1
  (275, 27500, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shiftry - Growth - Level 1
  (275, 27500, 74, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shiftry - Nature Power - Level 1
  (275, 27500, 267, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shiftry - Toxic - TM06
  (275, 27500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 5),
  -- Shiftry - Bullet Seed - TM09
  (275, 27500, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 6),
  -- Shiftry - Hidden Power - TM10
  (275, 27500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 7),
  -- Shiftry - Sunny Day - TM11
  (275, 27500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 8),
  -- Shiftry - Hyper Beam - TM15
  (275, 27500, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 9),
  -- Shiftry - Protect - TM17
  (275, 27500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 10),
  -- Shiftry - Giga Drain - TM19
  (275, 27500, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 11),
  -- Shiftry - Frustration - TM21
  (275, 27500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 12),
  -- Shiftry - Solar Beam - TM22
  (275, 27500, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 13),
  -- Shiftry - Return - TM27
  (275, 27500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 14),
  -- Shiftry - Dig - TM28
  (275, 27500, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 15),
  -- Shiftry - Shadow Ball - TM30
  (275, 27500, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 16),
  -- Shiftry - Brick Break - TM31
  (275, 27500, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 17),
  -- Shiftry - Double Team - TM32
  (275, 27500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 18),
  -- Shiftry - Rock Tomb - TM39
  (275, 27500, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 19),
  -- Shiftry - Aerial Ace - TM40
  (275, 27500, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 20),
  -- Shiftry - Torment - TM41
  (275, 27500, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 21),
  -- Shiftry - Facade - TM42
  (275, 27500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 22),
  -- Shiftry - Secret Power - TM43
  (275, 27500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 23),
  -- Shiftry - Rest - TM44
  (275, 27500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 24),
  -- Shiftry - Attract - TM45
  (275, 27500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 25),
  -- Shiftry - Thief - TM46
  (275, 27500, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 26),
  -- Shiftry - Cut - HM01
  (275, 27500, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 27),
  -- Shiftry - Strength - HM04
  (275, 27500, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 28),
  -- Shiftry - Flash - HM05
  (275, 27500, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 29),
  -- Shiftry - Rock Smash - HM06
  (275, 27500, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 30),
  -- Shiftry - Body Slam - Move Tutor
  (275, 27500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Shiftry - Double-Edge - Move Tutor
  (275, 27500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Shiftry - Explosion - Move Tutor
  (275, 27500, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Shiftry - Mega Kick - Move Tutor
  (275, 27500, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Shiftry - Mimic - Move Tutor
  (275, 27500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Shiftry - Substitute - Move Tutor
  (275, 27500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Shiftry - Swords Dance - Move Tutor
  (275, 27500, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Taillow - Peck - Level 1
  (276, 27600, 64, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Taillow - Growl - Level 1
  (276, 27600, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Taillow - Focus Energy - Level 4
  (276, 27600, 116, 6, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Taillow - Quick Attack - Level 8
  (276, 27600, 98, 6, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Taillow - Wing Attack - Level 13
  (276, 27600, 17, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Taillow - Double Team - Level 19
  (276, 27600, 104, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Taillow - Endeavor - Level 26
  (276, 27600, 283, 6, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Taillow - Aerial Ace - Level 34
  (276, 27600, 332, 6, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Taillow - Agility - Level 43
  (276, 27600, 97, 6, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Taillow - Toxic - TM06
  (276, 27600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 10),
  -- Taillow - Hidden Power - TM10
  (276, 27600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 11),
  -- Taillow - Sunny Day - TM11
  (276, 27600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 12),
  -- Taillow - Protect - TM17
  (276, 27600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 13),
  -- Taillow - Rain Dance - TM18
  (276, 27600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 14),
  -- Taillow - Frustration - TM21
  (276, 27600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 15),
  -- Taillow - Return - TM27
  (276, 27600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 16),
  -- Taillow - Double Team - TM32
  (276, 27600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 17),
  -- Taillow - Aerial Ace - TM40
  (276, 27600, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 18),
  -- Taillow - Facade - TM42
  (276, 27600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 19),
  -- Taillow - Secret Power - TM43
  (276, 27600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 20),
  -- Taillow - Rest - TM44
  (276, 27600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 21),
  -- Taillow - Attract - TM45
  (276, 27600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 22),
  -- Taillow - Thief - TM46
  (276, 27600, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 23),
  -- Taillow - Steel Wing - TM47
  (276, 27600, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 24),
  -- Taillow - Fly - HM02
  (276, 27600, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 25),
  -- Taillow - Mirror Move - Egg Move
  (276, 27600, 119, 6, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Taillow - Pursuit - Egg Move
  (276, 27600, 228, 6, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Taillow - Rage - Egg Move
  (276, 27600, 99, 6, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Taillow - Refresh - Egg Move
  (276, 27600, 287, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Taillow - Sky Attack - Egg Move
  (276, 27600, 143, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Taillow - Supersonic - Egg Move
  (276, 27600, 48, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Taillow - Counter - Move Tutor
  (276, 27600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Taillow - Double-Edge - Move Tutor
  (276, 27600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Taillow - Mimic - Move Tutor
  (276, 27600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Taillow - Substitute - Move Tutor
  (276, 27600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Swellow - Peck - Level 1
  (277, 27700, 64, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swellow - Growl - Level 1
  (277, 27700, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swellow - Focus Energy - Level 1
  (277, 27700, 116, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swellow - Quick Attack - Level 1
  (277, 27700, 98, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swellow - Focus Energy - Level 4
  (277, 27700, 116, 6, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Swellow - Quick Attack - Level 8
  (277, 27700, 98, 6, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Swellow - Wing Attack - Level 13
  (277, 27700, 17, 6, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Swellow - Double Team - Level 19
  (277, 27700, 104, 6, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Swellow - Endeavor - Level 28
  (277, 27700, 283, 6, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Swellow - Aerial Ace - Level 38
  (277, 27700, 332, 6, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Swellow - Agility - Level 49
  (277, 27700, 97, 6, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Swellow - Toxic - TM06
  (277, 27700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Swellow - Hidden Power - TM10
  (277, 27700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Swellow - Sunny Day - TM11
  (277, 27700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Swellow - Hyper Beam - TM15
  (277, 27700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 15),
  -- Swellow - Protect - TM17
  (277, 27700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 16),
  -- Swellow - Rain Dance - TM18
  (277, 27700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 17),
  -- Swellow - Frustration - TM21
  (277, 27700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Swellow - Return - TM27
  (277, 27700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 19),
  -- Swellow - Double Team - TM32
  (277, 27700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 20),
  -- Swellow - Aerial Ace - TM40
  (277, 27700, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 21),
  -- Swellow - Facade - TM42
  (277, 27700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 22),
  -- Swellow - Secret Power - TM43
  (277, 27700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 23),
  -- Swellow - Rest - TM44
  (277, 27700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 24),
  -- Swellow - Attract - TM45
  (277, 27700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 25),
  -- Swellow - Thief - TM46
  (277, 27700, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 26),
  -- Swellow - Steel Wing - TM47
  (277, 27700, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 27),
  -- Swellow - Fly - HM02
  (277, 27700, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 28),
  -- Swellow - Counter - Move Tutor
  (277, 27700, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 29),
  -- Swellow - Double-Edge - Move Tutor
  (277, 27700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 30),
  -- Swellow - Mimic - Move Tutor
  (277, 27700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Swellow - Substitute - Move Tutor
  (277, 27700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Wingull - Growl - Level 1
  (278, 27800, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wingull - Water Gun - Level 1
  (278, 27800, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wingull - Supersonic - Level 7
  (278, 27800, 48, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Wingull - Wing Attack - Level 13
  (278, 27800, 17, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Wingull - Mist - Level 21
  (278, 27800, 54, 6, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Wingull - Quick Attack - Level 31
  (278, 27800, 98, 6, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Wingull - Pursuit - Level 43
  (278, 27800, 228, 6, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Wingull - Agility - Level 55
  (278, 27800, 97, 6, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Wingull - Water Pulse - TM03
  (278, 27800, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 9),
  -- Wingull - Toxic - TM06
  (278, 27800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 10),
  -- Wingull - Hail - TM07
  (278, 27800, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 11),
  -- Wingull - Hidden Power - TM10
  (278, 27800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Wingull - Ice Beam - TM13
  (278, 27800, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 13),
  -- Wingull - Blizzard - TM14
  (278, 27800, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 14),
  -- Wingull - Protect - TM17
  (278, 27800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Wingull - Rain Dance - TM18
  (278, 27800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 16),
  -- Wingull - Frustration - TM21
  (278, 27800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Wingull - Return - TM27
  (278, 27800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 18),
  -- Wingull - Double Team - TM32
  (278, 27800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 19),
  -- Wingull - Shock Wave - TM34
  (278, 27800, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 20),
  -- Wingull - Aerial Ace - TM40
  (278, 27800, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 21),
  -- Wingull - Facade - TM42
  (278, 27800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 22),
  -- Wingull - Secret Power - TM43
  (278, 27800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 23),
  -- Wingull - Rest - TM44
  (278, 27800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 24),
  -- Wingull - Attract - TM45
  (278, 27800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 25),
  -- Wingull - Thief - TM46
  (278, 27800, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 26),
  -- Wingull - Steel Wing - TM47
  (278, 27800, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 27),
  -- Wingull - Fly - HM02
  (278, 27800, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 28),
  -- Wingull - Agility - Egg Move
  (278, 27800, 97, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Wingull - Gust - Egg Move
  (278, 27800, 16, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Wingull - Mist - Egg Move
  (278, 27800, 54, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Wingull - Twister - Egg Move
  (278, 27800, 239, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Wingull - Water Sport - Egg Move
  (278, 27800, 346, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Wingull - Double-Edge - Move Tutor
  (278, 27800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Wingull - Mimic - Move Tutor
  (278, 27800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Wingull - Substitute - Move Tutor
  (278, 27800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Pelipper - Growl - Level 1
  (279, 27900, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pelipper - Water Gun - Level 1
  (279, 27900, 55, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pelipper - Water Sport - Level 1
  (279, 27900, 346, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pelipper - Wing Attack - Level 1
  (279, 27900, 17, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pelipper - Water Gun - Level 3
  (279, 27900, 55, 6, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Pelipper - Supersonic - Level 7
  (279, 27900, 48, 6, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Pelipper - Wing Attack - Level 13
  (279, 27900, 17, 6, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Pelipper - Mist - Level 21
  (279, 27900, 54, 6, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Pelipper - Protect - Level 25
  (279, 27900, 182, 6, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Pelipper - Stockpile - Level 33
  (279, 27900, 254, 6, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Pelipper - Swallow - Level 33
  (279, 27900, 256, 6, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Pelipper - Spit Up - Level 47
  (279, 27900, 255, 6, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Pelipper - Hydro Pump - Level 61
  (279, 27900, 56, 6, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Pelipper - Water Pulse - TM03
  (279, 27900, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 14),
  -- Pelipper - Toxic - TM06
  (279, 27900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Pelipper - Hail - TM07
  (279, 27900, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 16),
  -- Pelipper - Hidden Power - TM10
  (279, 27900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Pelipper - Ice Beam - TM13
  (279, 27900, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 18),
  -- Pelipper - Blizzard - TM14
  (279, 27900, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 19),
  -- Pelipper - Hyper Beam - TM15
  (279, 27900, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 20),
  -- Pelipper - Protect - TM17
  (279, 27900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Pelipper - Rain Dance - TM18
  (279, 27900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Pelipper - Frustration - TM21
  (279, 27900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Pelipper - Return - TM27
  (279, 27900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Pelipper - Double Team - TM32
  (279, 27900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Pelipper - Shock Wave - TM34
  (279, 27900, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 26),
  -- Pelipper - Aerial Ace - TM40
  (279, 27900, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 27),
  -- Pelipper - Facade - TM42
  (279, 27900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 28),
  -- Pelipper - Secret Power - TM43
  (279, 27900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 29),
  -- Pelipper - Rest - TM44
  (279, 27900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 30),
  -- Pelipper - Attract - TM45
  (279, 27900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 31),
  -- Pelipper - Thief - TM46
  (279, 27900, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 32),
  -- Pelipper - Steel Wing - TM47
  (279, 27900, 211, 6, NULL, 2, NULL, NULL, 6002047, NULL, 33),
  -- Pelipper - Fly - HM02
  (279, 27900, 19, 6, NULL, 3, NULL, NULL, 6003002, NULL, 34),
  -- Pelipper - Surf - HM03
  (279, 27900, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 35),
  -- Pelipper - Double-Edge - Move Tutor
  (279, 27900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Pelipper - Mimic - Move Tutor
  (279, 27900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Pelipper - Substitute - Move Tutor
  (279, 27900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Ralts - Growl - Level 1
  (280, 28000, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ralts - Confusion - Level 6
  (280, 28000, 93, 6, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Ralts - Double Team - Level 11
  (280, 28000, 104, 6, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Ralts - Teleport - Level 16
  (280, 28000, 100, 6, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Ralts - Calm Mind - Level 21
  (280, 28000, 347, 6, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Ralts - Psychic - Level 26
  (280, 28000, 94, 6, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Ralts - Imprison - Level 31
  (280, 28000, 286, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Ralts - Future Sight - Level 36
  (280, 28000, 248, 6, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Ralts - Hypnosis - Level 41
  (280, 28000, 95, 6, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Ralts - Dream Eater - Level 46
  (280, 28000, 138, 6, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Ralts - Calm Mind - TM04
  (280, 28000, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 11),
  -- Ralts - Toxic - TM06
  (280, 28000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Ralts - Hidden Power - TM10
  (280, 28000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Ralts - Sunny Day - TM11
  (280, 28000, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Ralts - Taunt - TM12
  (280, 28000, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 15),
  -- Ralts - Light Screen - TM16
  (280, 28000, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 16),
  -- Ralts - Protect - TM17
  (280, 28000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 17),
  -- Ralts - Rain Dance - TM18
  (280, 28000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 18),
  -- Ralts - Safeguard - TM20
  (280, 28000, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 19),
  -- Ralts - Frustration - TM21
  (280, 28000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Ralts - Thunderbolt - TM24
  (280, 28000, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 21),
  -- Ralts - Return - TM27
  (280, 28000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 22),
  -- Ralts - Psychic - TM29
  (280, 28000, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 23),
  -- Ralts - Shadow Ball - TM30
  (280, 28000, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 24),
  -- Ralts - Double Team - TM32
  (280, 28000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Ralts - Reflect - TM33
  (280, 28000, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 26),
  -- Ralts - Shock Wave - TM34
  (280, 28000, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 27),
  -- Ralts - Torment - TM41
  (280, 28000, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 28),
  -- Ralts - Facade - TM42
  (280, 28000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Ralts - Secret Power - TM43
  (280, 28000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Ralts - Rest - TM44
  (280, 28000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Ralts - Attract - TM45
  (280, 28000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Ralts - Thief - TM46
  (280, 28000, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 33),
  -- Ralts - Skill Swap - TM48
  (280, 28000, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 34),
  -- Ralts - Snatch - TM49
  (280, 28000, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 35),
  -- Ralts - Flash - HM05
  (280, 28000, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 36),
  -- Ralts - Destiny Bond - Egg Move
  (280, 28000, 194, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Ralts - Disable - Egg Move
  (280, 28000, 50, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Ralts - Mean Look - Egg Move
  (280, 28000, 212, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Ralts - Memento - Egg Move
  (280, 28000, 262, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Ralts - Will-O-Wisp - Egg Move
  (280, 28000, 261, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ralts - Body Slam - Move Tutor
  (280, 28000, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Ralts - Double-Edge - Move Tutor
  (280, 28000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Ralts - Dream Eater - Move Tutor
  (280, 28000, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Ralts - Mimic - Move Tutor
  (280, 28000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Ralts - Substitute - Move Tutor
  (280, 28000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Ralts - Thunder Wave - Move Tutor
  (280, 28000, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Kirlia - Magical Leaf - Level 1
  (281, 28100, 345, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kirlia - Growl - Level 1
  (281, 28100, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kirlia - Confusion - Level 1
  (281, 28100, 93, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kirlia - Double Team - Level 1
  (281, 28100, 104, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kirlia - Teleport - Level 1
  (281, 28100, 100, 6, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kirlia - Confusion - Level 6
  (281, 28100, 93, 6, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Kirlia - Double Team - Level 11
  (281, 28100, 104, 6, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Kirlia - Teleport - Level 16
  (281, 28100, 100, 6, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Kirlia - Calm Mind - Level 21
  (281, 28100, 347, 6, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Kirlia - Psychic - Level 26
  (281, 28100, 94, 6, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Kirlia - Imprison - Level 33
  (281, 28100, 286, 6, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Kirlia - Future Sight - Level 40
  (281, 28100, 248, 6, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Kirlia - Hypnosis - Level 47
  (281, 28100, 95, 6, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Kirlia - Dream Eater - Level 54
  (281, 28100, 138, 6, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Kirlia - Calm Mind - TM04
  (281, 28100, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 15),
  -- Kirlia - Toxic - TM06
  (281, 28100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Kirlia - Hidden Power - TM10
  (281, 28100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Kirlia - Sunny Day - TM11
  (281, 28100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Kirlia - Taunt - TM12
  (281, 28100, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 19),
  -- Kirlia - Light Screen - TM16
  (281, 28100, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 20),
  -- Kirlia - Protect - TM17
  (281, 28100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Kirlia - Rain Dance - TM18
  (281, 28100, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Kirlia - Safeguard - TM20
  (281, 28100, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 23),
  -- Kirlia - Frustration - TM21
  (281, 28100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Kirlia - Thunderbolt - TM24
  (281, 28100, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 25),
  -- Kirlia - Return - TM27
  (281, 28100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Kirlia - Psychic - TM29
  (281, 28100, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 27),
  -- Kirlia - Shadow Ball - TM30
  (281, 28100, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 28),
  -- Kirlia - Double Team - TM32
  (281, 28100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Kirlia - Reflect - TM33
  (281, 28100, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 30),
  -- Kirlia - Shock Wave - TM34
  (281, 28100, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 31),
  -- Kirlia - Torment - TM41
  (281, 28100, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 32),
  -- Kirlia - Facade - TM42
  (281, 28100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Kirlia - Secret Power - TM43
  (281, 28100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Kirlia - Rest - TM44
  (281, 28100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Kirlia - Attract - TM45
  (281, 28100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 36),
  -- Kirlia - Thief - TM46
  (281, 28100, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 37),
  -- Kirlia - Skill Swap - TM48
  (281, 28100, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 38),
  -- Kirlia - Snatch - TM49
  (281, 28100, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 39),
  -- Kirlia - Flash - HM05
  (281, 28100, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 40),
  -- Kirlia - Body Slam - Move Tutor
  (281, 28100, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Kirlia - Double-Edge - Move Tutor
  (281, 28100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Kirlia - Dream Eater - Move Tutor
  (281, 28100, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Kirlia - Mimic - Move Tutor
  (281, 28100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Kirlia - Substitute - Move Tutor
  (281, 28100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Kirlia - Thunder Wave - Move Tutor
  (281, 28100, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Gardevoir - Growl - Level 1
  (282, 28200, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gardevoir - Confusion - Level 1
  (282, 28200, 93, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gardevoir - Double Team - Level 1
  (282, 28200, 104, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gardevoir - Teleport - Level 1
  (282, 28200, 100, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gardevoir - Confusion - Level 6
  (282, 28200, 93, 6, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Gardevoir - Double Team - Level 11
  (282, 28200, 104, 6, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Gardevoir - Teleport - Level 16
  (282, 28200, 100, 6, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Gardevoir - Calm Mind - Level 21
  (282, 28200, 347, 6, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Gardevoir - Psychic - Level 26
  (282, 28200, 94, 6, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Gardevoir - Imprison - Level 33
  (282, 28200, 286, 6, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Gardevoir - Future Sight - Level 42
  (282, 28200, 248, 6, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Gardevoir - Hypnosis - Level 51
  (282, 28200, 95, 6, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Gardevoir - Dream Eater - Level 60
  (282, 28200, 138, 6, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Gardevoir - Calm Mind - TM04
  (282, 28200, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 14),
  -- Gardevoir - Toxic - TM06
  (282, 28200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Gardevoir - Hidden Power - TM10
  (282, 28200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Gardevoir - Sunny Day - TM11
  (282, 28200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Gardevoir - Taunt - TM12
  (282, 28200, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 18),
  -- Gardevoir - Hyper Beam - TM15
  (282, 28200, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 19),
  -- Gardevoir - Light Screen - TM16
  (282, 28200, 113, 6, NULL, 2, NULL, NULL, 6002016, NULL, 20),
  -- Gardevoir - Protect - TM17
  (282, 28200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 21),
  -- Gardevoir - Rain Dance - TM18
  (282, 28200, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 22),
  -- Gardevoir - Safeguard - TM20
  (282, 28200, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 23),
  -- Gardevoir - Frustration - TM21
  (282, 28200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Gardevoir - Thunderbolt - TM24
  (282, 28200, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 25),
  -- Gardevoir - Return - TM27
  (282, 28200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Gardevoir - Psychic - TM29
  (282, 28200, 94, 6, NULL, 2, NULL, NULL, 6002029, NULL, 27),
  -- Gardevoir - Shadow Ball - TM30
  (282, 28200, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 28),
  -- Gardevoir - Double Team - TM32
  (282, 28200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Gardevoir - Reflect - TM33
  (282, 28200, 115, 6, NULL, 2, NULL, NULL, 6002033, NULL, 30),
  -- Gardevoir - Shock Wave - TM34
  (282, 28200, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 31),
  -- Gardevoir - Torment - TM41
  (282, 28200, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 32),
  -- Gardevoir - Facade - TM42
  (282, 28200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Gardevoir - Secret Power - TM43
  (282, 28200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Gardevoir - Rest - TM44
  (282, 28200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Gardevoir - Attract - TM45
  (282, 28200, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 36),
  -- Gardevoir - Thief - TM46
  (282, 28200, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 37),
  -- Gardevoir - Skill Swap - TM48
  (282, 28200, 285, 6, NULL, 2, NULL, NULL, 6002048, NULL, 38),
  -- Gardevoir - Snatch - TM49
  (282, 28200, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 39),
  -- Gardevoir - Flash - HM05
  (282, 28200, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 40),
  -- Gardevoir - Body Slam - Move Tutor
  (282, 28200, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Gardevoir - Double-Edge - Move Tutor
  (282, 28200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Gardevoir - Dream Eater - Move Tutor
  (282, 28200, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Gardevoir - Mimic - Move Tutor
  (282, 28200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Gardevoir - Substitute - Move Tutor
  (282, 28200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Gardevoir - Thunder Wave - Move Tutor
  (282, 28200, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Surskit - Bubble - Level 1
  (283, 28300, 145, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Surskit - Quick Attack - Level 7
  (283, 28300, 98, 6, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Surskit - Sweet Scent - Level 13
  (283, 28300, 230, 6, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Surskit - Water Sport - Level 19
  (283, 28300, 346, 6, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Surskit - Bubble Beam - Level 25
  (283, 28300, 61, 6, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Surskit - Agility - Level 31
  (283, 28300, 97, 6, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Surskit - Mist - Level 37
  (283, 28300, 54, 6, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Surskit - Haze - Level 37
  (283, 28300, 114, 6, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Surskit - Water Pulse - TM03
  (283, 28300, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 9),
  -- Surskit - Toxic - TM06
  (283, 28300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 10),
  -- Surskit - Hidden Power - TM10
  (283, 28300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 11),
  -- Surskit - Sunny Day - TM11
  (283, 28300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 12),
  -- Surskit - Ice Beam - TM13
  (283, 28300, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 13),
  -- Surskit - Blizzard - TM14
  (283, 28300, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 14),
  -- Surskit - Protect - TM17
  (283, 28300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Surskit - Rain Dance - TM18
  (283, 28300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 16),
  -- Surskit - Giga Drain - TM19
  (283, 28300, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 17),
  -- Surskit - Frustration - TM21
  (283, 28300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Surskit - Solar Beam - TM22
  (283, 28300, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 19),
  -- Surskit - Return - TM27
  (283, 28300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Surskit - Shadow Ball - TM30
  (283, 28300, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 21),
  -- Surskit - Double Team - TM32
  (283, 28300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Surskit - Facade - TM42
  (283, 28300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 23),
  -- Surskit - Secret Power - TM43
  (283, 28300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 24),
  -- Surskit - Rest - TM44
  (283, 28300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 25),
  -- Surskit - Attract - TM45
  (283, 28300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 26),
  -- Surskit - Thief - TM46
  (283, 28300, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 27),
  -- Surskit - Flash - HM05
  (283, 28300, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 28),
  -- Surskit - Foresight - Egg Move
  (283, 28300, 193, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Surskit - Hydro Pump - Egg Move
  (283, 28300, 56, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Surskit - Mind Reader - Egg Move
  (283, 28300, 170, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Surskit - Mud Shot - Egg Move
  (283, 28300, 341, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Surskit - Psybeam - Egg Move
  (283, 28300, 60, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Surskit - Double-Edge - Move Tutor
  (283, 28300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Surskit - Mimic - Move Tutor
  (283, 28300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Surskit - Substitute - Move Tutor
  (283, 28300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Masquerain - Bubble - Level 1
  (284, 28400, 145, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Masquerain - Quick Attack - Level 1
  (284, 28400, 98, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Masquerain - Sweet Scent - Level 1
  (284, 28400, 230, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Masquerain - Water Sport - Level 1
  (284, 28400, 346, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Masquerain - Quick Attack - Level 7
  (284, 28400, 98, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Masquerain - Sweet Scent - Level 13
  (284, 28400, 230, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Masquerain - Water Sport - Level 19
  (284, 28400, 346, 6, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Masquerain - Gust - Level 26
  (284, 28400, 16, 6, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Masquerain - Scary Face - Level 33
  (284, 28400, 184, 6, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Masquerain - Stun Spore - Level 40
  (284, 28400, 78, 6, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Masquerain - Silver Wind - Level 47
  (284, 28400, 318, 6, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Masquerain - Whirlwind - Level 53
  (284, 28400, 18, 6, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Masquerain - Water Pulse - TM03
  (284, 28400, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Masquerain - Toxic - TM06
  (284, 28400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Masquerain - Hidden Power - TM10
  (284, 28400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Masquerain - Sunny Day - TM11
  (284, 28400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Masquerain - Ice Beam - TM13
  (284, 28400, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 17),
  -- Masquerain - Blizzard - TM14
  (284, 28400, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 18),
  -- Masquerain - Hyper Beam - TM15
  (284, 28400, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 19),
  -- Masquerain - Protect - TM17
  (284, 28400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Masquerain - Rain Dance - TM18
  (284, 28400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Masquerain - Giga Drain - TM19
  (284, 28400, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 22),
  -- Masquerain - Frustration - TM21
  (284, 28400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Masquerain - Solar Beam - TM22
  (284, 28400, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 24),
  -- Masquerain - Return - TM27
  (284, 28400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 25),
  -- Masquerain - Shadow Ball - TM30
  (284, 28400, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 26),
  -- Masquerain - Double Team - TM32
  (284, 28400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Masquerain - Aerial Ace - TM40
  (284, 28400, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 28),
  -- Masquerain - Facade - TM42
  (284, 28400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Masquerain - Secret Power - TM43
  (284, 28400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Masquerain - Rest - TM44
  (284, 28400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Masquerain - Attract - TM45
  (284, 28400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Masquerain - Thief - TM46
  (284, 28400, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 33),
  -- Masquerain - Flash - HM05
  (284, 28400, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 34),
  -- Masquerain - Double-Edge - Move Tutor
  (284, 28400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Masquerain - Mimic - Move Tutor
  (284, 28400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Masquerain - Substitute - Move Tutor
  (284, 28400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Shroomish - Absorb - Level 1
  (285, 28500, 71, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shroomish - Tackle - Level 4
  (285, 28500, 33, 6, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Shroomish - Stun Spore - Level 7
  (285, 28500, 78, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Shroomish - Leech Seed - Level 10
  (285, 28500, 73, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shroomish - Mega Drain - Level 16
  (285, 28500, 72, 6, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Shroomish - Headbutt - Level 22
  (285, 28500, 29, 6, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Shroomish - Poison Powder - Level 28
  (285, 28500, 77, 6, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Shroomish - Growth - Level 36
  (285, 28500, 74, 6, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Shroomish - Giga Drain - Level 45
  (285, 28500, 202, 6, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Shroomish - Spore - Level 54
  (285, 28500, 147, 6, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Shroomish - Toxic - TM06
  (285, 28500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Shroomish - Bullet Seed - TM09
  (285, 28500, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 12),
  -- Shroomish - Hidden Power - TM10
  (285, 28500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 13),
  -- Shroomish - Sunny Day - TM11
  (285, 28500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 14),
  -- Shroomish - Protect - TM17
  (285, 28500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Shroomish - Giga Drain - TM19
  (285, 28500, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 16),
  -- Shroomish - Safeguard - TM20
  (285, 28500, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 17),
  -- Shroomish - Frustration - TM21
  (285, 28500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 18),
  -- Shroomish - Solar Beam - TM22
  (285, 28500, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 19),
  -- Shroomish - Return - TM27
  (285, 28500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Shroomish - Double Team - TM32
  (285, 28500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 21),
  -- Shroomish - Sludge Bomb - TM36
  (285, 28500, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 22),
  -- Shroomish - Facade - TM42
  (285, 28500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 23),
  -- Shroomish - Secret Power - TM43
  (285, 28500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 24),
  -- Shroomish - Rest - TM44
  (285, 28500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 25),
  -- Shroomish - Attract - TM45
  (285, 28500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 26),
  -- Shroomish - Snatch - TM49
  (285, 28500, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 27),
  -- Shroomish - Flash - HM05
  (285, 28500, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 28),
  -- Shroomish - Charm - Egg Move
  (285, 28500, 204, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Shroomish - Fake Tears - Egg Move
  (285, 28500, 313, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Shroomish - False Swipe - Egg Move
  (285, 28500, 206, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Shroomish - Helping Hand - Egg Move
  (285, 28500, 270, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Shroomish - Swagger - Egg Move
  (285, 28500, 207, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Shroomish - Body Slam - Move Tutor
  (285, 28500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Shroomish - Double-Edge - Move Tutor
  (285, 28500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Shroomish - Mimic - Move Tutor
  (285, 28500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Shroomish - Substitute - Move Tutor
  (285, 28500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Shroomish - Swords Dance - Move Tutor
  (285, 28500, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Breloom - Absorb - Level 1
  (286, 28600, 71, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Breloom - Tackle - Level 1
  (286, 28600, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Breloom - Stun Spore - Level 1
  (286, 28600, 78, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Breloom - Leech Seed - Level 1
  (286, 28600, 73, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Breloom - Tackle - Level 4
  (286, 28600, 33, 6, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Breloom - Stun Spore - Level 7
  (286, 28600, 78, 6, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Breloom - Leech Seed - Level 10
  (286, 28600, 73, 6, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Breloom - Mega Drain - Level 16
  (286, 28600, 72, 6, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Breloom - Headbutt - Level 22
  (286, 28600, 29, 6, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Breloom - Mach Punch - Level 23
  (286, 28600, 183, 6, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Breloom - Counter - Level 28
  (286, 28600, 68, 6, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Breloom - Sky Uppercut - Level 36
  (286, 28600, 327, 6, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Breloom - Mind Reader - Level 45
  (286, 28600, 170, 6, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Breloom - Dynamic Punch - Level 54
  (286, 28600, 223, 6, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Breloom - Focus Punch - TM01
  (286, 28600, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 15),
  -- Breloom - Toxic - TM06
  (286, 28600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Breloom - Bulk Up - TM08
  (286, 28600, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 17),
  -- Breloom - Bullet Seed - TM09
  (286, 28600, 331, 6, NULL, 2, NULL, NULL, 6002009, NULL, 18),
  -- Breloom - Hidden Power - TM10
  (286, 28600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Breloom - Sunny Day - TM11
  (286, 28600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 20),
  -- Breloom - Hyper Beam - TM15
  (286, 28600, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Breloom - Protect - TM17
  (286, 28600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Breloom - Giga Drain - TM19
  (286, 28600, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 23),
  -- Breloom - Safeguard - TM20
  (286, 28600, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 24),
  -- Breloom - Frustration - TM21
  (286, 28600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 25),
  -- Breloom - Solar Beam - TM22
  (286, 28600, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 26),
  -- Breloom - Iron Tail - TM23
  (286, 28600, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 27),
  -- Breloom - Return - TM27
  (286, 28600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Breloom - Brick Break - TM31
  (286, 28600, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 29),
  -- Breloom - Double Team - TM32
  (286, 28600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 30),
  -- Breloom - Sludge Bomb - TM36
  (286, 28600, 188, 6, NULL, 2, NULL, NULL, 6002036, NULL, 31),
  -- Breloom - Facade - TM42
  (286, 28600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 32),
  -- Breloom - Secret Power - TM43
  (286, 28600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 33),
  -- Breloom - Rest - TM44
  (286, 28600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 34),
  -- Breloom - Attract - TM45
  (286, 28600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 35),
  -- Breloom - Snatch - TM49
  (286, 28600, 289, 6, NULL, 2, NULL, NULL, 6002049, NULL, 36),
  -- Breloom - Cut - HM01
  (286, 28600, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 37),
  -- Breloom - Strength - HM04
  (286, 28600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 38),
  -- Breloom - Flash - HM05
  (286, 28600, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 39),
  -- Breloom - Rock Smash - HM06
  (286, 28600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 40),
  -- Breloom - Body Slam - Move Tutor
  (286, 28600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Breloom - Counter - Move Tutor
  (286, 28600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Breloom - Double-Edge - Move Tutor
  (286, 28600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Breloom - Mega Kick - Move Tutor
  (286, 28600, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Breloom - Mega Punch - Move Tutor
  (286, 28600, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Breloom - Mimic - Move Tutor
  (286, 28600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Breloom - Seismic Toss - Move Tutor
  (286, 28600, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Breloom - Substitute - Move Tutor
  (286, 28600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Breloom - Swords Dance - Move Tutor
  (286, 28600, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Slakoth - Scratch - Level 1
  (287, 28700, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slakoth - Yawn - Level 1
  (287, 28700, 281, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slakoth - Encore - Level 7
  (287, 28700, 227, 6, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Slakoth - Slack Off - Level 13
  (287, 28700, 303, 6, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Slakoth - Feint Attack - Level 19
  (287, 28700, 185, 6, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Slakoth - Amnesia - Level 25
  (287, 28700, 133, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Slakoth - Covet - Level 31
  (287, 28700, 343, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Slakoth - Counter - Level 37
  (287, 28700, 68, 6, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Slakoth - Flail - Level 43
  (287, 28700, 175, 6, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Slakoth - Focus Punch - TM01
  (287, 28700, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 10),
  -- Slakoth - Water Pulse - TM03
  (287, 28700, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 11),
  -- Slakoth - Toxic - TM06
  (287, 28700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 12),
  -- Slakoth - Bulk Up - TM08
  (287, 28700, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 13),
  -- Slakoth - Hidden Power - TM10
  (287, 28700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 14),
  -- Slakoth - Sunny Day - TM11
  (287, 28700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 15),
  -- Slakoth - Ice Beam - TM13
  (287, 28700, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 16),
  -- Slakoth - Blizzard - TM14
  (287, 28700, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 17),
  -- Slakoth - Protect - TM17
  (287, 28700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 18),
  -- Slakoth - Rain Dance - TM18
  (287, 28700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 19),
  -- Slakoth - Frustration - TM21
  (287, 28700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 20),
  -- Slakoth - Solar Beam - TM22
  (287, 28700, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 21),
  -- Slakoth - Thunderbolt - TM24
  (287, 28700, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 22),
  -- Slakoth - Thunder - TM25
  (287, 28700, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 23),
  -- Slakoth - Return - TM27
  (287, 28700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Slakoth - Shadow Ball - TM30
  (287, 28700, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 25),
  -- Slakoth - Brick Break - TM31
  (287, 28700, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 26),
  -- Slakoth - Double Team - TM32
  (287, 28700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Slakoth - Shock Wave - TM34
  (287, 28700, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 28),
  -- Slakoth - Flamethrower - TM35
  (287, 28700, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 29),
  -- Slakoth - Fire Blast - TM38
  (287, 28700, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 30),
  -- Slakoth - Aerial Ace - TM40
  (287, 28700, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 31),
  -- Slakoth - Facade - TM42
  (287, 28700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 32),
  -- Slakoth - Secret Power - TM43
  (287, 28700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 33),
  -- Slakoth - Rest - TM44
  (287, 28700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 34),
  -- Slakoth - Attract - TM45
  (287, 28700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 35),
  -- Slakoth - Cut - HM01
  (287, 28700, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 36),
  -- Slakoth - Strength - HM04
  (287, 28700, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 37),
  -- Slakoth - Rock Smash - HM06
  (287, 28700, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 38),
  -- Slakoth - Body Slam - Egg Move
  (287, 28700, 34, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Slakoth - Crush Claw - Egg Move
  (287, 28700, 306, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Slakoth - Curse - Egg Move
  (287, 28700, 174, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Slakoth - Pursuit - Egg Move
  (287, 28700, 228, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Slakoth - Slash - Egg Move
  (287, 28700, 163, 6, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Slakoth - Sleep Talk - Egg Move
  (287, 28700, 214, 6, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Slakoth - Snore - Egg Move
  (287, 28700, 173, 6, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Slakoth - Body Slam - Move Tutor
  (287, 28700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Slakoth - Counter - Move Tutor
  (287, 28700, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Slakoth - Double-Edge - Move Tutor
  (287, 28700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Slakoth - Mega Kick - Move Tutor
  (287, 28700, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Slakoth - Mega Punch - Move Tutor
  (287, 28700, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Slakoth - Mimic - Move Tutor
  (287, 28700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Slakoth - Rock Slide - Move Tutor
  (287, 28700, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Slakoth - Seismic Toss - Move Tutor
  (287, 28700, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Slakoth - Substitute - Move Tutor
  (287, 28700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Vigoroth - Scratch - Level 1
  (288, 28800, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vigoroth - Focus Energy - Level 1
  (288, 28800, 116, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vigoroth - Encore - Level 1
  (288, 28800, 227, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vigoroth - Uproar - Level 1
  (288, 28800, 253, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vigoroth - Encore - Level 7
  (288, 28800, 227, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Vigoroth - Uproar - Level 13
  (288, 28800, 253, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Vigoroth - Fury Swipes - Level 19
  (288, 28800, 154, 6, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Vigoroth - Endure - Level 25
  (288, 28800, 203, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Vigoroth - Slash - Level 31
  (288, 28800, 163, 6, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Vigoroth - Counter - Level 37
  (288, 28800, 68, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Vigoroth - Focus Punch - Level 43
  (288, 28800, 264, 6, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Vigoroth - Reversal - Level 49
  (288, 28800, 179, 6, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Vigoroth - Focus Punch - TM01
  (288, 28800, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 13),
  -- Vigoroth - Water Pulse - TM03
  (288, 28800, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 14),
  -- Vigoroth - Roar - TM05
  (288, 28800, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 15),
  -- Vigoroth - Toxic - TM06
  (288, 28800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Vigoroth - Bulk Up - TM08
  (288, 28800, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 17),
  -- Vigoroth - Hidden Power - TM10
  (288, 28800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Vigoroth - Sunny Day - TM11
  (288, 28800, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Vigoroth - Taunt - TM12
  (288, 28800, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 20),
  -- Vigoroth - Ice Beam - TM13
  (288, 28800, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 21),
  -- Vigoroth - Blizzard - TM14
  (288, 28800, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 22),
  -- Vigoroth - Protect - TM17
  (288, 28800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 23),
  -- Vigoroth - Rain Dance - TM18
  (288, 28800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 24),
  -- Vigoroth - Frustration - TM21
  (288, 28800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 25),
  -- Vigoroth - Solar Beam - TM22
  (288, 28800, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 26),
  -- Vigoroth - Thunderbolt - TM24
  (288, 28800, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 27),
  -- Vigoroth - Thunder - TM25
  (288, 28800, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 28),
  -- Vigoroth - Earthquake - TM26
  (288, 28800, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 29),
  -- Vigoroth - Return - TM27
  (288, 28800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 30),
  -- Vigoroth - Shadow Ball - TM30
  (288, 28800, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 31),
  -- Vigoroth - Brick Break - TM31
  (288, 28800, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 32),
  -- Vigoroth - Double Team - TM32
  (288, 28800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 33),
  -- Vigoroth - Shock Wave - TM34
  (288, 28800, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 34),
  -- Vigoroth - Flamethrower - TM35
  (288, 28800, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 35),
  -- Vigoroth - Fire Blast - TM38
  (288, 28800, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 36),
  -- Vigoroth - Aerial Ace - TM40
  (288, 28800, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 37),
  -- Vigoroth - Facade - TM42
  (288, 28800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 38),
  -- Vigoroth - Secret Power - TM43
  (288, 28800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 39),
  -- Vigoroth - Rest - TM44
  (288, 28800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 40),
  -- Vigoroth - Attract - TM45
  (288, 28800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 41),
  -- Vigoroth - Cut - HM01
  (288, 28800, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 42),
  -- Vigoroth - Strength - HM04
  (288, 28800, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 43),
  -- Vigoroth - Rock Smash - HM06
  (288, 28800, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 44),
  -- Vigoroth - Body Slam - Move Tutor
  (288, 28800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Vigoroth - Counter - Move Tutor
  (288, 28800, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Vigoroth - Double-Edge - Move Tutor
  (288, 28800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Vigoroth - Mega Kick - Move Tutor
  (288, 28800, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Vigoroth - Mega Punch - Move Tutor
  (288, 28800, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Vigoroth - Mimic - Move Tutor
  (288, 28800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Vigoroth - Rock Slide - Move Tutor
  (288, 28800, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Vigoroth - Seismic Toss - Move Tutor
  (288, 28800, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Vigoroth - Substitute - Move Tutor
  (288, 28800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Slaking - Scratch - Level 1
  (289, 28900, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slaking - Yawn - Level 1
  (289, 28900, 281, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slaking - Encore - Level 1
  (289, 28900, 227, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slaking - Slack Off - Level 1
  (289, 28900, 303, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slaking - Encore - Level 7
  (289, 28900, 227, 6, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Slaking - Slack Off - Level 13
  (289, 28900, 303, 6, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Slaking - Feint Attack - Level 19
  (289, 28900, 185, 6, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Slaking - Amnesia - Level 25
  (289, 28900, 133, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Slaking - Covet - Level 31
  (289, 28900, 343, 6, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Slaking - Swagger - Level 36
  (289, 28900, 207, 6, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Slaking - Counter - Level 37
  (289, 28900, 68, 6, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Slaking - Flail - Level 43
  (289, 28900, 175, 6, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Slaking - Focus Punch - TM01
  (289, 28900, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 13),
  -- Slaking - Water Pulse - TM03
  (289, 28900, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 14),
  -- Slaking - Roar - TM05
  (289, 28900, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 15),
  -- Slaking - Toxic - TM06
  (289, 28900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Slaking - Bulk Up - TM08
  (289, 28900, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 17),
  -- Slaking - Hidden Power - TM10
  (289, 28900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Slaking - Sunny Day - TM11
  (289, 28900, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Slaking - Taunt - TM12
  (289, 28900, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 20),
  -- Slaking - Ice Beam - TM13
  (289, 28900, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 21),
  -- Slaking - Blizzard - TM14
  (289, 28900, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 22),
  -- Slaking - Hyper Beam - TM15
  (289, 28900, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 23),
  -- Slaking - Protect - TM17
  (289, 28900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 24),
  -- Slaking - Rain Dance - TM18
  (289, 28900, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 25),
  -- Slaking - Frustration - TM21
  (289, 28900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 26),
  -- Slaking - Solar Beam - TM22
  (289, 28900, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 27),
  -- Slaking - Thunderbolt - TM24
  (289, 28900, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 28),
  -- Slaking - Thunder - TM25
  (289, 28900, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 29),
  -- Slaking - Earthquake - TM26
  (289, 28900, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 30),
  -- Slaking - Return - TM27
  (289, 28900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 31),
  -- Slaking - Shadow Ball - TM30
  (289, 28900, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 32),
  -- Slaking - Brick Break - TM31
  (289, 28900, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 33),
  -- Slaking - Double Team - TM32
  (289, 28900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 34),
  -- Slaking - Shock Wave - TM34
  (289, 28900, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 35),
  -- Slaking - Flamethrower - TM35
  (289, 28900, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 36),
  -- Slaking - Fire Blast - TM38
  (289, 28900, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 37),
  -- Slaking - Aerial Ace - TM40
  (289, 28900, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 38),
  -- Slaking - Facade - TM42
  (289, 28900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 39),
  -- Slaking - Secret Power - TM43
  (289, 28900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 40),
  -- Slaking - Rest - TM44
  (289, 28900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 41),
  -- Slaking - Attract - TM45
  (289, 28900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 42),
  -- Slaking - Cut - HM01
  (289, 28900, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 43),
  -- Slaking - Strength - HM04
  (289, 28900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 44),
  -- Slaking - Rock Smash - HM06
  (289, 28900, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 45),
  -- Slaking - Body Slam - Move Tutor
  (289, 28900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Slaking - Counter - Move Tutor
  (289, 28900, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Slaking - Double-Edge - Move Tutor
  (289, 28900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Slaking - Mega Kick - Move Tutor
  (289, 28900, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Slaking - Mega Punch - Move Tutor
  (289, 28900, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Slaking - Mimic - Move Tutor
  (289, 28900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Slaking - Rock Slide - Move Tutor
  (289, 28900, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Slaking - Seismic Toss - Move Tutor
  (289, 28900, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Slaking - Substitute - Move Tutor
  (289, 28900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 54),
  -- Nincada - Scratch - Level 1
  (290, 29000, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nincada - Harden - Level 1
  (290, 29000, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nincada - Leech Life - Level 5
  (290, 29000, 141, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nincada - Sand Attack - Level 9
  (290, 29000, 28, 6, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nincada - Fury Swipes - Level 14
  (290, 29000, 154, 6, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Nincada - Mind Reader - Level 19
  (290, 29000, 170, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Nincada - False Swipe - Level 25
  (290, 29000, 206, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nincada - Mud-Slap - Level 31
  (290, 29000, 189, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Nincada - Metal Claw - Level 38
  (290, 29000, 232, 6, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Nincada - Dig - Level 45
  (290, 29000, 91, 6, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Nincada - Toxic - TM06
  (290, 29000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Nincada - Hidden Power - TM10
  (290, 29000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Nincada - Sunny Day - TM11
  (290, 29000, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Nincada - Protect - TM17
  (290, 29000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 14),
  -- Nincada - Giga Drain - TM19
  (290, 29000, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 15),
  -- Nincada - Frustration - TM21
  (290, 29000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 16),
  -- Nincada - Solar Beam - TM22
  (290, 29000, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 17),
  -- Nincada - Return - TM27
  (290, 29000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 18),
  -- Nincada - Dig - TM28
  (290, 29000, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 19),
  -- Nincada - Shadow Ball - TM30
  (290, 29000, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 20),
  -- Nincada - Double Team - TM32
  (290, 29000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 21),
  -- Nincada - Sandstorm - TM37
  (290, 29000, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 22),
  -- Nincada - Aerial Ace - TM40
  (290, 29000, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 23),
  -- Nincada - Facade - TM42
  (290, 29000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 24),
  -- Nincada - Secret Power - TM43
  (290, 29000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 25),
  -- Nincada - Rest - TM44
  (290, 29000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 26),
  -- Nincada - Cut - HM01
  (290, 29000, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 27),
  -- Nincada - Flash - HM05
  (290, 29000, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 28),
  -- Nincada - Endure - Egg Move
  (290, 29000, 203, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Nincada - Feint Attack - Egg Move
  (290, 29000, 185, 6, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Nincada - Gust - Egg Move
  (290, 29000, 16, 6, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Nincada - Silver Wind - Egg Move
  (290, 29000, 318, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Nincada - Double-Edge - Move Tutor
  (290, 29000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Nincada - Mimic - Move Tutor
  (290, 29000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Nincada - Substitute - Move Tutor
  (290, 29000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Ninjask - Scratch - Level 1
  (291, 29100, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninjask - Harden - Level 1
  (291, 29100, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninjask - Leech Life - Level 1
  (291, 29100, 141, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninjask - Sand Attack - Level 1
  (291, 29100, 28, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninjask - Leech Life - Level 5
  (291, 29100, 141, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Ninjask - Sand Attack - Level 9
  (291, 29100, 28, 6, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Ninjask - Fury Swipes - Level 14
  (291, 29100, 154, 6, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Ninjask - Mind Reader - Level 19
  (291, 29100, 170, 6, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Ninjask - Double Team - Level 20
  (291, 29100, 104, 6, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Ninjask - Fury Cutter - Level 20
  (291, 29100, 210, 6, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Ninjask - Screech - Level 20
  (291, 29100, 103, 6, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Ninjask - Swords Dance - Level 25
  (291, 29100, 14, 6, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Ninjask - Slash - Level 31
  (291, 29100, 163, 6, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Ninjask - Agility - Level 38
  (291, 29100, 97, 6, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Ninjask - Baton Pass - Level 45
  (291, 29100, 226, 6, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Ninjask - Toxic - TM06
  (291, 29100, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 16),
  -- Ninjask - Hidden Power - TM10
  (291, 29100, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Ninjask - Sunny Day - TM11
  (291, 29100, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Ninjask - Hyper Beam - TM15
  (291, 29100, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 19),
  -- Ninjask - Protect - TM17
  (291, 29100, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Ninjask - Giga Drain - TM19
  (291, 29100, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 21),
  -- Ninjask - Frustration - TM21
  (291, 29100, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 22),
  -- Ninjask - Solar Beam - TM22
  (291, 29100, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 23),
  -- Ninjask - Return - TM27
  (291, 29100, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 24),
  -- Ninjask - Dig - TM28
  (291, 29100, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 25),
  -- Ninjask - Shadow Ball - TM30
  (291, 29100, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 26),
  -- Ninjask - Double Team - TM32
  (291, 29100, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 27),
  -- Ninjask - Sandstorm - TM37
  (291, 29100, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 28),
  -- Ninjask - Aerial Ace - TM40
  (291, 29100, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 29),
  -- Ninjask - Facade - TM42
  (291, 29100, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 30),
  -- Ninjask - Secret Power - TM43
  (291, 29100, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 31),
  -- Ninjask - Rest - TM44
  (291, 29100, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 32),
  -- Ninjask - Attract - TM45
  (291, 29100, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 33),
  -- Ninjask - Thief - TM46
  (291, 29100, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 34),
  -- Ninjask - Cut - HM01
  (291, 29100, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 35),
  -- Ninjask - Flash - HM05
  (291, 29100, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 36),
  -- Ninjask - Double-Edge - Move Tutor
  (291, 29100, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Ninjask - Mimic - Move Tutor
  (291, 29100, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Ninjask - Substitute - Move Tutor
  (291, 29100, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Ninjask - Swords Dance - Move Tutor
  (291, 29100, 14, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Shedinja - Scratch - Level 1
  (292, 29200, 10, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shedinja - Harden - Level 1
  (292, 29200, 106, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shedinja - Leech Life - Level 5
  (292, 29200, 141, 6, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shedinja - Sand Attack - Level 9
  (292, 29200, 28, 6, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Shedinja - Fury Swipes - Level 14
  (292, 29200, 154, 6, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Shedinja - Mind Reader - Level 19
  (292, 29200, 170, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shedinja - Spite - Level 25
  (292, 29200, 180, 6, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shedinja - Confuse Ray - Level 31
  (292, 29200, 109, 6, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Shedinja - Shadow Ball - Level 38
  (292, 29200, 247, 6, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Shedinja - Grudge - Level 45
  (292, 29200, 288, 6, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Shedinja - Toxic - TM06
  (292, 29200, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Shedinja - Hidden Power - TM10
  (292, 29200, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Shedinja - Sunny Day - TM11
  (292, 29200, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Shedinja - Hyper Beam - TM15
  (292, 29200, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 14),
  -- Shedinja - Protect - TM17
  (292, 29200, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Shedinja - Giga Drain - TM19
  (292, 29200, 202, 6, NULL, 2, NULL, NULL, 6002019, NULL, 16),
  -- Shedinja - Frustration - TM21
  (292, 29200, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 17),
  -- Shedinja - Solar Beam - TM22
  (292, 29200, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 18),
  -- Shedinja - Return - TM27
  (292, 29200, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 19),
  -- Shedinja - Dig - TM28
  (292, 29200, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 20),
  -- Shedinja - Shadow Ball - TM30
  (292, 29200, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 21),
  -- Shedinja - Double Team - TM32
  (292, 29200, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 22),
  -- Shedinja - Sandstorm - TM37
  (292, 29200, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 23),
  -- Shedinja - Aerial Ace - TM40
  (292, 29200, 332, 6, NULL, 2, NULL, NULL, 6002040, NULL, 24),
  -- Shedinja - Facade - TM42
  (292, 29200, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 25),
  -- Shedinja - Secret Power - TM43
  (292, 29200, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 26),
  -- Shedinja - Rest - TM44
  (292, 29200, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 27),
  -- Shedinja - Thief - TM46
  (292, 29200, 168, 6, NULL, 2, NULL, NULL, 6002046, NULL, 28),
  -- Shedinja - Cut - HM01
  (292, 29200, 15, 6, NULL, 3, NULL, NULL, 6003001, NULL, 29),
  -- Shedinja - Flash - HM05
  (292, 29200, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 30),
  -- Shedinja - Double-Edge - Move Tutor
  (292, 29200, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Shedinja - Dream Eater - Move Tutor
  (292, 29200, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Shedinja - Mimic - Move Tutor
  (292, 29200, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Shedinja - Substitute - Move Tutor
  (292, 29200, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 34),
  -- Whismur - Pound - Level 1
  (293, 29300, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whismur - Uproar - Level 5
  (293, 29300, 253, 6, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Whismur - Astonish - Level 11
  (293, 29300, 310, 6, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Whismur - Howl - Level 15
  (293, 29300, 336, 6, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Whismur - Supersonic - Level 21
  (293, 29300, 48, 6, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Whismur - Stomp - Level 25
  (293, 29300, 23, 6, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Whismur - Screech - Level 31
  (293, 29300, 103, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Whismur - Roar - Level 35
  (293, 29300, 46, 6, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Whismur - Rest - Level 41
  (293, 29300, 156, 6, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Whismur - Sleep Talk - Level 41
  (293, 29300, 214, 6, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Whismur - Hyper Voice - Level 45
  (293, 29300, 304, 6, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Whismur - Water Pulse - TM03
  (293, 29300, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 12),
  -- Whismur - Roar - TM05
  (293, 29300, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 13),
  -- Whismur - Toxic - TM06
  (293, 29300, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 14),
  -- Whismur - Hidden Power - TM10
  (293, 29300, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 15),
  -- Whismur - Sunny Day - TM11
  (293, 29300, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 16),
  -- Whismur - Ice Beam - TM13
  (293, 29300, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 17),
  -- Whismur - Blizzard - TM14
  (293, 29300, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 18),
  -- Whismur - Protect - TM17
  (293, 29300, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Whismur - Rain Dance - TM18
  (293, 29300, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Whismur - Frustration - TM21
  (293, 29300, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Whismur - Solar Beam - TM22
  (293, 29300, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 22),
  -- Whismur - Return - TM27
  (293, 29300, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Whismur - Shadow Ball - TM30
  (293, 29300, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 24),
  -- Whismur - Double Team - TM32
  (293, 29300, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 25),
  -- Whismur - Shock Wave - TM34
  (293, 29300, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 26),
  -- Whismur - Flamethrower - TM35
  (293, 29300, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 27),
  -- Whismur - Fire Blast - TM38
  (293, 29300, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 28),
  -- Whismur - Facade - TM42
  (293, 29300, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 29),
  -- Whismur - Secret Power - TM43
  (293, 29300, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 30),
  -- Whismur - Rest - TM44
  (293, 29300, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 31),
  -- Whismur - Attract - TM45
  (293, 29300, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 32),
  -- Whismur - Extrasensory - Egg Move
  (293, 29300, 326, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Whismur - Smelling Salts - Egg Move
  (293, 29300, 265, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Whismur - Snore - Egg Move
  (293, 29300, 173, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Whismur - Swagger - Egg Move
  (293, 29300, 207, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Whismur - Take Down - Egg Move
  (293, 29300, 36, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Whismur - Body Slam - Move Tutor
  (293, 29300, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Whismur - Counter - Move Tutor
  (293, 29300, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Whismur - Double-Edge - Move Tutor
  (293, 29300, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Whismur - Mega Kick - Move Tutor
  (293, 29300, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Whismur - Mega Punch - Move Tutor
  (293, 29300, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Whismur - Mimic - Move Tutor
  (293, 29300, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Whismur - Seismic Toss - Move Tutor
  (293, 29300, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Whismur - Substitute - Move Tutor
  (293, 29300, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Loudred - Pound - Level 1
  (294, 29400, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Loudred - Uproar - Level 1
  (294, 29400, 253, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Loudred - Astonish - Level 1
  (294, 29400, 310, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Loudred - Howl - Level 1
  (294, 29400, 336, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Loudred - Uproar - Level 5
  (294, 29400, 253, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Loudred - Astonish - Level 11
  (294, 29400, 310, 6, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Loudred - Howl - Level 15
  (294, 29400, 336, 6, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Loudred - Supersonic - Level 23
  (294, 29400, 48, 6, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Loudred - Stomp - Level 29
  (294, 29400, 23, 6, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Loudred - Screech - Level 37
  (294, 29400, 103, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Loudred - Roar - Level 43
  (294, 29400, 46, 6, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Loudred - Rest - Level 51
  (294, 29400, 156, 6, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Loudred - Sleep Talk - Level 51
  (294, 29400, 214, 6, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Loudred - Hyper Voice - Level 57
  (294, 29400, 304, 6, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Loudred - Water Pulse - TM03
  (294, 29400, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 15),
  -- Loudred - Roar - TM05
  (294, 29400, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 16),
  -- Loudred - Toxic - TM06
  (294, 29400, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Loudred - Hidden Power - TM10
  (294, 29400, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 18),
  -- Loudred - Sunny Day - TM11
  (294, 29400, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 19),
  -- Loudred - Taunt - TM12
  (294, 29400, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 20),
  -- Loudred - Ice Beam - TM13
  (294, 29400, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 21),
  -- Loudred - Blizzard - TM14
  (294, 29400, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 22),
  -- Loudred - Protect - TM17
  (294, 29400, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 23),
  -- Loudred - Rain Dance - TM18
  (294, 29400, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 24),
  -- Loudred - Frustration - TM21
  (294, 29400, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 25),
  -- Loudred - Solar Beam - TM22
  (294, 29400, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 26),
  -- Loudred - Earthquake - TM26
  (294, 29400, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 27),
  -- Loudred - Return - TM27
  (294, 29400, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Loudred - Shadow Ball - TM30
  (294, 29400, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 29),
  -- Loudred - Brick Break - TM31
  (294, 29400, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 30),
  -- Loudred - Double Team - TM32
  (294, 29400, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 31),
  -- Loudred - Shock Wave - TM34
  (294, 29400, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 32),
  -- Loudred - Flamethrower - TM35
  (294, 29400, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 33),
  -- Loudred - Fire Blast - TM38
  (294, 29400, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 34),
  -- Loudred - Torment - TM41
  (294, 29400, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 35),
  -- Loudred - Facade - TM42
  (294, 29400, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 36),
  -- Loudred - Secret Power - TM43
  (294, 29400, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 37),
  -- Loudred - Rest - TM44
  (294, 29400, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 38),
  -- Loudred - Attract - TM45
  (294, 29400, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 39),
  -- Loudred - Overheat - TM50
  (294, 29400, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 40),
  -- Loudred - Strength - HM04
  (294, 29400, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 41),
  -- Loudred - Rock Smash - HM06
  (294, 29400, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 42),
  -- Loudred - Body Slam - Move Tutor
  (294, 29400, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Loudred - Counter - Move Tutor
  (294, 29400, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Loudred - Double-Edge - Move Tutor
  (294, 29400, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Loudred - Mega Kick - Move Tutor
  (294, 29400, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Loudred - Mega Punch - Move Tutor
  (294, 29400, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Loudred - Mimic - Move Tutor
  (294, 29400, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Loudred - Rock Slide - Move Tutor
  (294, 29400, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Loudred - Seismic Toss - Move Tutor
  (294, 29400, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Loudred - Substitute - Move Tutor
  (294, 29400, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Exploud - Pound - Level 1
  (295, 29500, 1, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exploud - Uproar - Level 1
  (295, 29500, 253, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exploud - Astonish - Level 1
  (295, 29500, 310, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exploud - Howl - Level 1
  (295, 29500, 336, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exploud - Uproar - Level 5
  (295, 29500, 253, 6, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Exploud - Astonish - Level 11
  (295, 29500, 310, 6, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Exploud - Howl - Level 15
  (295, 29500, 336, 6, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Exploud - Supersonic - Level 23
  (295, 29500, 48, 6, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Exploud - Stomp - Level 29
  (295, 29500, 23, 6, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Exploud - Screech - Level 37
  (295, 29500, 103, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Exploud - Hyper Beam - Level 40
  (295, 29500, 63, 6, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Exploud - Roar - Level 45
  (295, 29500, 46, 6, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Exploud - Rest - Level 55
  (295, 29500, 156, 6, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Exploud - Sleep Talk - Level 55
  (295, 29500, 214, 6, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Exploud - Hyper Voice - Level 63
  (295, 29500, 304, 6, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Exploud - Water Pulse - TM03
  (295, 29500, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 16),
  -- Exploud - Roar - TM05
  (295, 29500, 46, 6, NULL, 2, NULL, NULL, 6002005, NULL, 17),
  -- Exploud - Toxic - TM06
  (295, 29500, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 18),
  -- Exploud - Hidden Power - TM10
  (295, 29500, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Exploud - Sunny Day - TM11
  (295, 29500, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 20),
  -- Exploud - Taunt - TM12
  (295, 29500, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 21),
  -- Exploud - Ice Beam - TM13
  (295, 29500, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 22),
  -- Exploud - Blizzard - TM14
  (295, 29500, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 23),
  -- Exploud - Hyper Beam - TM15
  (295, 29500, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 24),
  -- Exploud - Protect - TM17
  (295, 29500, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 25),
  -- Exploud - Rain Dance - TM18
  (295, 29500, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 26),
  -- Exploud - Frustration - TM21
  (295, 29500, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 27),
  -- Exploud - Solar Beam - TM22
  (295, 29500, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 28),
  -- Exploud - Earthquake - TM26
  (295, 29500, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 29),
  -- Exploud - Return - TM27
  (295, 29500, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 30),
  -- Exploud - Shadow Ball - TM30
  (295, 29500, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 31),
  -- Exploud - Brick Break - TM31
  (295, 29500, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 32),
  -- Exploud - Double Team - TM32
  (295, 29500, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 33),
  -- Exploud - Shock Wave - TM34
  (295, 29500, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 34),
  -- Exploud - Flamethrower - TM35
  (295, 29500, 53, 6, NULL, 2, NULL, NULL, 6002035, NULL, 35),
  -- Exploud - Fire Blast - TM38
  (295, 29500, 126, 6, NULL, 2, NULL, NULL, 6002038, NULL, 36),
  -- Exploud - Torment - TM41
  (295, 29500, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 37),
  -- Exploud - Facade - TM42
  (295, 29500, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 38),
  -- Exploud - Secret Power - TM43
  (295, 29500, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 39),
  -- Exploud - Rest - TM44
  (295, 29500, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 40),
  -- Exploud - Attract - TM45
  (295, 29500, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 41),
  -- Exploud - Overheat - TM50
  (295, 29500, 315, 6, NULL, 2, NULL, NULL, 6002050, NULL, 42),
  -- Exploud - Strength - HM04
  (295, 29500, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 43),
  -- Exploud - Rock Smash - HM06
  (295, 29500, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 44),
  -- Exploud - Body Slam - Move Tutor
  (295, 29500, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Exploud - Counter - Move Tutor
  (295, 29500, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Exploud - Double-Edge - Move Tutor
  (295, 29500, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Exploud - Mega Kick - Move Tutor
  (295, 29500, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Exploud - Mega Punch - Move Tutor
  (295, 29500, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Exploud - Mimic - Move Tutor
  (295, 29500, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Exploud - Rock Slide - Move Tutor
  (295, 29500, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Exploud - Seismic Toss - Move Tutor
  (295, 29500, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Exploud - Substitute - Move Tutor
  (295, 29500, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 53),
  -- Makuhita - Tackle - Level 1
  (296, 29600, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Makuhita - Focus Energy - Level 1
  (296, 29600, 116, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Makuhita - Sand Attack - Level 4
  (296, 29600, 28, 6, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Makuhita - Arm Thrust - Level 10
  (296, 29600, 292, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Makuhita - Vital Throw - Level 13
  (296, 29600, 233, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Makuhita - Fake Out - Level 19
  (296, 29600, 252, 6, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Makuhita - Whirlwind - Level 22
  (296, 29600, 18, 6, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Makuhita - Knock Off - Level 28
  (296, 29600, 282, 6, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Makuhita - Smelling Salts - Level 31
  (296, 29600, 265, 6, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Makuhita - Belly Drum - Level 37
  (296, 29600, 187, 6, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Makuhita - Endure - Level 40
  (296, 29600, 203, 6, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Makuhita - Seismic Toss - Level 46
  (296, 29600, 69, 6, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Makuhita - Reversal - Level 49
  (296, 29600, 179, 6, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Makuhita - Focus Punch - TM01
  (296, 29600, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 14),
  -- Makuhita - Toxic - TM06
  (296, 29600, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Makuhita - Bulk Up - TM08
  (296, 29600, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 16),
  -- Makuhita - Hidden Power - TM10
  (296, 29600, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 17),
  -- Makuhita - Sunny Day - TM11
  (296, 29600, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 18),
  -- Makuhita - Protect - TM17
  (296, 29600, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 19),
  -- Makuhita - Rain Dance - TM18
  (296, 29600, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 20),
  -- Makuhita - Frustration - TM21
  (296, 29600, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 21),
  -- Makuhita - Earthquake - TM26
  (296, 29600, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 22),
  -- Makuhita - Return - TM27
  (296, 29600, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 23),
  -- Makuhita - Dig - TM28
  (296, 29600, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 24),
  -- Makuhita - Brick Break - TM31
  (296, 29600, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 25),
  -- Makuhita - Double Team - TM32
  (296, 29600, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 26),
  -- Makuhita - Rock Tomb - TM39
  (296, 29600, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 27),
  -- Makuhita - Facade - TM42
  (296, 29600, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 28),
  -- Makuhita - Secret Power - TM43
  (296, 29600, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 29),
  -- Makuhita - Rest - TM44
  (296, 29600, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 30),
  -- Makuhita - Attract - TM45
  (296, 29600, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 31),
  -- Makuhita - Surf - HM03
  (296, 29600, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 32),
  -- Makuhita - Strength - HM04
  (296, 29600, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 33),
  -- Makuhita - Rock Smash - HM06
  (296, 29600, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 34),
  -- Makuhita - Counter - Egg Move
  (296, 29600, 68, 6, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Makuhita - Cross Chop - Egg Move
  (296, 29600, 238, 6, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Makuhita - Detect - Egg Move
  (296, 29600, 197, 6, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Makuhita - Dynamic Punch - Egg Move
  (296, 29600, 223, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Makuhita - Feint Attack - Egg Move
  (296, 29600, 185, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Makuhita - Foresight - Egg Move
  (296, 29600, 193, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Makuhita - Helping Hand - Egg Move
  (296, 29600, 270, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Makuhita - Revenge - Egg Move
  (296, 29600, 279, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Makuhita - Body Slam - Move Tutor
  (296, 29600, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Makuhita - Counter - Move Tutor
  (296, 29600, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Makuhita - Double-Edge - Move Tutor
  (296, 29600, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Makuhita - Mega Kick - Move Tutor
  (296, 29600, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Makuhita - Mega Punch - Move Tutor
  (296, 29600, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Makuhita - Metronome - Move Tutor
  (296, 29600, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Makuhita - Mimic - Move Tutor
  (296, 29600, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Makuhita - Rock Slide - Move Tutor
  (296, 29600, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Makuhita - Seismic Toss - Move Tutor
  (296, 29600, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51),
  -- Makuhita - Substitute - Move Tutor
  (296, 29600, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 52),
  -- Hariyama - Tackle - Level 1
  (297, 29700, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hariyama - Focus Energy - Level 1
  (297, 29700, 116, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hariyama - Sand Attack - Level 1
  (297, 29700, 28, 6, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hariyama - Arm Thrust - Level 1
  (297, 29700, 292, 6, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hariyama - Sand Attack - Level 4
  (297, 29700, 28, 6, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Hariyama - Arm Thrust - Level 10
  (297, 29700, 292, 6, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Hariyama - Vital Throw - Level 13
  (297, 29700, 233, 6, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Hariyama - Fake Out - Level 19
  (297, 29700, 252, 6, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Hariyama - Whirlwind - Level 22
  (297, 29700, 18, 6, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Hariyama - Knock Off - Level 29
  (297, 29700, 282, 6, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Hariyama - Smelling Salts - Level 33
  (297, 29700, 265, 6, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Hariyama - Belly Drum - Level 40
  (297, 29700, 187, 6, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Hariyama - Endure - Level 44
  (297, 29700, 203, 6, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Hariyama - Seismic Toss - Level 51
  (297, 29700, 69, 6, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Hariyama - Reversal - Level 55
  (297, 29700, 179, 6, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Hariyama - Focus Punch - TM01
  (297, 29700, 264, 6, NULL, 2, NULL, NULL, 6002001, NULL, 16),
  -- Hariyama - Toxic - TM06
  (297, 29700, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 17),
  -- Hariyama - Bulk Up - TM08
  (297, 29700, 339, 6, NULL, 2, NULL, NULL, 6002008, NULL, 18),
  -- Hariyama - Hidden Power - TM10
  (297, 29700, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 19),
  -- Hariyama - Sunny Day - TM11
  (297, 29700, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 20),
  -- Hariyama - Hyper Beam - TM15
  (297, 29700, 63, 6, NULL, 2, NULL, NULL, 6002015, NULL, 21),
  -- Hariyama - Protect - TM17
  (297, 29700, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 22),
  -- Hariyama - Rain Dance - TM18
  (297, 29700, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 23),
  -- Hariyama - Frustration - TM21
  (297, 29700, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 24),
  -- Hariyama - Earthquake - TM26
  (297, 29700, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 25),
  -- Hariyama - Return - TM27
  (297, 29700, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 26),
  -- Hariyama - Dig - TM28
  (297, 29700, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 27),
  -- Hariyama - Brick Break - TM31
  (297, 29700, 280, 6, NULL, 2, NULL, NULL, 6002031, NULL, 28),
  -- Hariyama - Double Team - TM32
  (297, 29700, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 29),
  -- Hariyama - Rock Tomb - TM39
  (297, 29700, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 30),
  -- Hariyama - Facade - TM42
  (297, 29700, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 31),
  -- Hariyama - Secret Power - TM43
  (297, 29700, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 32),
  -- Hariyama - Rest - TM44
  (297, 29700, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 33),
  -- Hariyama - Attract - TM45
  (297, 29700, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 34),
  -- Hariyama - Surf - HM03
  (297, 29700, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 35),
  -- Hariyama - Strength - HM04
  (297, 29700, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 36),
  -- Hariyama - Rock Smash - HM06
  (297, 29700, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 37),
  -- Hariyama - Body Slam - Move Tutor
  (297, 29700, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Hariyama - Counter - Move Tutor
  (297, 29700, 68, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Hariyama - Double-Edge - Move Tutor
  (297, 29700, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Hariyama - Mega Kick - Move Tutor
  (297, 29700, 25, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Hariyama - Mega Punch - Move Tutor
  (297, 29700, 5, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 42),
  -- Hariyama - Metronome - Move Tutor
  (297, 29700, 118, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 43),
  -- Hariyama - Mimic - Move Tutor
  (297, 29700, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 44),
  -- Hariyama - Rock Slide - Move Tutor
  (297, 29700, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 45),
  -- Hariyama - Seismic Toss - Move Tutor
  (297, 29700, 69, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Hariyama - Substitute - Move Tutor
  (297, 29700, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Azurill - Splash - Level 1
  (298, 29800, 150, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azurill - Charm - Level 3
  (298, 29800, 204, 6, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Azurill - Tail Whip - Level 6
  (298, 29800, 39, 6, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Azurill - Bubble - Level 10
  (298, 29800, 145, 6, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Azurill - Slam - Level 15
  (298, 29800, 21, 6, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Azurill - Water Gun - Level 21
  (298, 29800, 55, 6, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Azurill - Water Pulse - TM03
  (298, 29800, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 7),
  -- Azurill - Toxic - TM06
  (298, 29800, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 8),
  -- Azurill - Hail - TM07
  (298, 29800, 258, 6, NULL, 2, NULL, NULL, 6002007, NULL, 9),
  -- Azurill - Hidden Power - TM10
  (298, 29800, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 10),
  -- Azurill - Ice Beam - TM13
  (298, 29800, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 11),
  -- Azurill - Blizzard - TM14
  (298, 29800, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 12),
  -- Azurill - Protect - TM17
  (298, 29800, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 13),
  -- Azurill - Rain Dance - TM18
  (298, 29800, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 14),
  -- Azurill - Frustration - TM21
  (298, 29800, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 15),
  -- Azurill - Iron Tail - TM23
  (298, 29800, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 16),
  -- Azurill - Return - TM27
  (298, 29800, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 17),
  -- Azurill - Double Team - TM32
  (298, 29800, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 18),
  -- Azurill - Facade - TM42
  (298, 29800, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 19),
  -- Azurill - Secret Power - TM43
  (298, 29800, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 20),
  -- Azurill - Rest - TM44
  (298, 29800, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 21),
  -- Azurill - Attract - TM45
  (298, 29800, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 22),
  -- Azurill - Surf - HM03
  (298, 29800, 57, 6, NULL, 3, NULL, NULL, 6003003, NULL, 23),
  -- Azurill - Waterfall - HM07
  (298, 29800, 127, 6, NULL, 3, NULL, NULL, 6003007, NULL, 24),
  -- Azurill - Encore - Egg Move
  (298, 29800, 227, 6, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Azurill - Refresh - Egg Move
  (298, 29800, 287, 6, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Azurill - Sing - Egg Move
  (298, 29800, 47, 6, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Azurill - Slam - Egg Move
  (298, 29800, 21, 6, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Azurill - Tickle - Egg Move
  (298, 29800, 321, 6, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Azurill - Body Slam - Move Tutor
  (298, 29800, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 30),
  -- Azurill - Double-Edge - Move Tutor
  (298, 29800, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 31),
  -- Azurill - Mimic - Move Tutor
  (298, 29800, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 32),
  -- Azurill - Substitute - Move Tutor
  (298, 29800, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 33),
  -- Nosepass - Tackle - Level 1
  (299, 29900, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nosepass - Harden - Level 7
  (299, 29900, 106, 6, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Nosepass - Rock Throw - Level 13
  (299, 29900, 88, 6, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Nosepass - Block - Level 16
  (299, 29900, 335, 6, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Nosepass - Thunder Wave - Level 22
  (299, 29900, 86, 6, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Nosepass - Rock Slide - Level 28
  (299, 29900, 157, 6, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Nosepass - Sandstorm - Level 31
  (299, 29900, 201, 6, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Nosepass - Rest - Level 37
  (299, 29900, 156, 6, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Nosepass - Zap Cannon - Level 43
  (299, 29900, 192, 6, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Nosepass - Lock-On - Level 46
  (299, 29900, 199, 6, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Nosepass - Toxic - TM06
  (299, 29900, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 11),
  -- Nosepass - Hidden Power - TM10
  (299, 29900, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 12),
  -- Nosepass - Sunny Day - TM11
  (299, 29900, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 13),
  -- Nosepass - Taunt - TM12
  (299, 29900, 269, 6, NULL, 2, NULL, NULL, 6002012, NULL, 14),
  -- Nosepass - Protect - TM17
  (299, 29900, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 15),
  -- Nosepass - Frustration - TM21
  (299, 29900, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 16),
  -- Nosepass - Thunderbolt - TM24
  (299, 29900, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 17),
  -- Nosepass - Thunder - TM25
  (299, 29900, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 18),
  -- Nosepass - Earthquake - TM26
  (299, 29900, 89, 6, NULL, 2, NULL, NULL, 6002026, NULL, 19),
  -- Nosepass - Return - TM27
  (299, 29900, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 20),
  -- Nosepass - Double Team - TM32
  (299, 29900, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 21),
  -- Nosepass - Shock Wave - TM34
  (299, 29900, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 22),
  -- Nosepass - Sandstorm - TM37
  (299, 29900, 201, 6, NULL, 2, NULL, NULL, 6002037, NULL, 23),
  -- Nosepass - Rock Tomb - TM39
  (299, 29900, 317, 6, NULL, 2, NULL, NULL, 6002039, NULL, 24),
  -- Nosepass - Torment - TM41
  (299, 29900, 259, 6, NULL, 2, NULL, NULL, 6002041, NULL, 25),
  -- Nosepass - Facade - TM42
  (299, 29900, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 26),
  -- Nosepass - Secret Power - TM43
  (299, 29900, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 27),
  -- Nosepass - Rest - TM44
  (299, 29900, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 28),
  -- Nosepass - Attract - TM45
  (299, 29900, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 29),
  -- Nosepass - Strength - HM04
  (299, 29900, 70, 6, NULL, 3, NULL, NULL, 6003004, NULL, 30),
  -- Nosepass - Rock Smash - HM06
  (299, 29900, 249, 6, NULL, 3, NULL, NULL, 6003006, NULL, 31),
  -- Nosepass - Explosion - Egg Move
  (299, 29900, 153, 6, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Nosepass - Magnitude - Egg Move
  (299, 29900, 222, 6, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Nosepass - Rollout - Egg Move
  (299, 29900, 205, 6, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Nosepass - Body Slam - Move Tutor
  (299, 29900, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 35),
  -- Nosepass - Double-Edge - Move Tutor
  (299, 29900, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 36),
  -- Nosepass - Explosion - Move Tutor
  (299, 29900, 153, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 37),
  -- Nosepass - Mimic - Move Tutor
  (299, 29900, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 38),
  -- Nosepass - Rock Slide - Move Tutor
  (299, 29900, 157, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 39),
  -- Nosepass - Substitute - Move Tutor
  (299, 29900, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 40),
  -- Nosepass - Thunder Wave - Move Tutor
  (299, 29900, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 41),
  -- Skitty - Growl - Level 1
  (300, 30000, 45, 6, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skitty - Tackle - Level 1
  (300, 30000, 33, 6, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skitty - Tail Whip - Level 3
  (300, 30000, 39, 6, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Skitty - Attract - Level 7
  (300, 30000, 213, 6, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Skitty - Sing - Level 13
  (300, 30000, 47, 6, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Skitty - Double Slap - Level 15
  (300, 30000, 3, 6, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Skitty - Assist - Level 19
  (300, 30000, 274, 6, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Skitty - Charm - Level 25
  (300, 30000, 204, 6, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Skitty - Feint Attack - Level 27
  (300, 30000, 185, 6, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Skitty - Covet - Level 31
  (300, 30000, 343, 6, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Skitty - Heal Bell - Level 37
  (300, 30000, 215, 6, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Skitty - Double-Edge - Level 39
  (300, 30000, 38, 6, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Skitty - Water Pulse - TM03
  (300, 30000, 352, 6, NULL, 2, NULL, NULL, 6002003, NULL, 13),
  -- Skitty - Calm Mind - TM04
  (300, 30000, 347, 6, NULL, 2, NULL, NULL, 6002004, NULL, 14),
  -- Skitty - Toxic - TM06
  (300, 30000, 92, 6, NULL, 2, NULL, NULL, 6002006, NULL, 15),
  -- Skitty - Hidden Power - TM10
  (300, 30000, 237, 6, NULL, 2, NULL, NULL, 6002010, NULL, 16),
  -- Skitty - Sunny Day - TM11
  (300, 30000, 241, 6, NULL, 2, NULL, NULL, 6002011, NULL, 17),
  -- Skitty - Ice Beam - TM13
  (300, 30000, 58, 6, NULL, 2, NULL, NULL, 6002013, NULL, 18),
  -- Skitty - Blizzard - TM14
  (300, 30000, 59, 6, NULL, 2, NULL, NULL, 6002014, NULL, 19),
  -- Skitty - Protect - TM17
  (300, 30000, 182, 6, NULL, 2, NULL, NULL, 6002017, NULL, 20),
  -- Skitty - Rain Dance - TM18
  (300, 30000, 240, 6, NULL, 2, NULL, NULL, 6002018, NULL, 21),
  -- Skitty - Safeguard - TM20
  (300, 30000, 219, 6, NULL, 2, NULL, NULL, 6002020, NULL, 22),
  -- Skitty - Frustration - TM21
  (300, 30000, 218, 6, NULL, 2, NULL, NULL, 6002021, NULL, 23),
  -- Skitty - Solar Beam - TM22
  (300, 30000, 76, 6, NULL, 2, NULL, NULL, 6002022, NULL, 24),
  -- Skitty - Iron Tail - TM23
  (300, 30000, 231, 6, NULL, 2, NULL, NULL, 6002023, NULL, 25),
  -- Skitty - Thunderbolt - TM24
  (300, 30000, 85, 6, NULL, 2, NULL, NULL, 6002024, NULL, 26),
  -- Skitty - Thunder - TM25
  (300, 30000, 87, 6, NULL, 2, NULL, NULL, 6002025, NULL, 27),
  -- Skitty - Return - TM27
  (300, 30000, 216, 6, NULL, 2, NULL, NULL, 6002027, NULL, 28),
  -- Skitty - Dig - TM28
  (300, 30000, 91, 6, NULL, 2, NULL, NULL, 6002028, NULL, 29),
  -- Skitty - Shadow Ball - TM30
  (300, 30000, 247, 6, NULL, 2, NULL, NULL, 6002030, NULL, 30),
  -- Skitty - Double Team - TM32
  (300, 30000, 104, 6, NULL, 2, NULL, NULL, 6002032, NULL, 31),
  -- Skitty - Shock Wave - TM34
  (300, 30000, 351, 6, NULL, 2, NULL, NULL, 6002034, NULL, 32),
  -- Skitty - Facade - TM42
  (300, 30000, 263, 6, NULL, 2, NULL, NULL, 6002042, NULL, 33),
  -- Skitty - Secret Power - TM43
  (300, 30000, 290, 6, NULL, 2, NULL, NULL, 6002043, NULL, 34),
  -- Skitty - Rest - TM44
  (300, 30000, 156, 6, NULL, 2, NULL, NULL, 6002044, NULL, 35),
  -- Skitty - Attract - TM45
  (300, 30000, 213, 6, NULL, 2, NULL, NULL, 6002045, NULL, 36),
  -- Skitty - Flash - HM05
  (300, 30000, 148, 6, NULL, 3, NULL, NULL, 6003005, NULL, 37),
  -- Skitty - Baton Pass - Egg Move
  (300, 30000, 226, 6, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Skitty - Fake Tears - Egg Move
  (300, 30000, 313, 6, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Skitty - Helping Hand - Egg Move
  (300, 30000, 270, 6, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Skitty - Psych Up - Egg Move
  (300, 30000, 244, 6, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Skitty - Substitute - Egg Move
  (300, 30000, 164, 6, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Skitty - Tickle - Egg Move
  (300, 30000, 321, 6, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Skitty - Uproar - Egg Move
  (300, 30000, 253, 6, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Skitty - Wish - Egg Move
  (300, 30000, 273, 6, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Skitty - Body Slam - Move Tutor
  (300, 30000, 34, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 46),
  -- Skitty - Double-Edge - Move Tutor
  (300, 30000, 38, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 47),
  -- Skitty - Dream Eater - Move Tutor
  (300, 30000, 138, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 48),
  -- Skitty - Mimic - Move Tutor
  (300, 30000, 102, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 49),
  -- Skitty - Substitute - Move Tutor
  (300, 30000, 164, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 50),
  -- Skitty - Thunder Wave - Move Tutor
  (300, 30000, 86, 6, NULL, 6, NULL, NULL, NULL, 'One-time FireRed/LeafGreen Move Tutor.', 51);
