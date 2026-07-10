-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB Omega Ruby / Alpha Sapphire learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Omega Ruby / Alpha Sapphire learnsets for default forms, species 252-300.
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
  -- Treecko - Pound - Level 1
  (252, 25200, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Treecko - Leer - Level 1
  (252, 25200, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Treecko - Absorb - Level 5
  (252, 25200, 71, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Treecko - Quick Attack - Level 9
  (252, 25200, 98, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Treecko - Mega Drain - Level 13
  (252, 25200, 72, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Treecko - Pursuit - Level 17
  (252, 25200, 228, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Treecko - Giga Drain - Level 21
  (252, 25200, 202, 14, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Treecko - Agility - Level 25
  (252, 25200, 97, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Treecko - Slam - Level 29
  (252, 25200, 21, 14, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Treecko - Detect - Level 33
  (252, 25200, 197, 14, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Treecko - Energy Ball - Level 37
  (252, 25200, 412, 14, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Treecko - Quick Guard - Level 41
  (252, 25200, 501, 14, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Treecko - Endeavor - Level 45
  (252, 25200, 283, 14, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Treecko - Screech - Level 49
  (252, 25200, 103, 14, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Treecko - Toxic - TM06
  (252, 25200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Treecko - Hidden Power - TM10
  (252, 25200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 16),
  -- Treecko - Sunny Day - TM11
  (252, 25200, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 17),
  -- Treecko - Protect - TM17
  (252, 25200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 18),
  -- Treecko - Safeguard - TM20
  (252, 25200, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 19),
  -- Treecko - Frustration - TM21
  (252, 25200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 20),
  -- Treecko - Solar Beam - TM22
  (252, 25200, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 21),
  -- Treecko - Return - TM27
  (252, 25200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 22),
  -- Treecko - Dig - TM28
  (252, 25200, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 23),
  -- Treecko - Brick Break - TM31
  (252, 25200, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 24),
  -- Treecko - Double Team - TM32
  (252, 25200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Treecko - Rock Tomb - TM39
  (252, 25200, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 26),
  -- Treecko - Aerial Ace - TM40
  (252, 25200, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 27),
  -- Treecko - Facade - TM42
  (252, 25200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Treecko - Rest - TM44
  (252, 25200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 29),
  -- Treecko - Attract - TM45
  (252, 25200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 30),
  -- Treecko - Round - TM48
  (252, 25200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 31),
  -- Treecko - Energy Ball - TM53
  (252, 25200, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 32),
  -- Treecko - Fling - TM56
  (252, 25200, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 33),
  -- Treecko - Acrobatics - TM62
  (252, 25200, 512, 14, NULL, 2, NULL, NULL, 14002062, NULL, 34),
  -- Treecko - Flash - TM70
  (252, 25200, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 35),
  -- Treecko - Swords Dance - TM75
  (252, 25200, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 36),
  -- Treecko - Rock Slide - TM80
  (252, 25200, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 37),
  -- Treecko - Grass Knot - TM86
  (252, 25200, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 38),
  -- Treecko - Swagger - TM87
  (252, 25200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 39),
  -- Treecko - Sleep Talk - TM88
  (252, 25200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 40),
  -- Treecko - Substitute - TM90
  (252, 25200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 41),
  -- Treecko - Secret Power - TM94
  (252, 25200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 42),
  -- Treecko - Nature Power - TM96
  (252, 25200, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 43),
  -- Treecko - Power-Up Punch - TM98
  (252, 25200, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 44),
  -- Treecko - Confide - TM100
  (252, 25200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 45),
  -- Treecko - Cut - HM01
  (252, 25200, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 46),
  -- Treecko - Strength - HM04
  (252, 25200, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 47),
  -- Treecko - Rock Smash - HM06
  (252, 25200, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 48),
  -- Treecko - Razor Wind - Egg
  (252, 25200, 13, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Treecko - Double Kick - Egg
  (252, 25200, 24, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Treecko - Leech Seed - Egg
  (252, 25200, 73, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Treecko - Dragon Breath - Egg
  (252, 25200, 225, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Treecko - Synthesis - Egg
  (252, 25200, 235, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Treecko - Crunch - Egg
  (252, 25200, 242, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Treecko - Endeavor - Egg
  (252, 25200, 283, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Treecko - Mud Sport - Egg
  (252, 25200, 300, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Treecko - Crush Claw - Egg
  (252, 25200, 306, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Treecko - Grass Whistle - Egg
  (252, 25200, 320, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Treecko - Bullet Seed - Egg
  (252, 25200, 331, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Treecko - Magical Leaf - Egg
  (252, 25200, 345, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Treecko - Natural Gift - Egg
  (252, 25200, 363, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Treecko - Worry Seed - Egg
  (252, 25200, 388, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Treecko - Leaf Storm - Egg
  (252, 25200, 437, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Treecko - Grassy Terrain - Egg
  (252, 25200, 580, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Treecko - Thunder Punch - Tutor
  (252, 25200, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Treecko - Low Kick - Tutor
  (252, 25200, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Treecko - Snore - Tutor
  (252, 25200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Treecko - Giga Drain - Tutor
  (252, 25200, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Treecko - Iron Tail - Tutor
  (252, 25200, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Treecko - Synthesis - Tutor
  (252, 25200, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Treecko - Focus Punch - Tutor
  (252, 25200, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Treecko - Endeavor - Tutor
  (252, 25200, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Treecko - Worry Seed - Tutor
  (252, 25200, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Treecko - Seed Bomb - Tutor
  (252, 25200, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Treecko - Drain Punch - Tutor
  (252, 25200, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Treecko - Grass Pledge - Tutor
  (252, 25200, 520, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Grovyle - Pound - Level 1
  (253, 25300, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grovyle - Leer - Level 1
  (253, 25300, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grovyle - Absorb - Level 1
  (253, 25300, 71, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grovyle - Quick Attack - Level 1
  (253, 25300, 98, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grovyle - Absorb - Level 5
  (253, 25300, 71, 14, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Grovyle - Quick Attack - Level 9
  (253, 25300, 98, 14, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Grovyle - Mega Drain - Level 13
  (253, 25300, 72, 14, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Grovyle - Fury Cutter - Level 16
  (253, 25300, 210, 14, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Grovyle - Pursuit - Level 18
  (253, 25300, 228, 14, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Grovyle - Leaf Blade - Level 23
  (253, 25300, 348, 14, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Grovyle - Agility - Level 28
  (253, 25300, 97, 14, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Grovyle - Slam - Level 33
  (253, 25300, 21, 14, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Grovyle - Detect - Level 38
  (253, 25300, 197, 14, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Grovyle - X-Scissor - Level 43
  (253, 25300, 404, 14, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Grovyle - False Swipe - Level 48
  (253, 25300, 206, 14, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Grovyle - Quick Guard - Level 53
  (253, 25300, 501, 14, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Grovyle - Leaf Storm - Level 58
  (253, 25300, 437, 14, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Grovyle - Screech - Level 63
  (253, 25300, 103, 14, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Grovyle - Toxic - TM06
  (253, 25300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Grovyle - Hidden Power - TM10
  (253, 25300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Grovyle - Sunny Day - TM11
  (253, 25300, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Grovyle - Protect - TM17
  (253, 25300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Grovyle - Safeguard - TM20
  (253, 25300, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 23),
  -- Grovyle - Frustration - TM21
  (253, 25300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 24),
  -- Grovyle - Solar Beam - TM22
  (253, 25300, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 25),
  -- Grovyle - Return - TM27
  (253, 25300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Grovyle - Dig - TM28
  (253, 25300, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 27),
  -- Grovyle - Brick Break - TM31
  (253, 25300, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 28),
  -- Grovyle - Double Team - TM32
  (253, 25300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Grovyle - Rock Tomb - TM39
  (253, 25300, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 30),
  -- Grovyle - Aerial Ace - TM40
  (253, 25300, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 31),
  -- Grovyle - Facade - TM42
  (253, 25300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 32),
  -- Grovyle - Rest - TM44
  (253, 25300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Grovyle - Attract - TM45
  (253, 25300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Grovyle - Low Sweep - TM47
  (253, 25300, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 35),
  -- Grovyle - Round - TM48
  (253, 25300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Grovyle - Energy Ball - TM53
  (253, 25300, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 37),
  -- Grovyle - False Swipe - TM54
  (253, 25300, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 38),
  -- Grovyle - Fling - TM56
  (253, 25300, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 39),
  -- Grovyle - Acrobatics - TM62
  (253, 25300, 512, 14, NULL, 2, NULL, NULL, 14002062, NULL, 40),
  -- Grovyle - Flash - TM70
  (253, 25300, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 41),
  -- Grovyle - Swords Dance - TM75
  (253, 25300, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 42),
  -- Grovyle - Rock Slide - TM80
  (253, 25300, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 43),
  -- Grovyle - X-Scissor - TM81
  (253, 25300, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 44),
  -- Grovyle - Grass Knot - TM86
  (253, 25300, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 45),
  -- Grovyle - Swagger - TM87
  (253, 25300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 46),
  -- Grovyle - Sleep Talk - TM88
  (253, 25300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 47),
  -- Grovyle - Substitute - TM90
  (253, 25300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 48),
  -- Grovyle - Secret Power - TM94
  (253, 25300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 49),
  -- Grovyle - Nature Power - TM96
  (253, 25300, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 50),
  -- Grovyle - Power-Up Punch - TM98
  (253, 25300, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 51),
  -- Grovyle - Confide - TM100
  (253, 25300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 52),
  -- Grovyle - Cut - HM01
  (253, 25300, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 53),
  -- Grovyle - Strength - HM04
  (253, 25300, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 54),
  -- Grovyle - Rock Smash - HM06
  (253, 25300, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 55),
  -- Grovyle - Thunder Punch - Tutor
  (253, 25300, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Grovyle - Low Kick - Tutor
  (253, 25300, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Grovyle - Snore - Tutor
  (253, 25300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Grovyle - Giga Drain - Tutor
  (253, 25300, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Grovyle - Iron Tail - Tutor
  (253, 25300, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Grovyle - Synthesis - Tutor
  (253, 25300, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Grovyle - Focus Punch - Tutor
  (253, 25300, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Grovyle - Endeavor - Tutor
  (253, 25300, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Grovyle - Worry Seed - Tutor
  (253, 25300, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Grovyle - Seed Bomb - Tutor
  (253, 25300, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Grovyle - Drain Punch - Tutor
  (253, 25300, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Grovyle - Grass Pledge - Tutor
  (253, 25300, 520, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Sceptile - Pound - Level 1
  (254, 25400, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sceptile - Leer - Level 1
  (254, 25400, 43, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sceptile - Absorb - Level 1
  (254, 25400, 71, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sceptile - Quick Attack - Level 1
  (254, 25400, 98, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sceptile - Night Slash - Level 1
  (254, 25400, 400, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sceptile - Leaf Storm - Level 1
  (254, 25400, 437, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sceptile - Absorb - Level 5
  (254, 25400, 71, 14, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Sceptile - Quick Attack - Level 9
  (254, 25400, 98, 14, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Sceptile - Mega Drain - Level 13
  (254, 25400, 72, 14, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Sceptile - Fury Cutter - Level 16
  (254, 25400, 210, 14, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Sceptile - Pursuit - Level 18
  (254, 25400, 228, 14, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Sceptile - Leaf Blade - Level 23
  (254, 25400, 348, 14, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Sceptile - Agility - Level 28
  (254, 25400, 97, 14, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Sceptile - Slam - Level 33
  (254, 25400, 21, 14, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Sceptile - Dual Chop - Level 36
  (254, 25400, 530, 14, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Sceptile - Detect - Level 39
  (254, 25400, 197, 14, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Sceptile - X-Scissor - Level 45
  (254, 25400, 404, 14, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Sceptile - False Swipe - Level 51
  (254, 25400, 206, 14, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Sceptile - Quick Guard - Level 57
  (254, 25400, 501, 14, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Sceptile - Leaf Storm - Level 63
  (254, 25400, 437, 14, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Sceptile - Screech - Level 69
  (254, 25400, 103, 14, NULL, 1, 69, NULL, NULL, NULL, 21),
  -- Sceptile - Hone Claws - TM01
  (254, 25400, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 22),
  -- Sceptile - Dragon Claw - TM02
  (254, 25400, 337, 14, NULL, 2, NULL, NULL, 14002002, NULL, 23),
  -- Sceptile - Roar - TM05
  (254, 25400, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 24),
  -- Sceptile - Toxic - TM06
  (254, 25400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 25),
  -- Sceptile - Hidden Power - TM10
  (254, 25400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 26),
  -- Sceptile - Sunny Day - TM11
  (254, 25400, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 27),
  -- Sceptile - Hyper Beam - TM15
  (254, 25400, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 28),
  -- Sceptile - Protect - TM17
  (254, 25400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 29),
  -- Sceptile - Safeguard - TM20
  (254, 25400, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 30),
  -- Sceptile - Frustration - TM21
  (254, 25400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 31),
  -- Sceptile - Solar Beam - TM22
  (254, 25400, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 32),
  -- Sceptile - Earthquake - TM26
  (254, 25400, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 33),
  -- Sceptile - Return - TM27
  (254, 25400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 34),
  -- Sceptile - Dig - TM28
  (254, 25400, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 35),
  -- Sceptile - Brick Break - TM31
  (254, 25400, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 36),
  -- Sceptile - Double Team - TM32
  (254, 25400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 37),
  -- Sceptile - Rock Tomb - TM39
  (254, 25400, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 38),
  -- Sceptile - Aerial Ace - TM40
  (254, 25400, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 39),
  -- Sceptile - Facade - TM42
  (254, 25400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 40),
  -- Sceptile - Rest - TM44
  (254, 25400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 41),
  -- Sceptile - Attract - TM45
  (254, 25400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 42),
  -- Sceptile - Low Sweep - TM47
  (254, 25400, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 43),
  -- Sceptile - Round - TM48
  (254, 25400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 44),
  -- Sceptile - Focus Blast - TM52
  (254, 25400, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 45),
  -- Sceptile - Energy Ball - TM53
  (254, 25400, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 46),
  -- Sceptile - False Swipe - TM54
  (254, 25400, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 47),
  -- Sceptile - Fling - TM56
  (254, 25400, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 48),
  -- Sceptile - Acrobatics - TM62
  (254, 25400, 512, 14, NULL, 2, NULL, NULL, 14002062, NULL, 49),
  -- Sceptile - Giga Impact - TM68
  (254, 25400, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 50),
  -- Sceptile - Flash - TM70
  (254, 25400, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 51),
  -- Sceptile - Swords Dance - TM75
  (254, 25400, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 52),
  -- Sceptile - Bulldoze - TM78
  (254, 25400, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 53),
  -- Sceptile - Rock Slide - TM80
  (254, 25400, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 54),
  -- Sceptile - X-Scissor - TM81
  (254, 25400, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 55),
  -- Sceptile - Grass Knot - TM86
  (254, 25400, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 56),
  -- Sceptile - Swagger - TM87
  (254, 25400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 57),
  -- Sceptile - Sleep Talk - TM88
  (254, 25400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 58),
  -- Sceptile - Substitute - TM90
  (254, 25400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 59),
  -- Sceptile - Secret Power - TM94
  (254, 25400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 60),
  -- Sceptile - Nature Power - TM96
  (254, 25400, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 61),
  -- Sceptile - Power-Up Punch - TM98
  (254, 25400, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 62),
  -- Sceptile - Confide - TM100
  (254, 25400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 63),
  -- Sceptile - Cut - HM01
  (254, 25400, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 64),
  -- Sceptile - Strength - HM04
  (254, 25400, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 65),
  -- Sceptile - Rock Smash - HM06
  (254, 25400, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 66),
  -- Sceptile - Thunder Punch - Tutor
  (254, 25400, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Sceptile - Low Kick - Tutor
  (254, 25400, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Sceptile - Snore - Tutor
  (254, 25400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Sceptile - Outrage - Tutor
  (254, 25400, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Sceptile - Giga Drain - Tutor
  (254, 25400, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Sceptile - Iron Tail - Tutor
  (254, 25400, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Sceptile - Synthesis - Tutor
  (254, 25400, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Sceptile - Focus Punch - Tutor
  (254, 25400, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Sceptile - Endeavor - Tutor
  (254, 25400, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Sceptile - Frenzy Plant - Tutor
  (254, 25400, 338, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Sceptile - Worry Seed - Tutor
  (254, 25400, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Sceptile - Seed Bomb - Tutor
  (254, 25400, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Sceptile - Dragon Pulse - Tutor
  (254, 25400, 406, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Sceptile - Drain Punch - Tutor
  (254, 25400, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Sceptile - Grass Pledge - Tutor
  (254, 25400, 520, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Sceptile - Dual Chop - Tutor
  (254, 25400, 530, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Torchic - Scratch - Level 1
  (255, 25500, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torchic - Growl - Level 1
  (255, 25500, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torchic - Ember - Level 5
  (255, 25500, 52, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Torchic - Sand Attack - Level 10
  (255, 25500, 28, 14, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Torchic - Peck - Level 14
  (255, 25500, 64, 14, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Torchic - Fire Spin - Level 19
  (255, 25500, 83, 14, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Torchic - Quick Attack - Level 23
  (255, 25500, 98, 14, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Torchic - Flame Burst - Level 28
  (255, 25500, 481, 14, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Torchic - Focus Energy - Level 32
  (255, 25500, 116, 14, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Torchic - Slash - Level 37
  (255, 25500, 163, 14, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Torchic - Mirror Move - Level 41
  (255, 25500, 119, 14, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Torchic - Flamethrower - Level 46
  (255, 25500, 53, 14, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Torchic - Hone Claws - TM01
  (255, 25500, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 13),
  -- Torchic - Toxic - TM06
  (255, 25500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 14),
  -- Torchic - Hidden Power - TM10
  (255, 25500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 15),
  -- Torchic - Sunny Day - TM11
  (255, 25500, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 16),
  -- Torchic - Protect - TM17
  (255, 25500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 17),
  -- Torchic - Frustration - TM21
  (255, 25500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 18),
  -- Torchic - Return - TM27
  (255, 25500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 19),
  -- Torchic - Dig - TM28
  (255, 25500, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 20),
  -- Torchic - Double Team - TM32
  (255, 25500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 21),
  -- Torchic - Flamethrower - TM35
  (255, 25500, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 22),
  -- Torchic - Fire Blast - TM38
  (255, 25500, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 23),
  -- Torchic - Rock Tomb - TM39
  (255, 25500, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 24),
  -- Torchic - Aerial Ace - TM40
  (255, 25500, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 25),
  -- Torchic - Facade - TM42
  (255, 25500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 26),
  -- Torchic - Flame Charge - TM43
  (255, 25500, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 27),
  -- Torchic - Rest - TM44
  (255, 25500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 28),
  -- Torchic - Attract - TM45
  (255, 25500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 29),
  -- Torchic - Round - TM48
  (255, 25500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 30),
  -- Torchic - Echoed Voice - TM49
  (255, 25500, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 31),
  -- Torchic - Overheat - TM50
  (255, 25500, 315, 14, NULL, 2, NULL, NULL, 14002050, NULL, 32),
  -- Torchic - Incinerate - TM59
  (255, 25500, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 33),
  -- Torchic - Will-O-Wisp - TM61
  (255, 25500, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 34),
  -- Torchic - Shadow Claw - TM65
  (255, 25500, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 35),
  -- Torchic - Swords Dance - TM75
  (255, 25500, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 36),
  -- Torchic - Rock Slide - TM80
  (255, 25500, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 37),
  -- Torchic - Swagger - TM87
  (255, 25500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 38),
  -- Torchic - Sleep Talk - TM88
  (255, 25500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 39),
  -- Torchic - Substitute - TM90
  (255, 25500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 40),
  -- Torchic - Secret Power - TM94
  (255, 25500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 41),
  -- Torchic - Confide - TM100
  (255, 25500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 42),
  -- Torchic - Cut - HM01
  (255, 25500, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 43),
  -- Torchic - Strength - HM04
  (255, 25500, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 44),
  -- Torchic - Rock Smash - HM06
  (255, 25500, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 45),
  -- Torchic - Low Kick - Egg
  (255, 25500, 67, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Torchic - Counter - Egg
  (255, 25500, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Torchic - Agility - Egg
  (255, 25500, 97, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Torchic - Curse - Egg
  (255, 25500, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Torchic - Reversal - Egg
  (255, 25500, 179, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Torchic - Endure - Egg
  (255, 25500, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Torchic - Baton Pass - Egg
  (255, 25500, 226, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Torchic - Smelling Salts - Egg
  (255, 25500, 265, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Torchic - Feather Dance - Egg
  (255, 25500, 297, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Torchic - Crush Claw - Egg
  (255, 25500, 306, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Torchic - Feint - Egg
  (255, 25500, 364, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Torchic - Last Resort - Egg
  (255, 25500, 387, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Torchic - Night Slash - Egg
  (255, 25500, 400, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Torchic - Flame Burst - Egg
  (255, 25500, 481, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Torchic - Low Kick - Tutor
  (255, 25500, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Torchic - Snore - Tutor
  (255, 25500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Torchic - Heat Wave - Tutor
  (255, 25500, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Torchic - Helping Hand - Tutor
  (255, 25500, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Torchic - Bounce - Tutor
  (255, 25500, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Torchic - Last Resort - Tutor
  (255, 25500, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Torchic - Fire Pledge - Tutor
  (255, 25500, 519, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Combusken - Scratch - Level 1
  (256, 25600, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combusken - Sand Attack - Level 1
  (256, 25600, 28, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combusken - Growl - Level 1
  (256, 25600, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Combusken - Ember - Level 1
  (256, 25600, 52, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Combusken - Ember - Level 5
  (256, 25600, 52, 14, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Combusken - Sand Attack - Level 10
  (256, 25600, 28, 14, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Combusken - Peck - Level 14
  (256, 25600, 64, 14, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Combusken - Double Kick - Level 16
  (256, 25600, 24, 14, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Combusken - Flame Charge - Level 20
  (256, 25600, 488, 14, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Combusken - Quick Attack - Level 25
  (256, 25600, 98, 14, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Combusken - Bulk Up - Level 31
  (256, 25600, 339, 14, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Combusken - Focus Energy - Level 36
  (256, 25600, 116, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Combusken - Slash - Level 42
  (256, 25600, 163, 14, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Combusken - Mirror Move - Level 47
  (256, 25600, 119, 14, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Combusken - Sky Uppercut - Level 53
  (256, 25600, 327, 14, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Combusken - Flare Blitz - Level 58
  (256, 25600, 394, 14, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Combusken - Hone Claws - TM01
  (256, 25600, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 17),
  -- Combusken - Toxic - TM06
  (256, 25600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Combusken - Bulk Up - TM08
  (256, 25600, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 19),
  -- Combusken - Hidden Power - TM10
  (256, 25600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Combusken - Sunny Day - TM11
  (256, 25600, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Combusken - Protect - TM17
  (256, 25600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Combusken - Frustration - TM21
  (256, 25600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Combusken - Return - TM27
  (256, 25600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Combusken - Dig - TM28
  (256, 25600, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 25),
  -- Combusken - Brick Break - TM31
  (256, 25600, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 26),
  -- Combusken - Double Team - TM32
  (256, 25600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 27),
  -- Combusken - Flamethrower - TM35
  (256, 25600, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 28),
  -- Combusken - Fire Blast - TM38
  (256, 25600, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 29),
  -- Combusken - Rock Tomb - TM39
  (256, 25600, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 30),
  -- Combusken - Aerial Ace - TM40
  (256, 25600, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 31),
  -- Combusken - Facade - TM42
  (256, 25600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 32),
  -- Combusken - Flame Charge - TM43
  (256, 25600, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 33),
  -- Combusken - Rest - TM44
  (256, 25600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Combusken - Attract - TM45
  (256, 25600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Combusken - Low Sweep - TM47
  (256, 25600, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 36),
  -- Combusken - Round - TM48
  (256, 25600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Combusken - Echoed Voice - TM49
  (256, 25600, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 38),
  -- Combusken - Overheat - TM50
  (256, 25600, 315, 14, NULL, 2, NULL, NULL, 14002050, NULL, 39),
  -- Combusken - Focus Blast - TM52
  (256, 25600, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 40),
  -- Combusken - Fling - TM56
  (256, 25600, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 41),
  -- Combusken - Incinerate - TM59
  (256, 25600, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 42),
  -- Combusken - Will-O-Wisp - TM61
  (256, 25600, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 43),
  -- Combusken - Shadow Claw - TM65
  (256, 25600, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 44),
  -- Combusken - Swords Dance - TM75
  (256, 25600, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 45),
  -- Combusken - Rock Slide - TM80
  (256, 25600, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 46),
  -- Combusken - Poison Jab - TM84
  (256, 25600, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 47),
  -- Combusken - Swagger - TM87
  (256, 25600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 48),
  -- Combusken - Sleep Talk - TM88
  (256, 25600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 49),
  -- Combusken - Substitute - TM90
  (256, 25600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 50),
  -- Combusken - Secret Power - TM94
  (256, 25600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 51),
  -- Combusken - Power-Up Punch - TM98
  (256, 25600, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 52),
  -- Combusken - Confide - TM100
  (256, 25600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 53),
  -- Combusken - Cut - HM01
  (256, 25600, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 54),
  -- Combusken - Strength - HM04
  (256, 25600, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 55),
  -- Combusken - Rock Smash - HM06
  (256, 25600, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 56),
  -- Combusken - Fire Punch - Tutor
  (256, 25600, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Combusken - Thunder Punch - Tutor
  (256, 25600, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Combusken - Low Kick - Tutor
  (256, 25600, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Combusken - Snore - Tutor
  (256, 25600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Combusken - Heat Wave - Tutor
  (256, 25600, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Combusken - Focus Punch - Tutor
  (256, 25600, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Combusken - Helping Hand - Tutor
  (256, 25600, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Combusken - Bounce - Tutor
  (256, 25600, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Combusken - Last Resort - Tutor
  (256, 25600, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Combusken - Fire Pledge - Tutor
  (256, 25600, 519, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Combusken - Dual Chop - Tutor
  (256, 25600, 530, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Blaziken - Fire Punch - Level 1
  (257, 25700, 7, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blaziken - Scratch - Level 1
  (257, 25700, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blaziken - Sand Attack - Level 1
  (257, 25700, 28, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blaziken - Growl - Level 1
  (257, 25700, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blaziken - Ember - Level 1
  (257, 25700, 52, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blaziken - High Jump Kick - Level 1
  (257, 25700, 136, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Blaziken - Flare Blitz - Level 1
  (257, 25700, 394, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Blaziken - Ember - Level 5
  (257, 25700, 52, 14, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Blaziken - Sand Attack - Level 10
  (257, 25700, 28, 14, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Blaziken - Peck - Level 14
  (257, 25700, 64, 14, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Blaziken - Double Kick - Level 16
  (257, 25700, 24, 14, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Blaziken - Flame Charge - Level 20
  (257, 25700, 488, 14, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Blaziken - Quick Attack - Level 25
  (257, 25700, 98, 14, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Blaziken - Bulk Up - Level 31
  (257, 25700, 339, 14, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Blaziken - Blaze Kick - Level 36
  (257, 25700, 299, 14, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Blaziken - Focus Energy - Level 37
  (257, 25700, 116, 14, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Blaziken - Slash - Level 44
  (257, 25700, 163, 14, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Blaziken - Brave Bird - Level 50
  (257, 25700, 413, 14, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Blaziken - Sky Uppercut - Level 57
  (257, 25700, 327, 14, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Blaziken - Flare Blitz - Level 63
  (257, 25700, 394, 14, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Blaziken - Hone Claws - TM01
  (257, 25700, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 21),
  -- Blaziken - Roar - TM05
  (257, 25700, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 22),
  -- Blaziken - Toxic - TM06
  (257, 25700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 23),
  -- Blaziken - Bulk Up - TM08
  (257, 25700, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 24),
  -- Blaziken - Hidden Power - TM10
  (257, 25700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 25),
  -- Blaziken - Sunny Day - TM11
  (257, 25700, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 26),
  -- Blaziken - Hyper Beam - TM15
  (257, 25700, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 27),
  -- Blaziken - Protect - TM17
  (257, 25700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 28),
  -- Blaziken - Frustration - TM21
  (257, 25700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Blaziken - Solar Beam - TM22
  (257, 25700, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 30),
  -- Blaziken - Earthquake - TM26
  (257, 25700, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 31),
  -- Blaziken - Return - TM27
  (257, 25700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 32),
  -- Blaziken - Dig - TM28
  (257, 25700, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 33),
  -- Blaziken - Brick Break - TM31
  (257, 25700, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 34),
  -- Blaziken - Double Team - TM32
  (257, 25700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 35),
  -- Blaziken - Flamethrower - TM35
  (257, 25700, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 36),
  -- Blaziken - Fire Blast - TM38
  (257, 25700, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 37),
  -- Blaziken - Rock Tomb - TM39
  (257, 25700, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 38),
  -- Blaziken - Aerial Ace - TM40
  (257, 25700, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 39),
  -- Blaziken - Facade - TM42
  (257, 25700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 40),
  -- Blaziken - Flame Charge - TM43
  (257, 25700, 488, 14, NULL, 2, NULL, NULL, 14002043, NULL, 41),
  -- Blaziken - Rest - TM44
  (257, 25700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 42),
  -- Blaziken - Attract - TM45
  (257, 25700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 43),
  -- Blaziken - Low Sweep - TM47
  (257, 25700, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 44),
  -- Blaziken - Round - TM48
  (257, 25700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 45),
  -- Blaziken - Echoed Voice - TM49
  (257, 25700, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 46),
  -- Blaziken - Overheat - TM50
  (257, 25700, 315, 14, NULL, 2, NULL, NULL, 14002050, NULL, 47),
  -- Blaziken - Focus Blast - TM52
  (257, 25700, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 48),
  -- Blaziken - Fling - TM56
  (257, 25700, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 49),
  -- Blaziken - Incinerate - TM59
  (257, 25700, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 50),
  -- Blaziken - Will-O-Wisp - TM61
  (257, 25700, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 51),
  -- Blaziken - Acrobatics - TM62
  (257, 25700, 512, 14, NULL, 2, NULL, NULL, 14002062, NULL, 52),
  -- Blaziken - Shadow Claw - TM65
  (257, 25700, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 53),
  -- Blaziken - Giga Impact - TM68
  (257, 25700, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 54),
  -- Blaziken - Stone Edge - TM71
  (257, 25700, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 55),
  -- Blaziken - Swords Dance - TM75
  (257, 25700, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 56),
  -- Blaziken - Bulldoze - TM78
  (257, 25700, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 57),
  -- Blaziken - Rock Slide - TM80
  (257, 25700, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 58),
  -- Blaziken - Poison Jab - TM84
  (257, 25700, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 59),
  -- Blaziken - Swagger - TM87
  (257, 25700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 60),
  -- Blaziken - Sleep Talk - TM88
  (257, 25700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 61),
  -- Blaziken - Substitute - TM90
  (257, 25700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 62),
  -- Blaziken - Secret Power - TM94
  (257, 25700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 63),
  -- Blaziken - Power-Up Punch - TM98
  (257, 25700, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 64),
  -- Blaziken - Confide - TM100
  (257, 25700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 65),
  -- Blaziken - Cut - HM01
  (257, 25700, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 66),
  -- Blaziken - Strength - HM04
  (257, 25700, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 67),
  -- Blaziken - Rock Smash - HM06
  (257, 25700, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 68),
  -- Blaziken - Fire Punch - Tutor
  (257, 25700, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Blaziken - Thunder Punch - Tutor
  (257, 25700, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Blaziken - Low Kick - Tutor
  (257, 25700, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Blaziken - Snore - Tutor
  (257, 25700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Blaziken - Heat Wave - Tutor
  (257, 25700, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Blaziken - Focus Punch - Tutor
  (257, 25700, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Blaziken - Helping Hand - Tutor
  (257, 25700, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Blaziken - Role Play - Tutor
  (257, 25700, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Blaziken - Superpower - Tutor
  (257, 25700, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Blaziken - Knock Off - Tutor
  (257, 25700, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Blaziken - Blast Burn - Tutor
  (257, 25700, 307, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Blaziken - Bounce - Tutor
  (257, 25700, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Blaziken - Last Resort - Tutor
  (257, 25700, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Blaziken - Fire Pledge - Tutor
  (257, 25700, 519, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Blaziken - Dual Chop - Tutor
  (257, 25700, 530, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Mudkip - Tackle - Level 1
  (258, 25800, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudkip - Growl - Level 1
  (258, 25800, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudkip - Water Gun - Level 4
  (258, 25800, 55, 14, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mudkip - Mud-Slap - Level 9
  (258, 25800, 189, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Mudkip - Foresight - Level 12
  (258, 25800, 193, 14, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mudkip - Bide - Level 17
  (258, 25800, 117, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Mudkip - Mud Sport - Level 20
  (258, 25800, 300, 14, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mudkip - Rock Throw - Level 25
  (258, 25800, 88, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Mudkip - Protect - Level 28
  (258, 25800, 182, 14, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Mudkip - Whirlpool - Level 33
  (258, 25800, 250, 14, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Mudkip - Take Down - Level 36
  (258, 25800, 36, 14, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mudkip - Hydro Pump - Level 41
  (258, 25800, 56, 14, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Mudkip - Endeavor - Level 44
  (258, 25800, 283, 14, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Mudkip - Toxic - TM06
  (258, 25800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 14),
  -- Mudkip - Hail - TM07
  (258, 25800, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 15),
  -- Mudkip - Hidden Power - TM10
  (258, 25800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 16),
  -- Mudkip - Ice Beam - TM13
  (258, 25800, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 17),
  -- Mudkip - Blizzard - TM14
  (258, 25800, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 18),
  -- Mudkip - Protect - TM17
  (258, 25800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 19),
  -- Mudkip - Rain Dance - TM18
  (258, 25800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 20),
  -- Mudkip - Frustration - TM21
  (258, 25800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 21),
  -- Mudkip - Return - TM27
  (258, 25800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 22),
  -- Mudkip - Dig - TM28
  (258, 25800, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 23),
  -- Mudkip - Double Team - TM32
  (258, 25800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 24),
  -- Mudkip - Sludge Wave - TM34
  (258, 25800, 482, 14, NULL, 2, NULL, NULL, 14002034, NULL, 25),
  -- Mudkip - Rock Tomb - TM39
  (258, 25800, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 26),
  -- Mudkip - Facade - TM42
  (258, 25800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 27),
  -- Mudkip - Rest - TM44
  (258, 25800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 28),
  -- Mudkip - Attract - TM45
  (258, 25800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 29),
  -- Mudkip - Round - TM48
  (258, 25800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 30),
  -- Mudkip - Echoed Voice - TM49
  (258, 25800, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 31),
  -- Mudkip - Scald - TM55
  (258, 25800, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 32),
  -- Mudkip - Rock Slide - TM80
  (258, 25800, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 33),
  -- Mudkip - Swagger - TM87
  (258, 25800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 34),
  -- Mudkip - Sleep Talk - TM88
  (258, 25800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 35),
  -- Mudkip - Substitute - TM90
  (258, 25800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 36),
  -- Mudkip - Secret Power - TM94
  (258, 25800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 37),
  -- Mudkip - Confide - TM100
  (258, 25800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 38),
  -- Mudkip - Surf - HM03
  (258, 25800, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 39),
  -- Mudkip - Strength - HM04
  (258, 25800, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 40),
  -- Mudkip - Waterfall - HM05
  (258, 25800, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 41),
  -- Mudkip - Rock Smash - HM06
  (258, 25800, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 42),
  -- Mudkip - Dive - HM07
  (258, 25800, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 43),
  -- Mudkip - Stomp - Egg
  (258, 25800, 23, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mudkip - Double-Edge - Egg
  (258, 25800, 38, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mudkip - Bite - Egg
  (258, 25800, 44, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mudkip - Counter - Egg
  (258, 25800, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mudkip - Barrier - Egg
  (258, 25800, 112, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mudkip - Sludge - Egg
  (258, 25800, 124, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mudkip - Curse - Egg
  (258, 25800, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mudkip - Mirror Coat - Egg
  (258, 25800, 243, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mudkip - Ancient Power - Egg
  (258, 25800, 246, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mudkip - Whirlpool - Egg
  (258, 25800, 250, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mudkip - Uproar - Egg
  (258, 25800, 253, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mudkip - Yawn - Egg
  (258, 25800, 281, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mudkip - Refresh - Egg
  (258, 25800, 287, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mudkip - Ice Ball - Egg
  (258, 25800, 301, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mudkip - Avalanche - Egg
  (258, 25800, 419, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mudkip - Mud Bomb - Egg
  (258, 25800, 426, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mudkip - Wide Guard - Egg
  (258, 25800, 469, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mudkip - Low Kick - Tutor
  (258, 25800, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Mudkip - Snore - Tutor
  (258, 25800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Mudkip - Icy Wind - Tutor
  (258, 25800, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Mudkip - Iron Tail - Tutor
  (258, 25800, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Mudkip - Uproar - Tutor
  (258, 25800, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Mudkip - Superpower - Tutor
  (258, 25800, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Mudkip - Endeavor - Tutor
  (258, 25800, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Mudkip - Water Pulse - Tutor
  (258, 25800, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Mudkip - Aqua Tail - Tutor
  (258, 25800, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Mudkip - Earth Power - Tutor
  (258, 25800, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Mudkip - Water Pledge - Tutor
  (258, 25800, 518, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Marshtomp - Tackle - Level 1
  (259, 25900, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marshtomp - Growl - Level 1
  (259, 25900, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marshtomp - Water Gun - Level 1
  (259, 25900, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marshtomp - Mud-Slap - Level 1
  (259, 25900, 189, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marshtomp - Water Gun - Level 4
  (259, 25900, 55, 14, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Marshtomp - Mud-Slap - Level 9
  (259, 25900, 189, 14, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Marshtomp - Foresight - Level 12
  (259, 25900, 193, 14, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Marshtomp - Mud Shot - Level 16
  (259, 25900, 341, 14, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Marshtomp - Bide - Level 18
  (259, 25900, 117, 14, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Marshtomp - Mud Bomb - Level 22
  (259, 25900, 426, 14, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Marshtomp - Rock Slide - Level 28
  (259, 25900, 157, 14, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Marshtomp - Protect - Level 32
  (259, 25900, 182, 14, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Marshtomp - Muddy Water - Level 38
  (259, 25900, 330, 14, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Marshtomp - Take Down - Level 42
  (259, 25900, 36, 14, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Marshtomp - Earthquake - Level 48
  (259, 25900, 89, 14, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Marshtomp - Endeavor - Level 52
  (259, 25900, 283, 14, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Marshtomp - Toxic - TM06
  (259, 25900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Marshtomp - Hail - TM07
  (259, 25900, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 18),
  -- Marshtomp - Hidden Power - TM10
  (259, 25900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Marshtomp - Ice Beam - TM13
  (259, 25900, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 20),
  -- Marshtomp - Blizzard - TM14
  (259, 25900, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 21),
  -- Marshtomp - Protect - TM17
  (259, 25900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Marshtomp - Rain Dance - TM18
  (259, 25900, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 23),
  -- Marshtomp - Frustration - TM21
  (259, 25900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 24),
  -- Marshtomp - Earthquake - TM26
  (259, 25900, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 25),
  -- Marshtomp - Return - TM27
  (259, 25900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Marshtomp - Dig - TM28
  (259, 25900, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 27),
  -- Marshtomp - Brick Break - TM31
  (259, 25900, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 28),
  -- Marshtomp - Double Team - TM32
  (259, 25900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Marshtomp - Sludge Wave - TM34
  (259, 25900, 482, 14, NULL, 2, NULL, NULL, 14002034, NULL, 30),
  -- Marshtomp - Rock Tomb - TM39
  (259, 25900, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 31),
  -- Marshtomp - Facade - TM42
  (259, 25900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 32),
  -- Marshtomp - Rest - TM44
  (259, 25900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Marshtomp - Attract - TM45
  (259, 25900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Marshtomp - Round - TM48
  (259, 25900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 35),
  -- Marshtomp - Echoed Voice - TM49
  (259, 25900, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 36),
  -- Marshtomp - Scald - TM55
  (259, 25900, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 37),
  -- Marshtomp - Fling - TM56
  (259, 25900, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 38),
  -- Marshtomp - Bulldoze - TM78
  (259, 25900, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 39),
  -- Marshtomp - Rock Slide - TM80
  (259, 25900, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 40),
  -- Marshtomp - Swagger - TM87
  (259, 25900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Marshtomp - Sleep Talk - TM88
  (259, 25900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Marshtomp - Substitute - TM90
  (259, 25900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 43),
  -- Marshtomp - Secret Power - TM94
  (259, 25900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 44),
  -- Marshtomp - Power-Up Punch - TM98
  (259, 25900, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 45),
  -- Marshtomp - Confide - TM100
  (259, 25900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Marshtomp - Surf - HM03
  (259, 25900, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 47),
  -- Marshtomp - Strength - HM04
  (259, 25900, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 48),
  -- Marshtomp - Waterfall - HM05
  (259, 25900, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 49),
  -- Marshtomp - Rock Smash - HM06
  (259, 25900, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 50),
  -- Marshtomp - Dive - HM07
  (259, 25900, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 51),
  -- Marshtomp - Ice Punch - Tutor
  (259, 25900, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Marshtomp - Low Kick - Tutor
  (259, 25900, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Marshtomp - Snore - Tutor
  (259, 25900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Marshtomp - Icy Wind - Tutor
  (259, 25900, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Marshtomp - Iron Tail - Tutor
  (259, 25900, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Marshtomp - Uproar - Tutor
  (259, 25900, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Marshtomp - Superpower - Tutor
  (259, 25900, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Marshtomp - Endeavor - Tutor
  (259, 25900, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Marshtomp - Water Pulse - Tutor
  (259, 25900, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Marshtomp - Aqua Tail - Tutor
  (259, 25900, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Marshtomp - Earth Power - Tutor
  (259, 25900, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Marshtomp - Stealth Rock - Tutor
  (259, 25900, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Marshtomp - Water Pledge - Tutor
  (259, 25900, 518, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Swampert - Tackle - Level 1
  (260, 26000, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swampert - Growl - Level 1
  (260, 26000, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swampert - Water Gun - Level 1
  (260, 26000, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swampert - Mud-Slap - Level 1
  (260, 26000, 189, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swampert - Hammer Arm - Level 1
  (260, 26000, 359, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swampert - Water Gun - Level 4
  (260, 26000, 55, 14, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Swampert - Mud-Slap - Level 9
  (260, 26000, 189, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Swampert - Foresight - Level 12
  (260, 26000, 193, 14, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Swampert - Mud Shot - Level 16
  (260, 26000, 341, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Swampert - Bide - Level 18
  (260, 26000, 117, 14, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Swampert - Mud Bomb - Level 22
  (260, 26000, 426, 14, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Swampert - Rock Slide - Level 28
  (260, 26000, 157, 14, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Swampert - Protect - Level 32
  (260, 26000, 182, 14, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Swampert - Muddy Water - Level 39
  (260, 26000, 330, 14, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Swampert - Take Down - Level 44
  (260, 26000, 36, 14, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Swampert - Earthquake - Level 51
  (260, 26000, 89, 14, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Swampert - Endeavor - Level 56
  (260, 26000, 283, 14, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Swampert - Hammer Arm - Level 63
  (260, 26000, 359, 14, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Swampert - Roar - TM05
  (260, 26000, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 19),
  -- Swampert - Toxic - TM06
  (260, 26000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Swampert - Hail - TM07
  (260, 26000, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 21),
  -- Swampert - Hidden Power - TM10
  (260, 26000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Swampert - Ice Beam - TM13
  (260, 26000, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 23),
  -- Swampert - Blizzard - TM14
  (260, 26000, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 24),
  -- Swampert - Hyper Beam - TM15
  (260, 26000, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 25),
  -- Swampert - Protect - TM17
  (260, 26000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Swampert - Rain Dance - TM18
  (260, 26000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Swampert - Frustration - TM21
  (260, 26000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Swampert - Earthquake - TM26
  (260, 26000, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 29),
  -- Swampert - Return - TM27
  (260, 26000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Swampert - Dig - TM28
  (260, 26000, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 31),
  -- Swampert - Brick Break - TM31
  (260, 26000, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 32),
  -- Swampert - Double Team - TM32
  (260, 26000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 33),
  -- Swampert - Sludge Wave - TM34
  (260, 26000, 482, 14, NULL, 2, NULL, NULL, 14002034, NULL, 34),
  -- Swampert - Rock Tomb - TM39
  (260, 26000, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 35),
  -- Swampert - Facade - TM42
  (260, 26000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Swampert - Rest - TM44
  (260, 26000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Swampert - Attract - TM45
  (260, 26000, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Swampert - Round - TM48
  (260, 26000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 39),
  -- Swampert - Echoed Voice - TM49
  (260, 26000, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 40),
  -- Swampert - Focus Blast - TM52
  (260, 26000, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 41),
  -- Swampert - Scald - TM55
  (260, 26000, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 42),
  -- Swampert - Fling - TM56
  (260, 26000, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 43),
  -- Swampert - Giga Impact - TM68
  (260, 26000, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 44),
  -- Swampert - Stone Edge - TM71
  (260, 26000, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 45),
  -- Swampert - Bulldoze - TM78
  (260, 26000, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 46),
  -- Swampert - Rock Slide - TM80
  (260, 26000, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 47),
  -- Swampert - Swagger - TM87
  (260, 26000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 48),
  -- Swampert - Sleep Talk - TM88
  (260, 26000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 49),
  -- Swampert - Substitute - TM90
  (260, 26000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 50),
  -- Swampert - Secret Power - TM94
  (260, 26000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 51),
  -- Swampert - Power-Up Punch - TM98
  (260, 26000, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 52),
  -- Swampert - Confide - TM100
  (260, 26000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 53),
  -- Swampert - Surf - HM03
  (260, 26000, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 54),
  -- Swampert - Strength - HM04
  (260, 26000, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 55),
  -- Swampert - Waterfall - HM05
  (260, 26000, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 56),
  -- Swampert - Rock Smash - HM06
  (260, 26000, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 57),
  -- Swampert - Dive - HM07
  (260, 26000, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 58),
  -- Swampert - Ice Punch - Tutor
  (260, 26000, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Swampert - Low Kick - Tutor
  (260, 26000, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Swampert - Snore - Tutor
  (260, 26000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Swampert - Icy Wind - Tutor
  (260, 26000, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Swampert - Outrage - Tutor
  (260, 26000, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Swampert - Iron Tail - Tutor
  (260, 26000, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Swampert - Uproar - Tutor
  (260, 26000, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Swampert - Focus Punch - Tutor
  (260, 26000, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Swampert - Superpower - Tutor
  (260, 26000, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Swampert - Endeavor - Tutor
  (260, 26000, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Swampert - Hydro Cannon - Tutor
  (260, 26000, 308, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Swampert - Water Pulse - Tutor
  (260, 26000, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Swampert - Aqua Tail - Tutor
  (260, 26000, 401, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Swampert - Earth Power - Tutor
  (260, 26000, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Swampert - Stealth Rock - Tutor
  (260, 26000, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Swampert - Water Pledge - Tutor
  (260, 26000, 518, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Poochyena - Tackle - Level 1
  (261, 26100, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poochyena - Howl - Level 4
  (261, 26100, 336, 14, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Poochyena - Sand Attack - Level 7
  (261, 26100, 28, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Poochyena - Bite - Level 10
  (261, 26100, 44, 14, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Poochyena - Odor Sleuth - Level 13
  (261, 26100, 316, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Poochyena - Roar - Level 16
  (261, 26100, 46, 14, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Poochyena - Swagger - Level 19
  (261, 26100, 207, 14, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Poochyena - Assurance - Level 22
  (261, 26100, 372, 14, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Poochyena - Scary Face - Level 25
  (261, 26100, 184, 14, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Poochyena - Embargo - Level 28
  (261, 26100, 373, 14, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Poochyena - Taunt - Level 31
  (261, 26100, 269, 14, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Poochyena - Take Down - Level 34
  (261, 26100, 36, 14, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Poochyena - Crunch - Level 37
  (261, 26100, 242, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Poochyena - Sucker Punch - Level 40
  (261, 26100, 389, 14, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Poochyena - Roar - TM05
  (261, 26100, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 15),
  -- Poochyena - Toxic - TM06
  (261, 26100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 16),
  -- Poochyena - Hidden Power - TM10
  (261, 26100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Poochyena - Sunny Day - TM11
  (261, 26100, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Poochyena - Taunt - TM12
  (261, 26100, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 19),
  -- Poochyena - Protect - TM17
  (261, 26100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Poochyena - Rain Dance - TM18
  (261, 26100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Poochyena - Frustration - TM21
  (261, 26100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Poochyena - Return - TM27
  (261, 26100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 23),
  -- Poochyena - Dig - TM28
  (261, 26100, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 24),
  -- Poochyena - Shadow Ball - TM30
  (261, 26100, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 25),
  -- Poochyena - Double Team - TM32
  (261, 26100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 26),
  -- Poochyena - Torment - TM41
  (261, 26100, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 27),
  -- Poochyena - Facade - TM42
  (261, 26100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Poochyena - Rest - TM44
  (261, 26100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 29),
  -- Poochyena - Attract - TM45
  (261, 26100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 30),
  -- Poochyena - Thief - TM46
  (261, 26100, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 31),
  -- Poochyena - Round - TM48
  (261, 26100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 32),
  -- Poochyena - Incinerate - TM59
  (261, 26100, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 33),
  -- Poochyena - Embargo - TM63
  (261, 26100, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 34),
  -- Poochyena - Payback - TM66
  (261, 26100, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 35),
  -- Poochyena - Retaliate - TM67
  (261, 26100, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 36),
  -- Poochyena - Swagger - TM87
  (261, 26100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 37),
  -- Poochyena - Sleep Talk - TM88
  (261, 26100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 38),
  -- Poochyena - Substitute - TM90
  (261, 26100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 39),
  -- Poochyena - Secret Power - TM94
  (261, 26100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 40),
  -- Poochyena - Snarl - TM95
  (261, 26100, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 41),
  -- Poochyena - Dark Pulse - TM97
  (261, 26100, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 42),
  -- Poochyena - Confide - TM100
  (261, 26100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 43),
  -- Poochyena - Rock Smash - HM06
  (261, 26100, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 44),
  -- Poochyena - Leer - Egg
  (261, 26100, 43, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poochyena - Sleep Talk - Egg
  (261, 26100, 214, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poochyena - Yawn - Egg
  (261, 26100, 281, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poochyena - Snatch - Egg
  (261, 26100, 289, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Poochyena - Poison Fang - Egg
  (261, 26100, 305, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Poochyena - Astonish - Egg
  (261, 26100, 310, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Poochyena - Covet - Egg
  (261, 26100, 343, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Poochyena - Me First - Egg
  (261, 26100, 382, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Poochyena - Sucker Punch - Egg
  (261, 26100, 389, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Poochyena - Thunder Fang - Egg
  (261, 26100, 422, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Poochyena - Ice Fang - Egg
  (261, 26100, 423, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Poochyena - Fire Fang - Egg
  (261, 26100, 424, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Poochyena - Play Rough - Egg
  (261, 26100, 583, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Poochyena - Super Fang - Tutor
  (261, 26100, 162, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Poochyena - Snore - Tutor
  (261, 26100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Poochyena - Spite - Tutor
  (261, 26100, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Poochyena - Iron Tail - Tutor
  (261, 26100, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Poochyena - Uproar - Tutor
  (261, 26100, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Poochyena - Snatch - Tutor
  (261, 26100, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Poochyena - Hyper Voice - Tutor
  (261, 26100, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Poochyena - Covet - Tutor
  (261, 26100, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Poochyena - Foul Play - Tutor
  (261, 26100, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Mightyena - Sand Attack - Level 1
  (262, 26200, 28, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mightyena - Tackle - Level 1
  (262, 26200, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mightyena - Bite - Level 1
  (262, 26200, 44, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mightyena - Thief - Level 1
  (262, 26200, 168, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mightyena - Crunch - Level 1
  (262, 26200, 242, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mightyena - Howl - Level 1
  (262, 26200, 336, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mightyena - Howl - Level 4
  (262, 26200, 336, 14, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Mightyena - Sand Attack - Level 7
  (262, 26200, 28, 14, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Mightyena - Bite - Level 10
  (262, 26200, 44, 14, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Mightyena - Odor Sleuth - Level 13
  (262, 26200, 316, 14, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Mightyena - Roar - Level 16
  (262, 26200, 46, 14, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Mightyena - Snarl - Level 18
  (262, 26200, 555, 14, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Mightyena - Swagger - Level 20
  (262, 26200, 207, 14, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Mightyena - Assurance - Level 24
  (262, 26200, 372, 14, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Mightyena - Scary Face - Level 28
  (262, 26200, 184, 14, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Mightyena - Embargo - Level 32
  (262, 26200, 373, 14, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Mightyena - Taunt - Level 36
  (262, 26200, 269, 14, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Mightyena - Take Down - Level 40
  (262, 26200, 36, 14, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Mightyena - Crunch - Level 44
  (262, 26200, 242, 14, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Mightyena - Sucker Punch - Level 48
  (262, 26200, 389, 14, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Mightyena - Roar - TM05
  (262, 26200, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 21),
  -- Mightyena - Toxic - TM06
  (262, 26200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Mightyena - Hidden Power - TM10
  (262, 26200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Mightyena - Sunny Day - TM11
  (262, 26200, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 24),
  -- Mightyena - Taunt - TM12
  (262, 26200, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 25),
  -- Mightyena - Hyper Beam - TM15
  (262, 26200, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 26),
  -- Mightyena - Protect - TM17
  (262, 26200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Mightyena - Rain Dance - TM18
  (262, 26200, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 28),
  -- Mightyena - Frustration - TM21
  (262, 26200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Mightyena - Return - TM27
  (262, 26200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Mightyena - Dig - TM28
  (262, 26200, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 31),
  -- Mightyena - Shadow Ball - TM30
  (262, 26200, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 32),
  -- Mightyena - Double Team - TM32
  (262, 26200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 33),
  -- Mightyena - Torment - TM41
  (262, 26200, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 34),
  -- Mightyena - Facade - TM42
  (262, 26200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 35),
  -- Mightyena - Rest - TM44
  (262, 26200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 36),
  -- Mightyena - Attract - TM45
  (262, 26200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 37),
  -- Mightyena - Thief - TM46
  (262, 26200, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 38),
  -- Mightyena - Round - TM48
  (262, 26200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 39),
  -- Mightyena - Incinerate - TM59
  (262, 26200, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 40),
  -- Mightyena - Embargo - TM63
  (262, 26200, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 41),
  -- Mightyena - Payback - TM66
  (262, 26200, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 42),
  -- Mightyena - Retaliate - TM67
  (262, 26200, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 43),
  -- Mightyena - Giga Impact - TM68
  (262, 26200, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 44),
  -- Mightyena - Swagger - TM87
  (262, 26200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 45),
  -- Mightyena - Sleep Talk - TM88
  (262, 26200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 46),
  -- Mightyena - Substitute - TM90
  (262, 26200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 47),
  -- Mightyena - Secret Power - TM94
  (262, 26200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 48),
  -- Mightyena - Snarl - TM95
  (262, 26200, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 49),
  -- Mightyena - Dark Pulse - TM97
  (262, 26200, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 50),
  -- Mightyena - Confide - TM100
  (262, 26200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 51),
  -- Mightyena - Strength - HM04
  (262, 26200, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 52),
  -- Mightyena - Rock Smash - HM06
  (262, 26200, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 53),
  -- Mightyena - Super Fang - Tutor
  (262, 26200, 162, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Mightyena - Snore - Tutor
  (262, 26200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Mightyena - Spite - Tutor
  (262, 26200, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Mightyena - Iron Tail - Tutor
  (262, 26200, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Mightyena - Uproar - Tutor
  (262, 26200, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Mightyena - Snatch - Tutor
  (262, 26200, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Mightyena - Hyper Voice - Tutor
  (262, 26200, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Mightyena - Covet - Tutor
  (262, 26200, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Mightyena - Foul Play - Tutor
  (262, 26200, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Zigzagoon - Tackle - Level 1
  (263, 26300, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zigzagoon - Growl - Level 1
  (263, 26300, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zigzagoon - Tail Whip - Level 5
  (263, 26300, 39, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zigzagoon - Sand Attack - Level 7
  (263, 26300, 28, 14, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Zigzagoon - Headbutt - Level 11
  (263, 26300, 29, 14, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Zigzagoon - Baby-Doll Eyes - Level 12
  (263, 26300, 608, 14, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Zigzagoon - Odor Sleuth - Level 13
  (263, 26300, 316, 14, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Zigzagoon - Mud Sport - Level 17
  (263, 26300, 300, 14, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Zigzagoon - Pin Missile - Level 19
  (263, 26300, 42, 14, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Zigzagoon - Covet - Level 23
  (263, 26300, 343, 14, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Zigzagoon - Bestow - Level 25
  (263, 26300, 516, 14, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Zigzagoon - Flail - Level 29
  (263, 26300, 175, 14, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Zigzagoon - Take Down - Level 31
  (263, 26300, 36, 14, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Zigzagoon - Rest - Level 35
  (263, 26300, 156, 14, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Zigzagoon - Belly Drum - Level 37
  (263, 26300, 187, 14, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Zigzagoon - Fling - Level 41
  (263, 26300, 374, 14, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Zigzagoon - Hone Claws - TM01
  (263, 26300, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 17),
  -- Zigzagoon - Toxic - TM06
  (263, 26300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Zigzagoon - Hidden Power - TM10
  (263, 26300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Zigzagoon - Sunny Day - TM11
  (263, 26300, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 20),
  -- Zigzagoon - Ice Beam - TM13
  (263, 26300, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 21),
  -- Zigzagoon - Blizzard - TM14
  (263, 26300, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 22),
  -- Zigzagoon - Protect - TM17
  (263, 26300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Zigzagoon - Rain Dance - TM18
  (263, 26300, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 24),
  -- Zigzagoon - Frustration - TM21
  (263, 26300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Zigzagoon - Thunderbolt - TM24
  (263, 26300, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 26),
  -- Zigzagoon - Thunder - TM25
  (263, 26300, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 27),
  -- Zigzagoon - Return - TM27
  (263, 26300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 28),
  -- Zigzagoon - Dig - TM28
  (263, 26300, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 29),
  -- Zigzagoon - Shadow Ball - TM30
  (263, 26300, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 30),
  -- Zigzagoon - Double Team - TM32
  (263, 26300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 31),
  -- Zigzagoon - Facade - TM42
  (263, 26300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 32),
  -- Zigzagoon - Rest - TM44
  (263, 26300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Zigzagoon - Attract - TM45
  (263, 26300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Zigzagoon - Thief - TM46
  (263, 26300, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 35),
  -- Zigzagoon - Round - TM48
  (263, 26300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Zigzagoon - Echoed Voice - TM49
  (263, 26300, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 37),
  -- Zigzagoon - Fling - TM56
  (263, 26300, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 38),
  -- Zigzagoon - Charge Beam - TM57
  (263, 26300, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 39),
  -- Zigzagoon - Retaliate - TM67
  (263, 26300, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 40),
  -- Zigzagoon - Thunder Wave - TM73
  (263, 26300, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 41),
  -- Zigzagoon - Grass Knot - TM86
  (263, 26300, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 42),
  -- Zigzagoon - Swagger - TM87
  (263, 26300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 43),
  -- Zigzagoon - Sleep Talk - TM88
  (263, 26300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 44),
  -- Zigzagoon - Substitute - TM90
  (263, 26300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 45),
  -- Zigzagoon - Secret Power - TM94
  (263, 26300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 46),
  -- Zigzagoon - Confide - TM100
  (263, 26300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 47),
  -- Zigzagoon - Cut - HM01
  (263, 26300, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 48),
  -- Zigzagoon - Surf - HM03
  (263, 26300, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 49),
  -- Zigzagoon - Rock Smash - HM06
  (263, 26300, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 50),
  -- Zigzagoon - Mud-Slap - Egg
  (263, 26300, 189, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Zigzagoon - Charm - Egg
  (263, 26300, 204, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zigzagoon - Sleep Talk - Egg
  (263, 26300, 214, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zigzagoon - Pursuit - Egg
  (263, 26300, 228, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Zigzagoon - Helping Hand - Egg
  (263, 26300, 270, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zigzagoon - Trick - Egg
  (263, 26300, 271, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Zigzagoon - Tickle - Egg
  (263, 26300, 321, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Zigzagoon - Rock Climb - Egg
  (263, 26300, 431, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Zigzagoon - Simple Beam - Egg
  (263, 26300, 493, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Zigzagoon - Super Fang - Tutor
  (263, 26300, 162, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Zigzagoon - Snore - Tutor
  (263, 26300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Zigzagoon - Icy Wind - Tutor
  (263, 26300, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Zigzagoon - Iron Tail - Tutor
  (263, 26300, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Zigzagoon - Helping Hand - Tutor
  (263, 26300, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Zigzagoon - Trick - Tutor
  (263, 26300, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Zigzagoon - Hyper Voice - Tutor
  (263, 26300, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Zigzagoon - Covet - Tutor
  (263, 26300, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Zigzagoon - Shock Wave - Tutor
  (263, 26300, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Zigzagoon - Water Pulse - Tutor
  (263, 26300, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Zigzagoon - Last Resort - Tutor
  (263, 26300, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Zigzagoon - Seed Bomb - Tutor
  (263, 26300, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Zigzagoon - Gunk Shot - Tutor
  (263, 26300, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Linoone - Sand Attack - Level 1
  (264, 26400, 28, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Linoone - Tackle - Level 1
  (264, 26400, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Linoone - Tail Whip - Level 1
  (264, 26400, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Linoone - Growl - Level 1
  (264, 26400, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Linoone - Switcheroo - Level 1
  (264, 26400, 415, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Linoone - Rototiller - Level 1
  (264, 26400, 563, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Linoone - Play Rough - Level 1
  (264, 26400, 583, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Linoone - Tail Whip - Level 5
  (264, 26400, 39, 14, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Linoone - Sand Attack - Level 7
  (264, 26400, 28, 14, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Linoone - Headbutt - Level 11
  (264, 26400, 29, 14, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Linoone - Odor Sleuth - Level 13
  (264, 26400, 316, 14, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Linoone - Mud Sport - Level 17
  (264, 26400, 300, 14, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Linoone - Fury Swipes - Level 19
  (264, 26400, 154, 14, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Linoone - Covet - Level 24
  (264, 26400, 343, 14, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Linoone - Bestow - Level 27
  (264, 26400, 516, 14, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Linoone - Slash - Level 32
  (264, 26400, 163, 14, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Linoone - Double-Edge - Level 35
  (264, 26400, 38, 14, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Linoone - Rest - Level 40
  (264, 26400, 156, 14, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Linoone - Belly Drum - Level 43
  (264, 26400, 187, 14, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Linoone - Fling - Level 48
  (264, 26400, 374, 14, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Linoone - Hone Claws - TM01
  (264, 26400, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 21),
  -- Linoone - Roar - TM05
  (264, 26400, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 22),
  -- Linoone - Toxic - TM06
  (264, 26400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 23),
  -- Linoone - Hidden Power - TM10
  (264, 26400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Linoone - Sunny Day - TM11
  (264, 26400, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 25),
  -- Linoone - Ice Beam - TM13
  (264, 26400, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 26),
  -- Linoone - Blizzard - TM14
  (264, 26400, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 27),
  -- Linoone - Hyper Beam - TM15
  (264, 26400, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 28),
  -- Linoone - Protect - TM17
  (264, 26400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 29),
  -- Linoone - Rain Dance - TM18
  (264, 26400, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 30),
  -- Linoone - Frustration - TM21
  (264, 26400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 31),
  -- Linoone - Thunderbolt - TM24
  (264, 26400, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 32),
  -- Linoone - Thunder - TM25
  (264, 26400, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 33),
  -- Linoone - Return - TM27
  (264, 26400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 34),
  -- Linoone - Dig - TM28
  (264, 26400, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 35),
  -- Linoone - Shadow Ball - TM30
  (264, 26400, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 36),
  -- Linoone - Double Team - TM32
  (264, 26400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 37),
  -- Linoone - Facade - TM42
  (264, 26400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 38),
  -- Linoone - Rest - TM44
  (264, 26400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 39),
  -- Linoone - Attract - TM45
  (264, 26400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 40),
  -- Linoone - Thief - TM46
  (264, 26400, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 41),
  -- Linoone - Round - TM48
  (264, 26400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 42),
  -- Linoone - Echoed Voice - TM49
  (264, 26400, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 43),
  -- Linoone - Fling - TM56
  (264, 26400, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 44),
  -- Linoone - Charge Beam - TM57
  (264, 26400, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 45),
  -- Linoone - Shadow Claw - TM65
  (264, 26400, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 46),
  -- Linoone - Retaliate - TM67
  (264, 26400, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 47),
  -- Linoone - Giga Impact - TM68
  (264, 26400, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 48),
  -- Linoone - Thunder Wave - TM73
  (264, 26400, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 49),
  -- Linoone - Grass Knot - TM86
  (264, 26400, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 50),
  -- Linoone - Swagger - TM87
  (264, 26400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 51),
  -- Linoone - Sleep Talk - TM88
  (264, 26400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 52),
  -- Linoone - Substitute - TM90
  (264, 26400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 53),
  -- Linoone - Secret Power - TM94
  (264, 26400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 54),
  -- Linoone - Confide - TM100
  (264, 26400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 55),
  -- Linoone - Cut - HM01
  (264, 26400, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 56),
  -- Linoone - Surf - HM03
  (264, 26400, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 57),
  -- Linoone - Strength - HM04
  (264, 26400, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 58),
  -- Linoone - Rock Smash - HM06
  (264, 26400, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 59),
  -- Linoone - Super Fang - Tutor
  (264, 26400, 162, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Linoone - Snore - Tutor
  (264, 26400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Linoone - Icy Wind - Tutor
  (264, 26400, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Linoone - Iron Tail - Tutor
  (264, 26400, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Linoone - Helping Hand - Tutor
  (264, 26400, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Linoone - Trick - Tutor
  (264, 26400, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Linoone - Hyper Voice - Tutor
  (264, 26400, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Linoone - Covet - Tutor
  (264, 26400, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Linoone - Shock Wave - Tutor
  (264, 26400, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Linoone - Water Pulse - Tutor
  (264, 26400, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Linoone - Last Resort - Tutor
  (264, 26400, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Linoone - Seed Bomb - Tutor
  (264, 26400, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Linoone - Gunk Shot - Tutor
  (264, 26400, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Wurmple - Tackle - Level 1
  (265, 26500, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wurmple - String Shot - Level 1
  (265, 26500, 81, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wurmple - Poison Sting - Level 5
  (265, 26500, 40, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wurmple - Bug Bite - Level 15
  (265, 26500, 450, 14, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Wurmple - Snore - Tutor
  (265, 26500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 5),
  -- Wurmple - Bug Bite - Tutor
  (265, 26500, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 6),
  -- Wurmple - Electroweb - Tutor
  (265, 26500, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 7),
  -- Silcoon - Harden - Level 1
  (266, 26600, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silcoon - Harden - Level 7
  (266, 26600, 106, 14, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Silcoon - Iron Defense - Tutor
  (266, 26600, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 3),
  -- Silcoon - Bug Bite - Tutor
  (266, 26600, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 4),
  -- Silcoon - Electroweb - Tutor
  (266, 26600, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 5),
  -- Beautifly - Gust - Level 1
  (267, 26700, 16, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beautifly - Gust - Level 10
  (267, 26700, 16, 14, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Beautifly - Absorb - Level 12
  (267, 26700, 71, 14, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Beautifly - Stun Spore - Level 15
  (267, 26700, 78, 14, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Beautifly - Morning Sun - Level 17
  (267, 26700, 234, 14, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Beautifly - Air Cutter - Level 20
  (267, 26700, 314, 14, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Beautifly - Mega Drain - Level 22
  (267, 26700, 72, 14, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Beautifly - Silver Wind - Level 25
  (267, 26700, 318, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Beautifly - Attract - Level 27
  (267, 26700, 213, 14, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Beautifly - Whirlwind - Level 30
  (267, 26700, 18, 14, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Beautifly - Giga Drain - Level 32
  (267, 26700, 202, 14, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Beautifly - Bug Buzz - Level 35
  (267, 26700, 405, 14, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Beautifly - Rage - Level 37
  (267, 26700, 99, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Beautifly - Quiver Dance - Level 40
  (267, 26700, 483, 14, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Beautifly - Toxic - TM06
  (267, 26700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Beautifly - Venoshock - TM09
  (267, 26700, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 16),
  -- Beautifly - Hidden Power - TM10
  (267, 26700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Beautifly - Sunny Day - TM11
  (267, 26700, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Beautifly - Hyper Beam - TM15
  (267, 26700, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 19),
  -- Beautifly - Protect - TM17
  (267, 26700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Beautifly - Roost - TM19
  (267, 26700, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 21),
  -- Beautifly - Safeguard - TM20
  (267, 26700, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 22),
  -- Beautifly - Frustration - TM21
  (267, 26700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Beautifly - Solar Beam - TM22
  (267, 26700, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 24),
  -- Beautifly - Return - TM27
  (267, 26700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 25),
  -- Beautifly - Psychic - TM29
  (267, 26700, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 26),
  -- Beautifly - Shadow Ball - TM30
  (267, 26700, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 27),
  -- Beautifly - Double Team - TM32
  (267, 26700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Beautifly - Aerial Ace - TM40
  (267, 26700, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 29),
  -- Beautifly - Facade - TM42
  (267, 26700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 30),
  -- Beautifly - Rest - TM44
  (267, 26700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 31),
  -- Beautifly - Attract - TM45
  (267, 26700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 32),
  -- Beautifly - Thief - TM46
  (267, 26700, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 33),
  -- Beautifly - Round - TM48
  (267, 26700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 34),
  -- Beautifly - Energy Ball - TM53
  (267, 26700, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 35),
  -- Beautifly - Acrobatics - TM62
  (267, 26700, 512, 14, NULL, 2, NULL, NULL, 14002062, NULL, 36),
  -- Beautifly - Giga Impact - TM68
  (267, 26700, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 37),
  -- Beautifly - Flash - TM70
  (267, 26700, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 38),
  -- Beautifly - Struggle Bug - TM76
  (267, 26700, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 39),
  -- Beautifly - Infestation - TM83
  (267, 26700, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 40),
  -- Beautifly - Swagger - TM87
  (267, 26700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 41),
  -- Beautifly - Sleep Talk - TM88
  (267, 26700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 42),
  -- Beautifly - U-turn - TM89
  (267, 26700, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 43),
  -- Beautifly - Substitute - TM90
  (267, 26700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 44),
  -- Beautifly - Secret Power - TM94
  (267, 26700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 45),
  -- Beautifly - Confide - TM100
  (267, 26700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Beautifly - Snore - Tutor
  (267, 26700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Beautifly - Giga Drain - Tutor
  (267, 26700, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Beautifly - Signal Beam - Tutor
  (267, 26700, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Beautifly - Tailwind - Tutor
  (267, 26700, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Beautifly - Bug Bite - Tutor
  (267, 26700, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Beautifly - Electroweb - Tutor
  (267, 26700, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Cascoon - Harden - Level 1
  (268, 26800, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cascoon - Harden - Level 7
  (268, 26800, 106, 14, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Cascoon - Iron Defense - Tutor
  (268, 26800, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 3),
  -- Cascoon - Bug Bite - Tutor
  (268, 26800, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 4),
  -- Cascoon - Electroweb - Tutor
  (268, 26800, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 5),
  -- Dustox - Gust - Level 1
  (269, 26900, 16, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dustox - Gust - Level 10
  (269, 26900, 16, 14, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Dustox - Confusion - Level 12
  (269, 26900, 93, 14, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Dustox - Poison Powder - Level 15
  (269, 26900, 77, 14, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Dustox - Moonlight - Level 17
  (269, 26900, 236, 14, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Dustox - Venoshock - Level 20
  (269, 26900, 474, 14, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dustox - Psybeam - Level 22
  (269, 26900, 60, 14, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Dustox - Silver Wind - Level 25
  (269, 26900, 318, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Dustox - Light Screen - Level 27
  (269, 26900, 113, 14, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Dustox - Whirlwind - Level 30
  (269, 26900, 18, 14, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Dustox - Toxic - Level 32
  (269, 26900, 92, 14, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Dustox - Bug Buzz - Level 35
  (269, 26900, 405, 14, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Dustox - Protect - Level 37
  (269, 26900, 182, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Dustox - Quiver Dance - Level 40
  (269, 26900, 483, 14, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Dustox - Toxic - TM06
  (269, 26900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Dustox - Venoshock - TM09
  (269, 26900, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 16),
  -- Dustox - Hidden Power - TM10
  (269, 26900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Dustox - Sunny Day - TM11
  (269, 26900, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Dustox - Hyper Beam - TM15
  (269, 26900, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 19),
  -- Dustox - Light Screen - TM16
  (269, 26900, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 20),
  -- Dustox - Protect - TM17
  (269, 26900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Dustox - Roost - TM19
  (269, 26900, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 22),
  -- Dustox - Frustration - TM21
  (269, 26900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Dustox - Solar Beam - TM22
  (269, 26900, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 24),
  -- Dustox - Return - TM27
  (269, 26900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 25),
  -- Dustox - Psychic - TM29
  (269, 26900, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 26),
  -- Dustox - Shadow Ball - TM30
  (269, 26900, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 27),
  -- Dustox - Double Team - TM32
  (269, 26900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Dustox - Sludge Bomb - TM36
  (269, 26900, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 29),
  -- Dustox - Aerial Ace - TM40
  (269, 26900, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 30),
  -- Dustox - Facade - TM42
  (269, 26900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 31),
  -- Dustox - Rest - TM44
  (269, 26900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 32),
  -- Dustox - Attract - TM45
  (269, 26900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 33),
  -- Dustox - Thief - TM46
  (269, 26900, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 34),
  -- Dustox - Round - TM48
  (269, 26900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 35),
  -- Dustox - Energy Ball - TM53
  (269, 26900, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 36),
  -- Dustox - Acrobatics - TM62
  (269, 26900, 512, 14, NULL, 2, NULL, NULL, 14002062, NULL, 37),
  -- Dustox - Giga Impact - TM68
  (269, 26900, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 38),
  -- Dustox - Flash - TM70
  (269, 26900, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 39),
  -- Dustox - Struggle Bug - TM76
  (269, 26900, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 40),
  -- Dustox - Infestation - TM83
  (269, 26900, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 41),
  -- Dustox - Swagger - TM87
  (269, 26900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 42),
  -- Dustox - Sleep Talk - TM88
  (269, 26900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 43),
  -- Dustox - U-turn - TM89
  (269, 26900, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 44),
  -- Dustox - Substitute - TM90
  (269, 26900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 45),
  -- Dustox - Secret Power - TM94
  (269, 26900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 46),
  -- Dustox - Confide - TM100
  (269, 26900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 47),
  -- Dustox - Snore - Tutor
  (269, 26900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Dustox - Giga Drain - Tutor
  (269, 26900, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Dustox - Signal Beam - Tutor
  (269, 26900, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Dustox - Tailwind - Tutor
  (269, 26900, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Dustox - Bug Bite - Tutor
  (269, 26900, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Dustox - Electroweb - Tutor
  (269, 26900, 527, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Lotad - Astonish - Level 1
  (270, 27000, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lotad - Growl - Level 3
  (270, 27000, 45, 14, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Lotad - Absorb - Level 6
  (270, 27000, 71, 14, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Lotad - Bubble - Level 9
  (270, 27000, 145, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Lotad - Natural Gift - Level 12
  (270, 27000, 363, 14, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lotad - Mist - Level 15
  (270, 27000, 54, 14, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Lotad - Mega Drain - Level 18
  (270, 27000, 72, 14, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Lotad - Bubble Beam - Level 21
  (270, 27000, 61, 14, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Lotad - Nature Power - Level 24
  (270, 27000, 267, 14, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Lotad - Rain Dance - Level 27
  (270, 27000, 240, 14, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Lotad - Giga Drain - Level 30
  (270, 27000, 202, 14, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Lotad - Zen Headbutt - Level 33
  (270, 27000, 428, 14, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Lotad - Energy Ball - Level 36
  (270, 27000, 412, 14, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Lotad - Toxic - TM06
  (270, 27000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 14),
  -- Lotad - Hail - TM07
  (270, 27000, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 15),
  -- Lotad - Hidden Power - TM10
  (270, 27000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 16),
  -- Lotad - Sunny Day - TM11
  (270, 27000, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 17),
  -- Lotad - Ice Beam - TM13
  (270, 27000, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 18),
  -- Lotad - Blizzard - TM14
  (270, 27000, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 19),
  -- Lotad - Protect - TM17
  (270, 27000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Lotad - Rain Dance - TM18
  (270, 27000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Lotad - Frustration - TM21
  (270, 27000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Lotad - Solar Beam - TM22
  (270, 27000, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 23),
  -- Lotad - Return - TM27
  (270, 27000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Lotad - Double Team - TM32
  (270, 27000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Lotad - Facade - TM42
  (270, 27000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 26),
  -- Lotad - Rest - TM44
  (270, 27000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 27),
  -- Lotad - Attract - TM45
  (270, 27000, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 28),
  -- Lotad - Thief - TM46
  (270, 27000, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 29),
  -- Lotad - Round - TM48
  (270, 27000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 30),
  -- Lotad - Echoed Voice - TM49
  (270, 27000, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 31),
  -- Lotad - Energy Ball - TM53
  (270, 27000, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 32),
  -- Lotad - Scald - TM55
  (270, 27000, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 33),
  -- Lotad - Flash - TM70
  (270, 27000, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 34),
  -- Lotad - Swords Dance - TM75
  (270, 27000, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 35),
  -- Lotad - Grass Knot - TM86
  (270, 27000, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 36),
  -- Lotad - Swagger - TM87
  (270, 27000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 37),
  -- Lotad - Sleep Talk - TM88
  (270, 27000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 38),
  -- Lotad - Substitute - TM90
  (270, 27000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 39),
  -- Lotad - Secret Power - TM94
  (270, 27000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 40),
  -- Lotad - Nature Power - TM96
  (270, 27000, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 41),
  -- Lotad - Confide - TM100
  (270, 27000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 42),
  -- Lotad - Surf - HM03
  (270, 27000, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 43),
  -- Lotad - Water Gun - Egg
  (270, 27000, 55, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lotad - Counter - Egg
  (270, 27000, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lotad - Leech Seed - Egg
  (270, 27000, 73, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lotad - Razor Leaf - Egg
  (270, 27000, 75, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lotad - Flail - Egg
  (270, 27000, 175, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lotad - Giga Drain - Egg
  (270, 27000, 202, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lotad - Sweet Scent - Egg
  (270, 27000, 230, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lotad - Synthesis - Egg
  (270, 27000, 235, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lotad - Teeter Dance - Egg
  (270, 27000, 298, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lotad - Tickle - Egg
  (270, 27000, 321, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lotad - Snore - Tutor
  (270, 27000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Lotad - Icy Wind - Tutor
  (270, 27000, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Lotad - Giga Drain - Tutor
  (270, 27000, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Lotad - Synthesis - Tutor
  (270, 27000, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Lotad - Uproar - Tutor
  (270, 27000, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Lotad - Water Pulse - Tutor
  (270, 27000, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Lotad - Seed Bomb - Tutor
  (270, 27000, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Lotad - Zen Headbutt - Tutor
  (270, 27000, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Lombre - Astonish - Level 1
  (271, 27100, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lombre - Growl - Level 3
  (271, 27100, 45, 14, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Lombre - Absorb - Level 6
  (271, 27100, 71, 14, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Lombre - Bubble - Level 9
  (271, 27100, 145, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Lombre - Fury Swipes - Level 12
  (271, 27100, 154, 14, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lombre - Fake Out - Level 16
  (271, 27100, 252, 14, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Lombre - Water Sport - Level 20
  (271, 27100, 346, 14, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Lombre - Bubble Beam - Level 24
  (271, 27100, 61, 14, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Lombre - Nature Power - Level 28
  (271, 27100, 267, 14, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Lombre - Uproar - Level 32
  (271, 27100, 253, 14, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Lombre - Knock Off - Level 36
  (271, 27100, 282, 14, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Lombre - Zen Headbutt - Level 40
  (271, 27100, 428, 14, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Lombre - Hydro Pump - Level 44
  (271, 27100, 56, 14, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Lombre - Hone Claws - TM01
  (271, 27100, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 14),
  -- Lombre - Toxic - TM06
  (271, 27100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Lombre - Hail - TM07
  (271, 27100, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 16),
  -- Lombre - Hidden Power - TM10
  (271, 27100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Lombre - Sunny Day - TM11
  (271, 27100, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 18),
  -- Lombre - Ice Beam - TM13
  (271, 27100, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 19),
  -- Lombre - Blizzard - TM14
  (271, 27100, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 20),
  -- Lombre - Protect - TM17
  (271, 27100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Lombre - Rain Dance - TM18
  (271, 27100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 22),
  -- Lombre - Frustration - TM21
  (271, 27100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Lombre - Solar Beam - TM22
  (271, 27100, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 24),
  -- Lombre - Return - TM27
  (271, 27100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 25),
  -- Lombre - Brick Break - TM31
  (271, 27100, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 26),
  -- Lombre - Double Team - TM32
  (271, 27100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 27),
  -- Lombre - Facade - TM42
  (271, 27100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Lombre - Rest - TM44
  (271, 27100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 29),
  -- Lombre - Attract - TM45
  (271, 27100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 30),
  -- Lombre - Thief - TM46
  (271, 27100, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 31),
  -- Lombre - Round - TM48
  (271, 27100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 32),
  -- Lombre - Echoed Voice - TM49
  (271, 27100, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 33),
  -- Lombre - Energy Ball - TM53
  (271, 27100, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 34),
  -- Lombre - Scald - TM55
  (271, 27100, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 35),
  -- Lombre - Fling - TM56
  (271, 27100, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 36),
  -- Lombre - Flash - TM70
  (271, 27100, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 37),
  -- Lombre - Swords Dance - TM75
  (271, 27100, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 38),
  -- Lombre - Grass Knot - TM86
  (271, 27100, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 39),
  -- Lombre - Swagger - TM87
  (271, 27100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 40),
  -- Lombre - Sleep Talk - TM88
  (271, 27100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 41),
  -- Lombre - Substitute - TM90
  (271, 27100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 42),
  -- Lombre - Secret Power - TM94
  (271, 27100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 43),
  -- Lombre - Nature Power - TM96
  (271, 27100, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 44),
  -- Lombre - Power-Up Punch - TM98
  (271, 27100, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 45),
  -- Lombre - Confide - TM100
  (271, 27100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 46),
  -- Lombre - Surf - HM03
  (271, 27100, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 47),
  -- Lombre - Strength - HM04
  (271, 27100, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 48),
  -- Lombre - Waterfall - HM05
  (271, 27100, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 49),
  -- Lombre - Rock Smash - HM06
  (271, 27100, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 50),
  -- Lombre - Dive - HM07
  (271, 27100, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 51),
  -- Lombre - Fire Punch - Tutor
  (271, 27100, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Lombre - Ice Punch - Tutor
  (271, 27100, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Lombre - Thunder Punch - Tutor
  (271, 27100, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Lombre - Snore - Tutor
  (271, 27100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Lombre - Icy Wind - Tutor
  (271, 27100, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Lombre - Giga Drain - Tutor
  (271, 27100, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Lombre - Synthesis - Tutor
  (271, 27100, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Lombre - Uproar - Tutor
  (271, 27100, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Lombre - Knock Off - Tutor
  (271, 27100, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Lombre - Hyper Voice - Tutor
  (271, 27100, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Lombre - Water Pulse - Tutor
  (271, 27100, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Lombre - Seed Bomb - Tutor
  (271, 27100, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Lombre - Drain Punch - Tutor
  (271, 27100, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Lombre - Zen Headbutt - Tutor
  (271, 27100, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Ludicolo - Growl - Level 1
  (272, 27200, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ludicolo - Mega Drain - Level 1
  (272, 27200, 72, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ludicolo - Nature Power - Level 1
  (272, 27200, 267, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ludicolo - Astonish - Level 1
  (272, 27200, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ludicolo - Hone Claws - TM01
  (272, 27200, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 5),
  -- Ludicolo - Toxic - TM06
  (272, 27200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 6),
  -- Ludicolo - Hail - TM07
  (272, 27200, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 7),
  -- Ludicolo - Hidden Power - TM10
  (272, 27200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 8),
  -- Ludicolo - Sunny Day - TM11
  (272, 27200, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 9),
  -- Ludicolo - Ice Beam - TM13
  (272, 27200, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 10),
  -- Ludicolo - Blizzard - TM14
  (272, 27200, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 11),
  -- Ludicolo - Hyper Beam - TM15
  (272, 27200, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 12),
  -- Ludicolo - Protect - TM17
  (272, 27200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 13),
  -- Ludicolo - Rain Dance - TM18
  (272, 27200, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 14),
  -- Ludicolo - Frustration - TM21
  (272, 27200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 15),
  -- Ludicolo - Solar Beam - TM22
  (272, 27200, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 16),
  -- Ludicolo - Return - TM27
  (272, 27200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 17),
  -- Ludicolo - Brick Break - TM31
  (272, 27200, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 18),
  -- Ludicolo - Double Team - TM32
  (272, 27200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 19),
  -- Ludicolo - Facade - TM42
  (272, 27200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 20),
  -- Ludicolo - Rest - TM44
  (272, 27200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 21),
  -- Ludicolo - Attract - TM45
  (272, 27200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 22),
  -- Ludicolo - Thief - TM46
  (272, 27200, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 23),
  -- Ludicolo - Round - TM48
  (272, 27200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 24),
  -- Ludicolo - Echoed Voice - TM49
  (272, 27200, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 25),
  -- Ludicolo - Focus Blast - TM52
  (272, 27200, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 26),
  -- Ludicolo - Energy Ball - TM53
  (272, 27200, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 27),
  -- Ludicolo - Scald - TM55
  (272, 27200, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 28),
  -- Ludicolo - Fling - TM56
  (272, 27200, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 29),
  -- Ludicolo - Giga Impact - TM68
  (272, 27200, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 30),
  -- Ludicolo - Flash - TM70
  (272, 27200, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 31),
  -- Ludicolo - Swords Dance - TM75
  (272, 27200, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 32),
  -- Ludicolo - Grass Knot - TM86
  (272, 27200, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 33),
  -- Ludicolo - Swagger - TM87
  (272, 27200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 34),
  -- Ludicolo - Sleep Talk - TM88
  (272, 27200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 35),
  -- Ludicolo - Substitute - TM90
  (272, 27200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 36),
  -- Ludicolo - Secret Power - TM94
  (272, 27200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 37),
  -- Ludicolo - Nature Power - TM96
  (272, 27200, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 38),
  -- Ludicolo - Power-Up Punch - TM98
  (272, 27200, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 39),
  -- Ludicolo - Confide - TM100
  (272, 27200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 40),
  -- Ludicolo - Surf - HM03
  (272, 27200, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 41),
  -- Ludicolo - Strength - HM04
  (272, 27200, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 42),
  -- Ludicolo - Waterfall - HM05
  (272, 27200, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 43),
  -- Ludicolo - Rock Smash - HM06
  (272, 27200, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 44),
  -- Ludicolo - Dive - HM07
  (272, 27200, 291, 14, NULL, 3, NULL, NULL, 14003007, NULL, 45),
  -- Ludicolo - Fire Punch - Tutor
  (272, 27200, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Ludicolo - Ice Punch - Tutor
  (272, 27200, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Ludicolo - Thunder Punch - Tutor
  (272, 27200, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Ludicolo - Snore - Tutor
  (272, 27200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Ludicolo - Icy Wind - Tutor
  (272, 27200, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Ludicolo - Giga Drain - Tutor
  (272, 27200, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Ludicolo - Synthesis - Tutor
  (272, 27200, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Ludicolo - Uproar - Tutor
  (272, 27200, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Ludicolo - Focus Punch - Tutor
  (272, 27200, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Ludicolo - Knock Off - Tutor
  (272, 27200, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Ludicolo - Hyper Voice - Tutor
  (272, 27200, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Ludicolo - Water Pulse - Tutor
  (272, 27200, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Ludicolo - Seed Bomb - Tutor
  (272, 27200, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Ludicolo - Drain Punch - Tutor
  (272, 27200, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Ludicolo - Zen Headbutt - Tutor
  (272, 27200, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Seedot - Bide - Level 1
  (273, 27300, 117, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seedot - Harden - Level 3
  (273, 27300, 106, 14, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Seedot - Growth - Level 9
  (273, 27300, 74, 14, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Seedot - Nature Power - Level 15
  (273, 27300, 267, 14, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Seedot - Synthesis - Level 21
  (273, 27300, 235, 14, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Seedot - Sunny Day - Level 27
  (273, 27300, 241, 14, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Seedot - Explosion - Level 33
  (273, 27300, 153, 14, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Seedot - Toxic - TM06
  (273, 27300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 8),
  -- Seedot - Hidden Power - TM10
  (273, 27300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 9),
  -- Seedot - Sunny Day - TM11
  (273, 27300, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 10),
  -- Seedot - Protect - TM17
  (273, 27300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 11),
  -- Seedot - Frustration - TM21
  (273, 27300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 12),
  -- Seedot - Solar Beam - TM22
  (273, 27300, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 13),
  -- Seedot - Return - TM27
  (273, 27300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 14),
  -- Seedot - Dig - TM28
  (273, 27300, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 15),
  -- Seedot - Shadow Ball - TM30
  (273, 27300, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 16),
  -- Seedot - Double Team - TM32
  (273, 27300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 17),
  -- Seedot - Facade - TM42
  (273, 27300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 18),
  -- Seedot - Rest - TM44
  (273, 27300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 19),
  -- Seedot - Attract - TM45
  (273, 27300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 20),
  -- Seedot - Round - TM48
  (273, 27300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 21),
  -- Seedot - Energy Ball - TM53
  (273, 27300, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 22),
  -- Seedot - False Swipe - TM54
  (273, 27300, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 23),
  -- Seedot - Explosion - TM64
  (273, 27300, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 24),
  -- Seedot - Retaliate - TM67
  (273, 27300, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 25),
  -- Seedot - Flash - TM70
  (273, 27300, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 26),
  -- Seedot - Swords Dance - TM75
  (273, 27300, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 27),
  -- Seedot - Grass Knot - TM86
  (273, 27300, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 28),
  -- Seedot - Swagger - TM87
  (273, 27300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 29),
  -- Seedot - Sleep Talk - TM88
  (273, 27300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 30),
  -- Seedot - Substitute - TM90
  (273, 27300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 31),
  -- Seedot - Secret Power - TM94
  (273, 27300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 32),
  -- Seedot - Nature Power - TM96
  (273, 27300, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 33),
  -- Seedot - Confide - TM100
  (273, 27300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 34),
  -- Seedot - Rock Smash - HM06
  (273, 27300, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 35),
  -- Seedot - Razor Wind - Egg
  (273, 27300, 13, 14, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Seedot - Take Down - Egg
  (273, 27300, 36, 14, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Seedot - Leech Seed - Egg
  (273, 27300, 73, 14, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Seedot - Quick Attack - Egg
  (273, 27300, 98, 14, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Seedot - Amnesia - Egg
  (273, 27300, 133, 14, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Seedot - Beat Up - Egg
  (273, 27300, 251, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seedot - Bullet Seed - Egg
  (273, 27300, 331, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seedot - Power Swap - Egg
  (273, 27300, 384, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seedot - Worry Seed - Egg
  (273, 27300, 388, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Seedot - Nasty Plot - Egg
  (273, 27300, 417, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Seedot - Defog - Egg
  (273, 27300, 432, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Seedot - Foul Play - Egg
  (273, 27300, 492, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seedot - Grassy Terrain - Egg
  (273, 27300, 580, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seedot - Snore - Tutor
  (273, 27300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Seedot - Spite - Tutor
  (273, 27300, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Seedot - Giga Drain - Tutor
  (273, 27300, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Seedot - Synthesis - Tutor
  (273, 27300, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Seedot - Worry Seed - Tutor
  (273, 27300, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Seedot - Seed Bomb - Tutor
  (273, 27300, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Seedot - Foul Play - Tutor
  (273, 27300, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Nuzleaf - Pound - Level 1
  (274, 27400, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nuzleaf - Harden - Level 3
  (274, 27400, 106, 14, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Nuzleaf - Growth - Level 6
  (274, 27400, 74, 14, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Nuzleaf - Nature Power - Level 9
  (274, 27400, 267, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nuzleaf - Fake Out - Level 12
  (274, 27400, 252, 14, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Nuzleaf - Razor Leaf - Level 14
  (274, 27400, 75, 14, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Nuzleaf - Torment - Level 16
  (274, 27400, 259, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Nuzleaf - Razor Wind - Level 20
  (274, 27400, 13, 14, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Nuzleaf - Feint Attack - Level 24
  (274, 27400, 185, 14, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Nuzleaf - Leaf Blade - Level 28
  (274, 27400, 348, 14, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Nuzleaf - Swagger - Level 32
  (274, 27400, 207, 14, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Nuzleaf - Extrasensory - Level 36
  (274, 27400, 326, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Nuzleaf - Toxic - TM06
  (274, 27400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 13),
  -- Nuzleaf - Hidden Power - TM10
  (274, 27400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 14),
  -- Nuzleaf - Sunny Day - TM11
  (274, 27400, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 15),
  -- Nuzleaf - Hyper Beam - TM15
  (274, 27400, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 16),
  -- Nuzleaf - Protect - TM17
  (274, 27400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 17),
  -- Nuzleaf - Frustration - TM21
  (274, 27400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 18),
  -- Nuzleaf - Solar Beam - TM22
  (274, 27400, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 19),
  -- Nuzleaf - Return - TM27
  (274, 27400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 20),
  -- Nuzleaf - Dig - TM28
  (274, 27400, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 21),
  -- Nuzleaf - Shadow Ball - TM30
  (274, 27400, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 22),
  -- Nuzleaf - Brick Break - TM31
  (274, 27400, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 23),
  -- Nuzleaf - Double Team - TM32
  (274, 27400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 24),
  -- Nuzleaf - Rock Tomb - TM39
  (274, 27400, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 25),
  -- Nuzleaf - Torment - TM41
  (274, 27400, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 26),
  -- Nuzleaf - Facade - TM42
  (274, 27400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 27),
  -- Nuzleaf - Rest - TM44
  (274, 27400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 28),
  -- Nuzleaf - Attract - TM45
  (274, 27400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 29),
  -- Nuzleaf - Thief - TM46
  (274, 27400, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 30),
  -- Nuzleaf - Low Sweep - TM47
  (274, 27400, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 31),
  -- Nuzleaf - Round - TM48
  (274, 27400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 32),
  -- Nuzleaf - Energy Ball - TM53
  (274, 27400, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 33),
  -- Nuzleaf - False Swipe - TM54
  (274, 27400, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 34),
  -- Nuzleaf - Fling - TM56
  (274, 27400, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 35),
  -- Nuzleaf - Embargo - TM63
  (274, 27400, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 36),
  -- Nuzleaf - Explosion - TM64
  (274, 27400, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 37),
  -- Nuzleaf - Payback - TM66
  (274, 27400, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 38),
  -- Nuzleaf - Retaliate - TM67
  (274, 27400, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 39),
  -- Nuzleaf - Flash - TM70
  (274, 27400, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 40),
  -- Nuzleaf - Swords Dance - TM75
  (274, 27400, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 41),
  -- Nuzleaf - Psych Up - TM77
  (274, 27400, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 42),
  -- Nuzleaf - Rock Slide - TM80
  (274, 27400, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 43),
  -- Nuzleaf - Grass Knot - TM86
  (274, 27400, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 44),
  -- Nuzleaf - Swagger - TM87
  (274, 27400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 45),
  -- Nuzleaf - Sleep Talk - TM88
  (274, 27400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 46),
  -- Nuzleaf - Substitute - TM90
  (274, 27400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 47),
  -- Nuzleaf - Secret Power - TM94
  (274, 27400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 48),
  -- Nuzleaf - Snarl - TM95
  (274, 27400, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 49),
  -- Nuzleaf - Nature Power - TM96
  (274, 27400, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 50),
  -- Nuzleaf - Dark Pulse - TM97
  (274, 27400, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 51),
  -- Nuzleaf - Power-Up Punch - TM98
  (274, 27400, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 52),
  -- Nuzleaf - Confide - TM100
  (274, 27400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 53),
  -- Nuzleaf - Cut - HM01
  (274, 27400, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 54),
  -- Nuzleaf - Strength - HM04
  (274, 27400, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 55),
  -- Nuzleaf - Rock Smash - HM06
  (274, 27400, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 56),
  -- Nuzleaf - Low Kick - Tutor
  (274, 27400, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Nuzleaf - Snore - Tutor
  (274, 27400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Nuzleaf - Spite - Tutor
  (274, 27400, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Nuzleaf - Giga Drain - Tutor
  (274, 27400, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Nuzleaf - Synthesis - Tutor
  (274, 27400, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Nuzleaf - Worry Seed - Tutor
  (274, 27400, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Nuzleaf - Seed Bomb - Tutor
  (274, 27400, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Nuzleaf - Foul Play - Tutor
  (274, 27400, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Shiftry - Whirlwind - Level 1
  (275, 27500, 18, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shiftry - Razor Leaf - Level 1
  (275, 27500, 75, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shiftry - Feint Attack - Level 1
  (275, 27500, 185, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shiftry - Nasty Plot - Level 1
  (275, 27500, 417, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shiftry - Leaf Tornado - Level 20
  (275, 27500, 536, 14, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Shiftry - Hurricane - Level 32
  (275, 27500, 542, 14, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Shiftry - Leaf Storm - Level 44
  (275, 27500, 437, 14, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Shiftry - Toxic - TM06
  (275, 27500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 8),
  -- Shiftry - Hidden Power - TM10
  (275, 27500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 9),
  -- Shiftry - Sunny Day - TM11
  (275, 27500, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 10),
  -- Shiftry - Hyper Beam - TM15
  (275, 27500, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 11),
  -- Shiftry - Protect - TM17
  (275, 27500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 12),
  -- Shiftry - Frustration - TM21
  (275, 27500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 13),
  -- Shiftry - Solar Beam - TM22
  (275, 27500, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 14),
  -- Shiftry - Return - TM27
  (275, 27500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 15),
  -- Shiftry - Dig - TM28
  (275, 27500, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 16),
  -- Shiftry - Shadow Ball - TM30
  (275, 27500, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 17),
  -- Shiftry - Brick Break - TM31
  (275, 27500, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 18),
  -- Shiftry - Double Team - TM32
  (275, 27500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 19),
  -- Shiftry - Rock Tomb - TM39
  (275, 27500, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 20),
  -- Shiftry - Aerial Ace - TM40
  (275, 27500, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 21),
  -- Shiftry - Torment - TM41
  (275, 27500, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 22),
  -- Shiftry - Facade - TM42
  (275, 27500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 23),
  -- Shiftry - Rest - TM44
  (275, 27500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 24),
  -- Shiftry - Attract - TM45
  (275, 27500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 25),
  -- Shiftry - Thief - TM46
  (275, 27500, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 26),
  -- Shiftry - Low Sweep - TM47
  (275, 27500, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 27),
  -- Shiftry - Round - TM48
  (275, 27500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 28),
  -- Shiftry - Focus Blast - TM52
  (275, 27500, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 29),
  -- Shiftry - Energy Ball - TM53
  (275, 27500, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 30),
  -- Shiftry - False Swipe - TM54
  (275, 27500, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 31),
  -- Shiftry - Fling - TM56
  (275, 27500, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 32),
  -- Shiftry - Embargo - TM63
  (275, 27500, 373, 14, NULL, 2, NULL, NULL, 14002063, NULL, 33),
  -- Shiftry - Explosion - TM64
  (275, 27500, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 34),
  -- Shiftry - Payback - TM66
  (275, 27500, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 35),
  -- Shiftry - Retaliate - TM67
  (275, 27500, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 36),
  -- Shiftry - Giga Impact - TM68
  (275, 27500, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 37),
  -- Shiftry - Flash - TM70
  (275, 27500, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 38),
  -- Shiftry - Swords Dance - TM75
  (275, 27500, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 39),
  -- Shiftry - Psych Up - TM77
  (275, 27500, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 40),
  -- Shiftry - Rock Slide - TM80
  (275, 27500, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 41),
  -- Shiftry - X-Scissor - TM81
  (275, 27500, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 42),
  -- Shiftry - Grass Knot - TM86
  (275, 27500, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 43),
  -- Shiftry - Swagger - TM87
  (275, 27500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 44),
  -- Shiftry - Sleep Talk - TM88
  (275, 27500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 45),
  -- Shiftry - Substitute - TM90
  (275, 27500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 46),
  -- Shiftry - Secret Power - TM94
  (275, 27500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 47),
  -- Shiftry - Snarl - TM95
  (275, 27500, 555, 14, NULL, 2, NULL, NULL, 14002095, NULL, 48),
  -- Shiftry - Nature Power - TM96
  (275, 27500, 267, 14, NULL, 2, NULL, NULL, 14002096, NULL, 49),
  -- Shiftry - Dark Pulse - TM97
  (275, 27500, 399, 14, NULL, 2, NULL, NULL, 14002097, NULL, 50),
  -- Shiftry - Power-Up Punch - TM98
  (275, 27500, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 51),
  -- Shiftry - Confide - TM100
  (275, 27500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 52),
  -- Shiftry - Cut - HM01
  (275, 27500, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 53),
  -- Shiftry - Strength - HM04
  (275, 27500, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 54),
  -- Shiftry - Rock Smash - HM06
  (275, 27500, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 55),
  -- Shiftry - Low Kick - Tutor
  (275, 27500, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Shiftry - Snore - Tutor
  (275, 27500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Shiftry - Spite - Tutor
  (275, 27500, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Shiftry - Icy Wind - Tutor
  (275, 27500, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Shiftry - Giga Drain - Tutor
  (275, 27500, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Shiftry - Synthesis - Tutor
  (275, 27500, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Shiftry - Knock Off - Tutor
  (275, 27500, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Shiftry - Bounce - Tutor
  (275, 27500, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Shiftry - Tailwind - Tutor
  (275, 27500, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Shiftry - Worry Seed - Tutor
  (275, 27500, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Shiftry - Seed Bomb - Tutor
  (275, 27500, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Shiftry - Foul Play - Tutor
  (275, 27500, 492, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Taillow - Growl - Level 1
  (276, 27600, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Taillow - Peck - Level 1
  (276, 27600, 64, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Taillow - Focus Energy - Level 5
  (276, 27600, 116, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Taillow - Quick Attack - Level 9
  (276, 27600, 98, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Taillow - Wing Attack - Level 13
  (276, 27600, 17, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Taillow - Double Team - Level 17
  (276, 27600, 104, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Taillow - Aerial Ace - Level 21
  (276, 27600, 332, 14, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Taillow - Quick Guard - Level 25
  (276, 27600, 501, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Taillow - Agility - Level 29
  (276, 27600, 97, 14, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Taillow - Air Slash - Level 33
  (276, 27600, 403, 14, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Taillow - Endeavor - Level 37
  (276, 27600, 283, 14, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Taillow - Brave Bird - Level 41
  (276, 27600, 413, 14, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Taillow - Toxic - TM06
  (276, 27600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 13),
  -- Taillow - Hidden Power - TM10
  (276, 27600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 14),
  -- Taillow - Sunny Day - TM11
  (276, 27600, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 15),
  -- Taillow - Protect - TM17
  (276, 27600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 16),
  -- Taillow - Rain Dance - TM18
  (276, 27600, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 17),
  -- Taillow - Roost - TM19
  (276, 27600, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 18),
  -- Taillow - Frustration - TM21
  (276, 27600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 19),
  -- Taillow - Return - TM27
  (276, 27600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 20),
  -- Taillow - Double Team - TM32
  (276, 27600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 21),
  -- Taillow - Aerial Ace - TM40
  (276, 27600, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 22),
  -- Taillow - Facade - TM42
  (276, 27600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 23),
  -- Taillow - Rest - TM44
  (276, 27600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 24),
  -- Taillow - Attract - TM45
  (276, 27600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 25),
  -- Taillow - Thief - TM46
  (276, 27600, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 26),
  -- Taillow - Round - TM48
  (276, 27600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 27),
  -- Taillow - Echoed Voice - TM49
  (276, 27600, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 28),
  -- Taillow - Steel Wing - TM51
  (276, 27600, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 29),
  -- Taillow - Swagger - TM87
  (276, 27600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 30),
  -- Taillow - Sleep Talk - TM88
  (276, 27600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 31),
  -- Taillow - U-turn - TM89
  (276, 27600, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 32),
  -- Taillow - Substitute - TM90
  (276, 27600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 33),
  -- Taillow - Secret Power - TM94
  (276, 27600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 34),
  -- Taillow - Confide - TM100
  (276, 27600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 35),
  -- Taillow - Fly - HM02
  (276, 27600, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 36),
  -- Taillow - Whirlwind - Egg
  (276, 27600, 18, 14, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Taillow - Supersonic - Egg
  (276, 27600, 48, 14, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Taillow - Rage - Egg
  (276, 27600, 99, 14, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Taillow - Mirror Move - Egg
  (276, 27600, 119, 14, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Taillow - Sky Attack - Egg
  (276, 27600, 143, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Taillow - Steel Wing - Egg
  (276, 27600, 211, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Taillow - Pursuit - Egg
  (276, 27600, 228, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Taillow - Refresh - Egg
  (276, 27600, 287, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Taillow - Roost - Egg
  (276, 27600, 355, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Taillow - Brave Bird - Egg
  (276, 27600, 413, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Taillow - Defog - Egg
  (276, 27600, 432, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Taillow - Boomburst - Egg
  (276, 27600, 586, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Taillow - Sky Attack - Tutor
  (276, 27600, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Taillow - Snore - Tutor
  (276, 27600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Taillow - Heat Wave - Tutor
  (276, 27600, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Taillow - Endeavor - Tutor
  (276, 27600, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Taillow - Tailwind - Tutor
  (276, 27600, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Swellow - Growl - Level 1
  (277, 27700, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swellow - Peck - Level 1
  (277, 27700, 64, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swellow - Quick Attack - Level 1
  (277, 27700, 98, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swellow - Focus Energy - Level 1
  (277, 27700, 116, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swellow - Pluck - Level 1
  (277, 27700, 365, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swellow - Air Slash - Level 1
  (277, 27700, 403, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Swellow - Brave Bird - Level 1
  (277, 27700, 413, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Swellow - Focus Energy - Level 5
  (277, 27700, 116, 14, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Swellow - Quick Attack - Level 9
  (277, 27700, 98, 14, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Swellow - Wing Attack - Level 13
  (277, 27700, 17, 14, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Swellow - Double Team - Level 17
  (277, 27700, 104, 14, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Swellow - Aerial Ace - Level 21
  (277, 27700, 332, 14, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Swellow - Quick Guard - Level 27
  (277, 27700, 501, 14, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Swellow - Agility - Level 33
  (277, 27700, 97, 14, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Swellow - Endeavor - Level 39
  (277, 27700, 283, 14, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Swellow - Air Slash - Level 45
  (277, 27700, 403, 14, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Swellow - Brave Bird - Level 51
  (277, 27700, 413, 14, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Swellow - Toxic - TM06
  (277, 27700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Swellow - Hidden Power - TM10
  (277, 27700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Swellow - Sunny Day - TM11
  (277, 27700, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 20),
  -- Swellow - Hyper Beam - TM15
  (277, 27700, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 21),
  -- Swellow - Protect - TM17
  (277, 27700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Swellow - Rain Dance - TM18
  (277, 27700, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 23),
  -- Swellow - Roost - TM19
  (277, 27700, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 24),
  -- Swellow - Frustration - TM21
  (277, 27700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Swellow - Return - TM27
  (277, 27700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 26),
  -- Swellow - Double Team - TM32
  (277, 27700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 27),
  -- Swellow - Aerial Ace - TM40
  (277, 27700, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 28),
  -- Swellow - Facade - TM42
  (277, 27700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 29),
  -- Swellow - Rest - TM44
  (277, 27700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 30),
  -- Swellow - Attract - TM45
  (277, 27700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 31),
  -- Swellow - Thief - TM46
  (277, 27700, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 32),
  -- Swellow - Round - TM48
  (277, 27700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 33),
  -- Swellow - Echoed Voice - TM49
  (277, 27700, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 34),
  -- Swellow - Steel Wing - TM51
  (277, 27700, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 35),
  -- Swellow - Giga Impact - TM68
  (277, 27700, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 36),
  -- Swellow - Swagger - TM87
  (277, 27700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 37),
  -- Swellow - Sleep Talk - TM88
  (277, 27700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 38),
  -- Swellow - U-turn - TM89
  (277, 27700, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 39),
  -- Swellow - Substitute - TM90
  (277, 27700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 40),
  -- Swellow - Secret Power - TM94
  (277, 27700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 41),
  -- Swellow - Confide - TM100
  (277, 27700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 42),
  -- Swellow - Fly - HM02
  (277, 27700, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 43),
  -- Swellow - Sky Attack - Tutor
  (277, 27700, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 44),
  -- Swellow - Snore - Tutor
  (277, 27700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 45),
  -- Swellow - Heat Wave - Tutor
  (277, 27700, 257, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Swellow - Endeavor - Tutor
  (277, 27700, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Swellow - Tailwind - Tutor
  (277, 27700, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Wingull - Growl - Level 1
  (278, 27800, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wingull - Water Gun - Level 1
  (278, 27800, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wingull - Supersonic - Level 5
  (278, 27800, 48, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wingull - Wing Attack - Level 8
  (278, 27800, 17, 14, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Wingull - Mist - Level 12
  (278, 27800, 54, 14, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Wingull - Water Pulse - Level 15
  (278, 27800, 352, 14, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Wingull - Quick Attack - Level 19
  (278, 27800, 98, 14, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Wingull - Air Cutter - Level 22
  (278, 27800, 314, 14, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Wingull - Pursuit - Level 26
  (278, 27800, 228, 14, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Wingull - Aerial Ace - Level 29
  (278, 27800, 332, 14, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Wingull - Roost - Level 33
  (278, 27800, 355, 14, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Wingull - Agility - Level 36
  (278, 27800, 97, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Wingull - Air Slash - Level 40
  (278, 27800, 403, 14, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Wingull - Hurricane - Level 43
  (278, 27800, 542, 14, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Wingull - Toxic - TM06
  (278, 27800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Wingull - Hail - TM07
  (278, 27800, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 16),
  -- Wingull - Hidden Power - TM10
  (278, 27800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 17),
  -- Wingull - Ice Beam - TM13
  (278, 27800, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 18),
  -- Wingull - Blizzard - TM14
  (278, 27800, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 19),
  -- Wingull - Protect - TM17
  (278, 27800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Wingull - Rain Dance - TM18
  (278, 27800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Wingull - Roost - TM19
  (278, 27800, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 22),
  -- Wingull - Frustration - TM21
  (278, 27800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 23),
  -- Wingull - Return - TM27
  (278, 27800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Wingull - Double Team - TM32
  (278, 27800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Wingull - Aerial Ace - TM40
  (278, 27800, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 26),
  -- Wingull - Facade - TM42
  (278, 27800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 27),
  -- Wingull - Rest - TM44
  (278, 27800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 28),
  -- Wingull - Attract - TM45
  (278, 27800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 29),
  -- Wingull - Thief - TM46
  (278, 27800, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 30),
  -- Wingull - Round - TM48
  (278, 27800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 31),
  -- Wingull - Echoed Voice - TM49
  (278, 27800, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 32),
  -- Wingull - Steel Wing - TM51
  (278, 27800, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 33),
  -- Wingull - Scald - TM55
  (278, 27800, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 34),
  -- Wingull - Swagger - TM87
  (278, 27800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 35),
  -- Wingull - Sleep Talk - TM88
  (278, 27800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 36),
  -- Wingull - U-turn - TM89
  (278, 27800, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 37),
  -- Wingull - Substitute - TM90
  (278, 27800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 38),
  -- Wingull - Secret Power - TM94
  (278, 27800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 39),
  -- Wingull - Confide - TM100
  (278, 27800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 40),
  -- Wingull - Fly - HM02
  (278, 27800, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 41),
  -- Wingull - Gust - Egg
  (278, 27800, 16, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wingull - Mist - Egg
  (278, 27800, 54, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wingull - Agility - Egg
  (278, 27800, 97, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wingull - Twister - Egg
  (278, 27800, 239, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wingull - Knock Off - Egg
  (278, 27800, 282, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wingull - Water Sport - Egg
  (278, 27800, 346, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wingull - Roost - Egg
  (278, 27800, 355, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wingull - Brine - Egg
  (278, 27800, 362, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wingull - Aqua Ring - Egg
  (278, 27800, 392, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wingull - Wide Guard - Egg
  (278, 27800, 469, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wingull - Soak - Egg
  (278, 27800, 487, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wingull - Sky Attack - Tutor
  (278, 27800, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Wingull - Snore - Tutor
  (278, 27800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Wingull - Icy Wind - Tutor
  (278, 27800, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Wingull - Uproar - Tutor
  (278, 27800, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Wingull - Knock Off - Tutor
  (278, 27800, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Wingull - Shock Wave - Tutor
  (278, 27800, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Wingull - Water Pulse - Tutor
  (278, 27800, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Wingull - Tailwind - Tutor
  (278, 27800, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Pelipper - Wing Attack - Level 1
  (279, 27900, 17, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pelipper - Growl - Level 1
  (279, 27900, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pelipper - Water Gun - Level 1
  (279, 27900, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pelipper - Hydro Pump - Level 1
  (279, 27900, 56, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pelipper - Water Sport - Level 1
  (279, 27900, 346, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pelipper - Tailwind - Level 1
  (279, 27900, 366, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Pelipper - Soak - Level 1
  (279, 27900, 487, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Pelipper - Hurricane - Level 1
  (279, 27900, 542, 14, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Pelipper - Supersonic - Level 5
  (279, 27900, 48, 14, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Pelipper - Wing Attack - Level 8
  (279, 27900, 17, 14, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Pelipper - Mist - Level 12
  (279, 27900, 54, 14, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Pelipper - Water Pulse - Level 15
  (279, 27900, 352, 14, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Pelipper - Payback - Level 19
  (279, 27900, 371, 14, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Pelipper - Roost - Level 22
  (279, 27900, 355, 14, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Pelipper - Protect - Level 25
  (279, 27900, 182, 14, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Pelipper - Brine - Level 28
  (279, 27900, 362, 14, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Pelipper - Stockpile - Level 33
  (279, 27900, 254, 14, NULL, 1, 33, NULL, NULL, NULL, 17),
  -- Pelipper - Spit Up - Level 33
  (279, 27900, 255, 14, NULL, 1, 33, NULL, NULL, NULL, 18),
  -- Pelipper - Swallow - Level 33
  (279, 27900, 256, 14, NULL, 1, 33, NULL, NULL, NULL, 19),
  -- Pelipper - Fling - Level 39
  (279, 27900, 374, 14, NULL, 1, 39, NULL, NULL, NULL, 20),
  -- Pelipper - Tailwind - Level 44
  (279, 27900, 366, 14, NULL, 1, 44, NULL, NULL, NULL, 21),
  -- Pelipper - Hydro Pump - Level 50
  (279, 27900, 56, 14, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Pelipper - Hurricane - Level 55
  (279, 27900, 542, 14, NULL, 1, 55, NULL, NULL, NULL, 23),
  -- Pelipper - Toxic - TM06
  (279, 27900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 24),
  -- Pelipper - Hail - TM07
  (279, 27900, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 25),
  -- Pelipper - Hidden Power - TM10
  (279, 27900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 26),
  -- Pelipper - Ice Beam - TM13
  (279, 27900, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 27),
  -- Pelipper - Blizzard - TM14
  (279, 27900, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 28),
  -- Pelipper - Hyper Beam - TM15
  (279, 27900, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 29),
  -- Pelipper - Protect - TM17
  (279, 27900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 30),
  -- Pelipper - Rain Dance - TM18
  (279, 27900, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 31),
  -- Pelipper - Roost - TM19
  (279, 27900, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 32),
  -- Pelipper - Frustration - TM21
  (279, 27900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 33),
  -- Pelipper - Return - TM27
  (279, 27900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 34),
  -- Pelipper - Double Team - TM32
  (279, 27900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 35),
  -- Pelipper - Aerial Ace - TM40
  (279, 27900, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 36),
  -- Pelipper - Facade - TM42
  (279, 27900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 37),
  -- Pelipper - Rest - TM44
  (279, 27900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 38),
  -- Pelipper - Attract - TM45
  (279, 27900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 39),
  -- Pelipper - Thief - TM46
  (279, 27900, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 40),
  -- Pelipper - Round - TM48
  (279, 27900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 41),
  -- Pelipper - Echoed Voice - TM49
  (279, 27900, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 42),
  -- Pelipper - Steel Wing - TM51
  (279, 27900, 211, 14, NULL, 2, NULL, NULL, 14002051, NULL, 43),
  -- Pelipper - Scald - TM55
  (279, 27900, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 44),
  -- Pelipper - Fling - TM56
  (279, 27900, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 45),
  -- Pelipper - Sky Drop - TM58
  (279, 27900, 507, 14, NULL, 2, NULL, NULL, 14002058, NULL, 46),
  -- Pelipper - Payback - TM66
  (279, 27900, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 47),
  -- Pelipper - Giga Impact - TM68
  (279, 27900, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 48),
  -- Pelipper - Swagger - TM87
  (279, 27900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 49),
  -- Pelipper - Sleep Talk - TM88
  (279, 27900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 50),
  -- Pelipper - U-turn - TM89
  (279, 27900, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 51),
  -- Pelipper - Substitute - TM90
  (279, 27900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 52),
  -- Pelipper - Secret Power - TM94
  (279, 27900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 53),
  -- Pelipper - Confide - TM100
  (279, 27900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 54),
  -- Pelipper - Fly - HM02
  (279, 27900, 19, 14, NULL, 3, NULL, NULL, 14003002, NULL, 55),
  -- Pelipper - Surf - HM03
  (279, 27900, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 56),
  -- Pelipper - Sky Attack - Tutor
  (279, 27900, 143, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Pelipper - Snore - Tutor
  (279, 27900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Pelipper - Icy Wind - Tutor
  (279, 27900, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Pelipper - Uproar - Tutor
  (279, 27900, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Pelipper - Knock Off - Tutor
  (279, 27900, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Pelipper - Shock Wave - Tutor
  (279, 27900, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Pelipper - Water Pulse - Tutor
  (279, 27900, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Pelipper - Tailwind - Tutor
  (279, 27900, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Pelipper - Seed Bomb - Tutor
  (279, 27900, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Pelipper - Gunk Shot - Tutor
  (279, 27900, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Ralts - Growl - Level 1
  (280, 28000, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ralts - Confusion - Level 4
  (280, 28000, 93, 14, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Ralts - Double Team - Level 6
  (280, 28000, 104, 14, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Ralts - Teleport - Level 9
  (280, 28000, 100, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ralts - Disarming Voice - Level 11
  (280, 28000, 574, 14, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Ralts - Lucky Chant - Level 14
  (280, 28000, 381, 14, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Ralts - Magical Leaf - Level 17
  (280, 28000, 345, 14, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Ralts - Heal Pulse - Level 19
  (280, 28000, 505, 14, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Ralts - Draining Kiss - Level 22
  (280, 28000, 577, 14, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Ralts - Calm Mind - Level 24
  (280, 28000, 347, 14, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Ralts - Psychic - Level 27
  (280, 28000, 94, 14, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Ralts - Imprison - Level 29
  (280, 28000, 286, 14, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Ralts - Future Sight - Level 32
  (280, 28000, 248, 14, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Ralts - Charm - Level 34
  (280, 28000, 204, 14, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Ralts - Hypnosis - Level 37
  (280, 28000, 95, 14, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Ralts - Dream Eater - Level 39
  (280, 28000, 138, 14, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Ralts - Stored Power - Level 42
  (280, 28000, 500, 14, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Ralts - Psyshock - TM03
  (280, 28000, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 18),
  -- Ralts - Calm Mind - TM04
  (280, 28000, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 19),
  -- Ralts - Toxic - TM06
  (280, 28000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 20),
  -- Ralts - Hidden Power - TM10
  (280, 28000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 21),
  -- Ralts - Sunny Day - TM11
  (280, 28000, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 22),
  -- Ralts - Taunt - TM12
  (280, 28000, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 23),
  -- Ralts - Light Screen - TM16
  (280, 28000, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 24),
  -- Ralts - Protect - TM17
  (280, 28000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Ralts - Rain Dance - TM18
  (280, 28000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Ralts - Safeguard - TM20
  (280, 28000, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 27),
  -- Ralts - Frustration - TM21
  (280, 28000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Ralts - Thunderbolt - TM24
  (280, 28000, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 29),
  -- Ralts - Return - TM27
  (280, 28000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 30),
  -- Ralts - Psychic - TM29
  (280, 28000, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 31),
  -- Ralts - Shadow Ball - TM30
  (280, 28000, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 32),
  -- Ralts - Double Team - TM32
  (280, 28000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 33),
  -- Ralts - Reflect - TM33
  (280, 28000, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 34),
  -- Ralts - Torment - TM41
  (280, 28000, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 35),
  -- Ralts - Facade - TM42
  (280, 28000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Ralts - Rest - TM44
  (280, 28000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Ralts - Attract - TM45
  (280, 28000, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Ralts - Thief - TM46
  (280, 28000, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 39),
  -- Ralts - Round - TM48
  (280, 28000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 40),
  -- Ralts - Echoed Voice - TM49
  (280, 28000, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 41),
  -- Ralts - Fling - TM56
  (280, 28000, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 42),
  -- Ralts - Charge Beam - TM57
  (280, 28000, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 43),
  -- Ralts - Will-O-Wisp - TM61
  (280, 28000, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 44),
  -- Ralts - Flash - TM70
  (280, 28000, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 45),
  -- Ralts - Thunder Wave - TM73
  (280, 28000, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 46),
  -- Ralts - Psych Up - TM77
  (280, 28000, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 47),
  -- Ralts - Dream Eater - TM85
  (280, 28000, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 48),
  -- Ralts - Grass Knot - TM86
  (280, 28000, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 49),
  -- Ralts - Swagger - TM87
  (280, 28000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 50),
  -- Ralts - Sleep Talk - TM88
  (280, 28000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 51),
  -- Ralts - Substitute - TM90
  (280, 28000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 52),
  -- Ralts - Trick Room - TM92
  (280, 28000, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 53),
  -- Ralts - Secret Power - TM94
  (280, 28000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 54),
  -- Ralts - Dazzling Gleam - TM99
  (280, 28000, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 55),
  -- Ralts - Confide - TM100
  (280, 28000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 56),
  -- Ralts - Disable - Egg
  (280, 28000, 50, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ralts - Confuse Ray - Egg
  (280, 28000, 109, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ralts - Destiny Bond - Egg
  (280, 28000, 194, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ralts - Mean Look - Egg
  (280, 28000, 212, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Ralts - Encore - Egg
  (280, 28000, 227, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Ralts - Memento - Egg
  (280, 28000, 262, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Ralts - Skill Swap - Egg
  (280, 28000, 285, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Ralts - Grudge - Egg
  (280, 28000, 288, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ralts - Shadow Sneak - Egg
  (280, 28000, 425, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ralts - Synchronoise - Egg
  (280, 28000, 485, 14, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Ralts - Ally Switch - Egg
  (280, 28000, 502, 14, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Ralts - Misty Terrain - Egg
  (280, 28000, 581, 14, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Ralts - Fire Punch - Tutor
  (280, 28000, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Ralts - Ice Punch - Tutor
  (280, 28000, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Ralts - Thunder Punch - Tutor
  (280, 28000, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Ralts - Snore - Tutor
  (280, 28000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Ralts - Icy Wind - Tutor
  (280, 28000, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Ralts - Pain Split - Tutor
  (280, 28000, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Ralts - Helping Hand - Tutor
  (280, 28000, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Ralts - Trick - Tutor
  (280, 28000, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Ralts - Magic Coat - Tutor
  (280, 28000, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Ralts - Recycle - Tutor
  (280, 28000, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Ralts - Skill Swap - Tutor
  (280, 28000, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Ralts - Snatch - Tutor
  (280, 28000, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Ralts - Hyper Voice - Tutor
  (280, 28000, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Ralts - Signal Beam - Tutor
  (280, 28000, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Ralts - Shock Wave - Tutor
  (280, 28000, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Ralts - Zen Headbutt - Tutor
  (280, 28000, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Ralts - Wonder Room - Tutor
  (280, 28000, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Ralts - Magic Room - Tutor
  (280, 28000, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Kirlia - Growl - Level 1
  (281, 28100, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kirlia - Confusion - Level 1
  (281, 28100, 93, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kirlia - Teleport - Level 1
  (281, 28100, 100, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kirlia - Double Team - Level 1
  (281, 28100, 104, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kirlia - Confusion - Level 4
  (281, 28100, 93, 14, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Kirlia - Double Team - Level 6
  (281, 28100, 104, 14, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Kirlia - Teleport - Level 9
  (281, 28100, 100, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Kirlia - Disarming Voice - Level 11
  (281, 28100, 574, 14, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Kirlia - Lucky Chant - Level 14
  (281, 28100, 381, 14, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Kirlia - Magical Leaf - Level 17
  (281, 28100, 345, 14, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Kirlia - Heal Pulse - Level 19
  (281, 28100, 505, 14, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Kirlia - Draining Kiss - Level 23
  (281, 28100, 577, 14, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Kirlia - Calm Mind - Level 26
  (281, 28100, 347, 14, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Kirlia - Psychic - Level 30
  (281, 28100, 94, 14, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Kirlia - Imprison - Level 33
  (281, 28100, 286, 14, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Kirlia - Future Sight - Level 37
  (281, 28100, 248, 14, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Kirlia - Charm - Level 40
  (281, 28100, 204, 14, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Kirlia - Hypnosis - Level 44
  (281, 28100, 95, 14, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Kirlia - Dream Eater - Level 47
  (281, 28100, 138, 14, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Kirlia - Stored Power - Level 51
  (281, 28100, 500, 14, NULL, 1, 51, NULL, NULL, NULL, 20),
  -- Kirlia - Psyshock - TM03
  (281, 28100, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 21),
  -- Kirlia - Calm Mind - TM04
  (281, 28100, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 22),
  -- Kirlia - Toxic - TM06
  (281, 28100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 23),
  -- Kirlia - Hidden Power - TM10
  (281, 28100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Kirlia - Sunny Day - TM11
  (281, 28100, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 25),
  -- Kirlia - Taunt - TM12
  (281, 28100, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 26),
  -- Kirlia - Light Screen - TM16
  (281, 28100, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 27),
  -- Kirlia - Protect - TM17
  (281, 28100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 28),
  -- Kirlia - Rain Dance - TM18
  (281, 28100, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 29),
  -- Kirlia - Safeguard - TM20
  (281, 28100, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 30),
  -- Kirlia - Frustration - TM21
  (281, 28100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 31),
  -- Kirlia - Thunderbolt - TM24
  (281, 28100, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 32),
  -- Kirlia - Return - TM27
  (281, 28100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 33),
  -- Kirlia - Psychic - TM29
  (281, 28100, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 34),
  -- Kirlia - Shadow Ball - TM30
  (281, 28100, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 35),
  -- Kirlia - Double Team - TM32
  (281, 28100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 36),
  -- Kirlia - Reflect - TM33
  (281, 28100, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 37),
  -- Kirlia - Torment - TM41
  (281, 28100, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 38),
  -- Kirlia - Facade - TM42
  (281, 28100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 39),
  -- Kirlia - Rest - TM44
  (281, 28100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 40),
  -- Kirlia - Attract - TM45
  (281, 28100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 41),
  -- Kirlia - Thief - TM46
  (281, 28100, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 42),
  -- Kirlia - Round - TM48
  (281, 28100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 43),
  -- Kirlia - Echoed Voice - TM49
  (281, 28100, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 44),
  -- Kirlia - Fling - TM56
  (281, 28100, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 45),
  -- Kirlia - Charge Beam - TM57
  (281, 28100, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 46),
  -- Kirlia - Will-O-Wisp - TM61
  (281, 28100, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 47),
  -- Kirlia - Flash - TM70
  (281, 28100, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 48),
  -- Kirlia - Thunder Wave - TM73
  (281, 28100, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 49),
  -- Kirlia - Psych Up - TM77
  (281, 28100, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 50),
  -- Kirlia - Dream Eater - TM85
  (281, 28100, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 51),
  -- Kirlia - Grass Knot - TM86
  (281, 28100, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 52),
  -- Kirlia - Swagger - TM87
  (281, 28100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 53),
  -- Kirlia - Sleep Talk - TM88
  (281, 28100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 54),
  -- Kirlia - Substitute - TM90
  (281, 28100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 55),
  -- Kirlia - Trick Room - TM92
  (281, 28100, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 56),
  -- Kirlia - Secret Power - TM94
  (281, 28100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 57),
  -- Kirlia - Dazzling Gleam - TM99
  (281, 28100, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 58),
  -- Kirlia - Confide - TM100
  (281, 28100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 59),
  -- Kirlia - Fire Punch - Tutor
  (281, 28100, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Kirlia - Ice Punch - Tutor
  (281, 28100, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Kirlia - Thunder Punch - Tutor
  (281, 28100, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Kirlia - Snore - Tutor
  (281, 28100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Kirlia - Icy Wind - Tutor
  (281, 28100, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Kirlia - Pain Split - Tutor
  (281, 28100, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Kirlia - Helping Hand - Tutor
  (281, 28100, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Kirlia - Trick - Tutor
  (281, 28100, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Kirlia - Magic Coat - Tutor
  (281, 28100, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Kirlia - Recycle - Tutor
  (281, 28100, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Kirlia - Skill Swap - Tutor
  (281, 28100, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Kirlia - Snatch - Tutor
  (281, 28100, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Kirlia - Hyper Voice - Tutor
  (281, 28100, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Kirlia - Signal Beam - Tutor
  (281, 28100, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Kirlia - Shock Wave - Tutor
  (281, 28100, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Kirlia - Zen Headbutt - Tutor
  (281, 28100, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Kirlia - Wonder Room - Tutor
  (281, 28100, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Kirlia - Magic Room - Tutor
  (281, 28100, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Gardevoir - Growl - Level 1
  (282, 28200, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gardevoir - Confusion - Level 1
  (282, 28200, 93, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gardevoir - Teleport - Level 1
  (282, 28200, 100, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gardevoir - Double Team - Level 1
  (282, 28200, 104, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gardevoir - Healing Wish - Level 1
  (282, 28200, 361, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gardevoir - Stored Power - Level 1
  (282, 28200, 500, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gardevoir - Misty Terrain - Level 1
  (282, 28200, 581, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gardevoir - Moonblast - Level 1
  (282, 28200, 585, 14, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Gardevoir - Confusion - Level 4
  (282, 28200, 93, 14, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Gardevoir - Double Team - Level 6
  (282, 28200, 104, 14, NULL, 1, 6, NULL, NULL, NULL, 10),
  -- Gardevoir - Teleport - Level 9
  (282, 28200, 100, 14, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Gardevoir - Disarming Voice - Level 11
  (282, 28200, 574, 14, NULL, 1, 11, NULL, NULL, NULL, 12),
  -- Gardevoir - Wish - Level 14
  (282, 28200, 273, 14, NULL, 1, 14, NULL, NULL, NULL, 13),
  -- Gardevoir - Magical Leaf - Level 17
  (282, 28200, 345, 14, NULL, 1, 17, NULL, NULL, NULL, 14),
  -- Gardevoir - Heal Pulse - Level 19
  (282, 28200, 505, 14, NULL, 1, 19, NULL, NULL, NULL, 15),
  -- Gardevoir - Draining Kiss - Level 23
  (282, 28200, 577, 14, NULL, 1, 23, NULL, NULL, NULL, 16),
  -- Gardevoir - Calm Mind - Level 26
  (282, 28200, 347, 14, NULL, 1, 26, NULL, NULL, NULL, 17),
  -- Gardevoir - Psychic - Level 31
  (282, 28200, 94, 14, NULL, 1, 31, NULL, NULL, NULL, 18),
  -- Gardevoir - Imprison - Level 35
  (282, 28200, 286, 14, NULL, 1, 35, NULL, NULL, NULL, 19),
  -- Gardevoir - Future Sight - Level 40
  (282, 28200, 248, 14, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Gardevoir - Captivate - Level 44
  (282, 28200, 445, 14, NULL, 1, 44, NULL, NULL, NULL, 21),
  -- Gardevoir - Hypnosis - Level 49
  (282, 28200, 95, 14, NULL, 1, 49, NULL, NULL, NULL, 22),
  -- Gardevoir - Dream Eater - Level 53
  (282, 28200, 138, 14, NULL, 1, 53, NULL, NULL, NULL, 23),
  -- Gardevoir - Stored Power - Level 58
  (282, 28200, 500, 14, NULL, 1, 58, NULL, NULL, NULL, 24),
  -- Gardevoir - Moonblast - Level 62
  (282, 28200, 585, 14, NULL, 1, 62, NULL, NULL, NULL, 25),
  -- Gardevoir - Psyshock - TM03
  (282, 28200, 473, 14, NULL, 2, NULL, NULL, 14002003, NULL, 26),
  -- Gardevoir - Calm Mind - TM04
  (282, 28200, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 27),
  -- Gardevoir - Toxic - TM06
  (282, 28200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 28),
  -- Gardevoir - Hidden Power - TM10
  (282, 28200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 29),
  -- Gardevoir - Sunny Day - TM11
  (282, 28200, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 30),
  -- Gardevoir - Taunt - TM12
  (282, 28200, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 31),
  -- Gardevoir - Hyper Beam - TM15
  (282, 28200, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 32),
  -- Gardevoir - Light Screen - TM16
  (282, 28200, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 33),
  -- Gardevoir - Protect - TM17
  (282, 28200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 34),
  -- Gardevoir - Rain Dance - TM18
  (282, 28200, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 35),
  -- Gardevoir - Safeguard - TM20
  (282, 28200, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 36),
  -- Gardevoir - Frustration - TM21
  (282, 28200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 37),
  -- Gardevoir - Thunderbolt - TM24
  (282, 28200, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 38),
  -- Gardevoir - Return - TM27
  (282, 28200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 39),
  -- Gardevoir - Psychic - TM29
  (282, 28200, 94, 14, NULL, 2, NULL, NULL, 14002029, NULL, 40),
  -- Gardevoir - Shadow Ball - TM30
  (282, 28200, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 41),
  -- Gardevoir - Double Team - TM32
  (282, 28200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 42),
  -- Gardevoir - Reflect - TM33
  (282, 28200, 115, 14, NULL, 2, NULL, NULL, 14002033, NULL, 43),
  -- Gardevoir - Torment - TM41
  (282, 28200, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 44),
  -- Gardevoir - Facade - TM42
  (282, 28200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 45),
  -- Gardevoir - Rest - TM44
  (282, 28200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 46),
  -- Gardevoir - Attract - TM45
  (282, 28200, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 47),
  -- Gardevoir - Thief - TM46
  (282, 28200, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 48),
  -- Gardevoir - Round - TM48
  (282, 28200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 49),
  -- Gardevoir - Echoed Voice - TM49
  (282, 28200, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 50),
  -- Gardevoir - Focus Blast - TM52
  (282, 28200, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 51),
  -- Gardevoir - Energy Ball - TM53
  (282, 28200, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 52),
  -- Gardevoir - Fling - TM56
  (282, 28200, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 53),
  -- Gardevoir - Charge Beam - TM57
  (282, 28200, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 54),
  -- Gardevoir - Will-O-Wisp - TM61
  (282, 28200, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 55),
  -- Gardevoir - Giga Impact - TM68
  (282, 28200, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 56),
  -- Gardevoir - Flash - TM70
  (282, 28200, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 57),
  -- Gardevoir - Thunder Wave - TM73
  (282, 28200, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 58),
  -- Gardevoir - Psych Up - TM77
  (282, 28200, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 59),
  -- Gardevoir - Dream Eater - TM85
  (282, 28200, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 60),
  -- Gardevoir - Grass Knot - TM86
  (282, 28200, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 61),
  -- Gardevoir - Swagger - TM87
  (282, 28200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 62),
  -- Gardevoir - Sleep Talk - TM88
  (282, 28200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 63),
  -- Gardevoir - Substitute - TM90
  (282, 28200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 64),
  -- Gardevoir - Trick Room - TM92
  (282, 28200, 433, 14, NULL, 2, NULL, NULL, 14002092, NULL, 65),
  -- Gardevoir - Secret Power - TM94
  (282, 28200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 66),
  -- Gardevoir - Dazzling Gleam - TM99
  (282, 28200, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 67),
  -- Gardevoir - Confide - TM100
  (282, 28200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 68),
  -- Gardevoir - Fire Punch - Tutor
  (282, 28200, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Gardevoir - Ice Punch - Tutor
  (282, 28200, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Gardevoir - Thunder Punch - Tutor
  (282, 28200, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Gardevoir - Snore - Tutor
  (282, 28200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Gardevoir - Icy Wind - Tutor
  (282, 28200, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Gardevoir - Heal Bell - Tutor
  (282, 28200, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Gardevoir - Pain Split - Tutor
  (282, 28200, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Gardevoir - Helping Hand - Tutor
  (282, 28200, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Gardevoir - Trick - Tutor
  (282, 28200, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Gardevoir - Magic Coat - Tutor
  (282, 28200, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Gardevoir - Recycle - Tutor
  (282, 28200, 278, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Gardevoir - Skill Swap - Tutor
  (282, 28200, 285, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Gardevoir - Snatch - Tutor
  (282, 28200, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Gardevoir - Hyper Voice - Tutor
  (282, 28200, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 82),
  -- Gardevoir - Signal Beam - Tutor
  (282, 28200, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 83),
  -- Gardevoir - Shock Wave - Tutor
  (282, 28200, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 84),
  -- Gardevoir - Zen Headbutt - Tutor
  (282, 28200, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 85),
  -- Gardevoir - Wonder Room - Tutor
  (282, 28200, 472, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 86),
  -- Gardevoir - Magic Room - Tutor
  (282, 28200, 478, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 87),
  -- Surskit - Bubble - Level 1
  (283, 28300, 145, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Surskit - Quick Attack - Level 6
  (283, 28300, 98, 14, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Surskit - Sweet Scent - Level 9
  (283, 28300, 230, 14, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Surskit - Water Sport - Level 14
  (283, 28300, 346, 14, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Surskit - Bubble Beam - Level 17
  (283, 28300, 61, 14, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Surskit - Agility - Level 22
  (283, 28300, 97, 14, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Surskit - Mist - Level 25
  (283, 28300, 54, 14, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Surskit - Haze - Level 25
  (283, 28300, 114, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Surskit - Aqua Jet - Level 30
  (283, 28300, 453, 14, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Surskit - Baton Pass - Level 35
  (283, 28300, 226, 14, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Surskit - Sticky Web - Level 38
  (283, 28300, 564, 14, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Surskit - Toxic - TM06
  (283, 28300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 12),
  -- Surskit - Hidden Power - TM10
  (283, 28300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 13),
  -- Surskit - Sunny Day - TM11
  (283, 28300, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 14),
  -- Surskit - Ice Beam - TM13
  (283, 28300, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 15),
  -- Surskit - Blizzard - TM14
  (283, 28300, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 16),
  -- Surskit - Protect - TM17
  (283, 28300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 17),
  -- Surskit - Rain Dance - TM18
  (283, 28300, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 18),
  -- Surskit - Frustration - TM21
  (283, 28300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 19),
  -- Surskit - Solar Beam - TM22
  (283, 28300, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 20),
  -- Surskit - Return - TM27
  (283, 28300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 21),
  -- Surskit - Shadow Ball - TM30
  (283, 28300, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 22),
  -- Surskit - Double Team - TM32
  (283, 28300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 23),
  -- Surskit - Facade - TM42
  (283, 28300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 24),
  -- Surskit - Rest - TM44
  (283, 28300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 25),
  -- Surskit - Attract - TM45
  (283, 28300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 26),
  -- Surskit - Thief - TM46
  (283, 28300, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 27),
  -- Surskit - Round - TM48
  (283, 28300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 28),
  -- Surskit - Scald - TM55
  (283, 28300, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 29),
  -- Surskit - Flash - TM70
  (283, 28300, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 30),
  -- Surskit - Struggle Bug - TM76
  (283, 28300, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 31),
  -- Surskit - Psych Up - TM77
  (283, 28300, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 32),
  -- Surskit - Infestation - TM83
  (283, 28300, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 33),
  -- Surskit - Swagger - TM87
  (283, 28300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 34),
  -- Surskit - Sleep Talk - TM88
  (283, 28300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 35),
  -- Surskit - Substitute - TM90
  (283, 28300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 36),
  -- Surskit - Secret Power - TM94
  (283, 28300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 37),
  -- Surskit - Confide - TM100
  (283, 28300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 38),
  -- Surskit - Hydro Pump - Egg
  (283, 28300, 56, 14, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Surskit - Psybeam - Egg
  (283, 28300, 60, 14, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Surskit - Mind Reader - Egg
  (283, 28300, 170, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Surskit - Foresight - Egg
  (283, 28300, 193, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Surskit - Endure - Egg
  (283, 28300, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Surskit - Signal Beam - Egg
  (283, 28300, 324, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Surskit - Mud Shot - Egg
  (283, 28300, 341, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Surskit - Bug Bite - Egg
  (283, 28300, 450, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Surskit - Aqua Jet - Egg
  (283, 28300, 453, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Surskit - Power Split - Egg
  (283, 28300, 471, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Surskit - Fell Stinger - Egg
  (283, 28300, 565, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Surskit - Snore - Tutor
  (283, 28300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Surskit - Icy Wind - Tutor
  (283, 28300, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Surskit - Giga Drain - Tutor
  (283, 28300, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Surskit - Signal Beam - Tutor
  (283, 28300, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Surskit - Water Pulse - Tutor
  (283, 28300, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Surskit - Bug Bite - Tutor
  (283, 28300, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Masquerain - Whirlwind - Level 1
  (284, 28400, 18, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Masquerain - Quick Attack - Level 1
  (284, 28400, 98, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Masquerain - Bubble - Level 1
  (284, 28400, 145, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Masquerain - Sweet Scent - Level 1
  (284, 28400, 230, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Masquerain - Water Sport - Level 1
  (284, 28400, 346, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Masquerain - Bug Buzz - Level 1
  (284, 28400, 405, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Masquerain - Ominous Wind - Level 1
  (284, 28400, 466, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Masquerain - Quiver Dance - Level 1
  (284, 28400, 483, 14, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Masquerain - Quick Attack - Level 6
  (284, 28400, 98, 14, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Masquerain - Sweet Scent - Level 9
  (284, 28400, 230, 14, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Masquerain - Water Sport - Level 14
  (284, 28400, 346, 14, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Masquerain - Gust - Level 17
  (284, 28400, 16, 14, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Masquerain - Scary Face - Level 22
  (284, 28400, 184, 14, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Masquerain - Air Cutter - Level 22
  (284, 28400, 314, 14, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Masquerain - Stun Spore - Level 26
  (284, 28400, 78, 14, NULL, 1, 26, NULL, NULL, NULL, 15),
  -- Masquerain - Silver Wind - Level 32
  (284, 28400, 318, 14, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Masquerain - Air Slash - Level 38
  (284, 28400, 403, 14, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Masquerain - Bug Buzz - Level 42
  (284, 28400, 405, 14, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Masquerain - Whirlwind - Level 48
  (284, 28400, 18, 14, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Masquerain - Quiver Dance - Level 52
  (284, 28400, 483, 14, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Masquerain - Toxic - TM06
  (284, 28400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 21),
  -- Masquerain - Hidden Power - TM10
  (284, 28400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Masquerain - Sunny Day - TM11
  (284, 28400, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 23),
  -- Masquerain - Ice Beam - TM13
  (284, 28400, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 24),
  -- Masquerain - Blizzard - TM14
  (284, 28400, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 25),
  -- Masquerain - Hyper Beam - TM15
  (284, 28400, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 26),
  -- Masquerain - Protect - TM17
  (284, 28400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 27),
  -- Masquerain - Rain Dance - TM18
  (284, 28400, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 28),
  -- Masquerain - Roost - TM19
  (284, 28400, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 29),
  -- Masquerain - Frustration - TM21
  (284, 28400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 30),
  -- Masquerain - Solar Beam - TM22
  (284, 28400, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 31),
  -- Masquerain - Return - TM27
  (284, 28400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 32),
  -- Masquerain - Shadow Ball - TM30
  (284, 28400, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 33),
  -- Masquerain - Double Team - TM32
  (284, 28400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Masquerain - Aerial Ace - TM40
  (284, 28400, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 35),
  -- Masquerain - Facade - TM42
  (284, 28400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Masquerain - Rest - TM44
  (284, 28400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Masquerain - Attract - TM45
  (284, 28400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Masquerain - Thief - TM46
  (284, 28400, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 39),
  -- Masquerain - Round - TM48
  (284, 28400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 40),
  -- Masquerain - Energy Ball - TM53
  (284, 28400, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 41),
  -- Masquerain - Scald - TM55
  (284, 28400, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 42),
  -- Masquerain - Giga Impact - TM68
  (284, 28400, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 43),
  -- Masquerain - Flash - TM70
  (284, 28400, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 44),
  -- Masquerain - Struggle Bug - TM76
  (284, 28400, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 45),
  -- Masquerain - Psych Up - TM77
  (284, 28400, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 46),
  -- Masquerain - Infestation - TM83
  (284, 28400, 611, 14, NULL, 2, NULL, NULL, 14002083, NULL, 47),
  -- Masquerain - Swagger - TM87
  (284, 28400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 48),
  -- Masquerain - Sleep Talk - TM88
  (284, 28400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 49),
  -- Masquerain - U-turn - TM89
  (284, 28400, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 50),
  -- Masquerain - Substitute - TM90
  (284, 28400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 51),
  -- Masquerain - Secret Power - TM94
  (284, 28400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 52),
  -- Masquerain - Confide - TM100
  (284, 28400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 53),
  -- Masquerain - Snore - Tutor
  (284, 28400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Masquerain - Icy Wind - Tutor
  (284, 28400, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Masquerain - Giga Drain - Tutor
  (284, 28400, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Masquerain - Signal Beam - Tutor
  (284, 28400, 324, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Masquerain - Water Pulse - Tutor
  (284, 28400, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Masquerain - Tailwind - Tutor
  (284, 28400, 366, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Masquerain - Bug Bite - Tutor
  (284, 28400, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Shroomish - Tackle - Level 1
  (285, 28500, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shroomish - Absorb - Level 1
  (285, 28500, 71, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shroomish - Stun Spore - Level 5
  (285, 28500, 78, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shroomish - Leech Seed - Level 8
  (285, 28500, 73, 14, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shroomish - Mega Drain - Level 12
  (285, 28500, 72, 14, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Shroomish - Headbutt - Level 15
  (285, 28500, 29, 14, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Shroomish - Poison Powder - Level 19
  (285, 28500, 77, 14, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Shroomish - Worry Seed - Level 22
  (285, 28500, 388, 14, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Shroomish - Giga Drain - Level 26
  (285, 28500, 202, 14, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Shroomish - Growth - Level 29
  (285, 28500, 74, 14, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Shroomish - Toxic - Level 33
  (285, 28500, 92, 14, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Shroomish - Seed Bomb - Level 36
  (285, 28500, 402, 14, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Shroomish - Spore - Level 40
  (285, 28500, 147, 14, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Shroomish - Toxic - TM06
  (285, 28500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 14),
  -- Shroomish - Venoshock - TM09
  (285, 28500, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 15),
  -- Shroomish - Hidden Power - TM10
  (285, 28500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 16),
  -- Shroomish - Sunny Day - TM11
  (285, 28500, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 17),
  -- Shroomish - Protect - TM17
  (285, 28500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 18),
  -- Shroomish - Safeguard - TM20
  (285, 28500, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 19),
  -- Shroomish - Frustration - TM21
  (285, 28500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 20),
  -- Shroomish - Solar Beam - TM22
  (285, 28500, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 21),
  -- Shroomish - Return - TM27
  (285, 28500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 22),
  -- Shroomish - Double Team - TM32
  (285, 28500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 23),
  -- Shroomish - Sludge Bomb - TM36
  (285, 28500, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 24),
  -- Shroomish - Facade - TM42
  (285, 28500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 25),
  -- Shroomish - Rest - TM44
  (285, 28500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 26),
  -- Shroomish - Attract - TM45
  (285, 28500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 27),
  -- Shroomish - Round - TM48
  (285, 28500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 28),
  -- Shroomish - Energy Ball - TM53
  (285, 28500, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 29),
  -- Shroomish - False Swipe - TM54
  (285, 28500, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 30),
  -- Shroomish - Flash - TM70
  (285, 28500, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 31),
  -- Shroomish - Swords Dance - TM75
  (285, 28500, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 32),
  -- Shroomish - Grass Knot - TM86
  (285, 28500, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 33),
  -- Shroomish - Swagger - TM87
  (285, 28500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 34),
  -- Shroomish - Sleep Talk - TM88
  (285, 28500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 35),
  -- Shroomish - Substitute - TM90
  (285, 28500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 36),
  -- Shroomish - Secret Power - TM94
  (285, 28500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 37),
  -- Shroomish - Confide - TM100
  (285, 28500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 38),
  -- Shroomish - Charm - Egg
  (285, 28500, 204, 14, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shroomish - Focus Punch - Egg
  (285, 28500, 264, 14, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shroomish - Helping Hand - Egg
  (285, 28500, 270, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shroomish - Fake Tears - Egg
  (285, 28500, 313, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shroomish - Bullet Seed - Egg
  (285, 28500, 331, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shroomish - Wake-Up Slap - Egg
  (285, 28500, 358, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shroomish - Natural Gift - Egg
  (285, 28500, 363, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shroomish - Worry Seed - Egg
  (285, 28500, 388, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shroomish - Seed Bomb - Egg
  (285, 28500, 402, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shroomish - Drain Punch - Egg
  (285, 28500, 409, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shroomish - Snore - Tutor
  (285, 28500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Shroomish - Giga Drain - Tutor
  (285, 28500, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Shroomish - Synthesis - Tutor
  (285, 28500, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Shroomish - Focus Punch - Tutor
  (285, 28500, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Shroomish - Helping Hand - Tutor
  (285, 28500, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Shroomish - Snatch - Tutor
  (285, 28500, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Shroomish - Worry Seed - Tutor
  (285, 28500, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Shroomish - Seed Bomb - Tutor
  (285, 28500, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Shroomish - Drain Punch - Tutor
  (285, 28500, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Breloom - Tackle - Level 1
  (286, 28600, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Breloom - Absorb - Level 1
  (286, 28600, 71, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Breloom - Leech Seed - Level 1
  (286, 28600, 73, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Breloom - Stun Spore - Level 1
  (286, 28600, 78, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Breloom - Stun Spore - Level 5
  (286, 28600, 78, 14, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Breloom - Leech Seed - Level 8
  (286, 28600, 73, 14, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Breloom - Mega Drain - Level 12
  (286, 28600, 72, 14, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Breloom - Headbutt - Level 15
  (286, 28600, 29, 14, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Breloom - Feint - Level 19
  (286, 28600, 364, 14, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Breloom - Counter - Level 22
  (286, 28600, 68, 14, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Breloom - Mach Punch - Level 23
  (286, 28600, 183, 14, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Breloom - Force Palm - Level 28
  (286, 28600, 395, 14, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Breloom - Mind Reader - Level 33
  (286, 28600, 170, 14, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Breloom - Sky Uppercut - Level 39
  (286, 28600, 327, 14, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Breloom - Seed Bomb - Level 44
  (286, 28600, 402, 14, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Breloom - Dynamic Punch - Level 50
  (286, 28600, 223, 14, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Breloom - Toxic - TM06
  (286, 28600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Breloom - Bulk Up - TM08
  (286, 28600, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 18),
  -- Breloom - Venoshock - TM09
  (286, 28600, 474, 14, NULL, 2, NULL, NULL, 14002009, NULL, 19),
  -- Breloom - Hidden Power - TM10
  (286, 28600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Breloom - Sunny Day - TM11
  (286, 28600, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Breloom - Hyper Beam - TM15
  (286, 28600, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Breloom - Protect - TM17
  (286, 28600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Breloom - Safeguard - TM20
  (286, 28600, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 24),
  -- Breloom - Frustration - TM21
  (286, 28600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Breloom - Solar Beam - TM22
  (286, 28600, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 26),
  -- Breloom - Return - TM27
  (286, 28600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Breloom - Brick Break - TM31
  (286, 28600, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 28),
  -- Breloom - Double Team - TM32
  (286, 28600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 29),
  -- Breloom - Sludge Bomb - TM36
  (286, 28600, 188, 14, NULL, 2, NULL, NULL, 14002036, NULL, 30),
  -- Breloom - Rock Tomb - TM39
  (286, 28600, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 31),
  -- Breloom - Facade - TM42
  (286, 28600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 32),
  -- Breloom - Rest - TM44
  (286, 28600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Breloom - Attract - TM45
  (286, 28600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Breloom - Low Sweep - TM47
  (286, 28600, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 35),
  -- Breloom - Round - TM48
  (286, 28600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Breloom - Focus Blast - TM52
  (286, 28600, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 37),
  -- Breloom - Energy Ball - TM53
  (286, 28600, 412, 14, NULL, 2, NULL, NULL, 14002053, NULL, 38),
  -- Breloom - False Swipe - TM54
  (286, 28600, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 39),
  -- Breloom - Fling - TM56
  (286, 28600, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 40),
  -- Breloom - Retaliate - TM67
  (286, 28600, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 41),
  -- Breloom - Giga Impact - TM68
  (286, 28600, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 42),
  -- Breloom - Flash - TM70
  (286, 28600, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 43),
  -- Breloom - Stone Edge - TM71
  (286, 28600, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 44),
  -- Breloom - Swords Dance - TM75
  (286, 28600, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 45),
  -- Breloom - Rock Slide - TM80
  (286, 28600, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 46),
  -- Breloom - Grass Knot - TM86
  (286, 28600, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 47),
  -- Breloom - Swagger - TM87
  (286, 28600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 48),
  -- Breloom - Sleep Talk - TM88
  (286, 28600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 49),
  -- Breloom - Substitute - TM90
  (286, 28600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 50),
  -- Breloom - Secret Power - TM94
  (286, 28600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 51),
  -- Breloom - Power-Up Punch - TM98
  (286, 28600, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 52),
  -- Breloom - Confide - TM100
  (286, 28600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 53),
  -- Breloom - Cut - HM01
  (286, 28600, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 54),
  -- Breloom - Strength - HM04
  (286, 28600, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 55),
  -- Breloom - Rock Smash - HM06
  (286, 28600, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 56),
  -- Breloom - Thunder Punch - Tutor
  (286, 28600, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Breloom - Snore - Tutor
  (286, 28600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Breloom - Giga Drain - Tutor
  (286, 28600, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Breloom - Iron Tail - Tutor
  (286, 28600, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Breloom - Synthesis - Tutor
  (286, 28600, 235, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Breloom - Focus Punch - Tutor
  (286, 28600, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Breloom - Helping Hand - Tutor
  (286, 28600, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Breloom - Superpower - Tutor
  (286, 28600, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Breloom - Snatch - Tutor
  (286, 28600, 289, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Breloom - Worry Seed - Tutor
  (286, 28600, 388, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Breloom - Seed Bomb - Tutor
  (286, 28600, 402, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Breloom - Drain Punch - Tutor
  (286, 28600, 409, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Slakoth - Scratch - Level 1
  (287, 28700, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slakoth - Yawn - Level 1
  (287, 28700, 281, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slakoth - Encore - Level 6
  (287, 28700, 227, 14, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Slakoth - Slack Off - Level 9
  (287, 28700, 303, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Slakoth - Feint Attack - Level 14
  (287, 28700, 185, 14, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Slakoth - Amnesia - Level 17
  (287, 28700, 133, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Slakoth - Covet - Level 22
  (287, 28700, 343, 14, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Slakoth - Chip Away - Level 25
  (287, 28700, 498, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Slakoth - Counter - Level 30
  (287, 28700, 68, 14, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Slakoth - Flail - Level 33
  (287, 28700, 175, 14, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Slakoth - Play Rough - Level 38
  (287, 28700, 583, 14, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Slakoth - Hone Claws - TM01
  (287, 28700, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 12),
  -- Slakoth - Toxic - TM06
  (287, 28700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 13),
  -- Slakoth - Bulk Up - TM08
  (287, 28700, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 14),
  -- Slakoth - Hidden Power - TM10
  (287, 28700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 15),
  -- Slakoth - Sunny Day - TM11
  (287, 28700, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 16),
  -- Slakoth - Ice Beam - TM13
  (287, 28700, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 17),
  -- Slakoth - Blizzard - TM14
  (287, 28700, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 18),
  -- Slakoth - Protect - TM17
  (287, 28700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 19),
  -- Slakoth - Rain Dance - TM18
  (287, 28700, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 20),
  -- Slakoth - Frustration - TM21
  (287, 28700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 21),
  -- Slakoth - Solar Beam - TM22
  (287, 28700, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 22),
  -- Slakoth - Thunderbolt - TM24
  (287, 28700, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 23),
  -- Slakoth - Thunder - TM25
  (287, 28700, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 24),
  -- Slakoth - Return - TM27
  (287, 28700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 25),
  -- Slakoth - Shadow Ball - TM30
  (287, 28700, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 26),
  -- Slakoth - Brick Break - TM31
  (287, 28700, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 27),
  -- Slakoth - Double Team - TM32
  (287, 28700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Slakoth - Flamethrower - TM35
  (287, 28700, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 29),
  -- Slakoth - Fire Blast - TM38
  (287, 28700, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 30),
  -- Slakoth - Rock Tomb - TM39
  (287, 28700, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 31),
  -- Slakoth - Aerial Ace - TM40
  (287, 28700, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 32),
  -- Slakoth - Facade - TM42
  (287, 28700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Slakoth - Rest - TM44
  (287, 28700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Slakoth - Attract - TM45
  (287, 28700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Slakoth - Round - TM48
  (287, 28700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Slakoth - Fling - TM56
  (287, 28700, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 37),
  -- Slakoth - Incinerate - TM59
  (287, 28700, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 38),
  -- Slakoth - Shadow Claw - TM65
  (287, 28700, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 39),
  -- Slakoth - Retaliate - TM67
  (287, 28700, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 40),
  -- Slakoth - Rock Slide - TM80
  (287, 28700, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 41),
  -- Slakoth - Swagger - TM87
  (287, 28700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 42),
  -- Slakoth - Sleep Talk - TM88
  (287, 28700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 43),
  -- Slakoth - Substitute - TM90
  (287, 28700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 44),
  -- Slakoth - Secret Power - TM94
  (287, 28700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 45),
  -- Slakoth - Power-Up Punch - TM98
  (287, 28700, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 46),
  -- Slakoth - Confide - TM100
  (287, 28700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 47),
  -- Slakoth - Cut - HM01
  (287, 28700, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 48),
  -- Slakoth - Strength - HM04
  (287, 28700, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 49),
  -- Slakoth - Rock Smash - HM06
  (287, 28700, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 50),
  -- Slakoth - Body Slam - Egg
  (287, 28700, 34, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Slakoth - Slash - Egg
  (287, 28700, 163, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Slakoth - Snore - Egg
  (287, 28700, 173, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Slakoth - Curse - Egg
  (287, 28700, 174, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Slakoth - Sleep Talk - Egg
  (287, 28700, 214, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Slakoth - Pursuit - Egg
  (287, 28700, 228, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Slakoth - Crush Claw - Egg
  (287, 28700, 306, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Slakoth - Tickle - Egg
  (287, 28700, 321, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Slakoth - Hammer Arm - Egg
  (287, 28700, 359, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Slakoth - Night Slash - Egg
  (287, 28700, 400, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Slakoth - After You - Egg
  (287, 28700, 495, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Slakoth - Fire Punch - Tutor
  (287, 28700, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Slakoth - Ice Punch - Tutor
  (287, 28700, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Slakoth - Thunder Punch - Tutor
  (287, 28700, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Slakoth - Snore - Tutor
  (287, 28700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Slakoth - Icy Wind - Tutor
  (287, 28700, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Slakoth - Focus Punch - Tutor
  (287, 28700, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Slakoth - Covet - Tutor
  (287, 28700, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Slakoth - Shock Wave - Tutor
  (287, 28700, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Slakoth - Water Pulse - Tutor
  (287, 28700, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Slakoth - Gunk Shot - Tutor
  (287, 28700, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Slakoth - After You - Tutor
  (287, 28700, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Vigoroth - Scratch - Level 1
  (288, 28800, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vigoroth - Focus Energy - Level 1
  (288, 28800, 116, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vigoroth - Reversal - Level 1
  (288, 28800, 179, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vigoroth - Encore - Level 1
  (288, 28800, 227, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vigoroth - Uproar - Level 1
  (288, 28800, 253, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vigoroth - Encore - Level 6
  (288, 28800, 227, 14, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Vigoroth - Uproar - Level 9
  (288, 28800, 253, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Vigoroth - Fury Swipes - Level 14
  (288, 28800, 154, 14, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Vigoroth - Endure - Level 17
  (288, 28800, 203, 14, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Vigoroth - Slash - Level 23
  (288, 28800, 163, 14, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Vigoroth - Chip Away - Level 27
  (288, 28800, 498, 14, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Vigoroth - Counter - Level 33
  (288, 28800, 68, 14, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Vigoroth - Focus Punch - Level 37
  (288, 28800, 264, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Vigoroth - Reversal - Level 43
  (288, 28800, 179, 14, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Vigoroth - Hone Claws - TM01
  (288, 28800, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 15),
  -- Vigoroth - Roar - TM05
  (288, 28800, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 16),
  -- Vigoroth - Toxic - TM06
  (288, 28800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Vigoroth - Bulk Up - TM08
  (288, 28800, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 18),
  -- Vigoroth - Hidden Power - TM10
  (288, 28800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 19),
  -- Vigoroth - Sunny Day - TM11
  (288, 28800, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 20),
  -- Vigoroth - Taunt - TM12
  (288, 28800, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 21),
  -- Vigoroth - Ice Beam - TM13
  (288, 28800, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 22),
  -- Vigoroth - Blizzard - TM14
  (288, 28800, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 23),
  -- Vigoroth - Protect - TM17
  (288, 28800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 24),
  -- Vigoroth - Rain Dance - TM18
  (288, 28800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 25),
  -- Vigoroth - Frustration - TM21
  (288, 28800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 26),
  -- Vigoroth - Solar Beam - TM22
  (288, 28800, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 27),
  -- Vigoroth - Thunderbolt - TM24
  (288, 28800, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 28),
  -- Vigoroth - Thunder - TM25
  (288, 28800, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 29),
  -- Vigoroth - Earthquake - TM26
  (288, 28800, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 30),
  -- Vigoroth - Return - TM27
  (288, 28800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Vigoroth - Shadow Ball - TM30
  (288, 28800, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 32),
  -- Vigoroth - Brick Break - TM31
  (288, 28800, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 33),
  -- Vigoroth - Double Team - TM32
  (288, 28800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Vigoroth - Flamethrower - TM35
  (288, 28800, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 35),
  -- Vigoroth - Fire Blast - TM38
  (288, 28800, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 36),
  -- Vigoroth - Rock Tomb - TM39
  (288, 28800, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 37),
  -- Vigoroth - Aerial Ace - TM40
  (288, 28800, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 38),
  -- Vigoroth - Facade - TM42
  (288, 28800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 39),
  -- Vigoroth - Rest - TM44
  (288, 28800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 40),
  -- Vigoroth - Attract - TM45
  (288, 28800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 41),
  -- Vigoroth - Low Sweep - TM47
  (288, 28800, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 42),
  -- Vigoroth - Round - TM48
  (288, 28800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 43),
  -- Vigoroth - Focus Blast - TM52
  (288, 28800, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 44),
  -- Vigoroth - Fling - TM56
  (288, 28800, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 45),
  -- Vigoroth - Incinerate - TM59
  (288, 28800, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 46),
  -- Vigoroth - Shadow Claw - TM65
  (288, 28800, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 47),
  -- Vigoroth - Retaliate - TM67
  (288, 28800, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 48),
  -- Vigoroth - Bulldoze - TM78
  (288, 28800, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 49),
  -- Vigoroth - Rock Slide - TM80
  (288, 28800, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 50),
  -- Vigoroth - Swagger - TM87
  (288, 28800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 51),
  -- Vigoroth - Sleep Talk - TM88
  (288, 28800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 52),
  -- Vigoroth - Substitute - TM90
  (288, 28800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 53),
  -- Vigoroth - Secret Power - TM94
  (288, 28800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 54),
  -- Vigoroth - Power-Up Punch - TM98
  (288, 28800, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 55),
  -- Vigoroth - Confide - TM100
  (288, 28800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 56),
  -- Vigoroth - Cut - HM01
  (288, 28800, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 57),
  -- Vigoroth - Strength - HM04
  (288, 28800, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 58),
  -- Vigoroth - Rock Smash - HM06
  (288, 28800, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 59),
  -- Vigoroth - Fire Punch - Tutor
  (288, 28800, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Vigoroth - Ice Punch - Tutor
  (288, 28800, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Vigoroth - Thunder Punch - Tutor
  (288, 28800, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Vigoroth - Low Kick - Tutor
  (288, 28800, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Vigoroth - Snore - Tutor
  (288, 28800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Vigoroth - Icy Wind - Tutor
  (288, 28800, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Vigoroth - Uproar - Tutor
  (288, 28800, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Vigoroth - Focus Punch - Tutor
  (288, 28800, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Vigoroth - Covet - Tutor
  (288, 28800, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Vigoroth - Shock Wave - Tutor
  (288, 28800, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Vigoroth - Water Pulse - Tutor
  (288, 28800, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Vigoroth - Gunk Shot - Tutor
  (288, 28800, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Vigoroth - After You - Tutor
  (288, 28800, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Slaking - Scratch - Level 1
  (289, 28900, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slaking - Encore - Level 1
  (289, 28900, 227, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slaking - Yawn - Level 1
  (289, 28900, 281, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slaking - Slack Off - Level 1
  (289, 28900, 303, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slaking - Hammer Arm - Level 1
  (289, 28900, 359, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slaking - Fling - Level 1
  (289, 28900, 374, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Slaking - Punishment - Level 1
  (289, 28900, 386, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Slaking - Encore - Level 6
  (289, 28900, 227, 14, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Slaking - Slack Off - Level 9
  (289, 28900, 303, 14, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Slaking - Feint Attack - Level 14
  (289, 28900, 185, 14, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Slaking - Amnesia - Level 17
  (289, 28900, 133, 14, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Slaking - Covet - Level 23
  (289, 28900, 343, 14, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Slaking - Chip Away - Level 27
  (289, 28900, 498, 14, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Slaking - Counter - Level 33
  (289, 28900, 68, 14, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Slaking - Swagger - Level 36
  (289, 28900, 207, 14, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Slaking - Flail - Level 39
  (289, 28900, 175, 14, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Slaking - Fling - Level 47
  (289, 28900, 374, 14, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Slaking - Punishment - Level 53
  (289, 28900, 386, 14, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Slaking - Hammer Arm - Level 61
  (289, 28900, 359, 14, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Slaking - Hone Claws - TM01
  (289, 28900, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 20),
  -- Slaking - Roar - TM05
  (289, 28900, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 21),
  -- Slaking - Toxic - TM06
  (289, 28900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 22),
  -- Slaking - Bulk Up - TM08
  (289, 28900, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 23),
  -- Slaking - Hidden Power - TM10
  (289, 28900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 24),
  -- Slaking - Sunny Day - TM11
  (289, 28900, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 25),
  -- Slaking - Taunt - TM12
  (289, 28900, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 26),
  -- Slaking - Ice Beam - TM13
  (289, 28900, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 27),
  -- Slaking - Blizzard - TM14
  (289, 28900, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 28),
  -- Slaking - Hyper Beam - TM15
  (289, 28900, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 29),
  -- Slaking - Protect - TM17
  (289, 28900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 30),
  -- Slaking - Rain Dance - TM18
  (289, 28900, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 31),
  -- Slaking - Frustration - TM21
  (289, 28900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 32),
  -- Slaking - Solar Beam - TM22
  (289, 28900, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 33),
  -- Slaking - Smack Down - TM23
  (289, 28900, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 34),
  -- Slaking - Thunderbolt - TM24
  (289, 28900, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 35),
  -- Slaking - Thunder - TM25
  (289, 28900, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 36),
  -- Slaking - Earthquake - TM26
  (289, 28900, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 37),
  -- Slaking - Return - TM27
  (289, 28900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 38),
  -- Slaking - Shadow Ball - TM30
  (289, 28900, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 39),
  -- Slaking - Brick Break - TM31
  (289, 28900, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 40),
  -- Slaking - Double Team - TM32
  (289, 28900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 41),
  -- Slaking - Flamethrower - TM35
  (289, 28900, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 42),
  -- Slaking - Fire Blast - TM38
  (289, 28900, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 43),
  -- Slaking - Rock Tomb - TM39
  (289, 28900, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 44),
  -- Slaking - Aerial Ace - TM40
  (289, 28900, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 45),
  -- Slaking - Facade - TM42
  (289, 28900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 46),
  -- Slaking - Rest - TM44
  (289, 28900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 47),
  -- Slaking - Attract - TM45
  (289, 28900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 48),
  -- Slaking - Low Sweep - TM47
  (289, 28900, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 49),
  -- Slaking - Round - TM48
  (289, 28900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 50),
  -- Slaking - Focus Blast - TM52
  (289, 28900, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 51),
  -- Slaking - Fling - TM56
  (289, 28900, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 52),
  -- Slaking - Incinerate - TM59
  (289, 28900, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 53),
  -- Slaking - Quash - TM60
  (289, 28900, 511, 14, NULL, 2, NULL, NULL, 14002060, NULL, 54),
  -- Slaking - Shadow Claw - TM65
  (289, 28900, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 55),
  -- Slaking - Retaliate - TM67
  (289, 28900, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 56),
  -- Slaking - Giga Impact - TM68
  (289, 28900, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 57),
  -- Slaking - Bulldoze - TM78
  (289, 28900, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 58),
  -- Slaking - Rock Slide - TM80
  (289, 28900, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 59),
  -- Slaking - Swagger - TM87
  (289, 28900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 60),
  -- Slaking - Sleep Talk - TM88
  (289, 28900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 61),
  -- Slaking - Substitute - TM90
  (289, 28900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 62),
  -- Slaking - Secret Power - TM94
  (289, 28900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 63),
  -- Slaking - Power-Up Punch - TM98
  (289, 28900, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 64),
  -- Slaking - Confide - TM100
  (289, 28900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 65),
  -- Slaking - Cut - HM01
  (289, 28900, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 66),
  -- Slaking - Strength - HM04
  (289, 28900, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 67),
  -- Slaking - Rock Smash - HM06
  (289, 28900, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 68),
  -- Slaking - Fire Punch - Tutor
  (289, 28900, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Slaking - Ice Punch - Tutor
  (289, 28900, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Slaking - Thunder Punch - Tutor
  (289, 28900, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Slaking - Low Kick - Tutor
  (289, 28900, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Slaking - Snore - Tutor
  (289, 28900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Slaking - Icy Wind - Tutor
  (289, 28900, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Slaking - Focus Punch - Tutor
  (289, 28900, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Slaking - Block - Tutor
  (289, 28900, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Slaking - Covet - Tutor
  (289, 28900, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Slaking - Shock Wave - Tutor
  (289, 28900, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Slaking - Water Pulse - Tutor
  (289, 28900, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Slaking - Gunk Shot - Tutor
  (289, 28900, 441, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Slaking - After You - Tutor
  (289, 28900, 495, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Nincada - Scratch - Level 1
  (290, 29000, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nincada - Harden - Level 1
  (290, 29000, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nincada - Leech Life - Level 5
  (290, 29000, 141, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nincada - Sand Attack - Level 9
  (290, 29000, 28, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nincada - Fury Swipes - Level 13
  (290, 29000, 154, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nincada - Mud-Slap - Level 17
  (290, 29000, 189, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Nincada - Metal Claw - Level 21
  (290, 29000, 232, 14, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Nincada - Mind Reader - Level 25
  (290, 29000, 170, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Nincada - Bide - Level 29
  (290, 29000, 117, 14, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Nincada - False Swipe - Level 33
  (290, 29000, 206, 14, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Nincada - Dig - Level 37
  (290, 29000, 91, 14, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Nincada - Hone Claws - TM01
  (290, 29000, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 12),
  -- Nincada - Toxic - TM06
  (290, 29000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 13),
  -- Nincada - Hidden Power - TM10
  (290, 29000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 14),
  -- Nincada - Sunny Day - TM11
  (290, 29000, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 15),
  -- Nincada - Protect - TM17
  (290, 29000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 16),
  -- Nincada - Frustration - TM21
  (290, 29000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 17),
  -- Nincada - Solar Beam - TM22
  (290, 29000, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 18),
  -- Nincada - Return - TM27
  (290, 29000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 19),
  -- Nincada - Dig - TM28
  (290, 29000, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 20),
  -- Nincada - Shadow Ball - TM30
  (290, 29000, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 21),
  -- Nincada - Double Team - TM32
  (290, 29000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 22),
  -- Nincada - Sandstorm - TM37
  (290, 29000, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 23),
  -- Nincada - Aerial Ace - TM40
  (290, 29000, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 24),
  -- Nincada - Facade - TM42
  (290, 29000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 25),
  -- Nincada - Rest - TM44
  (290, 29000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 26),
  -- Nincada - Round - TM48
  (290, 29000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 27),
  -- Nincada - False Swipe - TM54
  (290, 29000, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 28),
  -- Nincada - Flash - TM70
  (290, 29000, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 29),
  -- Nincada - Struggle Bug - TM76
  (290, 29000, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 30),
  -- Nincada - X-Scissor - TM81
  (290, 29000, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 31),
  -- Nincada - Swagger - TM87
  (290, 29000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 32),
  -- Nincada - Sleep Talk - TM88
  (290, 29000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 33),
  -- Nincada - Substitute - TM90
  (290, 29000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 34),
  -- Nincada - Secret Power - TM94
  (290, 29000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 35),
  -- Nincada - Confide - TM100
  (290, 29000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 36),
  -- Nincada - Cut - HM01
  (290, 29000, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 37),
  -- Nincada - Gust - Egg
  (290, 29000, 16, 14, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Nincada - Feint Attack - Egg
  (290, 29000, 185, 14, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Nincada - Endure - Egg
  (290, 29000, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Nincada - Silver Wind - Egg
  (290, 29000, 318, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Nincada - Night Slash - Egg
  (290, 29000, 400, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nincada - Bug Buzz - Egg
  (290, 29000, 405, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Nincada - Bug Bite - Egg
  (290, 29000, 450, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Nincada - Final Gambit - Egg
  (290, 29000, 515, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Nincada - Snore - Tutor
  (290, 29000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Nincada - Spite - Tutor
  (290, 29000, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Nincada - Giga Drain - Tutor
  (290, 29000, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Nincada - Bug Bite - Tutor
  (290, 29000, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Ninjask - Scratch - Level 1
  (291, 29100, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninjask - Sand Attack - Level 1
  (291, 29100, 28, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninjask - Harden - Level 1
  (291, 29100, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninjask - Leech Life - Level 1
  (291, 29100, 141, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninjask - Bug Bite - Level 1
  (291, 29100, 450, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ninjask - Leech Life - Level 5
  (291, 29100, 141, 14, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Ninjask - Sand Attack - Level 9
  (291, 29100, 28, 14, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Ninjask - Fury Swipes - Level 13
  (291, 29100, 154, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Ninjask - Agility - Level 17
  (291, 29100, 97, 14, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Ninjask - Screech - Level 20
  (291, 29100, 103, 14, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Ninjask - Double Team - Level 20
  (291, 29100, 104, 14, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Ninjask - Fury Cutter - Level 20
  (291, 29100, 210, 14, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Ninjask - Slash - Level 23
  (291, 29100, 163, 14, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Ninjask - Mind Reader - Level 29
  (291, 29100, 170, 14, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Ninjask - Baton Pass - Level 35
  (291, 29100, 226, 14, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Ninjask - Swords Dance - Level 41
  (291, 29100, 14, 14, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Ninjask - X-Scissor - Level 47
  (291, 29100, 404, 14, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Ninjask - Hone Claws - TM01
  (291, 29100, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 18),
  -- Ninjask - Toxic - TM06
  (291, 29100, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Ninjask - Hidden Power - TM10
  (291, 29100, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Ninjask - Sunny Day - TM11
  (291, 29100, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Ninjask - Hyper Beam - TM15
  (291, 29100, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 22),
  -- Ninjask - Protect - TM17
  (291, 29100, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 23),
  -- Ninjask - Roost - TM19
  (291, 29100, 355, 14, NULL, 2, NULL, NULL, 14002019, NULL, 24),
  -- Ninjask - Frustration - TM21
  (291, 29100, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 25),
  -- Ninjask - Solar Beam - TM22
  (291, 29100, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 26),
  -- Ninjask - Return - TM27
  (291, 29100, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Ninjask - Dig - TM28
  (291, 29100, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 28),
  -- Ninjask - Shadow Ball - TM30
  (291, 29100, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 29),
  -- Ninjask - Double Team - TM32
  (291, 29100, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 30),
  -- Ninjask - Sandstorm - TM37
  (291, 29100, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 31),
  -- Ninjask - Aerial Ace - TM40
  (291, 29100, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 32),
  -- Ninjask - Facade - TM42
  (291, 29100, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 33),
  -- Ninjask - Rest - TM44
  (291, 29100, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 34),
  -- Ninjask - Attract - TM45
  (291, 29100, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 35),
  -- Ninjask - Thief - TM46
  (291, 29100, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 36),
  -- Ninjask - Round - TM48
  (291, 29100, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 37),
  -- Ninjask - False Swipe - TM54
  (291, 29100, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 38),
  -- Ninjask - Giga Impact - TM68
  (291, 29100, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 39),
  -- Ninjask - Flash - TM70
  (291, 29100, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 40),
  -- Ninjask - Swords Dance - TM75
  (291, 29100, 14, 14, NULL, 2, NULL, NULL, 14002075, NULL, 41),
  -- Ninjask - Struggle Bug - TM76
  (291, 29100, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 42),
  -- Ninjask - X-Scissor - TM81
  (291, 29100, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 43),
  -- Ninjask - Swagger - TM87
  (291, 29100, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 44),
  -- Ninjask - Sleep Talk - TM88
  (291, 29100, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 45),
  -- Ninjask - U-turn - TM89
  (291, 29100, 369, 14, NULL, 2, NULL, NULL, 14002089, NULL, 46),
  -- Ninjask - Substitute - TM90
  (291, 29100, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 47),
  -- Ninjask - Secret Power - TM94
  (291, 29100, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 48),
  -- Ninjask - Confide - TM100
  (291, 29100, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 49),
  -- Ninjask - Cut - HM01
  (291, 29100, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 50),
  -- Ninjask - Snore - Tutor
  (291, 29100, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Ninjask - Spite - Tutor
  (291, 29100, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Ninjask - Giga Drain - Tutor
  (291, 29100, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Ninjask - Uproar - Tutor
  (291, 29100, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Ninjask - Bug Bite - Tutor
  (291, 29100, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Shedinja - Scratch - Level 1
  (292, 29200, 10, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shedinja - Harden - Level 1
  (292, 29200, 106, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shedinja - Leech Life - Level 5
  (292, 29200, 141, 14, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shedinja - Sand Attack - Level 9
  (292, 29200, 28, 14, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Shedinja - Fury Swipes - Level 13
  (292, 29200, 154, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Shedinja - Spite - Level 17
  (292, 29200, 180, 14, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Shedinja - Shadow Sneak - Level 21
  (292, 29200, 425, 14, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Shedinja - Mind Reader - Level 25
  (292, 29200, 170, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Shedinja - Confuse Ray - Level 29
  (292, 29200, 109, 14, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Shedinja - Shadow Ball - Level 33
  (292, 29200, 247, 14, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Shedinja - Grudge - Level 37
  (292, 29200, 288, 14, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Shedinja - Heal Block - Level 41
  (292, 29200, 377, 14, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Shedinja - Phantom Force - Level 45
  (292, 29200, 566, 14, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Shedinja - Hone Claws - TM01
  (292, 29200, 468, 14, NULL, 2, NULL, NULL, 14002001, NULL, 14),
  -- Shedinja - Toxic - TM06
  (292, 29200, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Shedinja - Hidden Power - TM10
  (292, 29200, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 16),
  -- Shedinja - Sunny Day - TM11
  (292, 29200, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 17),
  -- Shedinja - Hyper Beam - TM15
  (292, 29200, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 18),
  -- Shedinja - Protect - TM17
  (292, 29200, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 19),
  -- Shedinja - Frustration - TM21
  (292, 29200, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 20),
  -- Shedinja - Solar Beam - TM22
  (292, 29200, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 21),
  -- Shedinja - Return - TM27
  (292, 29200, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 22),
  -- Shedinja - Dig - TM28
  (292, 29200, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 23),
  -- Shedinja - Shadow Ball - TM30
  (292, 29200, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 24),
  -- Shedinja - Double Team - TM32
  (292, 29200, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 25),
  -- Shedinja - Sandstorm - TM37
  (292, 29200, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 26),
  -- Shedinja - Aerial Ace - TM40
  (292, 29200, 332, 14, NULL, 2, NULL, NULL, 14002040, NULL, 27),
  -- Shedinja - Facade - TM42
  (292, 29200, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 28),
  -- Shedinja - Rest - TM44
  (292, 29200, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 29),
  -- Shedinja - Thief - TM46
  (292, 29200, 168, 14, NULL, 2, NULL, NULL, 14002046, NULL, 30),
  -- Shedinja - Round - TM48
  (292, 29200, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 31),
  -- Shedinja - False Swipe - TM54
  (292, 29200, 206, 14, NULL, 2, NULL, NULL, 14002054, NULL, 32),
  -- Shedinja - Will-O-Wisp - TM61
  (292, 29200, 261, 14, NULL, 2, NULL, NULL, 14002061, NULL, 33),
  -- Shedinja - Shadow Claw - TM65
  (292, 29200, 421, 14, NULL, 2, NULL, NULL, 14002065, NULL, 34),
  -- Shedinja - Giga Impact - TM68
  (292, 29200, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 35),
  -- Shedinja - Flash - TM70
  (292, 29200, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 36),
  -- Shedinja - Struggle Bug - TM76
  (292, 29200, 522, 14, NULL, 2, NULL, NULL, 14002076, NULL, 37),
  -- Shedinja - X-Scissor - TM81
  (292, 29200, 404, 14, NULL, 2, NULL, NULL, 14002081, NULL, 38),
  -- Shedinja - Dream Eater - TM85
  (292, 29200, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 39),
  -- Shedinja - Swagger - TM87
  (292, 29200, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 40),
  -- Shedinja - Sleep Talk - TM88
  (292, 29200, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 41),
  -- Shedinja - Substitute - TM90
  (292, 29200, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 42),
  -- Shedinja - Secret Power - TM94
  (292, 29200, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 43),
  -- Shedinja - Confide - TM100
  (292, 29200, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 44),
  -- Shedinja - Cut - HM01
  (292, 29200, 15, 14, NULL, 3, NULL, NULL, 14003001, NULL, 45),
  -- Shedinja - Snore - Tutor
  (292, 29200, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Shedinja - Spite - Tutor
  (292, 29200, 180, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Shedinja - Giga Drain - Tutor
  (292, 29200, 202, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Shedinja - Trick - Tutor
  (292, 29200, 271, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Shedinja - Bug Bite - Tutor
  (292, 29200, 450, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Whismur - Pound - Level 1
  (293, 29300, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whismur - Echoed Voice - Level 4
  (293, 29300, 497, 14, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Whismur - Astonish - Level 8
  (293, 29300, 310, 14, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Whismur - Howl - Level 11
  (293, 29300, 336, 14, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Whismur - Screech - Level 15
  (293, 29300, 103, 14, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Whismur - Supersonic - Level 18
  (293, 29300, 48, 14, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Whismur - Stomp - Level 22
  (293, 29300, 23, 14, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Whismur - Uproar - Level 25
  (293, 29300, 253, 14, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Whismur - Roar - Level 29
  (293, 29300, 46, 14, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Whismur - Rest - Level 32
  (293, 29300, 156, 14, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Whismur - Sleep Talk - Level 36
  (293, 29300, 214, 14, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Whismur - Hyper Voice - Level 39
  (293, 29300, 304, 14, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Whismur - Synchronoise - Level 43
  (293, 29300, 485, 14, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Whismur - Roar - TM05
  (293, 29300, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 14),
  -- Whismur - Toxic - TM06
  (293, 29300, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 15),
  -- Whismur - Hidden Power - TM10
  (293, 29300, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 16),
  -- Whismur - Sunny Day - TM11
  (293, 29300, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 17),
  -- Whismur - Ice Beam - TM13
  (293, 29300, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 18),
  -- Whismur - Blizzard - TM14
  (293, 29300, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 19),
  -- Whismur - Protect - TM17
  (293, 29300, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 20),
  -- Whismur - Rain Dance - TM18
  (293, 29300, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 21),
  -- Whismur - Frustration - TM21
  (293, 29300, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Whismur - Solar Beam - TM22
  (293, 29300, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 23),
  -- Whismur - Return - TM27
  (293, 29300, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 24),
  -- Whismur - Shadow Ball - TM30
  (293, 29300, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 25),
  -- Whismur - Double Team - TM32
  (293, 29300, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 26),
  -- Whismur - Flamethrower - TM35
  (293, 29300, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 27),
  -- Whismur - Fire Blast - TM38
  (293, 29300, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 28),
  -- Whismur - Facade - TM42
  (293, 29300, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 29),
  -- Whismur - Rest - TM44
  (293, 29300, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 30),
  -- Whismur - Attract - TM45
  (293, 29300, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 31),
  -- Whismur - Round - TM48
  (293, 29300, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 32),
  -- Whismur - Echoed Voice - TM49
  (293, 29300, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 33),
  -- Whismur - Fling - TM56
  (293, 29300, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 34),
  -- Whismur - Incinerate - TM59
  (293, 29300, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 35),
  -- Whismur - Retaliate - TM67
  (293, 29300, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 36),
  -- Whismur - Swagger - TM87
  (293, 29300, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 37),
  -- Whismur - Sleep Talk - TM88
  (293, 29300, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 38),
  -- Whismur - Substitute - TM90
  (293, 29300, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 39),
  -- Whismur - Secret Power - TM94
  (293, 29300, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 40),
  -- Whismur - Confide - TM100
  (293, 29300, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 41),
  -- Whismur - Take Down - Egg
  (293, 29300, 36, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Whismur - Smokescreen - Egg
  (293, 29300, 108, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Whismur - Snore - Egg
  (293, 29300, 173, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Whismur - Smelling Salts - Egg
  (293, 29300, 265, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Whismur - Endeavor - Egg
  (293, 29300, 283, 14, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Whismur - Fake Tears - Egg
  (293, 29300, 313, 14, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Whismur - Extrasensory - Egg
  (293, 29300, 326, 14, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Whismur - Hammer Arm - Egg
  (293, 29300, 359, 14, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Whismur - Circle Throw - Egg
  (293, 29300, 509, 14, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Whismur - Disarming Voice - Egg
  (293, 29300, 574, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Whismur - Fire Punch - Tutor
  (293, 29300, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Whismur - Ice Punch - Tutor
  (293, 29300, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Whismur - Thunder Punch - Tutor
  (293, 29300, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Whismur - Snore - Tutor
  (293, 29300, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Whismur - Icy Wind - Tutor
  (293, 29300, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 56),
  -- Whismur - Uproar - Tutor
  (293, 29300, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 57),
  -- Whismur - Endeavor - Tutor
  (293, 29300, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Whismur - Hyper Voice - Tutor
  (293, 29300, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Whismur - Shock Wave - Tutor
  (293, 29300, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Whismur - Water Pulse - Tutor
  (293, 29300, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Whismur - Zen Headbutt - Tutor
  (293, 29300, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Loudred - Pound - Level 1
  (294, 29400, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Loudred - Astonish - Level 1
  (294, 29400, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Loudred - Howl - Level 1
  (294, 29400, 336, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Loudred - Echoed Voice - Level 1
  (294, 29400, 497, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Loudred - Echoed Voice - Level 4
  (294, 29400, 497, 14, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Loudred - Astonish - Level 9
  (294, 29400, 310, 14, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Loudred - Howl - Level 11
  (294, 29400, 336, 14, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Loudred - Screech - Level 15
  (294, 29400, 103, 14, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Loudred - Supersonic - Level 18
  (294, 29400, 48, 14, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Loudred - Bite - Level 20
  (294, 29400, 44, 14, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Loudred - Stomp - Level 23
  (294, 29400, 23, 14, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Loudred - Uproar - Level 27
  (294, 29400, 253, 14, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Loudred - Roar - Level 32
  (294, 29400, 46, 14, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Loudred - Rest - Level 36
  (294, 29400, 156, 14, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Loudred - Sleep Talk - Level 41
  (294, 29400, 214, 14, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Loudred - Hyper Voice - Level 45
  (294, 29400, 304, 14, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Loudred - Synchronoise - Level 50
  (294, 29400, 485, 14, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Loudred - Roar - TM05
  (294, 29400, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 18),
  -- Loudred - Toxic - TM06
  (294, 29400, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 19),
  -- Loudred - Hidden Power - TM10
  (294, 29400, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Loudred - Sunny Day - TM11
  (294, 29400, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Loudred - Taunt - TM12
  (294, 29400, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 22),
  -- Loudred - Ice Beam - TM13
  (294, 29400, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 23),
  -- Loudred - Blizzard - TM14
  (294, 29400, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 24),
  -- Loudred - Protect - TM17
  (294, 29400, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 25),
  -- Loudred - Rain Dance - TM18
  (294, 29400, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 26),
  -- Loudred - Frustration - TM21
  (294, 29400, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 27),
  -- Loudred - Solar Beam - TM22
  (294, 29400, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 28),
  -- Loudred - Smack Down - TM23
  (294, 29400, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 29),
  -- Loudred - Earthquake - TM26
  (294, 29400, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 30),
  -- Loudred - Return - TM27
  (294, 29400, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Loudred - Shadow Ball - TM30
  (294, 29400, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 32),
  -- Loudred - Brick Break - TM31
  (294, 29400, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 33),
  -- Loudred - Double Team - TM32
  (294, 29400, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Loudred - Flamethrower - TM35
  (294, 29400, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 35),
  -- Loudred - Fire Blast - TM38
  (294, 29400, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 36),
  -- Loudred - Rock Tomb - TM39
  (294, 29400, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 37),
  -- Loudred - Torment - TM41
  (294, 29400, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 38),
  -- Loudred - Facade - TM42
  (294, 29400, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 39),
  -- Loudred - Rest - TM44
  (294, 29400, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 40),
  -- Loudred - Attract - TM45
  (294, 29400, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 41),
  -- Loudred - Round - TM48
  (294, 29400, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 42),
  -- Loudred - Echoed Voice - TM49
  (294, 29400, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 43),
  -- Loudred - Overheat - TM50
  (294, 29400, 315, 14, NULL, 2, NULL, NULL, 14002050, NULL, 44),
  -- Loudred - Fling - TM56
  (294, 29400, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 45),
  -- Loudred - Incinerate - TM59
  (294, 29400, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 46),
  -- Loudred - Retaliate - TM67
  (294, 29400, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 47),
  -- Loudred - Bulldoze - TM78
  (294, 29400, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 48),
  -- Loudred - Rock Slide - TM80
  (294, 29400, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 49),
  -- Loudred - Swagger - TM87
  (294, 29400, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 50),
  -- Loudred - Sleep Talk - TM88
  (294, 29400, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 51),
  -- Loudred - Substitute - TM90
  (294, 29400, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 52),
  -- Loudred - Secret Power - TM94
  (294, 29400, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 53),
  -- Loudred - Power-Up Punch - TM98
  (294, 29400, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 54),
  -- Loudred - Confide - TM100
  (294, 29400, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 55),
  -- Loudred - Strength - HM04
  (294, 29400, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 56),
  -- Loudred - Rock Smash - HM06
  (294, 29400, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 57),
  -- Loudred - Fire Punch - Tutor
  (294, 29400, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Loudred - Ice Punch - Tutor
  (294, 29400, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Loudred - Thunder Punch - Tutor
  (294, 29400, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Loudred - Low Kick - Tutor
  (294, 29400, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Loudred - Snore - Tutor
  (294, 29400, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Loudred - Icy Wind - Tutor
  (294, 29400, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Loudred - Uproar - Tutor
  (294, 29400, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Loudred - Endeavor - Tutor
  (294, 29400, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Loudred - Hyper Voice - Tutor
  (294, 29400, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Loudred - Shock Wave - Tutor
  (294, 29400, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Loudred - Water Pulse - Tutor
  (294, 29400, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Loudred - Zen Headbutt - Tutor
  (294, 29400, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Exploud - Pound - Level 1
  (295, 29500, 1, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exploud - Astonish - Level 1
  (295, 29500, 310, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exploud - Howl - Level 1
  (295, 29500, 336, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exploud - Thunder Fang - Level 1
  (295, 29500, 422, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exploud - Ice Fang - Level 1
  (295, 29500, 423, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exploud - Fire Fang - Level 1
  (295, 29500, 424, 14, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Exploud - Echoed Voice - Level 1
  (295, 29500, 497, 14, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Exploud - Boomburst - Level 1
  (295, 29500, 586, 14, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Exploud - Echoed Voice - Level 4
  (295, 29500, 497, 14, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Exploud - Astonish - Level 9
  (295, 29500, 310, 14, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Exploud - Howl - Level 11
  (295, 29500, 336, 14, NULL, 1, 11, NULL, NULL, NULL, 11),
  -- Exploud - Screech - Level 15
  (295, 29500, 103, 14, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Exploud - Supersonic - Level 18
  (295, 29500, 48, 14, NULL, 1, 18, NULL, NULL, NULL, 13),
  -- Exploud - Bite - Level 20
  (295, 29500, 44, 14, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Exploud - Stomp - Level 23
  (295, 29500, 23, 14, NULL, 1, 23, NULL, NULL, NULL, 15),
  -- Exploud - Uproar - Level 27
  (295, 29500, 253, 14, NULL, 1, 27, NULL, NULL, NULL, 16),
  -- Exploud - Roar - Level 32
  (295, 29500, 46, 14, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Exploud - Rest - Level 36
  (295, 29500, 156, 14, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Exploud - Crunch - Level 40
  (295, 29500, 242, 14, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Exploud - Sleep Talk - Level 42
  (295, 29500, 214, 14, NULL, 1, 42, NULL, NULL, NULL, 20),
  -- Exploud - Hyper Voice - Level 47
  (295, 29500, 304, 14, NULL, 1, 47, NULL, NULL, NULL, 21),
  -- Exploud - Synchronoise - Level 53
  (295, 29500, 485, 14, NULL, 1, 53, NULL, NULL, NULL, 22),
  -- Exploud - Boomburst - Level 58
  (295, 29500, 586, 14, NULL, 1, 58, NULL, NULL, NULL, 23),
  -- Exploud - Hyper Beam - Level 64
  (295, 29500, 63, 14, NULL, 1, 64, NULL, NULL, NULL, 24),
  -- Exploud - Roar - TM05
  (295, 29500, 46, 14, NULL, 2, NULL, NULL, 14002005, NULL, 25),
  -- Exploud - Toxic - TM06
  (295, 29500, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 26),
  -- Exploud - Hidden Power - TM10
  (295, 29500, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 27),
  -- Exploud - Sunny Day - TM11
  (295, 29500, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 28),
  -- Exploud - Taunt - TM12
  (295, 29500, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 29),
  -- Exploud - Ice Beam - TM13
  (295, 29500, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 30),
  -- Exploud - Blizzard - TM14
  (295, 29500, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 31),
  -- Exploud - Hyper Beam - TM15
  (295, 29500, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 32),
  -- Exploud - Protect - TM17
  (295, 29500, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 33),
  -- Exploud - Rain Dance - TM18
  (295, 29500, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 34),
  -- Exploud - Frustration - TM21
  (295, 29500, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 35),
  -- Exploud - Solar Beam - TM22
  (295, 29500, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 36),
  -- Exploud - Smack Down - TM23
  (295, 29500, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 37),
  -- Exploud - Earthquake - TM26
  (295, 29500, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 38),
  -- Exploud - Return - TM27
  (295, 29500, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 39),
  -- Exploud - Shadow Ball - TM30
  (295, 29500, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 40),
  -- Exploud - Brick Break - TM31
  (295, 29500, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 41),
  -- Exploud - Double Team - TM32
  (295, 29500, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 42),
  -- Exploud - Flamethrower - TM35
  (295, 29500, 53, 14, NULL, 2, NULL, NULL, 14002035, NULL, 43),
  -- Exploud - Fire Blast - TM38
  (295, 29500, 126, 14, NULL, 2, NULL, NULL, 14002038, NULL, 44),
  -- Exploud - Rock Tomb - TM39
  (295, 29500, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 45),
  -- Exploud - Torment - TM41
  (295, 29500, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 46),
  -- Exploud - Facade - TM42
  (295, 29500, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 47),
  -- Exploud - Rest - TM44
  (295, 29500, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 48),
  -- Exploud - Attract - TM45
  (295, 29500, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 49),
  -- Exploud - Round - TM48
  (295, 29500, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 50),
  -- Exploud - Echoed Voice - TM49
  (295, 29500, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 51),
  -- Exploud - Overheat - TM50
  (295, 29500, 315, 14, NULL, 2, NULL, NULL, 14002050, NULL, 52),
  -- Exploud - Focus Blast - TM52
  (295, 29500, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 53),
  -- Exploud - Fling - TM56
  (295, 29500, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 54),
  -- Exploud - Incinerate - TM59
  (295, 29500, 510, 14, NULL, 2, NULL, NULL, 14002059, NULL, 55),
  -- Exploud - Retaliate - TM67
  (295, 29500, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 56),
  -- Exploud - Giga Impact - TM68
  (295, 29500, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 57),
  -- Exploud - Bulldoze - TM78
  (295, 29500, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 58),
  -- Exploud - Rock Slide - TM80
  (295, 29500, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 59),
  -- Exploud - Swagger - TM87
  (295, 29500, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 60),
  -- Exploud - Sleep Talk - TM88
  (295, 29500, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 61),
  -- Exploud - Substitute - TM90
  (295, 29500, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 62),
  -- Exploud - Secret Power - TM94
  (295, 29500, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 63),
  -- Exploud - Power-Up Punch - TM98
  (295, 29500, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 64),
  -- Exploud - Confide - TM100
  (295, 29500, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 65),
  -- Exploud - Surf - HM03
  (295, 29500, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 66),
  -- Exploud - Strength - HM04
  (295, 29500, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 67),
  -- Exploud - Rock Smash - HM06
  (295, 29500, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 68),
  -- Exploud - Fire Punch - Tutor
  (295, 29500, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Exploud - Ice Punch - Tutor
  (295, 29500, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Exploud - Thunder Punch - Tutor
  (295, 29500, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Exploud - Low Kick - Tutor
  (295, 29500, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Exploud - Snore - Tutor
  (295, 29500, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Exploud - Icy Wind - Tutor
  (295, 29500, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Exploud - Outrage - Tutor
  (295, 29500, 200, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Exploud - Uproar - Tutor
  (295, 29500, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Exploud - Endeavor - Tutor
  (295, 29500, 283, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Exploud - Hyper Voice - Tutor
  (295, 29500, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Exploud - Shock Wave - Tutor
  (295, 29500, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Exploud - Water Pulse - Tutor
  (295, 29500, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Exploud - Zen Headbutt - Tutor
  (295, 29500, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81),
  -- Makuhita - Tackle - Level 1
  (296, 29600, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Makuhita - Focus Energy - Level 1
  (296, 29600, 116, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Makuhita - Sand Attack - Level 4
  (296, 29600, 28, 14, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Makuhita - Arm Thrust - Level 7
  (296, 29600, 292, 14, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Makuhita - Fake Out - Level 10
  (296, 29600, 252, 14, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Makuhita - Force Palm - Level 13
  (296, 29600, 395, 14, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Makuhita - Whirlwind - Level 16
  (296, 29600, 18, 14, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Makuhita - Knock Off - Level 19
  (296, 29600, 282, 14, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Makuhita - Vital Throw - Level 22
  (296, 29600, 233, 14, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Makuhita - Belly Drum - Level 25
  (296, 29600, 187, 14, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Makuhita - Smelling Salts - Level 28
  (296, 29600, 265, 14, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Makuhita - Seismic Toss - Level 31
  (296, 29600, 69, 14, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Makuhita - Wake-Up Slap - Level 34
  (296, 29600, 358, 14, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Makuhita - Endure - Level 37
  (296, 29600, 203, 14, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Makuhita - Close Combat - Level 40
  (296, 29600, 370, 14, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Makuhita - Reversal - Level 43
  (296, 29600, 179, 14, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Makuhita - Heavy Slam - Level 46
  (296, 29600, 484, 14, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Makuhita - Toxic - TM06
  (296, 29600, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 18),
  -- Makuhita - Bulk Up - TM08
  (296, 29600, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 19),
  -- Makuhita - Hidden Power - TM10
  (296, 29600, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 20),
  -- Makuhita - Sunny Day - TM11
  (296, 29600, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 21),
  -- Makuhita - Protect - TM17
  (296, 29600, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 22),
  -- Makuhita - Rain Dance - TM18
  (296, 29600, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 23),
  -- Makuhita - Frustration - TM21
  (296, 29600, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 24),
  -- Makuhita - Smack Down - TM23
  (296, 29600, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 25),
  -- Makuhita - Earthquake - TM26
  (296, 29600, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 26),
  -- Makuhita - Return - TM27
  (296, 29600, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Makuhita - Dig - TM28
  (296, 29600, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 28),
  -- Makuhita - Brick Break - TM31
  (296, 29600, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 29),
  -- Makuhita - Double Team - TM32
  (296, 29600, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 30),
  -- Makuhita - Rock Tomb - TM39
  (296, 29600, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 31),
  -- Makuhita - Facade - TM42
  (296, 29600, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 32),
  -- Makuhita - Rest - TM44
  (296, 29600, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Makuhita - Attract - TM45
  (296, 29600, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Makuhita - Low Sweep - TM47
  (296, 29600, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 35),
  -- Makuhita - Round - TM48
  (296, 29600, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 36),
  -- Makuhita - Focus Blast - TM52
  (296, 29600, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 37),
  -- Makuhita - Fling - TM56
  (296, 29600, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 38),
  -- Makuhita - Retaliate - TM67
  (296, 29600, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 39),
  -- Makuhita - Bulldoze - TM78
  (296, 29600, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 40),
  -- Makuhita - Rock Slide - TM80
  (296, 29600, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 41),
  -- Makuhita - Poison Jab - TM84
  (296, 29600, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 42),
  -- Makuhita - Swagger - TM87
  (296, 29600, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 43),
  -- Makuhita - Sleep Talk - TM88
  (296, 29600, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 44),
  -- Makuhita - Substitute - TM90
  (296, 29600, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 45),
  -- Makuhita - Secret Power - TM94
  (296, 29600, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 46),
  -- Makuhita - Power-Up Punch - TM98
  (296, 29600, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 47),
  -- Makuhita - Confide - TM100
  (296, 29600, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 48),
  -- Makuhita - Surf - HM03
  (296, 29600, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 49),
  -- Makuhita - Strength - HM04
  (296, 29600, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 50),
  -- Makuhita - Rock Smash - HM06
  (296, 29600, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 51),
  -- Makuhita - Counter - Egg
  (296, 29600, 68, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Makuhita - Feint Attack - Egg
  (296, 29600, 185, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Makuhita - Foresight - Egg
  (296, 29600, 193, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Makuhita - Detect - Egg
  (296, 29600, 197, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Makuhita - Dynamic Punch - Egg
  (296, 29600, 223, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Makuhita - Cross Chop - Egg
  (296, 29600, 238, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Makuhita - Focus Punch - Egg
  (296, 29600, 264, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Makuhita - Helping Hand - Egg
  (296, 29600, 270, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Makuhita - Revenge - Egg
  (296, 29600, 279, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Makuhita - Wake-Up Slap - Egg
  (296, 29600, 358, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Makuhita - Feint - Egg
  (296, 29600, 364, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Makuhita - Bullet Punch - Egg
  (296, 29600, 418, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Makuhita - Wide Guard - Egg
  (296, 29600, 469, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Makuhita - Chip Away - Egg
  (296, 29600, 498, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Makuhita - Fire Punch - Tutor
  (296, 29600, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Makuhita - Ice Punch - Tutor
  (296, 29600, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Makuhita - Thunder Punch - Tutor
  (296, 29600, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Makuhita - Low Kick - Tutor
  (296, 29600, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Makuhita - Snore - Tutor
  (296, 29600, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Makuhita - Focus Punch - Tutor
  (296, 29600, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Makuhita - Helping Hand - Tutor
  (296, 29600, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Makuhita - Role Play - Tutor
  (296, 29600, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Makuhita - Superpower - Tutor
  (296, 29600, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Makuhita - Knock Off - Tutor
  (296, 29600, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Hariyama - Sand Attack - Level 1
  (297, 29700, 28, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hariyama - Tackle - Level 1
  (297, 29700, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hariyama - Focus Energy - Level 1
  (297, 29700, 116, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hariyama - Arm Thrust - Level 1
  (297, 29700, 292, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hariyama - Brine - Level 1
  (297, 29700, 362, 14, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hariyama - Sand Attack - Level 4
  (297, 29700, 28, 14, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Hariyama - Arm Thrust - Level 7
  (297, 29700, 292, 14, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Hariyama - Fake Out - Level 10
  (297, 29700, 252, 14, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Hariyama - Force Palm - Level 13
  (297, 29700, 395, 14, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Hariyama - Whirlwind - Level 16
  (297, 29700, 18, 14, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Hariyama - Knock Off - Level 19
  (297, 29700, 282, 14, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Hariyama - Vital Throw - Level 22
  (297, 29700, 233, 14, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Hariyama - Belly Drum - Level 26
  (297, 29700, 187, 14, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Hariyama - Smelling Salts - Level 30
  (297, 29700, 265, 14, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Hariyama - Seismic Toss - Level 34
  (297, 29700, 69, 14, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Hariyama - Wake-Up Slap - Level 38
  (297, 29700, 358, 14, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Hariyama - Endure - Level 42
  (297, 29700, 203, 14, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Hariyama - Close Combat - Level 46
  (297, 29700, 370, 14, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Hariyama - Reversal - Level 50
  (297, 29700, 179, 14, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Hariyama - Heavy Slam - Level 54
  (297, 29700, 484, 14, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Hariyama - Toxic - TM06
  (297, 29700, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 21),
  -- Hariyama - Bulk Up - TM08
  (297, 29700, 339, 14, NULL, 2, NULL, NULL, 14002008, NULL, 22),
  -- Hariyama - Hidden Power - TM10
  (297, 29700, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 23),
  -- Hariyama - Sunny Day - TM11
  (297, 29700, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 24),
  -- Hariyama - Hyper Beam - TM15
  (297, 29700, 63, 14, NULL, 2, NULL, NULL, 14002015, NULL, 25),
  -- Hariyama - Protect - TM17
  (297, 29700, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Hariyama - Rain Dance - TM18
  (297, 29700, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Hariyama - Frustration - TM21
  (297, 29700, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 28),
  -- Hariyama - Smack Down - TM23
  (297, 29700, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 29),
  -- Hariyama - Earthquake - TM26
  (297, 29700, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 30),
  -- Hariyama - Return - TM27
  (297, 29700, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 31),
  -- Hariyama - Dig - TM28
  (297, 29700, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 32),
  -- Hariyama - Brick Break - TM31
  (297, 29700, 280, 14, NULL, 2, NULL, NULL, 14002031, NULL, 33),
  -- Hariyama - Double Team - TM32
  (297, 29700, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 34),
  -- Hariyama - Rock Tomb - TM39
  (297, 29700, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 35),
  -- Hariyama - Facade - TM42
  (297, 29700, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 36),
  -- Hariyama - Rest - TM44
  (297, 29700, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 37),
  -- Hariyama - Attract - TM45
  (297, 29700, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 38),
  -- Hariyama - Low Sweep - TM47
  (297, 29700, 490, 14, NULL, 2, NULL, NULL, 14002047, NULL, 39),
  -- Hariyama - Round - TM48
  (297, 29700, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 40),
  -- Hariyama - Focus Blast - TM52
  (297, 29700, 411, 14, NULL, 2, NULL, NULL, 14002052, NULL, 41),
  -- Hariyama - Fling - TM56
  (297, 29700, 374, 14, NULL, 2, NULL, NULL, 14002056, NULL, 42),
  -- Hariyama - Payback - TM66
  (297, 29700, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 43),
  -- Hariyama - Retaliate - TM67
  (297, 29700, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 44),
  -- Hariyama - Giga Impact - TM68
  (297, 29700, 416, 14, NULL, 2, NULL, NULL, 14002068, NULL, 45),
  -- Hariyama - Stone Edge - TM71
  (297, 29700, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 46),
  -- Hariyama - Bulldoze - TM78
  (297, 29700, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 47),
  -- Hariyama - Rock Slide - TM80
  (297, 29700, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 48),
  -- Hariyama - Poison Jab - TM84
  (297, 29700, 398, 14, NULL, 2, NULL, NULL, 14002084, NULL, 49),
  -- Hariyama - Swagger - TM87
  (297, 29700, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 50),
  -- Hariyama - Sleep Talk - TM88
  (297, 29700, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 51),
  -- Hariyama - Substitute - TM90
  (297, 29700, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 52),
  -- Hariyama - Secret Power - TM94
  (297, 29700, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 53),
  -- Hariyama - Power-Up Punch - TM98
  (297, 29700, 612, 14, NULL, 2, NULL, NULL, 14002098, NULL, 54),
  -- Hariyama - Confide - TM100
  (297, 29700, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 55),
  -- Hariyama - Surf - HM03
  (297, 29700, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 56),
  -- Hariyama - Strength - HM04
  (297, 29700, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 57),
  -- Hariyama - Rock Smash - HM06
  (297, 29700, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 58),
  -- Hariyama - Fire Punch - Tutor
  (297, 29700, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Hariyama - Ice Punch - Tutor
  (297, 29700, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Hariyama - Thunder Punch - Tutor
  (297, 29700, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Hariyama - Low Kick - Tutor
  (297, 29700, 67, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Hariyama - Snore - Tutor
  (297, 29700, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Hariyama - Focus Punch - Tutor
  (297, 29700, 264, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Hariyama - Helping Hand - Tutor
  (297, 29700, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Hariyama - Role Play - Tutor
  (297, 29700, 272, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Hariyama - Superpower - Tutor
  (297, 29700, 276, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Hariyama - Knock Off - Tutor
  (297, 29700, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Hariyama - Iron Head - Tutor
  (297, 29700, 442, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Azurill - Water Gun - Level 1
  (298, 29800, 55, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azurill - Splash - Level 1
  (298, 29800, 150, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azurill - Tail Whip - Level 2
  (298, 29800, 39, 14, NULL, 1, 2, NULL, NULL, NULL, 3),
  -- Azurill - Water Sport - Level 5
  (298, 29800, 346, 14, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Azurill - Bubble - Level 7
  (298, 29800, 145, 14, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Azurill - Charm - Level 10
  (298, 29800, 204, 14, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Azurill - Bubble Beam - Level 13
  (298, 29800, 61, 14, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Azurill - Helping Hand - Level 16
  (298, 29800, 270, 14, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Azurill - Slam - Level 20
  (298, 29800, 21, 14, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Azurill - Bounce - Level 23
  (298, 29800, 340, 14, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Azurill - Toxic - TM06
  (298, 29800, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 11),
  -- Azurill - Hail - TM07
  (298, 29800, 258, 14, NULL, 2, NULL, NULL, 14002007, NULL, 12),
  -- Azurill - Hidden Power - TM10
  (298, 29800, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 13),
  -- Azurill - Ice Beam - TM13
  (298, 29800, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 14),
  -- Azurill - Blizzard - TM14
  (298, 29800, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 15),
  -- Azurill - Light Screen - TM16
  (298, 29800, 113, 14, NULL, 2, NULL, NULL, 14002016, NULL, 16),
  -- Azurill - Protect - TM17
  (298, 29800, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 17),
  -- Azurill - Rain Dance - TM18
  (298, 29800, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 18),
  -- Azurill - Frustration - TM21
  (298, 29800, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 19),
  -- Azurill - Return - TM27
  (298, 29800, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 20),
  -- Azurill - Double Team - TM32
  (298, 29800, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 21),
  -- Azurill - Facade - TM42
  (298, 29800, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 22),
  -- Azurill - Rest - TM44
  (298, 29800, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 23),
  -- Azurill - Attract - TM45
  (298, 29800, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 24),
  -- Azurill - Round - TM48
  (298, 29800, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 25),
  -- Azurill - Scald - TM55
  (298, 29800, 503, 14, NULL, 2, NULL, NULL, 14002055, NULL, 26),
  -- Azurill - Swagger - TM87
  (298, 29800, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 27),
  -- Azurill - Sleep Talk - TM88
  (298, 29800, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 28),
  -- Azurill - Substitute - TM90
  (298, 29800, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 29),
  -- Azurill - Secret Power - TM94
  (298, 29800, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 30),
  -- Azurill - Confide - TM100
  (298, 29800, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 31),
  -- Azurill - Surf - HM03
  (298, 29800, 57, 14, NULL, 3, NULL, NULL, 14003003, NULL, 32),
  -- Azurill - Waterfall - HM05
  (298, 29800, 127, 14, NULL, 3, NULL, NULL, 14003005, NULL, 33),
  -- Azurill - Slam - Egg
  (298, 29800, 21, 14, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Azurill - Body Slam - Egg
  (298, 29800, 34, 14, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Azurill - Sing - Egg
  (298, 29800, 47, 14, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Azurill - Encore - Egg
  (298, 29800, 227, 14, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Azurill - Refresh - Egg
  (298, 29800, 287, 14, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Azurill - Camouflage - Egg
  (298, 29800, 293, 14, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Azurill - Fake Tears - Egg
  (298, 29800, 313, 14, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Azurill - Tickle - Egg
  (298, 29800, 321, 14, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Azurill - Muddy Water - Egg
  (298, 29800, 330, 14, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Azurill - Water Sport - Egg
  (298, 29800, 346, 14, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Azurill - Copycat - Egg
  (298, 29800, 383, 14, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Azurill - Soak - Egg
  (298, 29800, 487, 14, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Azurill - Snore - Tutor
  (298, 29800, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 46),
  -- Azurill - Icy Wind - Tutor
  (298, 29800, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 47),
  -- Azurill - Iron Tail - Tutor
  (298, 29800, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 48),
  -- Azurill - Uproar - Tutor
  (298, 29800, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 49),
  -- Azurill - Helping Hand - Tutor
  (298, 29800, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 50),
  -- Azurill - Knock Off - Tutor
  (298, 29800, 282, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 51),
  -- Azurill - Hyper Voice - Tutor
  (298, 29800, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 52),
  -- Azurill - Bounce - Tutor
  (298, 29800, 340, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 53),
  -- Azurill - Covet - Tutor
  (298, 29800, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 54),
  -- Azurill - Water Pulse - Tutor
  (298, 29800, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 55),
  -- Nosepass - Tackle - Level 1
  (299, 29900, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nosepass - Harden - Level 4
  (299, 29900, 106, 14, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Nosepass - Block - Level 7
  (299, 29900, 335, 14, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nosepass - Rock Throw - Level 10
  (299, 29900, 88, 14, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Nosepass - Thunder Wave - Level 13
  (299, 29900, 86, 14, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nosepass - Rest - Level 16
  (299, 29900, 156, 14, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Nosepass - Spark - Level 19
  (299, 29900, 209, 14, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Nosepass - Rock Slide - Level 22
  (299, 29900, 157, 14, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Nosepass - Power Gem - Level 25
  (299, 29900, 408, 14, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Nosepass - Rock Blast - Level 28
  (299, 29900, 350, 14, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Nosepass - Discharge - Level 31
  (299, 29900, 435, 14, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Nosepass - Sandstorm - Level 34
  (299, 29900, 201, 14, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Nosepass - Earth Power - Level 37
  (299, 29900, 414, 14, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Nosepass - Stone Edge - Level 40
  (299, 29900, 444, 14, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Nosepass - Zap Cannon - Level 43
  (299, 29900, 192, 14, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Nosepass - Lock-On - Level 43
  (299, 29900, 199, 14, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Nosepass - Toxic - TM06
  (299, 29900, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 17),
  -- Nosepass - Hidden Power - TM10
  (299, 29900, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 18),
  -- Nosepass - Sunny Day - TM11
  (299, 29900, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 19),
  -- Nosepass - Taunt - TM12
  (299, 29900, 269, 14, NULL, 2, NULL, NULL, 14002012, NULL, 20),
  -- Nosepass - Protect - TM17
  (299, 29900, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 21),
  -- Nosepass - Frustration - TM21
  (299, 29900, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 22),
  -- Nosepass - Smack Down - TM23
  (299, 29900, 479, 14, NULL, 2, NULL, NULL, 14002023, NULL, 23),
  -- Nosepass - Thunderbolt - TM24
  (299, 29900, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 24),
  -- Nosepass - Thunder - TM25
  (299, 29900, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 25),
  -- Nosepass - Earthquake - TM26
  (299, 29900, 89, 14, NULL, 2, NULL, NULL, 14002026, NULL, 26),
  -- Nosepass - Return - TM27
  (299, 29900, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 27),
  -- Nosepass - Double Team - TM32
  (299, 29900, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 28),
  -- Nosepass - Sandstorm - TM37
  (299, 29900, 201, 14, NULL, 2, NULL, NULL, 14002037, NULL, 29),
  -- Nosepass - Rock Tomb - TM39
  (299, 29900, 317, 14, NULL, 2, NULL, NULL, 14002039, NULL, 30),
  -- Nosepass - Torment - TM41
  (299, 29900, 259, 14, NULL, 2, NULL, NULL, 14002041, NULL, 31),
  -- Nosepass - Facade - TM42
  (299, 29900, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 32),
  -- Nosepass - Rest - TM44
  (299, 29900, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 33),
  -- Nosepass - Attract - TM45
  (299, 29900, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 34),
  -- Nosepass - Round - TM48
  (299, 29900, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 35),
  -- Nosepass - Explosion - TM64
  (299, 29900, 153, 14, NULL, 2, NULL, NULL, 14002064, NULL, 36),
  -- Nosepass - Rock Polish - TM69
  (299, 29900, 397, 14, NULL, 2, NULL, NULL, 14002069, NULL, 37),
  -- Nosepass - Stone Edge - TM71
  (299, 29900, 444, 14, NULL, 2, NULL, NULL, 14002071, NULL, 38),
  -- Nosepass - Volt Switch - TM72
  (299, 29900, 521, 14, NULL, 2, NULL, NULL, 14002072, NULL, 39),
  -- Nosepass - Thunder Wave - TM73
  (299, 29900, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 40),
  -- Nosepass - Bulldoze - TM78
  (299, 29900, 523, 14, NULL, 2, NULL, NULL, 14002078, NULL, 41),
  -- Nosepass - Rock Slide - TM80
  (299, 29900, 157, 14, NULL, 2, NULL, NULL, 14002080, NULL, 42),
  -- Nosepass - Swagger - TM87
  (299, 29900, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 43),
  -- Nosepass - Sleep Talk - TM88
  (299, 29900, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 44),
  -- Nosepass - Substitute - TM90
  (299, 29900, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 45),
  -- Nosepass - Secret Power - TM94
  (299, 29900, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 46),
  -- Nosepass - Dazzling Gleam - TM99
  (299, 29900, 605, 14, NULL, 2, NULL, NULL, 14002099, NULL, 47),
  -- Nosepass - Confide - TM100
  (299, 29900, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 48),
  -- Nosepass - Strength - HM04
  (299, 29900, 70, 14, NULL, 3, NULL, NULL, 14003004, NULL, 49),
  -- Nosepass - Rock Smash - HM06
  (299, 29900, 249, 14, NULL, 3, NULL, NULL, 14003006, NULL, 50),
  -- Nosepass - Double-Edge - Egg
  (299, 29900, 38, 14, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nosepass - Endure - Egg
  (299, 29900, 203, 14, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nosepass - Rollout - Egg
  (299, 29900, 205, 14, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Nosepass - Magnitude - Egg
  (299, 29900, 222, 14, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Nosepass - Block - Egg
  (299, 29900, 335, 14, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Nosepass - Stealth Rock - Egg
  (299, 29900, 446, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Nosepass - Wide Guard - Egg
  (299, 29900, 469, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Nosepass - Fire Punch - Tutor
  (299, 29900, 7, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 58),
  -- Nosepass - Ice Punch - Tutor
  (299, 29900, 8, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 59),
  -- Nosepass - Thunder Punch - Tutor
  (299, 29900, 9, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 60),
  -- Nosepass - Snore - Tutor
  (299, 29900, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 61),
  -- Nosepass - Pain Split - Tutor
  (299, 29900, 220, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 62),
  -- Nosepass - Magic Coat - Tutor
  (299, 29900, 277, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 63),
  -- Nosepass - Iron Defense - Tutor
  (299, 29900, 334, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 64),
  -- Nosepass - Block - Tutor
  (299, 29900, 335, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 65),
  -- Nosepass - Shock Wave - Tutor
  (299, 29900, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 66),
  -- Nosepass - Gravity - Tutor
  (299, 29900, 356, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 67),
  -- Nosepass - Magnet Rise - Tutor
  (299, 29900, 393, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 68),
  -- Nosepass - Earth Power - Tutor
  (299, 29900, 414, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 69),
  -- Nosepass - Stealth Rock - Tutor
  (299, 29900, 446, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Skitty - Tackle - Level 1
  (300, 30000, 33, 14, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skitty - Tail Whip - Level 1
  (300, 30000, 39, 14, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skitty - Growl - Level 1
  (300, 30000, 45, 14, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skitty - Fake Out - Level 1
  (300, 30000, 252, 14, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skitty - Foresight - Level 4
  (300, 30000, 193, 14, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Skitty - Sing - Level 7
  (300, 30000, 47, 14, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Skitty - Attract - Level 10
  (300, 30000, 213, 14, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Skitty - Disarming Voice - Level 13
  (300, 30000, 574, 14, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Skitty - Double Slap - Level 16
  (300, 30000, 3, 14, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Skitty - Copycat - Level 19
  (300, 30000, 383, 14, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Skitty - Feint Attack - Level 22
  (300, 30000, 185, 14, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Skitty - Charm - Level 25
  (300, 30000, 204, 14, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Skitty - Wake-Up Slap - Level 28
  (300, 30000, 358, 14, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Skitty - Assist - Level 31
  (300, 30000, 274, 14, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Skitty - Covet - Level 34
  (300, 30000, 343, 14, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Skitty - Heal Bell - Level 37
  (300, 30000, 215, 14, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Skitty - Double-Edge - Level 40
  (300, 30000, 38, 14, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Skitty - Captivate - Level 43
  (300, 30000, 445, 14, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Skitty - Play Rough - Level 46
  (300, 30000, 583, 14, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Skitty - Calm Mind - TM04
  (300, 30000, 347, 14, NULL, 2, NULL, NULL, 14002004, NULL, 20),
  -- Skitty - Toxic - TM06
  (300, 30000, 92, 14, NULL, 2, NULL, NULL, 14002006, NULL, 21),
  -- Skitty - Hidden Power - TM10
  (300, 30000, 237, 14, NULL, 2, NULL, NULL, 14002010, NULL, 22),
  -- Skitty - Sunny Day - TM11
  (300, 30000, 241, 14, NULL, 2, NULL, NULL, 14002011, NULL, 23),
  -- Skitty - Ice Beam - TM13
  (300, 30000, 58, 14, NULL, 2, NULL, NULL, 14002013, NULL, 24),
  -- Skitty - Blizzard - TM14
  (300, 30000, 59, 14, NULL, 2, NULL, NULL, 14002014, NULL, 25),
  -- Skitty - Protect - TM17
  (300, 30000, 182, 14, NULL, 2, NULL, NULL, 14002017, NULL, 26),
  -- Skitty - Rain Dance - TM18
  (300, 30000, 240, 14, NULL, 2, NULL, NULL, 14002018, NULL, 27),
  -- Skitty - Safeguard - TM20
  (300, 30000, 219, 14, NULL, 2, NULL, NULL, 14002020, NULL, 28),
  -- Skitty - Frustration - TM21
  (300, 30000, 218, 14, NULL, 2, NULL, NULL, 14002021, NULL, 29),
  -- Skitty - Solar Beam - TM22
  (300, 30000, 76, 14, NULL, 2, NULL, NULL, 14002022, NULL, 30),
  -- Skitty - Thunderbolt - TM24
  (300, 30000, 85, 14, NULL, 2, NULL, NULL, 14002024, NULL, 31),
  -- Skitty - Thunder - TM25
  (300, 30000, 87, 14, NULL, 2, NULL, NULL, 14002025, NULL, 32),
  -- Skitty - Return - TM27
  (300, 30000, 216, 14, NULL, 2, NULL, NULL, 14002027, NULL, 33),
  -- Skitty - Dig - TM28
  (300, 30000, 91, 14, NULL, 2, NULL, NULL, 14002028, NULL, 34),
  -- Skitty - Shadow Ball - TM30
  (300, 30000, 247, 14, NULL, 2, NULL, NULL, 14002030, NULL, 35),
  -- Skitty - Double Team - TM32
  (300, 30000, 104, 14, NULL, 2, NULL, NULL, 14002032, NULL, 36),
  -- Skitty - Facade - TM42
  (300, 30000, 263, 14, NULL, 2, NULL, NULL, 14002042, NULL, 37),
  -- Skitty - Rest - TM44
  (300, 30000, 156, 14, NULL, 2, NULL, NULL, 14002044, NULL, 38),
  -- Skitty - Attract - TM45
  (300, 30000, 213, 14, NULL, 2, NULL, NULL, 14002045, NULL, 39),
  -- Skitty - Round - TM48
  (300, 30000, 496, 14, NULL, 2, NULL, NULL, 14002048, NULL, 40),
  -- Skitty - Echoed Voice - TM49
  (300, 30000, 497, 14, NULL, 2, NULL, NULL, 14002049, NULL, 41),
  -- Skitty - Charge Beam - TM57
  (300, 30000, 451, 14, NULL, 2, NULL, NULL, 14002057, NULL, 42),
  -- Skitty - Payback - TM66
  (300, 30000, 371, 14, NULL, 2, NULL, NULL, 14002066, NULL, 43),
  -- Skitty - Retaliate - TM67
  (300, 30000, 514, 14, NULL, 2, NULL, NULL, 14002067, NULL, 44),
  -- Skitty - Flash - TM70
  (300, 30000, 148, 14, NULL, 2, NULL, NULL, 14002070, NULL, 45),
  -- Skitty - Thunder Wave - TM73
  (300, 30000, 86, 14, NULL, 2, NULL, NULL, 14002073, NULL, 46),
  -- Skitty - Psych Up - TM77
  (300, 30000, 244, 14, NULL, 2, NULL, NULL, 14002077, NULL, 47),
  -- Skitty - Dream Eater - TM85
  (300, 30000, 138, 14, NULL, 2, NULL, NULL, 14002085, NULL, 48),
  -- Skitty - Grass Knot - TM86
  (300, 30000, 447, 14, NULL, 2, NULL, NULL, 14002086, NULL, 49),
  -- Skitty - Swagger - TM87
  (300, 30000, 207, 14, NULL, 2, NULL, NULL, 14002087, NULL, 50),
  -- Skitty - Sleep Talk - TM88
  (300, 30000, 214, 14, NULL, 2, NULL, NULL, 14002088, NULL, 51),
  -- Skitty - Substitute - TM90
  (300, 30000, 164, 14, NULL, 2, NULL, NULL, 14002090, NULL, 52),
  -- Skitty - Wild Charge - TM93
  (300, 30000, 528, 14, NULL, 2, NULL, NULL, 14002093, NULL, 53),
  -- Skitty - Secret Power - TM94
  (300, 30000, 290, 14, NULL, 2, NULL, NULL, 14002094, NULL, 54),
  -- Skitty - Confide - TM100
  (300, 30000, 590, 14, NULL, 2, NULL, NULL, 14002100, NULL, 55),
  -- Skitty - Baton Pass - Egg
  (300, 30000, 226, 14, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skitty - Fake Out - Egg
  (300, 30000, 252, 14, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skitty - Uproar - Egg
  (300, 30000, 253, 14, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skitty - Helping Hand - Egg
  (300, 30000, 270, 14, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skitty - Wish - Egg
  (300, 30000, 273, 14, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skitty - Fake Tears - Egg
  (300, 30000, 313, 14, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Skitty - Tickle - Egg
  (300, 30000, 321, 14, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Skitty - Cosmic Power - Egg
  (300, 30000, 322, 14, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Skitty - Last Resort - Egg
  (300, 30000, 387, 14, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Skitty - Sucker Punch - Egg
  (300, 30000, 389, 14, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Skitty - Mud Bomb - Egg
  (300, 30000, 426, 14, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Skitty - Zen Headbutt - Egg
  (300, 30000, 428, 14, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Skitty - Captivate - Egg
  (300, 30000, 445, 14, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Skitty - Simple Beam - Egg
  (300, 30000, 493, 14, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Skitty - Snore - Tutor
  (300, 30000, 173, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 70),
  -- Skitty - Icy Wind - Tutor
  (300, 30000, 196, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 71),
  -- Skitty - Heal Bell - Tutor
  (300, 30000, 215, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 72),
  -- Skitty - Iron Tail - Tutor
  (300, 30000, 231, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 73),
  -- Skitty - Uproar - Tutor
  (300, 30000, 253, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 74),
  -- Skitty - Helping Hand - Tutor
  (300, 30000, 270, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 75),
  -- Skitty - Hyper Voice - Tutor
  (300, 30000, 304, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 76),
  -- Skitty - Covet - Tutor
  (300, 30000, 343, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 77),
  -- Skitty - Shock Wave - Tutor
  (300, 30000, 351, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 78),
  -- Skitty - Water Pulse - Tutor
  (300, 30000, 352, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 79),
  -- Skitty - Last Resort - Tutor
  (300, 30000, 387, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 80),
  -- Skitty - Zen Headbutt - Tutor
  (300, 30000, 428, 14, NULL, 6, NULL, NULL, NULL, 'Omega Ruby / Alpha Sapphire Move Tutor.', 81);
