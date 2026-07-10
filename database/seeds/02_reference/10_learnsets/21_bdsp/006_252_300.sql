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
-- Brilliant Diamond / Shining Pearl learnsets for default forms, species 252-300.
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
  -- Treecko - Pound - Starting Move
  (252, 25200, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Treecko - Leer - Starting Move
  (252, 25200, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Treecko - Leafage - Level 3
  (252, 25200, 670, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Treecko - Quick Attack - Level 6
  (252, 25200, 98, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Treecko - Mega Drain - Level 9
  (252, 25200, 72, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Treecko - Detect - Level 12
  (252, 25200, 197, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Treecko - Quick Guard - Level 15
  (252, 25200, 501, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Treecko - Assurance - Level 18
  (252, 25200, 372, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Treecko - Giga Drain - Level 21
  (252, 25200, 202, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Treecko - Slam - Level 24
  (252, 25200, 21, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Treecko - Double Team - Level 27
  (252, 25200, 104, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Treecko - Energy Ball - Level 30
  (252, 25200, 412, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Treecko - Screech - Level 33
  (252, 25200, 103, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Treecko - Endeavor - Level 36
  (252, 25200, 283, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Treecko - Leaf Storm - Level 39
  (252, 25200, 437, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Treecko - Focus Punch - TM01
  (252, 25200, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Treecko - Bullet Seed - TM09
  (252, 25200, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 17),
  -- Treecko - Work Up - TM10
  (252, 25200, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Treecko - Sunny Day - TM11
  (252, 25200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Treecko - Protect - TM17
  (252, 25200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Treecko - Giga Drain - TM19
  (252, 25200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 21),
  -- Treecko - Safeguard - TM20
  (252, 25200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Treecko - Solar Beam - TM22
  (252, 25200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Treecko - Iron Tail - TM23
  (252, 25200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Treecko - Dig - TM28
  (252, 25200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Treecko - Brick Break - TM31
  (252, 25200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Treecko - Double Team - TM32
  (252, 25200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Treecko - Rock Tomb - TM39
  (252, 25200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Treecko - Aerial Ace - TM40
  (252, 25200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Treecko - Facade - TM42
  (252, 25200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Treecko - Rest - TM44
  (252, 25200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Treecko - Attract - TM45
  (252, 25200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Treecko - Energy Ball - TM53
  (252, 25200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 33),
  -- Treecko - Fling - TM56
  (252, 25200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Treecko - Endure - TM58
  (252, 25200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Treecko - Drain Punch - TM60
  (252, 25200, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 36),
  -- Treecko - Flash - TM70
  (252, 25200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Treecko - Swords Dance - TM75
  (252, 25200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 38),
  -- Treecko - Rock Slide - TM80
  (252, 25200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Treecko - Sleep Talk - TM82
  (252, 25200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Treecko - Grass Knot - TM86
  (252, 25200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 41),
  -- Treecko - Swagger - TM87
  (252, 25200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Treecko - Substitute - TM90
  (252, 25200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Treecko - Cut - TM93
  (252, 25200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Treecko - Strength - TM96
  (252, 25200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Treecko - Rock Smash - TM98
  (252, 25200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Treecko - Absorb - Egg
  (252, 25200, 71, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Treecko - Crunch - Egg
  (252, 25200, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Treecko - Crush Claw - Egg
  (252, 25200, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Treecko - Double Kick - Egg
  (252, 25200, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Treecko - Dragon Breath - Egg
  (252, 25200, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Treecko - Endeavor - Egg
  (252, 25200, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Treecko - Grassy Terrain - Egg
  (252, 25200, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Treecko - Leaf Storm - Egg
  (252, 25200, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Treecko - Leech Seed - Egg
  (252, 25200, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Treecko - Magical Leaf - Egg
  (252, 25200, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Treecko - Night Slash - Egg
  (252, 25200, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Treecko - Slash - Egg
  (252, 25200, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Treecko - Synthesis - Egg
  (252, 25200, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Treecko - Worry Seed - Egg
  (252, 25200, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Grovyle - Fury Cutter - Starting Move
  (253, 25300, 210, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Grovyle - False Swipe - Starting Move
  (253, 25300, 206, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Grovyle - X-Scissor - Starting Move
  (253, 25300, 404, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Grovyle - Energy Ball - Starting Move
  (253, 25300, 412, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Grovyle - Pound - Starting Move
  (253, 25300, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Grovyle - Leer - Starting Move
  (253, 25300, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Grovyle - Leafage - Starting Move
  (253, 25300, 670, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Grovyle - Quick Attack - Starting Move
  (253, 25300, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Grovyle - Mega Drain - Level 9
  (253, 25300, 72, 21, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Grovyle - Detect - Level 12
  (253, 25300, 197, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Grovyle - Quick Guard - Level 15
  (253, 25300, 501, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Grovyle - Assurance - Level 20
  (253, 25300, 372, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Grovyle - Giga Drain - Level 25
  (253, 25300, 202, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Grovyle - Slam - Level 30
  (253, 25300, 21, 21, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Grovyle - Double Team - Level 35
  (253, 25300, 104, 21, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Grovyle - Leaf Blade - Level 40
  (253, 25300, 348, 21, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Grovyle - Screech - Level 45
  (253, 25300, 103, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Grovyle - Endeavor - Level 50
  (253, 25300, 283, 21, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Grovyle - Leaf Storm - Level 55
  (253, 25300, 437, 21, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Grovyle - Focus Punch - TM01
  (253, 25300, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Grovyle - Bullet Seed - TM09
  (253, 25300, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 21),
  -- Grovyle - Work Up - TM10
  (253, 25300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Grovyle - Sunny Day - TM11
  (253, 25300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Grovyle - Protect - TM17
  (253, 25300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Grovyle - Giga Drain - TM19
  (253, 25300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 25),
  -- Grovyle - Safeguard - TM20
  (253, 25300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 26),
  -- Grovyle - Solar Beam - TM22
  (253, 25300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 27),
  -- Grovyle - Iron Tail - TM23
  (253, 25300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 28),
  -- Grovyle - Low Sweep - TM27
  (253, 25300, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 29),
  -- Grovyle - Dig - TM28
  (253, 25300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Grovyle - Brick Break - TM31
  (253, 25300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Grovyle - Double Team - TM32
  (253, 25300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Grovyle - Rock Tomb - TM39
  (253, 25300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Grovyle - Aerial Ace - TM40
  (253, 25300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 34),
  -- Grovyle - Facade - TM42
  (253, 25300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Grovyle - Rest - TM44
  (253, 25300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Grovyle - Attract - TM45
  (253, 25300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 37),
  -- Grovyle - Energy Ball - TM53
  (253, 25300, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 38),
  -- Grovyle - False Swipe - TM54
  (253, 25300, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 39),
  -- Grovyle - Fling - TM56
  (253, 25300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Grovyle - Endure - TM58
  (253, 25300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Grovyle - Drain Punch - TM60
  (253, 25300, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 42),
  -- Grovyle - Flash - TM70
  (253, 25300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 43),
  -- Grovyle - Swords Dance - TM75
  (253, 25300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 44),
  -- Grovyle - Rock Slide - TM80
  (253, 25300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 45),
  -- Grovyle - X-Scissor - TM81
  (253, 25300, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 46),
  -- Grovyle - Sleep Talk - TM82
  (253, 25300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Grovyle - Grass Knot - TM86
  (253, 25300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 48),
  -- Grovyle - Swagger - TM87
  (253, 25300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Grovyle - Substitute - TM90
  (253, 25300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Grovyle - Cut - TM93
  (253, 25300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 51),
  -- Grovyle - Strength - TM96
  (253, 25300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 52),
  -- Grovyle - Rock Smash - TM98
  (253, 25300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 53),
  -- Grovyle - Absorb - Egg
  (253, 25300, 71, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Grovyle - Crunch - Egg
  (253, 25300, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Grovyle - Crush Claw - Egg
  (253, 25300, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Grovyle - Double Kick - Egg
  (253, 25300, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grovyle - Dragon Breath - Egg
  (253, 25300, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Grovyle - Endeavor - Egg
  (253, 25300, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Grovyle - Grassy Terrain - Egg
  (253, 25300, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Grovyle - Leaf Storm - Egg
  (253, 25300, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Grovyle - Leech Seed - Egg
  (253, 25300, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Grovyle - Magical Leaf - Egg
  (253, 25300, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Grovyle - Night Slash - Egg
  (253, 25300, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Grovyle - Slash - Egg
  (253, 25300, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Grovyle - Synthesis - Egg
  (253, 25300, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Grovyle - Worry Seed - Egg
  (253, 25300, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sceptile - Dual Chop - Starting Move
  (254, 25400, 530, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Sceptile - Fury Cutter - Starting Move
  (254, 25400, 210, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Sceptile - False Swipe - Starting Move
  (254, 25400, 206, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Sceptile - X-Scissor - Starting Move
  (254, 25400, 404, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Sceptile - Energy Ball - Starting Move
  (254, 25400, 412, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Sceptile - Pound - Starting Move
  (254, 25400, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Sceptile - Leer - Starting Move
  (254, 25400, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Sceptile - Leafage - Starting Move
  (254, 25400, 670, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Sceptile - Quick Attack - Starting Move
  (254, 25400, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Sceptile - Dual Chop - Evolution
  (254, 25400, 530, 21, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Sceptile - Mega Drain - Level 5
  (254, 25400, 72, 21, NULL, 1, 5, NULL, NULL, NULL, 11),
  -- Sceptile - Detect - Level 12
  (254, 25400, 197, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Sceptile - Quick Guard - Level 15
  (254, 25400, 501, 21, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Sceptile - Assurance - Level 20
  (254, 25400, 372, 21, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Sceptile - Giga Drain - Level 25
  (254, 25400, 202, 21, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Sceptile - Slam - Level 30
  (254, 25400, 21, 21, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Sceptile - Double Team - Level 35
  (254, 25400, 104, 21, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Sceptile - Leaf Blade - Level 42
  (254, 25400, 348, 21, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Sceptile - Screech - Level 49
  (254, 25400, 103, 21, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Sceptile - Endeavor - Level 56
  (254, 25400, 283, 21, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Sceptile - Leaf Storm - Level 63
  (254, 25400, 437, 21, NULL, 1, 63, NULL, NULL, NULL, 21),
  -- Sceptile - Focus Punch - TM01
  (254, 25400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Sceptile - Dragon Claw - TM02
  (254, 25400, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 23),
  -- Sceptile - Roar - TM05
  (254, 25400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 24),
  -- Sceptile - Bullet Seed - TM09
  (254, 25400, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 25),
  -- Sceptile - Work Up - TM10
  (254, 25400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 26),
  -- Sceptile - Sunny Day - TM11
  (254, 25400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 27),
  -- Sceptile - Hyper Beam - TM15
  (254, 25400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Sceptile - Protect - TM17
  (254, 25400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Sceptile - Giga Drain - TM19
  (254, 25400, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 30),
  -- Sceptile - Safeguard - TM20
  (254, 25400, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 31),
  -- Sceptile - Solar Beam - TM22
  (254, 25400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 32),
  -- Sceptile - Iron Tail - TM23
  (254, 25400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 33),
  -- Sceptile - Earthquake - TM26
  (254, 25400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 34),
  -- Sceptile - Low Sweep - TM27
  (254, 25400, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 35),
  -- Sceptile - Dig - TM28
  (254, 25400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 36),
  -- Sceptile - Brick Break - TM31
  (254, 25400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 37),
  -- Sceptile - Double Team - TM32
  (254, 25400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 38),
  -- Sceptile - Rock Tomb - TM39
  (254, 25400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 39),
  -- Sceptile - Aerial Ace - TM40
  (254, 25400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 40),
  -- Sceptile - Facade - TM42
  (254, 25400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 41),
  -- Sceptile - Rest - TM44
  (254, 25400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 42),
  -- Sceptile - Attract - TM45
  (254, 25400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 43),
  -- Sceptile - Focus Blast - TM52
  (254, 25400, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 44),
  -- Sceptile - Energy Ball - TM53
  (254, 25400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 45),
  -- Sceptile - False Swipe - TM54
  (254, 25400, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 46),
  -- Sceptile - Fling - TM56
  (254, 25400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 47),
  -- Sceptile - Endure - TM58
  (254, 25400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 48),
  -- Sceptile - Dragon Pulse - TM59
  (254, 25400, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 49),
  -- Sceptile - Drain Punch - TM60
  (254, 25400, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 50),
  -- Sceptile - Giga Impact - TM68
  (254, 25400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 51),
  -- Sceptile - Flash - TM70
  (254, 25400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 52),
  -- Sceptile - Swords Dance - TM75
  (254, 25400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 53),
  -- Sceptile - Rock Slide - TM80
  (254, 25400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 54),
  -- Sceptile - X-Scissor - TM81
  (254, 25400, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 55),
  -- Sceptile - Sleep Talk - TM82
  (254, 25400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 56),
  -- Sceptile - Bulldoze - TM83
  (254, 25400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 57),
  -- Sceptile - Grass Knot - TM86
  (254, 25400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 58),
  -- Sceptile - Swagger - TM87
  (254, 25400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 59),
  -- Sceptile - Substitute - TM90
  (254, 25400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 60),
  -- Sceptile - Cut - TM93
  (254, 25400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 61),
  -- Sceptile - Strength - TM96
  (254, 25400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 62),
  -- Sceptile - Rock Smash - TM98
  (254, 25400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 63),
  -- Sceptile - Rock Climb - TM100
  (254, 25400, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 64),
  -- Sceptile - Absorb - Egg
  (254, 25400, 71, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sceptile - Crunch - Egg
  (254, 25400, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sceptile - Crush Claw - Egg
  (254, 25400, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sceptile - Double Kick - Egg
  (254, 25400, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sceptile - Dragon Breath - Egg
  (254, 25400, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sceptile - Endeavor - Egg
  (254, 25400, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Sceptile - Grassy Terrain - Egg
  (254, 25400, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Sceptile - Leaf Storm - Egg
  (254, 25400, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Sceptile - Leech Seed - Egg
  (254, 25400, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Sceptile - Magical Leaf - Egg
  (254, 25400, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Sceptile - Night Slash - Egg
  (254, 25400, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Sceptile - Slash - Egg
  (254, 25400, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Sceptile - Synthesis - Egg
  (254, 25400, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Sceptile - Worry Seed - Egg
  (254, 25400, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Torchic - Scratch - Starting Move
  (255, 25500, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Torchic - Growl - Starting Move
  (255, 25500, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Torchic - Ember - Level 3
  (255, 25500, 52, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Torchic - Quick Attack - Level 6
  (255, 25500, 98, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Torchic - Flame Charge - Level 9
  (255, 25500, 488, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Torchic - Detect - Level 12
  (255, 25500, 197, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Torchic - Sand Attack - Level 15
  (255, 25500, 28, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Torchic - Aerial Ace - Level 18
  (255, 25500, 332, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Torchic - Slash - Level 21
  (255, 25500, 163, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Torchic - Bounce - Level 24
  (255, 25500, 340, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Torchic - Focus Energy - Level 27
  (255, 25500, 116, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Torchic - Flamethrower - Level 30
  (255, 25500, 53, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Torchic - Feather Dance - Level 33
  (255, 25500, 297, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Torchic - Reversal - Level 36
  (255, 25500, 179, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Torchic - Flare Blitz - Level 39
  (255, 25500, 394, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Torchic - Work Up - TM10
  (255, 25500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 16),
  -- Torchic - Sunny Day - TM11
  (255, 25500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Torchic - Protect - TM17
  (255, 25500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Torchic - Dig - TM28
  (255, 25500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 19),
  -- Torchic - Double Team - TM32
  (255, 25500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Torchic - Flamethrower - TM35
  (255, 25500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 21),
  -- Torchic - Fire Blast - TM38
  (255, 25500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 22),
  -- Torchic - Rock Tomb - TM39
  (255, 25500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 23),
  -- Torchic - Aerial Ace - TM40
  (255, 25500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 24),
  -- Torchic - Facade - TM42
  (255, 25500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Torchic - Rest - TM44
  (255, 25500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Torchic - Attract - TM45
  (255, 25500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Torchic - Overheat - TM50
  (255, 25500, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 28),
  -- Torchic - Endure - TM58
  (255, 25500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Torchic - Will-O-Wisp - TM61
  (255, 25500, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 30),
  -- Torchic - Shadow Claw - TM65
  (255, 25500, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 31),
  -- Torchic - Swords Dance - TM75
  (255, 25500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 32),
  -- Torchic - Rock Slide - TM80
  (255, 25500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 33),
  -- Torchic - Sleep Talk - TM82
  (255, 25500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Torchic - Swagger - TM87
  (255, 25500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Torchic - Substitute - TM90
  (255, 25500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Torchic - Cut - TM93
  (255, 25500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 37),
  -- Torchic - Strength - TM96
  (255, 25500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 38),
  -- Torchic - Rock Smash - TM98
  (255, 25500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 39),
  -- Torchic - Agility - Egg
  (255, 25500, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Torchic - Baton Pass - Egg
  (255, 25500, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Torchic - Counter - Egg
  (255, 25500, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Torchic - Crush Claw - Egg
  (255, 25500, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Torchic - Curse - Egg
  (255, 25500, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Torchic - Feather Dance - Egg
  (255, 25500, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Torchic - Feint - Egg
  (255, 25500, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Torchic - Last Resort - Egg
  (255, 25500, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Torchic - Low Kick - Egg
  (255, 25500, 67, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Torchic - Night Slash - Egg
  (255, 25500, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Torchic - Peck - Egg
  (255, 25500, 64, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Torchic - Reversal - Egg
  (255, 25500, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Combusken - Double Kick - Starting Move
  (256, 25600, 24, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Combusken - Flamethrower - Starting Move
  (256, 25600, 53, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Combusken - Feather Dance - Starting Move
  (256, 25600, 297, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Combusken - Scratch - Starting Move
  (256, 25600, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Combusken - Growl - Starting Move
  (256, 25600, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Combusken - Ember - Starting Move
  (256, 25600, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Combusken - Quick Attack - Starting Move
  (256, 25600, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Combusken - Double Kick - Evolution
  (256, 25600, 24, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Combusken - Flame Charge - Level 9
  (256, 25600, 488, 21, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Combusken - Detect - Level 12
  (256, 25600, 197, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Combusken - Sand Attack - Level 15
  (256, 25600, 28, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Combusken - Aerial Ace - Level 20
  (256, 25600, 332, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Combusken - Slash - Level 25
  (256, 25600, 163, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Combusken - Bounce - Level 30
  (256, 25600, 340, 21, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Combusken - Focus Energy - Level 35
  (256, 25600, 116, 21, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Combusken - Blaze Kick - Level 40
  (256, 25600, 299, 21, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Combusken - Bulk Up - Level 45
  (256, 25600, 339, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Combusken - Reversal - Level 50
  (256, 25600, 179, 21, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Combusken - Flare Blitz - Level 55
  (256, 25600, 394, 21, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Combusken - Focus Punch - TM01
  (256, 25600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Combusken - Bulk Up - TM08
  (256, 25600, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 21),
  -- Combusken - Work Up - TM10
  (256, 25600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Combusken - Sunny Day - TM11
  (256, 25600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Combusken - Protect - TM17
  (256, 25600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Combusken - Low Sweep - TM27
  (256, 25600, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 25),
  -- Combusken - Dig - TM28
  (256, 25600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Combusken - Brick Break - TM31
  (256, 25600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Combusken - Double Team - TM32
  (256, 25600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Combusken - Flamethrower - TM35
  (256, 25600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 29),
  -- Combusken - Fire Blast - TM38
  (256, 25600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 30),
  -- Combusken - Rock Tomb - TM39
  (256, 25600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 31),
  -- Combusken - Aerial Ace - TM40
  (256, 25600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 32),
  -- Combusken - Facade - TM42
  (256, 25600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Combusken - Rest - TM44
  (256, 25600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Combusken - Attract - TM45
  (256, 25600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Combusken - Overheat - TM50
  (256, 25600, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 36),
  -- Combusken - Focus Blast - TM52
  (256, 25600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Combusken - Fling - TM56
  (256, 25600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Combusken - Endure - TM58
  (256, 25600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Combusken - Will-O-Wisp - TM61
  (256, 25600, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 40),
  -- Combusken - Shadow Claw - TM65
  (256, 25600, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 41),
  -- Combusken - Swords Dance - TM75
  (256, 25600, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 42),
  -- Combusken - Rock Slide - TM80
  (256, 25600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Combusken - Sleep Talk - TM82
  (256, 25600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Combusken - Poison Jab - TM84
  (256, 25600, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 45),
  -- Combusken - Swagger - TM87
  (256, 25600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Combusken - Substitute - TM90
  (256, 25600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Combusken - Cut - TM93
  (256, 25600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 48),
  -- Combusken - Strength - TM96
  (256, 25600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Combusken - Rock Smash - TM98
  (256, 25600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Combusken - Agility - Egg
  (256, 25600, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Combusken - Baton Pass - Egg
  (256, 25600, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Combusken - Counter - Egg
  (256, 25600, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Combusken - Crush Claw - Egg
  (256, 25600, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Combusken - Curse - Egg
  (256, 25600, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Combusken - Feather Dance - Egg
  (256, 25600, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Combusken - Feint - Egg
  (256, 25600, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Combusken - Last Resort - Egg
  (256, 25600, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Combusken - Low Kick - Egg
  (256, 25600, 67, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Combusken - Night Slash - Egg
  (256, 25600, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Combusken - Peck - Egg
  (256, 25600, 64, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Combusken - Reversal - Egg
  (256, 25600, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Blaziken - Close Combat - Starting Move
  (257, 25700, 370, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Blaziken - Double Kick - Starting Move
  (257, 25700, 24, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Blaziken - Fire Punch - Starting Move
  (257, 25700, 7, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Blaziken - Brave Bird - Starting Move
  (257, 25700, 413, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Blaziken - Flamethrower - Starting Move
  (257, 25700, 53, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Blaziken - Feather Dance - Starting Move
  (257, 25700, 297, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Blaziken - Scratch - Starting Move
  (257, 25700, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Blaziken - Growl - Starting Move
  (257, 25700, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Blaziken - Ember - Starting Move
  (257, 25700, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Blaziken - Quick Attack - Starting Move
  (257, 25700, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Blaziken - Flame Charge - Level 9
  (257, 25700, 488, 21, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Blaziken - Detect - Level 12
  (257, 25700, 197, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Blaziken - Sand Attack - Level 15
  (257, 25700, 28, 21, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Blaziken - Aerial Ace - Level 20
  (257, 25700, 332, 21, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Blaziken - Slash - Level 25
  (257, 25700, 163, 21, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Blaziken - Bounce - Level 30
  (257, 25700, 340, 21, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Blaziken - Focus Energy - Level 35
  (257, 25700, 116, 21, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Blaziken - Blaze Kick - Level 42
  (257, 25700, 299, 21, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Blaziken - Bulk Up - Level 49
  (257, 25700, 339, 21, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Blaziken - Reversal - Level 56
  (257, 25700, 179, 21, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Blaziken - Flare Blitz - Level 63
  (257, 25700, 394, 21, NULL, 1, 63, NULL, NULL, NULL, 21),
  -- Blaziken - Focus Punch - TM01
  (257, 25700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Blaziken - Roar - TM05
  (257, 25700, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 23),
  -- Blaziken - Bulk Up - TM08
  (257, 25700, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 24),
  -- Blaziken - Work Up - TM10
  (257, 25700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 25),
  -- Blaziken - Sunny Day - TM11
  (257, 25700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 26),
  -- Blaziken - Hyper Beam - TM15
  (257, 25700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Blaziken - Protect - TM17
  (257, 25700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Blaziken - Solar Beam - TM22
  (257, 25700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Blaziken - Earthquake - TM26
  (257, 25700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 30),
  -- Blaziken - Low Sweep - TM27
  (257, 25700, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 31),
  -- Blaziken - Dig - TM28
  (257, 25700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Blaziken - Brick Break - TM31
  (257, 25700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 33),
  -- Blaziken - Double Team - TM32
  (257, 25700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Blaziken - Flamethrower - TM35
  (257, 25700, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 35),
  -- Blaziken - Fire Blast - TM38
  (257, 25700, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 36),
  -- Blaziken - Rock Tomb - TM39
  (257, 25700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 37),
  -- Blaziken - Aerial Ace - TM40
  (257, 25700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 38),
  -- Blaziken - Facade - TM42
  (257, 25700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Blaziken - Rest - TM44
  (257, 25700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Blaziken - Attract - TM45
  (257, 25700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 41),
  -- Blaziken - Overheat - TM50
  (257, 25700, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 42),
  -- Blaziken - Focus Blast - TM52
  (257, 25700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 43),
  -- Blaziken - Fling - TM56
  (257, 25700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 44),
  -- Blaziken - Endure - TM58
  (257, 25700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 45),
  -- Blaziken - Will-O-Wisp - TM61
  (257, 25700, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 46),
  -- Blaziken - Shadow Claw - TM65
  (257, 25700, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 47),
  -- Blaziken - Giga Impact - TM68
  (257, 25700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 48),
  -- Blaziken - Stone Edge - TM71
  (257, 25700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 49),
  -- Blaziken - Swords Dance - TM75
  (257, 25700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 50),
  -- Blaziken - Rock Slide - TM80
  (257, 25700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 51),
  -- Blaziken - Sleep Talk - TM82
  (257, 25700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 52),
  -- Blaziken - Bulldoze - TM83
  (257, 25700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 53),
  -- Blaziken - Poison Jab - TM84
  (257, 25700, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 54),
  -- Blaziken - Swagger - TM87
  (257, 25700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 55),
  -- Blaziken - U-turn - TM89
  (257, 25700, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 56),
  -- Blaziken - Substitute - TM90
  (257, 25700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 57),
  -- Blaziken - Cut - TM93
  (257, 25700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 58),
  -- Blaziken - Strength - TM96
  (257, 25700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 59),
  -- Blaziken - Rock Smash - TM98
  (257, 25700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 60),
  -- Blaziken - Rock Climb - TM100
  (257, 25700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 61),
  -- Blaziken - Agility - Egg
  (257, 25700, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Blaziken - Baton Pass - Egg
  (257, 25700, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Blaziken - Counter - Egg
  (257, 25700, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Blaziken - Crush Claw - Egg
  (257, 25700, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Blaziken - Curse - Egg
  (257, 25700, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Blaziken - Feather Dance - Egg
  (257, 25700, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Blaziken - Feint - Egg
  (257, 25700, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Blaziken - Last Resort - Egg
  (257, 25700, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Blaziken - Low Kick - Egg
  (257, 25700, 67, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Blaziken - Night Slash - Egg
  (257, 25700, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Blaziken - Peck - Egg
  (257, 25700, 64, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Blaziken - Reversal - Egg
  (257, 25700, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Mudkip - Tackle - Starting Move
  (258, 25800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mudkip - Growl - Starting Move
  (258, 25800, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mudkip - Water Gun - Level 3
  (258, 25800, 55, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Mudkip - Rock Smash - Level 6
  (258, 25800, 249, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Mudkip - Rock Throw - Level 9
  (258, 25800, 88, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Mudkip - Protect - Level 12
  (258, 25800, 182, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Mudkip - Supersonic - Level 15
  (258, 25800, 48, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Mudkip - Water Pulse - Level 18
  (258, 25800, 352, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mudkip - Rock Slide - Level 21
  (258, 25800, 157, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Mudkip - Take Down - Level 24
  (258, 25800, 36, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Mudkip - Amnesia - Level 27
  (258, 25800, 133, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Mudkip - Surf - Level 30
  (258, 25800, 57, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Mudkip - Screech - Level 33
  (258, 25800, 103, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Mudkip - Endeavor - Level 36
  (258, 25800, 283, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Mudkip - Hydro Pump - Level 39
  (258, 25800, 56, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Mudkip - Water Pulse - TM03
  (258, 25800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Mudkip - Hail - TM07
  (258, 25800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Mudkip - Work Up - TM10
  (258, 25800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Mudkip - Ice Beam - TM13
  (258, 25800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Mudkip - Blizzard - TM14
  (258, 25800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Mudkip - Protect - TM17
  (258, 25800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Mudkip - Rain Dance - TM18
  (258, 25800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Mudkip - Iron Tail - TM23
  (258, 25800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Mudkip - Dig - TM28
  (258, 25800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Mudkip - Double Team - TM32
  (258, 25800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Mudkip - Rock Tomb - TM39
  (258, 25800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 26),
  -- Mudkip - Facade - TM42
  (258, 25800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Mudkip - Rest - TM44
  (258, 25800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Mudkip - Attract - TM45
  (258, 25800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Mudkip - Scald - TM49
  (258, 25800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 30),
  -- Mudkip - Endure - TM58
  (258, 25800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Mudkip - Avalanche - TM72
  (258, 25800, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 32),
  -- Mudkip - Rock Slide - TM80
  (258, 25800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 33),
  -- Mudkip - Sleep Talk - TM82
  (258, 25800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Mudkip - Swagger - TM87
  (258, 25800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Mudkip - Substitute - TM90
  (258, 25800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Mudkip - Surf - TM95
  (258, 25800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 37),
  -- Mudkip - Strength - TM96
  (258, 25800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 38),
  -- Mudkip - Rock Smash - TM98
  (258, 25800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 39),
  -- Mudkip - Waterfall - TM99
  (258, 25800, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 40),
  -- Mudkip - Ancient Power - Egg
  (258, 25800, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mudkip - Bite - Egg
  (258, 25800, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mudkip - Counter - Egg
  (258, 25800, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mudkip - Curse - Egg
  (258, 25800, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mudkip - Double-Edge - Egg
  (258, 25800, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mudkip - Mirror Coat - Egg
  (258, 25800, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mudkip - Mud-Slap - Egg
  (258, 25800, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mudkip - Sludge - Egg
  (258, 25800, 124, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mudkip - Stomp - Egg
  (258, 25800, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mudkip - Uproar - Egg
  (258, 25800, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mudkip - Whirlpool - Egg
  (258, 25800, 250, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mudkip - Wide Guard - Egg
  (258, 25800, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mudkip - Yawn - Egg
  (258, 25800, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Marshtomp - Mud Shot - Starting Move
  (259, 25900, 341, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Marshtomp - Earthquake - Starting Move
  (259, 25900, 89, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Marshtomp - Surf - Starting Move
  (259, 25900, 57, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Marshtomp - Tackle - Starting Move
  (259, 25900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Marshtomp - Growl - Starting Move
  (259, 25900, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Marshtomp - Water Gun - Starting Move
  (259, 25900, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Marshtomp - Rock Smash - Starting Move
  (259, 25900, 249, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Marshtomp - Mud Shot - Evolution
  (259, 25900, 341, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Marshtomp - Rock Throw - Level 9
  (259, 25900, 88, 21, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Marshtomp - Protect - Level 12
  (259, 25900, 182, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Marshtomp - Supersonic - Level 15
  (259, 25900, 48, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Marshtomp - Water Pulse - Level 20
  (259, 25900, 352, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Marshtomp - Rock Slide - Level 25
  (259, 25900, 157, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Marshtomp - Take Down - Level 30
  (259, 25900, 36, 21, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Marshtomp - Amnesia - Level 35
  (259, 25900, 133, 21, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Marshtomp - Muddy Water - Level 40
  (259, 25900, 330, 21, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Marshtomp - Screech - Level 45
  (259, 25900, 103, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Marshtomp - Endeavor - Level 50
  (259, 25900, 283, 21, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Marshtomp - Hydro Pump - Level 55
  (259, 25900, 56, 21, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Marshtomp - Water Pulse - TM03
  (259, 25900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Marshtomp - Hail - TM07
  (259, 25900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 21),
  -- Marshtomp - Work Up - TM10
  (259, 25900, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Marshtomp - Ice Beam - TM13
  (259, 25900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Marshtomp - Blizzard - TM14
  (259, 25900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Marshtomp - Protect - TM17
  (259, 25900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Marshtomp - Rain Dance - TM18
  (259, 25900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Marshtomp - Iron Tail - TM23
  (259, 25900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 27),
  -- Marshtomp - Earthquake - TM26
  (259, 25900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 28),
  -- Marshtomp - Dig - TM28
  (259, 25900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Marshtomp - Brick Break - TM31
  (259, 25900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 30),
  -- Marshtomp - Double Team - TM32
  (259, 25900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Marshtomp - Rock Tomb - TM39
  (259, 25900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Marshtomp - Facade - TM42
  (259, 25900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Marshtomp - Rest - TM44
  (259, 25900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Marshtomp - Attract - TM45
  (259, 25900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Marshtomp - Scald - TM49
  (259, 25900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 36),
  -- Marshtomp - Fling - TM56
  (259, 25900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Marshtomp - Endure - TM58
  (259, 25900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Marshtomp - Avalanche - TM72
  (259, 25900, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 39),
  -- Marshtomp - Stealth Rock - TM76
  (259, 25900, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 40),
  -- Marshtomp - Rock Slide - TM80
  (259, 25900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Marshtomp - Sleep Talk - TM82
  (259, 25900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Marshtomp - Bulldoze - TM83
  (259, 25900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Marshtomp - Swagger - TM87
  (259, 25900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Marshtomp - Substitute - TM90
  (259, 25900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Marshtomp - Surf - TM95
  (259, 25900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 46),
  -- Marshtomp - Strength - TM96
  (259, 25900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Marshtomp - Rock Smash - TM98
  (259, 25900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Marshtomp - Waterfall - TM99
  (259, 25900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 49),
  -- Marshtomp - Ancient Power - Egg
  (259, 25900, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Marshtomp - Bite - Egg
  (259, 25900, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Marshtomp - Counter - Egg
  (259, 25900, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Marshtomp - Curse - Egg
  (259, 25900, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Marshtomp - Double-Edge - Egg
  (259, 25900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Marshtomp - Mirror Coat - Egg
  (259, 25900, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Marshtomp - Mud-Slap - Egg
  (259, 25900, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Marshtomp - Sludge - Egg
  (259, 25900, 124, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Marshtomp - Stomp - Egg
  (259, 25900, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Marshtomp - Uproar - Egg
  (259, 25900, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Marshtomp - Whirlpool - Egg
  (259, 25900, 250, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Marshtomp - Wide Guard - Egg
  (259, 25900, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Marshtomp - Yawn - Egg
  (259, 25900, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Swampert - Mud Shot - Starting Move
  (260, 26000, 341, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Swampert - Hammer Arm - Starting Move
  (260, 26000, 359, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Swampert - Earthquake - Starting Move
  (260, 26000, 89, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Swampert - Surf - Starting Move
  (260, 26000, 57, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Swampert - Tackle - Starting Move
  (260, 26000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Swampert - Growl - Starting Move
  (260, 26000, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Swampert - Water Gun - Starting Move
  (260, 26000, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Swampert - Rock Smash - Starting Move
  (260, 26000, 249, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Swampert - Rock Throw - Level 9
  (260, 26000, 88, 21, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Swampert - Protect - Level 12
  (260, 26000, 182, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Swampert - Supersonic - Level 15
  (260, 26000, 48, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Swampert - Water Pulse - Level 20
  (260, 26000, 352, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Swampert - Rock Slide - Level 25
  (260, 26000, 157, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Swampert - Take Down - Level 30
  (260, 26000, 36, 21, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Swampert - Amnesia - Level 35
  (260, 26000, 133, 21, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Swampert - Muddy Water - Level 42
  (260, 26000, 330, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Swampert - Screech - Level 49
  (260, 26000, 103, 21, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Swampert - Endeavor - Level 56
  (260, 26000, 283, 21, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Swampert - Hydro Pump - Level 63
  (260, 26000, 56, 21, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Swampert - Focus Punch - TM01
  (260, 26000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Swampert - Water Pulse - TM03
  (260, 26000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 21),
  -- Swampert - Roar - TM05
  (260, 26000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 22),
  -- Swampert - Hail - TM07
  (260, 26000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 23),
  -- Swampert - Bulk Up - TM08
  (260, 26000, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 24),
  -- Swampert - Work Up - TM10
  (260, 26000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 25),
  -- Swampert - Ice Beam - TM13
  (260, 26000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 26),
  -- Swampert - Blizzard - TM14
  (260, 26000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 27),
  -- Swampert - Hyper Beam - TM15
  (260, 26000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Swampert - Protect - TM17
  (260, 26000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Swampert - Rain Dance - TM18
  (260, 26000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 30),
  -- Swampert - Iron Tail - TM23
  (260, 26000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 31),
  -- Swampert - Earthquake - TM26
  (260, 26000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 32),
  -- Swampert - Dig - TM28
  (260, 26000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 33),
  -- Swampert - Brick Break - TM31
  (260, 26000, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Swampert - Double Team - TM32
  (260, 26000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Swampert - Rock Tomb - TM39
  (260, 26000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 36),
  -- Swampert - Facade - TM42
  (260, 26000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Swampert - Rest - TM44
  (260, 26000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Swampert - Attract - TM45
  (260, 26000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Swampert - Scald - TM49
  (260, 26000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 40),
  -- Swampert - Focus Blast - TM52
  (260, 26000, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 41),
  -- Swampert - Fling - TM56
  (260, 26000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Swampert - Endure - TM58
  (260, 26000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Swampert - Giga Impact - TM68
  (260, 26000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Swampert - Stone Edge - TM71
  (260, 26000, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 45),
  -- Swampert - Avalanche - TM72
  (260, 26000, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 46),
  -- Swampert - Stealth Rock - TM76
  (260, 26000, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 47),
  -- Swampert - Rock Slide - TM80
  (260, 26000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 48),
  -- Swampert - Sleep Talk - TM82
  (260, 26000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Swampert - Bulldoze - TM83
  (260, 26000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 50),
  -- Swampert - Swagger - TM87
  (260, 26000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Swampert - Substitute - TM90
  (260, 26000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Swampert - Surf - TM95
  (260, 26000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 53),
  -- Swampert - Strength - TM96
  (260, 26000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Swampert - Rock Smash - TM98
  (260, 26000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 55),
  -- Swampert - Waterfall - TM99
  (260, 26000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 56),
  -- Swampert - Rock Climb - TM100
  (260, 26000, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 57),
  -- Swampert - Ancient Power - Egg
  (260, 26000, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Swampert - Bite - Egg
  (260, 26000, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Swampert - Counter - Egg
  (260, 26000, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Swampert - Curse - Egg
  (260, 26000, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Swampert - Double-Edge - Egg
  (260, 26000, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Swampert - Mirror Coat - Egg
  (260, 26000, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Swampert - Mud-Slap - Egg
  (260, 26000, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Swampert - Sludge - Egg
  (260, 26000, 124, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Swampert - Stomp - Egg
  (260, 26000, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Swampert - Uproar - Egg
  (260, 26000, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Swampert - Whirlpool - Egg
  (260, 26000, 250, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Swampert - Wide Guard - Egg
  (260, 26000, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Swampert - Yawn - Egg
  (260, 26000, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Poochyena - Tackle - Starting Move
  (261, 26100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Poochyena - Howl - Level 4
  (261, 26100, 336, 21, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Poochyena - Sand Attack - Level 7
  (261, 26100, 28, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Poochyena - Bite - Level 10
  (261, 26100, 44, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Poochyena - Mud-Slap - Level 13
  (261, 26100, 189, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Poochyena - Roar - Level 16
  (261, 26100, 46, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Poochyena - Swagger - Level 19
  (261, 26100, 207, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Poochyena - Assurance - Level 22
  (261, 26100, 372, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Poochyena - Scary Face - Level 25
  (261, 26100, 184, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Poochyena - Headbutt - Level 28
  (261, 26100, 29, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Poochyena - Taunt - Level 31
  (261, 26100, 269, 21, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Poochyena - Crunch - Level 34
  (261, 26100, 242, 21, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Poochyena - Yawn - Level 37
  (261, 26100, 281, 21, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Poochyena - Take Down - Level 40
  (261, 26100, 36, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Poochyena - Sucker Punch - Level 43
  (261, 26100, 389, 21, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Poochyena - Play Rough - Level 46
  (261, 26100, 583, 21, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Poochyena - Roar - TM05
  (261, 26100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Poochyena - Sunny Day - TM11
  (261, 26100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Poochyena - Taunt - TM12
  (261, 26100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Poochyena - Protect - TM17
  (261, 26100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Poochyena - Rain Dance - TM18
  (261, 26100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Poochyena - Iron Tail - TM23
  (261, 26100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Poochyena - Dig - TM28
  (261, 26100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 23),
  -- Poochyena - Shadow Ball - TM30
  (261, 26100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Poochyena - Double Team - TM32
  (261, 26100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Poochyena - Torment - TM41
  (261, 26100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 26),
  -- Poochyena - Facade - TM42
  (261, 26100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Poochyena - Rest - TM44
  (261, 26100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Poochyena - Attract - TM45
  (261, 26100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Poochyena - Thief - TM46
  (261, 26100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Poochyena - Endure - TM58
  (261, 26100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Poochyena - Nasty Plot - TM63
  (261, 26100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 32),
  -- Poochyena - Payback - TM66
  (261, 26100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 33),
  -- Poochyena - Snarl - TM78
  (261, 26100, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 34),
  -- Poochyena - Dark Pulse - TM79
  (261, 26100, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 35),
  -- Poochyena - Sleep Talk - TM82
  (261, 26100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 36),
  -- Poochyena - Swagger - TM87
  (261, 26100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Poochyena - Substitute - TM90
  (261, 26100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Poochyena - Rock Smash - TM98
  (261, 26100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 39),
  -- Poochyena - Astonish - Egg
  (261, 26100, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Poochyena - Covet - Egg
  (261, 26100, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Poochyena - Fire Fang - Egg
  (261, 26100, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Poochyena - Ice Fang - Egg
  (261, 26100, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Poochyena - Leer - Egg
  (261, 26100, 43, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Poochyena - Play Rough - Egg
  (261, 26100, 583, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poochyena - Poison Fang - Egg
  (261, 26100, 305, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poochyena - Sucker Punch - Egg
  (261, 26100, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poochyena - Thunder Fang - Egg
  (261, 26100, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Poochyena - Yawn - Egg
  (261, 26100, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mightyena - Snarl - Starting Move
  (262, 26200, 555, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mightyena - Fire Fang - Starting Move
  (262, 26200, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mightyena - Thunder Fang - Starting Move
  (262, 26200, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Mightyena - Ice Fang - Starting Move
  (262, 26200, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Mightyena - Crunch - Starting Move
  (262, 26200, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Mightyena - Thief - Starting Move
  (262, 26200, 168, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Mightyena - Tackle - Starting Move
  (262, 26200, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Mightyena - Howl - Starting Move
  (262, 26200, 336, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Mightyena - Sand Attack - Starting Move
  (262, 26200, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Mightyena - Bite - Starting Move
  (262, 26200, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Mightyena - Snarl - Evolution
  (262, 26200, 555, 21, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Mightyena - Howl - Level 4
  (262, 26200, 336, 21, NULL, 1, 4, NULL, NULL, NULL, 12),
  -- Mightyena - Sand Attack - Level 7
  (262, 26200, 28, 21, NULL, 1, 7, NULL, NULL, NULL, 13),
  -- Mightyena - Bite - Level 10
  (262, 26200, 44, 21, NULL, 1, 10, NULL, NULL, NULL, 14),
  -- Mightyena - Mud-Slap - Level 13
  (262, 26200, 189, 21, NULL, 1, 13, NULL, NULL, NULL, 15),
  -- Mightyena - Roar - Level 16
  (262, 26200, 46, 21, NULL, 1, 16, NULL, NULL, NULL, 16),
  -- Mightyena - Swagger - Level 20
  (262, 26200, 207, 21, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Mightyena - Assurance - Level 24
  (262, 26200, 372, 21, NULL, 1, 24, NULL, NULL, NULL, 18),
  -- Mightyena - Scary Face - Level 28
  (262, 26200, 184, 21, NULL, 1, 28, NULL, NULL, NULL, 19),
  -- Mightyena - Headbutt - Level 32
  (262, 26200, 29, 21, NULL, 1, 32, NULL, NULL, NULL, 20),
  -- Mightyena - Taunt - Level 36
  (262, 26200, 269, 21, NULL, 1, 36, NULL, NULL, NULL, 21),
  -- Mightyena - Crunch - Level 40
  (262, 26200, 242, 21, NULL, 1, 40, NULL, NULL, NULL, 22),
  -- Mightyena - Yawn - Level 44
  (262, 26200, 281, 21, NULL, 1, 44, NULL, NULL, NULL, 23),
  -- Mightyena - Take Down - Level 48
  (262, 26200, 36, 21, NULL, 1, 48, NULL, NULL, NULL, 24),
  -- Mightyena - Sucker Punch - Level 52
  (262, 26200, 389, 21, NULL, 1, 52, NULL, NULL, NULL, 25),
  -- Mightyena - Play Rough - Level 56
  (262, 26200, 583, 21, NULL, 1, 56, NULL, NULL, NULL, 26),
  -- Mightyena - Roar - TM05
  (262, 26200, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 27),
  -- Mightyena - Sunny Day - TM11
  (262, 26200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 28),
  -- Mightyena - Taunt - TM12
  (262, 26200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 29),
  -- Mightyena - Hyper Beam - TM15
  (262, 26200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 30),
  -- Mightyena - Protect - TM17
  (262, 26200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 31),
  -- Mightyena - Rain Dance - TM18
  (262, 26200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 32),
  -- Mightyena - Iron Tail - TM23
  (262, 26200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 33),
  -- Mightyena - Dig - TM28
  (262, 26200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 34),
  -- Mightyena - Shadow Ball - TM30
  (262, 26200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 35),
  -- Mightyena - Double Team - TM32
  (262, 26200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 36),
  -- Mightyena - Torment - TM41
  (262, 26200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 37),
  -- Mightyena - Facade - TM42
  (262, 26200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 38),
  -- Mightyena - Rest - TM44
  (262, 26200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 39),
  -- Mightyena - Attract - TM45
  (262, 26200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 40),
  -- Mightyena - Thief - TM46
  (262, 26200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 41),
  -- Mightyena - Endure - TM58
  (262, 26200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Mightyena - Nasty Plot - TM63
  (262, 26200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 43),
  -- Mightyena - Payback - TM66
  (262, 26200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 44),
  -- Mightyena - Giga Impact - TM68
  (262, 26200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 45),
  -- Mightyena - Snarl - TM78
  (262, 26200, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 46),
  -- Mightyena - Dark Pulse - TM79
  (262, 26200, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 47),
  -- Mightyena - Sleep Talk - TM82
  (262, 26200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 48),
  -- Mightyena - Swagger - TM87
  (262, 26200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Mightyena - Substitute - TM90
  (262, 26200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Mightyena - Strength - TM96
  (262, 26200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 51),
  -- Mightyena - Rock Smash - TM98
  (262, 26200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 52),
  -- Mightyena - Astonish - Egg
  (262, 26200, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mightyena - Covet - Egg
  (262, 26200, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mightyena - Fire Fang - Egg
  (262, 26200, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mightyena - Ice Fang - Egg
  (262, 26200, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mightyena - Leer - Egg
  (262, 26200, 43, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mightyena - Play Rough - Egg
  (262, 26200, 583, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mightyena - Poison Fang - Egg
  (262, 26200, 305, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mightyena - Sucker Punch - Egg
  (262, 26200, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mightyena - Thunder Fang - Egg
  (262, 26200, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mightyena - Yawn - Egg
  (262, 26200, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Zigzagoon - Tackle - Starting Move
  (263, 26300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Zigzagoon - Growl - Starting Move
  (263, 26300, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Zigzagoon - Sand Attack - Level 3
  (263, 26300, 28, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Zigzagoon - Tail Whip - Level 6
  (263, 26300, 39, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Zigzagoon - Covet - Level 9
  (263, 26300, 343, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Zigzagoon - Headbutt - Level 12
  (263, 26300, 29, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Zigzagoon - Baby-Doll Eyes - Level 15
  (263, 26300, 608, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Zigzagoon - Pin Missile - Level 18
  (263, 26300, 42, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Zigzagoon - Rest - Level 21
  (263, 26300, 156, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Zigzagoon - Take Down - Level 24
  (263, 26300, 36, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Zigzagoon - Fling - Level 27
  (263, 26300, 374, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Zigzagoon - Flail - Level 30
  (263, 26300, 175, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Zigzagoon - Belly Drum - Level 33
  (263, 26300, 187, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Zigzagoon - Double-Edge - Level 36
  (263, 26300, 38, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Zigzagoon - Water Pulse - TM03
  (263, 26300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Zigzagoon - Work Up - TM10
  (263, 26300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 16),
  -- Zigzagoon - Sunny Day - TM11
  (263, 26300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Zigzagoon - Ice Beam - TM13
  (263, 26300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Zigzagoon - Blizzard - TM14
  (263, 26300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Zigzagoon - Protect - TM17
  (263, 26300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Zigzagoon - Rain Dance - TM18
  (263, 26300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Zigzagoon - Iron Tail - TM23
  (263, 26300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Zigzagoon - Thunderbolt - TM24
  (263, 26300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 23),
  -- Zigzagoon - Thunder - TM25
  (263, 26300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 24),
  -- Zigzagoon - Dig - TM28
  (263, 26300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Zigzagoon - Shadow Ball - TM30
  (263, 26300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Zigzagoon - Double Team - TM32
  (263, 26300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Zigzagoon - Shock Wave - TM34
  (263, 26300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 28),
  -- Zigzagoon - Facade - TM42
  (263, 26300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Zigzagoon - Rest - TM44
  (263, 26300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Zigzagoon - Attract - TM45
  (263, 26300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Zigzagoon - Thief - TM46
  (263, 26300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Zigzagoon - Fling - TM56
  (263, 26300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 33),
  -- Zigzagoon - Charge Beam - TM57
  (263, 26300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 34),
  -- Zigzagoon - Endure - TM58
  (263, 26300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Zigzagoon - Thunder Wave - TM73
  (263, 26300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 36),
  -- Zigzagoon - Sleep Talk - TM82
  (263, 26300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Zigzagoon - Grass Knot - TM86
  (263, 26300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 38),
  -- Zigzagoon - Swagger - TM87
  (263, 26300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Zigzagoon - Substitute - TM90
  (263, 26300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Zigzagoon - Cut - TM93
  (263, 26300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 41),
  -- Zigzagoon - Surf - TM95
  (263, 26300, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 42),
  -- Zigzagoon - Rock Smash - TM98
  (263, 26300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 43),
  -- Zigzagoon - Charm - Egg
  (263, 26300, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Zigzagoon - Extreme Speed - Egg
  (263, 26300, 245, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Zigzagoon - Helping Hand - Egg
  (263, 26300, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Zigzagoon - Mud-Slap - Egg
  (263, 26300, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Zigzagoon - Simple Beam - Egg
  (263, 26300, 493, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Zigzagoon - Tickle - Egg
  (263, 26300, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Zigzagoon - Trick - Egg
  (263, 26300, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Linoone - Slash - Starting Move
  (264, 26400, 163, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Linoone - Switcheroo - Starting Move
  (264, 26400, 415, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Linoone - Pin Missile - Starting Move
  (264, 26400, 42, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Linoone - Baby-Doll Eyes - Starting Move
  (264, 26400, 608, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Linoone - Tackle - Starting Move
  (264, 26400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Linoone - Growl - Starting Move
  (264, 26400, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Linoone - Sand Attack - Starting Move
  (264, 26400, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Linoone - Tail Whip - Starting Move
  (264, 26400, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Linoone - Slash - Evolution
  (264, 26400, 163, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Linoone - Covet - Level 9
  (264, 26400, 343, 21, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Linoone - Headbutt - Level 12
  (264, 26400, 29, 21, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Linoone - Hone Claws - Level 15
  (264, 26400, 468, 21, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Linoone - Fury Swipes - Level 18
  (264, 26400, 154, 21, NULL, 1, 18, NULL, NULL, NULL, 13),
  -- Linoone - Rest - Level 23
  (264, 26400, 156, 21, NULL, 1, 23, NULL, NULL, NULL, 14),
  -- Linoone - Take Down - Level 28
  (264, 26400, 36, 21, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Linoone - Fling - Level 33
  (264, 26400, 374, 21, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Linoone - Flail - Level 38
  (264, 26400, 175, 21, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Linoone - Belly Drum - Level 43
  (264, 26400, 187, 21, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Linoone - Double-Edge - Level 48
  (264, 26400, 38, 21, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Linoone - Water Pulse - TM03
  (264, 26400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Linoone - Roar - TM05
  (264, 26400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 21),
  -- Linoone - Work Up - TM10
  (264, 26400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Linoone - Sunny Day - TM11
  (264, 26400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Linoone - Ice Beam - TM13
  (264, 26400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 24),
  -- Linoone - Blizzard - TM14
  (264, 26400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 25),
  -- Linoone - Hyper Beam - TM15
  (264, 26400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Linoone - Protect - TM17
  (264, 26400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Linoone - Rain Dance - TM18
  (264, 26400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Linoone - Iron Tail - TM23
  (264, 26400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Linoone - Thunderbolt - TM24
  (264, 26400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 30),
  -- Linoone - Thunder - TM25
  (264, 26400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 31),
  -- Linoone - Dig - TM28
  (264, 26400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Linoone - Shadow Ball - TM30
  (264, 26400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Linoone - Double Team - TM32
  (264, 26400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Linoone - Shock Wave - TM34
  (264, 26400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 35),
  -- Linoone - Facade - TM42
  (264, 26400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Linoone - Rest - TM44
  (264, 26400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Linoone - Attract - TM45
  (264, 26400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Linoone - Thief - TM46
  (264, 26400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 39),
  -- Linoone - Fling - TM56
  (264, 26400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Linoone - Charge Beam - TM57
  (264, 26400, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 41),
  -- Linoone - Endure - TM58
  (264, 26400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Linoone - Shadow Claw - TM65
  (264, 26400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 43),
  -- Linoone - Giga Impact - TM68
  (264, 26400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Linoone - Thunder Wave - TM73
  (264, 26400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 45),
  -- Linoone - Sleep Talk - TM82
  (264, 26400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Linoone - Grass Knot - TM86
  (264, 26400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 47),
  -- Linoone - Swagger - TM87
  (264, 26400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Linoone - Substitute - TM90
  (264, 26400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Linoone - Cut - TM93
  (264, 26400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 50),
  -- Linoone - Surf - TM95
  (264, 26400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 51),
  -- Linoone - Strength - TM96
  (264, 26400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 52),
  -- Linoone - Rock Smash - TM98
  (264, 26400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 53),
  -- Linoone - Charm - Egg
  (264, 26400, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Linoone - Extreme Speed - Egg
  (264, 26400, 245, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Linoone - Helping Hand - Egg
  (264, 26400, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Linoone - Mud-Slap - Egg
  (264, 26400, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Linoone - Simple Beam - Egg
  (264, 26400, 493, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Linoone - Tickle - Egg
  (264, 26400, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Linoone - Trick - Egg
  (264, 26400, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Wurmple - Tackle - Starting Move
  (265, 26500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Wurmple - String Shot - Starting Move
  (265, 26500, 81, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Wurmple - Poison Sting - Level 5
  (265, 26500, 40, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wurmple - Bug Bite - Level 15
  (265, 26500, 450, 21, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Silcoon - Harden - Starting Move
  (266, 26600, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Silcoon - Harden - Evolution
  (266, 26600, 106, 21, NULL, 7, NULL, NULL, NULL, NULL, 2),
  -- Beautifly - Gust - Starting Move
  (267, 26700, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Beautifly - Tackle - Starting Move
  (267, 26700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Beautifly - String Shot - Starting Move
  (267, 26700, 81, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Beautifly - Harden - Starting Move
  (267, 26700, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Beautifly - Poison Sting - Starting Move
  (267, 26700, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Beautifly - Bug Bite - Starting Move
  (267, 26700, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Beautifly - Gust - Evolution
  (267, 26700, 16, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Beautifly - Absorb - Level 12
  (267, 26700, 71, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Beautifly - Stun Spore - Level 15
  (267, 26700, 78, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Beautifly - Morning Sun - Level 17
  (267, 26700, 234, 21, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Beautifly - Air Cutter - Level 20
  (267, 26700, 314, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Beautifly - Mega Drain - Level 22
  (267, 26700, 72, 21, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Beautifly - Leech Life - Level 25
  (267, 26700, 141, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Beautifly - Attract - Level 27
  (267, 26700, 213, 21, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Beautifly - Whirlwind - Level 30
  (267, 26700, 18, 21, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Beautifly - Giga Drain - Level 32
  (267, 26700, 202, 21, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Beautifly - Bug Buzz - Level 35
  (267, 26700, 405, 21, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Beautifly - Protect - Level 37
  (267, 26700, 182, 21, NULL, 1, 37, NULL, NULL, NULL, 18),
  -- Beautifly - Quiver Dance - Level 40
  (267, 26700, 483, 21, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Beautifly - Sunny Day - TM11
  (267, 26700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Beautifly - Hyper Beam - TM15
  (267, 26700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Beautifly - Protect - TM17
  (267, 26700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Beautifly - Giga Drain - TM19
  (267, 26700, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 23),
  -- Beautifly - Safeguard - TM20
  (267, 26700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Beautifly - Solar Beam - TM22
  (267, 26700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 25),
  -- Beautifly - Psychic - TM29
  (267, 26700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 26),
  -- Beautifly - Shadow Ball - TM30
  (267, 26700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Beautifly - Double Team - TM32
  (267, 26700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Beautifly - Aerial Ace - TM40
  (267, 26700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Beautifly - Facade - TM42
  (267, 26700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Beautifly - Rest - TM44
  (267, 26700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Beautifly - Attract - TM45
  (267, 26700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Beautifly - Thief - TM46
  (267, 26700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Beautifly - Roost - TM51
  (267, 26700, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 34),
  -- Beautifly - Energy Ball - TM53
  (267, 26700, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 35),
  -- Beautifly - Endure - TM58
  (267, 26700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Beautifly - Bug Buzz - TM62
  (267, 26700, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 37),
  -- Beautifly - Giga Impact - TM68
  (267, 26700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Beautifly - Flash - TM70
  (267, 26700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 39),
  -- Beautifly - Sleep Talk - TM82
  (267, 26700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Beautifly - Swagger - TM87
  (267, 26700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Beautifly - U-turn - TM89
  (267, 26700, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 42),
  -- Beautifly - Substitute - TM90
  (267, 26700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Beautifly - Defog - TM97
  (267, 26700, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 44),
  -- Cascoon - Harden - Starting Move
  (268, 26800, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cascoon - Harden - Evolution
  (268, 26800, 106, 21, NULL, 7, NULL, NULL, NULL, NULL, 2),
  -- Dustox - Gust - Starting Move
  (269, 26900, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Dustox - Tackle - Starting Move
  (269, 26900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Dustox - String Shot - Starting Move
  (269, 26900, 81, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Dustox - Harden - Starting Move
  (269, 26900, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Dustox - Poison Sting - Starting Move
  (269, 26900, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Dustox - Bug Bite - Starting Move
  (269, 26900, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Dustox - Gust - Evolution
  (269, 26900, 16, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Dustox - Confusion - Level 12
  (269, 26900, 93, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Dustox - Poison Powder - Level 15
  (269, 26900, 77, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Dustox - Moonlight - Level 17
  (269, 26900, 236, 21, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Dustox - Venoshock - Level 20
  (269, 26900, 474, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Dustox - Psybeam - Level 22
  (269, 26900, 60, 21, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Dustox - Leech Life - Level 25
  (269, 26900, 141, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Dustox - Light Screen - Level 27
  (269, 26900, 113, 21, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Dustox - Whirlwind - Level 30
  (269, 26900, 18, 21, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Dustox - Toxic - Level 32
  (269, 26900, 92, 21, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Dustox - Bug Buzz - Level 35
  (269, 26900, 405, 21, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Dustox - Protect - Level 37
  (269, 26900, 182, 21, NULL, 1, 37, NULL, NULL, NULL, 18),
  -- Dustox - Quiver Dance - Level 40
  (269, 26900, 483, 21, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Dustox - Toxic - TM06
  (269, 26900, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 20),
  -- Dustox - Sunny Day - TM11
  (269, 26900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Dustox - Hyper Beam - TM15
  (269, 26900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Dustox - Light Screen - TM16
  (269, 26900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 23),
  -- Dustox - Protect - TM17
  (269, 26900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Dustox - Giga Drain - TM19
  (269, 26900, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 25),
  -- Dustox - Solar Beam - TM22
  (269, 26900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Dustox - Psychic - TM29
  (269, 26900, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Dustox - Shadow Ball - TM30
  (269, 26900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Dustox - Double Team - TM32
  (269, 26900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Dustox - Sludge Bomb - TM36
  (269, 26900, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 30),
  -- Dustox - Aerial Ace - TM40
  (269, 26900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Dustox - Facade - TM42
  (269, 26900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Dustox - Rest - TM44
  (269, 26900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Dustox - Attract - TM45
  (269, 26900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Dustox - Thief - TM46
  (269, 26900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Dustox - Roost - TM51
  (269, 26900, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 36),
  -- Dustox - Energy Ball - TM53
  (269, 26900, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 37),
  -- Dustox - Endure - TM58
  (269, 26900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Dustox - Bug Buzz - TM62
  (269, 26900, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 39),
  -- Dustox - Giga Impact - TM68
  (269, 26900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Dustox - Flash - TM70
  (269, 26900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 41),
  -- Dustox - Sleep Talk - TM82
  (269, 26900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Dustox - Swagger - TM87
  (269, 26900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Dustox - U-turn - TM89
  (269, 26900, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 44),
  -- Dustox - Substitute - TM90
  (269, 26900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Dustox - Defog - TM97
  (269, 26900, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 46),
  -- Lotad - Astonish - Starting Move
  (270, 27000, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lotad - Growl - Starting Move
  (270, 27000, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lotad - Absorb - Level 3
  (270, 27000, 71, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Lotad - Water Gun - Level 6
  (270, 27000, 55, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Lotad - Mist - Level 9
  (270, 27000, 54, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Lotad - Mega Drain - Level 12
  (270, 27000, 72, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Lotad - Flail - Level 16
  (270, 27000, 175, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Lotad - Bubble Beam - Level 20
  (270, 27000, 61, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Lotad - Nature Power - Level 24
  (270, 27000, 267, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Lotad - Giga Drain - Level 28
  (270, 27000, 202, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Lotad - Rain Dance - Level 33
  (270, 27000, 240, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Lotad - Zen Headbutt - Level 38
  (270, 27000, 428, 21, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Lotad - Energy Ball - Level 43
  (270, 27000, 412, 21, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Lotad - Water Pulse - TM03
  (270, 27000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Lotad - Hail - TM07
  (270, 27000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 15),
  -- Lotad - Bullet Seed - TM09
  (270, 27000, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 16),
  -- Lotad - Sunny Day - TM11
  (270, 27000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Lotad - Ice Beam - TM13
  (270, 27000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Lotad - Blizzard - TM14
  (270, 27000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Lotad - Protect - TM17
  (270, 27000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Lotad - Rain Dance - TM18
  (270, 27000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Lotad - Giga Drain - TM19
  (270, 27000, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 22),
  -- Lotad - Solar Beam - TM22
  (270, 27000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Lotad - Double Team - TM32
  (270, 27000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Lotad - Facade - TM42
  (270, 27000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Lotad - Rest - TM44
  (270, 27000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Lotad - Attract - TM45
  (270, 27000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Lotad - Thief - TM46
  (270, 27000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 28),
  -- Lotad - Scald - TM49
  (270, 27000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 29),
  -- Lotad - Energy Ball - TM53
  (270, 27000, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 30),
  -- Lotad - Endure - TM58
  (270, 27000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Lotad - Flash - TM70
  (270, 27000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Lotad - Swords Dance - TM75
  (270, 27000, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 33),
  -- Lotad - Sleep Talk - TM82
  (270, 27000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Lotad - Grass Knot - TM86
  (270, 27000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 35),
  -- Lotad - Swagger - TM87
  (270, 27000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Lotad - Substitute - TM90
  (270, 27000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Lotad - Surf - TM95
  (270, 27000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 38),
  -- Lotad - Counter - Egg
  (270, 27000, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Lotad - Flail - Egg
  (270, 27000, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Lotad - Leech Seed - Egg
  (270, 27000, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Lotad - Razor Leaf - Egg
  (270, 27000, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Lotad - Sweet Scent - Egg
  (270, 27000, 230, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lotad - Synthesis - Egg
  (270, 27000, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lotad - Teeter Dance - Egg
  (270, 27000, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lotad - Tickle - Egg
  (270, 27000, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lotad - Water Gun - Egg
  (270, 27000, 55, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lombre - Teeter Dance - Starting Move
  (271, 27100, 298, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lombre - Fake Out - Starting Move
  (271, 27100, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lombre - Knock Off - Starting Move
  (271, 27100, 282, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Lombre - Flail - Starting Move
  (271, 27100, 175, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Lombre - Astonish - Starting Move
  (271, 27100, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Lombre - Growl - Starting Move
  (271, 27100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Lombre - Absorb - Starting Move
  (271, 27100, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Lombre - Water Gun - Starting Move
  (271, 27100, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Lombre - Mist - Level 9
  (271, 27100, 54, 21, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Lombre - Mega Drain - Level 12
  (271, 27100, 72, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Lombre - Fury Swipes - Level 18
  (271, 27100, 154, 21, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Lombre - Bubble Beam - Level 24
  (271, 27100, 61, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Lombre - Nature Power - Level 30
  (271, 27100, 267, 21, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Lombre - Giga Drain - Level 36
  (271, 27100, 202, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Lombre - Rain Dance - Level 43
  (271, 27100, 240, 21, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Lombre - Zen Headbutt - Level 50
  (271, 27100, 428, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Lombre - Energy Ball - Level 57
  (271, 27100, 412, 21, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Lombre - Hydro Pump - Level 64
  (271, 27100, 56, 21, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Lombre - Water Pulse - TM03
  (271, 27100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Lombre - Hail - TM07
  (271, 27100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 20),
  -- Lombre - Bullet Seed - TM09
  (271, 27100, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 21),
  -- Lombre - Sunny Day - TM11
  (271, 27100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Lombre - Ice Beam - TM13
  (271, 27100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Lombre - Blizzard - TM14
  (271, 27100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Lombre - Protect - TM17
  (271, 27100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Lombre - Rain Dance - TM18
  (271, 27100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Lombre - Giga Drain - TM19
  (271, 27100, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Lombre - Solar Beam - TM22
  (271, 27100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Lombre - Brick Break - TM31
  (271, 27100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Lombre - Double Team - TM32
  (271, 27100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Lombre - Facade - TM42
  (271, 27100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Lombre - Rest - TM44
  (271, 27100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Lombre - Attract - TM45
  (271, 27100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Lombre - Thief - TM46
  (271, 27100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Lombre - Scald - TM49
  (271, 27100, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 35),
  -- Lombre - Energy Ball - TM53
  (271, 27100, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 36),
  -- Lombre - Fling - TM56
  (271, 27100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Lombre - Endure - TM58
  (271, 27100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Lombre - Drain Punch - TM60
  (271, 27100, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 39),
  -- Lombre - Flash - TM70
  (271, 27100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 40),
  -- Lombre - Swords Dance - TM75
  (271, 27100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 41),
  -- Lombre - Sleep Talk - TM82
  (271, 27100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Lombre - Grass Knot - TM86
  (271, 27100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 43),
  -- Lombre - Swagger - TM87
  (271, 27100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Lombre - Substitute - TM90
  (271, 27100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Lombre - Surf - TM95
  (271, 27100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 46),
  -- Lombre - Strength - TM96
  (271, 27100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Lombre - Rock Smash - TM98
  (271, 27100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Lombre - Waterfall - TM99
  (271, 27100, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 49),
  -- Lombre - Counter - Egg
  (271, 27100, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lombre - Flail - Egg
  (271, 27100, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lombre - Leech Seed - Egg
  (271, 27100, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lombre - Razor Leaf - Egg
  (271, 27100, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lombre - Sweet Scent - Egg
  (271, 27100, 230, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Lombre - Synthesis - Egg
  (271, 27100, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Lombre - Teeter Dance - Egg
  (271, 27100, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lombre - Tickle - Egg
  (271, 27100, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Lombre - Water Gun - Egg
  (271, 27100, 55, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ludicolo - Teeter Dance - Starting Move
  (272, 27200, 298, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ludicolo - Fake Out - Starting Move
  (272, 27200, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ludicolo - Knock Off - Starting Move
  (272, 27200, 282, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Ludicolo - Flail - Starting Move
  (272, 27200, 175, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Ludicolo - Mist - Starting Move
  (272, 27200, 54, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Ludicolo - Mega Drain - Starting Move
  (272, 27200, 72, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Ludicolo - Fury Swipes - Starting Move
  (272, 27200, 154, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Ludicolo - Bubble Beam - Starting Move
  (272, 27200, 61, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Ludicolo - Nature Power - Starting Move
  (272, 27200, 267, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Ludicolo - Giga Drain - Starting Move
  (272, 27200, 202, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Ludicolo - Rain Dance - Starting Move
  (272, 27200, 240, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Ludicolo - Zen Headbutt - Starting Move
  (272, 27200, 428, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Ludicolo - Energy Ball - Starting Move
  (272, 27200, 412, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Ludicolo - Hydro Pump - Starting Move
  (272, 27200, 56, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Ludicolo - Astonish - Starting Move
  (272, 27200, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Ludicolo - Growl - Starting Move
  (272, 27200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Ludicolo - Absorb - Starting Move
  (272, 27200, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Ludicolo - Water Gun - Starting Move
  (272, 27200, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 18),
  -- Ludicolo - Focus Punch - TM01
  (272, 27200, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 19),
  -- Ludicolo - Water Pulse - TM03
  (272, 27200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Ludicolo - Hail - TM07
  (272, 27200, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 21),
  -- Ludicolo - Bullet Seed - TM09
  (272, 27200, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 22),
  -- Ludicolo - Sunny Day - TM11
  (272, 27200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Ludicolo - Ice Beam - TM13
  (272, 27200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 24),
  -- Ludicolo - Blizzard - TM14
  (272, 27200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 25),
  -- Ludicolo - Hyper Beam - TM15
  (272, 27200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Ludicolo - Protect - TM17
  (272, 27200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Ludicolo - Rain Dance - TM18
  (272, 27200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Ludicolo - Giga Drain - TM19
  (272, 27200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 29),
  -- Ludicolo - Solar Beam - TM22
  (272, 27200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 30),
  -- Ludicolo - Brick Break - TM31
  (272, 27200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Ludicolo - Double Team - TM32
  (272, 27200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Ludicolo - Facade - TM42
  (272, 27200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Ludicolo - Rest - TM44
  (272, 27200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Ludicolo - Attract - TM45
  (272, 27200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Ludicolo - Thief - TM46
  (272, 27200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Ludicolo - Scald - TM49
  (272, 27200, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 37),
  -- Ludicolo - Focus Blast - TM52
  (272, 27200, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 38),
  -- Ludicolo - Energy Ball - TM53
  (272, 27200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 39),
  -- Ludicolo - Fling - TM56
  (272, 27200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Ludicolo - Endure - TM58
  (272, 27200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Ludicolo - Drain Punch - TM60
  (272, 27200, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 42),
  -- Ludicolo - Giga Impact - TM68
  (272, 27200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Ludicolo - Flash - TM70
  (272, 27200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 44),
  -- Ludicolo - Swords Dance - TM75
  (272, 27200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 45),
  -- Ludicolo - Sleep Talk - TM82
  (272, 27200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Ludicolo - Grass Knot - TM86
  (272, 27200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 47),
  -- Ludicolo - Swagger - TM87
  (272, 27200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Ludicolo - Substitute - TM90
  (272, 27200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Ludicolo - Surf - TM95
  (272, 27200, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 50),
  -- Ludicolo - Strength - TM96
  (272, 27200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 51),
  -- Ludicolo - Rock Smash - TM98
  (272, 27200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 52),
  -- Ludicolo - Waterfall - TM99
  (272, 27200, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 53),
  -- Ludicolo - Rock Climb - TM100
  (272, 27200, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 54),
  -- Ludicolo - Counter - Egg
  (272, 27200, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ludicolo - Flail - Egg
  (272, 27200, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ludicolo - Leech Seed - Egg
  (272, 27200, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ludicolo - Razor Leaf - Egg
  (272, 27200, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ludicolo - Sweet Scent - Egg
  (272, 27200, 230, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ludicolo - Synthesis - Egg
  (272, 27200, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Ludicolo - Teeter Dance - Egg
  (272, 27200, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Ludicolo - Tickle - Egg
  (272, 27200, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Ludicolo - Water Gun - Egg
  (272, 27200, 55, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Seedot - Tackle - Starting Move
  (273, 27300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Seedot - Harden - Starting Move
  (273, 27300, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Seedot - Absorb - Level 3
  (273, 27300, 71, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Seedot - Astonish - Level 6
  (273, 27300, 310, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Seedot - Growth - Level 9
  (273, 27300, 74, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Seedot - Rollout - Level 12
  (273, 27300, 205, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Seedot - Mega Drain - Level 15
  (273, 27300, 72, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Seedot - Payback - Level 18
  (273, 27300, 371, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Seedot - Nature Power - Level 21
  (273, 27300, 267, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Seedot - Sunny Day - Level 24
  (273, 27300, 241, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Seedot - Synthesis - Level 27
  (273, 27300, 235, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Seedot - Sucker Punch - Level 30
  (273, 27300, 389, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Seedot - Explosion - Level 33
  (273, 27300, 153, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Seedot - Bullet Seed - TM09
  (273, 27300, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 14),
  -- Seedot - Sunny Day - TM11
  (273, 27300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Seedot - Protect - TM17
  (273, 27300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Seedot - Giga Drain - TM19
  (273, 27300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 17),
  -- Seedot - Solar Beam - TM22
  (273, 27300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 18),
  -- Seedot - Dig - TM28
  (273, 27300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 19),
  -- Seedot - Shadow Ball - TM30
  (273, 27300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 20),
  -- Seedot - Double Team - TM32
  (273, 27300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Seedot - Facade - TM42
  (273, 27300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 22),
  -- Seedot - Rest - TM44
  (273, 27300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 23),
  -- Seedot - Attract - TM45
  (273, 27300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 24),
  -- Seedot - Energy Ball - TM53
  (273, 27300, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 25),
  -- Seedot - False Swipe - TM54
  (273, 27300, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 26),
  -- Seedot - Endure - TM58
  (273, 27300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 27),
  -- Seedot - Nasty Plot - TM63
  (273, 27300, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 28),
  -- Seedot - Explosion - TM64
  (273, 27300, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 29),
  -- Seedot - Payback - TM66
  (273, 27300, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 30),
  -- Seedot - Flash - TM70
  (273, 27300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 31),
  -- Seedot - Swords Dance - TM75
  (273, 27300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 32),
  -- Seedot - Sleep Talk - TM82
  (273, 27300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Seedot - Grass Knot - TM86
  (273, 27300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 34),
  -- Seedot - Swagger - TM87
  (273, 27300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Seedot - Substitute - TM90
  (273, 27300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Seedot - Rock Smash - TM98
  (273, 27300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 37),
  -- Seedot - Amnesia - Egg
  (273, 27300, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Seedot - Beat Up - Egg
  (273, 27300, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Seedot - Foul Play - Egg
  (273, 27300, 492, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Seedot - Grassy Terrain - Egg
  (273, 27300, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seedot - Leech Seed - Egg
  (273, 27300, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seedot - Night Slash - Egg
  (273, 27300, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seedot - Power Swap - Egg
  (273, 27300, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Seedot - Quick Attack - Egg
  (273, 27300, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Seedot - Take Down - Egg
  (273, 27300, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Seedot - Worry Seed - Egg
  (273, 27300, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nuzleaf - Razor Leaf - Starting Move
  (274, 27400, 75, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Nuzleaf - Air Cutter - Starting Move
  (274, 27400, 314, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Nuzleaf - Torment - Starting Move
  (274, 27400, 259, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Nuzleaf - Fake Out - Starting Move
  (274, 27400, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Nuzleaf - Swagger - Starting Move
  (274, 27400, 207, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Nuzleaf - Synthesis - Starting Move
  (274, 27400, 235, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Nuzleaf - Explosion - Starting Move
  (274, 27400, 153, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Nuzleaf - Tackle - Starting Move
  (274, 27400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Nuzleaf - Harden - Starting Move
  (274, 27400, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Nuzleaf - Absorb - Starting Move
  (274, 27400, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Nuzleaf - Astonish - Starting Move
  (274, 27400, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Nuzleaf - Razor Leaf - Evolution
  (274, 27400, 75, 21, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Nuzleaf - Growth - Level 9
  (274, 27400, 74, 21, NULL, 1, 9, NULL, NULL, NULL, 13),
  -- Nuzleaf - Rollout - Level 12
  (274, 27400, 205, 21, NULL, 1, 12, NULL, NULL, NULL, 14),
  -- Nuzleaf - Mega Drain - Level 18
  (274, 27400, 72, 21, NULL, 1, 18, NULL, NULL, NULL, 15),
  -- Nuzleaf - Payback - Level 24
  (274, 27400, 371, 21, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Nuzleaf - Nature Power - Level 30
  (274, 27400, 267, 21, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Nuzleaf - Sunny Day - Level 36
  (274, 27400, 241, 21, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Nuzleaf - Extrasensory - Level 43
  (274, 27400, 326, 21, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Nuzleaf - Sucker Punch - Level 50
  (274, 27400, 389, 21, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Nuzleaf - Leaf Blade - Level 57
  (274, 27400, 348, 21, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Nuzleaf - Bullet Seed - TM09
  (274, 27400, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 22),
  -- Nuzleaf - Sunny Day - TM11
  (274, 27400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Nuzleaf - Hyper Beam - TM15
  (274, 27400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Nuzleaf - Protect - TM17
  (274, 27400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Nuzleaf - Giga Drain - TM19
  (274, 27400, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 26),
  -- Nuzleaf - Solar Beam - TM22
  (274, 27400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 27),
  -- Nuzleaf - Low Sweep - TM27
  (274, 27400, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 28),
  -- Nuzleaf - Dig - TM28
  (274, 27400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Nuzleaf - Shadow Ball - TM30
  (274, 27400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Nuzleaf - Brick Break - TM31
  (274, 27400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Nuzleaf - Double Team - TM32
  (274, 27400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Nuzleaf - Rock Tomb - TM39
  (274, 27400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Nuzleaf - Torment - TM41
  (274, 27400, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 34),
  -- Nuzleaf - Facade - TM42
  (274, 27400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Nuzleaf - Rest - TM44
  (274, 27400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Nuzleaf - Attract - TM45
  (274, 27400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 37),
  -- Nuzleaf - Thief - TM46
  (274, 27400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 38),
  -- Nuzleaf - Energy Ball - TM53
  (274, 27400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 39),
  -- Nuzleaf - False Swipe - TM54
  (274, 27400, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 40),
  -- Nuzleaf - Fling - TM56
  (274, 27400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 41),
  -- Nuzleaf - Endure - TM58
  (274, 27400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Nuzleaf - Nasty Plot - TM63
  (274, 27400, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 43),
  -- Nuzleaf - Explosion - TM64
  (274, 27400, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 44),
  -- Nuzleaf - Payback - TM66
  (274, 27400, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 45),
  -- Nuzleaf - Flash - TM70
  (274, 27400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 46),
  -- Nuzleaf - Swords Dance - TM75
  (274, 27400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 47),
  -- Nuzleaf - Psych Up - TM77
  (274, 27400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 48),
  -- Nuzleaf - Snarl - TM78
  (274, 27400, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 49),
  -- Nuzleaf - Dark Pulse - TM79
  (274, 27400, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 50),
  -- Nuzleaf - Rock Slide - TM80
  (274, 27400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 51),
  -- Nuzleaf - Sleep Talk - TM82
  (274, 27400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 52),
  -- Nuzleaf - Grass Knot - TM86
  (274, 27400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 53),
  -- Nuzleaf - Swagger - TM87
  (274, 27400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 54),
  -- Nuzleaf - Substitute - TM90
  (274, 27400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 55),
  -- Nuzleaf - Cut - TM93
  (274, 27400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 56),
  -- Nuzleaf - Strength - TM96
  (274, 27400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 57),
  -- Nuzleaf - Rock Smash - TM98
  (274, 27400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 58),
  -- Nuzleaf - Amnesia - Egg
  (274, 27400, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Nuzleaf - Beat Up - Egg
  (274, 27400, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Nuzleaf - Foul Play - Egg
  (274, 27400, 492, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Nuzleaf - Grassy Terrain - Egg
  (274, 27400, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Nuzleaf - Leech Seed - Egg
  (274, 27400, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Nuzleaf - Night Slash - Egg
  (274, 27400, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Nuzleaf - Power Swap - Egg
  (274, 27400, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Nuzleaf - Quick Attack - Egg
  (274, 27400, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Nuzleaf - Take Down - Egg
  (274, 27400, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Nuzleaf - Worry Seed - Egg
  (274, 27400, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Shiftry - Leaf Tornado - Starting Move
  (275, 27500, 536, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shiftry - Razor Leaf - Starting Move
  (275, 27500, 75, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Shiftry - Air Cutter - Starting Move
  (275, 27500, 314, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Shiftry - Torment - Starting Move
  (275, 27500, 259, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Shiftry - Fake Out - Starting Move
  (275, 27500, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Shiftry - Swagger - Starting Move
  (275, 27500, 207, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Shiftry - Whirlwind - Starting Move
  (275, 27500, 18, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Shiftry - Hurricane - Starting Move
  (275, 27500, 542, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Shiftry - Synthesis - Starting Move
  (275, 27500, 235, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Shiftry - Explosion - Starting Move
  (275, 27500, 153, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Shiftry - Growth - Starting Move
  (275, 27500, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Shiftry - Rollout - Starting Move
  (275, 27500, 205, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Shiftry - Mega Drain - Starting Move
  (275, 27500, 72, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Shiftry - Payback - Starting Move
  (275, 27500, 371, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Shiftry - Nature Power - Starting Move
  (275, 27500, 267, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Shiftry - Sunny Day - Starting Move
  (275, 27500, 241, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Shiftry - Extrasensory - Starting Move
  (275, 27500, 326, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Shiftry - Sucker Punch - Starting Move
  (275, 27500, 389, 21, NULL, 8, NULL, NULL, NULL, NULL, 18),
  -- Shiftry - Leaf Blade - Starting Move
  (275, 27500, 348, 21, NULL, 8, NULL, NULL, NULL, NULL, 19),
  -- Shiftry - Tackle - Starting Move
  (275, 27500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 20),
  -- Shiftry - Harden - Starting Move
  (275, 27500, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 21),
  -- Shiftry - Absorb - Starting Move
  (275, 27500, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 22),
  -- Shiftry - Astonish - Starting Move
  (275, 27500, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 23),
  -- Shiftry - Leaf Tornado - Evolution
  (275, 27500, 536, 21, NULL, 7, NULL, NULL, NULL, NULL, 24),
  -- Shiftry - Bullet Seed - TM09
  (275, 27500, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 25),
  -- Shiftry - Sunny Day - TM11
  (275, 27500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 26),
  -- Shiftry - Hyper Beam - TM15
  (275, 27500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Shiftry - Protect - TM17
  (275, 27500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Shiftry - Giga Drain - TM19
  (275, 27500, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 29),
  -- Shiftry - Solar Beam - TM22
  (275, 27500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 30),
  -- Shiftry - Low Sweep - TM27
  (275, 27500, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 31),
  -- Shiftry - Dig - TM28
  (275, 27500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Shiftry - Shadow Ball - TM30
  (275, 27500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Shiftry - Brick Break - TM31
  (275, 27500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Shiftry - Double Team - TM32
  (275, 27500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Shiftry - Rock Tomb - TM39
  (275, 27500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 36),
  -- Shiftry - Aerial Ace - TM40
  (275, 27500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 37),
  -- Shiftry - Torment - TM41
  (275, 27500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 38),
  -- Shiftry - Facade - TM42
  (275, 27500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Shiftry - Rest - TM44
  (275, 27500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Shiftry - Attract - TM45
  (275, 27500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 41),
  -- Shiftry - Thief - TM46
  (275, 27500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 42),
  -- Shiftry - Focus Blast - TM52
  (275, 27500, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 43),
  -- Shiftry - Energy Ball - TM53
  (275, 27500, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 44),
  -- Shiftry - False Swipe - TM54
  (275, 27500, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 45),
  -- Shiftry - Fling - TM56
  (275, 27500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 46),
  -- Shiftry - Endure - TM58
  (275, 27500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 47),
  -- Shiftry - Nasty Plot - TM63
  (275, 27500, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 48),
  -- Shiftry - Explosion - TM64
  (275, 27500, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 49),
  -- Shiftry - Payback - TM66
  (275, 27500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 50),
  -- Shiftry - Giga Impact - TM68
  (275, 27500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 51),
  -- Shiftry - Flash - TM70
  (275, 27500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 52),
  -- Shiftry - Swords Dance - TM75
  (275, 27500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 53),
  -- Shiftry - Psych Up - TM77
  (275, 27500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 54),
  -- Shiftry - Snarl - TM78
  (275, 27500, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 55),
  -- Shiftry - Dark Pulse - TM79
  (275, 27500, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 56),
  -- Shiftry - Rock Slide - TM80
  (275, 27500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 57),
  -- Shiftry - X-Scissor - TM81
  (275, 27500, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 58),
  -- Shiftry - Sleep Talk - TM82
  (275, 27500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 59),
  -- Shiftry - Grass Knot - TM86
  (275, 27500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 60),
  -- Shiftry - Swagger - TM87
  (275, 27500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 61),
  -- Shiftry - Substitute - TM90
  (275, 27500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 62),
  -- Shiftry - Cut - TM93
  (275, 27500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 63),
  -- Shiftry - Strength - TM96
  (275, 27500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 64),
  -- Shiftry - Defog - TM97
  (275, 27500, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 65),
  -- Shiftry - Rock Smash - TM98
  (275, 27500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 66),
  -- Shiftry - Amnesia - Egg
  (275, 27500, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Shiftry - Beat Up - Egg
  (275, 27500, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Shiftry - Foul Play - Egg
  (275, 27500, 492, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Shiftry - Grassy Terrain - Egg
  (275, 27500, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Shiftry - Leech Seed - Egg
  (275, 27500, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Shiftry - Night Slash - Egg
  (275, 27500, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Shiftry - Power Swap - Egg
  (275, 27500, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Shiftry - Quick Attack - Egg
  (275, 27500, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Shiftry - Take Down - Egg
  (275, 27500, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Shiftry - Worry Seed - Egg
  (275, 27500, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Taillow - Peck - Starting Move
  (276, 27600, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Taillow - Growl - Starting Move
  (276, 27600, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Taillow - Focus Energy - Level 5
  (276, 27600, 116, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Taillow - Quick Attack - Level 9
  (276, 27600, 98, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Taillow - Wing Attack - Level 13
  (276, 27600, 17, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Taillow - Double Team - Level 17
  (276, 27600, 104, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Taillow - Aerial Ace - Level 21
  (276, 27600, 332, 21, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Taillow - Quick Guard - Level 25
  (276, 27600, 501, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Taillow - Agility - Level 29
  (276, 27600, 97, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Taillow - Air Slash - Level 33
  (276, 27600, 403, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Taillow - Endeavor - Level 37
  (276, 27600, 283, 21, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Taillow - Brave Bird - Level 41
  (276, 27600, 413, 21, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Taillow - Reversal - Level 45
  (276, 27600, 179, 21, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Taillow - Work Up - TM10
  (276, 27600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 14),
  -- Taillow - Sunny Day - TM11
  (276, 27600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Taillow - Protect - TM17
  (276, 27600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Taillow - Rain Dance - TM18
  (276, 27600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Taillow - Double Team - TM32
  (276, 27600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 18),
  -- Taillow - Aerial Ace - TM40
  (276, 27600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 19),
  -- Taillow - Facade - TM42
  (276, 27600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 20),
  -- Taillow - Rest - TM44
  (276, 27600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 21),
  -- Taillow - Attract - TM45
  (276, 27600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 22),
  -- Taillow - Thief - TM46
  (276, 27600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 23),
  -- Taillow - Steel Wing - TM47
  (276, 27600, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 24),
  -- Taillow - Roost - TM51
  (276, 27600, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 25),
  -- Taillow - Endure - TM58
  (276, 27600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 26),
  -- Taillow - Sleep Talk - TM82
  (276, 27600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 27),
  -- Taillow - Swagger - TM87
  (276, 27600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 28),
  -- Taillow - Pluck - TM88
  (276, 27600, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 29),
  -- Taillow - U-turn - TM89
  (276, 27600, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 30),
  -- Taillow - Substitute - TM90
  (276, 27600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 31),
  -- Taillow - Fly - TM94
  (276, 27600, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 32),
  -- Taillow - Defog - TM97
  (276, 27600, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 33),
  -- Taillow - Boomburst - Egg
  (276, 27600, 586, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Taillow - Brave Bird - Egg
  (276, 27600, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Taillow - Hurricane - Egg
  (276, 27600, 542, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Taillow - Sky Attack - Egg
  (276, 27600, 143, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Taillow - Supersonic - Egg
  (276, 27600, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Taillow - Whirlwind - Egg
  (276, 27600, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Swellow - Brave Bird - Starting Move
  (277, 27700, 413, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Swellow - Air Slash - Starting Move
  (277, 27700, 403, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Swellow - Pluck - Starting Move
  (277, 27700, 365, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Swellow - Peck - Starting Move
  (277, 27700, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Swellow - Growl - Starting Move
  (277, 27700, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Swellow - Focus Energy - Starting Move
  (277, 27700, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Swellow - Quick Attack - Starting Move
  (277, 27700, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Swellow - Focus Energy - Level 5
  (277, 27700, 116, 21, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Swellow - Quick Attack - Level 9
  (277, 27700, 98, 21, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Swellow - Wing Attack - Level 13
  (277, 27700, 17, 21, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Swellow - Double Team - Level 17
  (277, 27700, 104, 21, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Swellow - Aerial Ace - Level 21
  (277, 27700, 332, 21, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Swellow - Quick Guard - Level 27
  (277, 27700, 501, 21, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Swellow - Agility - Level 33
  (277, 27700, 97, 21, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Swellow - Air Slash - Level 39
  (277, 27700, 403, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Swellow - Endeavor - Level 45
  (277, 27700, 283, 21, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Swellow - Brave Bird - Level 51
  (277, 27700, 413, 21, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Swellow - Reversal - Level 57
  (277, 27700, 179, 21, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Swellow - Work Up - TM10
  (277, 27700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 19),
  -- Swellow - Sunny Day - TM11
  (277, 27700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Swellow - Hyper Beam - TM15
  (277, 27700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Swellow - Protect - TM17
  (277, 27700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Swellow - Rain Dance - TM18
  (277, 27700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Swellow - Double Team - TM32
  (277, 27700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Swellow - Aerial Ace - TM40
  (277, 27700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 25),
  -- Swellow - Facade - TM42
  (277, 27700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Swellow - Rest - TM44
  (277, 27700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Swellow - Attract - TM45
  (277, 27700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Swellow - Thief - TM46
  (277, 27700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 29),
  -- Swellow - Steel Wing - TM47
  (277, 27700, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 30),
  -- Swellow - Roost - TM51
  (277, 27700, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 31),
  -- Swellow - Endure - TM58
  (277, 27700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Swellow - Giga Impact - TM68
  (277, 27700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 33),
  -- Swellow - Sleep Talk - TM82
  (277, 27700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Swellow - Swagger - TM87
  (277, 27700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Swellow - Pluck - TM88
  (277, 27700, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 36),
  -- Swellow - U-turn - TM89
  (277, 27700, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 37),
  -- Swellow - Substitute - TM90
  (277, 27700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Swellow - Fly - TM94
  (277, 27700, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 39),
  -- Swellow - Defog - TM97
  (277, 27700, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 40),
  -- Swellow - Boomburst - Egg
  (277, 27700, 586, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Swellow - Brave Bird - Egg
  (277, 27700, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Swellow - Hurricane - Egg
  (277, 27700, 542, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Swellow - Sky Attack - Egg
  (277, 27700, 143, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Swellow - Supersonic - Egg
  (277, 27700, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swellow - Whirlwind - Egg
  (277, 27700, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wingull - Growl - Starting Move
  (278, 27800, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Wingull - Water Gun - Starting Move
  (278, 27800, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Wingull - Quick Attack - Level 5
  (278, 27800, 98, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wingull - Supersonic - Level 10
  (278, 27800, 48, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Wingull - Wing Attack - Level 15
  (278, 27800, 17, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wingull - Water Pulse - Level 20
  (278, 27800, 352, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Wingull - Agility - Level 26
  (278, 27800, 97, 21, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Wingull - Air Slash - Level 30
  (278, 27800, 403, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Wingull - Mist - Level 35
  (278, 27800, 54, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wingull - Roost - Level 40
  (278, 27800, 355, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Wingull - Hurricane - Level 45
  (278, 27800, 542, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Wingull - Water Pulse - TM03
  (278, 27800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 12),
  -- Wingull - Hail - TM07
  (278, 27800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 13),
  -- Wingull - Ice Beam - TM13
  (278, 27800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 14),
  -- Wingull - Blizzard - TM14
  (278, 27800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 15),
  -- Wingull - Protect - TM17
  (278, 27800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Wingull - Rain Dance - TM18
  (278, 27800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Wingull - Double Team - TM32
  (278, 27800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 18),
  -- Wingull - Shock Wave - TM34
  (278, 27800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 19),
  -- Wingull - Aerial Ace - TM40
  (278, 27800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 20),
  -- Wingull - Facade - TM42
  (278, 27800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 21),
  -- Wingull - Rest - TM44
  (278, 27800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 22),
  -- Wingull - Attract - TM45
  (278, 27800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 23),
  -- Wingull - Thief - TM46
  (278, 27800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 24),
  -- Wingull - Steel Wing - TM47
  (278, 27800, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 25),
  -- Wingull - Scald - TM49
  (278, 27800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 26),
  -- Wingull - Roost - TM51
  (278, 27800, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 27),
  -- Wingull - Brine - TM55
  (278, 27800, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 28),
  -- Wingull - Endure - TM58
  (278, 27800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Wingull - Sleep Talk - TM82
  (278, 27800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 30),
  -- Wingull - Swagger - TM87
  (278, 27800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 31),
  -- Wingull - Pluck - TM88
  (278, 27800, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 32),
  -- Wingull - U-turn - TM89
  (278, 27800, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 33),
  -- Wingull - Substitute - TM90
  (278, 27800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Wingull - Fly - TM94
  (278, 27800, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 35),
  -- Wingull - Defog - TM97
  (278, 27800, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 36),
  -- Wingull - Agility - Egg
  (278, 27800, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Wingull - Air Cutter - Egg
  (278, 27800, 314, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Wingull - Aqua Ring - Egg
  (278, 27800, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Wingull - Gust - Egg
  (278, 27800, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Wingull - Knock Off - Egg
  (278, 27800, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Wingull - Mist - Egg
  (278, 27800, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wingull - Soak - Egg
  (278, 27800, 487, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wingull - Twister - Egg
  (278, 27800, 239, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wingull - Wide Guard - Egg
  (278, 27800, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pelipper - Protect - Starting Move
  (279, 27900, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Pelipper - Soak - Starting Move
  (279, 27900, 487, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Pelipper - Quick Attack - Starting Move
  (279, 27900, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Pelipper - Agility - Starting Move
  (279, 27900, 97, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Pelipper - Air Slash - Starting Move
  (279, 27900, 403, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Pelipper - Growl - Starting Move
  (279, 27900, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Pelipper - Water Gun - Starting Move
  (279, 27900, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Pelipper - Tailwind - Starting Move
  (279, 27900, 366, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Pelipper - Supersonic - Starting Move
  (279, 27900, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Pelipper - Wing Attack - Level 15
  (279, 27900, 17, 21, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Pelipper - Water Pulse - Level 20
  (279, 27900, 352, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Pelipper - Stockpile - Level 28
  (279, 27900, 254, 21, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Pelipper - Swallow - Level 28
  (279, 27900, 256, 21, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Pelipper - Spit Up - Level 28
  (279, 27900, 255, 21, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Pelipper - Fling - Level 34
  (279, 27900, 374, 21, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Pelipper - Mist - Level 41
  (279, 27900, 54, 21, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Pelipper - Roost - Level 48
  (279, 27900, 355, 21, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Pelipper - Hurricane - Level 55
  (279, 27900, 542, 21, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Pelipper - Hydro Pump - Level 62
  (279, 27900, 56, 21, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Pelipper - Water Pulse - TM03
  (279, 27900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Pelipper - Hail - TM07
  (279, 27900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 21),
  -- Pelipper - Ice Beam - TM13
  (279, 27900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Pelipper - Blizzard - TM14
  (279, 27900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Pelipper - Hyper Beam - TM15
  (279, 27900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Pelipper - Protect - TM17
  (279, 27900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Pelipper - Rain Dance - TM18
  (279, 27900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Pelipper - Double Team - TM32
  (279, 27900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Pelipper - Shock Wave - TM34
  (279, 27900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 28),
  -- Pelipper - Aerial Ace - TM40
  (279, 27900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Pelipper - Facade - TM42
  (279, 27900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Pelipper - Rest - TM44
  (279, 27900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Pelipper - Attract - TM45
  (279, 27900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Pelipper - Thief - TM46
  (279, 27900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Pelipper - Steel Wing - TM47
  (279, 27900, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 34),
  -- Pelipper - Scald - TM49
  (279, 27900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 35),
  -- Pelipper - Roost - TM51
  (279, 27900, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 36),
  -- Pelipper - Brine - TM55
  (279, 27900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 37),
  -- Pelipper - Fling - TM56
  (279, 27900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Pelipper - Endure - TM58
  (279, 27900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Pelipper - Payback - TM66
  (279, 27900, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 40),
  -- Pelipper - Giga Impact - TM68
  (279, 27900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Pelipper - Sleep Talk - TM82
  (279, 27900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Pelipper - Swagger - TM87
  (279, 27900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Pelipper - Pluck - TM88
  (279, 27900, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 44),
  -- Pelipper - U-turn - TM89
  (279, 27900, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 45),
  -- Pelipper - Substitute - TM90
  (279, 27900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Pelipper - Fly - TM94
  (279, 27900, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 47),
  -- Pelipper - Surf - TM95
  (279, 27900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 48),
  -- Pelipper - Defog - TM97
  (279, 27900, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 49),
  -- Pelipper - Agility - Egg
  (279, 27900, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pelipper - Air Cutter - Egg
  (279, 27900, 314, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pelipper - Aqua Ring - Egg
  (279, 27900, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pelipper - Gust - Egg
  (279, 27900, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pelipper - Knock Off - Egg
  (279, 27900, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pelipper - Mist - Egg
  (279, 27900, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pelipper - Soak - Egg
  (279, 27900, 487, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pelipper - Twister - Egg
  (279, 27900, 239, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pelipper - Wide Guard - Egg
  (279, 27900, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ralts - Growl - Starting Move
  (280, 28000, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ralts - Disarming Voice - Starting Move
  (280, 28000, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ralts - Double Team - Level 3
  (280, 28000, 104, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Ralts - Confusion - Level 6
  (280, 28000, 93, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Ralts - Hypnosis - Level 9
  (280, 28000, 95, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ralts - Draining Kiss - Level 12
  (280, 28000, 577, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ralts - Teleport - Level 15
  (280, 28000, 100, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ralts - Psybeam - Level 18
  (280, 28000, 60, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Ralts - Life Dew - Level 21
  (280, 28000, 791, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Ralts - Charm - Level 24
  (280, 28000, 204, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Ralts - Calm Mind - Level 27
  (280, 28000, 347, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Ralts - Psychic - Level 30
  (280, 28000, 94, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Ralts - Heal Pulse - Level 33
  (280, 28000, 505, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Ralts - Dream Eater - Level 36
  (280, 28000, 138, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Ralts - Future Sight - Level 39
  (280, 28000, 248, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Ralts - Calm Mind - TM04
  (280, 28000, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Ralts - Sunny Day - TM11
  (280, 28000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Ralts - Taunt - TM12
  (280, 28000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Ralts - Light Screen - TM16
  (280, 28000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Ralts - Protect - TM17
  (280, 28000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Ralts - Rain Dance - TM18
  (280, 28000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Ralts - Safeguard - TM20
  (280, 28000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Ralts - Dazzling Gleam - TM21
  (280, 28000, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 23),
  -- Ralts - Thunderbolt - TM24
  (280, 28000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Ralts - Psychic - TM29
  (280, 28000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 25),
  -- Ralts - Shadow Ball - TM30
  (280, 28000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Ralts - Double Team - TM32
  (280, 28000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Ralts - Reflect - TM33
  (280, 28000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Ralts - Shock Wave - TM34
  (280, 28000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Ralts - Torment - TM41
  (280, 28000, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 30),
  -- Ralts - Facade - TM42
  (280, 28000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Ralts - Rest - TM44
  (280, 28000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Ralts - Attract - TM45
  (280, 28000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Ralts - Thief - TM46
  (280, 28000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Ralts - Skill Swap - TM48
  (280, 28000, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 35),
  -- Ralts - Fling - TM56
  (280, 28000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Ralts - Charge Beam - TM57
  (280, 28000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 37),
  -- Ralts - Endure - TM58
  (280, 28000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Ralts - Will-O-Wisp - TM61
  (280, 28000, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 39),
  -- Ralts - Recycle - TM67
  (280, 28000, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 40),
  -- Ralts - Flash - TM70
  (280, 28000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 41),
  -- Ralts - Thunder Wave - TM73
  (280, 28000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 42),
  -- Ralts - Psych Up - TM77
  (280, 28000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 43),
  -- Ralts - Sleep Talk - TM82
  (280, 28000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Ralts - Dream Eater - TM85
  (280, 28000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 45),
  -- Ralts - Grass Knot - TM86
  (280, 28000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 46),
  -- Ralts - Swagger - TM87
  (280, 28000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Ralts - Substitute - TM90
  (280, 28000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Ralts - Trick Room - TM92
  (280, 28000, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 49),
  -- Ralts - Ally Switch - Egg
  (280, 28000, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ralts - Confuse Ray - Egg
  (280, 28000, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ralts - Destiny Bond - Egg
  (280, 28000, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ralts - Disable - Egg
  (280, 28000, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ralts - Encore - Egg
  (280, 28000, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ralts - Grudge - Egg
  (280, 28000, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ralts - Knock Off - Egg
  (280, 28000, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ralts - Mean Look - Egg
  (280, 28000, 212, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ralts - Memento - Egg
  (280, 28000, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ralts - Misty Terrain - Egg
  (280, 28000, 581, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ralts - Shadow Sneak - Egg
  (280, 28000, 425, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Kirlia - Growl - Starting Move
  (281, 28100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kirlia - Disarming Voice - Starting Move
  (281, 28100, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Kirlia - Double Team - Starting Move
  (281, 28100, 104, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Kirlia - Confusion - Starting Move
  (281, 28100, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Kirlia - Hypnosis - Level 9
  (281, 28100, 95, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Kirlia - Draining Kiss - Level 12
  (281, 28100, 577, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Kirlia - Teleport - Level 15
  (281, 28100, 100, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Kirlia - Psybeam - Level 18
  (281, 28100, 60, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Kirlia - Life Dew - Level 23
  (281, 28100, 791, 21, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Kirlia - Charm - Level 28
  (281, 28100, 204, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Kirlia - Calm Mind - Level 33
  (281, 28100, 347, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Kirlia - Psychic - Level 38
  (281, 28100, 94, 21, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Kirlia - Heal Pulse - Level 43
  (281, 28100, 505, 21, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Kirlia - Dream Eater - Level 48
  (281, 28100, 138, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Kirlia - Future Sight - Level 53
  (281, 28100, 248, 21, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Kirlia - Calm Mind - TM04
  (281, 28100, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Kirlia - Sunny Day - TM11
  (281, 28100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Kirlia - Taunt - TM12
  (281, 28100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Kirlia - Light Screen - TM16
  (281, 28100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Kirlia - Protect - TM17
  (281, 28100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Kirlia - Rain Dance - TM18
  (281, 28100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Kirlia - Safeguard - TM20
  (281, 28100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Kirlia - Dazzling Gleam - TM21
  (281, 28100, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 23),
  -- Kirlia - Thunderbolt - TM24
  (281, 28100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Kirlia - Psychic - TM29
  (281, 28100, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 25),
  -- Kirlia - Shadow Ball - TM30
  (281, 28100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Kirlia - Double Team - TM32
  (281, 28100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Kirlia - Reflect - TM33
  (281, 28100, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Kirlia - Shock Wave - TM34
  (281, 28100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Kirlia - Torment - TM41
  (281, 28100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 30),
  -- Kirlia - Facade - TM42
  (281, 28100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Kirlia - Rest - TM44
  (281, 28100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Kirlia - Attract - TM45
  (281, 28100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Kirlia - Thief - TM46
  (281, 28100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Kirlia - Skill Swap - TM48
  (281, 28100, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 35),
  -- Kirlia - Fling - TM56
  (281, 28100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Kirlia - Charge Beam - TM57
  (281, 28100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 37),
  -- Kirlia - Endure - TM58
  (281, 28100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Kirlia - Will-O-Wisp - TM61
  (281, 28100, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 39),
  -- Kirlia - Recycle - TM67
  (281, 28100, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 40),
  -- Kirlia - Flash - TM70
  (281, 28100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 41),
  -- Kirlia - Thunder Wave - TM73
  (281, 28100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 42),
  -- Kirlia - Psych Up - TM77
  (281, 28100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 43),
  -- Kirlia - Sleep Talk - TM82
  (281, 28100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Kirlia - Dream Eater - TM85
  (281, 28100, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 45),
  -- Kirlia - Grass Knot - TM86
  (281, 28100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 46),
  -- Kirlia - Swagger - TM87
  (281, 28100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Kirlia - Substitute - TM90
  (281, 28100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Kirlia - Trick Room - TM92
  (281, 28100, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 49),
  -- Kirlia - Ally Switch - Egg
  (281, 28100, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kirlia - Confuse Ray - Egg
  (281, 28100, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Kirlia - Destiny Bond - Egg
  (281, 28100, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Kirlia - Disable - Egg
  (281, 28100, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Kirlia - Encore - Egg
  (281, 28100, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Kirlia - Grudge - Egg
  (281, 28100, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Kirlia - Knock Off - Egg
  (281, 28100, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kirlia - Mean Look - Egg
  (281, 28100, 212, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Kirlia - Memento - Egg
  (281, 28100, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Kirlia - Misty Terrain - Egg
  (281, 28100, 581, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Kirlia - Shadow Sneak - Egg
  (281, 28100, 425, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gardevoir - Dazzling Gleam - Starting Move
  (282, 28200, 605, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gardevoir - Moonblast - Starting Move
  (282, 28200, 585, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Gardevoir - Misty Terrain - Starting Move
  (282, 28200, 581, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Gardevoir - Healing Wish - Starting Move
  (282, 28200, 361, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Gardevoir - Charm - Starting Move
  (282, 28200, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Gardevoir - Growl - Starting Move
  (282, 28200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Gardevoir - Disarming Voice - Starting Move
  (282, 28200, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Gardevoir - Double Team - Starting Move
  (282, 28200, 104, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Gardevoir - Confusion - Starting Move
  (282, 28200, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Gardevoir - Dazzling Gleam - Evolution
  (282, 28200, 605, 21, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Gardevoir - Hypnosis - Level 9
  (282, 28200, 95, 21, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Gardevoir - Draining Kiss - Level 12
  (282, 28200, 577, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Gardevoir - Teleport - Level 15
  (282, 28200, 100, 21, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Gardevoir - Psybeam - Level 18
  (282, 28200, 60, 21, NULL, 1, 18, NULL, NULL, NULL, 14),
  -- Gardevoir - Life Dew - Level 23
  (282, 28200, 791, 21, NULL, 1, 23, NULL, NULL, NULL, 15),
  -- Gardevoir - Wish - Level 28
  (282, 28200, 273, 21, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Gardevoir - Calm Mind - Level 35
  (282, 28200, 347, 21, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Gardevoir - Psychic - Level 42
  (282, 28200, 94, 21, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Gardevoir - Heal Pulse - Level 49
  (282, 28200, 505, 21, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Gardevoir - Dream Eater - Level 56
  (282, 28200, 138, 21, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Gardevoir - Future Sight - Level 63
  (282, 28200, 248, 21, NULL, 1, 63, NULL, NULL, NULL, 21),
  -- Gardevoir - Calm Mind - TM04
  (282, 28200, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 22),
  -- Gardevoir - Sunny Day - TM11
  (282, 28200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Gardevoir - Taunt - TM12
  (282, 28200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Gardevoir - Hyper Beam - TM15
  (282, 28200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Gardevoir - Light Screen - TM16
  (282, 28200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 26),
  -- Gardevoir - Protect - TM17
  (282, 28200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Gardevoir - Rain Dance - TM18
  (282, 28200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Gardevoir - Safeguard - TM20
  (282, 28200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 29),
  -- Gardevoir - Dazzling Gleam - TM21
  (282, 28200, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 30),
  -- Gardevoir - Thunderbolt - TM24
  (282, 28200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 31),
  -- Gardevoir - Psychic - TM29
  (282, 28200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 32),
  -- Gardevoir - Shadow Ball - TM30
  (282, 28200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Gardevoir - Double Team - TM32
  (282, 28200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Gardevoir - Reflect - TM33
  (282, 28200, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 35),
  -- Gardevoir - Shock Wave - TM34
  (282, 28200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 36),
  -- Gardevoir - Torment - TM41
  (282, 28200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 37),
  -- Gardevoir - Facade - TM42
  (282, 28200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 38),
  -- Gardevoir - Rest - TM44
  (282, 28200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 39),
  -- Gardevoir - Attract - TM45
  (282, 28200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 40),
  -- Gardevoir - Thief - TM46
  (282, 28200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 41),
  -- Gardevoir - Skill Swap - TM48
  (282, 28200, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 42),
  -- Gardevoir - Focus Blast - TM52
  (282, 28200, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 43),
  -- Gardevoir - Energy Ball - TM53
  (282, 28200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 44),
  -- Gardevoir - Fling - TM56
  (282, 28200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 45),
  -- Gardevoir - Charge Beam - TM57
  (282, 28200, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 46),
  -- Gardevoir - Endure - TM58
  (282, 28200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 47),
  -- Gardevoir - Will-O-Wisp - TM61
  (282, 28200, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 48),
  -- Gardevoir - Recycle - TM67
  (282, 28200, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 49),
  -- Gardevoir - Giga Impact - TM68
  (282, 28200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 50),
  -- Gardevoir - Flash - TM70
  (282, 28200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 51),
  -- Gardevoir - Thunder Wave - TM73
  (282, 28200, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 52),
  -- Gardevoir - Psych Up - TM77
  (282, 28200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 53),
  -- Gardevoir - Sleep Talk - TM82
  (282, 28200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 54),
  -- Gardevoir - Dream Eater - TM85
  (282, 28200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 55),
  -- Gardevoir - Grass Knot - TM86
  (282, 28200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 56),
  -- Gardevoir - Swagger - TM87
  (282, 28200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 57),
  -- Gardevoir - Substitute - TM90
  (282, 28200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 58),
  -- Gardevoir - Trick Room - TM92
  (282, 28200, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 59),
  -- Gardevoir - Ally Switch - Egg
  (282, 28200, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gardevoir - Confuse Ray - Egg
  (282, 28200, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gardevoir - Destiny Bond - Egg
  (282, 28200, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gardevoir - Disable - Egg
  (282, 28200, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Gardevoir - Encore - Egg
  (282, 28200, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Gardevoir - Grudge - Egg
  (282, 28200, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Gardevoir - Knock Off - Egg
  (282, 28200, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gardevoir - Mean Look - Egg
  (282, 28200, 212, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Gardevoir - Memento - Egg
  (282, 28200, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Gardevoir - Misty Terrain - Egg
  (282, 28200, 581, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Gardevoir - Shadow Sneak - Egg
  (282, 28200, 425, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Surskit - Water Gun - Starting Move
  (283, 28300, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Surskit - Quick Attack - Level 6
  (283, 28300, 98, 21, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Surskit - Sweet Scent - Level 9
  (283, 28300, 230, 21, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Surskit - Soak - Level 14
  (283, 28300, 487, 21, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Surskit - Bubble Beam - Level 17
  (283, 28300, 61, 21, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Surskit - Agility - Level 22
  (283, 28300, 97, 21, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Surskit - Mist - Level 25
  (283, 28300, 54, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Surskit - Haze - Level 25
  (283, 28300, 114, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Surskit - Aqua Jet - Level 30
  (283, 28300, 453, 21, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Surskit - Baton Pass - Level 35
  (283, 28300, 226, 21, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Surskit - Sticky Web - Level 38
  (283, 28300, 564, 21, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Surskit - Water Pulse - TM03
  (283, 28300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 12),
  -- Surskit - Sunny Day - TM11
  (283, 28300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 13),
  -- Surskit - Ice Beam - TM13
  (283, 28300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 14),
  -- Surskit - Blizzard - TM14
  (283, 28300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 15),
  -- Surskit - Protect - TM17
  (283, 28300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Surskit - Rain Dance - TM18
  (283, 28300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Surskit - Giga Drain - TM19
  (283, 28300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 18),
  -- Surskit - Solar Beam - TM22
  (283, 28300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 19),
  -- Surskit - Shadow Ball - TM30
  (283, 28300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 20),
  -- Surskit - Double Team - TM32
  (283, 28300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Surskit - Facade - TM42
  (283, 28300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 22),
  -- Surskit - Rest - TM44
  (283, 28300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 23),
  -- Surskit - Attract - TM45
  (283, 28300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 24),
  -- Surskit - Thief - TM46
  (283, 28300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 25),
  -- Surskit - Scald - TM49
  (283, 28300, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 26),
  -- Surskit - Endure - TM58
  (283, 28300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 27),
  -- Surskit - Flash - TM70
  (283, 28300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 28),
  -- Surskit - Psych Up - TM77
  (283, 28300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 29),
  -- Surskit - Sleep Talk - TM82
  (283, 28300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 30),
  -- Surskit - Swagger - TM87
  (283, 28300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 31),
  -- Surskit - Substitute - TM90
  (283, 28300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 32),
  -- Surskit - Aqua Jet - Egg
  (283, 28300, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Surskit - Bug Bite - Egg
  (283, 28300, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Surskit - Fell Stinger - Egg
  (283, 28300, 565, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Surskit - Hydro Pump - Egg
  (283, 28300, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Surskit - Lunge - Egg
  (283, 28300, 679, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Surskit - Mind Reader - Egg
  (283, 28300, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Surskit - Mud Shot - Egg
  (283, 28300, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Surskit - Power Split - Egg
  (283, 28300, 471, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Surskit - Psybeam - Egg
  (283, 28300, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Masquerain - Quiver Dance - Starting Move
  (284, 28400, 483, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Masquerain - Whirlwind - Starting Move
  (284, 28400, 18, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Masquerain - Bug Buzz - Starting Move
  (284, 28400, 405, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Masquerain - Bubble Beam - Starting Move
  (284, 28400, 61, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Masquerain - Agility - Starting Move
  (284, 28400, 97, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Masquerain - Mist - Starting Move
  (284, 28400, 54, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Masquerain - Haze - Starting Move
  (284, 28400, 114, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Masquerain - Aqua Jet - Starting Move
  (284, 28400, 453, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Masquerain - Baton Pass - Starting Move
  (284, 28400, 226, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Masquerain - Sticky Web - Starting Move
  (284, 28400, 564, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Masquerain - Water Gun - Starting Move
  (284, 28400, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Masquerain - Quick Attack - Starting Move
  (284, 28400, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Masquerain - Sweet Scent - Starting Move
  (284, 28400, 230, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Masquerain - Quick Attack - Level 6
  (284, 28400, 98, 21, NULL, 1, 6, NULL, NULL, NULL, 14),
  -- Masquerain - Sweet Scent - Level 9
  (284, 28400, 230, 21, NULL, 1, 9, NULL, NULL, NULL, 15),
  -- Masquerain - Soak - Level 14
  (284, 28400, 487, 21, NULL, 1, 14, NULL, NULL, NULL, 16),
  -- Masquerain - Gust - Level 17
  (284, 28400, 16, 21, NULL, 1, 17, NULL, NULL, NULL, 17),
  -- Masquerain - Scary Face - Level 22
  (284, 28400, 184, 21, NULL, 1, 22, NULL, NULL, NULL, 18),
  -- Masquerain - Air Cutter - Level 22
  (284, 28400, 314, 21, NULL, 1, 22, NULL, NULL, NULL, 19),
  -- Masquerain - Stun Spore - Level 26
  (284, 28400, 78, 21, NULL, 1, 26, NULL, NULL, NULL, 20),
  -- Masquerain - Supersonic - Level 32
  (284, 28400, 48, 21, NULL, 1, 32, NULL, NULL, NULL, 21),
  -- Masquerain - Air Slash - Level 38
  (284, 28400, 403, 21, NULL, 1, 38, NULL, NULL, NULL, 22),
  -- Masquerain - Bug Buzz - Level 42
  (284, 28400, 405, 21, NULL, 1, 42, NULL, NULL, NULL, 23),
  -- Masquerain - Whirlwind - Level 48
  (284, 28400, 18, 21, NULL, 1, 48, NULL, NULL, NULL, 24),
  -- Masquerain - Quiver Dance - Level 52
  (284, 28400, 483, 21, NULL, 1, 52, NULL, NULL, NULL, 25),
  -- Masquerain - Water Pulse - TM03
  (284, 28400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 26),
  -- Masquerain - Sunny Day - TM11
  (284, 28400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 27),
  -- Masquerain - Ice Beam - TM13
  (284, 28400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 28),
  -- Masquerain - Blizzard - TM14
  (284, 28400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 29),
  -- Masquerain - Hyper Beam - TM15
  (284, 28400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 30),
  -- Masquerain - Protect - TM17
  (284, 28400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 31),
  -- Masquerain - Rain Dance - TM18
  (284, 28400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 32),
  -- Masquerain - Giga Drain - TM19
  (284, 28400, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 33),
  -- Masquerain - Solar Beam - TM22
  (284, 28400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 34),
  -- Masquerain - Shadow Ball - TM30
  (284, 28400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 35),
  -- Masquerain - Double Team - TM32
  (284, 28400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 36),
  -- Masquerain - Aerial Ace - TM40
  (284, 28400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 37),
  -- Masquerain - Facade - TM42
  (284, 28400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 38),
  -- Masquerain - Rest - TM44
  (284, 28400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 39),
  -- Masquerain - Attract - TM45
  (284, 28400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 40),
  -- Masquerain - Thief - TM46
  (284, 28400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 41),
  -- Masquerain - Scald - TM49
  (284, 28400, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 42),
  -- Masquerain - Roost - TM51
  (284, 28400, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 43),
  -- Masquerain - Energy Ball - TM53
  (284, 28400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 44),
  -- Masquerain - Endure - TM58
  (284, 28400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 45),
  -- Masquerain - Bug Buzz - TM62
  (284, 28400, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 46),
  -- Masquerain - Giga Impact - TM68
  (284, 28400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Masquerain - Flash - TM70
  (284, 28400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 48),
  -- Masquerain - Psych Up - TM77
  (284, 28400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 49),
  -- Masquerain - Sleep Talk - TM82
  (284, 28400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 50),
  -- Masquerain - Swagger - TM87
  (284, 28400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Masquerain - U-turn - TM89
  (284, 28400, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 52),
  -- Masquerain - Substitute - TM90
  (284, 28400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Masquerain - Defog - TM97
  (284, 28400, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 54),
  -- Masquerain - Aqua Jet - Egg
  (284, 28400, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Masquerain - Bug Bite - Egg
  (284, 28400, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Masquerain - Fell Stinger - Egg
  (284, 28400, 565, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Masquerain - Hydro Pump - Egg
  (284, 28400, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Masquerain - Lunge - Egg
  (284, 28400, 679, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Masquerain - Mind Reader - Egg
  (284, 28400, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Masquerain - Mud Shot - Egg
  (284, 28400, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Masquerain - Power Split - Egg
  (284, 28400, 471, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Masquerain - Psybeam - Egg
  (284, 28400, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Shroomish - Absorb - Starting Move
  (285, 28500, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shroomish - Tackle - Starting Move
  (285, 28500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Shroomish - Stun Spore - Level 5
  (285, 28500, 78, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shroomish - Leech Seed - Level 8
  (285, 28500, 73, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shroomish - Mega Drain - Level 12
  (285, 28500, 72, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Shroomish - Headbutt - Level 15
  (285, 28500, 29, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Shroomish - Poison Powder - Level 19
  (285, 28500, 77, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Shroomish - Worry Seed - Level 22
  (285, 28500, 388, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Shroomish - Giga Drain - Level 26
  (285, 28500, 202, 21, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Shroomish - Growth - Level 29
  (285, 28500, 74, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Shroomish - Toxic - Level 33
  (285, 28500, 92, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Shroomish - Seed Bomb - Level 36
  (285, 28500, 402, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Shroomish - Spore - Level 40
  (285, 28500, 147, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Shroomish - Toxic - TM06
  (285, 28500, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 14),
  -- Shroomish - Bullet Seed - TM09
  (285, 28500, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 15),
  -- Shroomish - Sunny Day - TM11
  (285, 28500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Shroomish - Protect - TM17
  (285, 28500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Shroomish - Giga Drain - TM19
  (285, 28500, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 18),
  -- Shroomish - Safeguard - TM20
  (285, 28500, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 19),
  -- Shroomish - Solar Beam - TM22
  (285, 28500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 20),
  -- Shroomish - Double Team - TM32
  (285, 28500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Shroomish - Sludge Bomb - TM36
  (285, 28500, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 22),
  -- Shroomish - Facade - TM42
  (285, 28500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 23),
  -- Shroomish - Rest - TM44
  (285, 28500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 24),
  -- Shroomish - Attract - TM45
  (285, 28500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 25),
  -- Shroomish - Energy Ball - TM53
  (285, 28500, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 26),
  -- Shroomish - False Swipe - TM54
  (285, 28500, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 27),
  -- Shroomish - Endure - TM58
  (285, 28500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Shroomish - Drain Punch - TM60
  (285, 28500, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 29),
  -- Shroomish - Flash - TM70
  (285, 28500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 30),
  -- Shroomish - Sleep Talk - TM82
  (285, 28500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 31),
  -- Shroomish - Grass Knot - TM86
  (285, 28500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 32),
  -- Shroomish - Swagger - TM87
  (285, 28500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Shroomish - Substitute - TM90
  (285, 28500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Shroomish - Charm - Egg
  (285, 28500, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Shroomish - Fake Tears - Egg
  (285, 28500, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Shroomish - Helping Hand - Egg
  (285, 28500, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shroomish - Seed Bomb - Egg
  (285, 28500, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shroomish - Worry Seed - Egg
  (285, 28500, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Breloom - Mach Punch - Starting Move
  (286, 28600, 183, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Breloom - Poison Powder - Starting Move
  (286, 28600, 77, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Breloom - Worry Seed - Starting Move
  (286, 28600, 388, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Breloom - Giga Drain - Starting Move
  (286, 28600, 202, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Breloom - Growth - Starting Move
  (286, 28600, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Breloom - Toxic - Starting Move
  (286, 28600, 92, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Breloom - Spore - Starting Move
  (286, 28600, 147, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Breloom - Absorb - Starting Move
  (286, 28600, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Breloom - Tackle - Starting Move
  (286, 28600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Breloom - Stun Spore - Starting Move
  (286, 28600, 78, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Breloom - Leech Seed - Starting Move
  (286, 28600, 73, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Breloom - Mach Punch - Evolution
  (286, 28600, 183, 21, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Breloom - Stun Spore - Level 5
  (286, 28600, 78, 21, NULL, 1, 5, NULL, NULL, NULL, 13),
  -- Breloom - Leech Seed - Level 8
  (286, 28600, 73, 21, NULL, 1, 8, NULL, NULL, NULL, 14),
  -- Breloom - Mega Drain - Level 12
  (286, 28600, 72, 21, NULL, 1, 12, NULL, NULL, NULL, 15),
  -- Breloom - Headbutt - Level 15
  (286, 28600, 29, 21, NULL, 1, 15, NULL, NULL, NULL, 16),
  -- Breloom - Feint - Level 19
  (286, 28600, 364, 21, NULL, 1, 19, NULL, NULL, NULL, 17),
  -- Breloom - Counter - Level 22
  (286, 28600, 68, 21, NULL, 1, 22, NULL, NULL, NULL, 18),
  -- Breloom - Force Palm - Level 28
  (286, 28600, 395, 21, NULL, 1, 28, NULL, NULL, NULL, 19),
  -- Breloom - Mind Reader - Level 33
  (286, 28600, 170, 21, NULL, 1, 33, NULL, NULL, NULL, 20),
  -- Breloom - Drain Punch - Level 39
  (286, 28600, 409, 21, NULL, 1, 39, NULL, NULL, NULL, 21),
  -- Breloom - Seed Bomb - Level 44
  (286, 28600, 402, 21, NULL, 1, 44, NULL, NULL, NULL, 22),
  -- Breloom - Dynamic Punch - Level 50
  (286, 28600, 223, 21, NULL, 1, 50, NULL, NULL, NULL, 23),
  -- Breloom - Focus Punch - TM01
  (286, 28600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 24),
  -- Breloom - Bulk Up - TM08
  (286, 28600, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 25),
  -- Breloom - Bullet Seed - TM09
  (286, 28600, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 26),
  -- Breloom - Work Up - TM10
  (286, 28600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 27),
  -- Breloom - Sunny Day - TM11
  (286, 28600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 28),
  -- Breloom - Hyper Beam - TM15
  (286, 28600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 29),
  -- Breloom - Protect - TM17
  (286, 28600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 30),
  -- Breloom - Giga Drain - TM19
  (286, 28600, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 31),
  -- Breloom - Safeguard - TM20
  (286, 28600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 32),
  -- Breloom - Solar Beam - TM22
  (286, 28600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 33),
  -- Breloom - Iron Tail - TM23
  (286, 28600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 34),
  -- Breloom - Low Sweep - TM27
  (286, 28600, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 35),
  -- Breloom - Brick Break - TM31
  (286, 28600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 36),
  -- Breloom - Double Team - TM32
  (286, 28600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Breloom - Sludge Bomb - TM36
  (286, 28600, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 38),
  -- Breloom - Rock Tomb - TM39
  (286, 28600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 39),
  -- Breloom - Facade - TM42
  (286, 28600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Breloom - Rest - TM44
  (286, 28600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 41),
  -- Breloom - Attract - TM45
  (286, 28600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 42),
  -- Breloom - Focus Blast - TM52
  (286, 28600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 43),
  -- Breloom - Energy Ball - TM53
  (286, 28600, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 44),
  -- Breloom - False Swipe - TM54
  (286, 28600, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 45),
  -- Breloom - Fling - TM56
  (286, 28600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 46),
  -- Breloom - Endure - TM58
  (286, 28600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 47),
  -- Breloom - Drain Punch - TM60
  (286, 28600, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 48),
  -- Breloom - Giga Impact - TM68
  (286, 28600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 49),
  -- Breloom - Flash - TM70
  (286, 28600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 50),
  -- Breloom - Stone Edge - TM71
  (286, 28600, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 51),
  -- Breloom - Swords Dance - TM75
  (286, 28600, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 52),
  -- Breloom - Rock Slide - TM80
  (286, 28600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 53),
  -- Breloom - Sleep Talk - TM82
  (286, 28600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 54),
  -- Breloom - Grass Knot - TM86
  (286, 28600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 55),
  -- Breloom - Swagger - TM87
  (286, 28600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 56),
  -- Breloom - Substitute - TM90
  (286, 28600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 57),
  -- Breloom - Cut - TM93
  (286, 28600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 58),
  -- Breloom - Strength - TM96
  (286, 28600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 59),
  -- Breloom - Rock Smash - TM98
  (286, 28600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 60),
  -- Breloom - Charm - Egg
  (286, 28600, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Breloom - Fake Tears - Egg
  (286, 28600, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Breloom - Helping Hand - Egg
  (286, 28600, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Breloom - Seed Bomb - Egg
  (286, 28600, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Breloom - Worry Seed - Egg
  (286, 28600, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Slakoth - Scratch - Starting Move
  (287, 28700, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Slakoth - Yawn - Starting Move
  (287, 28700, 281, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Slakoth - Encore - Level 6
  (287, 28700, 227, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Slakoth - Slack Off - Level 9
  (287, 28700, 303, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Slakoth - Rest - Level 14
  (287, 28700, 156, 21, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Slakoth - Amnesia - Level 17
  (287, 28700, 133, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Slakoth - Covet - Level 22
  (287, 28700, 343, 21, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Slakoth - Headbutt - Level 25
  (287, 28700, 29, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Slakoth - Counter - Level 30
  (287, 28700, 68, 21, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Slakoth - Flail - Level 33
  (287, 28700, 175, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Slakoth - Play Rough - Level 38
  (287, 28700, 583, 21, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Slakoth - Focus Punch - TM01
  (287, 28700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 12),
  -- Slakoth - Water Pulse - TM03
  (287, 28700, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 13),
  -- Slakoth - Bulk Up - TM08
  (287, 28700, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 14),
  -- Slakoth - Work Up - TM10
  (287, 28700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 15),
  -- Slakoth - Sunny Day - TM11
  (287, 28700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Slakoth - Ice Beam - TM13
  (287, 28700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Slakoth - Blizzard - TM14
  (287, 28700, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Slakoth - Protect - TM17
  (287, 28700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Slakoth - Rain Dance - TM18
  (287, 28700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Slakoth - Solar Beam - TM22
  (287, 28700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 21),
  -- Slakoth - Thunderbolt - TM24
  (287, 28700, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Slakoth - Thunder - TM25
  (287, 28700, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Slakoth - Shadow Ball - TM30
  (287, 28700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Slakoth - Brick Break - TM31
  (287, 28700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Slakoth - Double Team - TM32
  (287, 28700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Slakoth - Shock Wave - TM34
  (287, 28700, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Slakoth - Flamethrower - TM35
  (287, 28700, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 28),
  -- Slakoth - Fire Blast - TM38
  (287, 28700, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 29),
  -- Slakoth - Rock Tomb - TM39
  (287, 28700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Slakoth - Aerial Ace - TM40
  (287, 28700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Slakoth - Facade - TM42
  (287, 28700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Slakoth - Rest - TM44
  (287, 28700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Slakoth - Attract - TM45
  (287, 28700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Slakoth - Fling - TM56
  (287, 28700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 35),
  -- Slakoth - Endure - TM58
  (287, 28700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Slakoth - Shadow Claw - TM65
  (287, 28700, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 37),
  -- Slakoth - Rock Slide - TM80
  (287, 28700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 38),
  -- Slakoth - Sleep Talk - TM82
  (287, 28700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Slakoth - Swagger - TM87
  (287, 28700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Slakoth - Substitute - TM90
  (287, 28700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Slakoth - Cut - TM93
  (287, 28700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 42),
  -- Slakoth - Strength - TM96
  (287, 28700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 43),
  -- Slakoth - Rock Smash - TM98
  (287, 28700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Slakoth - After You - Egg
  (287, 28700, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Slakoth - Body Slam - Egg
  (287, 28700, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Slakoth - Crush Claw - Egg
  (287, 28700, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Slakoth - Curse - Egg
  (287, 28700, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Slakoth - Hammer Arm - Egg
  (287, 28700, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Slakoth - Night Slash - Egg
  (287, 28700, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Slakoth - Slash - Egg
  (287, 28700, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Slakoth - Snore - Egg
  (287, 28700, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Slakoth - Tickle - Egg
  (287, 28700, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vigoroth - Reversal - Starting Move
  (288, 28800, 179, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Vigoroth - Yawn - Starting Move
  (288, 28800, 281, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Vigoroth - Slack Off - Starting Move
  (288, 28800, 303, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Vigoroth - Rest - Starting Move
  (288, 28800, 156, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Vigoroth - Amnesia - Starting Move
  (288, 28800, 133, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Vigoroth - Covet - Starting Move
  (288, 28800, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Vigoroth - Flail - Starting Move
  (288, 28800, 175, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Vigoroth - Play Rough - Starting Move
  (288, 28800, 583, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Vigoroth - Scratch - Starting Move
  (288, 28800, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Vigoroth - Focus Energy - Starting Move
  (288, 28800, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Vigoroth - Encore - Starting Move
  (288, 28800, 227, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Vigoroth - Uproar - Starting Move
  (288, 28800, 253, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Vigoroth - Encore - Level 6
  (288, 28800, 227, 21, NULL, 1, 6, NULL, NULL, NULL, 13),
  -- Vigoroth - Uproar - Level 9
  (288, 28800, 253, 21, NULL, 1, 9, NULL, NULL, NULL, 14),
  -- Vigoroth - Fury Swipes - Level 14
  (288, 28800, 154, 21, NULL, 1, 14, NULL, NULL, NULL, 15),
  -- Vigoroth - Endure - Level 17
  (288, 28800, 203, 21, NULL, 1, 17, NULL, NULL, NULL, 16),
  -- Vigoroth - Slash - Level 23
  (288, 28800, 163, 21, NULL, 1, 23, NULL, NULL, NULL, 17),
  -- Vigoroth - Headbutt - Level 27
  (288, 28800, 29, 21, NULL, 1, 27, NULL, NULL, NULL, 18),
  -- Vigoroth - Counter - Level 33
  (288, 28800, 68, 21, NULL, 1, 33, NULL, NULL, NULL, 19),
  -- Vigoroth - Focus Punch - Level 37
  (288, 28800, 264, 21, NULL, 1, 37, NULL, NULL, NULL, 20),
  -- Vigoroth - Reversal - Level 43
  (288, 28800, 179, 21, NULL, 1, 43, NULL, NULL, NULL, 21),
  -- Vigoroth - Focus Punch - TM01
  (288, 28800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Vigoroth - Water Pulse - TM03
  (288, 28800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 23),
  -- Vigoroth - Roar - TM05
  (288, 28800, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 24),
  -- Vigoroth - Bulk Up - TM08
  (288, 28800, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 25),
  -- Vigoroth - Work Up - TM10
  (288, 28800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 26),
  -- Vigoroth - Sunny Day - TM11
  (288, 28800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 27),
  -- Vigoroth - Taunt - TM12
  (288, 28800, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 28),
  -- Vigoroth - Ice Beam - TM13
  (288, 28800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 29),
  -- Vigoroth - Blizzard - TM14
  (288, 28800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 30),
  -- Vigoroth - Protect - TM17
  (288, 28800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 31),
  -- Vigoroth - Rain Dance - TM18
  (288, 28800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 32),
  -- Vigoroth - Solar Beam - TM22
  (288, 28800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 33),
  -- Vigoroth - Thunderbolt - TM24
  (288, 28800, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 34),
  -- Vigoroth - Thunder - TM25
  (288, 28800, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 35),
  -- Vigoroth - Earthquake - TM26
  (288, 28800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 36),
  -- Vigoroth - Low Sweep - TM27
  (288, 28800, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 37),
  -- Vigoroth - Shadow Ball - TM30
  (288, 28800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 38),
  -- Vigoroth - Brick Break - TM31
  (288, 28800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 39),
  -- Vigoroth - Double Team - TM32
  (288, 28800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 40),
  -- Vigoroth - Shock Wave - TM34
  (288, 28800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 41),
  -- Vigoroth - Flamethrower - TM35
  (288, 28800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 42),
  -- Vigoroth - Fire Blast - TM38
  (288, 28800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 43),
  -- Vigoroth - Rock Tomb - TM39
  (288, 28800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 44),
  -- Vigoroth - Aerial Ace - TM40
  (288, 28800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 45),
  -- Vigoroth - Facade - TM42
  (288, 28800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 46),
  -- Vigoroth - Rest - TM44
  (288, 28800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 47),
  -- Vigoroth - Attract - TM45
  (288, 28800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 48),
  -- Vigoroth - Focus Blast - TM52
  (288, 28800, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 49),
  -- Vigoroth - Fling - TM56
  (288, 28800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 50),
  -- Vigoroth - Endure - TM58
  (288, 28800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 51),
  -- Vigoroth - Shadow Claw - TM65
  (288, 28800, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 52),
  -- Vigoroth - Rock Slide - TM80
  (288, 28800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 53),
  -- Vigoroth - Sleep Talk - TM82
  (288, 28800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 54),
  -- Vigoroth - Bulldoze - TM83
  (288, 28800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 55),
  -- Vigoroth - Swagger - TM87
  (288, 28800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 56),
  -- Vigoroth - Substitute - TM90
  (288, 28800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 57),
  -- Vigoroth - Cut - TM93
  (288, 28800, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 58),
  -- Vigoroth - Strength - TM96
  (288, 28800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 59),
  -- Vigoroth - Rock Smash - TM98
  (288, 28800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 60),
  -- Vigoroth - Rock Climb - TM100
  (288, 28800, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 61),
  -- Vigoroth - After You - Egg
  (288, 28800, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Vigoroth - Body Slam - Egg
  (288, 28800, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Vigoroth - Crush Claw - Egg
  (288, 28800, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Vigoroth - Curse - Egg
  (288, 28800, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Vigoroth - Hammer Arm - Egg
  (288, 28800, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Vigoroth - Night Slash - Egg
  (288, 28800, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Vigoroth - Slash - Egg
  (288, 28800, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Vigoroth - Snore - Egg
  (288, 28800, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Vigoroth - Tickle - Egg
  (288, 28800, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Slaking - Swagger - Starting Move
  (289, 28900, 207, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Slaking - Hammer Arm - Starting Move
  (289, 28900, 359, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Slaking - Fling - Starting Move
  (289, 28900, 374, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Slaking - Play Rough - Starting Move
  (289, 28900, 583, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Slaking - Reversal - Starting Move
  (289, 28900, 179, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Slaking - Focus Energy - Starting Move
  (289, 28900, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Slaking - Uproar - Starting Move
  (289, 28900, 253, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Slaking - Fury Swipes - Starting Move
  (289, 28900, 154, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Slaking - Endure - Starting Move
  (289, 28900, 203, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Slaking - Slash - Starting Move
  (289, 28900, 163, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Slaking - Focus Punch - Starting Move
  (289, 28900, 264, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Slaking - Scratch - Starting Move
  (289, 28900, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Slaking - Yawn - Starting Move
  (289, 28900, 281, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Slaking - Encore - Starting Move
  (289, 28900, 227, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Slaking - Slack Off - Starting Move
  (289, 28900, 303, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Slaking - Swagger - Evolution
  (289, 28900, 207, 21, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Slaking - Encore - Level 6
  (289, 28900, 227, 21, NULL, 1, 6, NULL, NULL, NULL, 17),
  -- Slaking - Slack Off - Level 9
  (289, 28900, 303, 21, NULL, 1, 9, NULL, NULL, NULL, 18),
  -- Slaking - Rest - Level 14
  (289, 28900, 156, 21, NULL, 1, 14, NULL, NULL, NULL, 19),
  -- Slaking - Amnesia - Level 17
  (289, 28900, 133, 21, NULL, 1, 17, NULL, NULL, NULL, 20),
  -- Slaking - Covet - Level 23
  (289, 28900, 343, 21, NULL, 1, 23, NULL, NULL, NULL, 21),
  -- Slaking - Headbutt - Level 27
  (289, 28900, 29, 21, NULL, 1, 27, NULL, NULL, NULL, 22),
  -- Slaking - Counter - Level 33
  (289, 28900, 68, 21, NULL, 1, 33, NULL, NULL, NULL, 23),
  -- Slaking - Flail - Level 39
  (289, 28900, 175, 21, NULL, 1, 39, NULL, NULL, NULL, 24),
  -- Slaking - Fling - Level 47
  (289, 28900, 374, 21, NULL, 1, 47, NULL, NULL, NULL, 25),
  -- Slaking - Sucker Punch - Level 53
  (289, 28900, 389, 21, NULL, 1, 53, NULL, NULL, NULL, 26),
  -- Slaking - Hammer Arm - Level 61
  (289, 28900, 359, 21, NULL, 1, 61, NULL, NULL, NULL, 27),
  -- Slaking - Focus Punch - TM01
  (289, 28900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 28),
  -- Slaking - Water Pulse - TM03
  (289, 28900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 29),
  -- Slaking - Roar - TM05
  (289, 28900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 30),
  -- Slaking - Bulk Up - TM08
  (289, 28900, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 31),
  -- Slaking - Work Up - TM10
  (289, 28900, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 32),
  -- Slaking - Sunny Day - TM11
  (289, 28900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 33),
  -- Slaking - Taunt - TM12
  (289, 28900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 34),
  -- Slaking - Ice Beam - TM13
  (289, 28900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 35),
  -- Slaking - Blizzard - TM14
  (289, 28900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 36),
  -- Slaking - Hyper Beam - TM15
  (289, 28900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 37),
  -- Slaking - Protect - TM17
  (289, 28900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 38),
  -- Slaking - Rain Dance - TM18
  (289, 28900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 39),
  -- Slaking - Solar Beam - TM22
  (289, 28900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 40),
  -- Slaking - Thunderbolt - TM24
  (289, 28900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 41),
  -- Slaking - Thunder - TM25
  (289, 28900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 42),
  -- Slaking - Earthquake - TM26
  (289, 28900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 43),
  -- Slaking - Low Sweep - TM27
  (289, 28900, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 44),
  -- Slaking - Shadow Ball - TM30
  (289, 28900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 45),
  -- Slaking - Brick Break - TM31
  (289, 28900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 46),
  -- Slaking - Double Team - TM32
  (289, 28900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 47),
  -- Slaking - Shock Wave - TM34
  (289, 28900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 48),
  -- Slaking - Flamethrower - TM35
  (289, 28900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 49),
  -- Slaking - Fire Blast - TM38
  (289, 28900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 50),
  -- Slaking - Rock Tomb - TM39
  (289, 28900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 51),
  -- Slaking - Aerial Ace - TM40
  (289, 28900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 52),
  -- Slaking - Facade - TM42
  (289, 28900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 53),
  -- Slaking - Rest - TM44
  (289, 28900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 54),
  -- Slaking - Attract - TM45
  (289, 28900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 55),
  -- Slaking - Focus Blast - TM52
  (289, 28900, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 56),
  -- Slaking - Fling - TM56
  (289, 28900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 57),
  -- Slaking - Endure - TM58
  (289, 28900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 58),
  -- Slaking - Shadow Claw - TM65
  (289, 28900, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 59),
  -- Slaking - Giga Impact - TM68
  (289, 28900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 60),
  -- Slaking - Rock Slide - TM80
  (289, 28900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 61),
  -- Slaking - Sleep Talk - TM82
  (289, 28900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 62),
  -- Slaking - Bulldoze - TM83
  (289, 28900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 63),
  -- Slaking - Swagger - TM87
  (289, 28900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 64),
  -- Slaking - Substitute - TM90
  (289, 28900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 65),
  -- Slaking - Cut - TM93
  (289, 28900, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 66),
  -- Slaking - Strength - TM96
  (289, 28900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 67),
  -- Slaking - Rock Smash - TM98
  (289, 28900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 68),
  -- Slaking - Rock Climb - TM100
  (289, 28900, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 69),
  -- Slaking - After You - Egg
  (289, 28900, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Slaking - Body Slam - Egg
  (289, 28900, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Slaking - Crush Claw - Egg
  (289, 28900, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Slaking - Curse - Egg
  (289, 28900, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Slaking - Hammer Arm - Egg
  (289, 28900, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Slaking - Night Slash - Egg
  (289, 28900, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Slaking - Slash - Egg
  (289, 28900, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Slaking - Snore - Egg
  (289, 28900, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Slaking - Tickle - Egg
  (289, 28900, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Nincada - Sand Attack - Starting Move
  (290, 29000, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Nincada - Scratch - Starting Move
  (290, 29000, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Nincada - Harden - Level 5
  (290, 29000, 106, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nincada - False Swipe - Level 10
  (290, 29000, 206, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Nincada - Mud-Slap - Level 15
  (290, 29000, 189, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nincada - Absorb - Level 21
  (290, 29000, 71, 21, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Nincada - Metal Claw - Level 25
  (290, 29000, 232, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nincada - Fury Swipes - Level 30
  (290, 29000, 154, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Nincada - Mind Reader - Level 35
  (290, 29000, 170, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Nincada - Dig - Level 40
  (290, 29000, 91, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Nincada - Sunny Day - TM11
  (290, 29000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 11),
  -- Nincada - Protect - TM17
  (290, 29000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 12),
  -- Nincada - Giga Drain - TM19
  (290, 29000, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 13),
  -- Nincada - Solar Beam - TM22
  (290, 29000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 14),
  -- Nincada - Dig - TM28
  (290, 29000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 15),
  -- Nincada - Shadow Ball - TM30
  (290, 29000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 16),
  -- Nincada - Double Team - TM32
  (290, 29000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 17),
  -- Nincada - Sandstorm - TM37
  (290, 29000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 18),
  -- Nincada - Aerial Ace - TM40
  (290, 29000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 19),
  -- Nincada - Facade - TM42
  (290, 29000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 20),
  -- Nincada - Rest - TM44
  (290, 29000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 21),
  -- Nincada - False Swipe - TM54
  (290, 29000, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 22),
  -- Nincada - Endure - TM58
  (290, 29000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 23),
  -- Nincada - Bug Buzz - TM62
  (290, 29000, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 24),
  -- Nincada - Flash - TM70
  (290, 29000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 25),
  -- Nincada - X-Scissor - TM81
  (290, 29000, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 26),
  -- Nincada - Sleep Talk - TM82
  (290, 29000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 27),
  -- Nincada - Swagger - TM87
  (290, 29000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 28),
  -- Nincada - Substitute - TM90
  (290, 29000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 29),
  -- Nincada - Cut - TM93
  (290, 29000, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 30),
  -- Nincada - Bug Bite - Egg
  (290, 29000, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Nincada - Final Gambit - Egg
  (290, 29000, 515, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Nincada - Flail - Egg
  (290, 29000, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Nincada - Gust - Egg
  (290, 29000, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Nincada - Night Slash - Egg
  (290, 29000, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Ninjask - Double Team - Starting Move
  (291, 29100, 104, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ninjask - Screech - Starting Move
  (291, 29100, 103, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ninjask - Fury Cutter - Starting Move
  (291, 29100, 210, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Ninjask - Baton Pass - Starting Move
  (291, 29100, 226, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Ninjask - Aerial Ace - Starting Move
  (291, 29100, 332, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Ninjask - Mud-Slap - Starting Move
  (291, 29100, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Ninjask - Metal Claw - Starting Move
  (291, 29100, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Ninjask - Dig - Starting Move
  (291, 29100, 91, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Ninjask - Sand Attack - Starting Move
  (291, 29100, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Ninjask - Scratch - Starting Move
  (291, 29100, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Ninjask - Harden - Starting Move
  (291, 29100, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Ninjask - False Swipe - Starting Move
  (291, 29100, 206, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Ninjask - Double Team - Evolution
  (291, 29100, 104, 21, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Ninjask - Screech - Evolution
  (291, 29100, 103, 21, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Ninjask - Fury Cutter - Evolution
  (291, 29100, 210, 21, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Ninjask - Agility - Level 15
  (291, 29100, 97, 21, NULL, 1, 15, NULL, NULL, NULL, 16),
  -- Ninjask - Absorb - Level 23
  (291, 29100, 71, 21, NULL, 1, 23, NULL, NULL, NULL, 17),
  -- Ninjask - Bug Bite - Level 29
  (291, 29100, 450, 21, NULL, 1, 29, NULL, NULL, NULL, 18),
  -- Ninjask - Fury Swipes - Level 36
  (291, 29100, 154, 21, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Ninjask - Mind Reader - Level 43
  (291, 29100, 170, 21, NULL, 1, 43, NULL, NULL, NULL, 20),
  -- Ninjask - Slash - Level 50
  (291, 29100, 163, 21, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Ninjask - Swords Dance - Level 57
  (291, 29100, 14, 21, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Ninjask - X-Scissor - Level 64
  (291, 29100, 404, 21, NULL, 1, 64, NULL, NULL, NULL, 23),
  -- Ninjask - Sunny Day - TM11
  (291, 29100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 24),
  -- Ninjask - Hyper Beam - TM15
  (291, 29100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Ninjask - Protect - TM17
  (291, 29100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Ninjask - Giga Drain - TM19
  (291, 29100, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Ninjask - Solar Beam - TM22
  (291, 29100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Ninjask - Dig - TM28
  (291, 29100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Ninjask - Shadow Ball - TM30
  (291, 29100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Ninjask - Double Team - TM32
  (291, 29100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Ninjask - Sandstorm - TM37
  (291, 29100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 32),
  -- Ninjask - Aerial Ace - TM40
  (291, 29100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 33),
  -- Ninjask - Facade - TM42
  (291, 29100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Ninjask - Rest - TM44
  (291, 29100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Ninjask - Thief - TM46
  (291, 29100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Ninjask - Roost - TM51
  (291, 29100, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 37),
  -- Ninjask - False Swipe - TM54
  (291, 29100, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 38),
  -- Ninjask - Endure - TM58
  (291, 29100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Ninjask - Bug Buzz - TM62
  (291, 29100, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 40),
  -- Ninjask - Giga Impact - TM68
  (291, 29100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Ninjask - Flash - TM70
  (291, 29100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Ninjask - Swords Dance - TM75
  (291, 29100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 43),
  -- Ninjask - X-Scissor - TM81
  (291, 29100, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 44),
  -- Ninjask - Sleep Talk - TM82
  (291, 29100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Ninjask - Swagger - TM87
  (291, 29100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Ninjask - U-turn - TM89
  (291, 29100, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 47),
  -- Ninjask - Substitute - TM90
  (291, 29100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Ninjask - Cut - TM93
  (291, 29100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 49),
  -- Ninjask - Defog - TM97
  (291, 29100, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 50),
  -- Ninjask - Bug Bite - Egg
  (291, 29100, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ninjask - Final Gambit - Egg
  (291, 29100, 515, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ninjask - Flail - Egg
  (291, 29100, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ninjask - Gust - Egg
  (291, 29100, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ninjask - Night Slash - Egg
  (291, 29100, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shedinja - Shadow Claw - Starting Move
  (292, 29200, 421, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shedinja - Grudge - Starting Move
  (292, 29200, 288, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Shedinja - Mud-Slap - Starting Move
  (292, 29200, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Shedinja - Metal Claw - Starting Move
  (292, 29200, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Shedinja - Dig - Starting Move
  (292, 29200, 91, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Shedinja - Scratch - Starting Move
  (292, 29200, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Shedinja - Sand Attack - Starting Move
  (292, 29200, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Shedinja - Harden - Starting Move
  (292, 29200, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Shedinja - False Swipe - Starting Move
  (292, 29200, 206, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Shedinja - Confuse Ray - Level 15
  (292, 29200, 109, 21, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Shedinja - Absorb - Level 23
  (292, 29200, 71, 21, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Shedinja - Shadow Sneak - Level 29
  (292, 29200, 425, 21, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Shedinja - Fury Swipes - Level 36
  (292, 29200, 154, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Shedinja - Mind Reader - Level 43
  (292, 29200, 170, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Shedinja - Shadow Ball - Level 50
  (292, 29200, 247, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Shedinja - Spite - Level 57
  (292, 29200, 180, 21, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Shedinja - Phantom Force - Level 64
  (292, 29200, 566, 21, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Shedinja - Sunny Day - TM11
  (292, 29200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Shedinja - Hyper Beam - TM15
  (292, 29200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Shedinja - Protect - TM17
  (292, 29200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Shedinja - Giga Drain - TM19
  (292, 29200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 21),
  -- Shedinja - Solar Beam - TM22
  (292, 29200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Shedinja - Dig - TM28
  (292, 29200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 23),
  -- Shedinja - Shadow Ball - TM30
  (292, 29200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Shedinja - Double Team - TM32
  (292, 29200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Shedinja - Sandstorm - TM37
  (292, 29200, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 26),
  -- Shedinja - Aerial Ace - TM40
  (292, 29200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 27),
  -- Shedinja - Facade - TM42
  (292, 29200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Shedinja - Rest - TM44
  (292, 29200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Shedinja - Thief - TM46
  (292, 29200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Shedinja - False Swipe - TM54
  (292, 29200, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 31),
  -- Shedinja - Endure - TM58
  (292, 29200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Shedinja - Will-O-Wisp - TM61
  (292, 29200, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 33),
  -- Shedinja - Bug Buzz - TM62
  (292, 29200, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 34),
  -- Shedinja - Shadow Claw - TM65
  (292, 29200, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 35),
  -- Shedinja - Giga Impact - TM68
  (292, 29200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Shedinja - Flash - TM70
  (292, 29200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Shedinja - X-Scissor - TM81
  (292, 29200, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 38),
  -- Shedinja - Sleep Talk - TM82
  (292, 29200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Shedinja - Dream Eater - TM85
  (292, 29200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 40),
  -- Shedinja - Swagger - TM87
  (292, 29200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Shedinja - Substitute - TM90
  (292, 29200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Shedinja - Cut - TM93
  (292, 29200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 43),
  -- Shedinja - Bug Bite - Egg
  (292, 29200, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shedinja - Final Gambit - Egg
  (292, 29200, 515, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shedinja - Flail - Egg
  (292, 29200, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shedinja - Gust - Egg
  (292, 29200, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shedinja - Night Slash - Egg
  (292, 29200, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Whismur - Astonish - Starting Move
  (293, 29300, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Whismur - Pound - Starting Move
  (293, 29300, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Whismur - Echoed Voice - Level 5
  (293, 29300, 497, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Whismur - Howl - Level 10
  (293, 29300, 336, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Whismur - Rest - Level 15
  (293, 29300, 156, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Whismur - Sleep Talk - Level 15
  (293, 29300, 214, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Whismur - Stomp - Level 21
  (293, 29300, 23, 21, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Whismur - Roar - Level 25
  (293, 29300, 46, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Whismur - Supersonic - Level 30
  (293, 29300, 48, 21, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Whismur - Uproar - Level 35
  (293, 29300, 253, 21, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Whismur - Screech - Level 40
  (293, 29300, 103, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Whismur - Hyper Voice - Level 45
  (293, 29300, 304, 21, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Whismur - Water Pulse - TM03
  (293, 29300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 13),
  -- Whismur - Roar - TM05
  (293, 29300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 14),
  -- Whismur - Work Up - TM10
  (293, 29300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 15),
  -- Whismur - Sunny Day - TM11
  (293, 29300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Whismur - Ice Beam - TM13
  (293, 29300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Whismur - Blizzard - TM14
  (293, 29300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Whismur - Protect - TM17
  (293, 29300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Whismur - Rain Dance - TM18
  (293, 29300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Whismur - Solar Beam - TM22
  (293, 29300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 21),
  -- Whismur - Shadow Ball - TM30
  (293, 29300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 22),
  -- Whismur - Double Team - TM32
  (293, 29300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Whismur - Shock Wave - TM34
  (293, 29300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 24),
  -- Whismur - Flamethrower - TM35
  (293, 29300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 25),
  -- Whismur - Fire Blast - TM38
  (293, 29300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 26),
  -- Whismur - Facade - TM42
  (293, 29300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Whismur - Rest - TM44
  (293, 29300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Whismur - Attract - TM45
  (293, 29300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Whismur - Fling - TM56
  (293, 29300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 30),
  -- Whismur - Endure - TM58
  (293, 29300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Whismur - Sleep Talk - TM82
  (293, 29300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Whismur - Swagger - TM87
  (293, 29300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Whismur - Substitute - TM90
  (293, 29300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Whismur - Circle Throw - Egg
  (293, 29300, 509, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Whismur - Disarming Voice - Egg
  (293, 29300, 574, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Whismur - Endeavor - Egg
  (293, 29300, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Whismur - Extrasensory - Egg
  (293, 29300, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Whismur - Fake Tears - Egg
  (293, 29300, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Whismur - Hammer Arm - Egg
  (293, 29300, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Whismur - Smokescreen - Egg
  (293, 29300, 108, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Whismur - Snore - Egg
  (293, 29300, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Whismur - Take Down - Egg
  (293, 29300, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Whismur - Whirlwind - Egg
  (293, 29300, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Loudred - Bite - Starting Move
  (294, 29400, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Loudred - Astonish - Starting Move
  (294, 29400, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Loudred - Pound - Starting Move
  (294, 29400, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Loudred - Echoed Voice - Starting Move
  (294, 29400, 497, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Loudred - Howl - Starting Move
  (294, 29400, 336, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Loudred - Bite - Evolution
  (294, 29400, 44, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Loudred - Rest - Level 15
  (294, 29400, 156, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Loudred - Sleep Talk - Level 15
  (294, 29400, 214, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Loudred - Stomp - Level 23
  (294, 29400, 23, 21, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Loudred - Roar - Level 29
  (294, 29400, 46, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Loudred - Supersonic - Level 36
  (294, 29400, 48, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Loudred - Uproar - Level 43
  (294, 29400, 253, 21, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Loudred - Screech - Level 50
  (294, 29400, 103, 21, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Loudred - Hyper Voice - Level 57
  (294, 29400, 304, 21, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Loudred - Water Pulse - TM03
  (294, 29400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Loudred - Roar - TM05
  (294, 29400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 16),
  -- Loudred - Work Up - TM10
  (294, 29400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Loudred - Sunny Day - TM11
  (294, 29400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Loudred - Taunt - TM12
  (294, 29400, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Loudred - Ice Beam - TM13
  (294, 29400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Loudred - Blizzard - TM14
  (294, 29400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Loudred - Protect - TM17
  (294, 29400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Loudred - Rain Dance - TM18
  (294, 29400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Loudred - Solar Beam - TM22
  (294, 29400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Loudred - Earthquake - TM26
  (294, 29400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Loudred - Shadow Ball - TM30
  (294, 29400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Loudred - Brick Break - TM31
  (294, 29400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Loudred - Double Team - TM32
  (294, 29400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Loudred - Shock Wave - TM34
  (294, 29400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Loudred - Flamethrower - TM35
  (294, 29400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 30),
  -- Loudred - Fire Blast - TM38
  (294, 29400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 31),
  -- Loudred - Rock Tomb - TM39
  (294, 29400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Loudred - Torment - TM41
  (294, 29400, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 33),
  -- Loudred - Facade - TM42
  (294, 29400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Loudred - Rest - TM44
  (294, 29400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Loudred - Attract - TM45
  (294, 29400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Loudred - Overheat - TM50
  (294, 29400, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 37),
  -- Loudred - Fling - TM56
  (294, 29400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Loudred - Endure - TM58
  (294, 29400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Loudred - Rock Slide - TM80
  (294, 29400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 40),
  -- Loudred - Sleep Talk - TM82
  (294, 29400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Loudred - Bulldoze - TM83
  (294, 29400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 42),
  -- Loudred - Swagger - TM87
  (294, 29400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Loudred - Substitute - TM90
  (294, 29400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Loudred - Strength - TM96
  (294, 29400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Loudred - Rock Smash - TM98
  (294, 29400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Loudred - Circle Throw - Egg
  (294, 29400, 509, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Loudred - Disarming Voice - Egg
  (294, 29400, 574, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Loudred - Endeavor - Egg
  (294, 29400, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Loudred - Extrasensory - Egg
  (294, 29400, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Loudred - Fake Tears - Egg
  (294, 29400, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Loudred - Hammer Arm - Egg
  (294, 29400, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Loudred - Smokescreen - Egg
  (294, 29400, 108, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Loudred - Snore - Egg
  (294, 29400, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Loudred - Take Down - Egg
  (294, 29400, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Loudred - Whirlwind - Egg
  (294, 29400, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Exploud - Crunch - Starting Move
  (295, 29500, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Exploud - Bite - Starting Move
  (295, 29500, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Exploud - Ice Fang - Starting Move
  (295, 29500, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Exploud - Fire Fang - Starting Move
  (295, 29500, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Exploud - Thunder Fang - Starting Move
  (295, 29500, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Exploud - Astonish - Starting Move
  (295, 29500, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Exploud - Pound - Starting Move
  (295, 29500, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Exploud - Echoed Voice - Starting Move
  (295, 29500, 497, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Exploud - Howl - Starting Move
  (295, 29500, 336, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Exploud - Crunch - Evolution
  (295, 29500, 242, 21, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Exploud - Rest - Level 15
  (295, 29500, 156, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Exploud - Sleep Talk - Level 15
  (295, 29500, 214, 21, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Exploud - Stomp - Level 23
  (295, 29500, 23, 21, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Exploud - Roar - Level 29
  (295, 29500, 46, 21, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Exploud - Supersonic - Level 36
  (295, 29500, 48, 21, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Exploud - Uproar - Level 45
  (295, 29500, 253, 21, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Exploud - Screech - Level 54
  (295, 29500, 103, 21, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Exploud - Hyper Voice - Level 63
  (295, 29500, 304, 21, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Exploud - Boomburst - Level 72
  (295, 29500, 586, 21, NULL, 1, 72, NULL, NULL, NULL, 19),
  -- Exploud - Hyper Beam - Level 81
  (295, 29500, 63, 21, NULL, 1, 81, NULL, NULL, NULL, 20),
  -- Exploud - Water Pulse - TM03
  (295, 29500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 21),
  -- Exploud - Roar - TM05
  (295, 29500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 22),
  -- Exploud - Work Up - TM10
  (295, 29500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 23),
  -- Exploud - Sunny Day - TM11
  (295, 29500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 24),
  -- Exploud - Taunt - TM12
  (295, 29500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 25),
  -- Exploud - Ice Beam - TM13
  (295, 29500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 26),
  -- Exploud - Blizzard - TM14
  (295, 29500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 27),
  -- Exploud - Hyper Beam - TM15
  (295, 29500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Exploud - Protect - TM17
  (295, 29500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Exploud - Rain Dance - TM18
  (295, 29500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 30),
  -- Exploud - Solar Beam - TM22
  (295, 29500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 31),
  -- Exploud - Earthquake - TM26
  (295, 29500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 32),
  -- Exploud - Shadow Ball - TM30
  (295, 29500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Exploud - Brick Break - TM31
  (295, 29500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Exploud - Double Team - TM32
  (295, 29500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Exploud - Shock Wave - TM34
  (295, 29500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 36),
  -- Exploud - Flamethrower - TM35
  (295, 29500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 37),
  -- Exploud - Fire Blast - TM38
  (295, 29500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 38),
  -- Exploud - Rock Tomb - TM39
  (295, 29500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 39),
  -- Exploud - Torment - TM41
  (295, 29500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 40),
  -- Exploud - Facade - TM42
  (295, 29500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 41),
  -- Exploud - Rest - TM44
  (295, 29500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 42),
  -- Exploud - Attract - TM45
  (295, 29500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 43),
  -- Exploud - Overheat - TM50
  (295, 29500, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 44),
  -- Exploud - Focus Blast - TM52
  (295, 29500, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 45),
  -- Exploud - Fling - TM56
  (295, 29500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 46),
  -- Exploud - Endure - TM58
  (295, 29500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 47),
  -- Exploud - Giga Impact - TM68
  (295, 29500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 48),
  -- Exploud - Avalanche - TM72
  (295, 29500, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 49),
  -- Exploud - Rock Slide - TM80
  (295, 29500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 50),
  -- Exploud - Sleep Talk - TM82
  (295, 29500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 51),
  -- Exploud - Bulldoze - TM83
  (295, 29500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 52),
  -- Exploud - Swagger - TM87
  (295, 29500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 53),
  -- Exploud - Substitute - TM90
  (295, 29500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 54),
  -- Exploud - Surf - TM95
  (295, 29500, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 55),
  -- Exploud - Strength - TM96
  (295, 29500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 56),
  -- Exploud - Rock Smash - TM98
  (295, 29500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 57),
  -- Exploud - Rock Climb - TM100
  (295, 29500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 58),
  -- Exploud - Circle Throw - Egg
  (295, 29500, 509, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Exploud - Disarming Voice - Egg
  (295, 29500, 574, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Exploud - Endeavor - Egg
  (295, 29500, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Exploud - Extrasensory - Egg
  (295, 29500, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Exploud - Fake Tears - Egg
  (295, 29500, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Exploud - Hammer Arm - Egg
  (295, 29500, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Exploud - Smokescreen - Egg
  (295, 29500, 108, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Exploud - Snore - Egg
  (295, 29500, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Exploud - Take Down - Egg
  (295, 29500, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Exploud - Whirlwind - Egg
  (295, 29500, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Makuhita - Tackle - Starting Move
  (296, 29600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Makuhita - Focus Energy - Starting Move
  (296, 29600, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Makuhita - Sand Attack - Level 4
  (296, 29600, 28, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Makuhita - Arm Thrust - Level 7
  (296, 29600, 292, 21, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Makuhita - Fake Out - Level 10
  (296, 29600, 252, 21, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Makuhita - Force Palm - Level 13
  (296, 29600, 395, 21, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Makuhita - Whirlwind - Level 16
  (296, 29600, 18, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Makuhita - Knock Off - Level 19
  (296, 29600, 282, 21, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Makuhita - Vital Throw - Level 22
  (296, 29600, 233, 21, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Makuhita - Belly Drum - Level 25
  (296, 29600, 187, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Makuhita - Detect - Level 28
  (296, 29600, 197, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Makuhita - Seismic Toss - Level 31
  (296, 29600, 69, 21, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Makuhita - Focus Punch - Level 34
  (296, 29600, 264, 21, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Makuhita - Endure - Level 37
  (296, 29600, 203, 21, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Makuhita - Close Combat - Level 40
  (296, 29600, 370, 21, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Makuhita - Reversal - Level 43
  (296, 29600, 179, 21, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Makuhita - Heavy Slam - Level 46
  (296, 29600, 484, 21, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Makuhita - Focus Punch - TM01
  (296, 29600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Makuhita - Bulk Up - TM08
  (296, 29600, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 19),
  -- Makuhita - Work Up - TM10
  (296, 29600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Makuhita - Sunny Day - TM11
  (296, 29600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Makuhita - Protect - TM17
  (296, 29600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Makuhita - Rain Dance - TM18
  (296, 29600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Makuhita - Earthquake - TM26
  (296, 29600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Makuhita - Low Sweep - TM27
  (296, 29600, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 25),
  -- Makuhita - Dig - TM28
  (296, 29600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Makuhita - Brick Break - TM31
  (296, 29600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Makuhita - Double Team - TM32
  (296, 29600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Makuhita - Rock Tomb - TM39
  (296, 29600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 29),
  -- Makuhita - Facade - TM42
  (296, 29600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Makuhita - Rest - TM44
  (296, 29600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Makuhita - Attract - TM45
  (296, 29600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Makuhita - Focus Blast - TM52
  (296, 29600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 33),
  -- Makuhita - Fling - TM56
  (296, 29600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Makuhita - Endure - TM58
  (296, 29600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Makuhita - Rock Slide - TM80
  (296, 29600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 36),
  -- Makuhita - Sleep Talk - TM82
  (296, 29600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Makuhita - Bulldoze - TM83
  (296, 29600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 38),
  -- Makuhita - Poison Jab - TM84
  (296, 29600, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 39),
  -- Makuhita - Swagger - TM87
  (296, 29600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Makuhita - Substitute - TM90
  (296, 29600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Makuhita - Surf - TM95
  (296, 29600, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 42),
  -- Makuhita - Strength - TM96
  (296, 29600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 43),
  -- Makuhita - Rock Smash - TM98
  (296, 29600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Makuhita - Rock Climb - TM100
  (296, 29600, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 45),
  -- Makuhita - Bullet Punch - Egg
  (296, 29600, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Makuhita - Counter - Egg
  (296, 29600, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Makuhita - Cross Chop - Egg
  (296, 29600, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Makuhita - Detect - Egg
  (296, 29600, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Makuhita - Dynamic Punch - Egg
  (296, 29600, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Makuhita - Feint - Egg
  (296, 29600, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Makuhita - Helping Hand - Egg
  (296, 29600, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Makuhita - Revenge - Egg
  (296, 29600, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Makuhita - Wide Guard - Egg
  (296, 29600, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hariyama - Brine - Starting Move
  (297, 29700, 362, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Hariyama - Tackle - Starting Move
  (297, 29700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Hariyama - Focus Energy - Starting Move
  (297, 29700, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Hariyama - Sand Attack - Starting Move
  (297, 29700, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Hariyama - Arm Thrust - Starting Move
  (297, 29700, 292, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Hariyama - Sand Attack - Level 4
  (297, 29700, 28, 21, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Hariyama - Arm Thrust - Level 7
  (297, 29700, 292, 21, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Hariyama - Fake Out - Level 10
  (297, 29700, 252, 21, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Hariyama - Force Palm - Level 13
  (297, 29700, 395, 21, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Hariyama - Whirlwind - Level 16
  (297, 29700, 18, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Hariyama - Knock Off - Level 19
  (297, 29700, 282, 21, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Hariyama - Vital Throw - Level 22
  (297, 29700, 233, 21, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Hariyama - Belly Drum - Level 26
  (297, 29700, 187, 21, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Hariyama - Detect - Level 30
  (297, 29700, 197, 21, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Hariyama - Seismic Toss - Level 34
  (297, 29700, 69, 21, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Hariyama - Focus Punch - Level 38
  (297, 29700, 264, 21, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Hariyama - Endure - Level 42
  (297, 29700, 203, 21, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Hariyama - Close Combat - Level 46
  (297, 29700, 370, 21, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Hariyama - Reversal - Level 50
  (297, 29700, 179, 21, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Hariyama - Heavy Slam - Level 54
  (297, 29700, 484, 21, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Hariyama - Focus Punch - TM01
  (297, 29700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 21),
  -- Hariyama - Bulk Up - TM08
  (297, 29700, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 22),
  -- Hariyama - Work Up - TM10
  (297, 29700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 23),
  -- Hariyama - Sunny Day - TM11
  (297, 29700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 24),
  -- Hariyama - Hyper Beam - TM15
  (297, 29700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Hariyama - Protect - TM17
  (297, 29700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Hariyama - Rain Dance - TM18
  (297, 29700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Hariyama - Earthquake - TM26
  (297, 29700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 28),
  -- Hariyama - Low Sweep - TM27
  (297, 29700, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 29),
  -- Hariyama - Dig - TM28
  (297, 29700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Hariyama - Brick Break - TM31
  (297, 29700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Hariyama - Double Team - TM32
  (297, 29700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Hariyama - Rock Tomb - TM39
  (297, 29700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Hariyama - Facade - TM42
  (297, 29700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Hariyama - Rest - TM44
  (297, 29700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Hariyama - Attract - TM45
  (297, 29700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Hariyama - Focus Blast - TM52
  (297, 29700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Hariyama - Brine - TM55
  (297, 29700, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 38),
  -- Hariyama - Fling - TM56
  (297, 29700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 39),
  -- Hariyama - Endure - TM58
  (297, 29700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Hariyama - Payback - TM66
  (297, 29700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 41),
  -- Hariyama - Giga Impact - TM68
  (297, 29700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Hariyama - Stone Edge - TM71
  (297, 29700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 43),
  -- Hariyama - Rock Slide - TM80
  (297, 29700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 44),
  -- Hariyama - Sleep Talk - TM82
  (297, 29700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Hariyama - Bulldoze - TM83
  (297, 29700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 46),
  -- Hariyama - Poison Jab - TM84
  (297, 29700, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 47),
  -- Hariyama - Swagger - TM87
  (297, 29700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Hariyama - Substitute - TM90
  (297, 29700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Hariyama - Surf - TM95
  (297, 29700, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 50),
  -- Hariyama - Strength - TM96
  (297, 29700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 51),
  -- Hariyama - Rock Smash - TM98
  (297, 29700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 52),
  -- Hariyama - Rock Climb - TM100
  (297, 29700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 53),
  -- Hariyama - Bullet Punch - Egg
  (297, 29700, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hariyama - Counter - Egg
  (297, 29700, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hariyama - Cross Chop - Egg
  (297, 29700, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hariyama - Detect - Egg
  (297, 29700, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Hariyama - Dynamic Punch - Egg
  (297, 29700, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Hariyama - Feint - Egg
  (297, 29700, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Hariyama - Helping Hand - Egg
  (297, 29700, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hariyama - Revenge - Egg
  (297, 29700, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Hariyama - Wide Guard - Egg
  (297, 29700, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Azurill - Splash - Starting Move
  (298, 29800, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Azurill - Water Gun - Starting Move
  (298, 29800, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Azurill - Tail Whip - Starting Move
  (298, 29800, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Azurill - Helping Hand - Level 3
  (298, 29800, 270, 21, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Azurill - Bubble Beam - Level 6
  (298, 29800, 61, 21, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Azurill - Charm - Level 9
  (298, 29800, 204, 21, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Azurill - Slam - Level 12
  (298, 29800, 21, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Azurill - Bounce - Level 15
  (298, 29800, 340, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Azurill - Water Pulse - TM03
  (298, 29800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 9),
  -- Azurill - Hail - TM07
  (298, 29800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 10),
  -- Azurill - Work Up - TM10
  (298, 29800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 11),
  -- Azurill - Ice Beam - TM13
  (298, 29800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 12),
  -- Azurill - Blizzard - TM14
  (298, 29800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 13),
  -- Azurill - Light Screen - TM16
  (298, 29800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 14),
  -- Azurill - Protect - TM17
  (298, 29800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 15),
  -- Azurill - Rain Dance - TM18
  (298, 29800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 16),
  -- Azurill - Iron Tail - TM23
  (298, 29800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 17),
  -- Azurill - Double Team - TM32
  (298, 29800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 18),
  -- Azurill - Facade - TM42
  (298, 29800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 19),
  -- Azurill - Rest - TM44
  (298, 29800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 20),
  -- Azurill - Attract - TM45
  (298, 29800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 21),
  -- Azurill - Scald - TM49
  (298, 29800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 22),
  -- Azurill - Endure - TM58
  (298, 29800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 23),
  -- Azurill - Sleep Talk - TM82
  (298, 29800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 24),
  -- Azurill - Swagger - TM87
  (298, 29800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 25),
  -- Azurill - Substitute - TM90
  (298, 29800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 26),
  -- Azurill - Surf - TM95
  (298, 29800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 27),
  -- Azurill - Waterfall - TM99
  (298, 29800, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 28),
  -- Azurill - Aqua Jet - Egg
  (298, 29800, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Azurill - Belly Drum - Egg
  (298, 29800, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Azurill - Body Slam - Egg
  (298, 29800, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Azurill - Copycat - Egg
  (298, 29800, 383, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Azurill - Encore - Egg
  (298, 29800, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Azurill - Fake Tears - Egg
  (298, 29800, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Azurill - Muddy Water - Egg
  (298, 29800, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Azurill - Perish Song - Egg
  (298, 29800, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Azurill - Present - Egg
  (298, 29800, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Azurill - Sing - Egg
  (298, 29800, 47, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Azurill - Slam - Egg
  (298, 29800, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Azurill - Soak - Egg
  (298, 29800, 487, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Azurill - Supersonic - Egg
  (298, 29800, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Azurill - Tickle - Egg
  (298, 29800, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nosepass - Tackle - Starting Move
  (299, 29900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Nosepass - Harden - Level 4
  (299, 29900, 106, 21, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Nosepass - Block - Level 7
  (299, 29900, 335, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nosepass - Rock Throw - Level 10
  (299, 29900, 88, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Nosepass - Thunder Wave - Level 13
  (299, 29900, 86, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nosepass - Rest - Level 16
  (299, 29900, 156, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Nosepass - Spark - Level 19
  (299, 29900, 209, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Nosepass - Rock Slide - Level 22
  (299, 29900, 157, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Nosepass - Power Gem - Level 25
  (299, 29900, 408, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Nosepass - Rock Blast - Level 28
  (299, 29900, 350, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Nosepass - Discharge - Level 31
  (299, 29900, 435, 21, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Nosepass - Sandstorm - Level 34
  (299, 29900, 201, 21, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Nosepass - Earth Power - Level 37
  (299, 29900, 414, 21, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Nosepass - Stone Edge - Level 40
  (299, 29900, 444, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Nosepass - Lock-On - Level 43
  (299, 29900, 199, 21, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Nosepass - Zap Cannon - Level 43
  (299, 29900, 192, 21, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Nosepass - Sunny Day - TM11
  (299, 29900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Nosepass - Taunt - TM12
  (299, 29900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Nosepass - Protect - TM17
  (299, 29900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Nosepass - Dazzling Gleam - TM21
  (299, 29900, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 20),
  -- Nosepass - Thunderbolt - TM24
  (299, 29900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 21),
  -- Nosepass - Thunder - TM25
  (299, 29900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 22),
  -- Nosepass - Earthquake - TM26
  (299, 29900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Nosepass - Double Team - TM32
  (299, 29900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Nosepass - Shock Wave - TM34
  (299, 29900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 25),
  -- Nosepass - Sandstorm - TM37
  (299, 29900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 26),
  -- Nosepass - Rock Tomb - TM39
  (299, 29900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Nosepass - Torment - TM41
  (299, 29900, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 28),
  -- Nosepass - Facade - TM42
  (299, 29900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Nosepass - Volt Switch - TM43
  (299, 29900, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 30),
  -- Nosepass - Rest - TM44
  (299, 29900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Nosepass - Attract - TM45
  (299, 29900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Nosepass - Endure - TM58
  (299, 29900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Nosepass - Explosion - TM64
  (299, 29900, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 34),
  -- Nosepass - Rock Polish - TM69
  (299, 29900, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 35),
  -- Nosepass - Stone Edge - TM71
  (299, 29900, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 36),
  -- Nosepass - Thunder Wave - TM73
  (299, 29900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 37),
  -- Nosepass - Stealth Rock - TM76
  (299, 29900, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 38),
  -- Nosepass - Rock Slide - TM80
  (299, 29900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Nosepass - Sleep Talk - TM82
  (299, 29900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Nosepass - Bulldoze - TM83
  (299, 29900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Nosepass - Swagger - TM87
  (299, 29900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Nosepass - Substitute - TM90
  (299, 29900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Nosepass - Strength - TM96
  (299, 29900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 44),
  -- Nosepass - Rock Smash - TM98
  (299, 29900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 45),
  -- Nosepass - Block - Egg
  (299, 29900, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Nosepass - Double-Edge - Egg
  (299, 29900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nosepass - Rollout - Egg
  (299, 29900, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nosepass - Wide Guard - Egg
  (299, 29900, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Skitty - Fake Out - Starting Move
  (300, 30000, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Skitty - Growl - Starting Move
  (300, 30000, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Skitty - Tail Whip - Starting Move
  (300, 30000, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Skitty - Tackle - Level 4
  (300, 30000, 33, 21, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Skitty - Sing - Level 7
  (300, 30000, 47, 21, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Skitty - Attract - Level 10
  (300, 30000, 213, 21, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Skitty - Disarming Voice - Level 13
  (300, 30000, 574, 21, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Skitty - Fury Swipes - Level 16
  (300, 30000, 154, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Skitty - Copycat - Level 19
  (300, 30000, 383, 21, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Skitty - Payback - Level 22
  (300, 30000, 371, 21, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Skitty - Charm - Level 25
  (300, 30000, 204, 21, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Skitty - Facade - Level 31
  (300, 30000, 263, 21, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Skitty - Covet - Level 34
  (300, 30000, 343, 21, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Skitty - Heal Bell - Level 37
  (300, 30000, 215, 21, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Skitty - Double-Edge - Level 40
  (300, 30000, 38, 21, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Skitty - Baby-Doll Eyes - Level 43
  (300, 30000, 608, 21, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Skitty - Play Rough - Level 46
  (300, 30000, 583, 21, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Skitty - Water Pulse - TM03
  (300, 30000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Skitty - Calm Mind - TM04
  (300, 30000, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 19),
  -- Skitty - Work Up - TM10
  (300, 30000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Skitty - Sunny Day - TM11
  (300, 30000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Skitty - Ice Beam - TM13
  (300, 30000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Skitty - Blizzard - TM14
  (300, 30000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Skitty - Protect - TM17
  (300, 30000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Skitty - Rain Dance - TM18
  (300, 30000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Skitty - Safeguard - TM20
  (300, 30000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 26),
  -- Skitty - Solar Beam - TM22
  (300, 30000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 27),
  -- Skitty - Iron Tail - TM23
  (300, 30000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 28),
  -- Skitty - Thunderbolt - TM24
  (300, 30000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 29),
  -- Skitty - Thunder - TM25
  (300, 30000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 30),
  -- Skitty - Dig - TM28
  (300, 30000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 31),
  -- Skitty - Shadow Ball - TM30
  (300, 30000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 32),
  -- Skitty - Double Team - TM32
  (300, 30000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Skitty - Shock Wave - TM34
  (300, 30000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 34),
  -- Skitty - Facade - TM42
  (300, 30000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Skitty - Rest - TM44
  (300, 30000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Skitty - Attract - TM45
  (300, 30000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 37),
  -- Skitty - Charge Beam - TM57
  (300, 30000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 38),
  -- Skitty - Endure - TM58
  (300, 30000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Skitty - Nasty Plot - TM63
  (300, 30000, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 40),
  -- Skitty - Payback - TM66
  (300, 30000, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 41),
  -- Skitty - Flash - TM70
  (300, 30000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Skitty - Thunder Wave - TM73
  (300, 30000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Skitty - Psych Up - TM77
  (300, 30000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 44),
  -- Skitty - Sleep Talk - TM82
  (300, 30000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Skitty - Dream Eater - TM85
  (300, 30000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 46),
  -- Skitty - Grass Knot - TM86
  (300, 30000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 47),
  -- Skitty - Swagger - TM87
  (300, 30000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Skitty - Substitute - TM90
  (300, 30000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Skitty - Baton Pass - Egg
  (300, 30000, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Skitty - Cosmic Power - Egg
  (300, 30000, 322, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skitty - Fake Out - Egg
  (300, 30000, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Skitty - Fake Tears - Egg
  (300, 30000, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skitty - Helping Hand - Egg
  (300, 30000, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skitty - Last Resort - Egg
  (300, 30000, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skitty - Simple Beam - Egg
  (300, 30000, 493, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skitty - Sucker Punch - Egg
  (300, 30000, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skitty - Tickle - Egg
  (300, 30000, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skitty - Uproar - Egg
  (300, 30000, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skitty - Wish - Egg
  (300, 30000, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skitty - Zen Headbutt - Egg
  (300, 30000, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 61);
