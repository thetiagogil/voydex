-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB X / Y learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y learnsets for default forms, species 252-300.
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
  (252, 25200, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Treecko - Leer - Level 1
  (252, 25200, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Treecko - Absorb - Level 6
  (252, 25200, 71, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Treecko - Quick Attack - Level 11
  (252, 25200, 98, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Treecko - Pursuit - Level 16
  (252, 25200, 228, 13, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Treecko - Screech - Level 21
  (252, 25200, 103, 13, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Treecko - Mega Drain - Level 26
  (252, 25200, 72, 13, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Treecko - Agility - Level 31
  (252, 25200, 97, 13, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Treecko - Slam - Level 36
  (252, 25200, 21, 13, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Treecko - Detect - Level 41
  (252, 25200, 197, 13, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Treecko - Giga Drain - Level 46
  (252, 25200, 202, 13, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Treecko - Energy Ball - Level 50
  (252, 25200, 412, 13, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Treecko - Toxic - TM06
  (252, 25200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Treecko - Hidden Power - TM10
  (252, 25200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Treecko - Sunny Day - TM11
  (252, 25200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 15),
  -- Treecko - Protect - TM17
  (252, 25200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Treecko - Safeguard - TM20
  (252, 25200, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 17),
  -- Treecko - Frustration - TM21
  (252, 25200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 18),
  -- Treecko - Solar Beam - TM22
  (252, 25200, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 19),
  -- Treecko - Return - TM27
  (252, 25200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 20),
  -- Treecko - Dig - TM28
  (252, 25200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 21),
  -- Treecko - Brick Break - TM31
  (252, 25200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 22),
  -- Treecko - Double Team - TM32
  (252, 25200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Treecko - Rock Tomb - TM39
  (252, 25200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 24),
  -- Treecko - Aerial Ace - TM40
  (252, 25200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 25),
  -- Treecko - Facade - TM42
  (252, 25200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Treecko - Rest - TM44
  (252, 25200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Treecko - Attract - TM45
  (252, 25200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Treecko - Round - TM48
  (252, 25200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Treecko - Energy Ball - TM53
  (252, 25200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 30),
  -- Treecko - Fling - TM56
  (252, 25200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 31),
  -- Treecko - Acrobatics - TM62
  (252, 25200, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 32),
  -- Treecko - Flash - TM70
  (252, 25200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 33),
  -- Treecko - Swords Dance - TM75
  (252, 25200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 34),
  -- Treecko - Rock Slide - TM80
  (252, 25200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 35),
  -- Treecko - Grass Knot - TM86
  (252, 25200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 36),
  -- Treecko - Swagger - TM87
  (252, 25200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 37),
  -- Treecko - Sleep Talk - TM88
  (252, 25200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 38),
  -- Treecko - Substitute - TM90
  (252, 25200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Treecko - Rock Smash - TM94
  (252, 25200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 40),
  -- Treecko - Nature Power - TM96
  (252, 25200, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 41),
  -- Treecko - Power-Up Punch - TM98
  (252, 25200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 42),
  -- Treecko - Confide - TM100
  (252, 25200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Treecko - Cut - HM01
  (252, 25200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 44),
  -- Treecko - Strength - HM04
  (252, 25200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 45),
  -- Treecko - Razor Wind - Egg
  (252, 25200, 13, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Treecko - Double Kick - Egg
  (252, 25200, 24, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Treecko - Leech Seed - Egg
  (252, 25200, 73, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Treecko - Dragon Breath - Egg
  (252, 25200, 225, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Treecko - Synthesis - Egg
  (252, 25200, 235, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Treecko - Crunch - Egg
  (252, 25200, 242, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Treecko - Endeavor - Egg
  (252, 25200, 283, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Treecko - Mud Sport - Egg
  (252, 25200, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Treecko - Crush Claw - Egg
  (252, 25200, 306, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Treecko - Grass Whistle - Egg
  (252, 25200, 320, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Treecko - Bullet Seed - Egg
  (252, 25200, 331, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Treecko - Magical Leaf - Egg
  (252, 25200, 345, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Treecko - Natural Gift - Egg
  (252, 25200, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Treecko - Worry Seed - Egg
  (252, 25200, 388, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Treecko - Leaf Storm - Egg
  (252, 25200, 437, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Treecko - Grassy Terrain - Egg
  (252, 25200, 580, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Treecko - Grass Pledge - Tutor
  (252, 25200, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 62),
  -- Grovyle - Pound - Level 1
  (253, 25300, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grovyle - Leer - Level 1
  (253, 25300, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grovyle - Absorb - Level 1
  (253, 25300, 71, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grovyle - Quick Attack - Level 1
  (253, 25300, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grovyle - Absorb - Level 6
  (253, 25300, 71, 13, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Grovyle - Quick Attack - Level 11
  (253, 25300, 98, 13, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Grovyle - Fury Cutter - Level 16
  (253, 25300, 210, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Grovyle - Pursuit - Level 17
  (253, 25300, 228, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Grovyle - Screech - Level 23
  (253, 25300, 103, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Grovyle - Leaf Blade - Level 29
  (253, 25300, 348, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Grovyle - Agility - Level 35
  (253, 25300, 97, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Grovyle - Slam - Level 41
  (253, 25300, 21, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Grovyle - Detect - Level 47
  (253, 25300, 197, 13, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Grovyle - False Swipe - Level 53
  (253, 25300, 206, 13, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Grovyle - Leaf Storm - Level 59
  (253, 25300, 437, 13, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Grovyle - Toxic - TM06
  (253, 25300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Grovyle - Hidden Power - TM10
  (253, 25300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Grovyle - Sunny Day - TM11
  (253, 25300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Grovyle - Protect - TM17
  (253, 25300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Grovyle - Safeguard - TM20
  (253, 25300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 20),
  -- Grovyle - Frustration - TM21
  (253, 25300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Grovyle - Solar Beam - TM22
  (253, 25300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 22),
  -- Grovyle - Return - TM27
  (253, 25300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Grovyle - Dig - TM28
  (253, 25300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 24),
  -- Grovyle - Brick Break - TM31
  (253, 25300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 25),
  -- Grovyle - Double Team - TM32
  (253, 25300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Grovyle - Rock Tomb - TM39
  (253, 25300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 27),
  -- Grovyle - Aerial Ace - TM40
  (253, 25300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Grovyle - Facade - TM42
  (253, 25300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Grovyle - Rest - TM44
  (253, 25300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Grovyle - Attract - TM45
  (253, 25300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Grovyle - Low Sweep - TM47
  (253, 25300, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 32),
  -- Grovyle - Round - TM48
  (253, 25300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Grovyle - Energy Ball - TM53
  (253, 25300, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 34),
  -- Grovyle - False Swipe - TM54
  (253, 25300, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 35),
  -- Grovyle - Fling - TM56
  (253, 25300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 36),
  -- Grovyle - Acrobatics - TM62
  (253, 25300, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 37),
  -- Grovyle - Flash - TM70
  (253, 25300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 38),
  -- Grovyle - Swords Dance - TM75
  (253, 25300, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 39),
  -- Grovyle - Rock Slide - TM80
  (253, 25300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 40),
  -- Grovyle - X-Scissor - TM81
  (253, 25300, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 41),
  -- Grovyle - Grass Knot - TM86
  (253, 25300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 42),
  -- Grovyle - Swagger - TM87
  (253, 25300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Grovyle - Sleep Talk - TM88
  (253, 25300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Grovyle - Substitute - TM90
  (253, 25300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Grovyle - Rock Smash - TM94
  (253, 25300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 46),
  -- Grovyle - Nature Power - TM96
  (253, 25300, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 47),
  -- Grovyle - Power-Up Punch - TM98
  (253, 25300, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 48),
  -- Grovyle - Confide - TM100
  (253, 25300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 49),
  -- Grovyle - Cut - HM01
  (253, 25300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 50),
  -- Grovyle - Strength - HM04
  (253, 25300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 51),
  -- Grovyle - Grass Pledge - Tutor
  (253, 25300, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 52),
  -- Sceptile - Pound - Level 1
  (254, 25400, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sceptile - Leer - Level 1
  (254, 25400, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sceptile - Absorb - Level 1
  (254, 25400, 71, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sceptile - Quick Attack - Level 1
  (254, 25400, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sceptile - Night Slash - Level 1
  (254, 25400, 400, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sceptile - Leaf Storm - Level 1
  (254, 25400, 437, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sceptile - Absorb - Level 6
  (254, 25400, 71, 13, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Sceptile - Quick Attack - Level 11
  (254, 25400, 98, 13, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Sceptile - X-Scissor - Level 16
  (254, 25400, 404, 13, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Sceptile - Pursuit - Level 17
  (254, 25400, 228, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Sceptile - Screech - Level 23
  (254, 25400, 103, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Sceptile - Leaf Blade - Level 29
  (254, 25400, 348, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Sceptile - Agility - Level 35
  (254, 25400, 97, 13, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Sceptile - Slam - Level 43
  (254, 25400, 21, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Sceptile - Detect - Level 51
  (254, 25400, 197, 13, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Sceptile - False Swipe - Level 59
  (254, 25400, 206, 13, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Sceptile - Leaf Storm - Level 67
  (254, 25400, 437, 13, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Sceptile - Hone Claws - TM01
  (254, 25400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 18),
  -- Sceptile - Dragon Claw - TM02
  (254, 25400, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 19),
  -- Sceptile - Roar - TM05
  (254, 25400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 20),
  -- Sceptile - Toxic - TM06
  (254, 25400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Sceptile - Hidden Power - TM10
  (254, 25400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Sceptile - Sunny Day - TM11
  (254, 25400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Sceptile - Hyper Beam - TM15
  (254, 25400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Sceptile - Protect - TM17
  (254, 25400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Sceptile - Safeguard - TM20
  (254, 25400, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 26),
  -- Sceptile - Frustration - TM21
  (254, 25400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Sceptile - Solar Beam - TM22
  (254, 25400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 28),
  -- Sceptile - Earthquake - TM26
  (254, 25400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Sceptile - Return - TM27
  (254, 25400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Sceptile - Dig - TM28
  (254, 25400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Sceptile - Brick Break - TM31
  (254, 25400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Sceptile - Double Team - TM32
  (254, 25400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Sceptile - Rock Tomb - TM39
  (254, 25400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Sceptile - Aerial Ace - TM40
  (254, 25400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 35),
  -- Sceptile - Facade - TM42
  (254, 25400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Sceptile - Rest - TM44
  (254, 25400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Sceptile - Attract - TM45
  (254, 25400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Sceptile - Low Sweep - TM47
  (254, 25400, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 39),
  -- Sceptile - Round - TM48
  (254, 25400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Sceptile - Focus Blast - TM52
  (254, 25400, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 41),
  -- Sceptile - Energy Ball - TM53
  (254, 25400, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 42),
  -- Sceptile - False Swipe - TM54
  (254, 25400, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 43),
  -- Sceptile - Fling - TM56
  (254, 25400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 44),
  -- Sceptile - Acrobatics - TM62
  (254, 25400, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 45),
  -- Sceptile - Giga Impact - TM68
  (254, 25400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Sceptile - Flash - TM70
  (254, 25400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 47),
  -- Sceptile - Swords Dance - TM75
  (254, 25400, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 48),
  -- Sceptile - Bulldoze - TM78
  (254, 25400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 49),
  -- Sceptile - Rock Slide - TM80
  (254, 25400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 50),
  -- Sceptile - X-Scissor - TM81
  (254, 25400, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 51),
  -- Sceptile - Grass Knot - TM86
  (254, 25400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 52),
  -- Sceptile - Swagger - TM87
  (254, 25400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 53),
  -- Sceptile - Sleep Talk - TM88
  (254, 25400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 54),
  -- Sceptile - Substitute - TM90
  (254, 25400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 55),
  -- Sceptile - Rock Smash - TM94
  (254, 25400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 56),
  -- Sceptile - Nature Power - TM96
  (254, 25400, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 57),
  -- Sceptile - Power-Up Punch - TM98
  (254, 25400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 58),
  -- Sceptile - Confide - TM100
  (254, 25400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 59),
  -- Sceptile - Cut - HM01
  (254, 25400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 60),
  -- Sceptile - Strength - HM04
  (254, 25400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 61),
  -- Sceptile - Frenzy Plant - Tutor
  (254, 25400, 338, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 62),
  -- Sceptile - Grass Pledge - Tutor
  (254, 25400, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 63),
  -- Torchic - Scratch - Level 1
  (255, 25500, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torchic - Growl - Level 1
  (255, 25500, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torchic - Focus Energy - Level 7
  (255, 25500, 116, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Torchic - Ember - Level 10
  (255, 25500, 52, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Torchic - Peck - Level 16
  (255, 25500, 64, 13, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Torchic - Sand Attack - Level 19
  (255, 25500, 28, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Torchic - Fire Spin - Level 25
  (255, 25500, 83, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Torchic - Quick Attack - Level 28
  (255, 25500, 98, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Torchic - Slash - Level 34
  (255, 25500, 163, 13, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Torchic - Mirror Move - Level 37
  (255, 25500, 119, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Torchic - Flamethrower - Level 43
  (255, 25500, 53, 13, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Torchic - Hone Claws - TM01
  (255, 25500, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 12),
  -- Torchic - Toxic - TM06
  (255, 25500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Torchic - Hidden Power - TM10
  (255, 25500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Torchic - Sunny Day - TM11
  (255, 25500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 15),
  -- Torchic - Protect - TM17
  (255, 25500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Torchic - Frustration - TM21
  (255, 25500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 17),
  -- Torchic - Return - TM27
  (255, 25500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 18),
  -- Torchic - Dig - TM28
  (255, 25500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 19),
  -- Torchic - Double Team - TM32
  (255, 25500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 20),
  -- Torchic - Flamethrower - TM35
  (255, 25500, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 21),
  -- Torchic - Fire Blast - TM38
  (255, 25500, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 22),
  -- Torchic - Rock Tomb - TM39
  (255, 25500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 23),
  -- Torchic - Aerial Ace - TM40
  (255, 25500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 24),
  -- Torchic - Facade - TM42
  (255, 25500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Torchic - Flame Charge - TM43
  (255, 25500, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 26),
  -- Torchic - Rest - TM44
  (255, 25500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Torchic - Attract - TM45
  (255, 25500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Torchic - Round - TM48
  (255, 25500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Torchic - Echoed Voice - TM49
  (255, 25500, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 30),
  -- Torchic - Overheat - TM50
  (255, 25500, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 31),
  -- Torchic - Incinerate - TM59
  (255, 25500, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 32),
  -- Torchic - Will-O-Wisp - TM61
  (255, 25500, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 33),
  -- Torchic - Shadow Claw - TM65
  (255, 25500, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 34),
  -- Torchic - Swords Dance - TM75
  (255, 25500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 35),
  -- Torchic - Rock Slide - TM80
  (255, 25500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 36),
  -- Torchic - Swagger - TM87
  (255, 25500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 37),
  -- Torchic - Sleep Talk - TM88
  (255, 25500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 38),
  -- Torchic - Substitute - TM90
  (255, 25500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Torchic - Rock Smash - TM94
  (255, 25500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 40),
  -- Torchic - Confide - TM100
  (255, 25500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 41),
  -- Torchic - Cut - HM01
  (255, 25500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 42),
  -- Torchic - Strength - HM04
  (255, 25500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 43),
  -- Torchic - Low Kick - Egg
  (255, 25500, 67, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Torchic - Counter - Egg
  (255, 25500, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Torchic - Agility - Egg
  (255, 25500, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Torchic - Curse - Egg
  (255, 25500, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Torchic - Reversal - Egg
  (255, 25500, 179, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Torchic - Endure - Egg
  (255, 25500, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Torchic - Baton Pass - Egg
  (255, 25500, 226, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Torchic - Smelling Salts - Egg
  (255, 25500, 265, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Torchic - Feather Dance - Egg
  (255, 25500, 297, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Torchic - Crush Claw - Egg
  (255, 25500, 306, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Torchic - Feint - Egg
  (255, 25500, 364, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Torchic - Last Resort - Egg
  (255, 25500, 387, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Torchic - Night Slash - Egg
  (255, 25500, 400, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Torchic - Flame Burst - Egg
  (255, 25500, 481, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Torchic - Fire Pledge - Tutor
  (255, 25500, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 58),
  -- Combusken - Scratch - Level 1
  (256, 25600, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combusken - Growl - Level 1
  (256, 25600, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combusken - Ember - Level 1
  (256, 25600, 52, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Combusken - Focus Energy - Level 1
  (256, 25600, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Combusken - Focus Energy - Level 7
  (256, 25600, 116, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Combusken - Ember - Level 13
  (256, 25600, 52, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Combusken - Double Kick - Level 16
  (256, 25600, 24, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Combusken - Peck - Level 17
  (256, 25600, 64, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Combusken - Sand Attack - Level 21
  (256, 25600, 28, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Combusken - Bulk Up - Level 28
  (256, 25600, 339, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Combusken - Quick Attack - Level 32
  (256, 25600, 98, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Combusken - Slash - Level 39
  (256, 25600, 163, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Combusken - Mirror Move - Level 43
  (256, 25600, 119, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Combusken - Sky Uppercut - Level 50
  (256, 25600, 327, 13, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Combusken - Flare Blitz - Level 54
  (256, 25600, 394, 13, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Combusken - Hone Claws - TM01
  (256, 25600, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Combusken - Toxic - TM06
  (256, 25600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Combusken - Bulk Up - TM08
  (256, 25600, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 18),
  -- Combusken - Hidden Power - TM10
  (256, 25600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Combusken - Sunny Day - TM11
  (256, 25600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Combusken - Protect - TM17
  (256, 25600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Combusken - Frustration - TM21
  (256, 25600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Combusken - Return - TM27
  (256, 25600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Combusken - Dig - TM28
  (256, 25600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 24),
  -- Combusken - Brick Break - TM31
  (256, 25600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 25),
  -- Combusken - Double Team - TM32
  (256, 25600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Combusken - Flamethrower - TM35
  (256, 25600, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 27),
  -- Combusken - Fire Blast - TM38
  (256, 25600, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 28),
  -- Combusken - Rock Tomb - TM39
  (256, 25600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 29),
  -- Combusken - Aerial Ace - TM40
  (256, 25600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 30),
  -- Combusken - Facade - TM42
  (256, 25600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Combusken - Flame Charge - TM43
  (256, 25600, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 32),
  -- Combusken - Rest - TM44
  (256, 25600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Combusken - Attract - TM45
  (256, 25600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Combusken - Low Sweep - TM47
  (256, 25600, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 35),
  -- Combusken - Round - TM48
  (256, 25600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Combusken - Echoed Voice - TM49
  (256, 25600, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 37),
  -- Combusken - Overheat - TM50
  (256, 25600, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 38),
  -- Combusken - Focus Blast - TM52
  (256, 25600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 39),
  -- Combusken - Fling - TM56
  (256, 25600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Combusken - Incinerate - TM59
  (256, 25600, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 41),
  -- Combusken - Will-O-Wisp - TM61
  (256, 25600, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 42),
  -- Combusken - Shadow Claw - TM65
  (256, 25600, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 43),
  -- Combusken - Swords Dance - TM75
  (256, 25600, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 44),
  -- Combusken - Rock Slide - TM80
  (256, 25600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Combusken - Poison Jab - TM84
  (256, 25600, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 46),
  -- Combusken - Swagger - TM87
  (256, 25600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Combusken - Sleep Talk - TM88
  (256, 25600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Combusken - Substitute - TM90
  (256, 25600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Combusken - Rock Smash - TM94
  (256, 25600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Combusken - Power-Up Punch - TM98
  (256, 25600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 51),
  -- Combusken - Confide - TM100
  (256, 25600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Combusken - Cut - HM01
  (256, 25600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 53),
  -- Combusken - Strength - HM04
  (256, 25600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Combusken - Fire Pledge - Tutor
  (256, 25600, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 55),
  -- Blaziken - Fire Punch - Level 1
  (257, 25700, 7, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blaziken - Scratch - Level 1
  (257, 25700, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blaziken - Growl - Level 1
  (257, 25700, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blaziken - Ember - Level 1
  (257, 25700, 52, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blaziken - Focus Energy - Level 1
  (257, 25700, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blaziken - High Jump Kick - Level 1
  (257, 25700, 136, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Blaziken - Flare Blitz - Level 1
  (257, 25700, 394, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Blaziken - Focus Energy - Level 7
  (257, 25700, 116, 13, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Blaziken - Ember - Level 13
  (257, 25700, 52, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Blaziken - Double Kick - Level 16
  (257, 25700, 24, 13, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Blaziken - Peck - Level 17
  (257, 25700, 64, 13, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Blaziken - Sand Attack - Level 21
  (257, 25700, 28, 13, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Blaziken - Bulk Up - Level 28
  (257, 25700, 339, 13, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Blaziken - Quick Attack - Level 32
  (257, 25700, 98, 13, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Blaziken - Blaze Kick - Level 36
  (257, 25700, 299, 13, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Blaziken - Slash - Level 42
  (257, 25700, 163, 13, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Blaziken - Brave Bird - Level 49
  (257, 25700, 413, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Blaziken - Sky Uppercut - Level 59
  (257, 25700, 327, 13, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Blaziken - Flare Blitz - Level 66
  (257, 25700, 394, 13, NULL, 1, 66, NULL, NULL, NULL, 19),
  -- Blaziken - Hone Claws - TM01
  (257, 25700, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 20),
  -- Blaziken - Roar - TM05
  (257, 25700, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Blaziken - Toxic - TM06
  (257, 25700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Blaziken - Bulk Up - TM08
  (257, 25700, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 23),
  -- Blaziken - Hidden Power - TM10
  (257, 25700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Blaziken - Sunny Day - TM11
  (257, 25700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Blaziken - Hyper Beam - TM15
  (257, 25700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Blaziken - Protect - TM17
  (257, 25700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Blaziken - Frustration - TM21
  (257, 25700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Blaziken - Solar Beam - TM22
  (257, 25700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 29),
  -- Blaziken - Earthquake - TM26
  (257, 25700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Blaziken - Return - TM27
  (257, 25700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Blaziken - Dig - TM28
  (257, 25700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 32),
  -- Blaziken - Brick Break - TM31
  (257, 25700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Blaziken - Double Team - TM32
  (257, 25700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Blaziken - Flamethrower - TM35
  (257, 25700, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 35),
  -- Blaziken - Fire Blast - TM38
  (257, 25700, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 36),
  -- Blaziken - Rock Tomb - TM39
  (257, 25700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Blaziken - Aerial Ace - TM40
  (257, 25700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Blaziken - Facade - TM42
  (257, 25700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Blaziken - Flame Charge - TM43
  (257, 25700, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 40),
  -- Blaziken - Rest - TM44
  (257, 25700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 41),
  -- Blaziken - Attract - TM45
  (257, 25700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 42),
  -- Blaziken - Low Sweep - TM47
  (257, 25700, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 43),
  -- Blaziken - Round - TM48
  (257, 25700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 44),
  -- Blaziken - Echoed Voice - TM49
  (257, 25700, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 45),
  -- Blaziken - Overheat - TM50
  (257, 25700, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 46),
  -- Blaziken - Focus Blast - TM52
  (257, 25700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 47),
  -- Blaziken - Fling - TM56
  (257, 25700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 48),
  -- Blaziken - Incinerate - TM59
  (257, 25700, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 49),
  -- Blaziken - Will-O-Wisp - TM61
  (257, 25700, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 50),
  -- Blaziken - Acrobatics - TM62
  (257, 25700, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 51),
  -- Blaziken - Shadow Claw - TM65
  (257, 25700, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 52),
  -- Blaziken - Giga Impact - TM68
  (257, 25700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 53),
  -- Blaziken - Stone Edge - TM71
  (257, 25700, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 54),
  -- Blaziken - Swords Dance - TM75
  (257, 25700, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 55),
  -- Blaziken - Bulldoze - TM78
  (257, 25700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 56),
  -- Blaziken - Rock Slide - TM80
  (257, 25700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 57),
  -- Blaziken - Poison Jab - TM84
  (257, 25700, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 58),
  -- Blaziken - Swagger - TM87
  (257, 25700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 59),
  -- Blaziken - Sleep Talk - TM88
  (257, 25700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 60),
  -- Blaziken - Substitute - TM90
  (257, 25700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 61),
  -- Blaziken - Rock Smash - TM94
  (257, 25700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 62),
  -- Blaziken - Power-Up Punch - TM98
  (257, 25700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 63),
  -- Blaziken - Confide - TM100
  (257, 25700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 64),
  -- Blaziken - Cut - HM01
  (257, 25700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 65),
  -- Blaziken - Strength - HM04
  (257, 25700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 66),
  -- Blaziken - Blast Burn - Tutor
  (257, 25700, 307, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 67),
  -- Blaziken - Fire Pledge - Tutor
  (257, 25700, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 68),
  -- Mudkip - Tackle - Level 1
  (258, 25800, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudkip - Growl - Level 1
  (258, 25800, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudkip - Mud-Slap - Level 6
  (258, 25800, 189, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Mudkip - Water Gun - Level 10
  (258, 25800, 55, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mudkip - Bide - Level 15
  (258, 25800, 117, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mudkip - Foresight - Level 19
  (258, 25800, 193, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Mudkip - Mud Sport - Level 24
  (258, 25800, 300, 13, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Mudkip - Take Down - Level 28
  (258, 25800, 36, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Mudkip - Whirlpool - Level 33
  (258, 25800, 250, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Mudkip - Protect - Level 37
  (258, 25800, 182, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Mudkip - Hydro Pump - Level 42
  (258, 25800, 56, 13, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Mudkip - Endeavor - Level 46
  (258, 25800, 283, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Mudkip - Toxic - TM06
  (258, 25800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Mudkip - Hail - TM07
  (258, 25800, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 14),
  -- Mudkip - Hidden Power - TM10
  (258, 25800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Mudkip - Ice Beam - TM13
  (258, 25800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 16),
  -- Mudkip - Blizzard - TM14
  (258, 25800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 17),
  -- Mudkip - Protect - TM17
  (258, 25800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Mudkip - Rain Dance - TM18
  (258, 25800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Mudkip - Frustration - TM21
  (258, 25800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Mudkip - Return - TM27
  (258, 25800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Mudkip - Dig - TM28
  (258, 25800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 22),
  -- Mudkip - Double Team - TM32
  (258, 25800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Mudkip - Sludge Wave - TM34
  (258, 25800, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 24),
  -- Mudkip - Rock Tomb - TM39
  (258, 25800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 25),
  -- Mudkip - Facade - TM42
  (258, 25800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Mudkip - Rest - TM44
  (258, 25800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Mudkip - Attract - TM45
  (258, 25800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Mudkip - Round - TM48
  (258, 25800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Mudkip - Echoed Voice - TM49
  (258, 25800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 30),
  -- Mudkip - Scald - TM55
  (258, 25800, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 31),
  -- Mudkip - Rock Slide - TM80
  (258, 25800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 32),
  -- Mudkip - Swagger - TM87
  (258, 25800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 33),
  -- Mudkip - Sleep Talk - TM88
  (258, 25800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 34),
  -- Mudkip - Substitute - TM90
  (258, 25800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 35),
  -- Mudkip - Rock Smash - TM94
  (258, 25800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 36),
  -- Mudkip - Confide - TM100
  (258, 25800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 37),
  -- Mudkip - Surf - HM03
  (258, 25800, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 38),
  -- Mudkip - Strength - HM04
  (258, 25800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 39),
  -- Mudkip - Waterfall - HM05
  (258, 25800, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 40),
  -- Mudkip - Stomp - Egg
  (258, 25800, 23, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mudkip - Double-Edge - Egg
  (258, 25800, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mudkip - Bite - Egg
  (258, 25800, 44, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mudkip - Counter - Egg
  (258, 25800, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mudkip - Barrier - Egg
  (258, 25800, 112, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mudkip - Sludge - Egg
  (258, 25800, 124, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mudkip - Curse - Egg
  (258, 25800, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mudkip - Mirror Coat - Egg
  (258, 25800, 243, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mudkip - Ancient Power - Egg
  (258, 25800, 246, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mudkip - Whirlpool - Egg
  (258, 25800, 250, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mudkip - Uproar - Egg
  (258, 25800, 253, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mudkip - Yawn - Egg
  (258, 25800, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mudkip - Refresh - Egg
  (258, 25800, 287, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mudkip - Ice Ball - Egg
  (258, 25800, 301, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mudkip - Avalanche - Egg
  (258, 25800, 419, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mudkip - Mud Bomb - Egg
  (258, 25800, 426, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mudkip - Wide Guard - Egg
  (258, 25800, 469, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mudkip - Water Pledge - Tutor
  (258, 25800, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 58),
  -- Marshtomp - Tackle - Level 1
  (259, 25900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marshtomp - Growl - Level 1
  (259, 25900, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marshtomp - Water Gun - Level 1
  (259, 25900, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marshtomp - Mud-Slap - Level 1
  (259, 25900, 189, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marshtomp - Mud-Slap - Level 6
  (259, 25900, 189, 13, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Marshtomp - Water Gun - Level 10
  (259, 25900, 55, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Marshtomp - Bide - Level 15
  (259, 25900, 117, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Marshtomp - Mud Shot - Level 16
  (259, 25900, 341, 13, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Marshtomp - Foresight - Level 20
  (259, 25900, 193, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Marshtomp - Mud Bomb - Level 25
  (259, 25900, 426, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Marshtomp - Take Down - Level 31
  (259, 25900, 36, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Marshtomp - Muddy Water - Level 37
  (259, 25900, 330, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Marshtomp - Protect - Level 42
  (259, 25900, 182, 13, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Marshtomp - Earthquake - Level 46
  (259, 25900, 89, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Marshtomp - Endeavor - Level 53
  (259, 25900, 283, 13, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Marshtomp - Toxic - TM06
  (259, 25900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Marshtomp - Hail - TM07
  (259, 25900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 17),
  -- Marshtomp - Hidden Power - TM10
  (259, 25900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Marshtomp - Ice Beam - TM13
  (259, 25900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 19),
  -- Marshtomp - Blizzard - TM14
  (259, 25900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 20),
  -- Marshtomp - Protect - TM17
  (259, 25900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Marshtomp - Rain Dance - TM18
  (259, 25900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Marshtomp - Frustration - TM21
  (259, 25900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Marshtomp - Earthquake - TM26
  (259, 25900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 24),
  -- Marshtomp - Return - TM27
  (259, 25900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Marshtomp - Dig - TM28
  (259, 25900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Marshtomp - Brick Break - TM31
  (259, 25900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 27),
  -- Marshtomp - Double Team - TM32
  (259, 25900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Marshtomp - Sludge Wave - TM34
  (259, 25900, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 29),
  -- Marshtomp - Rock Tomb - TM39
  (259, 25900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Marshtomp - Facade - TM42
  (259, 25900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Marshtomp - Rest - TM44
  (259, 25900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Marshtomp - Attract - TM45
  (259, 25900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Marshtomp - Round - TM48
  (259, 25900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Marshtomp - Echoed Voice - TM49
  (259, 25900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 35),
  -- Marshtomp - Scald - TM55
  (259, 25900, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 36),
  -- Marshtomp - Fling - TM56
  (259, 25900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 37),
  -- Marshtomp - Bulldoze - TM78
  (259, 25900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 38),
  -- Marshtomp - Rock Slide - TM80
  (259, 25900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 39),
  -- Marshtomp - Swagger - TM87
  (259, 25900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Marshtomp - Sleep Talk - TM88
  (259, 25900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Marshtomp - Substitute - TM90
  (259, 25900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Marshtomp - Rock Smash - TM94
  (259, 25900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Marshtomp - Power-Up Punch - TM98
  (259, 25900, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 44),
  -- Marshtomp - Confide - TM100
  (259, 25900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Marshtomp - Surf - HM03
  (259, 25900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 46),
  -- Marshtomp - Strength - HM04
  (259, 25900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 47),
  -- Marshtomp - Waterfall - HM05
  (259, 25900, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 48),
  -- Marshtomp - Water Pledge - Tutor
  (259, 25900, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 49),
  -- Swampert - Tackle - Level 1
  (260, 26000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swampert - Growl - Level 1
  (260, 26000, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swampert - Water Gun - Level 1
  (260, 26000, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swampert - Mud-Slap - Level 1
  (260, 26000, 189, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swampert - Hammer Arm - Level 1
  (260, 26000, 359, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swampert - Mud-Slap - Level 6
  (260, 26000, 189, 13, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Swampert - Water Gun - Level 10
  (260, 26000, 55, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Swampert - Bide - Level 15
  (260, 26000, 117, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Swampert - Mud Shot - Level 16
  (260, 26000, 341, 13, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Swampert - Foresight - Level 20
  (260, 26000, 193, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Swampert - Mud Bomb - Level 25
  (260, 26000, 426, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Swampert - Take Down - Level 31
  (260, 26000, 36, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Swampert - Muddy Water - Level 39
  (260, 26000, 330, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Swampert - Protect - Level 46
  (260, 26000, 182, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Swampert - Earthquake - Level 52
  (260, 26000, 89, 13, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Swampert - Endeavor - Level 61
  (260, 26000, 283, 13, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Swampert - Hammer Arm - Level 69
  (260, 26000, 359, 13, NULL, 1, 69, NULL, NULL, NULL, 17),
  -- Swampert - Roar - TM05
  (260, 26000, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 18),
  -- Swampert - Toxic - TM06
  (260, 26000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Swampert - Hail - TM07
  (260, 26000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 20),
  -- Swampert - Hidden Power - TM10
  (260, 26000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Swampert - Ice Beam - TM13
  (260, 26000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 22),
  -- Swampert - Blizzard - TM14
  (260, 26000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 23),
  -- Swampert - Hyper Beam - TM15
  (260, 26000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Swampert - Protect - TM17
  (260, 26000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Swampert - Rain Dance - TM18
  (260, 26000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Swampert - Frustration - TM21
  (260, 26000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Swampert - Earthquake - TM26
  (260, 26000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Swampert - Return - TM27
  (260, 26000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Swampert - Dig - TM28
  (260, 26000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 30),
  -- Swampert - Brick Break - TM31
  (260, 26000, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 31),
  -- Swampert - Double Team - TM32
  (260, 26000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Swampert - Sludge Wave - TM34
  (260, 26000, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 33),
  -- Swampert - Rock Tomb - TM39
  (260, 26000, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Swampert - Facade - TM42
  (260, 26000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Swampert - Rest - TM44
  (260, 26000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Swampert - Attract - TM45
  (260, 26000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Swampert - Round - TM48
  (260, 26000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Swampert - Echoed Voice - TM49
  (260, 26000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 39),
  -- Swampert - Focus Blast - TM52
  (260, 26000, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 40),
  -- Swampert - Scald - TM55
  (260, 26000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 41),
  -- Swampert - Fling - TM56
  (260, 26000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Swampert - Giga Impact - TM68
  (260, 26000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Swampert - Stone Edge - TM71
  (260, 26000, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 44),
  -- Swampert - Bulldoze - TM78
  (260, 26000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 45),
  -- Swampert - Rock Slide - TM80
  (260, 26000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Swampert - Swagger - TM87
  (260, 26000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Swampert - Sleep Talk - TM88
  (260, 26000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Swampert - Substitute - TM90
  (260, 26000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Swampert - Rock Smash - TM94
  (260, 26000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Swampert - Power-Up Punch - TM98
  (260, 26000, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 51),
  -- Swampert - Confide - TM100
  (260, 26000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Swampert - Surf - HM03
  (260, 26000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 53),
  -- Swampert - Strength - HM04
  (260, 26000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Swampert - Waterfall - HM05
  (260, 26000, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 55),
  -- Swampert - Hydro Cannon - Tutor
  (260, 26000, 308, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 56),
  -- Swampert - Water Pledge - Tutor
  (260, 26000, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 57),
  -- Poochyena - Tackle - Level 1
  (261, 26100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poochyena - Howl - Level 5
  (261, 26100, 336, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Poochyena - Sand Attack - Level 9
  (261, 26100, 28, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Poochyena - Bite - Level 13
  (261, 26100, 44, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Poochyena - Odor Sleuth - Level 17
  (261, 26100, 316, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Poochyena - Roar - Level 21
  (261, 26100, 46, 13, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Poochyena - Swagger - Level 25
  (261, 26100, 207, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Poochyena - Assurance - Level 29
  (261, 26100, 372, 13, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Poochyena - Scary Face - Level 33
  (261, 26100, 184, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Poochyena - Taunt - Level 37
  (261, 26100, 269, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Poochyena - Embargo - Level 41
  (261, 26100, 373, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Poochyena - Take Down - Level 45
  (261, 26100, 36, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Poochyena - Sucker Punch - Level 49
  (261, 26100, 389, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Poochyena - Crunch - Level 53
  (261, 26100, 242, 13, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Poochyena - Roar - TM05
  (261, 26100, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 15),
  -- Poochyena - Toxic - TM06
  (261, 26100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Poochyena - Hidden Power - TM10
  (261, 26100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Poochyena - Sunny Day - TM11
  (261, 26100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Poochyena - Taunt - TM12
  (261, 26100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 19),
  -- Poochyena - Protect - TM17
  (261, 26100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Poochyena - Rain Dance - TM18
  (261, 26100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Poochyena - Frustration - TM21
  (261, 26100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Poochyena - Return - TM27
  (261, 26100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Poochyena - Dig - TM28
  (261, 26100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 24),
  -- Poochyena - Shadow Ball - TM30
  (261, 26100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Poochyena - Double Team - TM32
  (261, 26100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Poochyena - Torment - TM41
  (261, 26100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 27),
  -- Poochyena - Facade - TM42
  (261, 26100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Poochyena - Rest - TM44
  (261, 26100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Poochyena - Attract - TM45
  (261, 26100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Poochyena - Thief - TM46
  (261, 26100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 31),
  -- Poochyena - Round - TM48
  (261, 26100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Poochyena - Incinerate - TM59
  (261, 26100, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 33),
  -- Poochyena - Embargo - TM63
  (261, 26100, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 34),
  -- Poochyena - Payback - TM66
  (261, 26100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 35),
  -- Poochyena - Retaliate - TM67
  (261, 26100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 36),
  -- Poochyena - Swagger - TM87
  (261, 26100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 37),
  -- Poochyena - Sleep Talk - TM88
  (261, 26100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 38),
  -- Poochyena - Substitute - TM90
  (261, 26100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Poochyena - Rock Smash - TM94
  (261, 26100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 40),
  -- Poochyena - Snarl - TM95
  (261, 26100, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 41),
  -- Poochyena - Dark Pulse - TM97
  (261, 26100, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 42),
  -- Poochyena - Confide - TM100
  (261, 26100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Poochyena - Leer - Egg
  (261, 26100, 43, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Poochyena - Sleep Talk - Egg
  (261, 26100, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poochyena - Yawn - Egg
  (261, 26100, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poochyena - Snatch - Egg
  (261, 26100, 289, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poochyena - Poison Fang - Egg
  (261, 26100, 305, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Poochyena - Astonish - Egg
  (261, 26100, 310, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Poochyena - Covet - Egg
  (261, 26100, 343, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Poochyena - Me First - Egg
  (261, 26100, 382, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Poochyena - Sucker Punch - Egg
  (261, 26100, 389, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Poochyena - Thunder Fang - Egg
  (261, 26100, 422, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Poochyena - Ice Fang - Egg
  (261, 26100, 423, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Poochyena - Fire Fang - Egg
  (261, 26100, 424, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Poochyena - Play Rough - Egg
  (261, 26100, 583, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mightyena - Sand Attack - Level 1
  (262, 26200, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mightyena - Tackle - Level 1
  (262, 26200, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mightyena - Bite - Level 1
  (262, 26200, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mightyena - Crunch - Level 1
  (262, 26200, 242, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mightyena - Howl - Level 1
  (262, 26200, 336, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mightyena - Howl - Level 5
  (262, 26200, 336, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Mightyena - Sand Attack - Level 9
  (262, 26200, 28, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Mightyena - Bite - Level 13
  (262, 26200, 44, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Mightyena - Odor Sleuth - Level 17
  (262, 26200, 316, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Mightyena - Roar - Level 22
  (262, 26200, 46, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Mightyena - Swagger - Level 27
  (262, 26200, 207, 13, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Mightyena - Assurance - Level 32
  (262, 26200, 372, 13, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Mightyena - Scary Face - Level 37
  (262, 26200, 184, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Mightyena - Taunt - Level 42
  (262, 26200, 269, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Mightyena - Embargo - Level 47
  (262, 26200, 373, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Mightyena - Take Down - Level 52
  (262, 26200, 36, 13, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Mightyena - Thief - Level 57
  (262, 26200, 168, 13, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Mightyena - Sucker Punch - Level 62
  (262, 26200, 389, 13, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Mightyena - Crunch - Level 65
  (262, 26200, 242, 13, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Mightyena - Roar - TM05
  (262, 26200, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 20),
  -- Mightyena - Toxic - TM06
  (262, 26200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Mightyena - Hidden Power - TM10
  (262, 26200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Mightyena - Sunny Day - TM11
  (262, 26200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Mightyena - Taunt - TM12
  (262, 26200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Mightyena - Hyper Beam - TM15
  (262, 26200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Mightyena - Protect - TM17
  (262, 26200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Mightyena - Rain Dance - TM18
  (262, 26200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Mightyena - Frustration - TM21
  (262, 26200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Mightyena - Return - TM27
  (262, 26200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Mightyena - Dig - TM28
  (262, 26200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 30),
  -- Mightyena - Shadow Ball - TM30
  (262, 26200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Mightyena - Double Team - TM32
  (262, 26200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Mightyena - Torment - TM41
  (262, 26200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 33),
  -- Mightyena - Facade - TM42
  (262, 26200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Mightyena - Rest - TM44
  (262, 26200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Mightyena - Attract - TM45
  (262, 26200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Mightyena - Thief - TM46
  (262, 26200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 37),
  -- Mightyena - Round - TM48
  (262, 26200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Mightyena - Incinerate - TM59
  (262, 26200, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 39),
  -- Mightyena - Embargo - TM63
  (262, 26200, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 40),
  -- Mightyena - Payback - TM66
  (262, 26200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 41),
  -- Mightyena - Retaliate - TM67
  (262, 26200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 42),
  -- Mightyena - Giga Impact - TM68
  (262, 26200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Mightyena - Swagger - TM87
  (262, 26200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Mightyena - Sleep Talk - TM88
  (262, 26200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Mightyena - Substitute - TM90
  (262, 26200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Mightyena - Rock Smash - TM94
  (262, 26200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 47),
  -- Mightyena - Snarl - TM95
  (262, 26200, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 48),
  -- Mightyena - Dark Pulse - TM97
  (262, 26200, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 49),
  -- Mightyena - Confide - TM100
  (262, 26200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Mightyena - Strength - HM04
  (262, 26200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 51),
  -- Zigzagoon - Tackle - Level 1
  (263, 26300, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zigzagoon - Growl - Level 1
  (263, 26300, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zigzagoon - Tail Whip - Level 5
  (263, 26300, 39, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zigzagoon - Headbutt - Level 9
  (263, 26300, 29, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Zigzagoon - Baby-Doll Eyes - Level 11
  (263, 26300, 608, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Zigzagoon - Sand Attack - Level 13
  (263, 26300, 28, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Zigzagoon - Odor Sleuth - Level 17
  (263, 26300, 316, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Zigzagoon - Mud Sport - Level 21
  (263, 26300, 300, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Zigzagoon - Pin Missile - Level 25
  (263, 26300, 42, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Zigzagoon - Covet - Level 29
  (263, 26300, 343, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Zigzagoon - Bestow - Level 33
  (263, 26300, 516, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Zigzagoon - Flail - Level 37
  (263, 26300, 175, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Zigzagoon - Rest - Level 41
  (263, 26300, 156, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Zigzagoon - Belly Drum - Level 45
  (263, 26300, 187, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Zigzagoon - Fling - Level 49
  (263, 26300, 374, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Zigzagoon - Hone Claws - TM01
  (263, 26300, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Zigzagoon - Toxic - TM06
  (263, 26300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Zigzagoon - Hidden Power - TM10
  (263, 26300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Zigzagoon - Sunny Day - TM11
  (263, 26300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Zigzagoon - Ice Beam - TM13
  (263, 26300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 20),
  -- Zigzagoon - Blizzard - TM14
  (263, 26300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 21),
  -- Zigzagoon - Protect - TM17
  (263, 26300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Zigzagoon - Rain Dance - TM18
  (263, 26300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Zigzagoon - Frustration - TM21
  (263, 26300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Zigzagoon - Thunderbolt - TM24
  (263, 26300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 25),
  -- Zigzagoon - Thunder - TM25
  (263, 26300, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 26),
  -- Zigzagoon - Return - TM27
  (263, 26300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Zigzagoon - Dig - TM28
  (263, 26300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Zigzagoon - Shadow Ball - TM30
  (263, 26300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 29),
  -- Zigzagoon - Double Team - TM32
  (263, 26300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Zigzagoon - Facade - TM42
  (263, 26300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Zigzagoon - Rest - TM44
  (263, 26300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Zigzagoon - Attract - TM45
  (263, 26300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Zigzagoon - Thief - TM46
  (263, 26300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 34),
  -- Zigzagoon - Round - TM48
  (263, 26300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Zigzagoon - Echoed Voice - TM49
  (263, 26300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 36),
  -- Zigzagoon - Fling - TM56
  (263, 26300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 37),
  -- Zigzagoon - Charge Beam - TM57
  (263, 26300, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 38),
  -- Zigzagoon - Retaliate - TM67
  (263, 26300, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 39),
  -- Zigzagoon - Thunder Wave - TM73
  (263, 26300, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 40),
  -- Zigzagoon - Grass Knot - TM86
  (263, 26300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 41),
  -- Zigzagoon - Swagger - TM87
  (263, 26300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Zigzagoon - Sleep Talk - TM88
  (263, 26300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Zigzagoon - Substitute - TM90
  (263, 26300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Zigzagoon - Rock Smash - TM94
  (263, 26300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 45),
  -- Zigzagoon - Confide - TM100
  (263, 26300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Zigzagoon - Cut - HM01
  (263, 26300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 47),
  -- Zigzagoon - Surf - HM03
  (263, 26300, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 48),
  -- Zigzagoon - Mud-Slap - Egg
  (263, 26300, 189, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Zigzagoon - Charm - Egg
  (263, 26300, 204, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Zigzagoon - Sleep Talk - Egg
  (263, 26300, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Zigzagoon - Pursuit - Egg
  (263, 26300, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zigzagoon - Helping Hand - Egg
  (263, 26300, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zigzagoon - Trick - Egg
  (263, 26300, 271, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Zigzagoon - Tickle - Egg
  (263, 26300, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zigzagoon - Rock Climb - Egg
  (263, 26300, 431, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Zigzagoon - Simple Beam - Egg
  (263, 26300, 493, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Linoone - Headbutt - Level 1
  (264, 26400, 29, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Linoone - Tackle - Level 1
  (264, 26400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Linoone - Tail Whip - Level 1
  (264, 26400, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Linoone - Growl - Level 1
  (264, 26400, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Linoone - Switcheroo - Level 1
  (264, 26400, 415, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Linoone - Rototiller - Level 1
  (264, 26400, 563, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Linoone - Play Rough - Level 1
  (264, 26400, 583, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Linoone - Tail Whip - Level 5
  (264, 26400, 39, 13, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Linoone - Headbutt - Level 9
  (264, 26400, 29, 13, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Linoone - Sand Attack - Level 13
  (264, 26400, 28, 13, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Linoone - Odor Sleuth - Level 17
  (264, 26400, 316, 13, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Linoone - Mud Sport - Level 23
  (264, 26400, 300, 13, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Linoone - Fury Swipes - Level 29
  (264, 26400, 154, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Linoone - Covet - Level 35
  (264, 26400, 343, 13, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Linoone - Bestow - Level 41
  (264, 26400, 516, 13, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Linoone - Slash - Level 47
  (264, 26400, 163, 13, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Linoone - Rest - Level 53
  (264, 26400, 156, 13, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Linoone - Belly Drum - Level 59
  (264, 26400, 187, 13, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Linoone - Fling - Level 65
  (264, 26400, 374, 13, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Linoone - Hone Claws - TM01
  (264, 26400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 20),
  -- Linoone - Roar - TM05
  (264, 26400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Linoone - Toxic - TM06
  (264, 26400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Linoone - Hidden Power - TM10
  (264, 26400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Linoone - Sunny Day - TM11
  (264, 26400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Linoone - Ice Beam - TM13
  (264, 26400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 25),
  -- Linoone - Blizzard - TM14
  (264, 26400, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 26),
  -- Linoone - Hyper Beam - TM15
  (264, 26400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Linoone - Protect - TM17
  (264, 26400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Linoone - Rain Dance - TM18
  (264, 26400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Linoone - Frustration - TM21
  (264, 26400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 30),
  -- Linoone - Thunderbolt - TM24
  (264, 26400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 31),
  -- Linoone - Thunder - TM25
  (264, 26400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 32),
  -- Linoone - Return - TM27
  (264, 26400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Linoone - Dig - TM28
  (264, 26400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 34),
  -- Linoone - Shadow Ball - TM30
  (264, 26400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 35),
  -- Linoone - Double Team - TM32
  (264, 26400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 36),
  -- Linoone - Facade - TM42
  (264, 26400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Linoone - Rest - TM44
  (264, 26400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Linoone - Attract - TM45
  (264, 26400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Linoone - Thief - TM46
  (264, 26400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 40),
  -- Linoone - Round - TM48
  (264, 26400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Linoone - Echoed Voice - TM49
  (264, 26400, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 42),
  -- Linoone - Fling - TM56
  (264, 26400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 43),
  -- Linoone - Charge Beam - TM57
  (264, 26400, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 44),
  -- Linoone - Shadow Claw - TM65
  (264, 26400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 45),
  -- Linoone - Retaliate - TM67
  (264, 26400, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 46),
  -- Linoone - Giga Impact - TM68
  (264, 26400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 47),
  -- Linoone - Thunder Wave - TM73
  (264, 26400, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 48),
  -- Linoone - Grass Knot - TM86
  (264, 26400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 49),
  -- Linoone - Swagger - TM87
  (264, 26400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Linoone - Sleep Talk - TM88
  (264, 26400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Linoone - Substitute - TM90
  (264, 26400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Linoone - Rock Smash - TM94
  (264, 26400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 53),
  -- Linoone - Confide - TM100
  (264, 26400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Linoone - Cut - HM01
  (264, 26400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 55),
  -- Linoone - Surf - HM03
  (264, 26400, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 56),
  -- Linoone - Strength - HM04
  (264, 26400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 57),
  -- Wurmple - Tackle - Level 1
  (265, 26500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wurmple - String Shot - Level 1
  (265, 26500, 81, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wurmple - Poison Sting - Level 5
  (265, 26500, 40, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wurmple - Bug Bite - Level 15
  (265, 26500, 450, 13, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Silcoon - Harden - Level 1
  (266, 26600, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silcoon - Harden - Level 7
  (266, 26600, 106, 13, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Beautifly - Absorb - Level 1
  (267, 26700, 71, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beautifly - Absorb - Level 10
  (267, 26700, 71, 13, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Beautifly - Gust - Level 13
  (267, 26700, 16, 13, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Beautifly - Stun Spore - Level 17
  (267, 26700, 78, 13, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Beautifly - Morning Sun - Level 20
  (267, 26700, 234, 13, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Beautifly - Mega Drain - Level 24
  (267, 26700, 72, 13, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Beautifly - Whirlwind - Level 27
  (267, 26700, 18, 13, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Beautifly - Attract - Level 31
  (267, 26700, 213, 13, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Beautifly - Silver Wind - Level 34
  (267, 26700, 318, 13, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Beautifly - Giga Drain - Level 38
  (267, 26700, 202, 13, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Beautifly - Bug Buzz - Level 41
  (267, 26700, 405, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Beautifly - Quiver Dance - Level 45
  (267, 26700, 483, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Beautifly - Toxic - TM06
  (267, 26700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Beautifly - Venoshock - TM09
  (267, 26700, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 14),
  -- Beautifly - Hidden Power - TM10
  (267, 26700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Beautifly - Sunny Day - TM11
  (267, 26700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Beautifly - Hyper Beam - TM15
  (267, 26700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 17),
  -- Beautifly - Protect - TM17
  (267, 26700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Beautifly - Roost - TM19
  (267, 26700, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 19),
  -- Beautifly - Safeguard - TM20
  (267, 26700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 20),
  -- Beautifly - Frustration - TM21
  (267, 26700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Beautifly - Solar Beam - TM22
  (267, 26700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 22),
  -- Beautifly - Return - TM27
  (267, 26700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Beautifly - Psychic - TM29
  (267, 26700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 24),
  -- Beautifly - Shadow Ball - TM30
  (267, 26700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Beautifly - Double Team - TM32
  (267, 26700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Beautifly - Aerial Ace - TM40
  (267, 26700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 27),
  -- Beautifly - Facade - TM42
  (267, 26700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Beautifly - Rest - TM44
  (267, 26700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Beautifly - Attract - TM45
  (267, 26700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Beautifly - Thief - TM46
  (267, 26700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 31),
  -- Beautifly - Round - TM48
  (267, 26700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Beautifly - Energy Ball - TM53
  (267, 26700, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 33),
  -- Beautifly - Acrobatics - TM62
  (267, 26700, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 34),
  -- Beautifly - Giga Impact - TM68
  (267, 26700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 35),
  -- Beautifly - Flash - TM70
  (267, 26700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 36),
  -- Beautifly - Struggle Bug - TM76
  (267, 26700, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 37),
  -- Beautifly - Infestation - TM83
  (267, 26700, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 38),
  -- Beautifly - Swagger - TM87
  (267, 26700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 39),
  -- Beautifly - Sleep Talk - TM88
  (267, 26700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 40),
  -- Beautifly - U-turn - TM89
  (267, 26700, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 41),
  -- Beautifly - Substitute - TM90
  (267, 26700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Beautifly - Confide - TM100
  (267, 26700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Cascoon - Harden - Level 1
  (268, 26800, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cascoon - Harden - Level 7
  (268, 26800, 106, 13, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Dustox - Confusion - Level 1
  (269, 26900, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dustox - Confusion - Level 10
  (269, 26900, 93, 13, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Dustox - Gust - Level 13
  (269, 26900, 16, 13, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Dustox - Protect - Level 17
  (269, 26900, 182, 13, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Dustox - Moonlight - Level 20
  (269, 26900, 236, 13, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Dustox - Psybeam - Level 24
  (269, 26900, 60, 13, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Dustox - Whirlwind - Level 27
  (269, 26900, 18, 13, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Dustox - Light Screen - Level 31
  (269, 26900, 113, 13, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Dustox - Silver Wind - Level 34
  (269, 26900, 318, 13, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Dustox - Toxic - Level 38
  (269, 26900, 92, 13, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Dustox - Bug Buzz - Level 41
  (269, 26900, 405, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Dustox - Quiver Dance - Level 45
  (269, 26900, 483, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Dustox - Toxic - TM06
  (269, 26900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Dustox - Venoshock - TM09
  (269, 26900, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 14),
  -- Dustox - Hidden Power - TM10
  (269, 26900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Dustox - Sunny Day - TM11
  (269, 26900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Dustox - Hyper Beam - TM15
  (269, 26900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 17),
  -- Dustox - Light Screen - TM16
  (269, 26900, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 18),
  -- Dustox - Protect - TM17
  (269, 26900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Dustox - Roost - TM19
  (269, 26900, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 20),
  -- Dustox - Frustration - TM21
  (269, 26900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Dustox - Solar Beam - TM22
  (269, 26900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 22),
  -- Dustox - Return - TM27
  (269, 26900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Dustox - Psychic - TM29
  (269, 26900, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 24),
  -- Dustox - Shadow Ball - TM30
  (269, 26900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Dustox - Double Team - TM32
  (269, 26900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Dustox - Sludge Bomb - TM36
  (269, 26900, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 27),
  -- Dustox - Aerial Ace - TM40
  (269, 26900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Dustox - Facade - TM42
  (269, 26900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Dustox - Rest - TM44
  (269, 26900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Dustox - Attract - TM45
  (269, 26900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Dustox - Thief - TM46
  (269, 26900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Dustox - Round - TM48
  (269, 26900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Dustox - Energy Ball - TM53
  (269, 26900, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 34),
  -- Dustox - Acrobatics - TM62
  (269, 26900, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 35),
  -- Dustox - Giga Impact - TM68
  (269, 26900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 36),
  -- Dustox - Flash - TM70
  (269, 26900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 37),
  -- Dustox - Struggle Bug - TM76
  (269, 26900, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 38),
  -- Dustox - Infestation - TM83
  (269, 26900, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 39),
  -- Dustox - Swagger - TM87
  (269, 26900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Dustox - Sleep Talk - TM88
  (269, 26900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Dustox - U-turn - TM89
  (269, 26900, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 42),
  -- Dustox - Substitute - TM90
  (269, 26900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Dustox - Confide - TM100
  (269, 26900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Lotad - Astonish - Level 1
  (270, 27000, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lotad - Growl - Level 3
  (270, 27000, 45, 13, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Lotad - Absorb - Level 5
  (270, 27000, 71, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lotad - Nature Power - Level 7
  (270, 27000, 267, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Lotad - Mist - Level 11
  (270, 27000, 54, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Lotad - Natural Gift - Level 15
  (270, 27000, 363, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Lotad - Mega Drain - Level 19
  (270, 27000, 72, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Lotad - Bubble Beam - Level 25
  (270, 27000, 61, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Lotad - Zen Headbutt - Level 31
  (270, 27000, 428, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Lotad - Rain Dance - Level 37
  (270, 27000, 240, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lotad - Energy Ball - Level 45
  (270, 27000, 412, 13, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Lotad - Toxic - TM06
  (270, 27000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 12),
  -- Lotad - Hail - TM07
  (270, 27000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 13),
  -- Lotad - Hidden Power - TM10
  (270, 27000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Lotad - Sunny Day - TM11
  (270, 27000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 15),
  -- Lotad - Ice Beam - TM13
  (270, 27000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 16),
  -- Lotad - Blizzard - TM14
  (270, 27000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 17),
  -- Lotad - Protect - TM17
  (270, 27000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Lotad - Rain Dance - TM18
  (270, 27000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Lotad - Frustration - TM21
  (270, 27000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Lotad - Solar Beam - TM22
  (270, 27000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 21),
  -- Lotad - Return - TM27
  (270, 27000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Lotad - Double Team - TM32
  (270, 27000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Lotad - Facade - TM42
  (270, 27000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 24),
  -- Lotad - Rest - TM44
  (270, 27000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 25),
  -- Lotad - Attract - TM45
  (270, 27000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 26),
  -- Lotad - Thief - TM46
  (270, 27000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 27),
  -- Lotad - Round - TM48
  (270, 27000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 28),
  -- Lotad - Echoed Voice - TM49
  (270, 27000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 29),
  -- Lotad - Energy Ball - TM53
  (270, 27000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 30),
  -- Lotad - Scald - TM55
  (270, 27000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 31),
  -- Lotad - Flash - TM70
  (270, 27000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 32),
  -- Lotad - Swords Dance - TM75
  (270, 27000, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 33),
  -- Lotad - Grass Knot - TM86
  (270, 27000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 34),
  -- Lotad - Swagger - TM87
  (270, 27000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Lotad - Sleep Talk - TM88
  (270, 27000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Lotad - Substitute - TM90
  (270, 27000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Lotad - Nature Power - TM96
  (270, 27000, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 38),
  -- Lotad - Confide - TM100
  (270, 27000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Lotad - Surf - HM03
  (270, 27000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 40),
  -- Lotad - Water Gun - Egg
  (270, 27000, 55, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Lotad - Counter - Egg
  (270, 27000, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Lotad - Leech Seed - Egg
  (270, 27000, 73, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lotad - Razor Leaf - Egg
  (270, 27000, 75, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lotad - Flail - Egg
  (270, 27000, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lotad - Giga Drain - Egg
  (270, 27000, 202, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lotad - Sweet Scent - Egg
  (270, 27000, 230, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lotad - Synthesis - Egg
  (270, 27000, 235, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lotad - Teeter Dance - Egg
  (270, 27000, 298, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lotad - Tickle - Egg
  (270, 27000, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lombre - Astonish - Level 1
  (271, 27100, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lombre - Growl - Level 3
  (271, 27100, 45, 13, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Lombre - Absorb - Level 5
  (271, 27100, 71, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lombre - Nature Power - Level 7
  (271, 27100, 267, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Lombre - Fake Out - Level 11
  (271, 27100, 252, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Lombre - Fury Swipes - Level 15
  (271, 27100, 154, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Lombre - Water Sport - Level 19
  (271, 27100, 346, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Lombre - Bubble Beam - Level 25
  (271, 27100, 61, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Lombre - Zen Headbutt - Level 31
  (271, 27100, 428, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Lombre - Uproar - Level 37
  (271, 27100, 253, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lombre - Hydro Pump - Level 45
  (271, 27100, 56, 13, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Lombre - Hone Claws - TM01
  (271, 27100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 12),
  -- Lombre - Toxic - TM06
  (271, 27100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Lombre - Hail - TM07
  (271, 27100, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 14),
  -- Lombre - Hidden Power - TM10
  (271, 27100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Lombre - Sunny Day - TM11
  (271, 27100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Lombre - Ice Beam - TM13
  (271, 27100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 17),
  -- Lombre - Blizzard - TM14
  (271, 27100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 18),
  -- Lombre - Protect - TM17
  (271, 27100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Lombre - Rain Dance - TM18
  (271, 27100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Lombre - Frustration - TM21
  (271, 27100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Lombre - Solar Beam - TM22
  (271, 27100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 22),
  -- Lombre - Return - TM27
  (271, 27100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Lombre - Brick Break - TM31
  (271, 27100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 24),
  -- Lombre - Double Team - TM32
  (271, 27100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Lombre - Facade - TM42
  (271, 27100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Lombre - Rest - TM44
  (271, 27100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Lombre - Attract - TM45
  (271, 27100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Lombre - Thief - TM46
  (271, 27100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 29),
  -- Lombre - Round - TM48
  (271, 27100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Lombre - Echoed Voice - TM49
  (271, 27100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 31),
  -- Lombre - Energy Ball - TM53
  (271, 27100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 32),
  -- Lombre - Scald - TM55
  (271, 27100, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 33),
  -- Lombre - Fling - TM56
  (271, 27100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 34),
  -- Lombre - Flash - TM70
  (271, 27100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 35),
  -- Lombre - Swords Dance - TM75
  (271, 27100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 36),
  -- Lombre - Grass Knot - TM86
  (271, 27100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 37),
  -- Lombre - Swagger - TM87
  (271, 27100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Lombre - Sleep Talk - TM88
  (271, 27100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Lombre - Substitute - TM90
  (271, 27100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Lombre - Rock Smash - TM94
  (271, 27100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 41),
  -- Lombre - Nature Power - TM96
  (271, 27100, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 42),
  -- Lombre - Power-Up Punch - TM98
  (271, 27100, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 43),
  -- Lombre - Confide - TM100
  (271, 27100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Lombre - Surf - HM03
  (271, 27100, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 45),
  -- Lombre - Strength - HM04
  (271, 27100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 46),
  -- Lombre - Waterfall - HM05
  (271, 27100, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 47),
  -- Ludicolo - Growl - Level 1
  (272, 27200, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ludicolo - Mega Drain - Level 1
  (272, 27200, 72, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ludicolo - Nature Power - Level 1
  (272, 27200, 267, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ludicolo - Astonish - Level 1
  (272, 27200, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ludicolo - Hone Claws - TM01
  (272, 27200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 5),
  -- Ludicolo - Toxic - TM06
  (272, 27200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 6),
  -- Ludicolo - Hail - TM07
  (272, 27200, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 7),
  -- Ludicolo - Hidden Power - TM10
  (272, 27200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 8),
  -- Ludicolo - Sunny Day - TM11
  (272, 27200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 9),
  -- Ludicolo - Ice Beam - TM13
  (272, 27200, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 10),
  -- Ludicolo - Blizzard - TM14
  (272, 27200, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 11),
  -- Ludicolo - Hyper Beam - TM15
  (272, 27200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 12),
  -- Ludicolo - Protect - TM17
  (272, 27200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 13),
  -- Ludicolo - Rain Dance - TM18
  (272, 27200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 14),
  -- Ludicolo - Frustration - TM21
  (272, 27200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 15),
  -- Ludicolo - Solar Beam - TM22
  (272, 27200, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 16),
  -- Ludicolo - Return - TM27
  (272, 27200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 17),
  -- Ludicolo - Brick Break - TM31
  (272, 27200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 18),
  -- Ludicolo - Double Team - TM32
  (272, 27200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 19),
  -- Ludicolo - Facade - TM42
  (272, 27200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 20),
  -- Ludicolo - Rest - TM44
  (272, 27200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 21),
  -- Ludicolo - Attract - TM45
  (272, 27200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 22),
  -- Ludicolo - Thief - TM46
  (272, 27200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 23),
  -- Ludicolo - Round - TM48
  (272, 27200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 24),
  -- Ludicolo - Echoed Voice - TM49
  (272, 27200, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 25),
  -- Ludicolo - Focus Blast - TM52
  (272, 27200, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 26),
  -- Ludicolo - Energy Ball - TM53
  (272, 27200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 27),
  -- Ludicolo - Scald - TM55
  (272, 27200, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 28),
  -- Ludicolo - Fling - TM56
  (272, 27200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 29),
  -- Ludicolo - Giga Impact - TM68
  (272, 27200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 30),
  -- Ludicolo - Flash - TM70
  (272, 27200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 31),
  -- Ludicolo - Swords Dance - TM75
  (272, 27200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 32),
  -- Ludicolo - Grass Knot - TM86
  (272, 27200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 33),
  -- Ludicolo - Swagger - TM87
  (272, 27200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Ludicolo - Sleep Talk - TM88
  (272, 27200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Ludicolo - Substitute - TM90
  (272, 27200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Ludicolo - Rock Smash - TM94
  (272, 27200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 37),
  -- Ludicolo - Nature Power - TM96
  (272, 27200, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 38),
  -- Ludicolo - Power-Up Punch - TM98
  (272, 27200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 39),
  -- Ludicolo - Confide - TM100
  (272, 27200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Ludicolo - Surf - HM03
  (272, 27200, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 41),
  -- Ludicolo - Strength - HM04
  (272, 27200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 42),
  -- Ludicolo - Waterfall - HM05
  (272, 27200, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 43),
  -- Seedot - Bide - Level 1
  (273, 27300, 117, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seedot - Harden - Level 3
  (273, 27300, 106, 13, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Seedot - Growth - Level 7
  (273, 27300, 74, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Seedot - Nature Power - Level 13
  (273, 27300, 267, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Seedot - Synthesis - Level 21
  (273, 27300, 235, 13, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Seedot - Sunny Day - Level 31
  (273, 27300, 241, 13, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Seedot - Explosion - Level 43
  (273, 27300, 153, 13, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Seedot - Toxic - TM06
  (273, 27300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 8),
  -- Seedot - Hidden Power - TM10
  (273, 27300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 9),
  -- Seedot - Sunny Day - TM11
  (273, 27300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 10),
  -- Seedot - Protect - TM17
  (273, 27300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 11),
  -- Seedot - Frustration - TM21
  (273, 27300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 12),
  -- Seedot - Solar Beam - TM22
  (273, 27300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 13),
  -- Seedot - Return - TM27
  (273, 27300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 14),
  -- Seedot - Dig - TM28
  (273, 27300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 15),
  -- Seedot - Shadow Ball - TM30
  (273, 27300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 16),
  -- Seedot - Double Team - TM32
  (273, 27300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 17),
  -- Seedot - Facade - TM42
  (273, 27300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 18),
  -- Seedot - Rest - TM44
  (273, 27300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 19),
  -- Seedot - Attract - TM45
  (273, 27300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 20),
  -- Seedot - Round - TM48
  (273, 27300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 21),
  -- Seedot - Energy Ball - TM53
  (273, 27300, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 22),
  -- Seedot - False Swipe - TM54
  (273, 27300, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 23),
  -- Seedot - Explosion - TM64
  (273, 27300, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 24),
  -- Seedot - Retaliate - TM67
  (273, 27300, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 25),
  -- Seedot - Flash - TM70
  (273, 27300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 26),
  -- Seedot - Swords Dance - TM75
  (273, 27300, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 27),
  -- Seedot - Grass Knot - TM86
  (273, 27300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 28),
  -- Seedot - Swagger - TM87
  (273, 27300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 29),
  -- Seedot - Sleep Talk - TM88
  (273, 27300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 30),
  -- Seedot - Substitute - TM90
  (273, 27300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 31),
  -- Seedot - Rock Smash - TM94
  (273, 27300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 32),
  -- Seedot - Nature Power - TM96
  (273, 27300, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 33),
  -- Seedot - Confide - TM100
  (273, 27300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 34),
  -- Seedot - Razor Wind - Egg
  (273, 27300, 13, 13, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Seedot - Take Down - Egg
  (273, 27300, 36, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Seedot - Leech Seed - Egg
  (273, 27300, 73, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Seedot - Quick Attack - Egg
  (273, 27300, 98, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Seedot - Amnesia - Egg
  (273, 27300, 133, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Seedot - Beat Up - Egg
  (273, 27300, 251, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Seedot - Bullet Seed - Egg
  (273, 27300, 331, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seedot - Power Swap - Egg
  (273, 27300, 384, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seedot - Worry Seed - Egg
  (273, 27300, 388, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seedot - Nasty Plot - Egg
  (273, 27300, 417, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Seedot - Defog - Egg
  (273, 27300, 432, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Seedot - Foul Play - Egg
  (273, 27300, 492, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Seedot - Grassy Terrain - Egg
  (273, 27300, 580, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nuzleaf - Pound - Level 1
  (274, 27400, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nuzleaf - Razor Leaf - Level 1
  (274, 27400, 75, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nuzleaf - Harden - Level 3
  (274, 27400, 106, 13, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Nuzleaf - Growth - Level 7
  (274, 27400, 74, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Nuzleaf - Nature Power - Level 13
  (274, 27400, 267, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nuzleaf - Fake Out - Level 19
  (274, 27400, 252, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Nuzleaf - Torment - Level 25
  (274, 27400, 259, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nuzleaf - Feint Attack - Level 31
  (274, 27400, 185, 13, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Nuzleaf - Razor Wind - Level 37
  (274, 27400, 13, 13, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Nuzleaf - Swagger - Level 43
  (274, 27400, 207, 13, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Nuzleaf - Extrasensory - Level 49
  (274, 27400, 326, 13, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Nuzleaf - Toxic - TM06
  (274, 27400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 12),
  -- Nuzleaf - Hidden Power - TM10
  (274, 27400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 13),
  -- Nuzleaf - Sunny Day - TM11
  (274, 27400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 14),
  -- Nuzleaf - Hyper Beam - TM15
  (274, 27400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 15),
  -- Nuzleaf - Protect - TM17
  (274, 27400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Nuzleaf - Frustration - TM21
  (274, 27400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 17),
  -- Nuzleaf - Solar Beam - TM22
  (274, 27400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 18),
  -- Nuzleaf - Return - TM27
  (274, 27400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 19),
  -- Nuzleaf - Dig - TM28
  (274, 27400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 20),
  -- Nuzleaf - Shadow Ball - TM30
  (274, 27400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 21),
  -- Nuzleaf - Brick Break - TM31
  (274, 27400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 22),
  -- Nuzleaf - Double Team - TM32
  (274, 27400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Nuzleaf - Rock Tomb - TM39
  (274, 27400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 24),
  -- Nuzleaf - Torment - TM41
  (274, 27400, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 25),
  -- Nuzleaf - Facade - TM42
  (274, 27400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Nuzleaf - Rest - TM44
  (274, 27400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Nuzleaf - Attract - TM45
  (274, 27400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Nuzleaf - Thief - TM46
  (274, 27400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 29),
  -- Nuzleaf - Low Sweep - TM47
  (274, 27400, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 30),
  -- Nuzleaf - Round - TM48
  (274, 27400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Nuzleaf - Energy Ball - TM53
  (274, 27400, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 32),
  -- Nuzleaf - False Swipe - TM54
  (274, 27400, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 33),
  -- Nuzleaf - Fling - TM56
  (274, 27400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 34),
  -- Nuzleaf - Embargo - TM63
  (274, 27400, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 35),
  -- Nuzleaf - Explosion - TM64
  (274, 27400, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 36),
  -- Nuzleaf - Payback - TM66
  (274, 27400, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 37),
  -- Nuzleaf - Retaliate - TM67
  (274, 27400, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 38),
  -- Nuzleaf - Flash - TM70
  (274, 27400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 39),
  -- Nuzleaf - Swords Dance - TM75
  (274, 27400, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 40),
  -- Nuzleaf - Psych Up - TM77
  (274, 27400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 41),
  -- Nuzleaf - Rock Slide - TM80
  (274, 27400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 42),
  -- Nuzleaf - Grass Knot - TM86
  (274, 27400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 43),
  -- Nuzleaf - Swagger - TM87
  (274, 27400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Nuzleaf - Sleep Talk - TM88
  (274, 27400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Nuzleaf - Substitute - TM90
  (274, 27400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Nuzleaf - Rock Smash - TM94
  (274, 27400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 47),
  -- Nuzleaf - Snarl - TM95
  (274, 27400, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 48),
  -- Nuzleaf - Nature Power - TM96
  (274, 27400, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 49),
  -- Nuzleaf - Dark Pulse - TM97
  (274, 27400, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 50),
  -- Nuzleaf - Power-Up Punch - TM98
  (274, 27400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 51),
  -- Nuzleaf - Confide - TM100
  (274, 27400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Nuzleaf - Cut - HM01
  (274, 27400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 53),
  -- Nuzleaf - Strength - HM04
  (274, 27400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Shiftry - Whirlwind - Level 1
  (275, 27500, 18, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shiftry - Razor Leaf - Level 1
  (275, 27500, 75, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shiftry - Feint Attack - Level 1
  (275, 27500, 185, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shiftry - Nasty Plot - Level 1
  (275, 27500, 417, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shiftry - Leaf Tornado - Level 19
  (275, 27500, 536, 13, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Shiftry - Leaf Storm - Level 49
  (275, 27500, 437, 13, NULL, 1, 49, NULL, NULL, NULL, 6),
  -- Shiftry - Toxic - TM06
  (275, 27500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 7),
  -- Shiftry - Hidden Power - TM10
  (275, 27500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 8),
  -- Shiftry - Sunny Day - TM11
  (275, 27500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 9),
  -- Shiftry - Hyper Beam - TM15
  (275, 27500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 10),
  -- Shiftry - Protect - TM17
  (275, 27500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 11),
  -- Shiftry - Frustration - TM21
  (275, 27500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 12),
  -- Shiftry - Solar Beam - TM22
  (275, 27500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 13),
  -- Shiftry - Return - TM27
  (275, 27500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 14),
  -- Shiftry - Dig - TM28
  (275, 27500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 15),
  -- Shiftry - Shadow Ball - TM30
  (275, 27500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 16),
  -- Shiftry - Brick Break - TM31
  (275, 27500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 17),
  -- Shiftry - Double Team - TM32
  (275, 27500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 18),
  -- Shiftry - Rock Tomb - TM39
  (275, 27500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 19),
  -- Shiftry - Aerial Ace - TM40
  (275, 27500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 20),
  -- Shiftry - Torment - TM41
  (275, 27500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 21),
  -- Shiftry - Facade - TM42
  (275, 27500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 22),
  -- Shiftry - Rest - TM44
  (275, 27500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 23),
  -- Shiftry - Attract - TM45
  (275, 27500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 24),
  -- Shiftry - Thief - TM46
  (275, 27500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 25),
  -- Shiftry - Low Sweep - TM47
  (275, 27500, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 26),
  -- Shiftry - Round - TM48
  (275, 27500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Shiftry - Focus Blast - TM52
  (275, 27500, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 28),
  -- Shiftry - Energy Ball - TM53
  (275, 27500, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 29),
  -- Shiftry - False Swipe - TM54
  (275, 27500, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 30),
  -- Shiftry - Fling - TM56
  (275, 27500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 31),
  -- Shiftry - Embargo - TM63
  (275, 27500, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 32),
  -- Shiftry - Explosion - TM64
  (275, 27500, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 33),
  -- Shiftry - Payback - TM66
  (275, 27500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 34),
  -- Shiftry - Retaliate - TM67
  (275, 27500, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 35),
  -- Shiftry - Giga Impact - TM68
  (275, 27500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 36),
  -- Shiftry - Flash - TM70
  (275, 27500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 37),
  -- Shiftry - Swords Dance - TM75
  (275, 27500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 38),
  -- Shiftry - Psych Up - TM77
  (275, 27500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 39),
  -- Shiftry - Rock Slide - TM80
  (275, 27500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 40),
  -- Shiftry - X-Scissor - TM81
  (275, 27500, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 41),
  -- Shiftry - Grass Knot - TM86
  (275, 27500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 42),
  -- Shiftry - Swagger - TM87
  (275, 27500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Shiftry - Sleep Talk - TM88
  (275, 27500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Shiftry - Substitute - TM90
  (275, 27500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Shiftry - Rock Smash - TM94
  (275, 27500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 46),
  -- Shiftry - Snarl - TM95
  (275, 27500, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 47),
  -- Shiftry - Nature Power - TM96
  (275, 27500, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 48),
  -- Shiftry - Dark Pulse - TM97
  (275, 27500, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 49),
  -- Shiftry - Power-Up Punch - TM98
  (275, 27500, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 50),
  -- Shiftry - Confide - TM100
  (275, 27500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Shiftry - Cut - HM01
  (275, 27500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 52),
  -- Shiftry - Strength - HM04
  (275, 27500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 53),
  -- Taillow - Growl - Level 1
  (276, 27600, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Taillow - Peck - Level 1
  (276, 27600, 64, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Taillow - Focus Energy - Level 4
  (276, 27600, 116, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Taillow - Quick Attack - Level 7
  (276, 27600, 98, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Taillow - Wing Attack - Level 13
  (276, 27600, 17, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Taillow - Double Team - Level 19
  (276, 27600, 104, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Taillow - Endeavor - Level 26
  (276, 27600, 283, 13, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Taillow - Aerial Ace - Level 34
  (276, 27600, 332, 13, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Taillow - Agility - Level 43
  (276, 27600, 97, 13, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Taillow - Air Slash - Level 53
  (276, 27600, 403, 13, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Taillow - Toxic - TM06
  (276, 27600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 11),
  -- Taillow - Hidden Power - TM10
  (276, 27600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 12),
  -- Taillow - Sunny Day - TM11
  (276, 27600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 13),
  -- Taillow - Protect - TM17
  (276, 27600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 14),
  -- Taillow - Rain Dance - TM18
  (276, 27600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 15),
  -- Taillow - Roost - TM19
  (276, 27600, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 16),
  -- Taillow - Frustration - TM21
  (276, 27600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 17),
  -- Taillow - Return - TM27
  (276, 27600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 18),
  -- Taillow - Double Team - TM32
  (276, 27600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 19),
  -- Taillow - Aerial Ace - TM40
  (276, 27600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 20),
  -- Taillow - Facade - TM42
  (276, 27600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 21),
  -- Taillow - Rest - TM44
  (276, 27600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 22),
  -- Taillow - Attract - TM45
  (276, 27600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 23),
  -- Taillow - Thief - TM46
  (276, 27600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 24),
  -- Taillow - Round - TM48
  (276, 27600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 25),
  -- Taillow - Echoed Voice - TM49
  (276, 27600, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 26),
  -- Taillow - Steel Wing - TM51
  (276, 27600, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 27),
  -- Taillow - Swagger - TM87
  (276, 27600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 28),
  -- Taillow - Sleep Talk - TM88
  (276, 27600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 29),
  -- Taillow - U-turn - TM89
  (276, 27600, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 30),
  -- Taillow - Substitute - TM90
  (276, 27600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 31),
  -- Taillow - Confide - TM100
  (276, 27600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 32),
  -- Taillow - Fly - HM02
  (276, 27600, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 33),
  -- Taillow - Whirlwind - Egg
  (276, 27600, 18, 13, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Taillow - Supersonic - Egg
  (276, 27600, 48, 13, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Taillow - Rage - Egg
  (276, 27600, 99, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Taillow - Mirror Move - Egg
  (276, 27600, 119, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Taillow - Sky Attack - Egg
  (276, 27600, 143, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Taillow - Steel Wing - Egg
  (276, 27600, 211, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Taillow - Pursuit - Egg
  (276, 27600, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Taillow - Refresh - Egg
  (276, 27600, 287, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Taillow - Roost - Egg
  (276, 27600, 355, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Taillow - Brave Bird - Egg
  (276, 27600, 413, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Taillow - Defog - Egg
  (276, 27600, 432, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Taillow - Boomburst - Egg
  (276, 27600, 586, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swellow - Growl - Level 1
  (277, 27700, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swellow - Peck - Level 1
  (277, 27700, 64, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swellow - Quick Attack - Level 1
  (277, 27700, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swellow - Focus Energy - Level 1
  (277, 27700, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swellow - Pluck - Level 1
  (277, 27700, 365, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swellow - Air Slash - Level 1
  (277, 27700, 403, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Swellow - Focus Energy - Level 4
  (277, 27700, 116, 13, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Swellow - Quick Attack - Level 7
  (277, 27700, 98, 13, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Swellow - Wing Attack - Level 13
  (277, 27700, 17, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Swellow - Double Team - Level 19
  (277, 27700, 104, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Swellow - Endeavor - Level 28
  (277, 27700, 283, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Swellow - Aerial Ace - Level 38
  (277, 27700, 332, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Swellow - Agility - Level 49
  (277, 27700, 97, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Swellow - Air Slash - Level 61
  (277, 27700, 403, 13, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Swellow - Toxic - TM06
  (277, 27700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Swellow - Hidden Power - TM10
  (277, 27700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Swellow - Sunny Day - TM11
  (277, 27700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Swellow - Hyper Beam - TM15
  (277, 27700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 18),
  -- Swellow - Protect - TM17
  (277, 27700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Swellow - Rain Dance - TM18
  (277, 27700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Swellow - Roost - TM19
  (277, 27700, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 21),
  -- Swellow - Frustration - TM21
  (277, 27700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Swellow - Return - TM27
  (277, 27700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Swellow - Double Team - TM32
  (277, 27700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Swellow - Aerial Ace - TM40
  (277, 27700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 25),
  -- Swellow - Facade - TM42
  (277, 27700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Swellow - Rest - TM44
  (277, 27700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Swellow - Attract - TM45
  (277, 27700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Swellow - Thief - TM46
  (277, 27700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 29),
  -- Swellow - Round - TM48
  (277, 27700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Swellow - Echoed Voice - TM49
  (277, 27700, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 31),
  -- Swellow - Steel Wing - TM51
  (277, 27700, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 32),
  -- Swellow - Giga Impact - TM68
  (277, 27700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 33),
  -- Swellow - Swagger - TM87
  (277, 27700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Swellow - Sleep Talk - TM88
  (277, 27700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Swellow - U-turn - TM89
  (277, 27700, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 36),
  -- Swellow - Substitute - TM90
  (277, 27700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Swellow - Confide - TM100
  (277, 27700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Swellow - Fly - HM02
  (277, 27700, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 39),
  -- Wingull - Growl - Level 1
  (278, 27800, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wingull - Water Gun - Level 1
  (278, 27800, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wingull - Supersonic - Level 6
  (278, 27800, 48, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Wingull - Wing Attack - Level 9
  (278, 27800, 17, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Wingull - Mist - Level 14
  (278, 27800, 54, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Wingull - Water Pulse - Level 17
  (278, 27800, 352, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Wingull - Quick Attack - Level 22
  (278, 27800, 98, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Wingull - Roost - Level 26
  (278, 27800, 355, 13, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Wingull - Pursuit - Level 30
  (278, 27800, 228, 13, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Wingull - Air Cutter - Level 33
  (278, 27800, 314, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Wingull - Agility - Level 38
  (278, 27800, 97, 13, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Wingull - Aerial Ace - Level 42
  (278, 27800, 332, 13, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Wingull - Air Slash - Level 46
  (278, 27800, 403, 13, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Wingull - Hurricane - Level 49
  (278, 27800, 542, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Wingull - Toxic - TM06
  (278, 27800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Wingull - Hail - TM07
  (278, 27800, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 16),
  -- Wingull - Hidden Power - TM10
  (278, 27800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Wingull - Ice Beam - TM13
  (278, 27800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 18),
  -- Wingull - Blizzard - TM14
  (278, 27800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 19),
  -- Wingull - Protect - TM17
  (278, 27800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Wingull - Rain Dance - TM18
  (278, 27800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Wingull - Roost - TM19
  (278, 27800, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 22),
  -- Wingull - Frustration - TM21
  (278, 27800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Wingull - Return - TM27
  (278, 27800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Wingull - Double Team - TM32
  (278, 27800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Wingull - Aerial Ace - TM40
  (278, 27800, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 26),
  -- Wingull - Facade - TM42
  (278, 27800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Wingull - Rest - TM44
  (278, 27800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Wingull - Attract - TM45
  (278, 27800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Wingull - Thief - TM46
  (278, 27800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 30),
  -- Wingull - Round - TM48
  (278, 27800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Wingull - Echoed Voice - TM49
  (278, 27800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 32),
  -- Wingull - Steel Wing - TM51
  (278, 27800, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 33),
  -- Wingull - Scald - TM55
  (278, 27800, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 34),
  -- Wingull - Swagger - TM87
  (278, 27800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Wingull - Sleep Talk - TM88
  (278, 27800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Wingull - U-turn - TM89
  (278, 27800, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 37),
  -- Wingull - Substitute - TM90
  (278, 27800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Wingull - Confide - TM100
  (278, 27800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Wingull - Fly - HM02
  (278, 27800, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 40),
  -- Wingull - Gust - Egg
  (278, 27800, 16, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Wingull - Mist - Egg
  (278, 27800, 54, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wingull - Agility - Egg
  (278, 27800, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wingull - Twister - Egg
  (278, 27800, 239, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wingull - Knock Off - Egg
  (278, 27800, 282, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wingull - Water Sport - Egg
  (278, 27800, 346, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wingull - Roost - Egg
  (278, 27800, 355, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wingull - Brine - Egg
  (278, 27800, 362, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wingull - Aqua Ring - Egg
  (278, 27800, 392, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wingull - Wide Guard - Egg
  (278, 27800, 469, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wingull - Soak - Egg
  (278, 27800, 487, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pelipper - Wing Attack - Level 1
  (279, 27900, 17, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pelipper - Growl - Level 1
  (279, 27900, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pelipper - Water Gun - Level 1
  (279, 27900, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pelipper - Hydro Pump - Level 1
  (279, 27900, 56, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pelipper - Water Sport - Level 1
  (279, 27900, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pelipper - Tailwind - Level 1
  (279, 27900, 366, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Pelipper - Soak - Level 1
  (279, 27900, 487, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Pelipper - Supersonic - Level 6
  (279, 27900, 48, 13, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Pelipper - Wing Attack - Level 9
  (279, 27900, 17, 13, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Pelipper - Mist - Level 14
  (279, 27900, 54, 13, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Pelipper - Water Pulse - Level 17
  (279, 27900, 352, 13, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Pelipper - Payback - Level 22
  (279, 27900, 371, 13, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Pelipper - Protect - Level 25
  (279, 27900, 182, 13, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Pelipper - Roost - Level 28
  (279, 27900, 355, 13, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Pelipper - Brine - Level 34
  (279, 27900, 362, 13, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Pelipper - Stockpile - Level 39
  (279, 27900, 254, 13, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Pelipper - Spit Up - Level 39
  (279, 27900, 255, 13, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Pelipper - Swallow - Level 39
  (279, 27900, 256, 13, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Pelipper - Fling - Level 46
  (279, 27900, 374, 13, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Pelipper - Tailwind - Level 52
  (279, 27900, 366, 13, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Pelipper - Hydro Pump - Level 58
  (279, 27900, 56, 13, NULL, 1, 58, NULL, NULL, NULL, 21),
  -- Pelipper - Hurricane - Level 63
  (279, 27900, 542, 13, NULL, 1, 63, NULL, NULL, NULL, 22),
  -- Pelipper - Toxic - TM06
  (279, 27900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Pelipper - Hail - TM07
  (279, 27900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 24),
  -- Pelipper - Hidden Power - TM10
  (279, 27900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Pelipper - Ice Beam - TM13
  (279, 27900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 26),
  -- Pelipper - Blizzard - TM14
  (279, 27900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 27),
  -- Pelipper - Hyper Beam - TM15
  (279, 27900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 28),
  -- Pelipper - Protect - TM17
  (279, 27900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Pelipper - Rain Dance - TM18
  (279, 27900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Pelipper - Roost - TM19
  (279, 27900, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 31),
  -- Pelipper - Frustration - TM21
  (279, 27900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 32),
  -- Pelipper - Return - TM27
  (279, 27900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Pelipper - Double Team - TM32
  (279, 27900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Pelipper - Aerial Ace - TM40
  (279, 27900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 35),
  -- Pelipper - Facade - TM42
  (279, 27900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Pelipper - Rest - TM44
  (279, 27900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Pelipper - Attract - TM45
  (279, 27900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Pelipper - Thief - TM46
  (279, 27900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Pelipper - Round - TM48
  (279, 27900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Pelipper - Echoed Voice - TM49
  (279, 27900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 41),
  -- Pelipper - Steel Wing - TM51
  (279, 27900, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 42),
  -- Pelipper - Scald - TM55
  (279, 27900, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 43),
  -- Pelipper - Fling - TM56
  (279, 27900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 44),
  -- Pelipper - Sky Drop - TM58
  (279, 27900, 507, 13, NULL, 2, NULL, NULL, 13002058, NULL, 45),
  -- Pelipper - Payback - TM66
  (279, 27900, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 46),
  -- Pelipper - Giga Impact - TM68
  (279, 27900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 47),
  -- Pelipper - Swagger - TM87
  (279, 27900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Pelipper - Sleep Talk - TM88
  (279, 27900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Pelipper - U-turn - TM89
  (279, 27900, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 50),
  -- Pelipper - Substitute - TM90
  (279, 27900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Pelipper - Confide - TM100
  (279, 27900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Pelipper - Fly - HM02
  (279, 27900, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 53),
  -- Pelipper - Surf - HM03
  (279, 27900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 54),
  -- Ralts - Growl - Level 1
  (280, 28000, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ralts - Confusion - Level 6
  (280, 28000, 93, 13, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Ralts - Double Team - Level 10
  (280, 28000, 104, 13, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Ralts - Teleport - Level 12
  (280, 28000, 100, 13, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Ralts - Lucky Chant - Level 17
  (280, 28000, 381, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Ralts - Magical Leaf - Level 21
  (280, 28000, 345, 13, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Ralts - Heal Pulse - Level 23
  (280, 28000, 505, 13, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Ralts - Calm Mind - Level 28
  (280, 28000, 347, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Ralts - Psychic - Level 32
  (280, 28000, 94, 13, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Ralts - Imprison - Level 34
  (280, 28000, 286, 13, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Ralts - Future Sight - Level 39
  (280, 28000, 248, 13, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Ralts - Charm - Level 43
  (280, 28000, 204, 13, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Ralts - Hypnosis - Level 45
  (280, 28000, 95, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Ralts - Dream Eater - Level 49
  (280, 28000, 138, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Ralts - Stored Power - Level 54
  (280, 28000, 500, 13, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Ralts - Psyshock - TM03
  (280, 28000, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 16),
  -- Ralts - Calm Mind - TM04
  (280, 28000, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 17),
  -- Ralts - Toxic - TM06
  (280, 28000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Ralts - Hidden Power - TM10
  (280, 28000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Ralts - Sunny Day - TM11
  (280, 28000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Ralts - Taunt - TM12
  (280, 28000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Ralts - Light Screen - TM16
  (280, 28000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Ralts - Protect - TM17
  (280, 28000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Ralts - Rain Dance - TM18
  (280, 28000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Ralts - Safeguard - TM20
  (280, 28000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Ralts - Frustration - TM21
  (280, 28000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Ralts - Thunderbolt - TM24
  (280, 28000, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 27),
  -- Ralts - Return - TM27
  (280, 28000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Ralts - Psychic - TM29
  (280, 28000, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 29),
  -- Ralts - Shadow Ball - TM30
  (280, 28000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 30),
  -- Ralts - Double Team - TM32
  (280, 28000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Ralts - Reflect - TM33
  (280, 28000, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 32),
  -- Ralts - Torment - TM41
  (280, 28000, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 33),
  -- Ralts - Facade - TM42
  (280, 28000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Ralts - Rest - TM44
  (280, 28000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Ralts - Attract - TM45
  (280, 28000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Ralts - Thief - TM46
  (280, 28000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 37),
  -- Ralts - Round - TM48
  (280, 28000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Ralts - Echoed Voice - TM49
  (280, 28000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 39),
  -- Ralts - Fling - TM56
  (280, 28000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Ralts - Charge Beam - TM57
  (280, 28000, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 41),
  -- Ralts - Will-O-Wisp - TM61
  (280, 28000, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 42),
  -- Ralts - Flash - TM70
  (280, 28000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Ralts - Thunder Wave - TM73
  (280, 28000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 44),
  -- Ralts - Psych Up - TM77
  (280, 28000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 45),
  -- Ralts - Dream Eater - TM85
  (280, 28000, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 46),
  -- Ralts - Grass Knot - TM86
  (280, 28000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 47),
  -- Ralts - Swagger - TM87
  (280, 28000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Ralts - Sleep Talk - TM88
  (280, 28000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Ralts - Substitute - TM90
  (280, 28000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Ralts - Trick Room - TM92
  (280, 28000, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 51),
  -- Ralts - Dazzling Gleam - TM99
  (280, 28000, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 52),
  -- Ralts - Confide - TM100
  (280, 28000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Ralts - Disable - Egg
  (280, 28000, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ralts - Confuse Ray - Egg
  (280, 28000, 109, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ralts - Destiny Bond - Egg
  (280, 28000, 194, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ralts - Mean Look - Egg
  (280, 28000, 212, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ralts - Encore - Egg
  (280, 28000, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ralts - Memento - Egg
  (280, 28000, 262, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ralts - Skill Swap - Egg
  (280, 28000, 285, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Ralts - Grudge - Egg
  (280, 28000, 288, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Ralts - Shadow Sneak - Egg
  (280, 28000, 425, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Ralts - Synchronoise - Egg
  (280, 28000, 485, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Ralts - Ally Switch - Egg
  (280, 28000, 502, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ralts - Misty Terrain - Egg
  (280, 28000, 581, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Kirlia - Growl - Level 1
  (281, 28100, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kirlia - Confusion - Level 1
  (281, 28100, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kirlia - Teleport - Level 1
  (281, 28100, 100, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kirlia - Double Team - Level 1
  (281, 28100, 104, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kirlia - Confusion - Level 6
  (281, 28100, 93, 13, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Kirlia - Double Team - Level 10
  (281, 28100, 104, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Kirlia - Teleport - Level 12
  (281, 28100, 100, 13, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Kirlia - Lucky Chant - Level 17
  (281, 28100, 381, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Kirlia - Magical Leaf - Level 22
  (281, 28100, 345, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Kirlia - Heal Pulse - Level 25
  (281, 28100, 505, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Kirlia - Calm Mind - Level 31
  (281, 28100, 347, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Kirlia - Psychic - Level 36
  (281, 28100, 94, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Kirlia - Imprison - Level 39
  (281, 28100, 286, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Kirlia - Future Sight - Level 45
  (281, 28100, 248, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Kirlia - Charm - Level 50
  (281, 28100, 204, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Kirlia - Hypnosis - Level 53
  (281, 28100, 95, 13, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Kirlia - Dream Eater - Level 59
  (281, 28100, 138, 13, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Kirlia - Stored Power - Level 64
  (281, 28100, 500, 13, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Kirlia - Psyshock - TM03
  (281, 28100, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 19),
  -- Kirlia - Calm Mind - TM04
  (281, 28100, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 20),
  -- Kirlia - Toxic - TM06
  (281, 28100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Kirlia - Hidden Power - TM10
  (281, 28100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Kirlia - Sunny Day - TM11
  (281, 28100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Kirlia - Taunt - TM12
  (281, 28100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Kirlia - Light Screen - TM16
  (281, 28100, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Kirlia - Protect - TM17
  (281, 28100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Kirlia - Rain Dance - TM18
  (281, 28100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Kirlia - Safeguard - TM20
  (281, 28100, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 28),
  -- Kirlia - Frustration - TM21
  (281, 28100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Kirlia - Thunderbolt - TM24
  (281, 28100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 30),
  -- Kirlia - Return - TM27
  (281, 28100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Kirlia - Psychic - TM29
  (281, 28100, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 32),
  -- Kirlia - Shadow Ball - TM30
  (281, 28100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 33),
  -- Kirlia - Double Team - TM32
  (281, 28100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Kirlia - Reflect - TM33
  (281, 28100, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 35),
  -- Kirlia - Torment - TM41
  (281, 28100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 36),
  -- Kirlia - Facade - TM42
  (281, 28100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Kirlia - Rest - TM44
  (281, 28100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Kirlia - Attract - TM45
  (281, 28100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Kirlia - Thief - TM46
  (281, 28100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 40),
  -- Kirlia - Round - TM48
  (281, 28100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Kirlia - Echoed Voice - TM49
  (281, 28100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 42),
  -- Kirlia - Fling - TM56
  (281, 28100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 43),
  -- Kirlia - Charge Beam - TM57
  (281, 28100, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 44),
  -- Kirlia - Will-O-Wisp - TM61
  (281, 28100, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 45),
  -- Kirlia - Flash - TM70
  (281, 28100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 46),
  -- Kirlia - Thunder Wave - TM73
  (281, 28100, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 47),
  -- Kirlia - Psych Up - TM77
  (281, 28100, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 48),
  -- Kirlia - Dream Eater - TM85
  (281, 28100, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 49),
  -- Kirlia - Grass Knot - TM86
  (281, 28100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 50),
  -- Kirlia - Swagger - TM87
  (281, 28100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Kirlia - Sleep Talk - TM88
  (281, 28100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Kirlia - Substitute - TM90
  (281, 28100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Kirlia - Trick Room - TM92
  (281, 28100, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 54),
  -- Kirlia - Dazzling Gleam - TM99
  (281, 28100, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 55),
  -- Kirlia - Confide - TM100
  (281, 28100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Gardevoir - Growl - Level 1
  (282, 28200, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gardevoir - Confusion - Level 1
  (282, 28200, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gardevoir - Teleport - Level 1
  (282, 28200, 100, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gardevoir - Double Team - Level 1
  (282, 28200, 104, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gardevoir - Healing Wish - Level 1
  (282, 28200, 361, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gardevoir - Stored Power - Level 1
  (282, 28200, 500, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gardevoir - Misty Terrain - Level 1
  (282, 28200, 581, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gardevoir - Moonblast - Level 1
  (282, 28200, 585, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Gardevoir - Confusion - Level 6
  (282, 28200, 93, 13, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Gardevoir - Double Team - Level 10
  (282, 28200, 104, 13, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Gardevoir - Teleport - Level 12
  (282, 28200, 100, 13, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Gardevoir - Wish - Level 17
  (282, 28200, 273, 13, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Gardevoir - Magical Leaf - Level 22
  (282, 28200, 345, 13, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Gardevoir - Heal Pulse - Level 25
  (282, 28200, 505, 13, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Gardevoir - Calm Mind - Level 33
  (282, 28200, 347, 13, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Gardevoir - Psychic - Level 40
  (282, 28200, 94, 13, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Gardevoir - Imprison - Level 45
  (282, 28200, 286, 13, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Gardevoir - Future Sight - Level 53
  (282, 28200, 248, 13, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Gardevoir - Captivate - Level 60
  (282, 28200, 445, 13, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Gardevoir - Hypnosis - Level 65
  (282, 28200, 95, 13, NULL, 1, 65, NULL, NULL, NULL, 20),
  -- Gardevoir - Dream Eater - Level 73
  (282, 28200, 138, 13, NULL, 1, 73, NULL, NULL, NULL, 21),
  -- Gardevoir - Stored Power - Level 80
  (282, 28200, 500, 13, NULL, 1, 80, NULL, NULL, NULL, 22),
  -- Gardevoir - Moonblast - Level 85
  (282, 28200, 585, 13, NULL, 1, 85, NULL, NULL, NULL, 23),
  -- Gardevoir - Psyshock - TM03
  (282, 28200, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 24),
  -- Gardevoir - Calm Mind - TM04
  (282, 28200, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 25),
  -- Gardevoir - Toxic - TM06
  (282, 28200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 26),
  -- Gardevoir - Hidden Power - TM10
  (282, 28200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 27),
  -- Gardevoir - Sunny Day - TM11
  (282, 28200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 28),
  -- Gardevoir - Taunt - TM12
  (282, 28200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 29),
  -- Gardevoir - Hyper Beam - TM15
  (282, 28200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 30),
  -- Gardevoir - Light Screen - TM16
  (282, 28200, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 31),
  -- Gardevoir - Protect - TM17
  (282, 28200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 32),
  -- Gardevoir - Rain Dance - TM18
  (282, 28200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 33),
  -- Gardevoir - Safeguard - TM20
  (282, 28200, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 34),
  -- Gardevoir - Frustration - TM21
  (282, 28200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 35),
  -- Gardevoir - Thunderbolt - TM24
  (282, 28200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 36),
  -- Gardevoir - Return - TM27
  (282, 28200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 37),
  -- Gardevoir - Psychic - TM29
  (282, 28200, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 38),
  -- Gardevoir - Shadow Ball - TM30
  (282, 28200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 39),
  -- Gardevoir - Double Team - TM32
  (282, 28200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 40),
  -- Gardevoir - Reflect - TM33
  (282, 28200, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 41),
  -- Gardevoir - Torment - TM41
  (282, 28200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 42),
  -- Gardevoir - Facade - TM42
  (282, 28200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 43),
  -- Gardevoir - Rest - TM44
  (282, 28200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 44),
  -- Gardevoir - Attract - TM45
  (282, 28200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 45),
  -- Gardevoir - Thief - TM46
  (282, 28200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 46),
  -- Gardevoir - Round - TM48
  (282, 28200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 47),
  -- Gardevoir - Echoed Voice - TM49
  (282, 28200, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 48),
  -- Gardevoir - Focus Blast - TM52
  (282, 28200, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 49),
  -- Gardevoir - Energy Ball - TM53
  (282, 28200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 50),
  -- Gardevoir - Fling - TM56
  (282, 28200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 51),
  -- Gardevoir - Charge Beam - TM57
  (282, 28200, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 52),
  -- Gardevoir - Will-O-Wisp - TM61
  (282, 28200, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 53),
  -- Gardevoir - Giga Impact - TM68
  (282, 28200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 54),
  -- Gardevoir - Flash - TM70
  (282, 28200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 55),
  -- Gardevoir - Thunder Wave - TM73
  (282, 28200, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 56),
  -- Gardevoir - Psych Up - TM77
  (282, 28200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 57),
  -- Gardevoir - Dream Eater - TM85
  (282, 28200, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 58),
  -- Gardevoir - Grass Knot - TM86
  (282, 28200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 59),
  -- Gardevoir - Swagger - TM87
  (282, 28200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 60),
  -- Gardevoir - Sleep Talk - TM88
  (282, 28200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 61),
  -- Gardevoir - Substitute - TM90
  (282, 28200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 62),
  -- Gardevoir - Trick Room - TM92
  (282, 28200, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 63),
  -- Gardevoir - Dazzling Gleam - TM99
  (282, 28200, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 64),
  -- Gardevoir - Confide - TM100
  (282, 28200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 65),
  -- Surskit - Bubble - Level 1
  (283, 28300, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Surskit - Quick Attack - Level 7
  (283, 28300, 98, 13, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Surskit - Sweet Scent - Level 13
  (283, 28300, 230, 13, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Surskit - Water Sport - Level 19
  (283, 28300, 346, 13, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Surskit - Bubble Beam - Level 25
  (283, 28300, 61, 13, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Surskit - Agility - Level 31
  (283, 28300, 97, 13, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Surskit - Mist - Level 37
  (283, 28300, 54, 13, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Surskit - Haze - Level 37
  (283, 28300, 114, 13, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Surskit - Baton Pass - Level 43
  (283, 28300, 226, 13, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Surskit - Sticky Web - Level 46
  (283, 28300, 564, 13, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Surskit - Toxic - TM06
  (283, 28300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 11),
  -- Surskit - Hidden Power - TM10
  (283, 28300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 12),
  -- Surskit - Sunny Day - TM11
  (283, 28300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 13),
  -- Surskit - Ice Beam - TM13
  (283, 28300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 14),
  -- Surskit - Blizzard - TM14
  (283, 28300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 15),
  -- Surskit - Protect - TM17
  (283, 28300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Surskit - Rain Dance - TM18
  (283, 28300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 17),
  -- Surskit - Frustration - TM21
  (283, 28300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 18),
  -- Surskit - Solar Beam - TM22
  (283, 28300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 19),
  -- Surskit - Return - TM27
  (283, 28300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 20),
  -- Surskit - Shadow Ball - TM30
  (283, 28300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 21),
  -- Surskit - Double Team - TM32
  (283, 28300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Surskit - Facade - TM42
  (283, 28300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 23),
  -- Surskit - Rest - TM44
  (283, 28300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 24),
  -- Surskit - Attract - TM45
  (283, 28300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 25),
  -- Surskit - Thief - TM46
  (283, 28300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 26),
  -- Surskit - Round - TM48
  (283, 28300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Surskit - Scald - TM55
  (283, 28300, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 28),
  -- Surskit - Flash - TM70
  (283, 28300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 29),
  -- Surskit - Struggle Bug - TM76
  (283, 28300, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 30),
  -- Surskit - Psych Up - TM77
  (283, 28300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 31),
  -- Surskit - Infestation - TM83
  (283, 28300, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 32),
  -- Surskit - Swagger - TM87
  (283, 28300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 33),
  -- Surskit - Sleep Talk - TM88
  (283, 28300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 34),
  -- Surskit - Substitute - TM90
  (283, 28300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 35),
  -- Surskit - Confide - TM100
  (283, 28300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 36),
  -- Surskit - Hydro Pump - Egg
  (283, 28300, 56, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Surskit - Psybeam - Egg
  (283, 28300, 60, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Surskit - Mind Reader - Egg
  (283, 28300, 170, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Surskit - Foresight - Egg
  (283, 28300, 193, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Surskit - Endure - Egg
  (283, 28300, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Surskit - Signal Beam - Egg
  (283, 28300, 324, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Surskit - Mud Shot - Egg
  (283, 28300, 341, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Surskit - Bug Bite - Egg
  (283, 28300, 450, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Surskit - Aqua Jet - Egg
  (283, 28300, 453, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Surskit - Power Split - Egg
  (283, 28300, 471, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Surskit - Fell Stinger - Egg
  (283, 28300, 565, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Masquerain - Whirlwind - Level 1
  (284, 28400, 18, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Masquerain - Quick Attack - Level 1
  (284, 28400, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Masquerain - Bubble - Level 1
  (284, 28400, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Masquerain - Sweet Scent - Level 1
  (284, 28400, 230, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Masquerain - Water Sport - Level 1
  (284, 28400, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Masquerain - Bug Buzz - Level 1
  (284, 28400, 405, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Masquerain - Ominous Wind - Level 1
  (284, 28400, 466, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Masquerain - Quiver Dance - Level 1
  (284, 28400, 483, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Masquerain - Quick Attack - Level 7
  (284, 28400, 98, 13, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Masquerain - Sweet Scent - Level 13
  (284, 28400, 230, 13, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Masquerain - Water Sport - Level 19
  (284, 28400, 346, 13, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Masquerain - Gust - Level 22
  (284, 28400, 16, 13, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Masquerain - Scary Face - Level 26
  (284, 28400, 184, 13, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Masquerain - Stun Spore - Level 33
  (284, 28400, 78, 13, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Masquerain - Silver Wind - Level 40
  (284, 28400, 318, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Masquerain - Air Slash - Level 47
  (284, 28400, 403, 13, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Masquerain - Whirlwind - Level 54
  (284, 28400, 18, 13, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Masquerain - Bug Buzz - Level 61
  (284, 28400, 405, 13, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Masquerain - Quiver Dance - Level 68
  (284, 28400, 483, 13, NULL, 1, 68, NULL, NULL, NULL, 19),
  -- Masquerain - Toxic - TM06
  (284, 28400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Masquerain - Hidden Power - TM10
  (284, 28400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Masquerain - Sunny Day - TM11
  (284, 28400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Masquerain - Ice Beam - TM13
  (284, 28400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 23),
  -- Masquerain - Blizzard - TM14
  (284, 28400, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 24),
  -- Masquerain - Hyper Beam - TM15
  (284, 28400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Masquerain - Protect - TM17
  (284, 28400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Masquerain - Rain Dance - TM18
  (284, 28400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Masquerain - Roost - TM19
  (284, 28400, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 28),
  -- Masquerain - Frustration - TM21
  (284, 28400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Masquerain - Solar Beam - TM22
  (284, 28400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 30),
  -- Masquerain - Return - TM27
  (284, 28400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Masquerain - Shadow Ball - TM30
  (284, 28400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Masquerain - Double Team - TM32
  (284, 28400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Masquerain - Aerial Ace - TM40
  (284, 28400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 34),
  -- Masquerain - Facade - TM42
  (284, 28400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Masquerain - Rest - TM44
  (284, 28400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Masquerain - Attract - TM45
  (284, 28400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Masquerain - Thief - TM46
  (284, 28400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 38),
  -- Masquerain - Round - TM48
  (284, 28400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Masquerain - Energy Ball - TM53
  (284, 28400, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 40),
  -- Masquerain - Scald - TM55
  (284, 28400, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 41),
  -- Masquerain - Giga Impact - TM68
  (284, 28400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Masquerain - Flash - TM70
  (284, 28400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Masquerain - Struggle Bug - TM76
  (284, 28400, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 44),
  -- Masquerain - Psych Up - TM77
  (284, 28400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 45),
  -- Masquerain - Infestation - TM83
  (284, 28400, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 46),
  -- Masquerain - Swagger - TM87
  (284, 28400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Masquerain - Sleep Talk - TM88
  (284, 28400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Masquerain - U-turn - TM89
  (284, 28400, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 49),
  -- Masquerain - Substitute - TM90
  (284, 28400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Masquerain - Confide - TM100
  (284, 28400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Shroomish - Absorb - Level 1
  (285, 28500, 71, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shroomish - Tackle - Level 5
  (285, 28500, 33, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Shroomish - Stun Spore - Level 9
  (285, 28500, 78, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shroomish - Leech Seed - Level 13
  (285, 28500, 73, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Shroomish - Mega Drain - Level 17
  (285, 28500, 72, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Shroomish - Headbutt - Level 21
  (285, 28500, 29, 13, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Shroomish - Poison Powder - Level 25
  (285, 28500, 77, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shroomish - Worry Seed - Level 29
  (285, 28500, 388, 13, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Shroomish - Growth - Level 33
  (285, 28500, 74, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shroomish - Giga Drain - Level 37
  (285, 28500, 202, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shroomish - Seed Bomb - Level 41
  (285, 28500, 402, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Shroomish - Spore - Level 45
  (285, 28500, 147, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Shroomish - Toxic - TM06
  (285, 28500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Shroomish - Venoshock - TM09
  (285, 28500, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 14),
  -- Shroomish - Hidden Power - TM10
  (285, 28500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Shroomish - Sunny Day - TM11
  (285, 28500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Shroomish - Protect - TM17
  (285, 28500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Shroomish - Safeguard - TM20
  (285, 28500, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 18),
  -- Shroomish - Frustration - TM21
  (285, 28500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Shroomish - Solar Beam - TM22
  (285, 28500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 20),
  -- Shroomish - Return - TM27
  (285, 28500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Shroomish - Double Team - TM32
  (285, 28500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Shroomish - Sludge Bomb - TM36
  (285, 28500, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 23),
  -- Shroomish - Facade - TM42
  (285, 28500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 24),
  -- Shroomish - Rest - TM44
  (285, 28500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 25),
  -- Shroomish - Attract - TM45
  (285, 28500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 26),
  -- Shroomish - Round - TM48
  (285, 28500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Shroomish - Energy Ball - TM53
  (285, 28500, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 28),
  -- Shroomish - False Swipe - TM54
  (285, 28500, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 29),
  -- Shroomish - Flash - TM70
  (285, 28500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 30),
  -- Shroomish - Swords Dance - TM75
  (285, 28500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 31),
  -- Shroomish - Grass Knot - TM86
  (285, 28500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 32),
  -- Shroomish - Swagger - TM87
  (285, 28500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 33),
  -- Shroomish - Sleep Talk - TM88
  (285, 28500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 34),
  -- Shroomish - Substitute - TM90
  (285, 28500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 35),
  -- Shroomish - Confide - TM100
  (285, 28500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 36),
  -- Shroomish - Charm - Egg
  (285, 28500, 204, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shroomish - Focus Punch - Egg
  (285, 28500, 264, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shroomish - Helping Hand - Egg
  (285, 28500, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shroomish - Fake Tears - Egg
  (285, 28500, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shroomish - Bullet Seed - Egg
  (285, 28500, 331, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shroomish - Wake-Up Slap - Egg
  (285, 28500, 358, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shroomish - Natural Gift - Egg
  (285, 28500, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shroomish - Worry Seed - Egg
  (285, 28500, 388, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shroomish - Seed Bomb - Egg
  (285, 28500, 402, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shroomish - Drain Punch - Egg
  (285, 28500, 409, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Breloom - Tackle - Level 1
  (286, 28600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Breloom - Absorb - Level 1
  (286, 28600, 71, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Breloom - Leech Seed - Level 1
  (286, 28600, 73, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Breloom - Stun Spore - Level 1
  (286, 28600, 78, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Breloom - Tackle - Level 5
  (286, 28600, 33, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Breloom - Stun Spore - Level 9
  (286, 28600, 78, 13, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Breloom - Leech Seed - Level 13
  (286, 28600, 73, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Breloom - Mega Drain - Level 17
  (286, 28600, 72, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Breloom - Headbutt - Level 21
  (286, 28600, 29, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Breloom - Mach Punch - Level 23
  (286, 28600, 183, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Breloom - Counter - Level 25
  (286, 28600, 68, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Breloom - Force Palm - Level 29
  (286, 28600, 395, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Breloom - Sky Uppercut - Level 33
  (286, 28600, 327, 13, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Breloom - Mind Reader - Level 37
  (286, 28600, 170, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Breloom - Seed Bomb - Level 41
  (286, 28600, 402, 13, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Breloom - Dynamic Punch - Level 45
  (286, 28600, 223, 13, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Breloom - Toxic - TM06
  (286, 28600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Breloom - Bulk Up - TM08
  (286, 28600, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 18),
  -- Breloom - Venoshock - TM09
  (286, 28600, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 19),
  -- Breloom - Hidden Power - TM10
  (286, 28600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Breloom - Sunny Day - TM11
  (286, 28600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Breloom - Hyper Beam - TM15
  (286, 28600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Breloom - Protect - TM17
  (286, 28600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Breloom - Safeguard - TM20
  (286, 28600, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Breloom - Frustration - TM21
  (286, 28600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Breloom - Solar Beam - TM22
  (286, 28600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 26),
  -- Breloom - Return - TM27
  (286, 28600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Breloom - Brick Break - TM31
  (286, 28600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 28),
  -- Breloom - Double Team - TM32
  (286, 28600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Breloom - Sludge Bomb - TM36
  (286, 28600, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 30),
  -- Breloom - Rock Tomb - TM39
  (286, 28600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 31),
  -- Breloom - Facade - TM42
  (286, 28600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Breloom - Rest - TM44
  (286, 28600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Breloom - Attract - TM45
  (286, 28600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Breloom - Low Sweep - TM47
  (286, 28600, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 35),
  -- Breloom - Round - TM48
  (286, 28600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Breloom - Focus Blast - TM52
  (286, 28600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 37),
  -- Breloom - Energy Ball - TM53
  (286, 28600, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 38),
  -- Breloom - False Swipe - TM54
  (286, 28600, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 39),
  -- Breloom - Fling - TM56
  (286, 28600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Breloom - Retaliate - TM67
  (286, 28600, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 41),
  -- Breloom - Giga Impact - TM68
  (286, 28600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Breloom - Flash - TM70
  (286, 28600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Breloom - Stone Edge - TM71
  (286, 28600, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 44),
  -- Breloom - Swords Dance - TM75
  (286, 28600, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 45),
  -- Breloom - Rock Slide - TM80
  (286, 28600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Breloom - Grass Knot - TM86
  (286, 28600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 47),
  -- Breloom - Swagger - TM87
  (286, 28600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Breloom - Sleep Talk - TM88
  (286, 28600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Breloom - Substitute - TM90
  (286, 28600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Breloom - Rock Smash - TM94
  (286, 28600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 51),
  -- Breloom - Power-Up Punch - TM98
  (286, 28600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 52),
  -- Breloom - Confide - TM100
  (286, 28600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Breloom - Cut - HM01
  (286, 28600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 54),
  -- Breloom - Strength - HM04
  (286, 28600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 55),
  -- Slakoth - Scratch - Level 1
  (287, 28700, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slakoth - Yawn - Level 1
  (287, 28700, 281, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slakoth - Encore - Level 7
  (287, 28700, 227, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Slakoth - Slack Off - Level 13
  (287, 28700, 303, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Slakoth - Feint Attack - Level 19
  (287, 28700, 185, 13, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Slakoth - Amnesia - Level 25
  (287, 28700, 133, 13, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Slakoth - Covet - Level 31
  (287, 28700, 343, 13, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Slakoth - Chip Away - Level 37
  (287, 28700, 498, 13, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Slakoth - Counter - Level 43
  (287, 28700, 68, 13, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Slakoth - Flail - Level 49
  (287, 28700, 175, 13, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Slakoth - Hone Claws - TM01
  (287, 28700, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 11),
  -- Slakoth - Toxic - TM06
  (287, 28700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 12),
  -- Slakoth - Bulk Up - TM08
  (287, 28700, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 13),
  -- Slakoth - Hidden Power - TM10
  (287, 28700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Slakoth - Sunny Day - TM11
  (287, 28700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 15),
  -- Slakoth - Ice Beam - TM13
  (287, 28700, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 16),
  -- Slakoth - Blizzard - TM14
  (287, 28700, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 17),
  -- Slakoth - Protect - TM17
  (287, 28700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Slakoth - Rain Dance - TM18
  (287, 28700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Slakoth - Frustration - TM21
  (287, 28700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Slakoth - Solar Beam - TM22
  (287, 28700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 21),
  -- Slakoth - Thunderbolt - TM24
  (287, 28700, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 22),
  -- Slakoth - Thunder - TM25
  (287, 28700, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 23),
  -- Slakoth - Return - TM27
  (287, 28700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Slakoth - Shadow Ball - TM30
  (287, 28700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Slakoth - Brick Break - TM31
  (287, 28700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 26),
  -- Slakoth - Double Team - TM32
  (287, 28700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Slakoth - Flamethrower - TM35
  (287, 28700, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 28),
  -- Slakoth - Fire Blast - TM38
  (287, 28700, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 29),
  -- Slakoth - Rock Tomb - TM39
  (287, 28700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Slakoth - Aerial Ace - TM40
  (287, 28700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 31),
  -- Slakoth - Facade - TM42
  (287, 28700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Slakoth - Rest - TM44
  (287, 28700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Slakoth - Attract - TM45
  (287, 28700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Slakoth - Round - TM48
  (287, 28700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Slakoth - Fling - TM56
  (287, 28700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 36),
  -- Slakoth - Incinerate - TM59
  (287, 28700, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 37),
  -- Slakoth - Shadow Claw - TM65
  (287, 28700, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 38),
  -- Slakoth - Retaliate - TM67
  (287, 28700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 39),
  -- Slakoth - Rock Slide - TM80
  (287, 28700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 40),
  -- Slakoth - Swagger - TM87
  (287, 28700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Slakoth - Sleep Talk - TM88
  (287, 28700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Slakoth - Substitute - TM90
  (287, 28700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Slakoth - Rock Smash - TM94
  (287, 28700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Slakoth - Power-Up Punch - TM98
  (287, 28700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 45),
  -- Slakoth - Confide - TM100
  (287, 28700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Slakoth - Cut - HM01
  (287, 28700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 47),
  -- Slakoth - Strength - HM04
  (287, 28700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 48),
  -- Slakoth - Body Slam - Egg
  (287, 28700, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Slakoth - Slash - Egg
  (287, 28700, 163, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Slakoth - Snore - Egg
  (287, 28700, 173, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Slakoth - Curse - Egg
  (287, 28700, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Slakoth - Sleep Talk - Egg
  (287, 28700, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Slakoth - Pursuit - Egg
  (287, 28700, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Slakoth - Crush Claw - Egg
  (287, 28700, 306, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Slakoth - Tickle - Egg
  (287, 28700, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Slakoth - Hammer Arm - Egg
  (287, 28700, 359, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Slakoth - Night Slash - Egg
  (287, 28700, 400, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Slakoth - After You - Egg
  (287, 28700, 495, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Vigoroth - Scratch - Level 1
  (288, 28800, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vigoroth - Focus Energy - Level 1
  (288, 28800, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vigoroth - Reversal - Level 1
  (288, 28800, 179, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vigoroth - Encore - Level 1
  (288, 28800, 227, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vigoroth - Uproar - Level 1
  (288, 28800, 253, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vigoroth - Encore - Level 7
  (288, 28800, 227, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Vigoroth - Uproar - Level 13
  (288, 28800, 253, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Vigoroth - Fury Swipes - Level 19
  (288, 28800, 154, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Vigoroth - Endure - Level 25
  (288, 28800, 203, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Vigoroth - Slash - Level 31
  (288, 28800, 163, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Vigoroth - Counter - Level 37
  (288, 28800, 68, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Vigoroth - Chip Away - Level 43
  (288, 28800, 498, 13, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Vigoroth - Focus Punch - Level 49
  (288, 28800, 264, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Vigoroth - Reversal - Level 55
  (288, 28800, 179, 13, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Vigoroth - Hone Claws - TM01
  (288, 28800, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 15),
  -- Vigoroth - Roar - TM05
  (288, 28800, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 16),
  -- Vigoroth - Toxic - TM06
  (288, 28800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Vigoroth - Bulk Up - TM08
  (288, 28800, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 18),
  -- Vigoroth - Hidden Power - TM10
  (288, 28800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Vigoroth - Sunny Day - TM11
  (288, 28800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Vigoroth - Taunt - TM12
  (288, 28800, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Vigoroth - Ice Beam - TM13
  (288, 28800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 22),
  -- Vigoroth - Blizzard - TM14
  (288, 28800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 23),
  -- Vigoroth - Protect - TM17
  (288, 28800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Vigoroth - Rain Dance - TM18
  (288, 28800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Vigoroth - Frustration - TM21
  (288, 28800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Vigoroth - Solar Beam - TM22
  (288, 28800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Vigoroth - Thunderbolt - TM24
  (288, 28800, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Vigoroth - Thunder - TM25
  (288, 28800, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 29),
  -- Vigoroth - Earthquake - TM26
  (288, 28800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Vigoroth - Return - TM27
  (288, 28800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Vigoroth - Shadow Ball - TM30
  (288, 28800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Vigoroth - Brick Break - TM31
  (288, 28800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Vigoroth - Double Team - TM32
  (288, 28800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Vigoroth - Flamethrower - TM35
  (288, 28800, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 35),
  -- Vigoroth - Fire Blast - TM38
  (288, 28800, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 36),
  -- Vigoroth - Rock Tomb - TM39
  (288, 28800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Vigoroth - Aerial Ace - TM40
  (288, 28800, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Vigoroth - Facade - TM42
  (288, 28800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Vigoroth - Rest - TM44
  (288, 28800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Vigoroth - Attract - TM45
  (288, 28800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Vigoroth - Low Sweep - TM47
  (288, 28800, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 42),
  -- Vigoroth - Round - TM48
  (288, 28800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 43),
  -- Vigoroth - Focus Blast - TM52
  (288, 28800, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 44),
  -- Vigoroth - Fling - TM56
  (288, 28800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 45),
  -- Vigoroth - Incinerate - TM59
  (288, 28800, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 46),
  -- Vigoroth - Shadow Claw - TM65
  (288, 28800, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 47),
  -- Vigoroth - Retaliate - TM67
  (288, 28800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 48),
  -- Vigoroth - Bulldoze - TM78
  (288, 28800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 49),
  -- Vigoroth - Rock Slide - TM80
  (288, 28800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 50),
  -- Vigoroth - Swagger - TM87
  (288, 28800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Vigoroth - Sleep Talk - TM88
  (288, 28800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Vigoroth - Substitute - TM90
  (288, 28800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Vigoroth - Rock Smash - TM94
  (288, 28800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Vigoroth - Power-Up Punch - TM98
  (288, 28800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 55),
  -- Vigoroth - Confide - TM100
  (288, 28800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Vigoroth - Cut - HM01
  (288, 28800, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 57),
  -- Vigoroth - Strength - HM04
  (288, 28800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Slaking - Scratch - Level 1
  (289, 28900, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slaking - Encore - Level 1
  (289, 28900, 227, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slaking - Yawn - Level 1
  (289, 28900, 281, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slaking - Slack Off - Level 1
  (289, 28900, 303, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slaking - Hammer Arm - Level 1
  (289, 28900, 359, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slaking - Fling - Level 1
  (289, 28900, 374, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Slaking - Punishment - Level 1
  (289, 28900, 386, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Slaking - Encore - Level 7
  (289, 28900, 227, 13, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Slaking - Slack Off - Level 13
  (289, 28900, 303, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Slaking - Feint Attack - Level 19
  (289, 28900, 185, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Slaking - Amnesia - Level 25
  (289, 28900, 133, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Slaking - Covet - Level 31
  (289, 28900, 343, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Slaking - Swagger - Level 36
  (289, 28900, 207, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Slaking - Chip Away - Level 37
  (289, 28900, 498, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Slaking - Counter - Level 43
  (289, 28900, 68, 13, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Slaking - Flail - Level 49
  (289, 28900, 175, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Slaking - Fling - Level 55
  (289, 28900, 374, 13, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Slaking - Punishment - Level 61
  (289, 28900, 386, 13, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Slaking - Hammer Arm - Level 67
  (289, 28900, 359, 13, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Slaking - Hone Claws - TM01
  (289, 28900, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 20),
  -- Slaking - Roar - TM05
  (289, 28900, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Slaking - Toxic - TM06
  (289, 28900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Slaking - Bulk Up - TM08
  (289, 28900, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 23),
  -- Slaking - Hidden Power - TM10
  (289, 28900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Slaking - Sunny Day - TM11
  (289, 28900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Slaking - Taunt - TM12
  (289, 28900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 26),
  -- Slaking - Ice Beam - TM13
  (289, 28900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 27),
  -- Slaking - Blizzard - TM14
  (289, 28900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 28),
  -- Slaking - Hyper Beam - TM15
  (289, 28900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 29),
  -- Slaking - Protect - TM17
  (289, 28900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 30),
  -- Slaking - Rain Dance - TM18
  (289, 28900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 31),
  -- Slaking - Frustration - TM21
  (289, 28900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 32),
  -- Slaking - Solar Beam - TM22
  (289, 28900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 33),
  -- Slaking - Smack Down - TM23
  (289, 28900, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 34),
  -- Slaking - Thunderbolt - TM24
  (289, 28900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 35),
  -- Slaking - Thunder - TM25
  (289, 28900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 36),
  -- Slaking - Earthquake - TM26
  (289, 28900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 37),
  -- Slaking - Return - TM27
  (289, 28900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 38),
  -- Slaking - Shadow Ball - TM30
  (289, 28900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 39),
  -- Slaking - Brick Break - TM31
  (289, 28900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 40),
  -- Slaking - Double Team - TM32
  (289, 28900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 41),
  -- Slaking - Flamethrower - TM35
  (289, 28900, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 42),
  -- Slaking - Fire Blast - TM38
  (289, 28900, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 43),
  -- Slaking - Rock Tomb - TM39
  (289, 28900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 44),
  -- Slaking - Aerial Ace - TM40
  (289, 28900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 45),
  -- Slaking - Facade - TM42
  (289, 28900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 46),
  -- Slaking - Rest - TM44
  (289, 28900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 47),
  -- Slaking - Attract - TM45
  (289, 28900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 48),
  -- Slaking - Low Sweep - TM47
  (289, 28900, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 49),
  -- Slaking - Round - TM48
  (289, 28900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 50),
  -- Slaking - Focus Blast - TM52
  (289, 28900, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 51),
  -- Slaking - Fling - TM56
  (289, 28900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 52),
  -- Slaking - Incinerate - TM59
  (289, 28900, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 53),
  -- Slaking - Quash - TM60
  (289, 28900, 511, 13, NULL, 2, NULL, NULL, 13002060, NULL, 54),
  -- Slaking - Shadow Claw - TM65
  (289, 28900, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 55),
  -- Slaking - Retaliate - TM67
  (289, 28900, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 56),
  -- Slaking - Giga Impact - TM68
  (289, 28900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 57),
  -- Slaking - Bulldoze - TM78
  (289, 28900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 58),
  -- Slaking - Rock Slide - TM80
  (289, 28900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 59),
  -- Slaking - Swagger - TM87
  (289, 28900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 60),
  -- Slaking - Sleep Talk - TM88
  (289, 28900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 61),
  -- Slaking - Substitute - TM90
  (289, 28900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 62),
  -- Slaking - Rock Smash - TM94
  (289, 28900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 63),
  -- Slaking - Power-Up Punch - TM98
  (289, 28900, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 64),
  -- Slaking - Confide - TM100
  (289, 28900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 65),
  -- Slaking - Cut - HM01
  (289, 28900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 66),
  -- Slaking - Strength - HM04
  (289, 28900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 67),
  -- Nincada - Scratch - Level 1
  (290, 29000, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nincada - Harden - Level 1
  (290, 29000, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nincada - Leech Life - Level 5
  (290, 29000, 141, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nincada - Sand Attack - Level 9
  (290, 29000, 28, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nincada - Fury Swipes - Level 14
  (290, 29000, 154, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Nincada - Mind Reader - Level 19
  (290, 29000, 170, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Nincada - False Swipe - Level 25
  (290, 29000, 206, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nincada - Mud-Slap - Level 31
  (290, 29000, 189, 13, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Nincada - Metal Claw - Level 38
  (290, 29000, 232, 13, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Nincada - Dig - Level 45
  (290, 29000, 91, 13, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Nincada - Hone Claws - TM01
  (290, 29000, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 11),
  -- Nincada - Toxic - TM06
  (290, 29000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 12),
  -- Nincada - Hidden Power - TM10
  (290, 29000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 13),
  -- Nincada - Sunny Day - TM11
  (290, 29000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 14),
  -- Nincada - Protect - TM17
  (290, 29000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 15),
  -- Nincada - Frustration - TM21
  (290, 29000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 16),
  -- Nincada - Solar Beam - TM22
  (290, 29000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 17),
  -- Nincada - Return - TM27
  (290, 29000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 18),
  -- Nincada - Dig - TM28
  (290, 29000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 19),
  -- Nincada - Shadow Ball - TM30
  (290, 29000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 20),
  -- Nincada - Double Team - TM32
  (290, 29000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 21),
  -- Nincada - Sandstorm - TM37
  (290, 29000, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 22),
  -- Nincada - Aerial Ace - TM40
  (290, 29000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 23),
  -- Nincada - Facade - TM42
  (290, 29000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 24),
  -- Nincada - Rest - TM44
  (290, 29000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 25),
  -- Nincada - Round - TM48
  (290, 29000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 26),
  -- Nincada - False Swipe - TM54
  (290, 29000, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 27),
  -- Nincada - Flash - TM70
  (290, 29000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 28),
  -- Nincada - Struggle Bug - TM76
  (290, 29000, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 29),
  -- Nincada - X-Scissor - TM81
  (290, 29000, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 30),
  -- Nincada - Swagger - TM87
  (290, 29000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 31),
  -- Nincada - Sleep Talk - TM88
  (290, 29000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 32),
  -- Nincada - Substitute - TM90
  (290, 29000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 33),
  -- Nincada - Confide - TM100
  (290, 29000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 34),
  -- Nincada - Cut - HM01
  (290, 29000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 35),
  -- Nincada - Gust - Egg
  (290, 29000, 16, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Nincada - Feint Attack - Egg
  (290, 29000, 185, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Nincada - Endure - Egg
  (290, 29000, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Nincada - Silver Wind - Egg
  (290, 29000, 318, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Nincada - Night Slash - Egg
  (290, 29000, 400, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Nincada - Bug Buzz - Egg
  (290, 29000, 405, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Nincada - Bug Bite - Egg
  (290, 29000, 450, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nincada - Final Gambit - Egg
  (290, 29000, 515, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ninjask - Scratch - Level 1
  (291, 29100, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninjask - Sand Attack - Level 1
  (291, 29100, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninjask - Harden - Level 1
  (291, 29100, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninjask - Leech Life - Level 1
  (291, 29100, 141, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninjask - Bug Bite - Level 1
  (291, 29100, 450, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ninjask - Leech Life - Level 5
  (291, 29100, 141, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Ninjask - Sand Attack - Level 9
  (291, 29100, 28, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Ninjask - Fury Swipes - Level 14
  (291, 29100, 154, 13, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Ninjask - Mind Reader - Level 19
  (291, 29100, 170, 13, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Ninjask - Screech - Level 20
  (291, 29100, 103, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Ninjask - Double Team - Level 20
  (291, 29100, 104, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Ninjask - Fury Cutter - Level 20
  (291, 29100, 210, 13, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Ninjask - Swords Dance - Level 25
  (291, 29100, 14, 13, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Ninjask - Slash - Level 31
  (291, 29100, 163, 13, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Ninjask - Agility - Level 38
  (291, 29100, 97, 13, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Ninjask - Baton Pass - Level 45
  (291, 29100, 226, 13, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Ninjask - X-Scissor - Level 52
  (291, 29100, 404, 13, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Ninjask - Hone Claws - TM01
  (291, 29100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 18),
  -- Ninjask - Toxic - TM06
  (291, 29100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Ninjask - Hidden Power - TM10
  (291, 29100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Ninjask - Sunny Day - TM11
  (291, 29100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Ninjask - Hyper Beam - TM15
  (291, 29100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Ninjask - Protect - TM17
  (291, 29100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Ninjask - Roost - TM19
  (291, 29100, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 24),
  -- Ninjask - Frustration - TM21
  (291, 29100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Ninjask - Solar Beam - TM22
  (291, 29100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 26),
  -- Ninjask - Return - TM27
  (291, 29100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Ninjask - Dig - TM28
  (291, 29100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Ninjask - Shadow Ball - TM30
  (291, 29100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 29),
  -- Ninjask - Double Team - TM32
  (291, 29100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Ninjask - Sandstorm - TM37
  (291, 29100, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 31),
  -- Ninjask - Aerial Ace - TM40
  (291, 29100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 32),
  -- Ninjask - Facade - TM42
  (291, 29100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Ninjask - Rest - TM44
  (291, 29100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Ninjask - Attract - TM45
  (291, 29100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Ninjask - Thief - TM46
  (291, 29100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Ninjask - Round - TM48
  (291, 29100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Ninjask - False Swipe - TM54
  (291, 29100, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 38),
  -- Ninjask - Giga Impact - TM68
  (291, 29100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 39),
  -- Ninjask - Flash - TM70
  (291, 29100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 40),
  -- Ninjask - Swords Dance - TM75
  (291, 29100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 41),
  -- Ninjask - Struggle Bug - TM76
  (291, 29100, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 42),
  -- Ninjask - X-Scissor - TM81
  (291, 29100, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 43),
  -- Ninjask - Swagger - TM87
  (291, 29100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Ninjask - Sleep Talk - TM88
  (291, 29100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Ninjask - U-turn - TM89
  (291, 29100, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 46),
  -- Ninjask - Substitute - TM90
  (291, 29100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Ninjask - Confide - TM100
  (291, 29100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Ninjask - Cut - HM01
  (291, 29100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 49),
  -- Shedinja - Scratch - Level 1
  (292, 29200, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shedinja - Harden - Level 1
  (292, 29200, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shedinja - Leech Life - Level 5
  (292, 29200, 141, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shedinja - Sand Attack - Level 9
  (292, 29200, 28, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Shedinja - Fury Swipes - Level 14
  (292, 29200, 154, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Shedinja - Mind Reader - Level 19
  (292, 29200, 170, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shedinja - Spite - Level 25
  (292, 29200, 180, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shedinja - Confuse Ray - Level 31
  (292, 29200, 109, 13, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Shedinja - Shadow Sneak - Level 38
  (292, 29200, 425, 13, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Shedinja - Grudge - Level 43
  (292, 29200, 288, 13, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Shedinja - Phantom Force - Level 47
  (292, 29200, 566, 13, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Shedinja - Heal Block - Level 50
  (292, 29200, 377, 13, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Shedinja - Shadow Ball - Level 59
  (292, 29200, 247, 13, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Shedinja - Hone Claws - TM01
  (292, 29200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 14),
  -- Shedinja - Toxic - TM06
  (292, 29200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Shedinja - Hidden Power - TM10
  (292, 29200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Shedinja - Sunny Day - TM11
  (292, 29200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Shedinja - Hyper Beam - TM15
  (292, 29200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 18),
  -- Shedinja - Protect - TM17
  (292, 29200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Shedinja - Frustration - TM21
  (292, 29200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Shedinja - Solar Beam - TM22
  (292, 29200, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 21),
  -- Shedinja - Return - TM27
  (292, 29200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Shedinja - Dig - TM28
  (292, 29200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 23),
  -- Shedinja - Shadow Ball - TM30
  (292, 29200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 24),
  -- Shedinja - Double Team - TM32
  (292, 29200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Shedinja - Sandstorm - TM37
  (292, 29200, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 26),
  -- Shedinja - Aerial Ace - TM40
  (292, 29200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 27),
  -- Shedinja - Facade - TM42
  (292, 29200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Shedinja - Rest - TM44
  (292, 29200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Shedinja - Thief - TM46
  (292, 29200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 30),
  -- Shedinja - Round - TM48
  (292, 29200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Shedinja - False Swipe - TM54
  (292, 29200, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 32),
  -- Shedinja - Will-O-Wisp - TM61
  (292, 29200, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 33),
  -- Shedinja - Shadow Claw - TM65
  (292, 29200, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 34),
  -- Shedinja - Giga Impact - TM68
  (292, 29200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 35),
  -- Shedinja - Flash - TM70
  (292, 29200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 36),
  -- Shedinja - Struggle Bug - TM76
  (292, 29200, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 37),
  -- Shedinja - X-Scissor - TM81
  (292, 29200, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 38),
  -- Shedinja - Dream Eater - TM85
  (292, 29200, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 39),
  -- Shedinja - Swagger - TM87
  (292, 29200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Shedinja - Sleep Talk - TM88
  (292, 29200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Shedinja - Substitute - TM90
  (292, 29200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Shedinja - Confide - TM100
  (292, 29200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Shedinja - Cut - HM01
  (292, 29200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 44),
  -- Whismur - Pound - Level 1
  (293, 29300, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whismur - Uproar - Level 5
  (293, 29300, 253, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Whismur - Astonish - Level 11
  (293, 29300, 310, 13, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Whismur - Howl - Level 15
  (293, 29300, 336, 13, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Whismur - Supersonic - Level 21
  (293, 29300, 48, 13, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Whismur - Stomp - Level 25
  (293, 29300, 23, 13, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Whismur - Screech - Level 31
  (293, 29300, 103, 13, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Whismur - Roar - Level 35
  (293, 29300, 46, 13, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Whismur - Synchronoise - Level 41
  (293, 29300, 485, 13, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Whismur - Rest - Level 45
  (293, 29300, 156, 13, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Whismur - Sleep Talk - Level 45
  (293, 29300, 214, 13, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Whismur - Hyper Voice - Level 50
  (293, 29300, 304, 13, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Whismur - Roar - TM05
  (293, 29300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 13),
  -- Whismur - Toxic - TM06
  (293, 29300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Whismur - Hidden Power - TM10
  (293, 29300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Whismur - Sunny Day - TM11
  (293, 29300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Whismur - Ice Beam - TM13
  (293, 29300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 17),
  -- Whismur - Blizzard - TM14
  (293, 29300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 18),
  -- Whismur - Protect - TM17
  (293, 29300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Whismur - Rain Dance - TM18
  (293, 29300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Whismur - Frustration - TM21
  (293, 29300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Whismur - Solar Beam - TM22
  (293, 29300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 22),
  -- Whismur - Return - TM27
  (293, 29300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Whismur - Shadow Ball - TM30
  (293, 29300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 24),
  -- Whismur - Double Team - TM32
  (293, 29300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Whismur - Flamethrower - TM35
  (293, 29300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 26),
  -- Whismur - Fire Blast - TM38
  (293, 29300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 27),
  -- Whismur - Facade - TM42
  (293, 29300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Whismur - Rest - TM44
  (293, 29300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Whismur - Attract - TM45
  (293, 29300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Whismur - Round - TM48
  (293, 29300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Whismur - Echoed Voice - TM49
  (293, 29300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 32),
  -- Whismur - Fling - TM56
  (293, 29300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 33),
  -- Whismur - Incinerate - TM59
  (293, 29300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 34),
  -- Whismur - Retaliate - TM67
  (293, 29300, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 35),
  -- Whismur - Swagger - TM87
  (293, 29300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Whismur - Sleep Talk - TM88
  (293, 29300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Whismur - Substitute - TM90
  (293, 29300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Whismur - Confide - TM100
  (293, 29300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Whismur - Take Down - Egg
  (293, 29300, 36, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Whismur - Smokescreen - Egg
  (293, 29300, 108, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Whismur - Snore - Egg
  (293, 29300, 173, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Whismur - Smelling Salts - Egg
  (293, 29300, 265, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Whismur - Endeavor - Egg
  (293, 29300, 283, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Whismur - Fake Tears - Egg
  (293, 29300, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Whismur - Extrasensory - Egg
  (293, 29300, 326, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Whismur - Hammer Arm - Egg
  (293, 29300, 359, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Whismur - Circle Throw - Egg
  (293, 29300, 509, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Whismur - Disarming Voice - Egg
  (293, 29300, 574, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Loudred - Pound - Level 1
  (294, 29400, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Loudred - Uproar - Level 1
  (294, 29400, 253, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Loudred - Astonish - Level 1
  (294, 29400, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Loudred - Howl - Level 1
  (294, 29400, 336, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Loudred - Uproar - Level 5
  (294, 29400, 253, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Loudred - Astonish - Level 11
  (294, 29400, 310, 13, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Loudred - Howl - Level 15
  (294, 29400, 336, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Loudred - Bite - Level 20
  (294, 29400, 44, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Loudred - Supersonic - Level 23
  (294, 29400, 48, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Loudred - Stomp - Level 29
  (294, 29400, 23, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Loudred - Screech - Level 37
  (294, 29400, 103, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Loudred - Roar - Level 43
  (294, 29400, 46, 13, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Loudred - Synchronoise - Level 51
  (294, 29400, 485, 13, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Loudred - Rest - Level 57
  (294, 29400, 156, 13, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Loudred - Sleep Talk - Level 57
  (294, 29400, 214, 13, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Loudred - Hyper Voice - Level 65
  (294, 29400, 304, 13, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Loudred - Roar - TM05
  (294, 29400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Loudred - Toxic - TM06
  (294, 29400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Loudred - Hidden Power - TM10
  (294, 29400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Loudred - Sunny Day - TM11
  (294, 29400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Loudred - Taunt - TM12
  (294, 29400, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Loudred - Ice Beam - TM13
  (294, 29400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 22),
  -- Loudred - Blizzard - TM14
  (294, 29400, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 23),
  -- Loudred - Protect - TM17
  (294, 29400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Loudred - Rain Dance - TM18
  (294, 29400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Loudred - Frustration - TM21
  (294, 29400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Loudred - Solar Beam - TM22
  (294, 29400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Loudred - Smack Down - TM23
  (294, 29400, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 28),
  -- Loudred - Earthquake - TM26
  (294, 29400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Loudred - Return - TM27
  (294, 29400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Loudred - Shadow Ball - TM30
  (294, 29400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Loudred - Brick Break - TM31
  (294, 29400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Loudred - Double Team - TM32
  (294, 29400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Loudred - Flamethrower - TM35
  (294, 29400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 34),
  -- Loudred - Fire Blast - TM38
  (294, 29400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 35),
  -- Loudred - Rock Tomb - TM39
  (294, 29400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 36),
  -- Loudred - Torment - TM41
  (294, 29400, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 37),
  -- Loudred - Facade - TM42
  (294, 29400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Loudred - Rest - TM44
  (294, 29400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Loudred - Attract - TM45
  (294, 29400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Loudred - Round - TM48
  (294, 29400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Loudred - Echoed Voice - TM49
  (294, 29400, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 42),
  -- Loudred - Overheat - TM50
  (294, 29400, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 43),
  -- Loudred - Fling - TM56
  (294, 29400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 44),
  -- Loudred - Incinerate - TM59
  (294, 29400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 45),
  -- Loudred - Retaliate - TM67
  (294, 29400, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 46),
  -- Loudred - Bulldoze - TM78
  (294, 29400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 47),
  -- Loudred - Rock Slide - TM80
  (294, 29400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 48),
  -- Loudred - Swagger - TM87
  (294, 29400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Loudred - Sleep Talk - TM88
  (294, 29400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Loudred - Substitute - TM90
  (294, 29400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Loudred - Rock Smash - TM94
  (294, 29400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 52),
  -- Loudred - Power-Up Punch - TM98
  (294, 29400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 53),
  -- Loudred - Confide - TM100
  (294, 29400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Loudred - Strength - HM04
  (294, 29400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 55),
  -- Exploud - Pound - Level 1
  (295, 29500, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exploud - Uproar - Level 1
  (295, 29500, 253, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exploud - Astonish - Level 1
  (295, 29500, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exploud - Howl - Level 1
  (295, 29500, 336, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exploud - Thunder Fang - Level 1
  (295, 29500, 422, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exploud - Ice Fang - Level 1
  (295, 29500, 423, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Exploud - Fire Fang - Level 1
  (295, 29500, 424, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Exploud - Boomburst - Level 1
  (295, 29500, 586, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Exploud - Uproar - Level 5
  (295, 29500, 253, 13, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Exploud - Astonish - Level 11
  (295, 29500, 310, 13, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Exploud - Howl - Level 15
  (295, 29500, 336, 13, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Exploud - Bite - Level 20
  (295, 29500, 44, 13, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Exploud - Supersonic - Level 23
  (295, 29500, 48, 13, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Exploud - Stomp - Level 29
  (295, 29500, 23, 13, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Exploud - Screech - Level 37
  (295, 29500, 103, 13, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Exploud - Crunch - Level 40
  (295, 29500, 242, 13, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Exploud - Roar - Level 45
  (295, 29500, 46, 13, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Exploud - Rest - Level 55
  (295, 29500, 156, 13, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Exploud - Synchronoise - Level 55
  (295, 29500, 485, 13, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Exploud - Sleep Talk - Level 63
  (295, 29500, 214, 13, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Exploud - Hyper Voice - Level 71
  (295, 29500, 304, 13, NULL, 1, 71, NULL, NULL, NULL, 21),
  -- Exploud - Hyper Beam - Level 79
  (295, 29500, 63, 13, NULL, 1, 79, NULL, NULL, NULL, 22),
  -- Exploud - Boomburst - Level 85
  (295, 29500, 586, 13, NULL, 1, 85, NULL, NULL, NULL, 23),
  -- Exploud - Roar - TM05
  (295, 29500, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 24),
  -- Exploud - Toxic - TM06
  (295, 29500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 25),
  -- Exploud - Hidden Power - TM10
  (295, 29500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 26),
  -- Exploud - Sunny Day - TM11
  (295, 29500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 27),
  -- Exploud - Taunt - TM12
  (295, 29500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 28),
  -- Exploud - Ice Beam - TM13
  (295, 29500, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 29),
  -- Exploud - Blizzard - TM14
  (295, 29500, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 30),
  -- Exploud - Hyper Beam - TM15
  (295, 29500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 31),
  -- Exploud - Protect - TM17
  (295, 29500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 32),
  -- Exploud - Rain Dance - TM18
  (295, 29500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 33),
  -- Exploud - Frustration - TM21
  (295, 29500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 34),
  -- Exploud - Solar Beam - TM22
  (295, 29500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 35),
  -- Exploud - Smack Down - TM23
  (295, 29500, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 36),
  -- Exploud - Earthquake - TM26
  (295, 29500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 37),
  -- Exploud - Return - TM27
  (295, 29500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 38),
  -- Exploud - Shadow Ball - TM30
  (295, 29500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 39),
  -- Exploud - Brick Break - TM31
  (295, 29500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 40),
  -- Exploud - Double Team - TM32
  (295, 29500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 41),
  -- Exploud - Flamethrower - TM35
  (295, 29500, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 42),
  -- Exploud - Fire Blast - TM38
  (295, 29500, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 43),
  -- Exploud - Rock Tomb - TM39
  (295, 29500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 44),
  -- Exploud - Torment - TM41
  (295, 29500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 45),
  -- Exploud - Facade - TM42
  (295, 29500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 46),
  -- Exploud - Rest - TM44
  (295, 29500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 47),
  -- Exploud - Attract - TM45
  (295, 29500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 48),
  -- Exploud - Round - TM48
  (295, 29500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 49),
  -- Exploud - Echoed Voice - TM49
  (295, 29500, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 50),
  -- Exploud - Overheat - TM50
  (295, 29500, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 51),
  -- Exploud - Focus Blast - TM52
  (295, 29500, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 52),
  -- Exploud - Fling - TM56
  (295, 29500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 53),
  -- Exploud - Incinerate - TM59
  (295, 29500, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 54),
  -- Exploud - Retaliate - TM67
  (295, 29500, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 55),
  -- Exploud - Giga Impact - TM68
  (295, 29500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 56),
  -- Exploud - Bulldoze - TM78
  (295, 29500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 57),
  -- Exploud - Rock Slide - TM80
  (295, 29500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 58),
  -- Exploud - Swagger - TM87
  (295, 29500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 59),
  -- Exploud - Sleep Talk - TM88
  (295, 29500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 60),
  -- Exploud - Substitute - TM90
  (295, 29500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 61),
  -- Exploud - Rock Smash - TM94
  (295, 29500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 62),
  -- Exploud - Power-Up Punch - TM98
  (295, 29500, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 63),
  -- Exploud - Confide - TM100
  (295, 29500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 64),
  -- Exploud - Surf - HM03
  (295, 29500, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 65),
  -- Exploud - Strength - HM04
  (295, 29500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 66),
  -- Makuhita - Tackle - Level 1
  (296, 29600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Makuhita - Focus Energy - Level 1
  (296, 29600, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Makuhita - Sand Attack - Level 4
  (296, 29600, 28, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Makuhita - Arm Thrust - Level 7
  (296, 29600, 292, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Makuhita - Vital Throw - Level 10
  (296, 29600, 233, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Makuhita - Fake Out - Level 13
  (296, 29600, 252, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Makuhita - Whirlwind - Level 16
  (296, 29600, 18, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Makuhita - Knock Off - Level 19
  (296, 29600, 282, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Makuhita - Smelling Salts - Level 22
  (296, 29600, 265, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Makuhita - Belly Drum - Level 25
  (296, 29600, 187, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Makuhita - Force Palm - Level 28
  (296, 29600, 395, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Makuhita - Seismic Toss - Level 31
  (296, 29600, 69, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Makuhita - Wake-Up Slap - Level 34
  (296, 29600, 358, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Makuhita - Endure - Level 37
  (296, 29600, 203, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Makuhita - Close Combat - Level 40
  (296, 29600, 370, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Makuhita - Reversal - Level 43
  (296, 29600, 179, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Makuhita - Heavy Slam - Level 46
  (296, 29600, 484, 13, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Makuhita - Toxic - TM06
  (296, 29600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Makuhita - Bulk Up - TM08
  (296, 29600, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 19),
  -- Makuhita - Hidden Power - TM10
  (296, 29600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Makuhita - Sunny Day - TM11
  (296, 29600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Makuhita - Protect - TM17
  (296, 29600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Makuhita - Rain Dance - TM18
  (296, 29600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Makuhita - Frustration - TM21
  (296, 29600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Makuhita - Smack Down - TM23
  (296, 29600, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 25),
  -- Makuhita - Earthquake - TM26
  (296, 29600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 26),
  -- Makuhita - Return - TM27
  (296, 29600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Makuhita - Dig - TM28
  (296, 29600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Makuhita - Brick Break - TM31
  (296, 29600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 29),
  -- Makuhita - Double Team - TM32
  (296, 29600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Makuhita - Rock Tomb - TM39
  (296, 29600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 31),
  -- Makuhita - Facade - TM42
  (296, 29600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Makuhita - Rest - TM44
  (296, 29600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Makuhita - Attract - TM45
  (296, 29600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Makuhita - Low Sweep - TM47
  (296, 29600, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 35),
  -- Makuhita - Round - TM48
  (296, 29600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Makuhita - Focus Blast - TM52
  (296, 29600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 37),
  -- Makuhita - Fling - TM56
  (296, 29600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 38),
  -- Makuhita - Retaliate - TM67
  (296, 29600, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 39),
  -- Makuhita - Bulldoze - TM78
  (296, 29600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 40),
  -- Makuhita - Rock Slide - TM80
  (296, 29600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 41),
  -- Makuhita - Poison Jab - TM84
  (296, 29600, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 42),
  -- Makuhita - Swagger - TM87
  (296, 29600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Makuhita - Sleep Talk - TM88
  (296, 29600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Makuhita - Substitute - TM90
  (296, 29600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Makuhita - Rock Smash - TM94
  (296, 29600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 46),
  -- Makuhita - Power-Up Punch - TM98
  (296, 29600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 47),
  -- Makuhita - Confide - TM100
  (296, 29600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Makuhita - Surf - HM03
  (296, 29600, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 49),
  -- Makuhita - Strength - HM04
  (296, 29600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 50),
  -- Makuhita - Counter - Egg
  (296, 29600, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Makuhita - Feint Attack - Egg
  (296, 29600, 185, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Makuhita - Foresight - Egg
  (296, 29600, 193, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Makuhita - Detect - Egg
  (296, 29600, 197, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Makuhita - Dynamic Punch - Egg
  (296, 29600, 223, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Makuhita - Cross Chop - Egg
  (296, 29600, 238, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Makuhita - Focus Punch - Egg
  (296, 29600, 264, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Makuhita - Helping Hand - Egg
  (296, 29600, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Makuhita - Revenge - Egg
  (296, 29600, 279, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Makuhita - Wake-Up Slap - Egg
  (296, 29600, 358, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Makuhita - Feint - Egg
  (296, 29600, 364, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Makuhita - Bullet Punch - Egg
  (296, 29600, 418, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Makuhita - Wide Guard - Egg
  (296, 29600, 469, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Makuhita - Chip Away - Egg
  (296, 29600, 498, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Hariyama - Sand Attack - Level 1
  (297, 29700, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hariyama - Tackle - Level 1
  (297, 29700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hariyama - Focus Energy - Level 1
  (297, 29700, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hariyama - Arm Thrust - Level 1
  (297, 29700, 292, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hariyama - Brine - Level 1
  (297, 29700, 362, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hariyama - Sand Attack - Level 4
  (297, 29700, 28, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Hariyama - Arm Thrust - Level 7
  (297, 29700, 292, 13, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Hariyama - Vital Throw - Level 10
  (297, 29700, 233, 13, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Hariyama - Fake Out - Level 13
  (297, 29700, 252, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Hariyama - Whirlwind - Level 16
  (297, 29700, 18, 13, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Hariyama - Knock Off - Level 19
  (297, 29700, 282, 13, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Hariyama - Smelling Salts - Level 22
  (297, 29700, 265, 13, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Hariyama - Belly Drum - Level 27
  (297, 29700, 187, 13, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Hariyama - Force Palm - Level 32
  (297, 29700, 395, 13, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Hariyama - Seismic Toss - Level 37
  (297, 29700, 69, 13, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Hariyama - Wake-Up Slap - Level 42
  (297, 29700, 358, 13, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Hariyama - Endure - Level 47
  (297, 29700, 203, 13, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Hariyama - Close Combat - Level 52
  (297, 29700, 370, 13, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Hariyama - Reversal - Level 57
  (297, 29700, 179, 13, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Hariyama - Heavy Slam - Level 62
  (297, 29700, 484, 13, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Hariyama - Toxic - TM06
  (297, 29700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Hariyama - Bulk Up - TM08
  (297, 29700, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 22),
  -- Hariyama - Hidden Power - TM10
  (297, 29700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Hariyama - Sunny Day - TM11
  (297, 29700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Hariyama - Hyper Beam - TM15
  (297, 29700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Hariyama - Protect - TM17
  (297, 29700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Hariyama - Rain Dance - TM18
  (297, 29700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Hariyama - Frustration - TM21
  (297, 29700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Hariyama - Smack Down - TM23
  (297, 29700, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 29),
  -- Hariyama - Earthquake - TM26
  (297, 29700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Hariyama - Return - TM27
  (297, 29700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Hariyama - Dig - TM28
  (297, 29700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 32),
  -- Hariyama - Brick Break - TM31
  (297, 29700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Hariyama - Double Team - TM32
  (297, 29700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Hariyama - Rock Tomb - TM39
  (297, 29700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Hariyama - Facade - TM42
  (297, 29700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Hariyama - Rest - TM44
  (297, 29700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Hariyama - Attract - TM45
  (297, 29700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Hariyama - Low Sweep - TM47
  (297, 29700, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 39),
  -- Hariyama - Round - TM48
  (297, 29700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Hariyama - Focus Blast - TM52
  (297, 29700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 41),
  -- Hariyama - Fling - TM56
  (297, 29700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Hariyama - Payback - TM66
  (297, 29700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 43),
  -- Hariyama - Retaliate - TM67
  (297, 29700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 44),
  -- Hariyama - Giga Impact - TM68
  (297, 29700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 45),
  -- Hariyama - Stone Edge - TM71
  (297, 29700, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 46),
  -- Hariyama - Bulldoze - TM78
  (297, 29700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 47),
  -- Hariyama - Rock Slide - TM80
  (297, 29700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 48),
  -- Hariyama - Poison Jab - TM84
  (297, 29700, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 49),
  -- Hariyama - Swagger - TM87
  (297, 29700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Hariyama - Sleep Talk - TM88
  (297, 29700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Hariyama - Substitute - TM90
  (297, 29700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Hariyama - Rock Smash - TM94
  (297, 29700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 53),
  -- Hariyama - Power-Up Punch - TM98
  (297, 29700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 54),
  -- Hariyama - Confide - TM100
  (297, 29700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 55),
  -- Hariyama - Surf - HM03
  (297, 29700, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 56),
  -- Hariyama - Strength - HM04
  (297, 29700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 57),
  -- Azurill - Water Gun - Level 1
  (298, 29800, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azurill - Splash - Level 1
  (298, 29800, 150, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azurill - Tail Whip - Level 2
  (298, 29800, 39, 13, NULL, 1, 2, NULL, NULL, NULL, 3),
  -- Azurill - Water Sport - Level 5
  (298, 29800, 346, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Azurill - Bubble - Level 7
  (298, 29800, 145, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Azurill - Charm - Level 10
  (298, 29800, 204, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Azurill - Bubble Beam - Level 13
  (298, 29800, 61, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Azurill - Helping Hand - Level 16
  (298, 29800, 270, 13, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Azurill - Slam - Level 20
  (298, 29800, 21, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Azurill - Bounce - Level 23
  (298, 29800, 340, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Azurill - Toxic - TM06
  (298, 29800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 11),
  -- Azurill - Hail - TM07
  (298, 29800, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 12),
  -- Azurill - Hidden Power - TM10
  (298, 29800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 13),
  -- Azurill - Ice Beam - TM13
  (298, 29800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 14),
  -- Azurill - Blizzard - TM14
  (298, 29800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 15),
  -- Azurill - Light Screen - TM16
  (298, 29800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 16),
  -- Azurill - Protect - TM17
  (298, 29800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Azurill - Rain Dance - TM18
  (298, 29800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 18),
  -- Azurill - Frustration - TM21
  (298, 29800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Azurill - Return - TM27
  (298, 29800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 20),
  -- Azurill - Double Team - TM32
  (298, 29800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 21),
  -- Azurill - Facade - TM42
  (298, 29800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 22),
  -- Azurill - Rest - TM44
  (298, 29800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 23),
  -- Azurill - Attract - TM45
  (298, 29800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 24),
  -- Azurill - Round - TM48
  (298, 29800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 25),
  -- Azurill - Scald - TM55
  (298, 29800, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 26),
  -- Azurill - Swagger - TM87
  (298, 29800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 27),
  -- Azurill - Sleep Talk - TM88
  (298, 29800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 28),
  -- Azurill - Substitute - TM90
  (298, 29800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 29),
  -- Azurill - Confide - TM100
  (298, 29800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 30),
  -- Azurill - Surf - HM03
  (298, 29800, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 31),
  -- Azurill - Waterfall - HM05
  (298, 29800, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 32),
  -- Azurill - Slam - Egg
  (298, 29800, 21, 13, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Azurill - Body Slam - Egg
  (298, 29800, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Azurill - Sing - Egg
  (298, 29800, 47, 13, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Azurill - Encore - Egg
  (298, 29800, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Azurill - Refresh - Egg
  (298, 29800, 287, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Azurill - Camouflage - Egg
  (298, 29800, 293, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Azurill - Fake Tears - Egg
  (298, 29800, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Azurill - Tickle - Egg
  (298, 29800, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Azurill - Muddy Water - Egg
  (298, 29800, 330, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Azurill - Water Sport - Egg
  (298, 29800, 346, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Azurill - Copycat - Egg
  (298, 29800, 383, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Azurill - Soak - Egg
  (298, 29800, 487, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Nosepass - Tackle - Level 1
  (299, 29900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nosepass - Harden - Level 4
  (299, 29900, 106, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Nosepass - Block - Level 8
  (299, 29900, 335, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nosepass - Rock Throw - Level 11
  (299, 29900, 88, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Nosepass - Thunder Wave - Level 15
  (299, 29900, 86, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nosepass - Rock Blast - Level 18
  (299, 29900, 350, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Nosepass - Rest - Level 22
  (299, 29900, 156, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Nosepass - Spark - Level 25
  (299, 29900, 209, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Nosepass - Rock Slide - Level 29
  (299, 29900, 157, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Nosepass - Power Gem - Level 32
  (299, 29900, 408, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Nosepass - Sandstorm - Level 36
  (299, 29900, 201, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Nosepass - Discharge - Level 39
  (299, 29900, 435, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Nosepass - Earth Power - Level 43
  (299, 29900, 414, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Nosepass - Stone Edge - Level 46
  (299, 29900, 444, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Nosepass - Zap Cannon - Level 50
  (299, 29900, 192, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Nosepass - Lock-On - Level 50
  (299, 29900, 199, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Nosepass - Toxic - TM06
  (299, 29900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Nosepass - Hidden Power - TM10
  (299, 29900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Nosepass - Sunny Day - TM11
  (299, 29900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Nosepass - Taunt - TM12
  (299, 29900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Nosepass - Protect - TM17
  (299, 29900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Nosepass - Frustration - TM21
  (299, 29900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Nosepass - Smack Down - TM23
  (299, 29900, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 23),
  -- Nosepass - Thunderbolt - TM24
  (299, 29900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 24),
  -- Nosepass - Thunder - TM25
  (299, 29900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 25),
  -- Nosepass - Earthquake - TM26
  (299, 29900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 26),
  -- Nosepass - Return - TM27
  (299, 29900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Nosepass - Double Team - TM32
  (299, 29900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Nosepass - Sandstorm - TM37
  (299, 29900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 29),
  -- Nosepass - Rock Tomb - TM39
  (299, 29900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Nosepass - Torment - TM41
  (299, 29900, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 31),
  -- Nosepass - Facade - TM42
  (299, 29900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Nosepass - Rest - TM44
  (299, 29900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Nosepass - Attract - TM45
  (299, 29900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Nosepass - Round - TM48
  (299, 29900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Nosepass - Explosion - TM64
  (299, 29900, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 36),
  -- Nosepass - Rock Polish - TM69
  (299, 29900, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 37),
  -- Nosepass - Stone Edge - TM71
  (299, 29900, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 38),
  -- Nosepass - Volt Switch - TM72
  (299, 29900, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 39),
  -- Nosepass - Thunder Wave - TM73
  (299, 29900, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 40),
  -- Nosepass - Bulldoze - TM78
  (299, 29900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 41),
  -- Nosepass - Rock Slide - TM80
  (299, 29900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 42),
  -- Nosepass - Swagger - TM87
  (299, 29900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Nosepass - Sleep Talk - TM88
  (299, 29900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Nosepass - Substitute - TM90
  (299, 29900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Nosepass - Rock Smash - TM94
  (299, 29900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 46),
  -- Nosepass - Dazzling Gleam - TM99
  (299, 29900, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 47),
  -- Nosepass - Confide - TM100
  (299, 29900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Nosepass - Strength - HM04
  (299, 29900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 49),
  -- Nosepass - Double-Edge - Egg
  (299, 29900, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nosepass - Endure - Egg
  (299, 29900, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nosepass - Rollout - Egg
  (299, 29900, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nosepass - Magnitude - Egg
  (299, 29900, 222, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Nosepass - Block - Egg
  (299, 29900, 335, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Nosepass - Stealth Rock - Egg
  (299, 29900, 446, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Nosepass - Wide Guard - Egg
  (299, 29900, 469, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skitty - Tackle - Level 1
  (300, 30000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skitty - Tail Whip - Level 1
  (300, 30000, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skitty - Growl - Level 1
  (300, 30000, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skitty - Fake Out - Level 1
  (300, 30000, 252, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skitty - Foresight - Level 4
  (300, 30000, 193, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Skitty - Attract - Level 8
  (300, 30000, 213, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Skitty - Sing - Level 11
  (300, 30000, 47, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Skitty - Double Slap - Level 15
  (300, 30000, 3, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Skitty - Copycat - Level 18
  (300, 30000, 383, 13, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Skitty - Assist - Level 22
  (300, 30000, 274, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Skitty - Charm - Level 25
  (300, 30000, 204, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Skitty - Feint Attack - Level 29
  (300, 30000, 185, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Skitty - Wake-Up Slap - Level 32
  (300, 30000, 358, 13, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Skitty - Covet - Level 36
  (300, 30000, 343, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Skitty - Heal Bell - Level 39
  (300, 30000, 215, 13, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Skitty - Double-Edge - Level 42
  (300, 30000, 38, 13, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Skitty - Captivate - Level 46
  (300, 30000, 445, 13, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Skitty - Play Rough - Level 49
  (300, 30000, 583, 13, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Skitty - Calm Mind - TM04
  (300, 30000, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Skitty - Toxic - TM06
  (300, 30000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Skitty - Hidden Power - TM10
  (300, 30000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Skitty - Sunny Day - TM11
  (300, 30000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Skitty - Ice Beam - TM13
  (300, 30000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 23),
  -- Skitty - Blizzard - TM14
  (300, 30000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 24),
  -- Skitty - Protect - TM17
  (300, 30000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Skitty - Rain Dance - TM18
  (300, 30000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Skitty - Safeguard - TM20
  (300, 30000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Skitty - Frustration - TM21
  (300, 30000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Skitty - Solar Beam - TM22
  (300, 30000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 29),
  -- Skitty - Thunderbolt - TM24
  (300, 30000, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 30),
  -- Skitty - Thunder - TM25
  (300, 30000, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 31),
  -- Skitty - Return - TM27
  (300, 30000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Skitty - Dig - TM28
  (300, 30000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 33),
  -- Skitty - Shadow Ball - TM30
  (300, 30000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 34),
  -- Skitty - Double Team - TM32
  (300, 30000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Skitty - Facade - TM42
  (300, 30000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Skitty - Rest - TM44
  (300, 30000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Skitty - Attract - TM45
  (300, 30000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Skitty - Round - TM48
  (300, 30000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Skitty - Echoed Voice - TM49
  (300, 30000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 40),
  -- Skitty - Charge Beam - TM57
  (300, 30000, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 41),
  -- Skitty - Payback - TM66
  (300, 30000, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 42),
  -- Skitty - Retaliate - TM67
  (300, 30000, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 43),
  -- Skitty - Flash - TM70
  (300, 30000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 44),
  -- Skitty - Thunder Wave - TM73
  (300, 30000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 45),
  -- Skitty - Psych Up - TM77
  (300, 30000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 46),
  -- Skitty - Dream Eater - TM85
  (300, 30000, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 47),
  -- Skitty - Grass Knot - TM86
  (300, 30000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 48),
  -- Skitty - Swagger - TM87
  (300, 30000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Skitty - Sleep Talk - TM88
  (300, 30000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Skitty - Substitute - TM90
  (300, 30000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Skitty - Wild Charge - TM93
  (300, 30000, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 52),
  -- Skitty - Confide - TM100
  (300, 30000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Skitty - Baton Pass - Egg
  (300, 30000, 226, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skitty - Fake Out - Egg
  (300, 30000, 252, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skitty - Uproar - Egg
  (300, 30000, 253, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skitty - Helping Hand - Egg
  (300, 30000, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skitty - Wish - Egg
  (300, 30000, 273, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skitty - Fake Tears - Egg
  (300, 30000, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skitty - Tickle - Egg
  (300, 30000, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skitty - Cosmic Power - Egg
  (300, 30000, 322, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Skitty - Last Resort - Egg
  (300, 30000, 387, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Skitty - Sucker Punch - Egg
  (300, 30000, 389, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Skitty - Mud Bomb - Egg
  (300, 30000, 426, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Skitty - Zen Headbutt - Egg
  (300, 30000, 428, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Skitty - Captivate - Egg
  (300, 30000, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Skitty - Simple Beam - Egg
  (300, 30000, 493, 13, NULL, 5, NULL, NULL, NULL, NULL, 67);
