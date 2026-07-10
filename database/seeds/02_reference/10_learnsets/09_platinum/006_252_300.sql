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
-- Pokémon: #252-#300
-- Rows: 2825
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
  -- Treecko - Pound - Level 1
  (252, 25200, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Treecko - Leer - Level 1
  (252, 25200, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Treecko - Absorb - Level 6
  (252, 25200, 71, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Treecko - Quick Attack - Level 11
  (252, 25200, 98, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Treecko - Pursuit - Level 16
  (252, 25200, 228, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Treecko - Screech - Level 21
  (252, 25200, 103, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Treecko - Mega Drain - Level 26
  (252, 25200, 72, 9, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Treecko - Agility - Level 31
  (252, 25200, 97, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Treecko - Slam - Level 36
  (252, 25200, 21, 9, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Treecko - Detect - Level 41
  (252, 25200, 197, 9, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Treecko - Giga Drain - Level 46
  (252, 25200, 202, 9, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Treecko - Energy Ball - Level 51
  (252, 25200, 412, 9, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Treecko - Focus Punch - TM01
  (252, 25200, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 13),
  -- Treecko - Toxic - TM06
  (252, 25200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Treecko - Bullet Seed - TM09
  (252, 25200, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 15),
  -- Treecko - Hidden Power - TM10
  (252, 25200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Treecko - Sunny Day - TM11
  (252, 25200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Treecko - Protect - TM17
  (252, 25200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Treecko - Giga Drain - TM19
  (252, 25200, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 19),
  -- Treecko - Safeguard - TM20
  (252, 25200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 20),
  -- Treecko - Frustration - TM21
  (252, 25200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Treecko - Solar Beam - TM22
  (252, 25200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 22),
  -- Treecko - Iron Tail - TM23
  (252, 25200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Treecko - Return - TM27
  (252, 25200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Treecko - Dig - TM28
  (252, 25200, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 25),
  -- Treecko - Brick Break - TM31
  (252, 25200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 26),
  -- Treecko - Double Team - TM32
  (252, 25200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Treecko - Rock Tomb - TM39
  (252, 25200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 28),
  -- Treecko - Aerial Ace - TM40
  (252, 25200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 29),
  -- Treecko - Facade - TM42
  (252, 25200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Treecko - Secret Power - TM43
  (252, 25200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Treecko - Rest - TM44
  (252, 25200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Treecko - Attract - TM45
  (252, 25200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Treecko - Energy Ball - TM53
  (252, 25200, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 34),
  -- Treecko - Fling - TM56
  (252, 25200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 35),
  -- Treecko - Endure - TM58
  (252, 25200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Treecko - Drain Punch - TM60
  (252, 25200, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 37),
  -- Treecko - Flash - TM70
  (252, 25200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Treecko - Swords Dance - TM75
  (252, 25200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 39),
  -- Treecko - Captivate - TM78
  (252, 25200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Treecko - Rock Slide - TM80
  (252, 25200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 41),
  -- Treecko - Sleep Talk - TM82
  (252, 25200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Treecko - Natural Gift - TM83
  (252, 25200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Treecko - Grass Knot - TM86
  (252, 25200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 44),
  -- Treecko - Swagger - TM87
  (252, 25200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Treecko - Substitute - TM90
  (252, 25200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Treecko - Cut - HM01
  (252, 25200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 47),
  -- Treecko - Strength - HM04
  (252, 25200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 48),
  -- Treecko - Rock Smash - HM06
  (252, 25200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 49),
  -- Treecko - Double Kick - Egg
  (252, 25200, 24, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Treecko - Leech Seed - Egg
  (252, 25200, 73, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Treecko - Dragon Breath - Egg
  (252, 25200, 225, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Treecko - Synthesis - Egg
  (252, 25200, 235, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Treecko - Crunch - Egg
  (252, 25200, 242, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Treecko - Endeavor - Egg
  (252, 25200, 283, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Treecko - Mud Sport - Egg
  (252, 25200, 300, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Treecko - Crush Claw - Egg
  (252, 25200, 306, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Treecko - Grass Whistle - Egg
  (252, 25200, 320, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Treecko - Magical Leaf - Egg
  (252, 25200, 345, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Treecko - Worry Seed - Egg
  (252, 25200, 388, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Treecko - Leaf Storm - Egg
  (252, 25200, 437, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Treecko - Thunder Punch - Tutor
  (252, 25200, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Treecko - Swift - Tutor
  (252, 25200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Treecko - Snore - Tutor
  (252, 25200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Treecko - Mud-Slap - Tutor
  (252, 25200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Treecko - Fury Cutter - Tutor
  (252, 25200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Treecko - Synthesis - Tutor
  (252, 25200, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Treecko - Endeavor - Tutor
  (252, 25200, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Treecko - Seed Bomb - Tutor
  (252, 25200, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Grovyle - Pound - Level 1
  (253, 25300, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grovyle - Leer - Level 1
  (253, 25300, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grovyle - Absorb - Level 1
  (253, 25300, 71, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grovyle - Quick Attack - Level 1
  (253, 25300, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grovyle - Absorb - Level 6
  (253, 25300, 71, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Grovyle - Quick Attack - Level 11
  (253, 25300, 98, 9, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Grovyle - Fury Cutter - Level 16
  (253, 25300, 210, 9, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Grovyle - Pursuit - Level 17
  (253, 25300, 228, 9, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Grovyle - Screech - Level 23
  (253, 25300, 103, 9, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Grovyle - Leaf Blade - Level 29
  (253, 25300, 348, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Grovyle - Agility - Level 35
  (253, 25300, 97, 9, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Grovyle - Slam - Level 41
  (253, 25300, 21, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Grovyle - Detect - Level 47
  (253, 25300, 197, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Grovyle - False Swipe - Level 53
  (253, 25300, 206, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Grovyle - Leaf Storm - Level 59
  (253, 25300, 437, 9, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Grovyle - Focus Punch - TM01
  (253, 25300, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Grovyle - Toxic - TM06
  (253, 25300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Grovyle - Bullet Seed - TM09
  (253, 25300, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 18),
  -- Grovyle - Hidden Power - TM10
  (253, 25300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Grovyle - Sunny Day - TM11
  (253, 25300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Grovyle - Protect - TM17
  (253, 25300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Grovyle - Giga Drain - TM19
  (253, 25300, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 22),
  -- Grovyle - Safeguard - TM20
  (253, 25300, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 23),
  -- Grovyle - Frustration - TM21
  (253, 25300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Grovyle - Solar Beam - TM22
  (253, 25300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Grovyle - Iron Tail - TM23
  (253, 25300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Grovyle - Return - TM27
  (253, 25300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Grovyle - Dig - TM28
  (253, 25300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Grovyle - Brick Break - TM31
  (253, 25300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Grovyle - Double Team - TM32
  (253, 25300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Grovyle - Rock Tomb - TM39
  (253, 25300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 31),
  -- Grovyle - Aerial Ace - TM40
  (253, 25300, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 32),
  -- Grovyle - Facade - TM42
  (253, 25300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Grovyle - Secret Power - TM43
  (253, 25300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Grovyle - Rest - TM44
  (253, 25300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Grovyle - Attract - TM45
  (253, 25300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Grovyle - Energy Ball - TM53
  (253, 25300, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 37),
  -- Grovyle - False Swipe - TM54
  (253, 25300, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 38),
  -- Grovyle - Fling - TM56
  (253, 25300, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 39),
  -- Grovyle - Endure - TM58
  (253, 25300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Grovyle - Drain Punch - TM60
  (253, 25300, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 41),
  -- Grovyle - Flash - TM70
  (253, 25300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 42),
  -- Grovyle - Swords Dance - TM75
  (253, 25300, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 43),
  -- Grovyle - Captivate - TM78
  (253, 25300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Grovyle - Rock Slide - TM80
  (253, 25300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 45),
  -- Grovyle - X-Scissor - TM81
  (253, 25300, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 46),
  -- Grovyle - Sleep Talk - TM82
  (253, 25300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Grovyle - Natural Gift - TM83
  (253, 25300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Grovyle - Grass Knot - TM86
  (253, 25300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 49),
  -- Grovyle - Swagger - TM87
  (253, 25300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Grovyle - Substitute - TM90
  (253, 25300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Grovyle - Cut - HM01
  (253, 25300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 52),
  -- Grovyle - Strength - HM04
  (253, 25300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 53),
  -- Grovyle - Rock Smash - HM06
  (253, 25300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 54),
  -- Grovyle - Thunder Punch - Tutor
  (253, 25300, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Grovyle - Swift - Tutor
  (253, 25300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Grovyle - Snore - Tutor
  (253, 25300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Grovyle - Mud-Slap - Tutor
  (253, 25300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Grovyle - Fury Cutter - Tutor
  (253, 25300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Grovyle - Synthesis - Tutor
  (253, 25300, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Grovyle - Endeavor - Tutor
  (253, 25300, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Grovyle - Seed Bomb - Tutor
  (253, 25300, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Sceptile - Pound - Level 1
  (254, 25400, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sceptile - Leer - Level 1
  (254, 25400, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sceptile - Absorb - Level 1
  (254, 25400, 71, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sceptile - Quick Attack - Level 1
  (254, 25400, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sceptile - Night Slash - Level 1
  (254, 25400, 400, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sceptile - Absorb - Level 6
  (254, 25400, 71, 9, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Sceptile - Quick Attack - Level 11
  (254, 25400, 98, 9, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Sceptile - X-Scissor - Level 16
  (254, 25400, 404, 9, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Sceptile - Pursuit - Level 17
  (254, 25400, 228, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Sceptile - Screech - Level 23
  (254, 25400, 103, 9, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Sceptile - Leaf Blade - Level 29
  (254, 25400, 348, 9, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Sceptile - Agility - Level 35
  (254, 25400, 97, 9, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Sceptile - Slam - Level 43
  (254, 25400, 21, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Sceptile - Detect - Level 51
  (254, 25400, 197, 9, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Sceptile - False Swipe - Level 59
  (254, 25400, 206, 9, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Sceptile - Leaf Storm - Level 67
  (254, 25400, 437, 9, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Sceptile - Focus Punch - TM01
  (254, 25400, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Sceptile - Dragon Claw - TM02
  (254, 25400, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 18),
  -- Sceptile - Roar - TM05
  (254, 25400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 19),
  -- Sceptile - Toxic - TM06
  (254, 25400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Sceptile - Bullet Seed - TM09
  (254, 25400, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 21),
  -- Sceptile - Hidden Power - TM10
  (254, 25400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Sceptile - Sunny Day - TM11
  (254, 25400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 23),
  -- Sceptile - Hyper Beam - TM15
  (254, 25400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Sceptile - Protect - TM17
  (254, 25400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Sceptile - Giga Drain - TM19
  (254, 25400, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 26),
  -- Sceptile - Safeguard - TM20
  (254, 25400, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 27),
  -- Sceptile - Frustration - TM21
  (254, 25400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Sceptile - Solar Beam - TM22
  (254, 25400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 29),
  -- Sceptile - Iron Tail - TM23
  (254, 25400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 30),
  -- Sceptile - Earthquake - TM26
  (254, 25400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 31),
  -- Sceptile - Return - TM27
  (254, 25400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Sceptile - Dig - TM28
  (254, 25400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 33),
  -- Sceptile - Brick Break - TM31
  (254, 25400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 34),
  -- Sceptile - Double Team - TM32
  (254, 25400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 35),
  -- Sceptile - Rock Tomb - TM39
  (254, 25400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Sceptile - Aerial Ace - TM40
  (254, 25400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 37),
  -- Sceptile - Facade - TM42
  (254, 25400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Sceptile - Secret Power - TM43
  (254, 25400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Sceptile - Rest - TM44
  (254, 25400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Sceptile - Attract - TM45
  (254, 25400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 41),
  -- Sceptile - Focus Blast - TM52
  (254, 25400, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 42),
  -- Sceptile - Energy Ball - TM53
  (254, 25400, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 43),
  -- Sceptile - False Swipe - TM54
  (254, 25400, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 44),
  -- Sceptile - Fling - TM56
  (254, 25400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 45),
  -- Sceptile - Endure - TM58
  (254, 25400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 46),
  -- Sceptile - Dragon Pulse - TM59
  (254, 25400, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 47),
  -- Sceptile - Drain Punch - TM60
  (254, 25400, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 48),
  -- Sceptile - Giga Impact - TM68
  (254, 25400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 49),
  -- Sceptile - Flash - TM70
  (254, 25400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 50),
  -- Sceptile - Swords Dance - TM75
  (254, 25400, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 51),
  -- Sceptile - Captivate - TM78
  (254, 25400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 52),
  -- Sceptile - Rock Slide - TM80
  (254, 25400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 53),
  -- Sceptile - X-Scissor - TM81
  (254, 25400, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 54),
  -- Sceptile - Sleep Talk - TM82
  (254, 25400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 55),
  -- Sceptile - Natural Gift - TM83
  (254, 25400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 56),
  -- Sceptile - Grass Knot - TM86
  (254, 25400, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 57),
  -- Sceptile - Swagger - TM87
  (254, 25400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 58),
  -- Sceptile - Substitute - TM90
  (254, 25400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 59),
  -- Sceptile - Cut - HM01
  (254, 25400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 60),
  -- Sceptile - Strength - HM04
  (254, 25400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 61),
  -- Sceptile - Rock Smash - HM06
  (254, 25400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 62),
  -- Sceptile - Rock Climb - HM08
  (254, 25400, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 63),
  -- Sceptile - Thunder Punch - Tutor
  (254, 25400, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Sceptile - Swift - Tutor
  (254, 25400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Sceptile - Snore - Tutor
  (254, 25400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Sceptile - Mud-Slap - Tutor
  (254, 25400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Sceptile - Outrage - Tutor
  (254, 25400, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Sceptile - Fury Cutter - Tutor
  (254, 25400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Sceptile - Synthesis - Tutor
  (254, 25400, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Sceptile - Endeavor - Tutor
  (254, 25400, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Sceptile - Frenzy Plant - Tutor
  (254, 25400, 338, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Sceptile - Seed Bomb - Tutor
  (254, 25400, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Torchic - Scratch - Level 1
  (255, 25500, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torchic - Growl - Level 1
  (255, 25500, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torchic - Focus Energy - Level 7
  (255, 25500, 116, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Torchic - Ember - Level 10
  (255, 25500, 52, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Torchic - Peck - Level 16
  (255, 25500, 64, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Torchic - Sand Attack - Level 19
  (255, 25500, 28, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Torchic - Fire Spin - Level 25
  (255, 25500, 83, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Torchic - Quick Attack - Level 28
  (255, 25500, 98, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Torchic - Slash - Level 34
  (255, 25500, 163, 9, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Torchic - Mirror Move - Level 37
  (255, 25500, 119, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Torchic - Flamethrower - Level 43
  (255, 25500, 53, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Torchic - Toxic - TM06
  (255, 25500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 12),
  -- Torchic - Hidden Power - TM10
  (255, 25500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 13),
  -- Torchic - Sunny Day - TM11
  (255, 25500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 14),
  -- Torchic - Protect - TM17
  (255, 25500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 15),
  -- Torchic - Frustration - TM21
  (255, 25500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 16),
  -- Torchic - Return - TM27
  (255, 25500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 17),
  -- Torchic - Dig - TM28
  (255, 25500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 18),
  -- Torchic - Double Team - TM32
  (255, 25500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 19),
  -- Torchic - Flamethrower - TM35
  (255, 25500, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 20),
  -- Torchic - Fire Blast - TM38
  (255, 25500, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 21),
  -- Torchic - Rock Tomb - TM39
  (255, 25500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 22),
  -- Torchic - Aerial Ace - TM40
  (255, 25500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 23),
  -- Torchic - Facade - TM42
  (255, 25500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Torchic - Secret Power - TM43
  (255, 25500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Torchic - Rest - TM44
  (255, 25500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Torchic - Attract - TM45
  (255, 25500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 27),
  -- Torchic - Overheat - TM50
  (255, 25500, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 28),
  -- Torchic - Endure - TM58
  (255, 25500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 29),
  -- Torchic - Will-O-Wisp - TM61
  (255, 25500, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 30),
  -- Torchic - Shadow Claw - TM65
  (255, 25500, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 31),
  -- Torchic - Swords Dance - TM75
  (255, 25500, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 32),
  -- Torchic - Captivate - TM78
  (255, 25500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 33),
  -- Torchic - Rock Slide - TM80
  (255, 25500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 34),
  -- Torchic - Sleep Talk - TM82
  (255, 25500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Torchic - Natural Gift - TM83
  (255, 25500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Torchic - Swagger - TM87
  (255, 25500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 37),
  -- Torchic - Substitute - TM90
  (255, 25500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 38),
  -- Torchic - Cut - HM01
  (255, 25500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 39),
  -- Torchic - Strength - HM04
  (255, 25500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 40),
  -- Torchic - Rock Smash - HM06
  (255, 25500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 41),
  -- Torchic - Counter - Egg
  (255, 25500, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Torchic - Agility - Egg
  (255, 25500, 97, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Torchic - Rock Slide - Egg
  (255, 25500, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Torchic - Reversal - Egg
  (255, 25500, 179, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Torchic - Endure - Egg
  (255, 25500, 203, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Torchic - Swagger - Egg
  (255, 25500, 207, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Torchic - Baton Pass - Egg
  (255, 25500, 226, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Torchic - Smelling Salts - Egg
  (255, 25500, 265, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Torchic - Crush Claw - Egg
  (255, 25500, 306, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Torchic - Feint - Egg
  (255, 25500, 364, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Torchic - Last Resort - Egg
  (255, 25500, 387, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Torchic - Night Slash - Egg
  (255, 25500, 400, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Torchic - Swift - Tutor
  (255, 25500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Torchic - Snore - Tutor
  (255, 25500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Torchic - Mud-Slap - Tutor
  (255, 25500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Torchic - Heat Wave - Tutor
  (255, 25500, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Torchic - Helping Hand - Tutor
  (255, 25500, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Torchic - Bounce - Tutor
  (255, 25500, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Torchic - Last Resort - Tutor
  (255, 25500, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Combusken - Scratch - Level 1
  (256, 25600, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combusken - Growl - Level 1
  (256, 25600, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combusken - Ember - Level 1
  (256, 25600, 52, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Combusken - Focus Energy - Level 1
  (256, 25600, 116, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Combusken - Focus Energy - Level 7
  (256, 25600, 116, 9, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Combusken - Ember - Level 13
  (256, 25600, 52, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Combusken - Double Kick - Level 16
  (256, 25600, 24, 9, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Combusken - Peck - Level 17
  (256, 25600, 64, 9, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Combusken - Sand Attack - Level 21
  (256, 25600, 28, 9, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Combusken - Bulk Up - Level 28
  (256, 25600, 339, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Combusken - Quick Attack - Level 32
  (256, 25600, 98, 9, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Combusken - Slash - Level 39
  (256, 25600, 163, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Combusken - Mirror Move - Level 43
  (256, 25600, 119, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Combusken - Sky Uppercut - Level 50
  (256, 25600, 327, 9, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Combusken - Flare Blitz - Level 54
  (256, 25600, 394, 9, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Combusken - Focus Punch - TM01
  (256, 25600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Combusken - Toxic - TM06
  (256, 25600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Combusken - Bulk Up - TM08
  (256, 25600, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 18),
  -- Combusken - Hidden Power - TM10
  (256, 25600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Combusken - Sunny Day - TM11
  (256, 25600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Combusken - Protect - TM17
  (256, 25600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Combusken - Frustration - TM21
  (256, 25600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Combusken - Return - TM27
  (256, 25600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Combusken - Dig - TM28
  (256, 25600, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 24),
  -- Combusken - Brick Break - TM31
  (256, 25600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 25),
  -- Combusken - Double Team - TM32
  (256, 25600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Combusken - Flamethrower - TM35
  (256, 25600, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 27),
  -- Combusken - Fire Blast - TM38
  (256, 25600, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 28),
  -- Combusken - Rock Tomb - TM39
  (256, 25600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Combusken - Aerial Ace - TM40
  (256, 25600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 30),
  -- Combusken - Facade - TM42
  (256, 25600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Combusken - Secret Power - TM43
  (256, 25600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Combusken - Rest - TM44
  (256, 25600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Combusken - Attract - TM45
  (256, 25600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Combusken - Overheat - TM50
  (256, 25600, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 35),
  -- Combusken - Focus Blast - TM52
  (256, 25600, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 36),
  -- Combusken - Fling - TM56
  (256, 25600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 37),
  -- Combusken - Endure - TM58
  (256, 25600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Combusken - Will-O-Wisp - TM61
  (256, 25600, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 39),
  -- Combusken - Shadow Claw - TM65
  (256, 25600, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 40),
  -- Combusken - Swords Dance - TM75
  (256, 25600, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 41),
  -- Combusken - Captivate - TM78
  (256, 25600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Combusken - Rock Slide - TM80
  (256, 25600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 43),
  -- Combusken - Sleep Talk - TM82
  (256, 25600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Combusken - Natural Gift - TM83
  (256, 25600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Combusken - Poison Jab - TM84
  (256, 25600, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 46),
  -- Combusken - Swagger - TM87
  (256, 25600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Combusken - Substitute - TM90
  (256, 25600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Combusken - Cut - HM01
  (256, 25600, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 49),
  -- Combusken - Strength - HM04
  (256, 25600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 50),
  -- Combusken - Rock Smash - HM06
  (256, 25600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 51),
  -- Combusken - Fire Punch - Tutor
  (256, 25600, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Combusken - Thunder Punch - Tutor
  (256, 25600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Combusken - Swift - Tutor
  (256, 25600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Combusken - Snore - Tutor
  (256, 25600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Combusken - Mud-Slap - Tutor
  (256, 25600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Combusken - Fury Cutter - Tutor
  (256, 25600, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Combusken - Heat Wave - Tutor
  (256, 25600, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Combusken - Helping Hand - Tutor
  (256, 25600, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Combusken - Bounce - Tutor
  (256, 25600, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Combusken - Last Resort - Tutor
  (256, 25600, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Combusken - Vacuum Wave - Tutor
  (256, 25600, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Blaziken - Fire Punch - Level 1
  (257, 25700, 7, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blaziken - Scratch - Level 1
  (257, 25700, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blaziken - Growl - Level 1
  (257, 25700, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blaziken - Ember - Level 1
  (257, 25700, 52, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blaziken - Focus Energy - Level 1
  (257, 25700, 116, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blaziken - Focus Energy - Level 7
  (257, 25700, 116, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Blaziken - Ember - Level 13
  (257, 25700, 52, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Blaziken - Double Kick - Level 16
  (257, 25700, 24, 9, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Blaziken - Peck - Level 17
  (257, 25700, 64, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Blaziken - Sand Attack - Level 21
  (257, 25700, 28, 9, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Blaziken - Bulk Up - Level 28
  (257, 25700, 339, 9, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Blaziken - Quick Attack - Level 32
  (257, 25700, 98, 9, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Blaziken - Blaze Kick - Level 36
  (257, 25700, 299, 9, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Blaziken - Slash - Level 42
  (257, 25700, 163, 9, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Blaziken - Brave Bird - Level 49
  (257, 25700, 413, 9, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Blaziken - Sky Uppercut - Level 59
  (257, 25700, 327, 9, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Blaziken - Flare Blitz - Level 66
  (257, 25700, 394, 9, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Blaziken - Focus Punch - TM01
  (257, 25700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 18),
  -- Blaziken - Roar - TM05
  (257, 25700, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 19),
  -- Blaziken - Toxic - TM06
  (257, 25700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Blaziken - Bulk Up - TM08
  (257, 25700, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 21),
  -- Blaziken - Hidden Power - TM10
  (257, 25700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Blaziken - Sunny Day - TM11
  (257, 25700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 23),
  -- Blaziken - Hyper Beam - TM15
  (257, 25700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Blaziken - Protect - TM17
  (257, 25700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Blaziken - Frustration - TM21
  (257, 25700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Blaziken - Solar Beam - TM22
  (257, 25700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Blaziken - Earthquake - TM26
  (257, 25700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Blaziken - Return - TM27
  (257, 25700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Blaziken - Dig - TM28
  (257, 25700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 30),
  -- Blaziken - Brick Break - TM31
  (257, 25700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 31),
  -- Blaziken - Double Team - TM32
  (257, 25700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Blaziken - Flamethrower - TM35
  (257, 25700, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 33),
  -- Blaziken - Fire Blast - TM38
  (257, 25700, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 34),
  -- Blaziken - Rock Tomb - TM39
  (257, 25700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 35),
  -- Blaziken - Aerial Ace - TM40
  (257, 25700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 36),
  -- Blaziken - Facade - TM42
  (257, 25700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Blaziken - Secret Power - TM43
  (257, 25700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Blaziken - Rest - TM44
  (257, 25700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Blaziken - Attract - TM45
  (257, 25700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Blaziken - Overheat - TM50
  (257, 25700, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 41),
  -- Blaziken - Focus Blast - TM52
  (257, 25700, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 42),
  -- Blaziken - Fling - TM56
  (257, 25700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 43),
  -- Blaziken - Endure - TM58
  (257, 25700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Blaziken - Will-O-Wisp - TM61
  (257, 25700, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 45),
  -- Blaziken - Shadow Claw - TM65
  (257, 25700, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 46),
  -- Blaziken - Giga Impact - TM68
  (257, 25700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 47),
  -- Blaziken - Stone Edge - TM71
  (257, 25700, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 48),
  -- Blaziken - Swords Dance - TM75
  (257, 25700, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 49),
  -- Blaziken - Captivate - TM78
  (257, 25700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 50),
  -- Blaziken - Rock Slide - TM80
  (257, 25700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 51),
  -- Blaziken - Sleep Talk - TM82
  (257, 25700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 52),
  -- Blaziken - Natural Gift - TM83
  (257, 25700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 53),
  -- Blaziken - Poison Jab - TM84
  (257, 25700, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 54),
  -- Blaziken - Swagger - TM87
  (257, 25700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 55),
  -- Blaziken - Substitute - TM90
  (257, 25700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 56),
  -- Blaziken - Cut - HM01
  (257, 25700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 57),
  -- Blaziken - Strength - HM04
  (257, 25700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 58),
  -- Blaziken - Rock Smash - HM06
  (257, 25700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 59),
  -- Blaziken - Rock Climb - HM08
  (257, 25700, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 60),
  -- Blaziken - Fire Punch - Tutor
  (257, 25700, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Blaziken - Thunder Punch - Tutor
  (257, 25700, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Blaziken - Swift - Tutor
  (257, 25700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Blaziken - Snore - Tutor
  (257, 25700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Blaziken - Mud-Slap - Tutor
  (257, 25700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Blaziken - Fury Cutter - Tutor
  (257, 25700, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Blaziken - Heat Wave - Tutor
  (257, 25700, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Blaziken - Helping Hand - Tutor
  (257, 25700, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Blaziken - Superpower - Tutor
  (257, 25700, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Blaziken - Knock Off - Tutor
  (257, 25700, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Blaziken - Blast Burn - Tutor
  (257, 25700, 307, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Blaziken - Bounce - Tutor
  (257, 25700, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Blaziken - Last Resort - Tutor
  (257, 25700, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Blaziken - Vacuum Wave - Tutor
  (257, 25700, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Mudkip - Tackle - Level 1
  (258, 25800, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudkip - Growl - Level 1
  (258, 25800, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudkip - Mud-Slap - Level 6
  (258, 25800, 189, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Mudkip - Water Gun - Level 10
  (258, 25800, 55, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mudkip - Bide - Level 15
  (258, 25800, 117, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mudkip - Foresight - Level 19
  (258, 25800, 193, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Mudkip - Mud Sport - Level 24
  (258, 25800, 300, 9, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Mudkip - Take Down - Level 28
  (258, 25800, 36, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Mudkip - Whirlpool - Level 33
  (258, 25800, 250, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Mudkip - Protect - Level 37
  (258, 25800, 182, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Mudkip - Hydro Pump - Level 42
  (258, 25800, 56, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Mudkip - Endeavor - Level 46
  (258, 25800, 283, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Mudkip - Water Pulse - TM03
  (258, 25800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Mudkip - Toxic - TM06
  (258, 25800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Mudkip - Hail - TM07
  (258, 25800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 15),
  -- Mudkip - Hidden Power - TM10
  (258, 25800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Mudkip - Ice Beam - TM13
  (258, 25800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Mudkip - Blizzard - TM14
  (258, 25800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Mudkip - Protect - TM17
  (258, 25800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Mudkip - Rain Dance - TM18
  (258, 25800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Mudkip - Frustration - TM21
  (258, 25800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Mudkip - Iron Tail - TM23
  (258, 25800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 22),
  -- Mudkip - Return - TM27
  (258, 25800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Mudkip - Dig - TM28
  (258, 25800, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 24),
  -- Mudkip - Double Team - TM32
  (258, 25800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Mudkip - Rock Tomb - TM39
  (258, 25800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 26),
  -- Mudkip - Facade - TM42
  (258, 25800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Mudkip - Secret Power - TM43
  (258, 25800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Mudkip - Rest - TM44
  (258, 25800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Mudkip - Attract - TM45
  (258, 25800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Mudkip - Endure - TM58
  (258, 25800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Mudkip - Captivate - TM78
  (258, 25800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 32),
  -- Mudkip - Rock Slide - TM80
  (258, 25800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 33),
  -- Mudkip - Sleep Talk - TM82
  (258, 25800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 34),
  -- Mudkip - Natural Gift - TM83
  (258, 25800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 35),
  -- Mudkip - Swagger - TM87
  (258, 25800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 36),
  -- Mudkip - Substitute - TM90
  (258, 25800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 37),
  -- Mudkip - Surf - HM03
  (258, 25800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 38),
  -- Mudkip - Strength - HM04
  (258, 25800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 39),
  -- Mudkip - Defog - HM05
  (258, 25800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 40),
  -- Mudkip - Rock Smash - HM06
  (258, 25800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 41),
  -- Mudkip - Waterfall - HM07
  (258, 25800, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 42),
  -- Mudkip - Stomp - Egg
  (258, 25800, 23, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mudkip - Double-Edge - Egg
  (258, 25800, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mudkip - Bite - Egg
  (258, 25800, 44, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mudkip - Counter - Egg
  (258, 25800, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mudkip - Curse - Egg
  (258, 25800, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mudkip - Mirror Coat - Egg
  (258, 25800, 243, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mudkip - Ancient Power - Egg
  (258, 25800, 246, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mudkip - Whirlpool - Egg
  (258, 25800, 250, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mudkip - Uproar - Egg
  (258, 25800, 253, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mudkip - Refresh - Egg
  (258, 25800, 287, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mudkip - Ice Ball - Egg
  (258, 25800, 301, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mudkip - Mud Bomb - Egg
  (258, 25800, 426, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mudkip - Snore - Tutor
  (258, 25800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Mudkip - Mud-Slap - Tutor
  (258, 25800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Mudkip - Icy Wind - Tutor
  (258, 25800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Mudkip - Rollout - Tutor
  (258, 25800, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Mudkip - Ancient Power - Tutor
  (258, 25800, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Mudkip - Superpower - Tutor
  (258, 25800, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Mudkip - Endeavor - Tutor
  (258, 25800, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Mudkip - Dive - Tutor
  (258, 25800, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Mudkip - Aqua Tail - Tutor
  (258, 25800, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Mudkip - Earth Power - Tutor
  (258, 25800, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Marshtomp - Tackle - Level 1
  (259, 25900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marshtomp - Growl - Level 1
  (259, 25900, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marshtomp - Water Gun - Level 1
  (259, 25900, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marshtomp - Mud-Slap - Level 1
  (259, 25900, 189, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marshtomp - Mud-Slap - Level 6
  (259, 25900, 189, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Marshtomp - Water Gun - Level 10
  (259, 25900, 55, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Marshtomp - Bide - Level 15
  (259, 25900, 117, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Marshtomp - Mud Shot - Level 16
  (259, 25900, 341, 9, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Marshtomp - Foresight - Level 20
  (259, 25900, 193, 9, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Marshtomp - Mud Bomb - Level 25
  (259, 25900, 426, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Marshtomp - Take Down - Level 31
  (259, 25900, 36, 9, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Marshtomp - Muddy Water - Level 37
  (259, 25900, 330, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Marshtomp - Protect - Level 42
  (259, 25900, 182, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Marshtomp - Earthquake - Level 46
  (259, 25900, 89, 9, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Marshtomp - Endeavor - Level 53
  (259, 25900, 283, 9, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Marshtomp - Water Pulse - TM03
  (259, 25900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Marshtomp - Toxic - TM06
  (259, 25900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Marshtomp - Hail - TM07
  (259, 25900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Marshtomp - Hidden Power - TM10
  (259, 25900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Marshtomp - Ice Beam - TM13
  (259, 25900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Marshtomp - Blizzard - TM14
  (259, 25900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Marshtomp - Protect - TM17
  (259, 25900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Marshtomp - Rain Dance - TM18
  (259, 25900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Marshtomp - Frustration - TM21
  (259, 25900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Marshtomp - Iron Tail - TM23
  (259, 25900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Marshtomp - Earthquake - TM26
  (259, 25900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 26),
  -- Marshtomp - Return - TM27
  (259, 25900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Marshtomp - Dig - TM28
  (259, 25900, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Marshtomp - Brick Break - TM31
  (259, 25900, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Marshtomp - Double Team - TM32
  (259, 25900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Marshtomp - Rock Tomb - TM39
  (259, 25900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 31),
  -- Marshtomp - Facade - TM42
  (259, 25900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Marshtomp - Secret Power - TM43
  (259, 25900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Marshtomp - Rest - TM44
  (259, 25900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Marshtomp - Attract - TM45
  (259, 25900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Marshtomp - Fling - TM56
  (259, 25900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Marshtomp - Endure - TM58
  (259, 25900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Marshtomp - Stealth Rock - TM76
  (259, 25900, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 38),
  -- Marshtomp - Captivate - TM78
  (259, 25900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Marshtomp - Rock Slide - TM80
  (259, 25900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 40),
  -- Marshtomp - Sleep Talk - TM82
  (259, 25900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Marshtomp - Natural Gift - TM83
  (259, 25900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Marshtomp - Swagger - TM87
  (259, 25900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Marshtomp - Substitute - TM90
  (259, 25900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Marshtomp - Surf - HM03
  (259, 25900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 45),
  -- Marshtomp - Strength - HM04
  (259, 25900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Marshtomp - Defog - HM05
  (259, 25900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Marshtomp - Rock Smash - HM06
  (259, 25900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Marshtomp - Waterfall - HM07
  (259, 25900, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 49),
  -- Marshtomp - Ice Punch - Tutor
  (259, 25900, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Marshtomp - Snore - Tutor
  (259, 25900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Marshtomp - Mud-Slap - Tutor
  (259, 25900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Marshtomp - Icy Wind - Tutor
  (259, 25900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Marshtomp - Rollout - Tutor
  (259, 25900, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Marshtomp - Ancient Power - Tutor
  (259, 25900, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Marshtomp - Superpower - Tutor
  (259, 25900, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Marshtomp - Endeavor - Tutor
  (259, 25900, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Marshtomp - Dive - Tutor
  (259, 25900, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Marshtomp - Aqua Tail - Tutor
  (259, 25900, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Marshtomp - Earth Power - Tutor
  (259, 25900, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Swampert - Tackle - Level 1
  (260, 26000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swampert - Growl - Level 1
  (260, 26000, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swampert - Water Gun - Level 1
  (260, 26000, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swampert - Mud-Slap - Level 1
  (260, 26000, 189, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swampert - Mud-Slap - Level 6
  (260, 26000, 189, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Swampert - Water Gun - Level 10
  (260, 26000, 55, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Swampert - Bide - Level 15
  (260, 26000, 117, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Swampert - Mud Shot - Level 16
  (260, 26000, 341, 9, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Swampert - Foresight - Level 20
  (260, 26000, 193, 9, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Swampert - Mud Bomb - Level 25
  (260, 26000, 426, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Swampert - Take Down - Level 31
  (260, 26000, 36, 9, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Swampert - Muddy Water - Level 39
  (260, 26000, 330, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Swampert - Protect - Level 46
  (260, 26000, 182, 9, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Swampert - Earthquake - Level 52
  (260, 26000, 89, 9, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Swampert - Endeavor - Level 61
  (260, 26000, 283, 9, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Swampert - Hammer Arm - Level 69
  (260, 26000, 359, 9, NULL, 1, 69, NULL, NULL, NULL, 16),
  -- Swampert - Focus Punch - TM01
  (260, 26000, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Swampert - Water Pulse - TM03
  (260, 26000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Swampert - Roar - TM05
  (260, 26000, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 19),
  -- Swampert - Toxic - TM06
  (260, 26000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Swampert - Hail - TM07
  (260, 26000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 21),
  -- Swampert - Hidden Power - TM10
  (260, 26000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Swampert - Ice Beam - TM13
  (260, 26000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Swampert - Blizzard - TM14
  (260, 26000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 24),
  -- Swampert - Hyper Beam - TM15
  (260, 26000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Swampert - Protect - TM17
  (260, 26000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Swampert - Rain Dance - TM18
  (260, 26000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Swampert - Frustration - TM21
  (260, 26000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Swampert - Iron Tail - TM23
  (260, 26000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Swampert - Earthquake - TM26
  (260, 26000, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Swampert - Return - TM27
  (260, 26000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Swampert - Dig - TM28
  (260, 26000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 32),
  -- Swampert - Brick Break - TM31
  (260, 26000, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 33),
  -- Swampert - Double Team - TM32
  (260, 26000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 34),
  -- Swampert - Rock Tomb - TM39
  (260, 26000, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 35),
  -- Swampert - Facade - TM42
  (260, 26000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Swampert - Secret Power - TM43
  (260, 26000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Swampert - Rest - TM44
  (260, 26000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Swampert - Attract - TM45
  (260, 26000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 39),
  -- Swampert - Focus Blast - TM52
  (260, 26000, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 40),
  -- Swampert - Fling - TM56
  (260, 26000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 41),
  -- Swampert - Endure - TM58
  (260, 26000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Swampert - Giga Impact - TM68
  (260, 26000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 43),
  -- Swampert - Stone Edge - TM71
  (260, 26000, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 44),
  -- Swampert - Avalanche - TM72
  (260, 26000, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 45),
  -- Swampert - Stealth Rock - TM76
  (260, 26000, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 46),
  -- Swampert - Captivate - TM78
  (260, 26000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 47),
  -- Swampert - Rock Slide - TM80
  (260, 26000, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 48),
  -- Swampert - Sleep Talk - TM82
  (260, 26000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Swampert - Natural Gift - TM83
  (260, 26000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Swampert - Swagger - TM87
  (260, 26000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Swampert - Substitute - TM90
  (260, 26000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Swampert - Surf - HM03
  (260, 26000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 53),
  -- Swampert - Strength - HM04
  (260, 26000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 54),
  -- Swampert - Defog - HM05
  (260, 26000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 55),
  -- Swampert - Rock Smash - HM06
  (260, 26000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 56),
  -- Swampert - Waterfall - HM07
  (260, 26000, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 57),
  -- Swampert - Rock Climb - HM08
  (260, 26000, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 58),
  -- Swampert - Ice Punch - Tutor
  (260, 26000, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Swampert - Snore - Tutor
  (260, 26000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Swampert - Mud-Slap - Tutor
  (260, 26000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Swampert - Icy Wind - Tutor
  (260, 26000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Swampert - Outrage - Tutor
  (260, 26000, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Swampert - Rollout - Tutor
  (260, 26000, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Swampert - Ancient Power - Tutor
  (260, 26000, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Swampert - Superpower - Tutor
  (260, 26000, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Swampert - Endeavor - Tutor
  (260, 26000, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Swampert - Dive - Tutor
  (260, 26000, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Swampert - Hydro Cannon - Tutor
  (260, 26000, 308, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Swampert - Aqua Tail - Tutor
  (260, 26000, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Swampert - Earth Power - Tutor
  (260, 26000, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Poochyena - Tackle - Level 1
  (261, 26100, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poochyena - Howl - Level 5
  (261, 26100, 336, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Poochyena - Sand Attack - Level 9
  (261, 26100, 28, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Poochyena - Bite - Level 13
  (261, 26100, 44, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Poochyena - Odor Sleuth - Level 17
  (261, 26100, 316, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Poochyena - Roar - Level 21
  (261, 26100, 46, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Poochyena - Swagger - Level 25
  (261, 26100, 207, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Poochyena - Assurance - Level 29
  (261, 26100, 372, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Poochyena - Scary Face - Level 33
  (261, 26100, 184, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Poochyena - Taunt - Level 37
  (261, 26100, 269, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Poochyena - Embargo - Level 41
  (261, 26100, 373, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Poochyena - Take Down - Level 45
  (261, 26100, 36, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Poochyena - Sucker Punch - Level 49
  (261, 26100, 389, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Poochyena - Crunch - Level 53
  (261, 26100, 242, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Poochyena - Roar - TM05
  (261, 26100, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Poochyena - Toxic - TM06
  (261, 26100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Poochyena - Hidden Power - TM10
  (261, 26100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Poochyena - Sunny Day - TM11
  (261, 26100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Poochyena - Taunt - TM12
  (261, 26100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 19),
  -- Poochyena - Protect - TM17
  (261, 26100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Poochyena - Rain Dance - TM18
  (261, 26100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Poochyena - Frustration - TM21
  (261, 26100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Poochyena - Iron Tail - TM23
  (261, 26100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Poochyena - Return - TM27
  (261, 26100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Poochyena - Dig - TM28
  (261, 26100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 25),
  -- Poochyena - Shadow Ball - TM30
  (261, 26100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Poochyena - Double Team - TM32
  (261, 26100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Poochyena - Torment - TM41
  (261, 26100, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 28),
  -- Poochyena - Facade - TM42
  (261, 26100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Poochyena - Secret Power - TM43
  (261, 26100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Poochyena - Rest - TM44
  (261, 26100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Poochyena - Attract - TM45
  (261, 26100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Poochyena - Thief - TM46
  (261, 26100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 33),
  -- Poochyena - Snatch - TM49
  (261, 26100, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 34),
  -- Poochyena - Endure - TM58
  (261, 26100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Poochyena - Embargo - TM63
  (261, 26100, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 36),
  -- Poochyena - Payback - TM66
  (261, 26100, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 37),
  -- Poochyena - Captivate - TM78
  (261, 26100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Poochyena - Dark Pulse - TM79
  (261, 26100, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 39),
  -- Poochyena - Sleep Talk - TM82
  (261, 26100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Poochyena - Natural Gift - TM83
  (261, 26100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Poochyena - Swagger - TM87
  (261, 26100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Poochyena - Substitute - TM90
  (261, 26100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Poochyena - Rock Smash - HM06
  (261, 26100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 44),
  -- Poochyena - Leer - Egg
  (261, 26100, 43, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poochyena - Yawn - Egg
  (261, 26100, 281, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poochyena - Poison Fang - Egg
  (261, 26100, 305, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poochyena - Astonish - Egg
  (261, 26100, 310, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Poochyena - Covet - Egg
  (261, 26100, 343, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Poochyena - Me First - Egg
  (261, 26100, 382, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Poochyena - Sucker Punch - Egg
  (261, 26100, 389, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Poochyena - Thunder Fang - Egg
  (261, 26100, 422, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Poochyena - Ice Fang - Egg
  (261, 26100, 423, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Poochyena - Fire Fang - Egg
  (261, 26100, 424, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Poochyena - Snore - Tutor
  (261, 26100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Poochyena - Spite - Tutor
  (261, 26100, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Poochyena - Mud-Slap - Tutor
  (261, 26100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Poochyena - Uproar - Tutor
  (261, 26100, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Poochyena - Sucker Punch - Tutor
  (261, 26100, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Mightyena - Sand Attack - Level 1
  (262, 26200, 28, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mightyena - Tackle - Level 1
  (262, 26200, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mightyena - Bite - Level 1
  (262, 26200, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mightyena - Howl - Level 1
  (262, 26200, 336, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mightyena - Howl - Level 5
  (262, 26200, 336, 9, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Mightyena - Sand Attack - Level 9
  (262, 26200, 28, 9, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Mightyena - Bite - Level 13
  (262, 26200, 44, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Mightyena - Odor Sleuth - Level 17
  (262, 26200, 316, 9, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Mightyena - Roar - Level 22
  (262, 26200, 46, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Mightyena - Swagger - Level 27
  (262, 26200, 207, 9, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Mightyena - Assurance - Level 32
  (262, 26200, 372, 9, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mightyena - Scary Face - Level 37
  (262, 26200, 184, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Mightyena - Taunt - Level 42
  (262, 26200, 269, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Mightyena - Embargo - Level 47
  (262, 26200, 373, 9, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Mightyena - Take Down - Level 52
  (262, 26200, 36, 9, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Mightyena - Thief - Level 57
  (262, 26200, 168, 9, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Mightyena - Sucker Punch - Level 62
  (262, 26200, 389, 9, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Mightyena - Roar - TM05
  (262, 26200, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Mightyena - Toxic - TM06
  (262, 26200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Mightyena - Hidden Power - TM10
  (262, 26200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Mightyena - Sunny Day - TM11
  (262, 26200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Mightyena - Taunt - TM12
  (262, 26200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 22),
  -- Mightyena - Hyper Beam - TM15
  (262, 26200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Mightyena - Protect - TM17
  (262, 26200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Mightyena - Rain Dance - TM18
  (262, 26200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Mightyena - Frustration - TM21
  (262, 26200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Mightyena - Iron Tail - TM23
  (262, 26200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Mightyena - Return - TM27
  (262, 26200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Mightyena - Dig - TM28
  (262, 26200, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 29),
  -- Mightyena - Shadow Ball - TM30
  (262, 26200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Mightyena - Double Team - TM32
  (262, 26200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Mightyena - Torment - TM41
  (262, 26200, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 32),
  -- Mightyena - Facade - TM42
  (262, 26200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Mightyena - Secret Power - TM43
  (262, 26200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Mightyena - Rest - TM44
  (262, 26200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Mightyena - Attract - TM45
  (262, 26200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Mightyena - Thief - TM46
  (262, 26200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 37),
  -- Mightyena - Snatch - TM49
  (262, 26200, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 38),
  -- Mightyena - Endure - TM58
  (262, 26200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Mightyena - Embargo - TM63
  (262, 26200, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 40),
  -- Mightyena - Payback - TM66
  (262, 26200, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 41),
  -- Mightyena - Giga Impact - TM68
  (262, 26200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 42),
  -- Mightyena - Captivate - TM78
  (262, 26200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Mightyena - Dark Pulse - TM79
  (262, 26200, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 44),
  -- Mightyena - Sleep Talk - TM82
  (262, 26200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Mightyena - Natural Gift - TM83
  (262, 26200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Mightyena - Swagger - TM87
  (262, 26200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Mightyena - Substitute - TM90
  (262, 26200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Mightyena - Strength - HM04
  (262, 26200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 49),
  -- Mightyena - Rock Smash - HM06
  (262, 26200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 50),
  -- Mightyena - Snore - Tutor
  (262, 26200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Mightyena - Spite - Tutor
  (262, 26200, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Mightyena - Mud-Slap - Tutor
  (262, 26200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Mightyena - Uproar - Tutor
  (262, 26200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Mightyena - Sucker Punch - Tutor
  (262, 26200, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Zigzagoon - Tackle - Level 1
  (263, 26300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zigzagoon - Growl - Level 1
  (263, 26300, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zigzagoon - Tail Whip - Level 5
  (263, 26300, 39, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zigzagoon - Headbutt - Level 9
  (263, 26300, 29, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Zigzagoon - Sand Attack - Level 13
  (263, 26300, 28, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Zigzagoon - Odor Sleuth - Level 17
  (263, 26300, 316, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Zigzagoon - Mud Sport - Level 21
  (263, 26300, 300, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Zigzagoon - Pin Missile - Level 25
  (263, 26300, 42, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Zigzagoon - Covet - Level 29
  (263, 26300, 343, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Zigzagoon - Flail - Level 33
  (263, 26300, 175, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Zigzagoon - Rest - Level 37
  (263, 26300, 156, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Zigzagoon - Belly Drum - Level 41
  (263, 26300, 187, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Zigzagoon - Fling - Level 45
  (263, 26300, 374, 9, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Zigzagoon - Water Pulse - TM03
  (263, 26300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Zigzagoon - Toxic - TM06
  (263, 26300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Zigzagoon - Hidden Power - TM10
  (263, 26300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Zigzagoon - Sunny Day - TM11
  (263, 26300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Zigzagoon - Ice Beam - TM13
  (263, 26300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Zigzagoon - Blizzard - TM14
  (263, 26300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Zigzagoon - Protect - TM17
  (263, 26300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Zigzagoon - Rain Dance - TM18
  (263, 26300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Zigzagoon - Frustration - TM21
  (263, 26300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Zigzagoon - Iron Tail - TM23
  (263, 26300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Zigzagoon - Thunderbolt - TM24
  (263, 26300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 24),
  -- Zigzagoon - Thunder - TM25
  (263, 26300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 25),
  -- Zigzagoon - Return - TM27
  (263, 26300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Zigzagoon - Dig - TM28
  (263, 26300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 27),
  -- Zigzagoon - Shadow Ball - TM30
  (263, 26300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 28),
  -- Zigzagoon - Double Team - TM32
  (263, 26300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Zigzagoon - Shock Wave - TM34
  (263, 26300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 30),
  -- Zigzagoon - Facade - TM42
  (263, 26300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Zigzagoon - Secret Power - TM43
  (263, 26300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Zigzagoon - Rest - TM44
  (263, 26300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Zigzagoon - Attract - TM45
  (263, 26300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Zigzagoon - Thief - TM46
  (263, 26300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Zigzagoon - Fling - TM56
  (263, 26300, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Zigzagoon - Charge Beam - TM57
  (263, 26300, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 37),
  -- Zigzagoon - Endure - TM58
  (263, 26300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Zigzagoon - Thunder Wave - TM73
  (263, 26300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 39),
  -- Zigzagoon - Captivate - TM78
  (263, 26300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Zigzagoon - Sleep Talk - TM82
  (263, 26300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Zigzagoon - Natural Gift - TM83
  (263, 26300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Zigzagoon - Grass Knot - TM86
  (263, 26300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 43),
  -- Zigzagoon - Swagger - TM87
  (263, 26300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Zigzagoon - Substitute - TM90
  (263, 26300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Zigzagoon - Cut - HM01
  (263, 26300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 46),
  -- Zigzagoon - Surf - HM03
  (263, 26300, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 47),
  -- Zigzagoon - Defog - HM05
  (263, 26300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 48),
  -- Zigzagoon - Rock Smash - HM06
  (263, 26300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 49),
  -- Zigzagoon - Substitute - Egg
  (263, 26300, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Zigzagoon - Mud-Slap - Egg
  (263, 26300, 189, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Zigzagoon - Charm - Egg
  (263, 26300, 204, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zigzagoon - Pursuit - Egg
  (263, 26300, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zigzagoon - Helping Hand - Egg
  (263, 26300, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Zigzagoon - Trick - Egg
  (263, 26300, 271, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zigzagoon - Tickle - Egg
  (263, 26300, 321, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Zigzagoon - Swift - Tutor
  (263, 26300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Zigzagoon - Snore - Tutor
  (263, 26300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Zigzagoon - Mud-Slap - Tutor
  (263, 26300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Zigzagoon - Icy Wind - Tutor
  (263, 26300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Zigzagoon - Rollout - Tutor
  (263, 26300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Zigzagoon - Fury Cutter - Tutor
  (263, 26300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Zigzagoon - Helping Hand - Tutor
  (263, 26300, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Zigzagoon - Trick - Tutor
  (263, 26300, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Zigzagoon - Last Resort - Tutor
  (263, 26300, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Zigzagoon - Seed Bomb - Tutor
  (263, 26300, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Zigzagoon - Gunk Shot - Tutor
  (263, 26300, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Linoone - Headbutt - Level 1
  (264, 26400, 29, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Linoone - Tackle - Level 1
  (264, 26400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Linoone - Tail Whip - Level 1
  (264, 26400, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Linoone - Growl - Level 1
  (264, 26400, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Linoone - Switcheroo - Level 1
  (264, 26400, 415, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Linoone - Tail Whip - Level 5
  (264, 26400, 39, 9, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Linoone - Headbutt - Level 9
  (264, 26400, 29, 9, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Linoone - Sand Attack - Level 13
  (264, 26400, 28, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Linoone - Odor Sleuth - Level 17
  (264, 26400, 316, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Linoone - Mud Sport - Level 23
  (264, 26400, 300, 9, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Linoone - Fury Swipes - Level 29
  (264, 26400, 154, 9, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Linoone - Covet - Level 35
  (264, 26400, 343, 9, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Linoone - Slash - Level 41
  (264, 26400, 163, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Linoone - Rest - Level 47
  (264, 26400, 156, 9, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Linoone - Belly Drum - Level 53
  (264, 26400, 187, 9, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Linoone - Fling - Level 59
  (264, 26400, 374, 9, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Linoone - Water Pulse - TM03
  (264, 26400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Linoone - Roar - TM05
  (264, 26400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Linoone - Toxic - TM06
  (264, 26400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Linoone - Hidden Power - TM10
  (264, 26400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Linoone - Sunny Day - TM11
  (264, 26400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Linoone - Ice Beam - TM13
  (264, 26400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Linoone - Blizzard - TM14
  (264, 26400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Linoone - Hyper Beam - TM15
  (264, 26400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Linoone - Protect - TM17
  (264, 26400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Linoone - Rain Dance - TM18
  (264, 26400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Linoone - Frustration - TM21
  (264, 26400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Linoone - Iron Tail - TM23
  (264, 26400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Linoone - Thunderbolt - TM24
  (264, 26400, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 29),
  -- Linoone - Thunder - TM25
  (264, 26400, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 30),
  -- Linoone - Return - TM27
  (264, 26400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Linoone - Dig - TM28
  (264, 26400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 32),
  -- Linoone - Shadow Ball - TM30
  (264, 26400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 33),
  -- Linoone - Double Team - TM32
  (264, 26400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 34),
  -- Linoone - Shock Wave - TM34
  (264, 26400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 35),
  -- Linoone - Facade - TM42
  (264, 26400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Linoone - Secret Power - TM43
  (264, 26400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Linoone - Rest - TM44
  (264, 26400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Linoone - Attract - TM45
  (264, 26400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 39),
  -- Linoone - Thief - TM46
  (264, 26400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 40),
  -- Linoone - Fling - TM56
  (264, 26400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 41),
  -- Linoone - Charge Beam - TM57
  (264, 26400, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 42),
  -- Linoone - Endure - TM58
  (264, 26400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Linoone - Shadow Claw - TM65
  (264, 26400, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 44),
  -- Linoone - Giga Impact - TM68
  (264, 26400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Linoone - Thunder Wave - TM73
  (264, 26400, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 46),
  -- Linoone - Captivate - TM78
  (264, 26400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 47),
  -- Linoone - Sleep Talk - TM82
  (264, 26400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Linoone - Natural Gift - TM83
  (264, 26400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Linoone - Grass Knot - TM86
  (264, 26400, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 50),
  -- Linoone - Swagger - TM87
  (264, 26400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Linoone - Substitute - TM90
  (264, 26400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Linoone - Cut - HM01
  (264, 26400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 53),
  -- Linoone - Surf - HM03
  (264, 26400, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 54),
  -- Linoone - Strength - HM04
  (264, 26400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 55),
  -- Linoone - Defog - HM05
  (264, 26400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 56),
  -- Linoone - Rock Smash - HM06
  (264, 26400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 57),
  -- Linoone - Swift - Tutor
  (264, 26400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Linoone - Snore - Tutor
  (264, 26400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Linoone - Mud-Slap - Tutor
  (264, 26400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Linoone - Icy Wind - Tutor
  (264, 26400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Linoone - Rollout - Tutor
  (264, 26400, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Linoone - Fury Cutter - Tutor
  (264, 26400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Linoone - Helping Hand - Tutor
  (264, 26400, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Linoone - Trick - Tutor
  (264, 26400, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Linoone - Last Resort - Tutor
  (264, 26400, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Linoone - Seed Bomb - Tutor
  (264, 26400, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Linoone - Gunk Shot - Tutor
  (264, 26400, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Wurmple - Tackle - Level 1
  (265, 26500, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wurmple - String Shot - Level 1
  (265, 26500, 81, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wurmple - Poison Sting - Level 5
  (265, 26500, 40, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wurmple - Bug Bite - Level 15
  (265, 26500, 450, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Wurmple - Snore - Tutor
  (265, 26500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 5),
  -- Silcoon - Harden - Level 1
  (266, 26600, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silcoon - Harden - Level 7
  (266, 26600, 106, 9, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Silcoon - Iron Defense - Tutor
  (266, 26600, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 3),
  -- Beautifly - Absorb - Level 1
  (267, 26700, 71, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beautifly - Absorb - Level 10
  (267, 26700, 71, 9, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Beautifly - Gust - Level 13
  (267, 26700, 16, 9, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Beautifly - Stun Spore - Level 17
  (267, 26700, 78, 9, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Beautifly - Morning Sun - Level 20
  (267, 26700, 234, 9, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Beautifly - Mega Drain - Level 24
  (267, 26700, 72, 9, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Beautifly - Whirlwind - Level 27
  (267, 26700, 18, 9, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Beautifly - Attract - Level 31
  (267, 26700, 213, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Beautifly - Silver Wind - Level 34
  (267, 26700, 318, 9, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Beautifly - Giga Drain - Level 38
  (267, 26700, 202, 9, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Beautifly - Bug Buzz - Level 41
  (267, 26700, 405, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Beautifly - Toxic - TM06
  (267, 26700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 12),
  -- Beautifly - Hidden Power - TM10
  (267, 26700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 13),
  -- Beautifly - Sunny Day - TM11
  (267, 26700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 14),
  -- Beautifly - Hyper Beam - TM15
  (267, 26700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 15),
  -- Beautifly - Protect - TM17
  (267, 26700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 16),
  -- Beautifly - Giga Drain - TM19
  (267, 26700, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 17),
  -- Beautifly - Safeguard - TM20
  (267, 26700, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 18),
  -- Beautifly - Frustration - TM21
  (267, 26700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Beautifly - Solar Beam - TM22
  (267, 26700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 20),
  -- Beautifly - Return - TM27
  (267, 26700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 21),
  -- Beautifly - Psychic - TM29
  (267, 26700, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 22),
  -- Beautifly - Shadow Ball - TM30
  (267, 26700, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Beautifly - Double Team - TM32
  (267, 26700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Beautifly - Aerial Ace - TM40
  (267, 26700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 25),
  -- Beautifly - Facade - TM42
  (267, 26700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Beautifly - Secret Power - TM43
  (267, 26700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Beautifly - Rest - TM44
  (267, 26700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Beautifly - Attract - TM45
  (267, 26700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Beautifly - Thief - TM46
  (267, 26700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Beautifly - Roost - TM51
  (267, 26700, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 31),
  -- Beautifly - Energy Ball - TM53
  (267, 26700, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 32),
  -- Beautifly - Endure - TM58
  (267, 26700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Beautifly - Silver Wind - TM62
  (267, 26700, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 34),
  -- Beautifly - Giga Impact - TM68
  (267, 26700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 35),
  -- Beautifly - Flash - TM70
  (267, 26700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 36),
  -- Beautifly - Captivate - TM78
  (267, 26700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Beautifly - Sleep Talk - TM82
  (267, 26700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Beautifly - Natural Gift - TM83
  (267, 26700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Beautifly - Swagger - TM87
  (267, 26700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Beautifly - U-turn - TM89
  (267, 26700, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 41),
  -- Beautifly - Substitute - TM90
  (267, 26700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Beautifly - Defog - HM05
  (267, 26700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 43),
  -- Beautifly - Swift - Tutor
  (267, 26700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Beautifly - Snore - Tutor
  (267, 26700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Beautifly - Twister - Tutor
  (267, 26700, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Beautifly - Air Cutter - Tutor
  (267, 26700, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Beautifly - Signal Beam - Tutor
  (267, 26700, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Beautifly - Ominous Wind - Tutor
  (267, 26700, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Cascoon - Harden - Level 1
  (268, 26800, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cascoon - Harden - Level 7
  (268, 26800, 106, 9, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Cascoon - Iron Defense - Tutor
  (268, 26800, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 3),
  -- Dustox - Confusion - Level 1
  (269, 26900, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dustox - Confusion - Level 10
  (269, 26900, 93, 9, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Dustox - Gust - Level 13
  (269, 26900, 16, 9, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Dustox - Protect - Level 17
  (269, 26900, 182, 9, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Dustox - Moonlight - Level 20
  (269, 26900, 236, 9, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Dustox - Psybeam - Level 24
  (269, 26900, 60, 9, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Dustox - Whirlwind - Level 27
  (269, 26900, 18, 9, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Dustox - Light Screen - Level 31
  (269, 26900, 113, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Dustox - Silver Wind - Level 34
  (269, 26900, 318, 9, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Dustox - Toxic - Level 38
  (269, 26900, 92, 9, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Dustox - Bug Buzz - Level 41
  (269, 26900, 405, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Dustox - Toxic - TM06
  (269, 26900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 12),
  -- Dustox - Hidden Power - TM10
  (269, 26900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 13),
  -- Dustox - Sunny Day - TM11
  (269, 26900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 14),
  -- Dustox - Hyper Beam - TM15
  (269, 26900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 15),
  -- Dustox - Light Screen - TM16
  (269, 26900, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 16),
  -- Dustox - Protect - TM17
  (269, 26900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Dustox - Giga Drain - TM19
  (269, 26900, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 18),
  -- Dustox - Frustration - TM21
  (269, 26900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Dustox - Solar Beam - TM22
  (269, 26900, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 20),
  -- Dustox - Return - TM27
  (269, 26900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 21),
  -- Dustox - Psychic - TM29
  (269, 26900, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 22),
  -- Dustox - Shadow Ball - TM30
  (269, 26900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Dustox - Double Team - TM32
  (269, 26900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Dustox - Sludge Bomb - TM36
  (269, 26900, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 25),
  -- Dustox - Aerial Ace - TM40
  (269, 26900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 26),
  -- Dustox - Facade - TM42
  (269, 26900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Dustox - Secret Power - TM43
  (269, 26900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Dustox - Rest - TM44
  (269, 26900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Dustox - Attract - TM45
  (269, 26900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Dustox - Thief - TM46
  (269, 26900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 31),
  -- Dustox - Roost - TM51
  (269, 26900, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 32),
  -- Dustox - Energy Ball - TM53
  (269, 26900, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 33),
  -- Dustox - Endure - TM58
  (269, 26900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Dustox - Silver Wind - TM62
  (269, 26900, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 35),
  -- Dustox - Giga Impact - TM68
  (269, 26900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 36),
  -- Dustox - Flash - TM70
  (269, 26900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 37),
  -- Dustox - Captivate - TM78
  (269, 26900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Dustox - Sleep Talk - TM82
  (269, 26900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Dustox - Natural Gift - TM83
  (269, 26900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Dustox - Swagger - TM87
  (269, 26900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Dustox - U-turn - TM89
  (269, 26900, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 42),
  -- Dustox - Substitute - TM90
  (269, 26900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Dustox - Defog - HM05
  (269, 26900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 44),
  -- Dustox - Swift - Tutor
  (269, 26900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Dustox - Snore - Tutor
  (269, 26900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Dustox - Twister - Tutor
  (269, 26900, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Dustox - Air Cutter - Tutor
  (269, 26900, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Dustox - Signal Beam - Tutor
  (269, 26900, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Dustox - Ominous Wind - Tutor
  (269, 26900, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Lotad - Astonish - Level 1
  (270, 27000, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lotad - Growl - Level 3
  (270, 27000, 45, 9, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Lotad - Absorb - Level 5
  (270, 27000, 71, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lotad - Nature Power - Level 7
  (270, 27000, 267, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Lotad - Mist - Level 11
  (270, 27000, 54, 9, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Lotad - Natural Gift - Level 15
  (270, 27000, 363, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Lotad - Mega Drain - Level 19
  (270, 27000, 72, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Lotad - Bubble Beam - Level 25
  (270, 27000, 61, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Lotad - Zen Headbutt - Level 31
  (270, 27000, 428, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Lotad - Rain Dance - Level 37
  (270, 27000, 240, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lotad - Energy Ball - Level 45
  (270, 27000, 412, 9, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Lotad - Water Pulse - TM03
  (270, 27000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 12),
  -- Lotad - Toxic - TM06
  (270, 27000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Lotad - Hail - TM07
  (270, 27000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 14),
  -- Lotad - Bullet Seed - TM09
  (270, 27000, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 15),
  -- Lotad - Hidden Power - TM10
  (270, 27000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Lotad - Sunny Day - TM11
  (270, 27000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Lotad - Ice Beam - TM13
  (270, 27000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Lotad - Blizzard - TM14
  (270, 27000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Lotad - Protect - TM17
  (270, 27000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Lotad - Rain Dance - TM18
  (270, 27000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Lotad - Giga Drain - TM19
  (270, 27000, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 22),
  -- Lotad - Frustration - TM21
  (270, 27000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Lotad - Solar Beam - TM22
  (270, 27000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Lotad - Return - TM27
  (270, 27000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Lotad - Double Team - TM32
  (270, 27000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Lotad - Facade - TM42
  (270, 27000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Lotad - Secret Power - TM43
  (270, 27000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Lotad - Rest - TM44
  (270, 27000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Lotad - Attract - TM45
  (270, 27000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Lotad - Thief - TM46
  (270, 27000, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 31),
  -- Lotad - Energy Ball - TM53
  (270, 27000, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 32),
  -- Lotad - Endure - TM58
  (270, 27000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Lotad - Flash - TM70
  (270, 27000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 34),
  -- Lotad - Swords Dance - TM75
  (270, 27000, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 35),
  -- Lotad - Captivate - TM78
  (270, 27000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Lotad - Sleep Talk - TM82
  (270, 27000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 37),
  -- Lotad - Natural Gift - TM83
  (270, 27000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 38),
  -- Lotad - Grass Knot - TM86
  (270, 27000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 39),
  -- Lotad - Swagger - TM87
  (270, 27000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Lotad - Substitute - TM90
  (270, 27000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Lotad - Surf - HM03
  (270, 27000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 42),
  -- Lotad - Defog - HM05
  (270, 27000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 43),
  -- Lotad - Water Gun - Egg
  (270, 27000, 55, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lotad - Leech Seed - Egg
  (270, 27000, 73, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lotad - Razor Leaf - Egg
  (270, 27000, 75, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lotad - Flail - Egg
  (270, 27000, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lotad - Sweet Scent - Egg
  (270, 27000, 230, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lotad - Synthesis - Egg
  (270, 27000, 235, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lotad - Tickle - Egg
  (270, 27000, 321, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lotad - Snore - Tutor
  (270, 27000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Lotad - Icy Wind - Tutor
  (270, 27000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Lotad - Synthesis - Tutor
  (270, 27000, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Lotad - Uproar - Tutor
  (270, 27000, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Lotad - Seed Bomb - Tutor
  (270, 27000, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Lotad - Zen Headbutt - Tutor
  (270, 27000, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Lombre - Astonish - Level 1
  (271, 27100, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lombre - Growl - Level 3
  (271, 27100, 45, 9, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Lombre - Absorb - Level 5
  (271, 27100, 71, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lombre - Nature Power - Level 7
  (271, 27100, 267, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Lombre - Fake Out - Level 11
  (271, 27100, 252, 9, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Lombre - Fury Swipes - Level 15
  (271, 27100, 154, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Lombre - Water Sport - Level 19
  (271, 27100, 346, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Lombre - Bubble Beam - Level 25
  (271, 27100, 61, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Lombre - Zen Headbutt - Level 31
  (271, 27100, 428, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Lombre - Uproar - Level 37
  (271, 27100, 253, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lombre - Hydro Pump - Level 45
  (271, 27100, 56, 9, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Lombre - Water Pulse - TM03
  (271, 27100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 12),
  -- Lombre - Toxic - TM06
  (271, 27100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Lombre - Hail - TM07
  (271, 27100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 14),
  -- Lombre - Bullet Seed - TM09
  (271, 27100, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 15),
  -- Lombre - Hidden Power - TM10
  (271, 27100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Lombre - Sunny Day - TM11
  (271, 27100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Lombre - Ice Beam - TM13
  (271, 27100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Lombre - Blizzard - TM14
  (271, 27100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Lombre - Protect - TM17
  (271, 27100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Lombre - Rain Dance - TM18
  (271, 27100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Lombre - Giga Drain - TM19
  (271, 27100, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 22),
  -- Lombre - Frustration - TM21
  (271, 27100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Lombre - Solar Beam - TM22
  (271, 27100, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Lombre - Return - TM27
  (271, 27100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Lombre - Brick Break - TM31
  (271, 27100, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 26),
  -- Lombre - Double Team - TM32
  (271, 27100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Lombre - Facade - TM42
  (271, 27100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Lombre - Secret Power - TM43
  (271, 27100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Lombre - Rest - TM44
  (271, 27100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Lombre - Attract - TM45
  (271, 27100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Lombre - Thief - TM46
  (271, 27100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 32),
  -- Lombre - Energy Ball - TM53
  (271, 27100, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 33),
  -- Lombre - Fling - TM56
  (271, 27100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 34),
  -- Lombre - Endure - TM58
  (271, 27100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Lombre - Drain Punch - TM60
  (271, 27100, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 36),
  -- Lombre - Flash - TM70
  (271, 27100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 37),
  -- Lombre - Swords Dance - TM75
  (271, 27100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 38),
  -- Lombre - Captivate - TM78
  (271, 27100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Lombre - Sleep Talk - TM82
  (271, 27100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Lombre - Natural Gift - TM83
  (271, 27100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Lombre - Grass Knot - TM86
  (271, 27100, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 42),
  -- Lombre - Swagger - TM87
  (271, 27100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Lombre - Substitute - TM90
  (271, 27100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Lombre - Surf - HM03
  (271, 27100, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 45),
  -- Lombre - Strength - HM04
  (271, 27100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Lombre - Defog - HM05
  (271, 27100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Lombre - Rock Smash - HM06
  (271, 27100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Lombre - Waterfall - HM07
  (271, 27100, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 49),
  -- Lombre - Fire Punch - Tutor
  (271, 27100, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Lombre - Ice Punch - Tutor
  (271, 27100, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Lombre - Thunder Punch - Tutor
  (271, 27100, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Lombre - Snore - Tutor
  (271, 27100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Lombre - Mud-Slap - Tutor
  (271, 27100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Lombre - Icy Wind - Tutor
  (271, 27100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Lombre - Synthesis - Tutor
  (271, 27100, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Lombre - Uproar - Tutor
  (271, 27100, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Lombre - Dive - Tutor
  (271, 27100, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Lombre - Seed Bomb - Tutor
  (271, 27100, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Lombre - Zen Headbutt - Tutor
  (271, 27100, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Ludicolo - Growl - Level 1
  (272, 27200, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ludicolo - Mega Drain - Level 1
  (272, 27200, 72, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ludicolo - Nature Power - Level 1
  (272, 27200, 267, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ludicolo - Astonish - Level 1
  (272, 27200, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ludicolo - Focus Punch - TM01
  (272, 27200, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 5),
  -- Ludicolo - Water Pulse - TM03
  (272, 27200, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 6),
  -- Ludicolo - Toxic - TM06
  (272, 27200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 7),
  -- Ludicolo - Hail - TM07
  (272, 27200, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 8),
  -- Ludicolo - Bullet Seed - TM09
  (272, 27200, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 9),
  -- Ludicolo - Hidden Power - TM10
  (272, 27200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 10),
  -- Ludicolo - Sunny Day - TM11
  (272, 27200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 11),
  -- Ludicolo - Ice Beam - TM13
  (272, 27200, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 12),
  -- Ludicolo - Blizzard - TM14
  (272, 27200, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 13),
  -- Ludicolo - Hyper Beam - TM15
  (272, 27200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 14),
  -- Ludicolo - Protect - TM17
  (272, 27200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 15),
  -- Ludicolo - Rain Dance - TM18
  (272, 27200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 16),
  -- Ludicolo - Giga Drain - TM19
  (272, 27200, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 17),
  -- Ludicolo - Frustration - TM21
  (272, 27200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 18),
  -- Ludicolo - Solar Beam - TM22
  (272, 27200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 19),
  -- Ludicolo - Return - TM27
  (272, 27200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Ludicolo - Brick Break - TM31
  (272, 27200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 21),
  -- Ludicolo - Double Team - TM32
  (272, 27200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 22),
  -- Ludicolo - Facade - TM42
  (272, 27200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 23),
  -- Ludicolo - Secret Power - TM43
  (272, 27200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 24),
  -- Ludicolo - Rest - TM44
  (272, 27200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 25),
  -- Ludicolo - Attract - TM45
  (272, 27200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 26),
  -- Ludicolo - Thief - TM46
  (272, 27200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 27),
  -- Ludicolo - Focus Blast - TM52
  (272, 27200, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 28),
  -- Ludicolo - Energy Ball - TM53
  (272, 27200, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 29),
  -- Ludicolo - Fling - TM56
  (272, 27200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 30),
  -- Ludicolo - Endure - TM58
  (272, 27200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Ludicolo - Drain Punch - TM60
  (272, 27200, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 32),
  -- Ludicolo - Giga Impact - TM68
  (272, 27200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 33),
  -- Ludicolo - Flash - TM70
  (272, 27200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 34),
  -- Ludicolo - Swords Dance - TM75
  (272, 27200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 35),
  -- Ludicolo - Captivate - TM78
  (272, 27200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Ludicolo - Sleep Talk - TM82
  (272, 27200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 37),
  -- Ludicolo - Natural Gift - TM83
  (272, 27200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 38),
  -- Ludicolo - Grass Knot - TM86
  (272, 27200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 39),
  -- Ludicolo - Swagger - TM87
  (272, 27200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Ludicolo - Substitute - TM90
  (272, 27200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Ludicolo - Surf - HM03
  (272, 27200, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 42),
  -- Ludicolo - Strength - HM04
  (272, 27200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 43),
  -- Ludicolo - Defog - HM05
  (272, 27200, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 44),
  -- Ludicolo - Rock Smash - HM06
  (272, 27200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 45),
  -- Ludicolo - Waterfall - HM07
  (272, 27200, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 46),
  -- Ludicolo - Rock Climb - HM08
  (272, 27200, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 47),
  -- Ludicolo - Fire Punch - Tutor
  (272, 27200, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Ludicolo - Ice Punch - Tutor
  (272, 27200, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Ludicolo - Thunder Punch - Tutor
  (272, 27200, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Ludicolo - Snore - Tutor
  (272, 27200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Ludicolo - Mud-Slap - Tutor
  (272, 27200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Ludicolo - Icy Wind - Tutor
  (272, 27200, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Ludicolo - Synthesis - Tutor
  (272, 27200, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Ludicolo - Uproar - Tutor
  (272, 27200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Ludicolo - Dive - Tutor
  (272, 27200, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Ludicolo - Seed Bomb - Tutor
  (272, 27200, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Ludicolo - Zen Headbutt - Tutor
  (272, 27200, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Seedot - Bide - Level 1
  (273, 27300, 117, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seedot - Harden - Level 3
  (273, 27300, 106, 9, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Seedot - Growth - Level 7
  (273, 27300, 74, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Seedot - Nature Power - Level 13
  (273, 27300, 267, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Seedot - Synthesis - Level 21
  (273, 27300, 235, 9, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Seedot - Sunny Day - Level 31
  (273, 27300, 241, 9, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Seedot - Explosion - Level 43
  (273, 27300, 153, 9, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Seedot - Toxic - TM06
  (273, 27300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 8),
  -- Seedot - Bullet Seed - TM09
  (273, 27300, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 9),
  -- Seedot - Hidden Power - TM10
  (273, 27300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 10),
  -- Seedot - Sunny Day - TM11
  (273, 27300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 11),
  -- Seedot - Protect - TM17
  (273, 27300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 12),
  -- Seedot - Giga Drain - TM19
  (273, 27300, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 13),
  -- Seedot - Frustration - TM21
  (273, 27300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 14),
  -- Seedot - Solar Beam - TM22
  (273, 27300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 15),
  -- Seedot - Return - TM27
  (273, 27300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 16),
  -- Seedot - Dig - TM28
  (273, 27300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 17),
  -- Seedot - Shadow Ball - TM30
  (273, 27300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 18),
  -- Seedot - Double Team - TM32
  (273, 27300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 19),
  -- Seedot - Facade - TM42
  (273, 27300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 20),
  -- Seedot - Secret Power - TM43
  (273, 27300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 21),
  -- Seedot - Rest - TM44
  (273, 27300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 22),
  -- Seedot - Attract - TM45
  (273, 27300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 23),
  -- Seedot - Energy Ball - TM53
  (273, 27300, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 24),
  -- Seedot - Endure - TM58
  (273, 27300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 25),
  -- Seedot - Explosion - TM64
  (273, 27300, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 26),
  -- Seedot - Flash - TM70
  (273, 27300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 27),
  -- Seedot - Swords Dance - TM75
  (273, 27300, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 28),
  -- Seedot - Captivate - TM78
  (273, 27300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 29),
  -- Seedot - Sleep Talk - TM82
  (273, 27300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 30),
  -- Seedot - Natural Gift - TM83
  (273, 27300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 31),
  -- Seedot - Grass Knot - TM86
  (273, 27300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 32),
  -- Seedot - Swagger - TM87
  (273, 27300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 33),
  -- Seedot - Substitute - TM90
  (273, 27300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 34),
  -- Seedot - Rock Smash - HM06
  (273, 27300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 35),
  -- Seedot - Razor Wind - Egg
  (273, 27300, 13, 9, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Seedot - Take Down - Egg
  (273, 27300, 36, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Seedot - Leech Seed - Egg
  (273, 27300, 73, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Seedot - Quick Attack - Egg
  (273, 27300, 98, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Seedot - Amnesia - Egg
  (273, 27300, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Seedot - False Swipe - Egg
  (273, 27300, 206, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seedot - Worry Seed - Egg
  (273, 27300, 388, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seedot - Nasty Plot - Egg
  (273, 27300, 417, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seedot - Snore - Tutor
  (273, 27300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Seedot - Spite - Tutor
  (273, 27300, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Seedot - Rollout - Tutor
  (273, 27300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Seedot - Synthesis - Tutor
  (273, 27300, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Seedot - Seed Bomb - Tutor
  (273, 27300, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Nuzleaf - Pound - Level 1
  (274, 27400, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nuzleaf - Razor Leaf - Level 1
  (274, 27400, 75, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nuzleaf - Harden - Level 3
  (274, 27400, 106, 9, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Nuzleaf - Growth - Level 7
  (274, 27400, 74, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Nuzleaf - Nature Power - Level 13
  (274, 27400, 267, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nuzleaf - Fake Out - Level 19
  (274, 27400, 252, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Nuzleaf - Torment - Level 25
  (274, 27400, 259, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nuzleaf - Feint Attack - Level 31
  (274, 27400, 185, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Nuzleaf - Razor Wind - Level 37
  (274, 27400, 13, 9, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Nuzleaf - Swagger - Level 43
  (274, 27400, 207, 9, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Nuzleaf - Extrasensory - Level 49
  (274, 27400, 326, 9, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Nuzleaf - Toxic - TM06
  (274, 27400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 12),
  -- Nuzleaf - Bullet Seed - TM09
  (274, 27400, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 13),
  -- Nuzleaf - Hidden Power - TM10
  (274, 27400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Nuzleaf - Sunny Day - TM11
  (274, 27400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Nuzleaf - Hyper Beam - TM15
  (274, 27400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 16),
  -- Nuzleaf - Protect - TM17
  (274, 27400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Nuzleaf - Giga Drain - TM19
  (274, 27400, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 18),
  -- Nuzleaf - Frustration - TM21
  (274, 27400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Nuzleaf - Solar Beam - TM22
  (274, 27400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 20),
  -- Nuzleaf - Return - TM27
  (274, 27400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 21),
  -- Nuzleaf - Dig - TM28
  (274, 27400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 22),
  -- Nuzleaf - Shadow Ball - TM30
  (274, 27400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Nuzleaf - Brick Break - TM31
  (274, 27400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 24),
  -- Nuzleaf - Double Team - TM32
  (274, 27400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Nuzleaf - Rock Tomb - TM39
  (274, 27400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 26),
  -- Nuzleaf - Torment - TM41
  (274, 27400, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 27),
  -- Nuzleaf - Facade - TM42
  (274, 27400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Nuzleaf - Secret Power - TM43
  (274, 27400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Nuzleaf - Rest - TM44
  (274, 27400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Nuzleaf - Attract - TM45
  (274, 27400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Nuzleaf - Thief - TM46
  (274, 27400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 32),
  -- Nuzleaf - Energy Ball - TM53
  (274, 27400, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 33),
  -- Nuzleaf - Fling - TM56
  (274, 27400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 34),
  -- Nuzleaf - Endure - TM58
  (274, 27400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Nuzleaf - Embargo - TM63
  (274, 27400, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 36),
  -- Nuzleaf - Explosion - TM64
  (274, 27400, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 37),
  -- Nuzleaf - Payback - TM66
  (274, 27400, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 38),
  -- Nuzleaf - Flash - TM70
  (274, 27400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 39),
  -- Nuzleaf - Swords Dance - TM75
  (274, 27400, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 40),
  -- Nuzleaf - Psych Up - TM77
  (274, 27400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 41),
  -- Nuzleaf - Captivate - TM78
  (274, 27400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Nuzleaf - Dark Pulse - TM79
  (274, 27400, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 43),
  -- Nuzleaf - Rock Slide - TM80
  (274, 27400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 44),
  -- Nuzleaf - Sleep Talk - TM82
  (274, 27400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Nuzleaf - Natural Gift - TM83
  (274, 27400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Nuzleaf - Grass Knot - TM86
  (274, 27400, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 47),
  -- Nuzleaf - Swagger - TM87
  (274, 27400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 48),
  -- Nuzleaf - Substitute - TM90
  (274, 27400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Nuzleaf - Cut - HM01
  (274, 27400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 50),
  -- Nuzleaf - Strength - HM04
  (274, 27400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 51),
  -- Nuzleaf - Rock Smash - HM06
  (274, 27400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 52),
  -- Nuzleaf - Swift - Tutor
  (274, 27400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Nuzleaf - Snore - Tutor
  (274, 27400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Nuzleaf - Spite - Tutor
  (274, 27400, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Nuzleaf - Mud-Slap - Tutor
  (274, 27400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Nuzleaf - Rollout - Tutor
  (274, 27400, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Nuzleaf - Fury Cutter - Tutor
  (274, 27400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Nuzleaf - Synthesis - Tutor
  (274, 27400, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Nuzleaf - Seed Bomb - Tutor
  (274, 27400, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Shiftry - Whirlwind - Level 1
  (275, 27500, 18, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shiftry - Razor Leaf - Level 1
  (275, 27500, 75, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shiftry - Feint Attack - Level 1
  (275, 27500, 185, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shiftry - Nasty Plot - Level 1
  (275, 27500, 417, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shiftry - Leaf Storm - Level 49
  (275, 27500, 437, 9, NULL, 1, 49, NULL, NULL, NULL, 5),
  -- Shiftry - Toxic - TM06
  (275, 27500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 6),
  -- Shiftry - Bullet Seed - TM09
  (275, 27500, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 7),
  -- Shiftry - Hidden Power - TM10
  (275, 27500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 8),
  -- Shiftry - Sunny Day - TM11
  (275, 27500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 9),
  -- Shiftry - Hyper Beam - TM15
  (275, 27500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 10),
  -- Shiftry - Protect - TM17
  (275, 27500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 11),
  -- Shiftry - Giga Drain - TM19
  (275, 27500, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 12),
  -- Shiftry - Frustration - TM21
  (275, 27500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 13),
  -- Shiftry - Solar Beam - TM22
  (275, 27500, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 14),
  -- Shiftry - Return - TM27
  (275, 27500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 15),
  -- Shiftry - Dig - TM28
  (275, 27500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 16),
  -- Shiftry - Shadow Ball - TM30
  (275, 27500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 17),
  -- Shiftry - Brick Break - TM31
  (275, 27500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 18),
  -- Shiftry - Double Team - TM32
  (275, 27500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 19),
  -- Shiftry - Rock Tomb - TM39
  (275, 27500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 20),
  -- Shiftry - Aerial Ace - TM40
  (275, 27500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 21),
  -- Shiftry - Torment - TM41
  (275, 27500, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 22),
  -- Shiftry - Facade - TM42
  (275, 27500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 23),
  -- Shiftry - Secret Power - TM43
  (275, 27500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 24),
  -- Shiftry - Rest - TM44
  (275, 27500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 25),
  -- Shiftry - Attract - TM45
  (275, 27500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 26),
  -- Shiftry - Thief - TM46
  (275, 27500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 27),
  -- Shiftry - Focus Blast - TM52
  (275, 27500, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 28),
  -- Shiftry - Energy Ball - TM53
  (275, 27500, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 29),
  -- Shiftry - Fling - TM56
  (275, 27500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 30),
  -- Shiftry - Endure - TM58
  (275, 27500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Shiftry - Silver Wind - TM62
  (275, 27500, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 32),
  -- Shiftry - Embargo - TM63
  (275, 27500, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 33),
  -- Shiftry - Explosion - TM64
  (275, 27500, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 34),
  -- Shiftry - Payback - TM66
  (275, 27500, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 35),
  -- Shiftry - Giga Impact - TM68
  (275, 27500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 36),
  -- Shiftry - Flash - TM70
  (275, 27500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 37),
  -- Shiftry - Swords Dance - TM75
  (275, 27500, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 38),
  -- Shiftry - Psych Up - TM77
  (275, 27500, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 39),
  -- Shiftry - Captivate - TM78
  (275, 27500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Shiftry - Dark Pulse - TM79
  (275, 27500, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 41),
  -- Shiftry - Rock Slide - TM80
  (275, 27500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 42),
  -- Shiftry - X-Scissor - TM81
  (275, 27500, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 43),
  -- Shiftry - Sleep Talk - TM82
  (275, 27500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Shiftry - Natural Gift - TM83
  (275, 27500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Shiftry - Grass Knot - TM86
  (275, 27500, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 46),
  -- Shiftry - Swagger - TM87
  (275, 27500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Shiftry - Substitute - TM90
  (275, 27500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Shiftry - Cut - HM01
  (275, 27500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 49),
  -- Shiftry - Strength - HM04
  (275, 27500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 50),
  -- Shiftry - Defog - HM05
  (275, 27500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 51),
  -- Shiftry - Rock Smash - HM06
  (275, 27500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 52),
  -- Shiftry - Swift - Tutor
  (275, 27500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Shiftry - Snore - Tutor
  (275, 27500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Shiftry - Spite - Tutor
  (275, 27500, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Shiftry - Mud-Slap - Tutor
  (275, 27500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Shiftry - Icy Wind - Tutor
  (275, 27500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Shiftry - Rollout - Tutor
  (275, 27500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Shiftry - Fury Cutter - Tutor
  (275, 27500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Shiftry - Synthesis - Tutor
  (275, 27500, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Shiftry - Twister - Tutor
  (275, 27500, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Shiftry - Knock Off - Tutor
  (275, 27500, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Shiftry - Air Cutter - Tutor
  (275, 27500, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Shiftry - Bounce - Tutor
  (275, 27500, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Shiftry - Sucker Punch - Tutor
  (275, 27500, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Shiftry - Seed Bomb - Tutor
  (275, 27500, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Shiftry - Ominous Wind - Tutor
  (275, 27500, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Taillow - Growl - Level 1
  (276, 27600, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Taillow - Peck - Level 1
  (276, 27600, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Taillow - Focus Energy - Level 4
  (276, 27600, 116, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Taillow - Quick Attack - Level 8
  (276, 27600, 98, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Taillow - Wing Attack - Level 13
  (276, 27600, 17, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Taillow - Double Team - Level 19
  (276, 27600, 104, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Taillow - Endeavor - Level 26
  (276, 27600, 283, 9, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Taillow - Aerial Ace - Level 34
  (276, 27600, 332, 9, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Taillow - Agility - Level 43
  (276, 27600, 97, 9, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Taillow - Air Slash - Level 53
  (276, 27600, 403, 9, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Taillow - Toxic - TM06
  (276, 27600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 11),
  -- Taillow - Hidden Power - TM10
  (276, 27600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 12),
  -- Taillow - Sunny Day - TM11
  (276, 27600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 13),
  -- Taillow - Protect - TM17
  (276, 27600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 14),
  -- Taillow - Rain Dance - TM18
  (276, 27600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 15),
  -- Taillow - Frustration - TM21
  (276, 27600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 16),
  -- Taillow - Return - TM27
  (276, 27600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 17),
  -- Taillow - Double Team - TM32
  (276, 27600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 18),
  -- Taillow - Aerial Ace - TM40
  (276, 27600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 19),
  -- Taillow - Facade - TM42
  (276, 27600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 20),
  -- Taillow - Secret Power - TM43
  (276, 27600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 21),
  -- Taillow - Rest - TM44
  (276, 27600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 22),
  -- Taillow - Attract - TM45
  (276, 27600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 23),
  -- Taillow - Thief - TM46
  (276, 27600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 24),
  -- Taillow - Steel Wing - TM47
  (276, 27600, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 25),
  -- Taillow - Roost - TM51
  (276, 27600, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 26),
  -- Taillow - Endure - TM58
  (276, 27600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 27),
  -- Taillow - Captivate - TM78
  (276, 27600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 28),
  -- Taillow - Sleep Talk - TM82
  (276, 27600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 29),
  -- Taillow - Natural Gift - TM83
  (276, 27600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 30),
  -- Taillow - Swagger - TM87
  (276, 27600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 31),
  -- Taillow - Pluck - TM88
  (276, 27600, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 32),
  -- Taillow - U-turn - TM89
  (276, 27600, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 33),
  -- Taillow - Substitute - TM90
  (276, 27600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 34),
  -- Taillow - Fly - HM02
  (276, 27600, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 35),
  -- Taillow - Defog - HM05
  (276, 27600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 36),
  -- Taillow - Whirlwind - Egg
  (276, 27600, 18, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Taillow - Supersonic - Egg
  (276, 27600, 48, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Taillow - Rage - Egg
  (276, 27600, 99, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Taillow - Mirror Move - Egg
  (276, 27600, 119, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Taillow - Sky Attack - Egg
  (276, 27600, 143, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Taillow - Pursuit - Egg
  (276, 27600, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Taillow - Refresh - Egg
  (276, 27600, 287, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Taillow - Brave Bird - Egg
  (276, 27600, 413, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Taillow - Swift - Tutor
  (276, 27600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Taillow - Snore - Tutor
  (276, 27600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Taillow - Mud-Slap - Tutor
  (276, 27600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Taillow - Twister - Tutor
  (276, 27600, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Taillow - Heat Wave - Tutor
  (276, 27600, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Taillow - Endeavor - Tutor
  (276, 27600, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Taillow - Air Cutter - Tutor
  (276, 27600, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Taillow - Ominous Wind - Tutor
  (276, 27600, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Swellow - Growl - Level 1
  (277, 27700, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swellow - Peck - Level 1
  (277, 27700, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swellow - Quick Attack - Level 1
  (277, 27700, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swellow - Focus Energy - Level 1
  (277, 27700, 116, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swellow - Pluck - Level 1
  (277, 27700, 365, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swellow - Focus Energy - Level 4
  (277, 27700, 116, 9, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Swellow - Quick Attack - Level 8
  (277, 27700, 98, 9, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Swellow - Wing Attack - Level 13
  (277, 27700, 17, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Swellow - Double Team - Level 19
  (277, 27700, 104, 9, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Swellow - Endeavor - Level 28
  (277, 27700, 283, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Swellow - Aerial Ace - Level 38
  (277, 27700, 332, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Swellow - Agility - Level 49
  (277, 27700, 97, 9, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Swellow - Air Slash - Level 61
  (277, 27700, 403, 9, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Swellow - Toxic - TM06
  (277, 27700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Swellow - Hidden Power - TM10
  (277, 27700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Swellow - Sunny Day - TM11
  (277, 27700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Swellow - Hyper Beam - TM15
  (277, 27700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 17),
  -- Swellow - Protect - TM17
  (277, 27700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Swellow - Rain Dance - TM18
  (277, 27700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Swellow - Frustration - TM21
  (277, 27700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Swellow - Return - TM27
  (277, 27700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 21),
  -- Swellow - Double Team - TM32
  (277, 27700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 22),
  -- Swellow - Aerial Ace - TM40
  (277, 27700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 23),
  -- Swellow - Facade - TM42
  (277, 27700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Swellow - Secret Power - TM43
  (277, 27700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Swellow - Rest - TM44
  (277, 27700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Swellow - Attract - TM45
  (277, 27700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 27),
  -- Swellow - Thief - TM46
  (277, 27700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 28),
  -- Swellow - Steel Wing - TM47
  (277, 27700, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 29),
  -- Swellow - Roost - TM51
  (277, 27700, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 30),
  -- Swellow - Endure - TM58
  (277, 27700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Swellow - Giga Impact - TM68
  (277, 27700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 32),
  -- Swellow - Captivate - TM78
  (277, 27700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 33),
  -- Swellow - Sleep Talk - TM82
  (277, 27700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 34),
  -- Swellow - Natural Gift - TM83
  (277, 27700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 35),
  -- Swellow - Swagger - TM87
  (277, 27700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 36),
  -- Swellow - Pluck - TM88
  (277, 27700, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 37),
  -- Swellow - U-turn - TM89
  (277, 27700, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 38),
  -- Swellow - Substitute - TM90
  (277, 27700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Swellow - Fly - HM02
  (277, 27700, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 40),
  -- Swellow - Defog - HM05
  (277, 27700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 41),
  -- Swellow - Swift - Tutor
  (277, 27700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Swellow - Snore - Tutor
  (277, 27700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Swellow - Mud-Slap - Tutor
  (277, 27700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Swellow - Twister - Tutor
  (277, 27700, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Swellow - Heat Wave - Tutor
  (277, 27700, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Swellow - Endeavor - Tutor
  (277, 27700, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Swellow - Air Cutter - Tutor
  (277, 27700, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Swellow - Ominous Wind - Tutor
  (277, 27700, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Wingull - Growl - Level 1
  (278, 27800, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wingull - Water Gun - Level 1
  (278, 27800, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wingull - Supersonic - Level 6
  (278, 27800, 48, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Wingull - Wing Attack - Level 11
  (278, 27800, 17, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Wingull - Mist - Level 16
  (278, 27800, 54, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Wingull - Water Pulse - Level 19
  (278, 27800, 352, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Wingull - Quick Attack - Level 24
  (278, 27800, 98, 9, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Wingull - Roost - Level 29
  (278, 27800, 355, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Wingull - Pursuit - Level 34
  (278, 27800, 228, 9, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Wingull - Agility - Level 37
  (278, 27800, 97, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Wingull - Aerial Ace - Level 42
  (278, 27800, 332, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Wingull - Air Slash - Level 47
  (278, 27800, 403, 9, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Wingull - Water Pulse - TM03
  (278, 27800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Wingull - Toxic - TM06
  (278, 27800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Wingull - Hail - TM07
  (278, 27800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 15),
  -- Wingull - Hidden Power - TM10
  (278, 27800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Wingull - Ice Beam - TM13
  (278, 27800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Wingull - Blizzard - TM14
  (278, 27800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Wingull - Protect - TM17
  (278, 27800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Wingull - Rain Dance - TM18
  (278, 27800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Wingull - Frustration - TM21
  (278, 27800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Wingull - Return - TM27
  (278, 27800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Wingull - Double Team - TM32
  (278, 27800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Wingull - Shock Wave - TM34
  (278, 27800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 24),
  -- Wingull - Aerial Ace - TM40
  (278, 27800, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 25),
  -- Wingull - Facade - TM42
  (278, 27800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Wingull - Secret Power - TM43
  (278, 27800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Wingull - Rest - TM44
  (278, 27800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Wingull - Attract - TM45
  (278, 27800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Wingull - Thief - TM46
  (278, 27800, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Wingull - Steel Wing - TM47
  (278, 27800, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 31),
  -- Wingull - Roost - TM51
  (278, 27800, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 32),
  -- Wingull - Brine - TM55
  (278, 27800, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 33),
  -- Wingull - Endure - TM58
  (278, 27800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Wingull - Captivate - TM78
  (278, 27800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 35),
  -- Wingull - Sleep Talk - TM82
  (278, 27800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 36),
  -- Wingull - Natural Gift - TM83
  (278, 27800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 37),
  -- Wingull - Swagger - TM87
  (278, 27800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Wingull - Pluck - TM88
  (278, 27800, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 39),
  -- Wingull - U-turn - TM89
  (278, 27800, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 40),
  -- Wingull - Substitute - TM90
  (278, 27800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Wingull - Fly - HM02
  (278, 27800, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 42),
  -- Wingull - Defog - HM05
  (278, 27800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 43),
  -- Wingull - Gust - Egg
  (278, 27800, 16, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wingull - Mist - Egg
  (278, 27800, 54, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wingull - Agility - Egg
  (278, 27800, 97, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wingull - Twister - Egg
  (278, 27800, 239, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wingull - Knock Off - Egg
  (278, 27800, 282, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wingull - Water Sport - Egg
  (278, 27800, 346, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wingull - Aqua Ring - Egg
  (278, 27800, 392, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wingull - Swift - Tutor
  (278, 27800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Wingull - Snore - Tutor
  (278, 27800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Wingull - Mud-Slap - Tutor
  (278, 27800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Wingull - Icy Wind - Tutor
  (278, 27800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Wingull - Twister - Tutor
  (278, 27800, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Wingull - Uproar - Tutor
  (278, 27800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Wingull - Knock Off - Tutor
  (278, 27800, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Wingull - Air Cutter - Tutor
  (278, 27800, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Wingull - Ominous Wind - Tutor
  (278, 27800, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Pelipper - Wing Attack - Level 1
  (279, 27900, 17, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pelipper - Growl - Level 1
  (279, 27900, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pelipper - Water Gun - Level 1
  (279, 27900, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pelipper - Water Sport - Level 1
  (279, 27900, 346, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pelipper - Supersonic - Level 6
  (279, 27900, 48, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Pelipper - Wing Attack - Level 11
  (279, 27900, 17, 9, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Pelipper - Mist - Level 16
  (279, 27900, 54, 9, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pelipper - Water Pulse - Level 19
  (279, 27900, 352, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pelipper - Payback - Level 24
  (279, 27900, 371, 9, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Pelipper - Protect - Level 25
  (279, 27900, 182, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Pelipper - Roost - Level 31
  (279, 27900, 355, 9, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Pelipper - Stockpile - Level 38
  (279, 27900, 254, 9, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Pelipper - Spit Up - Level 38
  (279, 27900, 255, 9, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Pelipper - Swallow - Level 38
  (279, 27900, 256, 9, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Pelipper - Fling - Level 43
  (279, 27900, 374, 9, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Pelipper - Tailwind - Level 50
  (279, 27900, 366, 9, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Pelipper - Hydro Pump - Level 57
  (279, 27900, 56, 9, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Pelipper - Water Pulse - TM03
  (279, 27900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Pelipper - Toxic - TM06
  (279, 27900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Pelipper - Hail - TM07
  (279, 27900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 20),
  -- Pelipper - Hidden Power - TM10
  (279, 27900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Pelipper - Ice Beam - TM13
  (279, 27900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Pelipper - Blizzard - TM14
  (279, 27900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Pelipper - Hyper Beam - TM15
  (279, 27900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Pelipper - Protect - TM17
  (279, 27900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Pelipper - Rain Dance - TM18
  (279, 27900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Pelipper - Frustration - TM21
  (279, 27900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Pelipper - Return - TM27
  (279, 27900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Pelipper - Double Team - TM32
  (279, 27900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Pelipper - Shock Wave - TM34
  (279, 27900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 30),
  -- Pelipper - Aerial Ace - TM40
  (279, 27900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 31),
  -- Pelipper - Facade - TM42
  (279, 27900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Pelipper - Secret Power - TM43
  (279, 27900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Pelipper - Rest - TM44
  (279, 27900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Pelipper - Attract - TM45
  (279, 27900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Pelipper - Thief - TM46
  (279, 27900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 36),
  -- Pelipper - Steel Wing - TM47
  (279, 27900, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 37),
  -- Pelipper - Roost - TM51
  (279, 27900, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 38),
  -- Pelipper - Brine - TM55
  (279, 27900, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 39),
  -- Pelipper - Fling - TM56
  (279, 27900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 40),
  -- Pelipper - Endure - TM58
  (279, 27900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Pelipper - Payback - TM66
  (279, 27900, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 42),
  -- Pelipper - Giga Impact - TM68
  (279, 27900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 43),
  -- Pelipper - Captivate - TM78
  (279, 27900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Pelipper - Sleep Talk - TM82
  (279, 27900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Pelipper - Natural Gift - TM83
  (279, 27900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Pelipper - Swagger - TM87
  (279, 27900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Pelipper - Pluck - TM88
  (279, 27900, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 48),
  -- Pelipper - U-turn - TM89
  (279, 27900, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 49),
  -- Pelipper - Substitute - TM90
  (279, 27900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Pelipper - Fly - HM02
  (279, 27900, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 51),
  -- Pelipper - Surf - HM03
  (279, 27900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 52),
  -- Pelipper - Defog - HM05
  (279, 27900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 53),
  -- Pelipper - Swift - Tutor
  (279, 27900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Pelipper - Snore - Tutor
  (279, 27900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Pelipper - Mud-Slap - Tutor
  (279, 27900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Pelipper - Icy Wind - Tutor
  (279, 27900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Pelipper - Twister - Tutor
  (279, 27900, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Pelipper - Uproar - Tutor
  (279, 27900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Pelipper - Knock Off - Tutor
  (279, 27900, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Pelipper - Air Cutter - Tutor
  (279, 27900, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Pelipper - Seed Bomb - Tutor
  (279, 27900, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Pelipper - Gunk Shot - Tutor
  (279, 27900, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Pelipper - Ominous Wind - Tutor
  (279, 27900, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Ralts - Growl - Level 1
  (280, 28000, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ralts - Confusion - Level 6
  (280, 28000, 93, 9, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Ralts - Double Team - Level 10
  (280, 28000, 104, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Ralts - Teleport - Level 12
  (280, 28000, 100, 9, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Ralts - Lucky Chant - Level 17
  (280, 28000, 381, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Ralts - Magical Leaf - Level 21
  (280, 28000, 345, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Ralts - Calm Mind - Level 23
  (280, 28000, 347, 9, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Ralts - Psychic - Level 28
  (280, 28000, 94, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Ralts - Imprison - Level 32
  (280, 28000, 286, 9, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Ralts - Future Sight - Level 34
  (280, 28000, 248, 9, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Ralts - Charm - Level 39
  (280, 28000, 204, 9, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Ralts - Hypnosis - Level 43
  (280, 28000, 95, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Ralts - Dream Eater - Level 45
  (280, 28000, 138, 9, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Ralts - Calm Mind - TM04
  (280, 28000, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Ralts - Toxic - TM06
  (280, 28000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Ralts - Hidden Power - TM10
  (280, 28000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Ralts - Sunny Day - TM11
  (280, 28000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Ralts - Taunt - TM12
  (280, 28000, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 18),
  -- Ralts - Light Screen - TM16
  (280, 28000, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 19),
  -- Ralts - Protect - TM17
  (280, 28000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Ralts - Rain Dance - TM18
  (280, 28000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Ralts - Safeguard - TM20
  (280, 28000, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 22),
  -- Ralts - Frustration - TM21
  (280, 28000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Ralts - Thunderbolt - TM24
  (280, 28000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 24),
  -- Ralts - Return - TM27
  (280, 28000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Ralts - Psychic - TM29
  (280, 28000, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 26),
  -- Ralts - Shadow Ball - TM30
  (280, 28000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Ralts - Double Team - TM32
  (280, 28000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Ralts - Reflect - TM33
  (280, 28000, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 29),
  -- Ralts - Shock Wave - TM34
  (280, 28000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 30),
  -- Ralts - Torment - TM41
  (280, 28000, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 31),
  -- Ralts - Facade - TM42
  (280, 28000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Ralts - Secret Power - TM43
  (280, 28000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Ralts - Rest - TM44
  (280, 28000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Ralts - Attract - TM45
  (280, 28000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Ralts - Thief - TM46
  (280, 28000, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 36),
  -- Ralts - Skill Swap - TM48
  (280, 28000, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 37),
  -- Ralts - Snatch - TM49
  (280, 28000, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 38),
  -- Ralts - Fling - TM56
  (280, 28000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 39),
  -- Ralts - Charge Beam - TM57
  (280, 28000, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 40),
  -- Ralts - Endure - TM58
  (280, 28000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Ralts - Recycle - TM67
  (280, 28000, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 42),
  -- Ralts - Flash - TM70
  (280, 28000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 43),
  -- Ralts - Thunder Wave - TM73
  (280, 28000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 44),
  -- Ralts - Psych Up - TM77
  (280, 28000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 45),
  -- Ralts - Captivate - TM78
  (280, 28000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Ralts - Sleep Talk - TM82
  (280, 28000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Ralts - Natural Gift - TM83
  (280, 28000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Ralts - Dream Eater - TM85
  (280, 28000, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 49),
  -- Ralts - Grass Knot - TM86
  (280, 28000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 50),
  -- Ralts - Swagger - TM87
  (280, 28000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Ralts - Substitute - TM90
  (280, 28000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Ralts - Trick Room - TM92
  (280, 28000, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 53),
  -- Ralts - Disable - Egg
  (280, 28000, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ralts - Confuse Ray - Egg
  (280, 28000, 109, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ralts - Destiny Bond - Egg
  (280, 28000, 194, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ralts - Mean Look - Egg
  (280, 28000, 212, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ralts - Will-O-Wisp - Egg
  (280, 28000, 261, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ralts - Memento - Egg
  (280, 28000, 262, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ralts - Grudge - Egg
  (280, 28000, 288, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Ralts - Shadow Sneak - Egg
  (280, 28000, 425, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Ralts - Fire Punch - Tutor
  (280, 28000, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Ralts - Ice Punch - Tutor
  (280, 28000, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Ralts - Thunder Punch - Tutor
  (280, 28000, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Ralts - Swift - Tutor
  (280, 28000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Ralts - Snore - Tutor
  (280, 28000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Ralts - Mud-Slap - Tutor
  (280, 28000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Ralts - Icy Wind - Tutor
  (280, 28000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Ralts - Helping Hand - Tutor
  (280, 28000, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Ralts - Trick - Tutor
  (280, 28000, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Ralts - Signal Beam - Tutor
  (280, 28000, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Ralts - Zen Headbutt - Tutor
  (280, 28000, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Kirlia - Growl - Level 1
  (281, 28100, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kirlia - Confusion - Level 1
  (281, 28100, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kirlia - Teleport - Level 1
  (281, 28100, 100, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kirlia - Double Team - Level 1
  (281, 28100, 104, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kirlia - Confusion - Level 6
  (281, 28100, 93, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Kirlia - Double Team - Level 10
  (281, 28100, 104, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Kirlia - Teleport - Level 12
  (281, 28100, 100, 9, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Kirlia - Lucky Chant - Level 17
  (281, 28100, 381, 9, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Kirlia - Magical Leaf - Level 22
  (281, 28100, 345, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Kirlia - Calm Mind - Level 25
  (281, 28100, 347, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Kirlia - Psychic - Level 31
  (281, 28100, 94, 9, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Kirlia - Imprison - Level 36
  (281, 28100, 286, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Kirlia - Future Sight - Level 39
  (281, 28100, 248, 9, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Kirlia - Charm - Level 45
  (281, 28100, 204, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Kirlia - Hypnosis - Level 50
  (281, 28100, 95, 9, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Kirlia - Dream Eater - Level 53
  (281, 28100, 138, 9, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Kirlia - Calm Mind - TM04
  (281, 28100, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 17),
  -- Kirlia - Toxic - TM06
  (281, 28100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Kirlia - Hidden Power - TM10
  (281, 28100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Kirlia - Sunny Day - TM11
  (281, 28100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Kirlia - Taunt - TM12
  (281, 28100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 21),
  -- Kirlia - Light Screen - TM16
  (281, 28100, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 22),
  -- Kirlia - Protect - TM17
  (281, 28100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Kirlia - Rain Dance - TM18
  (281, 28100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Kirlia - Safeguard - TM20
  (281, 28100, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 25),
  -- Kirlia - Frustration - TM21
  (281, 28100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Kirlia - Thunderbolt - TM24
  (281, 28100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Kirlia - Return - TM27
  (281, 28100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Kirlia - Psychic - TM29
  (281, 28100, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 29),
  -- Kirlia - Shadow Ball - TM30
  (281, 28100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Kirlia - Double Team - TM32
  (281, 28100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Kirlia - Reflect - TM33
  (281, 28100, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 32),
  -- Kirlia - Shock Wave - TM34
  (281, 28100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Kirlia - Torment - TM41
  (281, 28100, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 34),
  -- Kirlia - Facade - TM42
  (281, 28100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Kirlia - Secret Power - TM43
  (281, 28100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Kirlia - Rest - TM44
  (281, 28100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Kirlia - Attract - TM45
  (281, 28100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Kirlia - Thief - TM46
  (281, 28100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 39),
  -- Kirlia - Skill Swap - TM48
  (281, 28100, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 40),
  -- Kirlia - Snatch - TM49
  (281, 28100, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 41),
  -- Kirlia - Fling - TM56
  (281, 28100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 42),
  -- Kirlia - Charge Beam - TM57
  (281, 28100, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 43),
  -- Kirlia - Endure - TM58
  (281, 28100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Kirlia - Recycle - TM67
  (281, 28100, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 45),
  -- Kirlia - Flash - TM70
  (281, 28100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 46),
  -- Kirlia - Thunder Wave - TM73
  (281, 28100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 47),
  -- Kirlia - Psych Up - TM77
  (281, 28100, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 48),
  -- Kirlia - Captivate - TM78
  (281, 28100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 49),
  -- Kirlia - Sleep Talk - TM82
  (281, 28100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 50),
  -- Kirlia - Natural Gift - TM83
  (281, 28100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 51),
  -- Kirlia - Dream Eater - TM85
  (281, 28100, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 52),
  -- Kirlia - Grass Knot - TM86
  (281, 28100, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 53),
  -- Kirlia - Swagger - TM87
  (281, 28100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Kirlia - Substitute - TM90
  (281, 28100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 55),
  -- Kirlia - Trick Room - TM92
  (281, 28100, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 56),
  -- Kirlia - Fire Punch - Tutor
  (281, 28100, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Kirlia - Ice Punch - Tutor
  (281, 28100, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Kirlia - Thunder Punch - Tutor
  (281, 28100, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Kirlia - Swift - Tutor
  (281, 28100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Kirlia - Snore - Tutor
  (281, 28100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Kirlia - Mud-Slap - Tutor
  (281, 28100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Kirlia - Icy Wind - Tutor
  (281, 28100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Kirlia - Helping Hand - Tutor
  (281, 28100, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Kirlia - Trick - Tutor
  (281, 28100, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Kirlia - Signal Beam - Tutor
  (281, 28100, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Kirlia - Zen Headbutt - Tutor
  (281, 28100, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Gardevoir - Growl - Level 1
  (282, 28200, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gardevoir - Confusion - Level 1
  (282, 28200, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gardevoir - Teleport - Level 1
  (282, 28200, 100, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gardevoir - Double Team - Level 1
  (282, 28200, 104, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gardevoir - Healing Wish - Level 1
  (282, 28200, 361, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gardevoir - Confusion - Level 6
  (282, 28200, 93, 9, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Gardevoir - Double Team - Level 10
  (282, 28200, 104, 9, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Gardevoir - Teleport - Level 12
  (282, 28200, 100, 9, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Gardevoir - Wish - Level 17
  (282, 28200, 273, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Gardevoir - Magical Leaf - Level 22
  (282, 28200, 345, 9, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Gardevoir - Calm Mind - Level 25
  (282, 28200, 347, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Gardevoir - Psychic - Level 33
  (282, 28200, 94, 9, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gardevoir - Imprison - Level 40
  (282, 28200, 286, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Gardevoir - Future Sight - Level 45
  (282, 28200, 248, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Gardevoir - Captivate - Level 53
  (282, 28200, 445, 9, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Gardevoir - Hypnosis - Level 60
  (282, 28200, 95, 9, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Gardevoir - Dream Eater - Level 65
  (282, 28200, 138, 9, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Gardevoir - Calm Mind - TM04
  (282, 28200, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 18),
  -- Gardevoir - Toxic - TM06
  (282, 28200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Gardevoir - Hidden Power - TM10
  (282, 28200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Gardevoir - Sunny Day - TM11
  (282, 28200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Gardevoir - Taunt - TM12
  (282, 28200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 22),
  -- Gardevoir - Hyper Beam - TM15
  (282, 28200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Gardevoir - Light Screen - TM16
  (282, 28200, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 24),
  -- Gardevoir - Protect - TM17
  (282, 28200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Gardevoir - Rain Dance - TM18
  (282, 28200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Gardevoir - Safeguard - TM20
  (282, 28200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 27),
  -- Gardevoir - Frustration - TM21
  (282, 28200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Gardevoir - Thunderbolt - TM24
  (282, 28200, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 29),
  -- Gardevoir - Return - TM27
  (282, 28200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Gardevoir - Psychic - TM29
  (282, 28200, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 31),
  -- Gardevoir - Shadow Ball - TM30
  (282, 28200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 32),
  -- Gardevoir - Double Team - TM32
  (282, 28200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Gardevoir - Reflect - TM33
  (282, 28200, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 34),
  -- Gardevoir - Shock Wave - TM34
  (282, 28200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 35),
  -- Gardevoir - Torment - TM41
  (282, 28200, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 36),
  -- Gardevoir - Facade - TM42
  (282, 28200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Gardevoir - Secret Power - TM43
  (282, 28200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Gardevoir - Rest - TM44
  (282, 28200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Gardevoir - Attract - TM45
  (282, 28200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Gardevoir - Thief - TM46
  (282, 28200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 41),
  -- Gardevoir - Skill Swap - TM48
  (282, 28200, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 42),
  -- Gardevoir - Snatch - TM49
  (282, 28200, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 43),
  -- Gardevoir - Focus Blast - TM52
  (282, 28200, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 44),
  -- Gardevoir - Energy Ball - TM53
  (282, 28200, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 45),
  -- Gardevoir - Fling - TM56
  (282, 28200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 46),
  -- Gardevoir - Charge Beam - TM57
  (282, 28200, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 47),
  -- Gardevoir - Endure - TM58
  (282, 28200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 48),
  -- Gardevoir - Recycle - TM67
  (282, 28200, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 49),
  -- Gardevoir - Giga Impact - TM68
  (282, 28200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 50),
  -- Gardevoir - Flash - TM70
  (282, 28200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 51),
  -- Gardevoir - Thunder Wave - TM73
  (282, 28200, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 52),
  -- Gardevoir - Psych Up - TM77
  (282, 28200, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 53),
  -- Gardevoir - Captivate - TM78
  (282, 28200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 54),
  -- Gardevoir - Sleep Talk - TM82
  (282, 28200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 55),
  -- Gardevoir - Natural Gift - TM83
  (282, 28200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 56),
  -- Gardevoir - Dream Eater - TM85
  (282, 28200, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 57),
  -- Gardevoir - Grass Knot - TM86
  (282, 28200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 58),
  -- Gardevoir - Swagger - TM87
  (282, 28200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 59),
  -- Gardevoir - Substitute - TM90
  (282, 28200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 60),
  -- Gardevoir - Trick Room - TM92
  (282, 28200, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 61),
  -- Gardevoir - Fire Punch - Tutor
  (282, 28200, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Gardevoir - Ice Punch - Tutor
  (282, 28200, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Gardevoir - Thunder Punch - Tutor
  (282, 28200, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Gardevoir - Swift - Tutor
  (282, 28200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Gardevoir - Snore - Tutor
  (282, 28200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Gardevoir - Mud-Slap - Tutor
  (282, 28200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Gardevoir - Icy Wind - Tutor
  (282, 28200, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Gardevoir - Helping Hand - Tutor
  (282, 28200, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Gardevoir - Trick - Tutor
  (282, 28200, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Gardevoir - Signal Beam - Tutor
  (282, 28200, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Gardevoir - Zen Headbutt - Tutor
  (282, 28200, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Surskit - Bubble - Level 1
  (283, 28300, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Surskit - Quick Attack - Level 7
  (283, 28300, 98, 9, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Surskit - Sweet Scent - Level 13
  (283, 28300, 230, 9, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Surskit - Water Sport - Level 19
  (283, 28300, 346, 9, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Surskit - Bubble Beam - Level 25
  (283, 28300, 61, 9, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Surskit - Agility - Level 31
  (283, 28300, 97, 9, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Surskit - Mist - Level 37
  (283, 28300, 54, 9, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Surskit - Haze - Level 37
  (283, 28300, 114, 9, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Surskit - Baton Pass - Level 43
  (283, 28300, 226, 9, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Surskit - Water Pulse - TM03
  (283, 28300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 10),
  -- Surskit - Toxic - TM06
  (283, 28300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 11),
  -- Surskit - Hidden Power - TM10
  (283, 28300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 12),
  -- Surskit - Sunny Day - TM11
  (283, 28300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 13),
  -- Surskit - Ice Beam - TM13
  (283, 28300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 14),
  -- Surskit - Blizzard - TM14
  (283, 28300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 15),
  -- Surskit - Protect - TM17
  (283, 28300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 16),
  -- Surskit - Rain Dance - TM18
  (283, 28300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 17),
  -- Surskit - Giga Drain - TM19
  (283, 28300, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 18),
  -- Surskit - Frustration - TM21
  (283, 28300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Surskit - Solar Beam - TM22
  (283, 28300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 20),
  -- Surskit - Return - TM27
  (283, 28300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 21),
  -- Surskit - Shadow Ball - TM30
  (283, 28300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 22),
  -- Surskit - Double Team - TM32
  (283, 28300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Surskit - Facade - TM42
  (283, 28300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Surskit - Secret Power - TM43
  (283, 28300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Surskit - Rest - TM44
  (283, 28300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Surskit - Attract - TM45
  (283, 28300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 27),
  -- Surskit - Thief - TM46
  (283, 28300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 28),
  -- Surskit - Endure - TM58
  (283, 28300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 29),
  -- Surskit - Flash - TM70
  (283, 28300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 30),
  -- Surskit - Psych Up - TM77
  (283, 28300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 31),
  -- Surskit - Captivate - TM78
  (283, 28300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 32),
  -- Surskit - Sleep Talk - TM82
  (283, 28300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 33),
  -- Surskit - Natural Gift - TM83
  (283, 28300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 34),
  -- Surskit - Swagger - TM87
  (283, 28300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 35),
  -- Surskit - Substitute - TM90
  (283, 28300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 36),
  -- Surskit - Hydro Pump - Egg
  (283, 28300, 56, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Surskit - Psybeam - Egg
  (283, 28300, 60, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Surskit - Mind Reader - Egg
  (283, 28300, 170, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Surskit - Foresight - Egg
  (283, 28300, 193, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Surskit - Signal Beam - Egg
  (283, 28300, 324, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Surskit - Mud Shot - Egg
  (283, 28300, 341, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Surskit - Bug Bite - Egg
  (283, 28300, 450, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Surskit - Swift - Tutor
  (283, 28300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Surskit - Snore - Tutor
  (283, 28300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Surskit - Mud-Slap - Tutor
  (283, 28300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Surskit - Icy Wind - Tutor
  (283, 28300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Surskit - Signal Beam - Tutor
  (283, 28300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Masquerain - Quick Attack - Level 1
  (284, 28400, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Masquerain - Bubble - Level 1
  (284, 28400, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Masquerain - Sweet Scent - Level 1
  (284, 28400, 230, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Masquerain - Water Sport - Level 1
  (284, 28400, 346, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Masquerain - Ominous Wind - Level 1
  (284, 28400, 466, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Masquerain - Quick Attack - Level 7
  (284, 28400, 98, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Masquerain - Sweet Scent - Level 13
  (284, 28400, 230, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Masquerain - Water Sport - Level 19
  (284, 28400, 346, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Masquerain - Gust - Level 22
  (284, 28400, 16, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Masquerain - Scary Face - Level 26
  (284, 28400, 184, 9, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Masquerain - Stun Spore - Level 33
  (284, 28400, 78, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Masquerain - Silver Wind - Level 40
  (284, 28400, 318, 9, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Masquerain - Air Slash - Level 47
  (284, 28400, 403, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Masquerain - Whirlwind - Level 54
  (284, 28400, 18, 9, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Masquerain - Bug Buzz - Level 61
  (284, 28400, 405, 9, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Masquerain - Water Pulse - TM03
  (284, 28400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Masquerain - Toxic - TM06
  (284, 28400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Masquerain - Hidden Power - TM10
  (284, 28400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Masquerain - Sunny Day - TM11
  (284, 28400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Masquerain - Ice Beam - TM13
  (284, 28400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Masquerain - Blizzard - TM14
  (284, 28400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Masquerain - Hyper Beam - TM15
  (284, 28400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Masquerain - Protect - TM17
  (284, 28400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Masquerain - Rain Dance - TM18
  (284, 28400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Masquerain - Giga Drain - TM19
  (284, 28400, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 25),
  -- Masquerain - Frustration - TM21
  (284, 28400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Masquerain - Solar Beam - TM22
  (284, 28400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Masquerain - Return - TM27
  (284, 28400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Masquerain - Shadow Ball - TM30
  (284, 28400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Masquerain - Double Team - TM32
  (284, 28400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Masquerain - Aerial Ace - TM40
  (284, 28400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 31),
  -- Masquerain - Facade - TM42
  (284, 28400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Masquerain - Secret Power - TM43
  (284, 28400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Masquerain - Rest - TM44
  (284, 28400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Masquerain - Attract - TM45
  (284, 28400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Masquerain - Thief - TM46
  (284, 28400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 36),
  -- Masquerain - Roost - TM51
  (284, 28400, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 37),
  -- Masquerain - Energy Ball - TM53
  (284, 28400, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 38),
  -- Masquerain - Endure - TM58
  (284, 28400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Masquerain - Silver Wind - TM62
  (284, 28400, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 40),
  -- Masquerain - Giga Impact - TM68
  (284, 28400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Masquerain - Flash - TM70
  (284, 28400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 42),
  -- Masquerain - Psych Up - TM77
  (284, 28400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 43),
  -- Masquerain - Captivate - TM78
  (284, 28400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Masquerain - Sleep Talk - TM82
  (284, 28400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Masquerain - Natural Gift - TM83
  (284, 28400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Masquerain - Swagger - TM87
  (284, 28400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Masquerain - U-turn - TM89
  (284, 28400, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 48),
  -- Masquerain - Substitute - TM90
  (284, 28400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Masquerain - Defog - HM05
  (284, 28400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 50),
  -- Masquerain - Swift - Tutor
  (284, 28400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Masquerain - Snore - Tutor
  (284, 28400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Masquerain - Mud-Slap - Tutor
  (284, 28400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Masquerain - Icy Wind - Tutor
  (284, 28400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Masquerain - Twister - Tutor
  (284, 28400, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Masquerain - Air Cutter - Tutor
  (284, 28400, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Masquerain - Signal Beam - Tutor
  (284, 28400, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Masquerain - Ominous Wind - Tutor
  (284, 28400, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Shroomish - Absorb - Level 1
  (285, 28500, 71, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shroomish - Tackle - Level 5
  (285, 28500, 33, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Shroomish - Stun Spore - Level 9
  (285, 28500, 78, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shroomish - Leech Seed - Level 13
  (285, 28500, 73, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Shroomish - Mega Drain - Level 17
  (285, 28500, 72, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Shroomish - Headbutt - Level 21
  (285, 28500, 29, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Shroomish - Poison Powder - Level 25
  (285, 28500, 77, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shroomish - Worry Seed - Level 29
  (285, 28500, 388, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Shroomish - Growth - Level 33
  (285, 28500, 74, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shroomish - Giga Drain - Level 37
  (285, 28500, 202, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shroomish - Seed Bomb - Level 41
  (285, 28500, 402, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Shroomish - Spore - Level 45
  (285, 28500, 147, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Shroomish - Toxic - TM06
  (285, 28500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Shroomish - Bullet Seed - TM09
  (285, 28500, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 14),
  -- Shroomish - Hidden Power - TM10
  (285, 28500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Shroomish - Sunny Day - TM11
  (285, 28500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Shroomish - Protect - TM17
  (285, 28500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Shroomish - Giga Drain - TM19
  (285, 28500, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 18),
  -- Shroomish - Safeguard - TM20
  (285, 28500, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 19),
  -- Shroomish - Frustration - TM21
  (285, 28500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Shroomish - Solar Beam - TM22
  (285, 28500, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 21),
  -- Shroomish - Return - TM27
  (285, 28500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Shroomish - Double Team - TM32
  (285, 28500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Shroomish - Sludge Bomb - TM36
  (285, 28500, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 24),
  -- Shroomish - Facade - TM42
  (285, 28500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 25),
  -- Shroomish - Secret Power - TM43
  (285, 28500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 26),
  -- Shroomish - Rest - TM44
  (285, 28500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 27),
  -- Shroomish - Attract - TM45
  (285, 28500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 28),
  -- Shroomish - Snatch - TM49
  (285, 28500, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 29),
  -- Shroomish - Energy Ball - TM53
  (285, 28500, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 30),
  -- Shroomish - Endure - TM58
  (285, 28500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Shroomish - Flash - TM70
  (285, 28500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 32),
  -- Shroomish - Swords Dance - TM75
  (285, 28500, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 33),
  -- Shroomish - Captivate - TM78
  (285, 28500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 34),
  -- Shroomish - Sleep Talk - TM82
  (285, 28500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Shroomish - Natural Gift - TM83
  (285, 28500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Shroomish - Grass Knot - TM86
  (285, 28500, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 37),
  -- Shroomish - Swagger - TM87
  (285, 28500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Shroomish - Substitute - TM90
  (285, 28500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Shroomish - Charm - Egg
  (285, 28500, 204, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shroomish - False Swipe - Egg
  (285, 28500, 206, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shroomish - Swagger - Egg
  (285, 28500, 207, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shroomish - Helping Hand - Egg
  (285, 28500, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shroomish - Fake Tears - Egg
  (285, 28500, 313, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shroomish - Wake-Up Slap - Egg
  (285, 28500, 358, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shroomish - Worry Seed - Egg
  (285, 28500, 388, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shroomish - Seed Bomb - Egg
  (285, 28500, 402, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shroomish - Snore - Tutor
  (285, 28500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Shroomish - Synthesis - Tutor
  (285, 28500, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Shroomish - Helping Hand - Tutor
  (285, 28500, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Shroomish - Seed Bomb - Tutor
  (285, 28500, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Breloom - Tackle - Level 1
  (286, 28600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Breloom - Absorb - Level 1
  (286, 28600, 71, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Breloom - Leech Seed - Level 1
  (286, 28600, 73, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Breloom - Stun Spore - Level 1
  (286, 28600, 78, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Breloom - Tackle - Level 5
  (286, 28600, 33, 9, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Breloom - Stun Spore - Level 9
  (286, 28600, 78, 9, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Breloom - Leech Seed - Level 13
  (286, 28600, 73, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Breloom - Mega Drain - Level 17
  (286, 28600, 72, 9, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Breloom - Headbutt - Level 21
  (286, 28600, 29, 9, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Breloom - Mach Punch - Level 23
  (286, 28600, 183, 9, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Breloom - Counter - Level 25
  (286, 28600, 68, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Breloom - Force Palm - Level 29
  (286, 28600, 395, 9, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Breloom - Sky Uppercut - Level 33
  (286, 28600, 327, 9, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Breloom - Mind Reader - Level 37
  (286, 28600, 170, 9, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Breloom - Seed Bomb - Level 41
  (286, 28600, 402, 9, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Breloom - Dynamic Punch - Level 45
  (286, 28600, 223, 9, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Breloom - Focus Punch - TM01
  (286, 28600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Breloom - Toxic - TM06
  (286, 28600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Breloom - Bulk Up - TM08
  (286, 28600, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 19),
  -- Breloom - Bullet Seed - TM09
  (286, 28600, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 20),
  -- Breloom - Hidden Power - TM10
  (286, 28600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Breloom - Sunny Day - TM11
  (286, 28600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Breloom - Hyper Beam - TM15
  (286, 28600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Breloom - Protect - TM17
  (286, 28600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Breloom - Giga Drain - TM19
  (286, 28600, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 25),
  -- Breloom - Safeguard - TM20
  (286, 28600, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 26),
  -- Breloom - Frustration - TM21
  (286, 28600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Breloom - Solar Beam - TM22
  (286, 28600, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 28),
  -- Breloom - Iron Tail - TM23
  (286, 28600, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Breloom - Return - TM27
  (286, 28600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Breloom - Brick Break - TM31
  (286, 28600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 31),
  -- Breloom - Double Team - TM32
  (286, 28600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Breloom - Sludge Bomb - TM36
  (286, 28600, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 33),
  -- Breloom - Rock Tomb - TM39
  (286, 28600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Breloom - Facade - TM42
  (286, 28600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Breloom - Secret Power - TM43
  (286, 28600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Breloom - Rest - TM44
  (286, 28600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Breloom - Attract - TM45
  (286, 28600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Breloom - Snatch - TM49
  (286, 28600, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 39),
  -- Breloom - Focus Blast - TM52
  (286, 28600, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 40),
  -- Breloom - Energy Ball - TM53
  (286, 28600, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 41),
  -- Breloom - Fling - TM56
  (286, 28600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 42),
  -- Breloom - Endure - TM58
  (286, 28600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Breloom - Drain Punch - TM60
  (286, 28600, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 44),
  -- Breloom - Giga Impact - TM68
  (286, 28600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Breloom - Flash - TM70
  (286, 28600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 46),
  -- Breloom - Stone Edge - TM71
  (286, 28600, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 47),
  -- Breloom - Swords Dance - TM75
  (286, 28600, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 48),
  -- Breloom - Captivate - TM78
  (286, 28600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 49),
  -- Breloom - Rock Slide - TM80
  (286, 28600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 50),
  -- Breloom - Sleep Talk - TM82
  (286, 28600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Breloom - Natural Gift - TM83
  (286, 28600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Breloom - Grass Knot - TM86
  (286, 28600, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 53),
  -- Breloom - Swagger - TM87
  (286, 28600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Breloom - Substitute - TM90
  (286, 28600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 55),
  -- Breloom - Cut - HM01
  (286, 28600, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 56),
  -- Breloom - Strength - HM04
  (286, 28600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 57),
  -- Breloom - Rock Smash - HM06
  (286, 28600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 58),
  -- Breloom - Thunder Punch - Tutor
  (286, 28600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Breloom - Snore - Tutor
  (286, 28600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Breloom - Mud-Slap - Tutor
  (286, 28600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Breloom - Fury Cutter - Tutor
  (286, 28600, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Breloom - Synthesis - Tutor
  (286, 28600, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Breloom - Helping Hand - Tutor
  (286, 28600, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Breloom - Superpower - Tutor
  (286, 28600, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Breloom - Seed Bomb - Tutor
  (286, 28600, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Breloom - Vacuum Wave - Tutor
  (286, 28600, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Slakoth - Scratch - Level 1
  (287, 28700, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slakoth - Yawn - Level 1
  (287, 28700, 281, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slakoth - Encore - Level 7
  (287, 28700, 227, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Slakoth - Slack Off - Level 13
  (287, 28700, 303, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Slakoth - Feint Attack - Level 19
  (287, 28700, 185, 9, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Slakoth - Amnesia - Level 25
  (287, 28700, 133, 9, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Slakoth - Covet - Level 31
  (287, 28700, 343, 9, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Slakoth - Counter - Level 37
  (287, 28700, 68, 9, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Slakoth - Flail - Level 43
  (287, 28700, 175, 9, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Slakoth - Focus Punch - TM01
  (287, 28700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 10),
  -- Slakoth - Water Pulse - TM03
  (287, 28700, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 11),
  -- Slakoth - Toxic - TM06
  (287, 28700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 12),
  -- Slakoth - Bulk Up - TM08
  (287, 28700, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 13),
  -- Slakoth - Hidden Power - TM10
  (287, 28700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Slakoth - Sunny Day - TM11
  (287, 28700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Slakoth - Ice Beam - TM13
  (287, 28700, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 16),
  -- Slakoth - Blizzard - TM14
  (287, 28700, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 17),
  -- Slakoth - Protect - TM17
  (287, 28700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Slakoth - Rain Dance - TM18
  (287, 28700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Slakoth - Frustration - TM21
  (287, 28700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Slakoth - Solar Beam - TM22
  (287, 28700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 21),
  -- Slakoth - Thunderbolt - TM24
  (287, 28700, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 22),
  -- Slakoth - Thunder - TM25
  (287, 28700, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 23),
  -- Slakoth - Return - TM27
  (287, 28700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Slakoth - Shadow Ball - TM30
  (287, 28700, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 25),
  -- Slakoth - Brick Break - TM31
  (287, 28700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 26),
  -- Slakoth - Double Team - TM32
  (287, 28700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Slakoth - Shock Wave - TM34
  (287, 28700, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 28),
  -- Slakoth - Flamethrower - TM35
  (287, 28700, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 29),
  -- Slakoth - Fire Blast - TM38
  (287, 28700, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 30),
  -- Slakoth - Rock Tomb - TM39
  (287, 28700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 31),
  -- Slakoth - Aerial Ace - TM40
  (287, 28700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 32),
  -- Slakoth - Facade - TM42
  (287, 28700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Slakoth - Secret Power - TM43
  (287, 28700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Slakoth - Rest - TM44
  (287, 28700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Slakoth - Attract - TM45
  (287, 28700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Slakoth - Fling - TM56
  (287, 28700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 37),
  -- Slakoth - Endure - TM58
  (287, 28700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Slakoth - Shadow Claw - TM65
  (287, 28700, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 39),
  -- Slakoth - Captivate - TM78
  (287, 28700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Slakoth - Rock Slide - TM80
  (287, 28700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 41),
  -- Slakoth - Sleep Talk - TM82
  (287, 28700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Slakoth - Natural Gift - TM83
  (287, 28700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Slakoth - Swagger - TM87
  (287, 28700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Slakoth - Substitute - TM90
  (287, 28700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Slakoth - Cut - HM01
  (287, 28700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 46),
  -- Slakoth - Strength - HM04
  (287, 28700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 47),
  -- Slakoth - Rock Smash - HM06
  (287, 28700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Slakoth - Body Slam - Egg
  (287, 28700, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Slakoth - Slash - Egg
  (287, 28700, 163, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Slakoth - Snore - Egg
  (287, 28700, 173, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Slakoth - Curse - Egg
  (287, 28700, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Slakoth - Sleep Talk - Egg
  (287, 28700, 214, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Slakoth - Pursuit - Egg
  (287, 28700, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Slakoth - Crush Claw - Egg
  (287, 28700, 306, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Slakoth - Hammer Arm - Egg
  (287, 28700, 359, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Slakoth - Night Slash - Egg
  (287, 28700, 400, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Slakoth - Fire Punch - Tutor
  (287, 28700, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Slakoth - Ice Punch - Tutor
  (287, 28700, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Slakoth - Thunder Punch - Tutor
  (287, 28700, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Slakoth - Snore - Tutor
  (287, 28700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Slakoth - Mud-Slap - Tutor
  (287, 28700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Slakoth - Icy Wind - Tutor
  (287, 28700, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Slakoth - Fury Cutter - Tutor
  (287, 28700, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Slakoth - Sucker Punch - Tutor
  (287, 28700, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Slakoth - Gunk Shot - Tutor
  (287, 28700, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Vigoroth - Scratch - Level 1
  (288, 28800, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vigoroth - Focus Energy - Level 1
  (288, 28800, 116, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vigoroth - Encore - Level 1
  (288, 28800, 227, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vigoroth - Uproar - Level 1
  (288, 28800, 253, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vigoroth - Encore - Level 7
  (288, 28800, 227, 9, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Vigoroth - Uproar - Level 13
  (288, 28800, 253, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Vigoroth - Fury Swipes - Level 19
  (288, 28800, 154, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Vigoroth - Endure - Level 25
  (288, 28800, 203, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Vigoroth - Slash - Level 31
  (288, 28800, 163, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Vigoroth - Counter - Level 37
  (288, 28800, 68, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Vigoroth - Focus Punch - Level 43
  (288, 28800, 264, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Vigoroth - Reversal - Level 49
  (288, 28800, 179, 9, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Vigoroth - Focus Punch - TM01
  (288, 28800, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 13),
  -- Vigoroth - Water Pulse - TM03
  (288, 28800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Vigoroth - Roar - TM05
  (288, 28800, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Vigoroth - Toxic - TM06
  (288, 28800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Vigoroth - Bulk Up - TM08
  (288, 28800, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 17),
  -- Vigoroth - Hidden Power - TM10
  (288, 28800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Vigoroth - Sunny Day - TM11
  (288, 28800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Vigoroth - Taunt - TM12
  (288, 28800, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 20),
  -- Vigoroth - Ice Beam - TM13
  (288, 28800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Vigoroth - Blizzard - TM14
  (288, 28800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Vigoroth - Protect - TM17
  (288, 28800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Vigoroth - Rain Dance - TM18
  (288, 28800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Vigoroth - Frustration - TM21
  (288, 28800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Vigoroth - Solar Beam - TM22
  (288, 28800, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 26),
  -- Vigoroth - Thunderbolt - TM24
  (288, 28800, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Vigoroth - Thunder - TM25
  (288, 28800, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Vigoroth - Earthquake - TM26
  (288, 28800, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Vigoroth - Return - TM27
  (288, 28800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Vigoroth - Shadow Ball - TM30
  (288, 28800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Vigoroth - Brick Break - TM31
  (288, 28800, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Vigoroth - Double Team - TM32
  (288, 28800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Vigoroth - Shock Wave - TM34
  (288, 28800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Vigoroth - Flamethrower - TM35
  (288, 28800, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 35),
  -- Vigoroth - Fire Blast - TM38
  (288, 28800, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 36),
  -- Vigoroth - Rock Tomb - TM39
  (288, 28800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 37),
  -- Vigoroth - Aerial Ace - TM40
  (288, 28800, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 38),
  -- Vigoroth - Facade - TM42
  (288, 28800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 39),
  -- Vigoroth - Secret Power - TM43
  (288, 28800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 40),
  -- Vigoroth - Rest - TM44
  (288, 28800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 41),
  -- Vigoroth - Attract - TM45
  (288, 28800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 42),
  -- Vigoroth - Focus Blast - TM52
  (288, 28800, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 43),
  -- Vigoroth - Fling - TM56
  (288, 28800, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 44),
  -- Vigoroth - Endure - TM58
  (288, 28800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 45),
  -- Vigoroth - Shadow Claw - TM65
  (288, 28800, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 46),
  -- Vigoroth - Captivate - TM78
  (288, 28800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 47),
  -- Vigoroth - Rock Slide - TM80
  (288, 28800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 48),
  -- Vigoroth - Sleep Talk - TM82
  (288, 28800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Vigoroth - Natural Gift - TM83
  (288, 28800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Vigoroth - Swagger - TM87
  (288, 28800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Vigoroth - Substitute - TM90
  (288, 28800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Vigoroth - Cut - HM01
  (288, 28800, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 53),
  -- Vigoroth - Strength - HM04
  (288, 28800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 54),
  -- Vigoroth - Rock Smash - HM06
  (288, 28800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 55),
  -- Vigoroth - Rock Climb - HM08
  (288, 28800, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 56),
  -- Vigoroth - Fire Punch - Tutor
  (288, 28800, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Vigoroth - Ice Punch - Tutor
  (288, 28800, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Vigoroth - Thunder Punch - Tutor
  (288, 28800, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Vigoroth - Mud-Slap - Tutor
  (288, 28800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Vigoroth - Icy Wind - Tutor
  (288, 28800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Vigoroth - Fury Cutter - Tutor
  (288, 28800, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Vigoroth - Uproar - Tutor
  (288, 28800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Vigoroth - Sucker Punch - Tutor
  (288, 28800, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Vigoroth - Gunk Shot - Tutor
  (288, 28800, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Slaking - Scratch - Level 1
  (289, 28900, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slaking - Encore - Level 1
  (289, 28900, 227, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slaking - Yawn - Level 1
  (289, 28900, 281, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slaking - Slack Off - Level 1
  (289, 28900, 303, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slaking - Encore - Level 7
  (289, 28900, 227, 9, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Slaking - Slack Off - Level 13
  (289, 28900, 303, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Slaking - Feint Attack - Level 19
  (289, 28900, 185, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Slaking - Amnesia - Level 25
  (289, 28900, 133, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Slaking - Covet - Level 31
  (289, 28900, 343, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Slaking - Swagger - Level 36
  (289, 28900, 207, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Slaking - Counter - Level 37
  (289, 28900, 68, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Slaking - Flail - Level 43
  (289, 28900, 175, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Slaking - Fling - Level 49
  (289, 28900, 374, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Slaking - Punishment - Level 55
  (289, 28900, 386, 9, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Slaking - Hammer Arm - Level 61
  (289, 28900, 359, 9, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Slaking - Focus Punch - TM01
  (289, 28900, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Slaking - Water Pulse - TM03
  (289, 28900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Slaking - Roar - TM05
  (289, 28900, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Slaking - Toxic - TM06
  (289, 28900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Slaking - Bulk Up - TM08
  (289, 28900, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 20),
  -- Slaking - Hidden Power - TM10
  (289, 28900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Slaking - Sunny Day - TM11
  (289, 28900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Slaking - Taunt - TM12
  (289, 28900, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 23),
  -- Slaking - Ice Beam - TM13
  (289, 28900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 24),
  -- Slaking - Blizzard - TM14
  (289, 28900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 25),
  -- Slaking - Hyper Beam - TM15
  (289, 28900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 26),
  -- Slaking - Protect - TM17
  (289, 28900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 27),
  -- Slaking - Rain Dance - TM18
  (289, 28900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 28),
  -- Slaking - Frustration - TM21
  (289, 28900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 29),
  -- Slaking - Solar Beam - TM22
  (289, 28900, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 30),
  -- Slaking - Thunderbolt - TM24
  (289, 28900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 31),
  -- Slaking - Thunder - TM25
  (289, 28900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 32),
  -- Slaking - Earthquake - TM26
  (289, 28900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 33),
  -- Slaking - Return - TM27
  (289, 28900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 34),
  -- Slaking - Shadow Ball - TM30
  (289, 28900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 35),
  -- Slaking - Brick Break - TM31
  (289, 28900, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 36),
  -- Slaking - Double Team - TM32
  (289, 28900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 37),
  -- Slaking - Shock Wave - TM34
  (289, 28900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 38),
  -- Slaking - Flamethrower - TM35
  (289, 28900, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 39),
  -- Slaking - Fire Blast - TM38
  (289, 28900, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 40),
  -- Slaking - Rock Tomb - TM39
  (289, 28900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 41),
  -- Slaking - Aerial Ace - TM40
  (289, 28900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 42),
  -- Slaking - Facade - TM42
  (289, 28900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 43),
  -- Slaking - Secret Power - TM43
  (289, 28900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 44),
  -- Slaking - Rest - TM44
  (289, 28900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 45),
  -- Slaking - Attract - TM45
  (289, 28900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 46),
  -- Slaking - Focus Blast - TM52
  (289, 28900, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 47),
  -- Slaking - Fling - TM56
  (289, 28900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 48),
  -- Slaking - Endure - TM58
  (289, 28900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 49),
  -- Slaking - Shadow Claw - TM65
  (289, 28900, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 50),
  -- Slaking - Giga Impact - TM68
  (289, 28900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 51),
  -- Slaking - Captivate - TM78
  (289, 28900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 52),
  -- Slaking - Rock Slide - TM80
  (289, 28900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 53),
  -- Slaking - Sleep Talk - TM82
  (289, 28900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 54),
  -- Slaking - Natural Gift - TM83
  (289, 28900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 55),
  -- Slaking - Swagger - TM87
  (289, 28900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 56),
  -- Slaking - Substitute - TM90
  (289, 28900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 57),
  -- Slaking - Cut - HM01
  (289, 28900, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 58),
  -- Slaking - Strength - HM04
  (289, 28900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 59),
  -- Slaking - Rock Smash - HM06
  (289, 28900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 60),
  -- Slaking - Rock Climb - HM08
  (289, 28900, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 61),
  -- Slaking - Fire Punch - Tutor
  (289, 28900, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Slaking - Ice Punch - Tutor
  (289, 28900, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Slaking - Thunder Punch - Tutor
  (289, 28900, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Slaking - Snore - Tutor
  (289, 28900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Slaking - Mud-Slap - Tutor
  (289, 28900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Slaking - Icy Wind - Tutor
  (289, 28900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Slaking - Fury Cutter - Tutor
  (289, 28900, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Slaking - Sucker Punch - Tutor
  (289, 28900, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Slaking - Gunk Shot - Tutor
  (289, 28900, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Nincada - Scratch - Level 1
  (290, 29000, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nincada - Harden - Level 1
  (290, 29000, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nincada - Leech Life - Level 5
  (290, 29000, 141, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nincada - Sand Attack - Level 9
  (290, 29000, 28, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nincada - Fury Swipes - Level 14
  (290, 29000, 154, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Nincada - Mind Reader - Level 19
  (290, 29000, 170, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Nincada - False Swipe - Level 25
  (290, 29000, 206, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nincada - Mud-Slap - Level 31
  (290, 29000, 189, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Nincada - Metal Claw - Level 38
  (290, 29000, 232, 9, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Nincada - Dig - Level 45
  (290, 29000, 91, 9, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Nincada - Toxic - TM06
  (290, 29000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 11),
  -- Nincada - Hidden Power - TM10
  (290, 29000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 12),
  -- Nincada - Sunny Day - TM11
  (290, 29000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 13),
  -- Nincada - Protect - TM17
  (290, 29000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 14),
  -- Nincada - Giga Drain - TM19
  (290, 29000, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 15),
  -- Nincada - Frustration - TM21
  (290, 29000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 16),
  -- Nincada - Solar Beam - TM22
  (290, 29000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 17),
  -- Nincada - Return - TM27
  (290, 29000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 18),
  -- Nincada - Dig - TM28
  (290, 29000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 19),
  -- Nincada - Shadow Ball - TM30
  (290, 29000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 20),
  -- Nincada - Double Team - TM32
  (290, 29000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 21),
  -- Nincada - Sandstorm - TM37
  (290, 29000, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 22),
  -- Nincada - Aerial Ace - TM40
  (290, 29000, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 23),
  -- Nincada - Facade - TM42
  (290, 29000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Nincada - Secret Power - TM43
  (290, 29000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Nincada - Rest - TM44
  (290, 29000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Nincada - False Swipe - TM54
  (290, 29000, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 27),
  -- Nincada - Endure - TM58
  (290, 29000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 28),
  -- Nincada - Flash - TM70
  (290, 29000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 29),
  -- Nincada - X-Scissor - TM81
  (290, 29000, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 30),
  -- Nincada - Sleep Talk - TM82
  (290, 29000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 31),
  -- Nincada - Natural Gift - TM83
  (290, 29000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 32),
  -- Nincada - Swagger - TM87
  (290, 29000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 33),
  -- Nincada - Substitute - TM90
  (290, 29000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 34),
  -- Nincada - Cut - HM01
  (290, 29000, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 35),
  -- Nincada - Gust - Egg
  (290, 29000, 16, 9, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Nincada - Feint Attack - Egg
  (290, 29000, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Nincada - Endure - Egg
  (290, 29000, 203, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Nincada - Silver Wind - Egg
  (290, 29000, 318, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Nincada - Night Slash - Egg
  (290, 29000, 400, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Nincada - Bug Buzz - Egg
  (290, 29000, 405, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Nincada - Bug Bite - Egg
  (290, 29000, 450, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nincada - Snore - Tutor
  (290, 29000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Nincada - Spite - Tutor
  (290, 29000, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Nincada - Mud-Slap - Tutor
  (290, 29000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Nincada - Fury Cutter - Tutor
  (290, 29000, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Ninjask - Scratch - Level 1
  (291, 29100, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninjask - Sand Attack - Level 1
  (291, 29100, 28, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninjask - Harden - Level 1
  (291, 29100, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninjask - Leech Life - Level 1
  (291, 29100, 141, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninjask - Bug Bite - Level 1
  (291, 29100, 450, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ninjask - Leech Life - Level 5
  (291, 29100, 141, 9, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Ninjask - Sand Attack - Level 9
  (291, 29100, 28, 9, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Ninjask - Fury Swipes - Level 14
  (291, 29100, 154, 9, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Ninjask - Mind Reader - Level 19
  (291, 29100, 170, 9, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Ninjask - Screech - Level 20
  (291, 29100, 103, 9, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Ninjask - Double Team - Level 20
  (291, 29100, 104, 9, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Ninjask - Fury Cutter - Level 20
  (291, 29100, 210, 9, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Ninjask - Swords Dance - Level 25
  (291, 29100, 14, 9, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Ninjask - Slash - Level 31
  (291, 29100, 163, 9, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Ninjask - Agility - Level 38
  (291, 29100, 97, 9, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Ninjask - Baton Pass - Level 45
  (291, 29100, 226, 9, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Ninjask - X-Scissor - Level 52
  (291, 29100, 404, 9, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Ninjask - Toxic - TM06
  (291, 29100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Ninjask - Hidden Power - TM10
  (291, 29100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Ninjask - Sunny Day - TM11
  (291, 29100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Ninjask - Hyper Beam - TM15
  (291, 29100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Ninjask - Protect - TM17
  (291, 29100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Ninjask - Giga Drain - TM19
  (291, 29100, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 23),
  -- Ninjask - Frustration - TM21
  (291, 29100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Ninjask - Solar Beam - TM22
  (291, 29100, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Ninjask - Return - TM27
  (291, 29100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Ninjask - Dig - TM28
  (291, 29100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 27),
  -- Ninjask - Shadow Ball - TM30
  (291, 29100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 28),
  -- Ninjask - Double Team - TM32
  (291, 29100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Ninjask - Sandstorm - TM37
  (291, 29100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 30),
  -- Ninjask - Aerial Ace - TM40
  (291, 29100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 31),
  -- Ninjask - Facade - TM42
  (291, 29100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Ninjask - Secret Power - TM43
  (291, 29100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Ninjask - Rest - TM44
  (291, 29100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Ninjask - Attract - TM45
  (291, 29100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Ninjask - Thief - TM46
  (291, 29100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 36),
  -- Ninjask - Roost - TM51
  (291, 29100, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 37),
  -- Ninjask - False Swipe - TM54
  (291, 29100, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 38),
  -- Ninjask - Endure - TM58
  (291, 29100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Ninjask - Silver Wind - TM62
  (291, 29100, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 40),
  -- Ninjask - Giga Impact - TM68
  (291, 29100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Ninjask - Flash - TM70
  (291, 29100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 42),
  -- Ninjask - Swords Dance - TM75
  (291, 29100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 43),
  -- Ninjask - Captivate - TM78
  (291, 29100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Ninjask - X-Scissor - TM81
  (291, 29100, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 45),
  -- Ninjask - Sleep Talk - TM82
  (291, 29100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Ninjask - Natural Gift - TM83
  (291, 29100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Ninjask - Swagger - TM87
  (291, 29100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 48),
  -- Ninjask - U-turn - TM89
  (291, 29100, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 49),
  -- Ninjask - Substitute - TM90
  (291, 29100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Ninjask - Cut - HM01
  (291, 29100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 51),
  -- Ninjask - Defog - HM05
  (291, 29100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 52),
  -- Ninjask - Swift - Tutor
  (291, 29100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Ninjask - Snore - Tutor
  (291, 29100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Ninjask - Spite - Tutor
  (291, 29100, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Ninjask - Mud-Slap - Tutor
  (291, 29100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Ninjask - Fury Cutter - Tutor
  (291, 29100, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Ninjask - Uproar - Tutor
  (291, 29100, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Ninjask - Air Cutter - Tutor
  (291, 29100, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Ninjask - Ominous Wind - Tutor
  (291, 29100, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Shedinja - Scratch - Level 1
  (292, 29200, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shedinja - Harden - Level 1
  (292, 29200, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shedinja - Leech Life - Level 5
  (292, 29200, 141, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shedinja - Sand Attack - Level 9
  (292, 29200, 28, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Shedinja - Fury Swipes - Level 14
  (292, 29200, 154, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Shedinja - Mind Reader - Level 19
  (292, 29200, 170, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shedinja - Spite - Level 25
  (292, 29200, 180, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shedinja - Confuse Ray - Level 31
  (292, 29200, 109, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Shedinja - Shadow Sneak - Level 38
  (292, 29200, 425, 9, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Shedinja - Grudge - Level 45
  (292, 29200, 288, 9, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Shedinja - Heal Block - Level 52
  (292, 29200, 377, 9, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Shedinja - Shadow Ball - Level 59
  (292, 29200, 247, 9, NULL, 1, 59, NULL, NULL, NULL, 12),
  -- Shedinja - Toxic - TM06
  (292, 29200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Shedinja - Hidden Power - TM10
  (292, 29200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Shedinja - Sunny Day - TM11
  (292, 29200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Shedinja - Hyper Beam - TM15
  (292, 29200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 16),
  -- Shedinja - Protect - TM17
  (292, 29200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Shedinja - Giga Drain - TM19
  (292, 29200, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 18),
  -- Shedinja - Frustration - TM21
  (292, 29200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Shedinja - Solar Beam - TM22
  (292, 29200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 20),
  -- Shedinja - Return - TM27
  (292, 29200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 21),
  -- Shedinja - Dig - TM28
  (292, 29200, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 22),
  -- Shedinja - Shadow Ball - TM30
  (292, 29200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Shedinja - Double Team - TM32
  (292, 29200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Shedinja - Sandstorm - TM37
  (292, 29200, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 25),
  -- Shedinja - Aerial Ace - TM40
  (292, 29200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 26),
  -- Shedinja - Facade - TM42
  (292, 29200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Shedinja - Secret Power - TM43
  (292, 29200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Shedinja - Rest - TM44
  (292, 29200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Shedinja - Thief - TM46
  (292, 29200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Shedinja - False Swipe - TM54
  (292, 29200, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 31),
  -- Shedinja - Endure - TM58
  (292, 29200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Shedinja - Will-O-Wisp - TM61
  (292, 29200, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 33),
  -- Shedinja - Shadow Claw - TM65
  (292, 29200, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 34),
  -- Shedinja - Giga Impact - TM68
  (292, 29200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 35),
  -- Shedinja - Flash - TM70
  (292, 29200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 36),
  -- Shedinja - X-Scissor - TM81
  (292, 29200, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 37),
  -- Shedinja - Sleep Talk - TM82
  (292, 29200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Shedinja - Natural Gift - TM83
  (292, 29200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Shedinja - Dream Eater - TM85
  (292, 29200, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 40),
  -- Shedinja - Swagger - TM87
  (292, 29200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Shedinja - Substitute - TM90
  (292, 29200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Shedinja - Cut - HM01
  (292, 29200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 43),
  -- Shedinja - Snore - Tutor
  (292, 29200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Shedinja - Spite - Tutor
  (292, 29200, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Shedinja - Mud-Slap - Tutor
  (292, 29200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Shedinja - Fury Cutter - Tutor
  (292, 29200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Shedinja - Trick - Tutor
  (292, 29200, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Shedinja - Sucker Punch - Tutor
  (292, 29200, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Whismur - Pound - Level 1
  (293, 29300, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whismur - Uproar - Level 5
  (293, 29300, 253, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Whismur - Astonish - Level 11
  (293, 29300, 310, 9, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Whismur - Howl - Level 15
  (293, 29300, 336, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Whismur - Supersonic - Level 21
  (293, 29300, 48, 9, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Whismur - Stomp - Level 25
  (293, 29300, 23, 9, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Whismur - Screech - Level 31
  (293, 29300, 103, 9, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Whismur - Roar - Level 35
  (293, 29300, 46, 9, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Whismur - Rest - Level 41
  (293, 29300, 156, 9, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Whismur - Sleep Talk - Level 41
  (293, 29300, 214, 9, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Whismur - Hyper Voice - Level 45
  (293, 29300, 304, 9, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Whismur - Water Pulse - TM03
  (293, 29300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 12),
  -- Whismur - Roar - TM05
  (293, 29300, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 13),
  -- Whismur - Toxic - TM06
  (293, 29300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Whismur - Hidden Power - TM10
  (293, 29300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Whismur - Sunny Day - TM11
  (293, 29300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Whismur - Ice Beam - TM13
  (293, 29300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Whismur - Blizzard - TM14
  (293, 29300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Whismur - Protect - TM17
  (293, 29300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Whismur - Rain Dance - TM18
  (293, 29300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Whismur - Frustration - TM21
  (293, 29300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Whismur - Solar Beam - TM22
  (293, 29300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 22),
  -- Whismur - Return - TM27
  (293, 29300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Whismur - Shadow Ball - TM30
  (293, 29300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 24),
  -- Whismur - Double Team - TM32
  (293, 29300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Whismur - Shock Wave - TM34
  (293, 29300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 26),
  -- Whismur - Flamethrower - TM35
  (293, 29300, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 27),
  -- Whismur - Fire Blast - TM38
  (293, 29300, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 28),
  -- Whismur - Facade - TM42
  (293, 29300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Whismur - Secret Power - TM43
  (293, 29300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Whismur - Rest - TM44
  (293, 29300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Whismur - Attract - TM45
  (293, 29300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Whismur - Fling - TM56
  (293, 29300, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 33),
  -- Whismur - Endure - TM58
  (293, 29300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Whismur - Captivate - TM78
  (293, 29300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 35),
  -- Whismur - Sleep Talk - TM82
  (293, 29300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 36),
  -- Whismur - Natural Gift - TM83
  (293, 29300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 37),
  -- Whismur - Swagger - TM87
  (293, 29300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Whismur - Substitute - TM90
  (293, 29300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Whismur - Take Down - Egg
  (293, 29300, 36, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Whismur - Smokescreen - Egg
  (293, 29300, 108, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Whismur - Snore - Egg
  (293, 29300, 173, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Whismur - Swagger - Egg
  (293, 29300, 207, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Whismur - Smelling Salts - Egg
  (293, 29300, 265, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Whismur - Endeavor - Egg
  (293, 29300, 283, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Whismur - Extrasensory - Egg
  (293, 29300, 326, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Whismur - Fire Punch - Tutor
  (293, 29300, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Whismur - Ice Punch - Tutor
  (293, 29300, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Whismur - Thunder Punch - Tutor
  (293, 29300, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Whismur - Snore - Tutor
  (293, 29300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Whismur - Mud-Slap - Tutor
  (293, 29300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Whismur - Icy Wind - Tutor
  (293, 29300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Whismur - Rollout - Tutor
  (293, 29300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Whismur - Uproar - Tutor
  (293, 29300, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Whismur - Zen Headbutt - Tutor
  (293, 29300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Loudred - Pound - Level 1
  (294, 29400, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Loudred - Uproar - Level 1
  (294, 29400, 253, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Loudred - Astonish - Level 1
  (294, 29400, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Loudred - Howl - Level 1
  (294, 29400, 336, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Loudred - Uproar - Level 5
  (294, 29400, 253, 9, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Loudred - Astonish - Level 11
  (294, 29400, 310, 9, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Loudred - Howl - Level 15
  (294, 29400, 336, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Loudred - Bite - Level 20
  (294, 29400, 44, 9, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Loudred - Supersonic - Level 23
  (294, 29400, 48, 9, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Loudred - Stomp - Level 29
  (294, 29400, 23, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Loudred - Screech - Level 37
  (294, 29400, 103, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Loudred - Roar - Level 43
  (294, 29400, 46, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Loudred - Rest - Level 51
  (294, 29400, 156, 9, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Loudred - Sleep Talk - Level 51
  (294, 29400, 214, 9, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Loudred - Hyper Voice - Level 57
  (294, 29400, 304, 9, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Loudred - Water Pulse - TM03
  (294, 29400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Loudred - Roar - TM05
  (294, 29400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Loudred - Toxic - TM06
  (294, 29400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Loudred - Hidden Power - TM10
  (294, 29400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Loudred - Sunny Day - TM11
  (294, 29400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Loudred - Taunt - TM12
  (294, 29400, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 21),
  -- Loudred - Ice Beam - TM13
  (294, 29400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Loudred - Blizzard - TM14
  (294, 29400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Loudred - Protect - TM17
  (294, 29400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Loudred - Rain Dance - TM18
  (294, 29400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Loudred - Frustration - TM21
  (294, 29400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Loudred - Solar Beam - TM22
  (294, 29400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Loudred - Earthquake - TM26
  (294, 29400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Loudred - Return - TM27
  (294, 29400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Loudred - Shadow Ball - TM30
  (294, 29400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Loudred - Brick Break - TM31
  (294, 29400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 31),
  -- Loudred - Double Team - TM32
  (294, 29400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Loudred - Shock Wave - TM34
  (294, 29400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Loudred - Flamethrower - TM35
  (294, 29400, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 34),
  -- Loudred - Fire Blast - TM38
  (294, 29400, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 35),
  -- Loudred - Rock Tomb - TM39
  (294, 29400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Loudred - Torment - TM41
  (294, 29400, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 37),
  -- Loudred - Facade - TM42
  (294, 29400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Loudred - Secret Power - TM43
  (294, 29400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Loudred - Rest - TM44
  (294, 29400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Loudred - Attract - TM45
  (294, 29400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 41),
  -- Loudred - Overheat - TM50
  (294, 29400, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 42),
  -- Loudred - Fling - TM56
  (294, 29400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 43),
  -- Loudred - Endure - TM58
  (294, 29400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Loudred - Captivate - TM78
  (294, 29400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 45),
  -- Loudred - Rock Slide - TM80
  (294, 29400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 46),
  -- Loudred - Sleep Talk - TM82
  (294, 29400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Loudred - Natural Gift - TM83
  (294, 29400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Loudred - Swagger - TM87
  (294, 29400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Loudred - Substitute - TM90
  (294, 29400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Loudred - Strength - HM04
  (294, 29400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 51),
  -- Loudred - Rock Smash - HM06
  (294, 29400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 52),
  -- Loudred - Fire Punch - Tutor
  (294, 29400, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Loudred - Ice Punch - Tutor
  (294, 29400, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Loudred - Thunder Punch - Tutor
  (294, 29400, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Loudred - Snore - Tutor
  (294, 29400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Loudred - Mud-Slap - Tutor
  (294, 29400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Loudred - Icy Wind - Tutor
  (294, 29400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Loudred - Rollout - Tutor
  (294, 29400, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Loudred - Uproar - Tutor
  (294, 29400, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Loudred - Zen Headbutt - Tutor
  (294, 29400, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Exploud - Pound - Level 1
  (295, 29500, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exploud - Uproar - Level 1
  (295, 29500, 253, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exploud - Astonish - Level 1
  (295, 29500, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exploud - Howl - Level 1
  (295, 29500, 336, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exploud - Thunder Fang - Level 1
  (295, 29500, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exploud - Ice Fang - Level 1
  (295, 29500, 423, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Exploud - Fire Fang - Level 1
  (295, 29500, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Exploud - Uproar - Level 5
  (295, 29500, 253, 9, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Exploud - Astonish - Level 11
  (295, 29500, 310, 9, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Exploud - Howl - Level 15
  (295, 29500, 336, 9, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Exploud - Bite - Level 20
  (295, 29500, 44, 9, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Exploud - Supersonic - Level 23
  (295, 29500, 48, 9, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Exploud - Stomp - Level 29
  (295, 29500, 23, 9, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Exploud - Screech - Level 37
  (295, 29500, 103, 9, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Exploud - Crunch - Level 40
  (295, 29500, 242, 9, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Exploud - Roar - Level 45
  (295, 29500, 46, 9, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Exploud - Rest - Level 55
  (295, 29500, 156, 9, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Exploud - Sleep Talk - Level 55
  (295, 29500, 214, 9, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Exploud - Hyper Voice - Level 63
  (295, 29500, 304, 9, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Exploud - Hyper Beam - Level 71
  (295, 29500, 63, 9, NULL, 1, 71, NULL, NULL, NULL, 20),
  -- Exploud - Water Pulse - TM03
  (295, 29500, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 21),
  -- Exploud - Roar - TM05
  (295, 29500, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 22),
  -- Exploud - Toxic - TM06
  (295, 29500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 23),
  -- Exploud - Hidden Power - TM10
  (295, 29500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 24),
  -- Exploud - Sunny Day - TM11
  (295, 29500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 25),
  -- Exploud - Taunt - TM12
  (295, 29500, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 26),
  -- Exploud - Ice Beam - TM13
  (295, 29500, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 27),
  -- Exploud - Blizzard - TM14
  (295, 29500, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 28),
  -- Exploud - Hyper Beam - TM15
  (295, 29500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 29),
  -- Exploud - Protect - TM17
  (295, 29500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 30),
  -- Exploud - Rain Dance - TM18
  (295, 29500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 31),
  -- Exploud - Frustration - TM21
  (295, 29500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 32),
  -- Exploud - Solar Beam - TM22
  (295, 29500, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 33),
  -- Exploud - Earthquake - TM26
  (295, 29500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 34),
  -- Exploud - Return - TM27
  (295, 29500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 35),
  -- Exploud - Shadow Ball - TM30
  (295, 29500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 36),
  -- Exploud - Brick Break - TM31
  (295, 29500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 37),
  -- Exploud - Double Team - TM32
  (295, 29500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 38),
  -- Exploud - Shock Wave - TM34
  (295, 29500, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 39),
  -- Exploud - Flamethrower - TM35
  (295, 29500, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 40),
  -- Exploud - Fire Blast - TM38
  (295, 29500, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 41),
  -- Exploud - Rock Tomb - TM39
  (295, 29500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 42),
  -- Exploud - Torment - TM41
  (295, 29500, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 43),
  -- Exploud - Facade - TM42
  (295, 29500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 44),
  -- Exploud - Secret Power - TM43
  (295, 29500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 45),
  -- Exploud - Rest - TM44
  (295, 29500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 46),
  -- Exploud - Attract - TM45
  (295, 29500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 47),
  -- Exploud - Overheat - TM50
  (295, 29500, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 48),
  -- Exploud - Focus Blast - TM52
  (295, 29500, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 49),
  -- Exploud - Fling - TM56
  (295, 29500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 50),
  -- Exploud - Endure - TM58
  (295, 29500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 51),
  -- Exploud - Giga Impact - TM68
  (295, 29500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 52),
  -- Exploud - Avalanche - TM72
  (295, 29500, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 53),
  -- Exploud - Captivate - TM78
  (295, 29500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 54),
  -- Exploud - Rock Slide - TM80
  (295, 29500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 55),
  -- Exploud - Sleep Talk - TM82
  (295, 29500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 56),
  -- Exploud - Natural Gift - TM83
  (295, 29500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 57),
  -- Exploud - Swagger - TM87
  (295, 29500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 58),
  -- Exploud - Substitute - TM90
  (295, 29500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 59),
  -- Exploud - Surf - HM03
  (295, 29500, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 60),
  -- Exploud - Strength - HM04
  (295, 29500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 61),
  -- Exploud - Defog - HM05
  (295, 29500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 62),
  -- Exploud - Rock Smash - HM06
  (295, 29500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 63),
  -- Exploud - Rock Climb - HM08
  (295, 29500, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 64),
  -- Exploud - Fire Punch - Tutor
  (295, 29500, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Exploud - Ice Punch - Tutor
  (295, 29500, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Exploud - Thunder Punch - Tutor
  (295, 29500, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Exploud - Snore - Tutor
  (295, 29500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Exploud - Mud-Slap - Tutor
  (295, 29500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Exploud - Icy Wind - Tutor
  (295, 29500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Exploud - Outrage - Tutor
  (295, 29500, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Exploud - Rollout - Tutor
  (295, 29500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Exploud - Uproar - Tutor
  (295, 29500, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Exploud - Zen Headbutt - Tutor
  (295, 29500, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Makuhita - Tackle - Level 1
  (296, 29600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Makuhita - Focus Energy - Level 1
  (296, 29600, 116, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Makuhita - Sand Attack - Level 4
  (296, 29600, 28, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Makuhita - Arm Thrust - Level 7
  (296, 29600, 292, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Makuhita - Vital Throw - Level 10
  (296, 29600, 233, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Makuhita - Fake Out - Level 13
  (296, 29600, 252, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Makuhita - Whirlwind - Level 16
  (296, 29600, 18, 9, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Makuhita - Knock Off - Level 19
  (296, 29600, 282, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Makuhita - Smelling Salts - Level 22
  (296, 29600, 265, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Makuhita - Belly Drum - Level 25
  (296, 29600, 187, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Makuhita - Force Palm - Level 28
  (296, 29600, 395, 9, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Makuhita - Seismic Toss - Level 31
  (296, 29600, 69, 9, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Makuhita - Wake-Up Slap - Level 34
  (296, 29600, 358, 9, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Makuhita - Endure - Level 37
  (296, 29600, 203, 9, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Makuhita - Close Combat - Level 40
  (296, 29600, 370, 9, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Makuhita - Reversal - Level 43
  (296, 29600, 179, 9, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Makuhita - Focus Punch - TM01
  (296, 29600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Makuhita - Toxic - TM06
  (296, 29600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Makuhita - Bulk Up - TM08
  (296, 29600, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 19),
  -- Makuhita - Hidden Power - TM10
  (296, 29600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Makuhita - Sunny Day - TM11
  (296, 29600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Makuhita - Protect - TM17
  (296, 29600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Makuhita - Rain Dance - TM18
  (296, 29600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Makuhita - Frustration - TM21
  (296, 29600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Makuhita - Earthquake - TM26
  (296, 29600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 25),
  -- Makuhita - Return - TM27
  (296, 29600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Makuhita - Dig - TM28
  (296, 29600, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 27),
  -- Makuhita - Brick Break - TM31
  (296, 29600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 28),
  -- Makuhita - Double Team - TM32
  (296, 29600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Makuhita - Rock Tomb - TM39
  (296, 29600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 30),
  -- Makuhita - Facade - TM42
  (296, 29600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Makuhita - Secret Power - TM43
  (296, 29600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Makuhita - Rest - TM44
  (296, 29600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Makuhita - Attract - TM45
  (296, 29600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Makuhita - Focus Blast - TM52
  (296, 29600, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 35),
  -- Makuhita - Fling - TM56
  (296, 29600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Makuhita - Endure - TM58
  (296, 29600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Makuhita - Captivate - TM78
  (296, 29600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Makuhita - Rock Slide - TM80
  (296, 29600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 39),
  -- Makuhita - Sleep Talk - TM82
  (296, 29600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Makuhita - Natural Gift - TM83
  (296, 29600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Makuhita - Poison Jab - TM84
  (296, 29600, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 42),
  -- Makuhita - Swagger - TM87
  (296, 29600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Makuhita - Substitute - TM90
  (296, 29600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Makuhita - Surf - HM03
  (296, 29600, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 45),
  -- Makuhita - Strength - HM04
  (296, 29600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Makuhita - Defog - HM05
  (296, 29600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Makuhita - Rock Smash - HM06
  (296, 29600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Makuhita - Rock Climb - HM08
  (296, 29600, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 49),
  -- Makuhita - Counter - Egg
  (296, 29600, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Makuhita - Feint Attack - Egg
  (296, 29600, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Makuhita - Foresight - Egg
  (296, 29600, 193, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Makuhita - Detect - Egg
  (296, 29600, 197, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Makuhita - Dynamic Punch - Egg
  (296, 29600, 223, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Makuhita - Cross Chop - Egg
  (296, 29600, 238, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Makuhita - Helping Hand - Egg
  (296, 29600, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Makuhita - Revenge - Egg
  (296, 29600, 279, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Makuhita - Wake-Up Slap - Egg
  (296, 29600, 358, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Makuhita - Bullet Punch - Egg
  (296, 29600, 418, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Makuhita - Fire Punch - Tutor
  (296, 29600, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Makuhita - Ice Punch - Tutor
  (296, 29600, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Makuhita - Thunder Punch - Tutor
  (296, 29600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Makuhita - Snore - Tutor
  (296, 29600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Makuhita - Mud-Slap - Tutor
  (296, 29600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Makuhita - Helping Hand - Tutor
  (296, 29600, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Makuhita - Superpower - Tutor
  (296, 29600, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Makuhita - Knock Off - Tutor
  (296, 29600, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Makuhita - Vacuum Wave - Tutor
  (296, 29600, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Hariyama - Sand Attack - Level 1
  (297, 29700, 28, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hariyama - Tackle - Level 1
  (297, 29700, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hariyama - Focus Energy - Level 1
  (297, 29700, 116, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hariyama - Arm Thrust - Level 1
  (297, 29700, 292, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hariyama - Brine - Level 1
  (297, 29700, 362, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hariyama - Sand Attack - Level 4
  (297, 29700, 28, 9, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Hariyama - Arm Thrust - Level 7
  (297, 29700, 292, 9, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Hariyama - Vital Throw - Level 10
  (297, 29700, 233, 9, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Hariyama - Fake Out - Level 13
  (297, 29700, 252, 9, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Hariyama - Whirlwind - Level 16
  (297, 29700, 18, 9, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Hariyama - Knock Off - Level 19
  (297, 29700, 282, 9, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Hariyama - Smelling Salts - Level 22
  (297, 29700, 265, 9, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Hariyama - Belly Drum - Level 27
  (297, 29700, 187, 9, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Hariyama - Force Palm - Level 32
  (297, 29700, 395, 9, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Hariyama - Seismic Toss - Level 37
  (297, 29700, 69, 9, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Hariyama - Wake-Up Slap - Level 42
  (297, 29700, 358, 9, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Hariyama - Endure - Level 47
  (297, 29700, 203, 9, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Hariyama - Close Combat - Level 52
  (297, 29700, 370, 9, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Hariyama - Reversal - Level 57
  (297, 29700, 179, 9, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Hariyama - Focus Punch - TM01
  (297, 29700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 20),
  -- Hariyama - Toxic - TM06
  (297, 29700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 21),
  -- Hariyama - Bulk Up - TM08
  (297, 29700, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 22),
  -- Hariyama - Hidden Power - TM10
  (297, 29700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 23),
  -- Hariyama - Sunny Day - TM11
  (297, 29700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 24),
  -- Hariyama - Hyper Beam - TM15
  (297, 29700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Hariyama - Protect - TM17
  (297, 29700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Hariyama - Rain Dance - TM18
  (297, 29700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Hariyama - Frustration - TM21
  (297, 29700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Hariyama - Earthquake - TM26
  (297, 29700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Hariyama - Return - TM27
  (297, 29700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Hariyama - Dig - TM28
  (297, 29700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 31),
  -- Hariyama - Brick Break - TM31
  (297, 29700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Hariyama - Double Team - TM32
  (297, 29700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Hariyama - Rock Tomb - TM39
  (297, 29700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Hariyama - Facade - TM42
  (297, 29700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Hariyama - Secret Power - TM43
  (297, 29700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Hariyama - Rest - TM44
  (297, 29700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Hariyama - Attract - TM45
  (297, 29700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Hariyama - Focus Blast - TM52
  (297, 29700, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 39),
  -- Hariyama - Brine - TM55
  (297, 29700, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 40),
  -- Hariyama - Fling - TM56
  (297, 29700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 41),
  -- Hariyama - Endure - TM58
  (297, 29700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Hariyama - Payback - TM66
  (297, 29700, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 43),
  -- Hariyama - Giga Impact - TM68
  (297, 29700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 44),
  -- Hariyama - Stone Edge - TM71
  (297, 29700, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 45),
  -- Hariyama - Captivate - TM78
  (297, 29700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Hariyama - Rock Slide - TM80
  (297, 29700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 47),
  -- Hariyama - Sleep Talk - TM82
  (297, 29700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Hariyama - Natural Gift - TM83
  (297, 29700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Hariyama - Poison Jab - TM84
  (297, 29700, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 50),
  -- Hariyama - Swagger - TM87
  (297, 29700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Hariyama - Substitute - TM90
  (297, 29700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Hariyama - Surf - HM03
  (297, 29700, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 53),
  -- Hariyama - Strength - HM04
  (297, 29700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 54),
  -- Hariyama - Defog - HM05
  (297, 29700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 55),
  -- Hariyama - Rock Smash - HM06
  (297, 29700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 56),
  -- Hariyama - Rock Climb - HM08
  (297, 29700, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 57),
  -- Hariyama - Fire Punch - Tutor
  (297, 29700, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Hariyama - Ice Punch - Tutor
  (297, 29700, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Hariyama - Thunder Punch - Tutor
  (297, 29700, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Hariyama - Snore - Tutor
  (297, 29700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Hariyama - Mud-Slap - Tutor
  (297, 29700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Hariyama - Helping Hand - Tutor
  (297, 29700, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Hariyama - Superpower - Tutor
  (297, 29700, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Hariyama - Knock Off - Tutor
  (297, 29700, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Hariyama - Vacuum Wave - Tutor
  (297, 29700, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Hariyama - Iron Head - Tutor
  (297, 29700, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Azurill - Splash - Level 1
  (298, 29800, 150, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azurill - Charm - Level 2
  (298, 29800, 204, 9, NULL, 1, 2, NULL, NULL, NULL, 2),
  -- Azurill - Tail Whip - Level 7
  (298, 29800, 39, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Azurill - Bubble - Level 10
  (298, 29800, 145, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Azurill - Slam - Level 15
  (298, 29800, 21, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Azurill - Water Gun - Level 18
  (298, 29800, 55, 9, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Azurill - Water Pulse - TM03
  (298, 29800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 7),
  -- Azurill - Toxic - TM06
  (298, 29800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 8),
  -- Azurill - Hail - TM07
  (298, 29800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 9),
  -- Azurill - Hidden Power - TM10
  (298, 29800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 10),
  -- Azurill - Ice Beam - TM13
  (298, 29800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 11),
  -- Azurill - Blizzard - TM14
  (298, 29800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 12),
  -- Azurill - Protect - TM17
  (298, 29800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 13),
  -- Azurill - Rain Dance - TM18
  (298, 29800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 14),
  -- Azurill - Frustration - TM21
  (298, 29800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 15),
  -- Azurill - Iron Tail - TM23
  (298, 29800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 16),
  -- Azurill - Return - TM27
  (298, 29800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 17),
  -- Azurill - Double Team - TM32
  (298, 29800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 18),
  -- Azurill - Facade - TM42
  (298, 29800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 19),
  -- Azurill - Secret Power - TM43
  (298, 29800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 20),
  -- Azurill - Rest - TM44
  (298, 29800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 21),
  -- Azurill - Attract - TM45
  (298, 29800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 22),
  -- Azurill - Endure - TM58
  (298, 29800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 23),
  -- Azurill - Captivate - TM78
  (298, 29800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 24),
  -- Azurill - Sleep Talk - TM82
  (298, 29800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 25),
  -- Azurill - Natural Gift - TM83
  (298, 29800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 26),
  -- Azurill - Swagger - TM87
  (298, 29800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 27),
  -- Azurill - Substitute - TM90
  (298, 29800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 28),
  -- Azurill - Surf - HM03
  (298, 29800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 29),
  -- Azurill - Defog - HM05
  (298, 29800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 30),
  -- Azurill - Waterfall - HM07
  (298, 29800, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 31),
  -- Azurill - Slam - Egg
  (298, 29800, 21, 9, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Azurill - Sing - Egg
  (298, 29800, 47, 9, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Azurill - Encore - Egg
  (298, 29800, 227, 9, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Azurill - Refresh - Egg
  (298, 29800, 287, 9, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Azurill - Fake Tears - Egg
  (298, 29800, 313, 9, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Azurill - Tickle - Egg
  (298, 29800, 321, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Azurill - Swift - Tutor
  (298, 29800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 38),
  -- Azurill - Snore - Tutor
  (298, 29800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 39),
  -- Azurill - Mud-Slap - Tutor
  (298, 29800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 40),
  -- Azurill - Icy Wind - Tutor
  (298, 29800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 41),
  -- Azurill - Rollout - Tutor
  (298, 29800, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Azurill - Uproar - Tutor
  (298, 29800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Azurill - Helping Hand - Tutor
  (298, 29800, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Azurill - Knock Off - Tutor
  (298, 29800, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Nosepass - Tackle - Level 1
  (299, 29900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nosepass - Harden - Level 7
  (299, 29900, 106, 9, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Nosepass - Rock Throw - Level 13
  (299, 29900, 88, 9, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Nosepass - Block - Level 19
  (299, 29900, 335, 9, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Nosepass - Thunder Wave - Level 25
  (299, 29900, 86, 9, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Nosepass - Rock Slide - Level 31
  (299, 29900, 157, 9, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Nosepass - Sandstorm - Level 37
  (299, 29900, 201, 9, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Nosepass - Rest - Level 43
  (299, 29900, 156, 9, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Nosepass - Power Gem - Level 49
  (299, 29900, 408, 9, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Nosepass - Discharge - Level 55
  (299, 29900, 435, 9, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Nosepass - Stone Edge - Level 61
  (299, 29900, 444, 9, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Nosepass - Zap Cannon - Level 67
  (299, 29900, 192, 9, NULL, 1, 67, NULL, NULL, NULL, 12),
  -- Nosepass - Lock-On - Level 73
  (299, 29900, 199, 9, NULL, 1, 73, NULL, NULL, NULL, 13),
  -- Nosepass - Earth Power - Level 79
  (299, 29900, 414, 9, NULL, 1, 79, NULL, NULL, NULL, 14),
  -- Nosepass - Toxic - TM06
  (299, 29900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Nosepass - Hidden Power - TM10
  (299, 29900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Nosepass - Sunny Day - TM11
  (299, 29900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Nosepass - Taunt - TM12
  (299, 29900, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 18),
  -- Nosepass - Protect - TM17
  (299, 29900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Nosepass - Frustration - TM21
  (299, 29900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Nosepass - Thunderbolt - TM24
  (299, 29900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 21),
  -- Nosepass - Thunder - TM25
  (299, 29900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 22),
  -- Nosepass - Earthquake - TM26
  (299, 29900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 23),
  -- Nosepass - Return - TM27
  (299, 29900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Nosepass - Double Team - TM32
  (299, 29900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Nosepass - Shock Wave - TM34
  (299, 29900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 26),
  -- Nosepass - Sandstorm - TM37
  (299, 29900, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 27),
  -- Nosepass - Rock Tomb - TM39
  (299, 29900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 28),
  -- Nosepass - Torment - TM41
  (299, 29900, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 29),
  -- Nosepass - Facade - TM42
  (299, 29900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Nosepass - Secret Power - TM43
  (299, 29900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Nosepass - Rest - TM44
  (299, 29900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Nosepass - Attract - TM45
  (299, 29900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Nosepass - Endure - TM58
  (299, 29900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Nosepass - Explosion - TM64
  (299, 29900, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 35),
  -- Nosepass - Rock Polish - TM69
  (299, 29900, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 36),
  -- Nosepass - Stone Edge - TM71
  (299, 29900, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 37),
  -- Nosepass - Thunder Wave - TM73
  (299, 29900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 38),
  -- Nosepass - Stealth Rock - TM76
  (299, 29900, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 39),
  -- Nosepass - Captivate - TM78
  (299, 29900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Nosepass - Rock Slide - TM80
  (299, 29900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 41),
  -- Nosepass - Sleep Talk - TM82
  (299, 29900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Nosepass - Natural Gift - TM83
  (299, 29900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Nosepass - Swagger - TM87
  (299, 29900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Nosepass - Substitute - TM90
  (299, 29900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Nosepass - Strength - HM04
  (299, 29900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Nosepass - Rock Smash - HM06
  (299, 29900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 47),
  -- Nosepass - Double-Edge - Egg
  (299, 29900, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nosepass - Explosion - Egg
  (299, 29900, 153, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nosepass - Rollout - Egg
  (299, 29900, 205, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nosepass - Magnitude - Egg
  (299, 29900, 222, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nosepass - Block - Egg
  (299, 29900, 335, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nosepass - Fire Punch - Tutor
  (299, 29900, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Nosepass - Ice Punch - Tutor
  (299, 29900, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Nosepass - Thunder Punch - Tutor
  (299, 29900, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Nosepass - Snore - Tutor
  (299, 29900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Nosepass - Mud-Slap - Tutor
  (299, 29900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Nosepass - Rollout - Tutor
  (299, 29900, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Nosepass - Ancient Power - Tutor
  (299, 29900, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Nosepass - Iron Defense - Tutor
  (299, 29900, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Nosepass - Magnet Rise - Tutor
  (299, 29900, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Nosepass - Earth Power - Tutor
  (299, 29900, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Skitty - Tackle - Level 1
  (300, 30000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skitty - Tail Whip - Level 1
  (300, 30000, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skitty - Growl - Level 1
  (300, 30000, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skitty - Fake Out - Level 1
  (300, 30000, 252, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skitty - Foresight - Level 4
  (300, 30000, 193, 9, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Skitty - Attract - Level 8
  (300, 30000, 213, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Skitty - Sing - Level 11
  (300, 30000, 47, 9, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Skitty - Double Slap - Level 15
  (300, 30000, 3, 9, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Skitty - Copycat - Level 18
  (300, 30000, 383, 9, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Skitty - Assist - Level 22
  (300, 30000, 274, 9, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Skitty - Charm - Level 25
  (300, 30000, 204, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Skitty - Feint Attack - Level 29
  (300, 30000, 185, 9, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Skitty - Wake-Up Slap - Level 32
  (300, 30000, 358, 9, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Skitty - Covet - Level 36
  (300, 30000, 343, 9, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Skitty - Heal Bell - Level 39
  (300, 30000, 215, 9, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Skitty - Double-Edge - Level 42
  (300, 30000, 38, 9, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Skitty - Captivate - Level 46
  (300, 30000, 445, 9, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Skitty - Water Pulse - TM03
  (300, 30000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Skitty - Calm Mind - TM04
  (300, 30000, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 19),
  -- Skitty - Toxic - TM06
  (300, 30000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Skitty - Hidden Power - TM10
  (300, 30000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Skitty - Sunny Day - TM11
  (300, 30000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Skitty - Ice Beam - TM13
  (300, 30000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Skitty - Blizzard - TM14
  (300, 30000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 24),
  -- Skitty - Protect - TM17
  (300, 30000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Skitty - Rain Dance - TM18
  (300, 30000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Skitty - Safeguard - TM20
  (300, 30000, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 27),
  -- Skitty - Frustration - TM21
  (300, 30000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Skitty - Solar Beam - TM22
  (300, 30000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 29),
  -- Skitty - Iron Tail - TM23
  (300, 30000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 30),
  -- Skitty - Thunderbolt - TM24
  (300, 30000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 31),
  -- Skitty - Thunder - TM25
  (300, 30000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 32),
  -- Skitty - Return - TM27
  (300, 30000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 33),
  -- Skitty - Dig - TM28
  (300, 30000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 34),
  -- Skitty - Shadow Ball - TM30
  (300, 30000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 35),
  -- Skitty - Double Team - TM32
  (300, 30000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 36),
  -- Skitty - Shock Wave - TM34
  (300, 30000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 37),
  -- Skitty - Facade - TM42
  (300, 30000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Skitty - Secret Power - TM43
  (300, 30000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Skitty - Rest - TM44
  (300, 30000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Skitty - Attract - TM45
  (300, 30000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 41),
  -- Skitty - Charge Beam - TM57
  (300, 30000, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 42),
  -- Skitty - Endure - TM58
  (300, 30000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Skitty - Payback - TM66
  (300, 30000, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 44),
  -- Skitty - Flash - TM70
  (300, 30000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 45),
  -- Skitty - Thunder Wave - TM73
  (300, 30000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 46),
  -- Skitty - Psych Up - TM77
  (300, 30000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 47),
  -- Skitty - Captivate - TM78
  (300, 30000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 48),
  -- Skitty - Sleep Talk - TM82
  (300, 30000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Skitty - Natural Gift - TM83
  (300, 30000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Skitty - Dream Eater - TM85
  (300, 30000, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 51),
  -- Skitty - Grass Knot - TM86
  (300, 30000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 52),
  -- Skitty - Swagger - TM87
  (300, 30000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 53),
  -- Skitty - Substitute - TM90
  (300, 30000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 54),
  -- Skitty - Substitute - Egg
  (300, 30000, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skitty - Baton Pass - Egg
  (300, 30000, 226, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skitty - Psych Up - Egg
  (300, 30000, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skitty - Fake Out - Egg
  (300, 30000, 252, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skitty - Uproar - Egg
  (300, 30000, 253, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skitty - Helping Hand - Egg
  (300, 30000, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skitty - Wish - Egg
  (300, 30000, 273, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Skitty - Fake Tears - Egg
  (300, 30000, 313, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Skitty - Tickle - Egg
  (300, 30000, 321, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Skitty - Last Resort - Egg
  (300, 30000, 387, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Skitty - Sucker Punch - Egg
  (300, 30000, 389, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Skitty - Zen Headbutt - Egg
  (300, 30000, 428, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Skitty - Swift - Tutor
  (300, 30000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Skitty - Snore - Tutor
  (300, 30000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Skitty - Mud-Slap - Tutor
  (300, 30000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Skitty - Icy Wind - Tutor
  (300, 30000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Skitty - Rollout - Tutor
  (300, 30000, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Skitty - Helping Hand - Tutor
  (300, 30000, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Skitty - Last Resort - Tutor
  (300, 30000, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Skitty - Sucker Punch - Tutor
  (300, 30000, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Skitty - Zen Headbutt - Tutor
  (300, 30000, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75);
