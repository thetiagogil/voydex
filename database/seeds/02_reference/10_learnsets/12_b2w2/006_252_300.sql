-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation V Pokémon learnset raw pages, using Black 2 / White 2
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Black 2 / White 2 Pokedex learnset pages, Serebii Black 2 / White 2
-- Move Tutor pages, and PokemonDB Generation 5 Black 2 / White 2 learnset pages.
-- Migration source: generated from source-verified Voydex audit tooling.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Black 2 / White 2
-- Pokémon: #252-#300
-- Rows: 2820
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, prior-evolution, Dream World, and form-change event sections
-- are intentionally excluded from this Black 2 / White 2 seed.
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
  (252, 25200, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Treecko - Leer - Level 1
  (252, 25200, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Treecko - Absorb - Level 6
  (252, 25200, 71, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Treecko - Quick Attack - Level 11
  (252, 25200, 98, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Treecko - Pursuit - Level 16
  (252, 25200, 228, 12, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Treecko - Screech - Level 21
  (252, 25200, 103, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Treecko - Mega Drain - Level 26
  (252, 25200, 72, 12, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Treecko - Agility - Level 31
  (252, 25200, 97, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Treecko - Slam - Level 36
  (252, 25200, 21, 12, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Treecko - Detect - Level 41
  (252, 25200, 197, 12, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Treecko - Giga Drain - Level 46
  (252, 25200, 202, 12, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Treecko - Energy Ball - Level 51
  (252, 25200, 412, 12, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Treecko - Toxic - TM06
  (252, 25200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Treecko - Hidden Power - TM10
  (252, 25200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 14),
  -- Treecko - Sunny Day - TM11
  (252, 25200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 15),
  -- Treecko - Protect - TM17
  (252, 25200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 16),
  -- Treecko - Safeguard - TM20
  (252, 25200, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 17),
  -- Treecko - Frustration - TM21
  (252, 25200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 18),
  -- Treecko - Solar Beam - TM22
  (252, 25200, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 19),
  -- Treecko - Return - TM27
  (252, 25200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 20),
  -- Treecko - Dig - TM28
  (252, 25200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 21),
  -- Treecko - Brick Break - TM31
  (252, 25200, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 22),
  -- Treecko - Double Team - TM32
  (252, 25200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Treecko - Rock Tomb - TM39
  (252, 25200, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 24),
  -- Treecko - Aerial Ace - TM40
  (252, 25200, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 25),
  -- Treecko - Facade - TM42
  (252, 25200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Treecko - Rest - TM44
  (252, 25200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Treecko - Attract - TM45
  (252, 25200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Treecko - Round - TM48
  (252, 25200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Treecko - Energy Ball - TM53
  (252, 25200, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 30),
  -- Treecko - Fling - TM56
  (252, 25200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 31),
  -- Treecko - Acrobatics - TM62
  (252, 25200, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 32),
  -- Treecko - Flash - TM70
  (252, 25200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 33),
  -- Treecko - Swords Dance - TM75
  (252, 25200, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 34),
  -- Treecko - Rock Slide - TM80
  (252, 25200, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 35),
  -- Treecko - Grass Knot - TM86
  (252, 25200, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 36),
  -- Treecko - Swagger - TM87
  (252, 25200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Treecko - Substitute - TM90
  (252, 25200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Treecko - Rock Smash - TM94
  (252, 25200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 39),
  -- Treecko - Cut - HM01
  (252, 25200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 40),
  -- Treecko - Strength - HM04
  (252, 25200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 41),
  -- Treecko - Bullet Seed - Egg Move
  (252, 25200, 331, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Treecko - Crunch - Egg Move
  (252, 25200, 242, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Treecko - Crush Claw - Egg Move
  (252, 25200, 306, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Treecko - Double Kick - Egg Move
  (252, 25200, 24, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Treecko - Dragon Breath - Egg Move
  (252, 25200, 225, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Treecko - Endeavor - Egg Move
  (252, 25200, 283, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Treecko - Grass Whistle - Egg Move
  (252, 25200, 320, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Treecko - Leaf Storm - Egg Move
  (252, 25200, 437, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Treecko - Leech Seed - Egg Move
  (252, 25200, 73, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Treecko - Magical Leaf - Egg Move
  (252, 25200, 345, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Treecko - Mud Sport - Egg Move
  (252, 25200, 300, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Treecko - Natural Gift - Egg Move
  (252, 25200, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Treecko - Razor Wind - Egg Move
  (252, 25200, 13, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Treecko - Synthesis - Egg Move
  (252, 25200, 235, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Treecko - Worry Seed - Egg Move
  (252, 25200, 388, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Treecko - Drain Punch - Move Tutor
  (252, 25200, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Treecko - Endeavor - Move Tutor
  (252, 25200, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Treecko - Giga Drain - Move Tutor
  (252, 25200, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Treecko - Grass Pledge - Move Tutor
  (252, 25200, 520, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Treecko - Iron Tail - Move Tutor
  (252, 25200, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Treecko - Low Kick - Move Tutor
  (252, 25200, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Treecko - Seed Bomb - Move Tutor
  (252, 25200, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Treecko - Sleep Talk - Move Tutor
  (252, 25200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Treecko - Snore - Move Tutor
  (252, 25200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Treecko - Synthesis - Move Tutor
  (252, 25200, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Treecko - Thunder Punch - Move Tutor
  (252, 25200, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Treecko - Worry Seed - Move Tutor
  (252, 25200, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Grovyle - Pound - Level 1
  (253, 25300, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grovyle - Leer - Level 1
  (253, 25300, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grovyle - Absorb - Level 1
  (253, 25300, 71, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grovyle - Quick Attack - Level 1
  (253, 25300, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grovyle - Absorb - Level 6
  (253, 25300, 71, 12, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Grovyle - Quick Attack - Level 11
  (253, 25300, 98, 12, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Grovyle - Fury Cutter - Level 16
  (253, 25300, 210, 12, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Grovyle - Pursuit - Level 17
  (253, 25300, 228, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Grovyle - Screech - Level 23
  (253, 25300, 103, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Grovyle - Leaf Blade - Level 29
  (253, 25300, 348, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Grovyle - Agility - Level 35
  (253, 25300, 97, 12, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Grovyle - Slam - Level 41
  (253, 25300, 21, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Grovyle - Detect - Level 47
  (253, 25300, 197, 12, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Grovyle - False Swipe - Level 53
  (253, 25300, 206, 12, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Grovyle - Leaf Storm - Level 59
  (253, 25300, 437, 12, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Grovyle - Toxic - TM06
  (253, 25300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Grovyle - Hidden Power - TM10
  (253, 25300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Grovyle - Sunny Day - TM11
  (253, 25300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Grovyle - Protect - TM17
  (253, 25300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Grovyle - Safeguard - TM20
  (253, 25300, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 20),
  -- Grovyle - Frustration - TM21
  (253, 25300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Grovyle - Solar Beam - TM22
  (253, 25300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 22),
  -- Grovyle - Return - TM27
  (253, 25300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Grovyle - Dig - TM28
  (253, 25300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 24),
  -- Grovyle - Brick Break - TM31
  (253, 25300, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 25),
  -- Grovyle - Double Team - TM32
  (253, 25300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Grovyle - Rock Tomb - TM39
  (253, 25300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 27),
  -- Grovyle - Aerial Ace - TM40
  (253, 25300, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 28),
  -- Grovyle - Facade - TM42
  (253, 25300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Grovyle - Rest - TM44
  (253, 25300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Grovyle - Attract - TM45
  (253, 25300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Grovyle - Low Sweep - TM47
  (253, 25300, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 32),
  -- Grovyle - Round - TM48
  (253, 25300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Grovyle - Energy Ball - TM53
  (253, 25300, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 34),
  -- Grovyle - False Swipe - TM54
  (253, 25300, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 35),
  -- Grovyle - Fling - TM56
  (253, 25300, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 36),
  -- Grovyle - Acrobatics - TM62
  (253, 25300, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 37),
  -- Grovyle - Flash - TM70
  (253, 25300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 38),
  -- Grovyle - Swords Dance - TM75
  (253, 25300, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 39),
  -- Grovyle - Rock Slide - TM80
  (253, 25300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 40),
  -- Grovyle - X-Scissor - TM81
  (253, 25300, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 41),
  -- Grovyle - Grass Knot - TM86
  (253, 25300, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 42),
  -- Grovyle - Swagger - TM87
  (253, 25300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Grovyle - Substitute - TM90
  (253, 25300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Grovyle - Rock Smash - TM94
  (253, 25300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Grovyle - Cut - HM01
  (253, 25300, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 46),
  -- Grovyle - Strength - HM04
  (253, 25300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 47),
  -- Grovyle - Drain Punch - Move Tutor
  (253, 25300, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Grovyle - Endeavor - Move Tutor
  (253, 25300, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Grovyle - Giga Drain - Move Tutor
  (253, 25300, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Grovyle - Grass Pledge - Move Tutor
  (253, 25300, 520, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Grovyle - Iron Tail - Move Tutor
  (253, 25300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Grovyle - Low Kick - Move Tutor
  (253, 25300, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Grovyle - Seed Bomb - Move Tutor
  (253, 25300, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Grovyle - Sleep Talk - Move Tutor
  (253, 25300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Grovyle - Snore - Move Tutor
  (253, 25300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Grovyle - Synthesis - Move Tutor
  (253, 25300, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Grovyle - Thunder Punch - Move Tutor
  (253, 25300, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Grovyle - Worry Seed - Move Tutor
  (253, 25300, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Sceptile - Night Slash - Level 1
  (254, 25400, 400, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sceptile - Pound - Level 1
  (254, 25400, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sceptile - Leer - Level 1
  (254, 25400, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sceptile - Absorb - Level 1
  (254, 25400, 71, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sceptile - Quick Attack - Level 1
  (254, 25400, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sceptile - Absorb - Level 6
  (254, 25400, 71, 12, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Sceptile - Quick Attack - Level 11
  (254, 25400, 98, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Sceptile - X-Scissor - Level 16
  (254, 25400, 404, 12, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Sceptile - Pursuit - Level 17
  (254, 25400, 228, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Sceptile - Screech - Level 23
  (254, 25400, 103, 12, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Sceptile - Leaf Blade - Level 29
  (254, 25400, 348, 12, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Sceptile - Agility - Level 35
  (254, 25400, 97, 12, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Sceptile - Slam - Level 43
  (254, 25400, 21, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Sceptile - Detect - Level 51
  (254, 25400, 197, 12, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Sceptile - False Swipe - Level 59
  (254, 25400, 206, 12, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Sceptile - Leaf Storm - Level 67
  (254, 25400, 437, 12, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Sceptile - Hone Claws - TM01
  (254, 25400, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 17),
  -- Sceptile - Dragon Claw - TM02
  (254, 25400, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 18),
  -- Sceptile - Roar - TM05
  (254, 25400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 19),
  -- Sceptile - Toxic - TM06
  (254, 25400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Sceptile - Hidden Power - TM10
  (254, 25400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Sceptile - Sunny Day - TM11
  (254, 25400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Sceptile - Hyper Beam - TM15
  (254, 25400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Sceptile - Protect - TM17
  (254, 25400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Sceptile - Safeguard - TM20
  (254, 25400, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 25),
  -- Sceptile - Frustration - TM21
  (254, 25400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Sceptile - Solar Beam - TM22
  (254, 25400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 27),
  -- Sceptile - Earthquake - TM26
  (254, 25400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 28),
  -- Sceptile - Return - TM27
  (254, 25400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Sceptile - Dig - TM28
  (254, 25400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Sceptile - Brick Break - TM31
  (254, 25400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 31),
  -- Sceptile - Double Team - TM32
  (254, 25400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Sceptile - Rock Tomb - TM39
  (254, 25400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Sceptile - Aerial Ace - TM40
  (254, 25400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 34),
  -- Sceptile - Facade - TM42
  (254, 25400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Sceptile - Rest - TM44
  (254, 25400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Sceptile - Attract - TM45
  (254, 25400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Sceptile - Low Sweep - TM47
  (254, 25400, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 38),
  -- Sceptile - Round - TM48
  (254, 25400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Sceptile - Focus Blast - TM52
  (254, 25400, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 40),
  -- Sceptile - Energy Ball - TM53
  (254, 25400, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 41),
  -- Sceptile - False Swipe - TM54
  (254, 25400, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 42),
  -- Sceptile - Fling - TM56
  (254, 25400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 43),
  -- Sceptile - Acrobatics - TM62
  (254, 25400, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 44),
  -- Sceptile - Giga Impact - TM68
  (254, 25400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 45),
  -- Sceptile - Flash - TM70
  (254, 25400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 46),
  -- Sceptile - Swords Dance - TM75
  (254, 25400, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 47),
  -- Sceptile - Bulldoze - TM78
  (254, 25400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 48),
  -- Sceptile - Rock Slide - TM80
  (254, 25400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 49),
  -- Sceptile - X-Scissor - TM81
  (254, 25400, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 50),
  -- Sceptile - Grass Knot - TM86
  (254, 25400, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 51),
  -- Sceptile - Swagger - TM87
  (254, 25400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Sceptile - Substitute - TM90
  (254, 25400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Sceptile - Rock Smash - TM94
  (254, 25400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 54),
  -- Sceptile - Cut - HM01
  (254, 25400, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 55),
  -- Sceptile - Strength - HM04
  (254, 25400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Sceptile - Dragon Pulse - Move Tutor
  (254, 25400, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Sceptile - Drain Punch - Move Tutor
  (254, 25400, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Sceptile - Endeavor - Move Tutor
  (254, 25400, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Sceptile - Frenzy Plant - Move Tutor
  (254, 25400, 338, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Sceptile - Giga Drain - Move Tutor
  (254, 25400, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Sceptile - Grass Pledge - Move Tutor
  (254, 25400, 520, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Sceptile - Iron Tail - Move Tutor
  (254, 25400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Sceptile - Low Kick - Move Tutor
  (254, 25400, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Sceptile - Outrage - Move Tutor
  (254, 25400, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Sceptile - Seed Bomb - Move Tutor
  (254, 25400, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Sceptile - Sleep Talk - Move Tutor
  (254, 25400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Sceptile - Snore - Move Tutor
  (254, 25400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Sceptile - Synthesis - Move Tutor
  (254, 25400, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Sceptile - Thunder Punch - Move Tutor
  (254, 25400, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Sceptile - Worry Seed - Move Tutor
  (254, 25400, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Torchic - Scratch - Level 1
  (255, 25500, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torchic - Growl - Level 1
  (255, 25500, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torchic - Focus Energy - Level 7
  (255, 25500, 116, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Torchic - Ember - Level 10
  (255, 25500, 52, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Torchic - Peck - Level 16
  (255, 25500, 64, 12, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Torchic - Sand Attack - Level 19
  (255, 25500, 28, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Torchic - Fire Spin - Level 25
  (255, 25500, 83, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Torchic - Quick Attack - Level 28
  (255, 25500, 98, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Torchic - Slash - Level 34
  (255, 25500, 163, 12, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Torchic - Mirror Move - Level 37
  (255, 25500, 119, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Torchic - Flamethrower - Level 43
  (255, 25500, 53, 12, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Torchic - Hone Claws - TM01
  (255, 25500, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 12),
  -- Torchic - Toxic - TM06
  (255, 25500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Torchic - Hidden Power - TM10
  (255, 25500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 14),
  -- Torchic - Sunny Day - TM11
  (255, 25500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 15),
  -- Torchic - Protect - TM17
  (255, 25500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 16),
  -- Torchic - Frustration - TM21
  (255, 25500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 17),
  -- Torchic - Return - TM27
  (255, 25500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 18),
  -- Torchic - Dig - TM28
  (255, 25500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 19),
  -- Torchic - Double Team - TM32
  (255, 25500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 20),
  -- Torchic - Flamethrower - TM35
  (255, 25500, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 21),
  -- Torchic - Fire Blast - TM38
  (255, 25500, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 22),
  -- Torchic - Rock Tomb - TM39
  (255, 25500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 23),
  -- Torchic - Aerial Ace - TM40
  (255, 25500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 24),
  -- Torchic - Facade - TM42
  (255, 25500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 25),
  -- Torchic - Flame Charge - TM43
  (255, 25500, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 26),
  -- Torchic - Rest - TM44
  (255, 25500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Torchic - Attract - TM45
  (255, 25500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Torchic - Round - TM48
  (255, 25500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Torchic - Echoed Voice - TM49
  (255, 25500, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 30),
  -- Torchic - Overheat - TM50
  (255, 25500, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 31),
  -- Torchic - Incinerate - TM59
  (255, 25500, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 32),
  -- Torchic - Will-O-Wisp - TM61
  (255, 25500, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 33),
  -- Torchic - Shadow Claw - TM65
  (255, 25500, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 34),
  -- Torchic - Swords Dance - TM75
  (255, 25500, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 35),
  -- Torchic - Rock Slide - TM80
  (255, 25500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 36),
  -- Torchic - Swagger - TM87
  (255, 25500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Torchic - Substitute - TM90
  (255, 25500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Torchic - Rock Smash - TM94
  (255, 25500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 39),
  -- Torchic - Cut - HM01
  (255, 25500, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 40),
  -- Torchic - Strength - HM04
  (255, 25500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 41),
  -- Torchic - Agility - Egg Move
  (255, 25500, 97, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Torchic - Baton Pass - Egg Move
  (255, 25500, 226, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Torchic - Counter - Egg Move
  (255, 25500, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Torchic - Crush Claw - Egg Move
  (255, 25500, 306, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Torchic - Curse - Egg Move
  (255, 25500, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Torchic - Endure - Egg Move
  (255, 25500, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Torchic - Feather Dance - Egg Move
  (255, 25500, 297, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Torchic - Feint - Egg Move
  (255, 25500, 364, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Torchic - Flame Burst - Egg Move
  (255, 25500, 481, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Torchic - Last Resort - Egg Move
  (255, 25500, 387, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Torchic - Low Kick - Egg Move
  (255, 25500, 67, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Torchic - Night Slash - Egg Move
  (255, 25500, 400, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Torchic - Reversal - Egg Move
  (255, 25500, 179, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Torchic - Smelling Salts - Egg Move
  (255, 25500, 265, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Torchic - Bounce - Move Tutor
  (255, 25500, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Torchic - Fire Pledge - Move Tutor
  (255, 25500, 519, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Torchic - Heat Wave - Move Tutor
  (255, 25500, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Torchic - Helping Hand - Move Tutor
  (255, 25500, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Torchic - Last Resort - Move Tutor
  (255, 25500, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Torchic - Low Kick - Move Tutor
  (255, 25500, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Torchic - Sleep Talk - Move Tutor
  (255, 25500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Torchic - Snore - Move Tutor
  (255, 25500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Combusken - Scratch - Level 1
  (256, 25600, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combusken - Growl - Level 1
  (256, 25600, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combusken - Focus Energy - Level 1
  (256, 25600, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Combusken - Ember - Level 1
  (256, 25600, 52, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Combusken - Focus Energy - Level 7
  (256, 25600, 116, 12, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Combusken - Ember - Level 13
  (256, 25600, 52, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Combusken - Double Kick - Level 16
  (256, 25600, 24, 12, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Combusken - Peck - Level 17
  (256, 25600, 64, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Combusken - Sand Attack - Level 21
  (256, 25600, 28, 12, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Combusken - Bulk Up - Level 28
  (256, 25600, 339, 12, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Combusken - Quick Attack - Level 32
  (256, 25600, 98, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Combusken - Slash - Level 39
  (256, 25600, 163, 12, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Combusken - Mirror Move - Level 43
  (256, 25600, 119, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Combusken - Sky Uppercut - Level 50
  (256, 25600, 327, 12, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Combusken - Flare Blitz - Level 54
  (256, 25600, 394, 12, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Combusken - Hone Claws - TM01
  (256, 25600, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 16),
  -- Combusken - Toxic - TM06
  (256, 25600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Combusken - Bulk Up - TM08
  (256, 25600, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 18),
  -- Combusken - Hidden Power - TM10
  (256, 25600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Combusken - Sunny Day - TM11
  (256, 25600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Combusken - Protect - TM17
  (256, 25600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Combusken - Frustration - TM21
  (256, 25600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Combusken - Return - TM27
  (256, 25600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Combusken - Dig - TM28
  (256, 25600, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 24),
  -- Combusken - Brick Break - TM31
  (256, 25600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 25),
  -- Combusken - Double Team - TM32
  (256, 25600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Combusken - Flamethrower - TM35
  (256, 25600, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 27),
  -- Combusken - Fire Blast - TM38
  (256, 25600, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 28),
  -- Combusken - Rock Tomb - TM39
  (256, 25600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 29),
  -- Combusken - Aerial Ace - TM40
  (256, 25600, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 30),
  -- Combusken - Facade - TM42
  (256, 25600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Combusken - Flame Charge - TM43
  (256, 25600, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 32),
  -- Combusken - Rest - TM44
  (256, 25600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Combusken - Attract - TM45
  (256, 25600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Combusken - Low Sweep - TM47
  (256, 25600, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 35),
  -- Combusken - Round - TM48
  (256, 25600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Combusken - Echoed Voice - TM49
  (256, 25600, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 37),
  -- Combusken - Overheat - TM50
  (256, 25600, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 38),
  -- Combusken - Focus Blast - TM52
  (256, 25600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 39),
  -- Combusken - Fling - TM56
  (256, 25600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 40),
  -- Combusken - Incinerate - TM59
  (256, 25600, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 41),
  -- Combusken - Will-O-Wisp - TM61
  (256, 25600, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 42),
  -- Combusken - Shadow Claw - TM65
  (256, 25600, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 43),
  -- Combusken - Swords Dance - TM75
  (256, 25600, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 44),
  -- Combusken - Rock Slide - TM80
  (256, 25600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 45),
  -- Combusken - Work Up - TM83
  (256, 25600, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 46),
  -- Combusken - Poison Jab - TM84
  (256, 25600, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 47),
  -- Combusken - Swagger - TM87
  (256, 25600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 48),
  -- Combusken - Substitute - TM90
  (256, 25600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 49),
  -- Combusken - Rock Smash - TM94
  (256, 25600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 50),
  -- Combusken - Cut - HM01
  (256, 25600, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 51),
  -- Combusken - Strength - HM04
  (256, 25600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 52),
  -- Combusken - Bounce - Move Tutor
  (256, 25600, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Combusken - Dual Chop - Move Tutor
  (256, 25600, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Combusken - Fire Pledge - Move Tutor
  (256, 25600, 519, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Combusken - Fire Punch - Move Tutor
  (256, 25600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Combusken - Heat Wave - Move Tutor
  (256, 25600, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Combusken - Helping Hand - Move Tutor
  (256, 25600, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Combusken - Last Resort - Move Tutor
  (256, 25600, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Combusken - Low Kick - Move Tutor
  (256, 25600, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Combusken - Sleep Talk - Move Tutor
  (256, 25600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Combusken - Snore - Move Tutor
  (256, 25600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Combusken - Thunder Punch - Move Tutor
  (256, 25600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Blaziken - Fire Punch - Level 1
  (257, 25700, 7, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blaziken - High Jump Kick - Level 1
  (257, 25700, 136, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blaziken - Scratch - Level 1
  (257, 25700, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blaziken - Growl - Level 1
  (257, 25700, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blaziken - Focus Energy - Level 1
  (257, 25700, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blaziken - Ember - Level 1
  (257, 25700, 52, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Blaziken - Focus Energy - Level 7
  (257, 25700, 116, 12, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Blaziken - Ember - Level 13
  (257, 25700, 52, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Blaziken - Double Kick - Level 16
  (257, 25700, 24, 12, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Blaziken - Peck - Level 17
  (257, 25700, 64, 12, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Blaziken - Sand Attack - Level 21
  (257, 25700, 28, 12, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Blaziken - Bulk Up - Level 28
  (257, 25700, 339, 12, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Blaziken - Quick Attack - Level 32
  (257, 25700, 98, 12, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Blaziken - Blaze Kick - Level 36
  (257, 25700, 299, 12, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Blaziken - Slash - Level 42
  (257, 25700, 163, 12, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Blaziken - Brave Bird - Level 49
  (257, 25700, 413, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Blaziken - Sky Uppercut - Level 59
  (257, 25700, 327, 12, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Blaziken - Flare Blitz - Level 66
  (257, 25700, 394, 12, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Blaziken - Hone Claws - TM01
  (257, 25700, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 19),
  -- Blaziken - Roar - TM05
  (257, 25700, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 20),
  -- Blaziken - Toxic - TM06
  (257, 25700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Blaziken - Bulk Up - TM08
  (257, 25700, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 22),
  -- Blaziken - Hidden Power - TM10
  (257, 25700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Blaziken - Sunny Day - TM11
  (257, 25700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Blaziken - Hyper Beam - TM15
  (257, 25700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Blaziken - Protect - TM17
  (257, 25700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Blaziken - Frustration - TM21
  (257, 25700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Blaziken - Solar Beam - TM22
  (257, 25700, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 28),
  -- Blaziken - Earthquake - TM26
  (257, 25700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 29),
  -- Blaziken - Return - TM27
  (257, 25700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Blaziken - Dig - TM28
  (257, 25700, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 31),
  -- Blaziken - Brick Break - TM31
  (257, 25700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 32),
  -- Blaziken - Double Team - TM32
  (257, 25700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Blaziken - Flamethrower - TM35
  (257, 25700, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 34),
  -- Blaziken - Fire Blast - TM38
  (257, 25700, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 35),
  -- Blaziken - Rock Tomb - TM39
  (257, 25700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Blaziken - Aerial Ace - TM40
  (257, 25700, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 37),
  -- Blaziken - Facade - TM42
  (257, 25700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Blaziken - Flame Charge - TM43
  (257, 25700, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 39),
  -- Blaziken - Rest - TM44
  (257, 25700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 40),
  -- Blaziken - Attract - TM45
  (257, 25700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 41),
  -- Blaziken - Low Sweep - TM47
  (257, 25700, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 42),
  -- Blaziken - Round - TM48
  (257, 25700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 43),
  -- Blaziken - Echoed Voice - TM49
  (257, 25700, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 44),
  -- Blaziken - Overheat - TM50
  (257, 25700, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 45),
  -- Blaziken - Focus Blast - TM52
  (257, 25700, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 46),
  -- Blaziken - Fling - TM56
  (257, 25700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 47),
  -- Blaziken - Incinerate - TM59
  (257, 25700, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 48),
  -- Blaziken - Will-O-Wisp - TM61
  (257, 25700, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 49),
  -- Blaziken - Acrobatics - TM62
  (257, 25700, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 50),
  -- Blaziken - Shadow Claw - TM65
  (257, 25700, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 51),
  -- Blaziken - Giga Impact - TM68
  (257, 25700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 52),
  -- Blaziken - Stone Edge - TM71
  (257, 25700, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 53),
  -- Blaziken - Swords Dance - TM75
  (257, 25700, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 54),
  -- Blaziken - Bulldoze - TM78
  (257, 25700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 55),
  -- Blaziken - Rock Slide - TM80
  (257, 25700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 56),
  -- Blaziken - Work Up - TM83
  (257, 25700, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 57),
  -- Blaziken - Poison Jab - TM84
  (257, 25700, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 58),
  -- Blaziken - Swagger - TM87
  (257, 25700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 59),
  -- Blaziken - Substitute - TM90
  (257, 25700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 60),
  -- Blaziken - Rock Smash - TM94
  (257, 25700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 61),
  -- Blaziken - Cut - HM01
  (257, 25700, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 62),
  -- Blaziken - Strength - HM04
  (257, 25700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 63),
  -- Blaziken - Blast Burn - Move Tutor
  (257, 25700, 307, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Blaziken - Bounce - Move Tutor
  (257, 25700, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Blaziken - Dual Chop - Move Tutor
  (257, 25700, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Blaziken - Fire Pledge - Move Tutor
  (257, 25700, 519, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Blaziken - Fire Punch - Move Tutor
  (257, 25700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Blaziken - Heat Wave - Move Tutor
  (257, 25700, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Blaziken - Helping Hand - Move Tutor
  (257, 25700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Blaziken - Knock Off - Move Tutor
  (257, 25700, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Blaziken - Last Resort - Move Tutor
  (257, 25700, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Blaziken - Low Kick - Move Tutor
  (257, 25700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Blaziken - Role Play - Move Tutor
  (257, 25700, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Blaziken - Sleep Talk - Move Tutor
  (257, 25700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Blaziken - Snore - Move Tutor
  (257, 25700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Blaziken - Superpower - Move Tutor
  (257, 25700, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Blaziken - Thunder Punch - Move Tutor
  (257, 25700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Mudkip - Tackle - Level 1
  (258, 25800, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudkip - Growl - Level 1
  (258, 25800, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudkip - Mud-Slap - Level 6
  (258, 25800, 189, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Mudkip - Water Gun - Level 10
  (258, 25800, 55, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mudkip - Bide - Level 15
  (258, 25800, 117, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mudkip - Foresight - Level 19
  (258, 25800, 193, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Mudkip - Mud Sport - Level 24
  (258, 25800, 300, 12, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Mudkip - Take Down - Level 28
  (258, 25800, 36, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Mudkip - Whirlpool - Level 33
  (258, 25800, 250, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Mudkip - Protect - Level 37
  (258, 25800, 182, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Mudkip - Hydro Pump - Level 42
  (258, 25800, 56, 12, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Mudkip - Endeavor - Level 46
  (258, 25800, 283, 12, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Mudkip - Toxic - TM06
  (258, 25800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Mudkip - Hail - TM07
  (258, 25800, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 14),
  -- Mudkip - Hidden Power - TM10
  (258, 25800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Mudkip - Ice Beam - TM13
  (258, 25800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 16),
  -- Mudkip - Blizzard - TM14
  (258, 25800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 17),
  -- Mudkip - Protect - TM17
  (258, 25800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Mudkip - Rain Dance - TM18
  (258, 25800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 19),
  -- Mudkip - Frustration - TM21
  (258, 25800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Mudkip - Return - TM27
  (258, 25800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Mudkip - Dig - TM28
  (258, 25800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 22),
  -- Mudkip - Double Team - TM32
  (258, 25800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Mudkip - Sludge Wave - TM34
  (258, 25800, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 24),
  -- Mudkip - Rock Tomb - TM39
  (258, 25800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 25),
  -- Mudkip - Facade - TM42
  (258, 25800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Mudkip - Rest - TM44
  (258, 25800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Mudkip - Attract - TM45
  (258, 25800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Mudkip - Round - TM48
  (258, 25800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Mudkip - Echoed Voice - TM49
  (258, 25800, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 30),
  -- Mudkip - Scald - TM55
  (258, 25800, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 31),
  -- Mudkip - Rock Slide - TM80
  (258, 25800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 32),
  -- Mudkip - Swagger - TM87
  (258, 25800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 33),
  -- Mudkip - Substitute - TM90
  (258, 25800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 34),
  -- Mudkip - Rock Smash - TM94
  (258, 25800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 35),
  -- Mudkip - Surf - HM03
  (258, 25800, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 36),
  -- Mudkip - Strength - HM04
  (258, 25800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 37),
  -- Mudkip - Waterfall - HM05
  (258, 25800, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 38),
  -- Mudkip - Dive - HM06
  (258, 25800, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 39),
  -- Mudkip - Ancient Power - Egg Move
  (258, 25800, 246, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mudkip - Avalanche - Egg Move
  (258, 25800, 419, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mudkip - Bite - Egg Move
  (258, 25800, 44, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mudkip - Counter - Egg Move
  (258, 25800, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mudkip - Curse - Egg Move
  (258, 25800, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mudkip - Double-Edge - Egg Move
  (258, 25800, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mudkip - Ice Ball - Egg Move
  (258, 25800, 301, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mudkip - Mirror Coat - Egg Move
  (258, 25800, 243, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mudkip - Mud Bomb - Egg Move
  (258, 25800, 426, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mudkip - Refresh - Egg Move
  (258, 25800, 287, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mudkip - Sludge - Egg Move
  (258, 25800, 124, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mudkip - Stomp - Egg Move
  (258, 25800, 23, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mudkip - Uproar - Egg Move
  (258, 25800, 253, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mudkip - Whirlpool - Egg Move
  (258, 25800, 250, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mudkip - Wide Guard - Egg Move
  (258, 25800, 469, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mudkip - Yawn - Egg Move
  (258, 25800, 281, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mudkip - Aqua Tail - Move Tutor
  (258, 25800, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Mudkip - Earth Power - Move Tutor
  (258, 25800, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Mudkip - Endeavor - Move Tutor
  (258, 25800, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Mudkip - Icy Wind - Move Tutor
  (258, 25800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Mudkip - Iron Tail - Move Tutor
  (258, 25800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Mudkip - Low Kick - Move Tutor
  (258, 25800, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Mudkip - Sleep Talk - Move Tutor
  (258, 25800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Mudkip - Snore - Move Tutor
  (258, 25800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Mudkip - Superpower - Move Tutor
  (258, 25800, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Mudkip - Water Pledge - Move Tutor
  (258, 25800, 518, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Marshtomp - Tackle - Level 1
  (259, 25900, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marshtomp - Growl - Level 1
  (259, 25900, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marshtomp - Mud-Slap - Level 1
  (259, 25900, 189, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marshtomp - Water Gun - Level 1
  (259, 25900, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marshtomp - Mud-Slap - Level 6
  (259, 25900, 189, 12, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Marshtomp - Water Gun - Level 10
  (259, 25900, 55, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Marshtomp - Bide - Level 15
  (259, 25900, 117, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Marshtomp - Mud Shot - Level 16
  (259, 25900, 341, 12, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Marshtomp - Foresight - Level 20
  (259, 25900, 193, 12, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Marshtomp - Mud Bomb - Level 25
  (259, 25900, 426, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Marshtomp - Take Down - Level 31
  (259, 25900, 36, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Marshtomp - Muddy Water - Level 37
  (259, 25900, 330, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Marshtomp - Protect - Level 42
  (259, 25900, 182, 12, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Marshtomp - Earthquake - Level 46
  (259, 25900, 89, 12, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Marshtomp - Endeavor - Level 53
  (259, 25900, 283, 12, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Marshtomp - Toxic - TM06
  (259, 25900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Marshtomp - Hail - TM07
  (259, 25900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 17),
  -- Marshtomp - Hidden Power - TM10
  (259, 25900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Marshtomp - Ice Beam - TM13
  (259, 25900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Marshtomp - Blizzard - TM14
  (259, 25900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Marshtomp - Protect - TM17
  (259, 25900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Marshtomp - Rain Dance - TM18
  (259, 25900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Marshtomp - Frustration - TM21
  (259, 25900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Marshtomp - Earthquake - TM26
  (259, 25900, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 24),
  -- Marshtomp - Return - TM27
  (259, 25900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Marshtomp - Dig - TM28
  (259, 25900, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 26),
  -- Marshtomp - Brick Break - TM31
  (259, 25900, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 27),
  -- Marshtomp - Double Team - TM32
  (259, 25900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Marshtomp - Sludge Wave - TM34
  (259, 25900, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 29),
  -- Marshtomp - Rock Tomb - TM39
  (259, 25900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Marshtomp - Facade - TM42
  (259, 25900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Marshtomp - Rest - TM44
  (259, 25900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Marshtomp - Attract - TM45
  (259, 25900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Marshtomp - Round - TM48
  (259, 25900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Marshtomp - Echoed Voice - TM49
  (259, 25900, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 35),
  -- Marshtomp - Scald - TM55
  (259, 25900, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 36),
  -- Marshtomp - Fling - TM56
  (259, 25900, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 37),
  -- Marshtomp - Bulldoze - TM78
  (259, 25900, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 38),
  -- Marshtomp - Rock Slide - TM80
  (259, 25900, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 39),
  -- Marshtomp - Swagger - TM87
  (259, 25900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Marshtomp - Substitute - TM90
  (259, 25900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Marshtomp - Rock Smash - TM94
  (259, 25900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 42),
  -- Marshtomp - Surf - HM03
  (259, 25900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 43),
  -- Marshtomp - Strength - HM04
  (259, 25900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 44),
  -- Marshtomp - Waterfall - HM05
  (259, 25900, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 45),
  -- Marshtomp - Dive - HM06
  (259, 25900, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 46),
  -- Marshtomp - Aqua Tail - Move Tutor
  (259, 25900, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Marshtomp - Earth Power - Move Tutor
  (259, 25900, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Marshtomp - Endeavor - Move Tutor
  (259, 25900, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Marshtomp - Ice Punch - Move Tutor
  (259, 25900, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Marshtomp - Icy Wind - Move Tutor
  (259, 25900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Marshtomp - Iron Tail - Move Tutor
  (259, 25900, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Marshtomp - Low Kick - Move Tutor
  (259, 25900, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Marshtomp - Sleep Talk - Move Tutor
  (259, 25900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Marshtomp - Snore - Move Tutor
  (259, 25900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Marshtomp - Stealth Rock - Move Tutor
  (259, 25900, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Marshtomp - Superpower - Move Tutor
  (259, 25900, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Marshtomp - Water Pledge - Move Tutor
  (259, 25900, 518, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Swampert - Tackle - Level 1
  (260, 26000, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swampert - Growl - Level 1
  (260, 26000, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swampert - Mud-Slap - Level 1
  (260, 26000, 189, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swampert - Water Gun - Level 1
  (260, 26000, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swampert - Mud-Slap - Level 6
  (260, 26000, 189, 12, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Swampert - Water Gun - Level 10
  (260, 26000, 55, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Swampert - Bide - Level 15
  (260, 26000, 117, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Swampert - Mud Shot - Level 16
  (260, 26000, 341, 12, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Swampert - Foresight - Level 20
  (260, 26000, 193, 12, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Swampert - Mud Bomb - Level 25
  (260, 26000, 426, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Swampert - Take Down - Level 31
  (260, 26000, 36, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Swampert - Muddy Water - Level 39
  (260, 26000, 330, 12, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Swampert - Protect - Level 46
  (260, 26000, 182, 12, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Swampert - Earthquake - Level 52
  (260, 26000, 89, 12, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Swampert - Endeavor - Level 61
  (260, 26000, 283, 12, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Swampert - Hammer Arm - Level 69
  (260, 26000, 359, 12, NULL, 1, 69, NULL, NULL, NULL, 16),
  -- Swampert - Roar - TM05
  (260, 26000, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 17),
  -- Swampert - Toxic - TM06
  (260, 26000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Swampert - Hail - TM07
  (260, 26000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 19),
  -- Swampert - Hidden Power - TM10
  (260, 26000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Swampert - Ice Beam - TM13
  (260, 26000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Swampert - Blizzard - TM14
  (260, 26000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Swampert - Hyper Beam - TM15
  (260, 26000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Swampert - Protect - TM17
  (260, 26000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Swampert - Rain Dance - TM18
  (260, 26000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Swampert - Frustration - TM21
  (260, 26000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Swampert - Earthquake - TM26
  (260, 26000, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 27),
  -- Swampert - Return - TM27
  (260, 26000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Swampert - Dig - TM28
  (260, 26000, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 29),
  -- Swampert - Brick Break - TM31
  (260, 26000, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 30),
  -- Swampert - Double Team - TM32
  (260, 26000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Swampert - Sludge Wave - TM34
  (260, 26000, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 32),
  -- Swampert - Rock Tomb - TM39
  (260, 26000, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Swampert - Facade - TM42
  (260, 26000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Swampert - Rest - TM44
  (260, 26000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Swampert - Attract - TM45
  (260, 26000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Swampert - Round - TM48
  (260, 26000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Swampert - Echoed Voice - TM49
  (260, 26000, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 38),
  -- Swampert - Focus Blast - TM52
  (260, 26000, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 39),
  -- Swampert - Scald - TM55
  (260, 26000, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 40),
  -- Swampert - Fling - TM56
  (260, 26000, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Swampert - Giga Impact - TM68
  (260, 26000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 42),
  -- Swampert - Stone Edge - TM71
  (260, 26000, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 43),
  -- Swampert - Bulldoze - TM78
  (260, 26000, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 44),
  -- Swampert - Rock Slide - TM80
  (260, 26000, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 45),
  -- Swampert - Swagger - TM87
  (260, 26000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 46),
  -- Swampert - Substitute - TM90
  (260, 26000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Swampert - Rock Smash - TM94
  (260, 26000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 48),
  -- Swampert - Surf - HM03
  (260, 26000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 49),
  -- Swampert - Strength - HM04
  (260, 26000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 50),
  -- Swampert - Waterfall - HM05
  (260, 26000, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 51),
  -- Swampert - Dive - HM06
  (260, 26000, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 52),
  -- Swampert - Aqua Tail - Move Tutor
  (260, 26000, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Swampert - Earth Power - Move Tutor
  (260, 26000, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Swampert - Endeavor - Move Tutor
  (260, 26000, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Swampert - Hydro Cannon - Move Tutor
  (260, 26000, 308, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Swampert - Ice Punch - Move Tutor
  (260, 26000, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Swampert - Icy Wind - Move Tutor
  (260, 26000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Swampert - Iron Tail - Move Tutor
  (260, 26000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Swampert - Low Kick - Move Tutor
  (260, 26000, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Swampert - Outrage - Move Tutor
  (260, 26000, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Swampert - Sleep Talk - Move Tutor
  (260, 26000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Swampert - Snore - Move Tutor
  (260, 26000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Swampert - Stealth Rock - Move Tutor
  (260, 26000, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Swampert - Superpower - Move Tutor
  (260, 26000, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Swampert - Water Pledge - Move Tutor
  (260, 26000, 518, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Poochyena - Tackle - Level 1
  (261, 26100, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poochyena - Howl - Level 5
  (261, 26100, 336, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Poochyena - Sand Attack - Level 9
  (261, 26100, 28, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Poochyena - Bite - Level 13
  (261, 26100, 44, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Poochyena - Odor Sleuth - Level 17
  (261, 26100, 316, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Poochyena - Roar - Level 21
  (261, 26100, 46, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Poochyena - Swagger - Level 25
  (261, 26100, 207, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Poochyena - Assurance - Level 29
  (261, 26100, 372, 12, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Poochyena - Scary Face - Level 33
  (261, 26100, 184, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Poochyena - Taunt - Level 37
  (261, 26100, 269, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Poochyena - Embargo - Level 41
  (261, 26100, 373, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Poochyena - Take Down - Level 45
  (261, 26100, 36, 12, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Poochyena - Sucker Punch - Level 49
  (261, 26100, 389, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Poochyena - Crunch - Level 53
  (261, 26100, 242, 12, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Poochyena - Roar - TM05
  (261, 26100, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Poochyena - Toxic - TM06
  (261, 26100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Poochyena - Hidden Power - TM10
  (261, 26100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Poochyena - Sunny Day - TM11
  (261, 26100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Poochyena - Taunt - TM12
  (261, 26100, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 19),
  -- Poochyena - Protect - TM17
  (261, 26100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Poochyena - Rain Dance - TM18
  (261, 26100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Poochyena - Frustration - TM21
  (261, 26100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Poochyena - Return - TM27
  (261, 26100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Poochyena - Dig - TM28
  (261, 26100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 24),
  -- Poochyena - Shadow Ball - TM30
  (261, 26100, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 25),
  -- Poochyena - Double Team - TM32
  (261, 26100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Poochyena - Torment - TM41
  (261, 26100, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 27),
  -- Poochyena - Facade - TM42
  (261, 26100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Poochyena - Rest - TM44
  (261, 26100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Poochyena - Attract - TM45
  (261, 26100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Poochyena - Thief - TM46
  (261, 26100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Poochyena - Round - TM48
  (261, 26100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Poochyena - Incinerate - TM59
  (261, 26100, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 33),
  -- Poochyena - Embargo - TM63
  (261, 26100, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 34),
  -- Poochyena - Payback - TM66
  (261, 26100, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 35),
  -- Poochyena - Retaliate - TM67
  (261, 26100, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 36),
  -- Poochyena - Swagger - TM87
  (261, 26100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Poochyena - Substitute - TM90
  (261, 26100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Poochyena - Rock Smash - TM94
  (261, 26100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 39),
  -- Poochyena - Snarl - TM95
  (261, 26100, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 40),
  -- Poochyena - Astonish - Egg Move
  (261, 26100, 310, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Poochyena - Covet - Egg Move
  (261, 26100, 343, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Poochyena - Fire Fang - Egg Move
  (261, 26100, 424, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Poochyena - Ice Fang - Egg Move
  (261, 26100, 423, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Poochyena - Leer - Egg Move
  (261, 26100, 43, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poochyena - Me First - Egg Move
  (261, 26100, 382, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poochyena - Poison Fang - Egg Move
  (261, 26100, 305, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poochyena - Sleep Talk - Egg Move
  (261, 26100, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Poochyena - Snatch - Egg Move
  (261, 26100, 289, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Poochyena - Sucker Punch - Egg Move
  (261, 26100, 389, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Poochyena - Thunder Fang - Egg Move
  (261, 26100, 422, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Poochyena - Yawn - Egg Move
  (261, 26100, 281, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Poochyena - Covet - Move Tutor
  (261, 26100, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Poochyena - Dark Pulse - Move Tutor
  (261, 26100, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Poochyena - Foul Play - Move Tutor
  (261, 26100, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Poochyena - Hyper Voice - Move Tutor
  (261, 26100, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Poochyena - Iron Tail - Move Tutor
  (261, 26100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Poochyena - Sleep Talk - Move Tutor
  (261, 26100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Poochyena - Snatch - Move Tutor
  (261, 26100, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Poochyena - Snore - Move Tutor
  (261, 26100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Poochyena - Spite - Move Tutor
  (261, 26100, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Poochyena - Super Fang - Move Tutor
  (261, 26100, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Poochyena - Uproar - Move Tutor
  (261, 26100, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Mightyena - Tackle - Level 1
  (262, 26200, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mightyena - Howl - Level 1
  (262, 26200, 336, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mightyena - Sand Attack - Level 1
  (262, 26200, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mightyena - Bite - Level 1
  (262, 26200, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mightyena - Howl - Level 5
  (262, 26200, 336, 12, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Mightyena - Sand Attack - Level 9
  (262, 26200, 28, 12, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Mightyena - Bite - Level 13
  (262, 26200, 44, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Mightyena - Odor Sleuth - Level 17
  (262, 26200, 316, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Mightyena - Roar - Level 22
  (262, 26200, 46, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Mightyena - Swagger - Level 27
  (262, 26200, 207, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Mightyena - Assurance - Level 32
  (262, 26200, 372, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mightyena - Scary Face - Level 37
  (262, 26200, 184, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Mightyena - Taunt - Level 42
  (262, 26200, 269, 12, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Mightyena - Embargo - Level 47
  (262, 26200, 373, 12, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Mightyena - Take Down - Level 52
  (262, 26200, 36, 12, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Mightyena - Thief - Level 57
  (262, 26200, 168, 12, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Mightyena - Sucker Punch - Level 62
  (262, 26200, 389, 12, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Mightyena - Roar - TM05
  (262, 26200, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 18),
  -- Mightyena - Toxic - TM06
  (262, 26200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Mightyena - Hidden Power - TM10
  (262, 26200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Mightyena - Sunny Day - TM11
  (262, 26200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Mightyena - Taunt - TM12
  (262, 26200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Mightyena - Hyper Beam - TM15
  (262, 26200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Mightyena - Protect - TM17
  (262, 26200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Mightyena - Rain Dance - TM18
  (262, 26200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Mightyena - Frustration - TM21
  (262, 26200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Mightyena - Return - TM27
  (262, 26200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Mightyena - Dig - TM28
  (262, 26200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 28),
  -- Mightyena - Shadow Ball - TM30
  (262, 26200, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 29),
  -- Mightyena - Double Team - TM32
  (262, 26200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Mightyena - Torment - TM41
  (262, 26200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 31),
  -- Mightyena - Facade - TM42
  (262, 26200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Mightyena - Rest - TM44
  (262, 26200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Mightyena - Attract - TM45
  (262, 26200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Mightyena - Thief - TM46
  (262, 26200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 35),
  -- Mightyena - Round - TM48
  (262, 26200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Mightyena - Incinerate - TM59
  (262, 26200, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 37),
  -- Mightyena - Embargo - TM63
  (262, 26200, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 38),
  -- Mightyena - Payback - TM66
  (262, 26200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 39),
  -- Mightyena - Retaliate - TM67
  (262, 26200, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 40),
  -- Mightyena - Giga Impact - TM68
  (262, 26200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 41),
  -- Mightyena - Swagger - TM87
  (262, 26200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Mightyena - Substitute - TM90
  (262, 26200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Mightyena - Rock Smash - TM94
  (262, 26200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 44),
  -- Mightyena - Snarl - TM95
  (262, 26200, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 45),
  -- Mightyena - Strength - HM04
  (262, 26200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 46),
  -- Mightyena - Covet - Move Tutor
  (262, 26200, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Mightyena - Dark Pulse - Move Tutor
  (262, 26200, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Mightyena - Foul Play - Move Tutor
  (262, 26200, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Mightyena - Hyper Voice - Move Tutor
  (262, 26200, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Mightyena - Iron Tail - Move Tutor
  (262, 26200, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Mightyena - Sleep Talk - Move Tutor
  (262, 26200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Mightyena - Snatch - Move Tutor
  (262, 26200, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Mightyena - Snore - Move Tutor
  (262, 26200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Mightyena - Spite - Move Tutor
  (262, 26200, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Mightyena - Super Fang - Move Tutor
  (262, 26200, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Mightyena - Uproar - Move Tutor
  (262, 26200, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Zigzagoon - Tackle - Level 1
  (263, 26300, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zigzagoon - Growl - Level 1
  (263, 26300, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zigzagoon - Tail Whip - Level 5
  (263, 26300, 39, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zigzagoon - Headbutt - Level 9
  (263, 26300, 29, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Zigzagoon - Sand Attack - Level 13
  (263, 26300, 28, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Zigzagoon - Odor Sleuth - Level 17
  (263, 26300, 316, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Zigzagoon - Mud Sport - Level 21
  (263, 26300, 300, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Zigzagoon - Pin Missile - Level 25
  (263, 26300, 42, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Zigzagoon - Covet - Level 29
  (263, 26300, 343, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Zigzagoon - Bestow - Level 33
  (263, 26300, 516, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Zigzagoon - Flail - Level 37
  (263, 26300, 175, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Zigzagoon - Rest - Level 41
  (263, 26300, 156, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Zigzagoon - Belly Drum - Level 45
  (263, 26300, 187, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Zigzagoon - Fling - Level 49
  (263, 26300, 374, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Zigzagoon - Hone Claws - TM01
  (263, 26300, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 15),
  -- Zigzagoon - Toxic - TM06
  (263, 26300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Zigzagoon - Hidden Power - TM10
  (263, 26300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Zigzagoon - Sunny Day - TM11
  (263, 26300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Zigzagoon - Ice Beam - TM13
  (263, 26300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Zigzagoon - Blizzard - TM14
  (263, 26300, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Zigzagoon - Protect - TM17
  (263, 26300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Zigzagoon - Rain Dance - TM18
  (263, 26300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Zigzagoon - Frustration - TM21
  (263, 26300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Zigzagoon - Thunderbolt - TM24
  (263, 26300, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 24),
  -- Zigzagoon - Thunder - TM25
  (263, 26300, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 25),
  -- Zigzagoon - Return - TM27
  (263, 26300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Zigzagoon - Dig - TM28
  (263, 26300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Zigzagoon - Shadow Ball - TM30
  (263, 26300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Zigzagoon - Double Team - TM32
  (263, 26300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Zigzagoon - Facade - TM42
  (263, 26300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Zigzagoon - Rest - TM44
  (263, 26300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Zigzagoon - Attract - TM45
  (263, 26300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Zigzagoon - Thief - TM46
  (263, 26300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 33),
  -- Zigzagoon - Round - TM48
  (263, 26300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Zigzagoon - Echoed Voice - TM49
  (263, 26300, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 35),
  -- Zigzagoon - Fling - TM56
  (263, 26300, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 36),
  -- Zigzagoon - Charge Beam - TM57
  (263, 26300, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 37),
  -- Zigzagoon - Retaliate - TM67
  (263, 26300, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 38),
  -- Zigzagoon - Thunder Wave - TM73
  (263, 26300, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 39),
  -- Zigzagoon - Work Up - TM83
  (263, 26300, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 40),
  -- Zigzagoon - Grass Knot - TM86
  (263, 26300, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 41),
  -- Zigzagoon - Swagger - TM87
  (263, 26300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Zigzagoon - Substitute - TM90
  (263, 26300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Zigzagoon - Rock Smash - TM94
  (263, 26300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 44),
  -- Zigzagoon - Cut - HM01
  (263, 26300, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 45),
  -- Zigzagoon - Surf - HM03
  (263, 26300, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 46),
  -- Zigzagoon - Charm - Egg Move
  (263, 26300, 204, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Zigzagoon - Helping Hand - Egg Move
  (263, 26300, 270, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Zigzagoon - Mud-Slap - Egg Move
  (263, 26300, 189, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Zigzagoon - Pursuit - Egg Move
  (263, 26300, 228, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Zigzagoon - Rock Climb - Egg Move
  (263, 26300, 431, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Zigzagoon - Simple Beam - Egg Move
  (263, 26300, 493, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zigzagoon - Sleep Talk - Egg Move
  (263, 26300, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zigzagoon - Tickle - Egg Move
  (263, 26300, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Zigzagoon - Trick - Egg Move
  (263, 26300, 271, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zigzagoon - Covet - Move Tutor
  (263, 26300, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Zigzagoon - Gunk Shot - Move Tutor
  (263, 26300, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Zigzagoon - Helping Hand - Move Tutor
  (263, 26300, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Zigzagoon - Hyper Voice - Move Tutor
  (263, 26300, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Zigzagoon - Icy Wind - Move Tutor
  (263, 26300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Zigzagoon - Iron Tail - Move Tutor
  (263, 26300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Zigzagoon - Last Resort - Move Tutor
  (263, 26300, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Zigzagoon - Seed Bomb - Move Tutor
  (263, 26300, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Zigzagoon - Sleep Talk - Move Tutor
  (263, 26300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Zigzagoon - Snore - Move Tutor
  (263, 26300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Zigzagoon - Super Fang - Move Tutor
  (263, 26300, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Zigzagoon - Trick - Move Tutor
  (263, 26300, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Linoone - Switcheroo - Level 1
  (264, 26400, 415, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Linoone - Tackle - Level 1
  (264, 26400, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Linoone - Growl - Level 1
  (264, 26400, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Linoone - Tail Whip - Level 1
  (264, 26400, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Linoone - Headbutt - Level 1
  (264, 26400, 29, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Linoone - Tail Whip - Level 5
  (264, 26400, 39, 12, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Linoone - Headbutt - Level 9
  (264, 26400, 29, 12, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Linoone - Sand Attack - Level 13
  (264, 26400, 28, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Linoone - Odor Sleuth - Level 17
  (264, 26400, 316, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Linoone - Mud Sport - Level 23
  (264, 26400, 300, 12, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Linoone - Fury Swipes - Level 29
  (264, 26400, 154, 12, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Linoone - Covet - Level 35
  (264, 26400, 343, 12, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Linoone - Bestow - Level 41
  (264, 26400, 516, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Linoone - Slash - Level 47
  (264, 26400, 163, 12, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Linoone - Rest - Level 53
  (264, 26400, 156, 12, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Linoone - Belly Drum - Level 59
  (264, 26400, 187, 12, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Linoone - Fling - Level 65
  (264, 26400, 374, 12, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Linoone - Hone Claws - TM01
  (264, 26400, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 18),
  -- Linoone - Roar - TM05
  (264, 26400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 19),
  -- Linoone - Toxic - TM06
  (264, 26400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Linoone - Hidden Power - TM10
  (264, 26400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Linoone - Sunny Day - TM11
  (264, 26400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Linoone - Ice Beam - TM13
  (264, 26400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 23),
  -- Linoone - Blizzard - TM14
  (264, 26400, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 24),
  -- Linoone - Hyper Beam - TM15
  (264, 26400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Linoone - Protect - TM17
  (264, 26400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Linoone - Rain Dance - TM18
  (264, 26400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Linoone - Frustration - TM21
  (264, 26400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Linoone - Thunderbolt - TM24
  (264, 26400, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 29),
  -- Linoone - Thunder - TM25
  (264, 26400, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 30),
  -- Linoone - Return - TM27
  (264, 26400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Linoone - Dig - TM28
  (264, 26400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 32),
  -- Linoone - Shadow Ball - TM30
  (264, 26400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 33),
  -- Linoone - Double Team - TM32
  (264, 26400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Linoone - Facade - TM42
  (264, 26400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Linoone - Rest - TM44
  (264, 26400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Linoone - Attract - TM45
  (264, 26400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Linoone - Thief - TM46
  (264, 26400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Linoone - Round - TM48
  (264, 26400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Linoone - Echoed Voice - TM49
  (264, 26400, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 40),
  -- Linoone - Fling - TM56
  (264, 26400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Linoone - Charge Beam - TM57
  (264, 26400, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 42),
  -- Linoone - Shadow Claw - TM65
  (264, 26400, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 43),
  -- Linoone - Retaliate - TM67
  (264, 26400, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 44),
  -- Linoone - Giga Impact - TM68
  (264, 26400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 45),
  -- Linoone - Thunder Wave - TM73
  (264, 26400, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 46),
  -- Linoone - Work Up - TM83
  (264, 26400, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 47),
  -- Linoone - Grass Knot - TM86
  (264, 26400, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 48),
  -- Linoone - Swagger - TM87
  (264, 26400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Linoone - Substitute - TM90
  (264, 26400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 50),
  -- Linoone - Rock Smash - TM94
  (264, 26400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 51),
  -- Linoone - Cut - HM01
  (264, 26400, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 52),
  -- Linoone - Surf - HM03
  (264, 26400, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 53),
  -- Linoone - Strength - HM04
  (264, 26400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 54),
  -- Linoone - Covet - Move Tutor
  (264, 26400, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Linoone - Gunk Shot - Move Tutor
  (264, 26400, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Linoone - Helping Hand - Move Tutor
  (264, 26400, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Linoone - Hyper Voice - Move Tutor
  (264, 26400, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Linoone - Icy Wind - Move Tutor
  (264, 26400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Linoone - Iron Tail - Move Tutor
  (264, 26400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Linoone - Last Resort - Move Tutor
  (264, 26400, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Linoone - Seed Bomb - Move Tutor
  (264, 26400, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Linoone - Sleep Talk - Move Tutor
  (264, 26400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Linoone - Snore - Move Tutor
  (264, 26400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Linoone - Super Fang - Move Tutor
  (264, 26400, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Linoone - Trick - Move Tutor
  (264, 26400, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Wurmple - Tackle - Level 1
  (265, 26500, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wurmple - String Shot - Level 1
  (265, 26500, 81, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wurmple - Poison Sting - Level 5
  (265, 26500, 40, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wurmple - Bug Bite - Level 15
  (265, 26500, 450, 12, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Wurmple - Bug Bite - Move Tutor
  (265, 26500, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 5),
  -- Wurmple - Electroweb - Move Tutor
  (265, 26500, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 6),
  -- Wurmple - Snore - Move Tutor
  (265, 26500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 7),
  -- Silcoon - Harden - Level 1
  (266, 26600, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silcoon - Harden - Level 7
  (266, 26600, 106, 12, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Silcoon - Bug Bite - Move Tutor
  (266, 26600, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 3),
  -- Silcoon - Electroweb - Move Tutor
  (266, 26600, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 4),
  -- Silcoon - Iron Defense - Move Tutor
  (266, 26600, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 5),
  -- Beautifly - Absorb - Level 1
  (267, 26700, 71, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beautifly - Absorb - Level 10
  (267, 26700, 71, 12, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Beautifly - Gust - Level 13
  (267, 26700, 16, 12, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Beautifly - Stun Spore - Level 17
  (267, 26700, 78, 12, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Beautifly - Morning Sun - Level 20
  (267, 26700, 234, 12, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Beautifly - Mega Drain - Level 24
  (267, 26700, 72, 12, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Beautifly - Whirlwind - Level 27
  (267, 26700, 18, 12, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Beautifly - Attract - Level 31
  (267, 26700, 213, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Beautifly - Silver Wind - Level 34
  (267, 26700, 318, 12, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Beautifly - Giga Drain - Level 38
  (267, 26700, 202, 12, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Beautifly - Bug Buzz - Level 41
  (267, 26700, 405, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Beautifly - Quiver Dance - Level 45
  (267, 26700, 483, 12, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Beautifly - Toxic - TM06
  (267, 26700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Beautifly - Venoshock - TM09
  (267, 26700, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 14),
  -- Beautifly - Hidden Power - TM10
  (267, 26700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Beautifly - Sunny Day - TM11
  (267, 26700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Beautifly - Hyper Beam - TM15
  (267, 26700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 17),
  -- Beautifly - Protect - TM17
  (267, 26700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Beautifly - Safeguard - TM20
  (267, 26700, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 19),
  -- Beautifly - Frustration - TM21
  (267, 26700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Beautifly - Solar Beam - TM22
  (267, 26700, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 21),
  -- Beautifly - Return - TM27
  (267, 26700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 22),
  -- Beautifly - Psychic - TM29
  (267, 26700, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 23),
  -- Beautifly - Shadow Ball - TM30
  (267, 26700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 24),
  -- Beautifly - Double Team - TM32
  (267, 26700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Beautifly - Aerial Ace - TM40
  (267, 26700, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 26),
  -- Beautifly - Facade - TM42
  (267, 26700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Beautifly - Rest - TM44
  (267, 26700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Beautifly - Attract - TM45
  (267, 26700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Beautifly - Thief - TM46
  (267, 26700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 30),
  -- Beautifly - Round - TM48
  (267, 26700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Beautifly - Energy Ball - TM53
  (267, 26700, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 32),
  -- Beautifly - Acrobatics - TM62
  (267, 26700, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 33),
  -- Beautifly - Giga Impact - TM68
  (267, 26700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 34),
  -- Beautifly - Flash - TM70
  (267, 26700, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Beautifly - Struggle Bug - TM76
  (267, 26700, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 36),
  -- Beautifly - Swagger - TM87
  (267, 26700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Beautifly - U-turn - TM89
  (267, 26700, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 38),
  -- Beautifly - Substitute - TM90
  (267, 26700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Beautifly - Bug Bite - Move Tutor
  (267, 26700, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Beautifly - Electroweb - Move Tutor
  (267, 26700, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Beautifly - Giga Drain - Move Tutor
  (267, 26700, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Beautifly - Roost - Move Tutor
  (267, 26700, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Beautifly - Signal Beam - Move Tutor
  (267, 26700, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Beautifly - Sleep Talk - Move Tutor
  (267, 26700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Beautifly - Snore - Move Tutor
  (267, 26700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Beautifly - Tailwind - Move Tutor
  (267, 26700, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Cascoon - Harden - Level 1
  (268, 26800, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cascoon - Harden - Level 7
  (268, 26800, 106, 12, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Cascoon - Bug Bite - Move Tutor
  (268, 26800, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 3),
  -- Cascoon - Electroweb - Move Tutor
  (268, 26800, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 4),
  -- Cascoon - Iron Defense - Move Tutor
  (268, 26800, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 5),
  -- Dustox - Confusion - Level 1
  (269, 26900, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dustox - Confusion - Level 10
  (269, 26900, 93, 12, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Dustox - Gust - Level 13
  (269, 26900, 16, 12, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Dustox - Protect - Level 17
  (269, 26900, 182, 12, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Dustox - Moonlight - Level 20
  (269, 26900, 236, 12, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Dustox - Psybeam - Level 24
  (269, 26900, 60, 12, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Dustox - Whirlwind - Level 27
  (269, 26900, 18, 12, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Dustox - Light Screen - Level 31
  (269, 26900, 113, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Dustox - Silver Wind - Level 34
  (269, 26900, 318, 12, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Dustox - Toxic - Level 38
  (269, 26900, 92, 12, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Dustox - Bug Buzz - Level 41
  (269, 26900, 405, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Dustox - Quiver Dance - Level 45
  (269, 26900, 483, 12, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Dustox - Toxic - TM06
  (269, 26900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Dustox - Venoshock - TM09
  (269, 26900, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 14),
  -- Dustox - Hidden Power - TM10
  (269, 26900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Dustox - Sunny Day - TM11
  (269, 26900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Dustox - Hyper Beam - TM15
  (269, 26900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 17),
  -- Dustox - Light Screen - TM16
  (269, 26900, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 18),
  -- Dustox - Protect - TM17
  (269, 26900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Dustox - Frustration - TM21
  (269, 26900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Dustox - Solar Beam - TM22
  (269, 26900, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 21),
  -- Dustox - Return - TM27
  (269, 26900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 22),
  -- Dustox - Psychic - TM29
  (269, 26900, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 23),
  -- Dustox - Shadow Ball - TM30
  (269, 26900, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 24),
  -- Dustox - Double Team - TM32
  (269, 26900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Dustox - Sludge Bomb - TM36
  (269, 26900, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 26),
  -- Dustox - Aerial Ace - TM40
  (269, 26900, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 27),
  -- Dustox - Facade - TM42
  (269, 26900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Dustox - Rest - TM44
  (269, 26900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Dustox - Attract - TM45
  (269, 26900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Dustox - Thief - TM46
  (269, 26900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Dustox - Round - TM48
  (269, 26900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Dustox - Energy Ball - TM53
  (269, 26900, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 33),
  -- Dustox - Acrobatics - TM62
  (269, 26900, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 34),
  -- Dustox - Giga Impact - TM68
  (269, 26900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 35),
  -- Dustox - Flash - TM70
  (269, 26900, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 36),
  -- Dustox - Struggle Bug - TM76
  (269, 26900, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 37),
  -- Dustox - Swagger - TM87
  (269, 26900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Dustox - U-turn - TM89
  (269, 26900, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 39),
  -- Dustox - Substitute - TM90
  (269, 26900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 40),
  -- Dustox - Bug Bite - Move Tutor
  (269, 26900, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Dustox - Electroweb - Move Tutor
  (269, 26900, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Dustox - Giga Drain - Move Tutor
  (269, 26900, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Dustox - Roost - Move Tutor
  (269, 26900, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Dustox - Signal Beam - Move Tutor
  (269, 26900, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Dustox - Sleep Talk - Move Tutor
  (269, 26900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Dustox - Snore - Move Tutor
  (269, 26900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Dustox - Tailwind - Move Tutor
  (269, 26900, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Lotad - Astonish - Level 1
  (270, 27000, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lotad - Growl - Level 3
  (270, 27000, 45, 12, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Lotad - Absorb - Level 5
  (270, 27000, 71, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lotad - Nature Power - Level 7
  (270, 27000, 267, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Lotad - Mist - Level 11
  (270, 27000, 54, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Lotad - Natural Gift - Level 15
  (270, 27000, 363, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Lotad - Mega Drain - Level 19
  (270, 27000, 72, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Lotad - Bubble Beam - Level 25
  (270, 27000, 61, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Lotad - Zen Headbutt - Level 31
  (270, 27000, 428, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Lotad - Rain Dance - Level 37
  (270, 27000, 240, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lotad - Energy Ball - Level 45
  (270, 27000, 412, 12, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Lotad - Toxic - TM06
  (270, 27000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 12),
  -- Lotad - Hail - TM07
  (270, 27000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 13),
  -- Lotad - Hidden Power - TM10
  (270, 27000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 14),
  -- Lotad - Sunny Day - TM11
  (270, 27000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 15),
  -- Lotad - Ice Beam - TM13
  (270, 27000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 16),
  -- Lotad - Blizzard - TM14
  (270, 27000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 17),
  -- Lotad - Protect - TM17
  (270, 27000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Lotad - Rain Dance - TM18
  (270, 27000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 19),
  -- Lotad - Frustration - TM21
  (270, 27000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Lotad - Solar Beam - TM22
  (270, 27000, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 21),
  -- Lotad - Return - TM27
  (270, 27000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 22),
  -- Lotad - Double Team - TM32
  (270, 27000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Lotad - Facade - TM42
  (270, 27000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 24),
  -- Lotad - Rest - TM44
  (270, 27000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 25),
  -- Lotad - Attract - TM45
  (270, 27000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 26),
  -- Lotad - Thief - TM46
  (270, 27000, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 27),
  -- Lotad - Round - TM48
  (270, 27000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 28),
  -- Lotad - Echoed Voice - TM49
  (270, 27000, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 29),
  -- Lotad - Energy Ball - TM53
  (270, 27000, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 30),
  -- Lotad - Scald - TM55
  (270, 27000, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 31),
  -- Lotad - Flash - TM70
  (270, 27000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 32),
  -- Lotad - Swords Dance - TM75
  (270, 27000, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 33),
  -- Lotad - Grass Knot - TM86
  (270, 27000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 34),
  -- Lotad - Swagger - TM87
  (270, 27000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 35),
  -- Lotad - Substitute - TM90
  (270, 27000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 36),
  -- Lotad - Surf - HM03
  (270, 27000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 37),
  -- Lotad - Counter - Egg Move
  (270, 27000, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Lotad - Flail - Egg Move
  (270, 27000, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Lotad - Giga Drain - Egg Move
  (270, 27000, 202, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Lotad - Leech Seed - Egg Move
  (270, 27000, 73, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Lotad - Razor Leaf - Egg Move
  (270, 27000, 75, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Lotad - Sweet Scent - Egg Move
  (270, 27000, 230, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lotad - Synthesis - Egg Move
  (270, 27000, 235, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lotad - Teeter Dance - Egg Move
  (270, 27000, 298, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lotad - Tickle - Egg Move
  (270, 27000, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lotad - Water Gun - Egg Move
  (270, 27000, 55, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lotad - Giga Drain - Move Tutor
  (270, 27000, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Lotad - Icy Wind - Move Tutor
  (270, 27000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Lotad - Seed Bomb - Move Tutor
  (270, 27000, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Lotad - Sleep Talk - Move Tutor
  (270, 27000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Lotad - Snore - Move Tutor
  (270, 27000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Lotad - Synthesis - Move Tutor
  (270, 27000, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Lotad - Uproar - Move Tutor
  (270, 27000, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Lotad - Zen Headbutt - Move Tutor
  (270, 27000, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Lombre - Astonish - Level 1
  (271, 27100, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lombre - Growl - Level 3
  (271, 27100, 45, 12, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Lombre - Absorb - Level 5
  (271, 27100, 71, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lombre - Nature Power - Level 7
  (271, 27100, 267, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Lombre - Fake Out - Level 11
  (271, 27100, 252, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Lombre - Fury Swipes - Level 15
  (271, 27100, 154, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Lombre - Water Sport - Level 19
  (271, 27100, 346, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Lombre - Bubble Beam - Level 25
  (271, 27100, 61, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Lombre - Zen Headbutt - Level 31
  (271, 27100, 428, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Lombre - Uproar - Level 37
  (271, 27100, 253, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lombre - Hydro Pump - Level 45
  (271, 27100, 56, 12, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Lombre - Hone Claws - TM01
  (271, 27100, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 12),
  -- Lombre - Toxic - TM06
  (271, 27100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Lombre - Hail - TM07
  (271, 27100, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 14),
  -- Lombre - Hidden Power - TM10
  (271, 27100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Lombre - Sunny Day - TM11
  (271, 27100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Lombre - Ice Beam - TM13
  (271, 27100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 17),
  -- Lombre - Blizzard - TM14
  (271, 27100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 18),
  -- Lombre - Protect - TM17
  (271, 27100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Lombre - Rain Dance - TM18
  (271, 27100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Lombre - Frustration - TM21
  (271, 27100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Lombre - Solar Beam - TM22
  (271, 27100, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 22),
  -- Lombre - Return - TM27
  (271, 27100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Lombre - Brick Break - TM31
  (271, 27100, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 24),
  -- Lombre - Double Team - TM32
  (271, 27100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Lombre - Facade - TM42
  (271, 27100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Lombre - Rest - TM44
  (271, 27100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Lombre - Attract - TM45
  (271, 27100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Lombre - Thief - TM46
  (271, 27100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 29),
  -- Lombre - Round - TM48
  (271, 27100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Lombre - Echoed Voice - TM49
  (271, 27100, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 31),
  -- Lombre - Energy Ball - TM53
  (271, 27100, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 32),
  -- Lombre - Scald - TM55
  (271, 27100, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 33),
  -- Lombre - Fling - TM56
  (271, 27100, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 34),
  -- Lombre - Flash - TM70
  (271, 27100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Lombre - Swords Dance - TM75
  (271, 27100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 36),
  -- Lombre - Grass Knot - TM86
  (271, 27100, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 37),
  -- Lombre - Swagger - TM87
  (271, 27100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Lombre - Substitute - TM90
  (271, 27100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Lombre - Rock Smash - TM94
  (271, 27100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 40),
  -- Lombre - Surf - HM03
  (271, 27100, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 41),
  -- Lombre - Strength - HM04
  (271, 27100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 42),
  -- Lombre - Waterfall - HM05
  (271, 27100, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 43),
  -- Lombre - Dive - HM06
  (271, 27100, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 44),
  -- Lombre - Drain Punch - Move Tutor
  (271, 27100, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Lombre - Fire Punch - Move Tutor
  (271, 27100, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Lombre - Giga Drain - Move Tutor
  (271, 27100, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Lombre - Hyper Voice - Move Tutor
  (271, 27100, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Lombre - Ice Punch - Move Tutor
  (271, 27100, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Lombre - Icy Wind - Move Tutor
  (271, 27100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Lombre - Seed Bomb - Move Tutor
  (271, 27100, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Lombre - Sleep Talk - Move Tutor
  (271, 27100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Lombre - Snore - Move Tutor
  (271, 27100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Lombre - Synthesis - Move Tutor
  (271, 27100, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Lombre - Thunder Punch - Move Tutor
  (271, 27100, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Lombre - Uproar - Move Tutor
  (271, 27100, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Lombre - Zen Headbutt - Move Tutor
  (271, 27100, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Ludicolo - Astonish - Level 1
  (272, 27200, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ludicolo - Growl - Level 1
  (272, 27200, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ludicolo - Mega Drain - Level 1
  (272, 27200, 72, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ludicolo - Nature Power - Level 1
  (272, 27200, 267, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ludicolo - Hone Claws - TM01
  (272, 27200, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 5),
  -- Ludicolo - Toxic - TM06
  (272, 27200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 6),
  -- Ludicolo - Hail - TM07
  (272, 27200, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 7),
  -- Ludicolo - Hidden Power - TM10
  (272, 27200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 8),
  -- Ludicolo - Sunny Day - TM11
  (272, 27200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 9),
  -- Ludicolo - Ice Beam - TM13
  (272, 27200, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 10),
  -- Ludicolo - Blizzard - TM14
  (272, 27200, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 11),
  -- Ludicolo - Hyper Beam - TM15
  (272, 27200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 12),
  -- Ludicolo - Protect - TM17
  (272, 27200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 13),
  -- Ludicolo - Rain Dance - TM18
  (272, 27200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 14),
  -- Ludicolo - Frustration - TM21
  (272, 27200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 15),
  -- Ludicolo - Solar Beam - TM22
  (272, 27200, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 16),
  -- Ludicolo - Return - TM27
  (272, 27200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 17),
  -- Ludicolo - Brick Break - TM31
  (272, 27200, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 18),
  -- Ludicolo - Double Team - TM32
  (272, 27200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 19),
  -- Ludicolo - Facade - TM42
  (272, 27200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 20),
  -- Ludicolo - Rest - TM44
  (272, 27200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 21),
  -- Ludicolo - Attract - TM45
  (272, 27200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 22),
  -- Ludicolo - Thief - TM46
  (272, 27200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 23),
  -- Ludicolo - Round - TM48
  (272, 27200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 24),
  -- Ludicolo - Echoed Voice - TM49
  (272, 27200, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 25),
  -- Ludicolo - Focus Blast - TM52
  (272, 27200, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 26),
  -- Ludicolo - Energy Ball - TM53
  (272, 27200, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 27),
  -- Ludicolo - Scald - TM55
  (272, 27200, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 28),
  -- Ludicolo - Fling - TM56
  (272, 27200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 29),
  -- Ludicolo - Giga Impact - TM68
  (272, 27200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 30),
  -- Ludicolo - Flash - TM70
  (272, 27200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 31),
  -- Ludicolo - Swords Dance - TM75
  (272, 27200, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 32),
  -- Ludicolo - Grass Knot - TM86
  (272, 27200, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 33),
  -- Ludicolo - Swagger - TM87
  (272, 27200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 34),
  -- Ludicolo - Substitute - TM90
  (272, 27200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 35),
  -- Ludicolo - Rock Smash - TM94
  (272, 27200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 36),
  -- Ludicolo - Surf - HM03
  (272, 27200, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 37),
  -- Ludicolo - Strength - HM04
  (272, 27200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 38),
  -- Ludicolo - Waterfall - HM05
  (272, 27200, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 39),
  -- Ludicolo - Dive - HM06
  (272, 27200, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 40),
  -- Ludicolo - Drain Punch - Move Tutor
  (272, 27200, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Ludicolo - Fire Punch - Move Tutor
  (272, 27200, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Ludicolo - Giga Drain - Move Tutor
  (272, 27200, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Ludicolo - Hyper Voice - Move Tutor
  (272, 27200, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Ludicolo - Ice Punch - Move Tutor
  (272, 27200, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Ludicolo - Icy Wind - Move Tutor
  (272, 27200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Ludicolo - Seed Bomb - Move Tutor
  (272, 27200, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Ludicolo - Sleep Talk - Move Tutor
  (272, 27200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Ludicolo - Snore - Move Tutor
  (272, 27200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Ludicolo - Synthesis - Move Tutor
  (272, 27200, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Ludicolo - Thunder Punch - Move Tutor
  (272, 27200, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Ludicolo - Uproar - Move Tutor
  (272, 27200, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Ludicolo - Zen Headbutt - Move Tutor
  (272, 27200, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Seedot - Bide - Level 1
  (273, 27300, 117, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seedot - Harden - Level 3
  (273, 27300, 106, 12, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Seedot - Growth - Level 7
  (273, 27300, 74, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Seedot - Nature Power - Level 13
  (273, 27300, 267, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Seedot - Synthesis - Level 21
  (273, 27300, 235, 12, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Seedot - Sunny Day - Level 31
  (273, 27300, 241, 12, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Seedot - Explosion - Level 43
  (273, 27300, 153, 12, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Seedot - Toxic - TM06
  (273, 27300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 8),
  -- Seedot - Hidden Power - TM10
  (273, 27300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 9),
  -- Seedot - Sunny Day - TM11
  (273, 27300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 10),
  -- Seedot - Protect - TM17
  (273, 27300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 11),
  -- Seedot - Frustration - TM21
  (273, 27300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 12),
  -- Seedot - Solar Beam - TM22
  (273, 27300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 13),
  -- Seedot - Return - TM27
  (273, 27300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 14),
  -- Seedot - Dig - TM28
  (273, 27300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 15),
  -- Seedot - Shadow Ball - TM30
  (273, 27300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 16),
  -- Seedot - Double Team - TM32
  (273, 27300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 17),
  -- Seedot - Facade - TM42
  (273, 27300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 18),
  -- Seedot - Rest - TM44
  (273, 27300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 19),
  -- Seedot - Attract - TM45
  (273, 27300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 20),
  -- Seedot - Round - TM48
  (273, 27300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 21),
  -- Seedot - Energy Ball - TM53
  (273, 27300, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 22),
  -- Seedot - False Swipe - TM54
  (273, 27300, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 23),
  -- Seedot - Explosion - TM64
  (273, 27300, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 24),
  -- Seedot - Retaliate - TM67
  (273, 27300, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 25),
  -- Seedot - Flash - TM70
  (273, 27300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 26),
  -- Seedot - Swords Dance - TM75
  (273, 27300, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 27),
  -- Seedot - Grass Knot - TM86
  (273, 27300, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 28),
  -- Seedot - Swagger - TM87
  (273, 27300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 29),
  -- Seedot - Substitute - TM90
  (273, 27300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 30),
  -- Seedot - Rock Smash - TM94
  (273, 27300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 31),
  -- Seedot - Amnesia - Egg Move
  (273, 27300, 133, 12, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Seedot - Beat Up - Egg Move
  (273, 27300, 251, 12, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Seedot - Bullet Seed - Egg Move
  (273, 27300, 331, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Seedot - Defog - Egg Move
  (273, 27300, 432, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Seedot - Foul Play - Egg Move
  (273, 27300, 492, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Seedot - Leech Seed - Egg Move
  (273, 27300, 73, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Seedot - Nasty Plot - Egg Move
  (273, 27300, 417, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Seedot - Power Swap - Egg Move
  (273, 27300, 384, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Seedot - Quick Attack - Egg Move
  (273, 27300, 98, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Seedot - Razor Wind - Egg Move
  (273, 27300, 13, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seedot - Take Down - Egg Move
  (273, 27300, 36, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seedot - Worry Seed - Egg Move
  (273, 27300, 388, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seedot - Foul Play - Move Tutor
  (273, 27300, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Seedot - Giga Drain - Move Tutor
  (273, 27300, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Seedot - Seed Bomb - Move Tutor
  (273, 27300, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Seedot - Sleep Talk - Move Tutor
  (273, 27300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Seedot - Snore - Move Tutor
  (273, 27300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Seedot - Spite - Move Tutor
  (273, 27300, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Seedot - Synthesis - Move Tutor
  (273, 27300, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Seedot - Worry Seed - Move Tutor
  (273, 27300, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Nuzleaf - Razor Leaf - Level 1
  (274, 27400, 75, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nuzleaf - Pound - Level 1
  (274, 27400, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nuzleaf - Harden - Level 3
  (274, 27400, 106, 12, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Nuzleaf - Growth - Level 7
  (274, 27400, 74, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Nuzleaf - Nature Power - Level 13
  (274, 27400, 267, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nuzleaf - Fake Out - Level 19
  (274, 27400, 252, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Nuzleaf - Torment - Level 25
  (274, 27400, 259, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nuzleaf - Feint Attack - Level 31
  (274, 27400, 185, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Nuzleaf - Razor Wind - Level 37
  (274, 27400, 13, 12, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Nuzleaf - Swagger - Level 43
  (274, 27400, 207, 12, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Nuzleaf - Extrasensory - Level 49
  (274, 27400, 326, 12, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Nuzleaf - Toxic - TM06
  (274, 27400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 12),
  -- Nuzleaf - Hidden Power - TM10
  (274, 27400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 13),
  -- Nuzleaf - Sunny Day - TM11
  (274, 27400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 14),
  -- Nuzleaf - Hyper Beam - TM15
  (274, 27400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 15),
  -- Nuzleaf - Protect - TM17
  (274, 27400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 16),
  -- Nuzleaf - Frustration - TM21
  (274, 27400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 17),
  -- Nuzleaf - Solar Beam - TM22
  (274, 27400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 18),
  -- Nuzleaf - Return - TM27
  (274, 27400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 19),
  -- Nuzleaf - Dig - TM28
  (274, 27400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 20),
  -- Nuzleaf - Shadow Ball - TM30
  (274, 27400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 21),
  -- Nuzleaf - Brick Break - TM31
  (274, 27400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 22),
  -- Nuzleaf - Double Team - TM32
  (274, 27400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Nuzleaf - Rock Tomb - TM39
  (274, 27400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 24),
  -- Nuzleaf - Torment - TM41
  (274, 27400, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 25),
  -- Nuzleaf - Facade - TM42
  (274, 27400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Nuzleaf - Rest - TM44
  (274, 27400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Nuzleaf - Attract - TM45
  (274, 27400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Nuzleaf - Thief - TM46
  (274, 27400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 29),
  -- Nuzleaf - Low Sweep - TM47
  (274, 27400, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 30),
  -- Nuzleaf - Round - TM48
  (274, 27400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Nuzleaf - Energy Ball - TM53
  (274, 27400, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 32),
  -- Nuzleaf - False Swipe - TM54
  (274, 27400, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 33),
  -- Nuzleaf - Fling - TM56
  (274, 27400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 34),
  -- Nuzleaf - Embargo - TM63
  (274, 27400, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 35),
  -- Nuzleaf - Explosion - TM64
  (274, 27400, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 36),
  -- Nuzleaf - Payback - TM66
  (274, 27400, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 37),
  -- Nuzleaf - Retaliate - TM67
  (274, 27400, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 38),
  -- Nuzleaf - Flash - TM70
  (274, 27400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 39),
  -- Nuzleaf - Swords Dance - TM75
  (274, 27400, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 40),
  -- Nuzleaf - Psych Up - TM77
  (274, 27400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 41),
  -- Nuzleaf - Rock Slide - TM80
  (274, 27400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 42),
  -- Nuzleaf - Grass Knot - TM86
  (274, 27400, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 43),
  -- Nuzleaf - Swagger - TM87
  (274, 27400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Nuzleaf - Substitute - TM90
  (274, 27400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Nuzleaf - Rock Smash - TM94
  (274, 27400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 46),
  -- Nuzleaf - Snarl - TM95
  (274, 27400, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 47),
  -- Nuzleaf - Cut - HM01
  (274, 27400, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 48),
  -- Nuzleaf - Strength - HM04
  (274, 27400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 49),
  -- Nuzleaf - Dark Pulse - Move Tutor
  (274, 27400, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Nuzleaf - Foul Play - Move Tutor
  (274, 27400, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Nuzleaf - Giga Drain - Move Tutor
  (274, 27400, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Nuzleaf - Low Kick - Move Tutor
  (274, 27400, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Nuzleaf - Seed Bomb - Move Tutor
  (274, 27400, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Nuzleaf - Sleep Talk - Move Tutor
  (274, 27400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Nuzleaf - Snore - Move Tutor
  (274, 27400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Nuzleaf - Spite - Move Tutor
  (274, 27400, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Nuzleaf - Synthesis - Move Tutor
  (274, 27400, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Nuzleaf - Worry Seed - Move Tutor
  (274, 27400, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Shiftry - Feint Attack - Level 1
  (275, 27500, 185, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shiftry - Whirlwind - Level 1
  (275, 27500, 18, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shiftry - Nasty Plot - Level 1
  (275, 27500, 417, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shiftry - Razor Leaf - Level 1
  (275, 27500, 75, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shiftry - Leaf Tornado - Level 19
  (275, 27500, 536, 12, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Shiftry - Leaf Storm - Level 49
  (275, 27500, 437, 12, NULL, 1, 49, NULL, NULL, NULL, 6),
  -- Shiftry - Toxic - TM06
  (275, 27500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 7),
  -- Shiftry - Hidden Power - TM10
  (275, 27500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 8),
  -- Shiftry - Sunny Day - TM11
  (275, 27500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 9),
  -- Shiftry - Hyper Beam - TM15
  (275, 27500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 10),
  -- Shiftry - Protect - TM17
  (275, 27500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 11),
  -- Shiftry - Frustration - TM21
  (275, 27500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 12),
  -- Shiftry - Solar Beam - TM22
  (275, 27500, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 13),
  -- Shiftry - Return - TM27
  (275, 27500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 14),
  -- Shiftry - Dig - TM28
  (275, 27500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 15),
  -- Shiftry - Shadow Ball - TM30
  (275, 27500, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 16),
  -- Shiftry - Brick Break - TM31
  (275, 27500, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 17),
  -- Shiftry - Double Team - TM32
  (275, 27500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 18),
  -- Shiftry - Rock Tomb - TM39
  (275, 27500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 19),
  -- Shiftry - Aerial Ace - TM40
  (275, 27500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 20),
  -- Shiftry - Torment - TM41
  (275, 27500, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 21),
  -- Shiftry - Facade - TM42
  (275, 27500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 22),
  -- Shiftry - Rest - TM44
  (275, 27500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 23),
  -- Shiftry - Attract - TM45
  (275, 27500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 24),
  -- Shiftry - Thief - TM46
  (275, 27500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 25),
  -- Shiftry - Low Sweep - TM47
  (275, 27500, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 26),
  -- Shiftry - Round - TM48
  (275, 27500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 27),
  -- Shiftry - Focus Blast - TM52
  (275, 27500, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 28),
  -- Shiftry - Energy Ball - TM53
  (275, 27500, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 29),
  -- Shiftry - False Swipe - TM54
  (275, 27500, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 30),
  -- Shiftry - Fling - TM56
  (275, 27500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 31),
  -- Shiftry - Embargo - TM63
  (275, 27500, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 32),
  -- Shiftry - Explosion - TM64
  (275, 27500, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 33),
  -- Shiftry - Payback - TM66
  (275, 27500, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 34),
  -- Shiftry - Retaliate - TM67
  (275, 27500, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 35),
  -- Shiftry - Giga Impact - TM68
  (275, 27500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Shiftry - Flash - TM70
  (275, 27500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 37),
  -- Shiftry - Swords Dance - TM75
  (275, 27500, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 38),
  -- Shiftry - Psych Up - TM77
  (275, 27500, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 39),
  -- Shiftry - Rock Slide - TM80
  (275, 27500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 40),
  -- Shiftry - X-Scissor - TM81
  (275, 27500, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 41),
  -- Shiftry - Grass Knot - TM86
  (275, 27500, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 42),
  -- Shiftry - Swagger - TM87
  (275, 27500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Shiftry - Substitute - TM90
  (275, 27500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Shiftry - Rock Smash - TM94
  (275, 27500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Shiftry - Snarl - TM95
  (275, 27500, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 46),
  -- Shiftry - Cut - HM01
  (275, 27500, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 47),
  -- Shiftry - Strength - HM04
  (275, 27500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 48),
  -- Shiftry - Bounce - Move Tutor
  (275, 27500, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Shiftry - Dark Pulse - Move Tutor
  (275, 27500, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Shiftry - Foul Play - Move Tutor
  (275, 27500, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Shiftry - Giga Drain - Move Tutor
  (275, 27500, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Shiftry - Icy Wind - Move Tutor
  (275, 27500, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Shiftry - Knock Off - Move Tutor
  (275, 27500, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Shiftry - Low Kick - Move Tutor
  (275, 27500, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Shiftry - Seed Bomb - Move Tutor
  (275, 27500, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Shiftry - Sleep Talk - Move Tutor
  (275, 27500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Shiftry - Snore - Move Tutor
  (275, 27500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Shiftry - Spite - Move Tutor
  (275, 27500, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Shiftry - Synthesis - Move Tutor
  (275, 27500, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Shiftry - Tailwind - Move Tutor
  (275, 27500, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Shiftry - Worry Seed - Move Tutor
  (275, 27500, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Taillow - Peck - Level 1
  (276, 27600, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Taillow - Growl - Level 1
  (276, 27600, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Taillow - Focus Energy - Level 4
  (276, 27600, 116, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Taillow - Quick Attack - Level 8
  (276, 27600, 98, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Taillow - Wing Attack - Level 13
  (276, 27600, 17, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Taillow - Double Team - Level 19
  (276, 27600, 104, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Taillow - Endeavor - Level 26
  (276, 27600, 283, 12, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Taillow - Aerial Ace - Level 34
  (276, 27600, 332, 12, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Taillow - Agility - Level 43
  (276, 27600, 97, 12, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Taillow - Air Slash - Level 53
  (276, 27600, 403, 12, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Taillow - Toxic - TM06
  (276, 27600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 11),
  -- Taillow - Hidden Power - TM10
  (276, 27600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 12),
  -- Taillow - Sunny Day - TM11
  (276, 27600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 13),
  -- Taillow - Protect - TM17
  (276, 27600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 14),
  -- Taillow - Rain Dance - TM18
  (276, 27600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 15),
  -- Taillow - Frustration - TM21
  (276, 27600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 16),
  -- Taillow - Return - TM27
  (276, 27600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 17),
  -- Taillow - Double Team - TM32
  (276, 27600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 18),
  -- Taillow - Aerial Ace - TM40
  (276, 27600, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 19),
  -- Taillow - Facade - TM42
  (276, 27600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 20),
  -- Taillow - Rest - TM44
  (276, 27600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 21),
  -- Taillow - Attract - TM45
  (276, 27600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 22),
  -- Taillow - Thief - TM46
  (276, 27600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 23),
  -- Taillow - Round - TM48
  (276, 27600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 24),
  -- Taillow - Echoed Voice - TM49
  (276, 27600, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 25),
  -- Taillow - Work Up - TM83
  (276, 27600, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 26),
  -- Taillow - Swagger - TM87
  (276, 27600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 27),
  -- Taillow - Pluck - TM88
  (276, 27600, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 28),
  -- Taillow - U-turn - TM89
  (276, 27600, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 29),
  -- Taillow - Substitute - TM90
  (276, 27600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 30),
  -- Taillow - Fly - HM02
  (276, 27600, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 31),
  -- Taillow - Brave Bird - Egg Move
  (276, 27600, 413, 12, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Taillow - Defog - Egg Move
  (276, 27600, 432, 12, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Taillow - Mirror Move - Egg Move
  (276, 27600, 119, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Taillow - Pursuit - Egg Move
  (276, 27600, 228, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Taillow - Rage - Egg Move
  (276, 27600, 99, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Taillow - Refresh - Egg Move
  (276, 27600, 287, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Taillow - Roost - Egg Move
  (276, 27600, 355, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Taillow - Sky Attack - Egg Move
  (276, 27600, 143, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Taillow - Steel Wing - Egg Move
  (276, 27600, 211, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Taillow - Supersonic - Egg Move
  (276, 27600, 48, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Taillow - Whirlwind - Egg Move
  (276, 27600, 18, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Taillow - Endeavor - Move Tutor
  (276, 27600, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Taillow - Heat Wave - Move Tutor
  (276, 27600, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Taillow - Roost - Move Tutor
  (276, 27600, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Taillow - Sleep Talk - Move Tutor
  (276, 27600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Taillow - Snore - Move Tutor
  (276, 27600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Taillow - Tailwind - Move Tutor
  (276, 27600, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Swellow - Pluck - Level 1
  (277, 27700, 365, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swellow - Peck - Level 1
  (277, 27700, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swellow - Growl - Level 1
  (277, 27700, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swellow - Focus Energy - Level 1
  (277, 27700, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swellow - Quick Attack - Level 1
  (277, 27700, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swellow - Focus Energy - Level 4
  (277, 27700, 116, 12, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Swellow - Quick Attack - Level 8
  (277, 27700, 98, 12, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Swellow - Wing Attack - Level 13
  (277, 27700, 17, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Swellow - Double Team - Level 19
  (277, 27700, 104, 12, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Swellow - Endeavor - Level 28
  (277, 27700, 283, 12, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Swellow - Aerial Ace - Level 38
  (277, 27700, 332, 12, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Swellow - Agility - Level 49
  (277, 27700, 97, 12, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Swellow - Air Slash - Level 61
  (277, 27700, 403, 12, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Swellow - Toxic - TM06
  (277, 27700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Swellow - Hidden Power - TM10
  (277, 27700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Swellow - Sunny Day - TM11
  (277, 27700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Swellow - Hyper Beam - TM15
  (277, 27700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 17),
  -- Swellow - Protect - TM17
  (277, 27700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Swellow - Rain Dance - TM18
  (277, 27700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 19),
  -- Swellow - Frustration - TM21
  (277, 27700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Swellow - Return - TM27
  (277, 27700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Swellow - Double Team - TM32
  (277, 27700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 22),
  -- Swellow - Aerial Ace - TM40
  (277, 27700, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 23),
  -- Swellow - Facade - TM42
  (277, 27700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 24),
  -- Swellow - Rest - TM44
  (277, 27700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 25),
  -- Swellow - Attract - TM45
  (277, 27700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 26),
  -- Swellow - Thief - TM46
  (277, 27700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 27),
  -- Swellow - Round - TM48
  (277, 27700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 28),
  -- Swellow - Echoed Voice - TM49
  (277, 27700, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 29),
  -- Swellow - Giga Impact - TM68
  (277, 27700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 30),
  -- Swellow - Work Up - TM83
  (277, 27700, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 31),
  -- Swellow - Swagger - TM87
  (277, 27700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 32),
  -- Swellow - Pluck - TM88
  (277, 27700, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 33),
  -- Swellow - U-turn - TM89
  (277, 27700, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 34),
  -- Swellow - Substitute - TM90
  (277, 27700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 35),
  -- Swellow - Fly - HM02
  (277, 27700, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 36),
  -- Swellow - Endeavor - Move Tutor
  (277, 27700, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 37),
  -- Swellow - Heat Wave - Move Tutor
  (277, 27700, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 38),
  -- Swellow - Roost - Move Tutor
  (277, 27700, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 39),
  -- Swellow - Sky Attack - Move Tutor
  (277, 27700, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Swellow - Sleep Talk - Move Tutor
  (277, 27700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Swellow - Snore - Move Tutor
  (277, 27700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Swellow - Tailwind - Move Tutor
  (277, 27700, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Wingull - Growl - Level 1
  (278, 27800, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wingull - Water Gun - Level 1
  (278, 27800, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wingull - Supersonic - Level 6
  (278, 27800, 48, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Wingull - Wing Attack - Level 9
  (278, 27800, 17, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Wingull - Mist - Level 14
  (278, 27800, 54, 12, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Wingull - Water Pulse - Level 17
  (278, 27800, 352, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Wingull - Quick Attack - Level 22
  (278, 27800, 98, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Wingull - Roost - Level 26
  (278, 27800, 355, 12, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Wingull - Pursuit - Level 30
  (278, 27800, 228, 12, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Wingull - Air Cutter - Level 33
  (278, 27800, 314, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Wingull - Agility - Level 38
  (278, 27800, 97, 12, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Wingull - Aerial Ace - Level 42
  (278, 27800, 332, 12, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Wingull - Air Slash - Level 46
  (278, 27800, 403, 12, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Wingull - Hurricane - Level 49
  (278, 27800, 542, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Wingull - Toxic - TM06
  (278, 27800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Wingull - Hail - TM07
  (278, 27800, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 16),
  -- Wingull - Hidden Power - TM10
  (278, 27800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Wingull - Ice Beam - TM13
  (278, 27800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Wingull - Blizzard - TM14
  (278, 27800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Wingull - Protect - TM17
  (278, 27800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Wingull - Rain Dance - TM18
  (278, 27800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Wingull - Frustration - TM21
  (278, 27800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Wingull - Return - TM27
  (278, 27800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Wingull - Double Team - TM32
  (278, 27800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 24),
  -- Wingull - Aerial Ace - TM40
  (278, 27800, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 25),
  -- Wingull - Facade - TM42
  (278, 27800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Wingull - Rest - TM44
  (278, 27800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Wingull - Attract - TM45
  (278, 27800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Wingull - Thief - TM46
  (278, 27800, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 29),
  -- Wingull - Round - TM48
  (278, 27800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Wingull - Echoed Voice - TM49
  (278, 27800, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 31),
  -- Wingull - Scald - TM55
  (278, 27800, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 32),
  -- Wingull - Swagger - TM87
  (278, 27800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 33),
  -- Wingull - Pluck - TM88
  (278, 27800, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 34),
  -- Wingull - U-turn - TM89
  (278, 27800, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 35),
  -- Wingull - Substitute - TM90
  (278, 27800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 36),
  -- Wingull - Fly - HM02
  (278, 27800, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 37),
  -- Wingull - Agility - Egg Move
  (278, 27800, 97, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Wingull - Aqua Ring - Egg Move
  (278, 27800, 392, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Wingull - Brine - Egg Move
  (278, 27800, 362, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Wingull - Gust - Egg Move
  (278, 27800, 16, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Wingull - Knock Off - Egg Move
  (278, 27800, 282, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wingull - Mist - Egg Move
  (278, 27800, 54, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wingull - Roost - Egg Move
  (278, 27800, 355, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wingull - Twister - Egg Move
  (278, 27800, 239, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wingull - Water Sport - Egg Move
  (278, 27800, 346, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wingull - Icy Wind - Move Tutor
  (278, 27800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Wingull - Knock Off - Move Tutor
  (278, 27800, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Wingull - Roost - Move Tutor
  (278, 27800, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Wingull - Sleep Talk - Move Tutor
  (278, 27800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Wingull - Snore - Move Tutor
  (278, 27800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Wingull - Tailwind - Move Tutor
  (278, 27800, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Wingull - Uproar - Move Tutor
  (278, 27800, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Pelipper - Soak - Level 1
  (279, 27900, 487, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pelipper - Growl - Level 1
  (279, 27900, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pelipper - Water Gun - Level 1
  (279, 27900, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pelipper - Water Sport - Level 1
  (279, 27900, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pelipper - Wing Attack - Level 1
  (279, 27900, 17, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pelipper - Supersonic - Level 6
  (279, 27900, 48, 12, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Pelipper - Wing Attack - Level 9
  (279, 27900, 17, 12, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Pelipper - Mist - Level 14
  (279, 27900, 54, 12, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Pelipper - Water Pulse - Level 17
  (279, 27900, 352, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Pelipper - Payback - Level 22
  (279, 27900, 371, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Pelipper - Protect - Level 25
  (279, 27900, 182, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Pelipper - Roost - Level 28
  (279, 27900, 355, 12, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Pelipper - Brine - Level 34
  (279, 27900, 362, 12, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Pelipper - Stockpile - Level 39
  (279, 27900, 254, 12, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Pelipper - Swallow - Level 39
  (279, 27900, 256, 12, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Pelipper - Spit Up - Level 39
  (279, 27900, 255, 12, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Pelipper - Fling - Level 46
  (279, 27900, 374, 12, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Pelipper - Tailwind - Level 52
  (279, 27900, 366, 12, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Pelipper - Hydro Pump - Level 58
  (279, 27900, 56, 12, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Pelipper - Hurricane - Level 63
  (279, 27900, 542, 12, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Pelipper - Toxic - TM06
  (279, 27900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Pelipper - Hail - TM07
  (279, 27900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 22),
  -- Pelipper - Hidden Power - TM10
  (279, 27900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Pelipper - Ice Beam - TM13
  (279, 27900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 24),
  -- Pelipper - Blizzard - TM14
  (279, 27900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 25),
  -- Pelipper - Hyper Beam - TM15
  (279, 27900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Pelipper - Protect - TM17
  (279, 27900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 27),
  -- Pelipper - Rain Dance - TM18
  (279, 27900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 28),
  -- Pelipper - Frustration - TM21
  (279, 27900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Pelipper - Return - TM27
  (279, 27900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Pelipper - Double Team - TM32
  (279, 27900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Pelipper - Aerial Ace - TM40
  (279, 27900, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 32),
  -- Pelipper - Facade - TM42
  (279, 27900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 33),
  -- Pelipper - Rest - TM44
  (279, 27900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 34),
  -- Pelipper - Attract - TM45
  (279, 27900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 35),
  -- Pelipper - Thief - TM46
  (279, 27900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 36),
  -- Pelipper - Round - TM48
  (279, 27900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Pelipper - Echoed Voice - TM49
  (279, 27900, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 38),
  -- Pelipper - Scald - TM55
  (279, 27900, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 39),
  -- Pelipper - Fling - TM56
  (279, 27900, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 40),
  -- Pelipper - Sky Drop - TM58
  (279, 27900, 507, 12, NULL, 2, NULL, NULL, 12002058, NULL, 41),
  -- Pelipper - Payback - TM66
  (279, 27900, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 42),
  -- Pelipper - Giga Impact - TM68
  (279, 27900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 43),
  -- Pelipper - Swagger - TM87
  (279, 27900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Pelipper - Pluck - TM88
  (279, 27900, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 45),
  -- Pelipper - U-turn - TM89
  (279, 27900, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 46),
  -- Pelipper - Substitute - TM90
  (279, 27900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Pelipper - Fly - HM02
  (279, 27900, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 48),
  -- Pelipper - Surf - HM03
  (279, 27900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 49),
  -- Pelipper - Gunk Shot - Move Tutor
  (279, 27900, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Pelipper - Icy Wind - Move Tutor
  (279, 27900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Pelipper - Knock Off - Move Tutor
  (279, 27900, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Pelipper - Roost - Move Tutor
  (279, 27900, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Pelipper - Seed Bomb - Move Tutor
  (279, 27900, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Pelipper - Sky Attack - Move Tutor
  (279, 27900, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Pelipper - Sleep Talk - Move Tutor
  (279, 27900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Pelipper - Snore - Move Tutor
  (279, 27900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Pelipper - Tailwind - Move Tutor
  (279, 27900, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Pelipper - Uproar - Move Tutor
  (279, 27900, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Ralts - Growl - Level 1
  (280, 28000, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ralts - Confusion - Level 6
  (280, 28000, 93, 12, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Ralts - Double Team - Level 10
  (280, 28000, 104, 12, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Ralts - Teleport - Level 12
  (280, 28000, 100, 12, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Ralts - Lucky Chant - Level 17
  (280, 28000, 381, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Ralts - Magical Leaf - Level 21
  (280, 28000, 345, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Ralts - Heal Pulse - Level 23
  (280, 28000, 505, 12, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Ralts - Calm Mind - Level 28
  (280, 28000, 347, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Ralts - Psychic - Level 32
  (280, 28000, 94, 12, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Ralts - Imprison - Level 34
  (280, 28000, 286, 12, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Ralts - Future Sight - Level 39
  (280, 28000, 248, 12, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Ralts - Charm - Level 43
  (280, 28000, 204, 12, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Ralts - Hypnosis - Level 45
  (280, 28000, 95, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Ralts - Dream Eater - Level 50
  (280, 28000, 138, 12, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Ralts - Stored Power - Level 54
  (280, 28000, 500, 12, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Ralts - Psyshock - TM03
  (280, 28000, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 16),
  -- Ralts - Calm Mind - TM04
  (280, 28000, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 17),
  -- Ralts - Toxic - TM06
  (280, 28000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Ralts - Hidden Power - TM10
  (280, 28000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Ralts - Sunny Day - TM11
  (280, 28000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Ralts - Taunt - TM12
  (280, 28000, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Ralts - Light Screen - TM16
  (280, 28000, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 22),
  -- Ralts - Protect - TM17
  (280, 28000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Ralts - Rain Dance - TM18
  (280, 28000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Ralts - Telekinesis - TM19
  (280, 28000, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 25),
  -- Ralts - Safeguard - TM20
  (280, 28000, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 26),
  -- Ralts - Frustration - TM21
  (280, 28000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Ralts - Thunderbolt - TM24
  (280, 28000, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 28),
  -- Ralts - Return - TM27
  (280, 28000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Ralts - Psychic - TM29
  (280, 28000, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 30),
  -- Ralts - Shadow Ball - TM30
  (280, 28000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Ralts - Double Team - TM32
  (280, 28000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Ralts - Reflect - TM33
  (280, 28000, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 33),
  -- Ralts - Torment - TM41
  (280, 28000, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 34),
  -- Ralts - Facade - TM42
  (280, 28000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Ralts - Rest - TM44
  (280, 28000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Ralts - Attract - TM45
  (280, 28000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Ralts - Thief - TM46
  (280, 28000, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Ralts - Round - TM48
  (280, 28000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Ralts - Echoed Voice - TM49
  (280, 28000, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 40),
  -- Ralts - Ally Switch - TM51
  (280, 28000, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 41),
  -- Ralts - Fling - TM56
  (280, 28000, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 42),
  -- Ralts - Charge Beam - TM57
  (280, 28000, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 43),
  -- Ralts - Will-O-Wisp - TM61
  (280, 28000, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 44),
  -- Ralts - Flash - TM70
  (280, 28000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 45),
  -- Ralts - Thunder Wave - TM73
  (280, 28000, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 46),
  -- Ralts - Psych Up - TM77
  (280, 28000, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 47),
  -- Ralts - Dream Eater - TM85
  (280, 28000, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 48),
  -- Ralts - Grass Knot - TM86
  (280, 28000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 49),
  -- Ralts - Swagger - TM87
  (280, 28000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Ralts - Substitute - TM90
  (280, 28000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Ralts - Trick Room - TM92
  (280, 28000, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 52),
  -- Ralts - Confuse Ray - Egg Move
  (280, 28000, 109, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ralts - Destiny Bond - Egg Move
  (280, 28000, 194, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ralts - Disable - Egg Move
  (280, 28000, 50, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ralts - Encore - Egg Move
  (280, 28000, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ralts - Grudge - Egg Move
  (280, 28000, 288, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ralts - Mean Look - Egg Move
  (280, 28000, 212, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ralts - Memento - Egg Move
  (280, 28000, 262, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ralts - Shadow Sneak - Egg Move
  (280, 28000, 425, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Ralts - Skill Swap - Egg Move
  (280, 28000, 285, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Ralts - Synchronoise - Egg Move
  (280, 28000, 485, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Ralts - Fire Punch - Move Tutor
  (280, 28000, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Ralts - Helping Hand - Move Tutor
  (280, 28000, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Ralts - Hyper Voice - Move Tutor
  (280, 28000, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Ralts - Ice Punch - Move Tutor
  (280, 28000, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Ralts - Icy Wind - Move Tutor
  (280, 28000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Ralts - Magic Coat - Move Tutor
  (280, 28000, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Ralts - Magic Room - Move Tutor
  (280, 28000, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Ralts - Pain Split - Move Tutor
  (280, 28000, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Ralts - Recycle - Move Tutor
  (280, 28000, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Ralts - Signal Beam - Move Tutor
  (280, 28000, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Ralts - Skill Swap - Move Tutor
  (280, 28000, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Ralts - Sleep Talk - Move Tutor
  (280, 28000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Ralts - Snatch - Move Tutor
  (280, 28000, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Ralts - Snore - Move Tutor
  (280, 28000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Ralts - Thunder Punch - Move Tutor
  (280, 28000, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Ralts - Trick - Move Tutor
  (280, 28000, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Ralts - Wonder Room - Move Tutor
  (280, 28000, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Ralts - Zen Headbutt - Move Tutor
  (280, 28000, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Kirlia - Growl - Level 1
  (281, 28100, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kirlia - Confusion - Level 1
  (281, 28100, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kirlia - Double Team - Level 1
  (281, 28100, 104, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kirlia - Teleport - Level 1
  (281, 28100, 100, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kirlia - Confusion - Level 6
  (281, 28100, 93, 12, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Kirlia - Double Team - Level 10
  (281, 28100, 104, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Kirlia - Teleport - Level 12
  (281, 28100, 100, 12, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Kirlia - Lucky Chant - Level 17
  (281, 28100, 381, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Kirlia - Magical Leaf - Level 22
  (281, 28100, 345, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Kirlia - Heal Pulse - Level 25
  (281, 28100, 505, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Kirlia - Calm Mind - Level 31
  (281, 28100, 347, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Kirlia - Psychic - Level 36
  (281, 28100, 94, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Kirlia - Imprison - Level 39
  (281, 28100, 286, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Kirlia - Future Sight - Level 45
  (281, 28100, 248, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Kirlia - Charm - Level 50
  (281, 28100, 204, 12, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Kirlia - Hypnosis - Level 53
  (281, 28100, 95, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Kirlia - Dream Eater - Level 59
  (281, 28100, 138, 12, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Kirlia - Stored Power - Level 64
  (281, 28100, 500, 12, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Kirlia - Psyshock - TM03
  (281, 28100, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 19),
  -- Kirlia - Calm Mind - TM04
  (281, 28100, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 20),
  -- Kirlia - Toxic - TM06
  (281, 28100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Kirlia - Hidden Power - TM10
  (281, 28100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Kirlia - Sunny Day - TM11
  (281, 28100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Kirlia - Taunt - TM12
  (281, 28100, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 24),
  -- Kirlia - Light Screen - TM16
  (281, 28100, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 25),
  -- Kirlia - Protect - TM17
  (281, 28100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Kirlia - Rain Dance - TM18
  (281, 28100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Kirlia - Telekinesis - TM19
  (281, 28100, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 28),
  -- Kirlia - Safeguard - TM20
  (281, 28100, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 29),
  -- Kirlia - Frustration - TM21
  (281, 28100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 30),
  -- Kirlia - Thunderbolt - TM24
  (281, 28100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 31),
  -- Kirlia - Return - TM27
  (281, 28100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Kirlia - Psychic - TM29
  (281, 28100, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 33),
  -- Kirlia - Shadow Ball - TM30
  (281, 28100, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 34),
  -- Kirlia - Double Team - TM32
  (281, 28100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 35),
  -- Kirlia - Reflect - TM33
  (281, 28100, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 36),
  -- Kirlia - Torment - TM41
  (281, 28100, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 37),
  -- Kirlia - Facade - TM42
  (281, 28100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Kirlia - Rest - TM44
  (281, 28100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Kirlia - Attract - TM45
  (281, 28100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Kirlia - Thief - TM46
  (281, 28100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 41),
  -- Kirlia - Round - TM48
  (281, 28100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Kirlia - Echoed Voice - TM49
  (281, 28100, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 43),
  -- Kirlia - Ally Switch - TM51
  (281, 28100, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 44),
  -- Kirlia - Fling - TM56
  (281, 28100, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 45),
  -- Kirlia - Charge Beam - TM57
  (281, 28100, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 46),
  -- Kirlia - Will-O-Wisp - TM61
  (281, 28100, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 47),
  -- Kirlia - Flash - TM70
  (281, 28100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 48),
  -- Kirlia - Thunder Wave - TM73
  (281, 28100, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 49),
  -- Kirlia - Psych Up - TM77
  (281, 28100, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 50),
  -- Kirlia - Dream Eater - TM85
  (281, 28100, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 51),
  -- Kirlia - Grass Knot - TM86
  (281, 28100, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 52),
  -- Kirlia - Swagger - TM87
  (281, 28100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 53),
  -- Kirlia - Substitute - TM90
  (281, 28100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 54),
  -- Kirlia - Trick Room - TM92
  (281, 28100, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 55),
  -- Kirlia - Fire Punch - Move Tutor
  (281, 28100, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Kirlia - Helping Hand - Move Tutor
  (281, 28100, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Kirlia - Hyper Voice - Move Tutor
  (281, 28100, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Kirlia - Ice Punch - Move Tutor
  (281, 28100, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Kirlia - Icy Wind - Move Tutor
  (281, 28100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Kirlia - Magic Coat - Move Tutor
  (281, 28100, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Kirlia - Magic Room - Move Tutor
  (281, 28100, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Kirlia - Pain Split - Move Tutor
  (281, 28100, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Kirlia - Recycle - Move Tutor
  (281, 28100, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Kirlia - Signal Beam - Move Tutor
  (281, 28100, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Kirlia - Skill Swap - Move Tutor
  (281, 28100, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Kirlia - Sleep Talk - Move Tutor
  (281, 28100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Kirlia - Snatch - Move Tutor
  (281, 28100, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Kirlia - Snore - Move Tutor
  (281, 28100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Kirlia - Thunder Punch - Move Tutor
  (281, 28100, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Kirlia - Trick - Move Tutor
  (281, 28100, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Kirlia - Wonder Room - Move Tutor
  (281, 28100, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Kirlia - Zen Headbutt - Move Tutor
  (281, 28100, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Gardevoir - Healing Wish - Level 1
  (282, 28200, 361, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gardevoir - Growl - Level 1
  (282, 28200, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gardevoir - Confusion - Level 1
  (282, 28200, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gardevoir - Double Team - Level 1
  (282, 28200, 104, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gardevoir - Teleport - Level 1
  (282, 28200, 100, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gardevoir - Confusion - Level 6
  (282, 28200, 93, 12, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Gardevoir - Double Team - Level 10
  (282, 28200, 104, 12, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Gardevoir - Teleport - Level 12
  (282, 28200, 100, 12, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Gardevoir - Wish - Level 17
  (282, 28200, 273, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Gardevoir - Magical Leaf - Level 22
  (282, 28200, 345, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Gardevoir - Heal Pulse - Level 25
  (282, 28200, 505, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Gardevoir - Calm Mind - Level 33
  (282, 28200, 347, 12, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gardevoir - Psychic - Level 40
  (282, 28200, 94, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Gardevoir - Imprison - Level 45
  (282, 28200, 286, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Gardevoir - Future Sight - Level 53
  (282, 28200, 248, 12, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Gardevoir - Captivate - Level 60
  (282, 28200, 445, 12, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Gardevoir - Hypnosis - Level 65
  (282, 28200, 95, 12, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Gardevoir - Dream Eater - Level 73
  (282, 28200, 138, 12, NULL, 1, 73, NULL, NULL, NULL, 18),
  -- Gardevoir - Stored Power - Level 80
  (282, 28200, 500, 12, NULL, 1, 80, NULL, NULL, NULL, 19),
  -- Gardevoir - Psyshock - TM03
  (282, 28200, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 20),
  -- Gardevoir - Calm Mind - TM04
  (282, 28200, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 21),
  -- Gardevoir - Toxic - TM06
  (282, 28200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 22),
  -- Gardevoir - Hidden Power - TM10
  (282, 28200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Gardevoir - Sunny Day - TM11
  (282, 28200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Gardevoir - Taunt - TM12
  (282, 28200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 25),
  -- Gardevoir - Hyper Beam - TM15
  (282, 28200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Gardevoir - Light Screen - TM16
  (282, 28200, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 27),
  -- Gardevoir - Protect - TM17
  (282, 28200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 28),
  -- Gardevoir - Rain Dance - TM18
  (282, 28200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 29),
  -- Gardevoir - Telekinesis - TM19
  (282, 28200, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 30),
  -- Gardevoir - Safeguard - TM20
  (282, 28200, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 31),
  -- Gardevoir - Frustration - TM21
  (282, 28200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 32),
  -- Gardevoir - Thunderbolt - TM24
  (282, 28200, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 33),
  -- Gardevoir - Return - TM27
  (282, 28200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 34),
  -- Gardevoir - Psychic - TM29
  (282, 28200, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 35),
  -- Gardevoir - Shadow Ball - TM30
  (282, 28200, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 36),
  -- Gardevoir - Double Team - TM32
  (282, 28200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 37),
  -- Gardevoir - Reflect - TM33
  (282, 28200, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 38),
  -- Gardevoir - Torment - TM41
  (282, 28200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 39),
  -- Gardevoir - Facade - TM42
  (282, 28200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 40),
  -- Gardevoir - Rest - TM44
  (282, 28200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 41),
  -- Gardevoir - Attract - TM45
  (282, 28200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 42),
  -- Gardevoir - Thief - TM46
  (282, 28200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 43),
  -- Gardevoir - Round - TM48
  (282, 28200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 44),
  -- Gardevoir - Echoed Voice - TM49
  (282, 28200, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 45),
  -- Gardevoir - Ally Switch - TM51
  (282, 28200, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 46),
  -- Gardevoir - Focus Blast - TM52
  (282, 28200, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 47),
  -- Gardevoir - Energy Ball - TM53
  (282, 28200, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 48),
  -- Gardevoir - Fling - TM56
  (282, 28200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 49),
  -- Gardevoir - Charge Beam - TM57
  (282, 28200, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 50),
  -- Gardevoir - Will-O-Wisp - TM61
  (282, 28200, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 51),
  -- Gardevoir - Giga Impact - TM68
  (282, 28200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 52),
  -- Gardevoir - Flash - TM70
  (282, 28200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 53),
  -- Gardevoir - Thunder Wave - TM73
  (282, 28200, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 54),
  -- Gardevoir - Psych Up - TM77
  (282, 28200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 55),
  -- Gardevoir - Dream Eater - TM85
  (282, 28200, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 56),
  -- Gardevoir - Grass Knot - TM86
  (282, 28200, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 57),
  -- Gardevoir - Swagger - TM87
  (282, 28200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 58),
  -- Gardevoir - Substitute - TM90
  (282, 28200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 59),
  -- Gardevoir - Trick Room - TM92
  (282, 28200, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 60),
  -- Gardevoir - Fire Punch - Move Tutor
  (282, 28200, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Gardevoir - Heal Bell - Move Tutor
  (282, 28200, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Gardevoir - Helping Hand - Move Tutor
  (282, 28200, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Gardevoir - Hyper Voice - Move Tutor
  (282, 28200, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Gardevoir - Ice Punch - Move Tutor
  (282, 28200, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Gardevoir - Icy Wind - Move Tutor
  (282, 28200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Gardevoir - Magic Coat - Move Tutor
  (282, 28200, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Gardevoir - Magic Room - Move Tutor
  (282, 28200, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Gardevoir - Pain Split - Move Tutor
  (282, 28200, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Gardevoir - Recycle - Move Tutor
  (282, 28200, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Gardevoir - Signal Beam - Move Tutor
  (282, 28200, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Gardevoir - Skill Swap - Move Tutor
  (282, 28200, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Gardevoir - Sleep Talk - Move Tutor
  (282, 28200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Gardevoir - Snatch - Move Tutor
  (282, 28200, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Gardevoir - Snore - Move Tutor
  (282, 28200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Gardevoir - Thunder Punch - Move Tutor
  (282, 28200, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Gardevoir - Trick - Move Tutor
  (282, 28200, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Gardevoir - Wonder Room - Move Tutor
  (282, 28200, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Gardevoir - Zen Headbutt - Move Tutor
  (282, 28200, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Surskit - Bubble - Level 1
  (283, 28300, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Surskit - Quick Attack - Level 7
  (283, 28300, 98, 12, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Surskit - Sweet Scent - Level 13
  (283, 28300, 230, 12, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Surskit - Water Sport - Level 19
  (283, 28300, 346, 12, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Surskit - Bubble Beam - Level 25
  (283, 28300, 61, 12, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Surskit - Agility - Level 31
  (283, 28300, 97, 12, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Surskit - Mist - Level 37
  (283, 28300, 54, 12, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Surskit - Haze - Level 37
  (283, 28300, 114, 12, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Surskit - Baton Pass - Level 43
  (283, 28300, 226, 12, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Surskit - Toxic - TM06
  (283, 28300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 10),
  -- Surskit - Hidden Power - TM10
  (283, 28300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 11),
  -- Surskit - Sunny Day - TM11
  (283, 28300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 12),
  -- Surskit - Ice Beam - TM13
  (283, 28300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 13),
  -- Surskit - Blizzard - TM14
  (283, 28300, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 14),
  -- Surskit - Protect - TM17
  (283, 28300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 15),
  -- Surskit - Rain Dance - TM18
  (283, 28300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 16),
  -- Surskit - Frustration - TM21
  (283, 28300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 17),
  -- Surskit - Solar Beam - TM22
  (283, 28300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 18),
  -- Surskit - Return - TM27
  (283, 28300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 19),
  -- Surskit - Shadow Ball - TM30
  (283, 28300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 20),
  -- Surskit - Double Team - TM32
  (283, 28300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 21),
  -- Surskit - Facade - TM42
  (283, 28300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 22),
  -- Surskit - Rest - TM44
  (283, 28300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 23),
  -- Surskit - Attract - TM45
  (283, 28300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 24),
  -- Surskit - Thief - TM46
  (283, 28300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 25),
  -- Surskit - Round - TM48
  (283, 28300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 26),
  -- Surskit - Scald - TM55
  (283, 28300, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 27),
  -- Surskit - Flash - TM70
  (283, 28300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 28),
  -- Surskit - Struggle Bug - TM76
  (283, 28300, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 29),
  -- Surskit - Psych Up - TM77
  (283, 28300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 30),
  -- Surskit - Swagger - TM87
  (283, 28300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 31),
  -- Surskit - Substitute - TM90
  (283, 28300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 32),
  -- Surskit - Aqua Jet - Egg Move
  (283, 28300, 453, 12, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Surskit - Bug Bite - Egg Move
  (283, 28300, 450, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Surskit - Endure - Egg Move
  (283, 28300, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Surskit - Foresight - Egg Move
  (283, 28300, 193, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Surskit - Hydro Pump - Egg Move
  (283, 28300, 56, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Surskit - Mind Reader - Egg Move
  (283, 28300, 170, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Surskit - Mud Shot - Egg Move
  (283, 28300, 341, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Surskit - Psybeam - Egg Move
  (283, 28300, 60, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Surskit - Signal Beam - Egg Move
  (283, 28300, 324, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Surskit - Bug Bite - Move Tutor
  (283, 28300, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Surskit - Giga Drain - Move Tutor
  (283, 28300, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Surskit - Icy Wind - Move Tutor
  (283, 28300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Surskit - Signal Beam - Move Tutor
  (283, 28300, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Surskit - Sleep Talk - Move Tutor
  (283, 28300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Surskit - Snore - Move Tutor
  (283, 28300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Masquerain - Ominous Wind - Level 1
  (284, 28400, 466, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Masquerain - Bubble - Level 1
  (284, 28400, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Masquerain - Quick Attack - Level 1
  (284, 28400, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Masquerain - Sweet Scent - Level 1
  (284, 28400, 230, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Masquerain - Water Sport - Level 1
  (284, 28400, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Masquerain - Quick Attack - Level 7
  (284, 28400, 98, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Masquerain - Sweet Scent - Level 13
  (284, 28400, 230, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Masquerain - Water Sport - Level 19
  (284, 28400, 346, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Masquerain - Gust - Level 22
  (284, 28400, 16, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Masquerain - Scary Face - Level 26
  (284, 28400, 184, 12, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Masquerain - Stun Spore - Level 33
  (284, 28400, 78, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Masquerain - Silver Wind - Level 40
  (284, 28400, 318, 12, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Masquerain - Air Slash - Level 47
  (284, 28400, 403, 12, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Masquerain - Whirlwind - Level 54
  (284, 28400, 18, 12, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Masquerain - Bug Buzz - Level 61
  (284, 28400, 405, 12, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Masquerain - Quiver Dance - Level 68
  (284, 28400, 483, 12, NULL, 1, 68, NULL, NULL, NULL, 16),
  -- Masquerain - Toxic - TM06
  (284, 28400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Masquerain - Hidden Power - TM10
  (284, 28400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Masquerain - Sunny Day - TM11
  (284, 28400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Masquerain - Ice Beam - TM13
  (284, 28400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Masquerain - Blizzard - TM14
  (284, 28400, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Masquerain - Hyper Beam - TM15
  (284, 28400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Masquerain - Protect - TM17
  (284, 28400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Masquerain - Rain Dance - TM18
  (284, 28400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Masquerain - Frustration - TM21
  (284, 28400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Masquerain - Solar Beam - TM22
  (284, 28400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Masquerain - Return - TM27
  (284, 28400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Masquerain - Shadow Ball - TM30
  (284, 28400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Masquerain - Double Team - TM32
  (284, 28400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Masquerain - Aerial Ace - TM40
  (284, 28400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 30),
  -- Masquerain - Facade - TM42
  (284, 28400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Masquerain - Rest - TM44
  (284, 28400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Masquerain - Attract - TM45
  (284, 28400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Masquerain - Thief - TM46
  (284, 28400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 34),
  -- Masquerain - Round - TM48
  (284, 28400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Masquerain - Energy Ball - TM53
  (284, 28400, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 36),
  -- Masquerain - Scald - TM55
  (284, 28400, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 37),
  -- Masquerain - Giga Impact - TM68
  (284, 28400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 38),
  -- Masquerain - Flash - TM70
  (284, 28400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 39),
  -- Masquerain - Struggle Bug - TM76
  (284, 28400, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 40),
  -- Masquerain - Psych Up - TM77
  (284, 28400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 41),
  -- Masquerain - Swagger - TM87
  (284, 28400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Masquerain - U-turn - TM89
  (284, 28400, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 43),
  -- Masquerain - Substitute - TM90
  (284, 28400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Masquerain - Bug Bite - Move Tutor
  (284, 28400, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Masquerain - Giga Drain - Move Tutor
  (284, 28400, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Masquerain - Icy Wind - Move Tutor
  (284, 28400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Masquerain - Roost - Move Tutor
  (284, 28400, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Masquerain - Signal Beam - Move Tutor
  (284, 28400, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Masquerain - Sleep Talk - Move Tutor
  (284, 28400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Masquerain - Snore - Move Tutor
  (284, 28400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Masquerain - Tailwind - Move Tutor
  (284, 28400, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Shroomish - Absorb - Level 1
  (285, 28500, 71, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shroomish - Tackle - Level 5
  (285, 28500, 33, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Shroomish - Stun Spore - Level 9
  (285, 28500, 78, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shroomish - Leech Seed - Level 13
  (285, 28500, 73, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Shroomish - Mega Drain - Level 17
  (285, 28500, 72, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Shroomish - Headbutt - Level 21
  (285, 28500, 29, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Shroomish - Poison Powder - Level 25
  (285, 28500, 77, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shroomish - Worry Seed - Level 29
  (285, 28500, 388, 12, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Shroomish - Growth - Level 33
  (285, 28500, 74, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shroomish - Giga Drain - Level 37
  (285, 28500, 202, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shroomish - Seed Bomb - Level 41
  (285, 28500, 402, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Shroomish - Spore - Level 45
  (285, 28500, 147, 12, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Shroomish - Toxic - TM06
  (285, 28500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Shroomish - Venoshock - TM09
  (285, 28500, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 14),
  -- Shroomish - Hidden Power - TM10
  (285, 28500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Shroomish - Sunny Day - TM11
  (285, 28500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Shroomish - Protect - TM17
  (285, 28500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Shroomish - Safeguard - TM20
  (285, 28500, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 18),
  -- Shroomish - Frustration - TM21
  (285, 28500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Shroomish - Solar Beam - TM22
  (285, 28500, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 20),
  -- Shroomish - Return - TM27
  (285, 28500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Shroomish - Double Team - TM32
  (285, 28500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 22),
  -- Shroomish - Sludge Bomb - TM36
  (285, 28500, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 23),
  -- Shroomish - Facade - TM42
  (285, 28500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 24),
  -- Shroomish - Rest - TM44
  (285, 28500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 25),
  -- Shroomish - Attract - TM45
  (285, 28500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 26),
  -- Shroomish - Round - TM48
  (285, 28500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 27),
  -- Shroomish - Energy Ball - TM53
  (285, 28500, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 28),
  -- Shroomish - False Swipe - TM54
  (285, 28500, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 29),
  -- Shroomish - Flash - TM70
  (285, 28500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 30),
  -- Shroomish - Swords Dance - TM75
  (285, 28500, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 31),
  -- Shroomish - Grass Knot - TM86
  (285, 28500, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 32),
  -- Shroomish - Swagger - TM87
  (285, 28500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 33),
  -- Shroomish - Substitute - TM90
  (285, 28500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 34),
  -- Shroomish - Bullet Seed - Egg Move
  (285, 28500, 331, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Shroomish - Charm - Egg Move
  (285, 28500, 204, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Shroomish - Drain Punch - Egg Move
  (285, 28500, 409, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shroomish - Fake Tears - Egg Move
  (285, 28500, 313, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shroomish - Focus Punch - Egg Move
  (285, 28500, 264, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shroomish - Helping Hand - Egg Move
  (285, 28500, 270, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shroomish - Natural Gift - Egg Move
  (285, 28500, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shroomish - Seed Bomb - Egg Move
  (285, 28500, 402, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shroomish - Wake-Up Slap - Egg Move
  (285, 28500, 358, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shroomish - Worry Seed - Egg Move
  (285, 28500, 388, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shroomish - Drain Punch - Move Tutor
  (285, 28500, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Shroomish - Giga Drain - Move Tutor
  (285, 28500, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Shroomish - Helping Hand - Move Tutor
  (285, 28500, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Shroomish - Seed Bomb - Move Tutor
  (285, 28500, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Shroomish - Sleep Talk - Move Tutor
  (285, 28500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Shroomish - Snatch - Move Tutor
  (285, 28500, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Shroomish - Snore - Move Tutor
  (285, 28500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Shroomish - Synthesis - Move Tutor
  (285, 28500, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Shroomish - Worry Seed - Move Tutor
  (285, 28500, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Breloom - Absorb - Level 1
  (286, 28600, 71, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Breloom - Tackle - Level 1
  (286, 28600, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Breloom - Stun Spore - Level 1
  (286, 28600, 78, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Breloom - Leech Seed - Level 1
  (286, 28600, 73, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Breloom - Tackle - Level 5
  (286, 28600, 33, 12, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Breloom - Stun Spore - Level 9
  (286, 28600, 78, 12, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Breloom - Leech Seed - Level 13
  (286, 28600, 73, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Breloom - Mega Drain - Level 17
  (286, 28600, 72, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Breloom - Headbutt - Level 21
  (286, 28600, 29, 12, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Breloom - Mach Punch - Level 23
  (286, 28600, 183, 12, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Breloom - Counter - Level 25
  (286, 28600, 68, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Breloom - Force Palm - Level 29
  (286, 28600, 395, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Breloom - Sky Uppercut - Level 33
  (286, 28600, 327, 12, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Breloom - Mind Reader - Level 37
  (286, 28600, 170, 12, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Breloom - Seed Bomb - Level 41
  (286, 28600, 402, 12, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Breloom - Dynamic Punch - Level 45
  (286, 28600, 223, 12, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Breloom - Toxic - TM06
  (286, 28600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Breloom - Bulk Up - TM08
  (286, 28600, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 18),
  -- Breloom - Venoshock - TM09
  (286, 28600, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 19),
  -- Breloom - Hidden Power - TM10
  (286, 28600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Breloom - Sunny Day - TM11
  (286, 28600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Breloom - Hyper Beam - TM15
  (286, 28600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Breloom - Protect - TM17
  (286, 28600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Breloom - Safeguard - TM20
  (286, 28600, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 24),
  -- Breloom - Frustration - TM21
  (286, 28600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Breloom - Solar Beam - TM22
  (286, 28600, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Breloom - Return - TM27
  (286, 28600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Breloom - Brick Break - TM31
  (286, 28600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 28),
  -- Breloom - Double Team - TM32
  (286, 28600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Breloom - Sludge Bomb - TM36
  (286, 28600, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 30),
  -- Breloom - Rock Tomb - TM39
  (286, 28600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 31),
  -- Breloom - Facade - TM42
  (286, 28600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Breloom - Rest - TM44
  (286, 28600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Breloom - Attract - TM45
  (286, 28600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Breloom - Low Sweep - TM47
  (286, 28600, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 35),
  -- Breloom - Round - TM48
  (286, 28600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Breloom - Focus Blast - TM52
  (286, 28600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 37),
  -- Breloom - Energy Ball - TM53
  (286, 28600, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 38),
  -- Breloom - False Swipe - TM54
  (286, 28600, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 39),
  -- Breloom - Fling - TM56
  (286, 28600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 40),
  -- Breloom - Retaliate - TM67
  (286, 28600, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 41),
  -- Breloom - Giga Impact - TM68
  (286, 28600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 42),
  -- Breloom - Flash - TM70
  (286, 28600, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 43),
  -- Breloom - Stone Edge - TM71
  (286, 28600, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 44),
  -- Breloom - Swords Dance - TM75
  (286, 28600, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 45),
  -- Breloom - Rock Slide - TM80
  (286, 28600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 46),
  -- Breloom - Work Up - TM83
  (286, 28600, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 47),
  -- Breloom - Grass Knot - TM86
  (286, 28600, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 48),
  -- Breloom - Swagger - TM87
  (286, 28600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Breloom - Substitute - TM90
  (286, 28600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 50),
  -- Breloom - Rock Smash - TM94
  (286, 28600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 51),
  -- Breloom - Cut - HM01
  (286, 28600, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 52),
  -- Breloom - Strength - HM04
  (286, 28600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 53),
  -- Breloom - Drain Punch - Move Tutor
  (286, 28600, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Breloom - Giga Drain - Move Tutor
  (286, 28600, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Breloom - Helping Hand - Move Tutor
  (286, 28600, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Breloom - Iron Tail - Move Tutor
  (286, 28600, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Breloom - Seed Bomb - Move Tutor
  (286, 28600, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Breloom - Sleep Talk - Move Tutor
  (286, 28600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Breloom - Snatch - Move Tutor
  (286, 28600, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Breloom - Snore - Move Tutor
  (286, 28600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Breloom - Superpower - Move Tutor
  (286, 28600, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Breloom - Synthesis - Move Tutor
  (286, 28600, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Breloom - Thunder Punch - Move Tutor
  (286, 28600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Breloom - Worry Seed - Move Tutor
  (286, 28600, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Slakoth - Scratch - Level 1
  (287, 28700, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slakoth - Yawn - Level 1
  (287, 28700, 281, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slakoth - Encore - Level 7
  (287, 28700, 227, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Slakoth - Slack Off - Level 13
  (287, 28700, 303, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Slakoth - Feint Attack - Level 19
  (287, 28700, 185, 12, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Slakoth - Amnesia - Level 25
  (287, 28700, 133, 12, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Slakoth - Covet - Level 31
  (287, 28700, 343, 12, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Slakoth - Chip Away - Level 37
  (287, 28700, 498, 12, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Slakoth - Counter - Level 43
  (287, 28700, 68, 12, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Slakoth - Flail - Level 49
  (287, 28700, 175, 12, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Slakoth - Hone Claws - TM01
  (287, 28700, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 11),
  -- Slakoth - Toxic - TM06
  (287, 28700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 12),
  -- Slakoth - Bulk Up - TM08
  (287, 28700, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 13),
  -- Slakoth - Hidden Power - TM10
  (287, 28700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 14),
  -- Slakoth - Sunny Day - TM11
  (287, 28700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 15),
  -- Slakoth - Ice Beam - TM13
  (287, 28700, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 16),
  -- Slakoth - Blizzard - TM14
  (287, 28700, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 17),
  -- Slakoth - Protect - TM17
  (287, 28700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Slakoth - Rain Dance - TM18
  (287, 28700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 19),
  -- Slakoth - Frustration - TM21
  (287, 28700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Slakoth - Solar Beam - TM22
  (287, 28700, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 21),
  -- Slakoth - Thunderbolt - TM24
  (287, 28700, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 22),
  -- Slakoth - Thunder - TM25
  (287, 28700, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 23),
  -- Slakoth - Return - TM27
  (287, 28700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Slakoth - Shadow Ball - TM30
  (287, 28700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 25),
  -- Slakoth - Brick Break - TM31
  (287, 28700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 26),
  -- Slakoth - Double Team - TM32
  (287, 28700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Slakoth - Flamethrower - TM35
  (287, 28700, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 28),
  -- Slakoth - Fire Blast - TM38
  (287, 28700, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 29),
  -- Slakoth - Rock Tomb - TM39
  (287, 28700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Slakoth - Aerial Ace - TM40
  (287, 28700, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 31),
  -- Slakoth - Facade - TM42
  (287, 28700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Slakoth - Rest - TM44
  (287, 28700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Slakoth - Attract - TM45
  (287, 28700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Slakoth - Round - TM48
  (287, 28700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Slakoth - Fling - TM56
  (287, 28700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 36),
  -- Slakoth - Incinerate - TM59
  (287, 28700, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 37),
  -- Slakoth - Shadow Claw - TM65
  (287, 28700, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 38),
  -- Slakoth - Retaliate - TM67
  (287, 28700, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 39),
  -- Slakoth - Rock Slide - TM80
  (287, 28700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 40),
  -- Slakoth - Work Up - TM83
  (287, 28700, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 41),
  -- Slakoth - Swagger - TM87
  (287, 28700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Slakoth - Substitute - TM90
  (287, 28700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Slakoth - Rock Smash - TM94
  (287, 28700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 44),
  -- Slakoth - Cut - HM01
  (287, 28700, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 45),
  -- Slakoth - Strength - HM04
  (287, 28700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 46),
  -- Slakoth - After You - Egg Move
  (287, 28700, 495, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Slakoth - Body Slam - Egg Move
  (287, 28700, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Slakoth - Crush Claw - Egg Move
  (287, 28700, 306, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Slakoth - Curse - Egg Move
  (287, 28700, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Slakoth - Hammer Arm - Egg Move
  (287, 28700, 359, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Slakoth - Night Slash - Egg Move
  (287, 28700, 400, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Slakoth - Pursuit - Egg Move
  (287, 28700, 228, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Slakoth - Slash - Egg Move
  (287, 28700, 163, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Slakoth - Sleep Talk - Egg Move
  (287, 28700, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Slakoth - Snore - Egg Move
  (287, 28700, 173, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Slakoth - Tickle - Egg Move
  (287, 28700, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Slakoth - After You - Move Tutor
  (287, 28700, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Slakoth - Covet - Move Tutor
  (287, 28700, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Slakoth - Fire Punch - Move Tutor
  (287, 28700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Slakoth - Gunk Shot - Move Tutor
  (287, 28700, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Slakoth - Ice Punch - Move Tutor
  (287, 28700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Slakoth - Icy Wind - Move Tutor
  (287, 28700, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Slakoth - Sleep Talk - Move Tutor
  (287, 28700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Slakoth - Snore - Move Tutor
  (287, 28700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Slakoth - Thunder Punch - Move Tutor
  (287, 28700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Vigoroth - Scratch - Level 1
  (288, 28800, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vigoroth - Focus Energy - Level 1
  (288, 28800, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vigoroth - Encore - Level 1
  (288, 28800, 227, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vigoroth - Uproar - Level 1
  (288, 28800, 253, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vigoroth - Encore - Level 7
  (288, 28800, 227, 12, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Vigoroth - Uproar - Level 13
  (288, 28800, 253, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Vigoroth - Fury Swipes - Level 19
  (288, 28800, 154, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Vigoroth - Endure - Level 25
  (288, 28800, 203, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Vigoroth - Slash - Level 31
  (288, 28800, 163, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Vigoroth - Counter - Level 37
  (288, 28800, 68, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Vigoroth - Chip Away - Level 43
  (288, 28800, 498, 12, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Vigoroth - Focus Punch - Level 49
  (288, 28800, 264, 12, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Vigoroth - Reversal - Level 55
  (288, 28800, 179, 12, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Vigoroth - Hone Claws - TM01
  (288, 28800, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 14),
  -- Vigoroth - Roar - TM05
  (288, 28800, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Vigoroth - Toxic - TM06
  (288, 28800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Vigoroth - Bulk Up - TM08
  (288, 28800, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 17),
  -- Vigoroth - Hidden Power - TM10
  (288, 28800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Vigoroth - Sunny Day - TM11
  (288, 28800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Vigoroth - Taunt - TM12
  (288, 28800, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 20),
  -- Vigoroth - Ice Beam - TM13
  (288, 28800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Vigoroth - Blizzard - TM14
  (288, 28800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Vigoroth - Protect - TM17
  (288, 28800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Vigoroth - Rain Dance - TM18
  (288, 28800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Vigoroth - Frustration - TM21
  (288, 28800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Vigoroth - Solar Beam - TM22
  (288, 28800, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Vigoroth - Thunderbolt - TM24
  (288, 28800, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Vigoroth - Thunder - TM25
  (288, 28800, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Vigoroth - Earthquake - TM26
  (288, 28800, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 29),
  -- Vigoroth - Return - TM27
  (288, 28800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Vigoroth - Shadow Ball - TM30
  (288, 28800, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Vigoroth - Brick Break - TM31
  (288, 28800, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 32),
  -- Vigoroth - Double Team - TM32
  (288, 28800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Vigoroth - Flamethrower - TM35
  (288, 28800, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 34),
  -- Vigoroth - Fire Blast - TM38
  (288, 28800, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 35),
  -- Vigoroth - Rock Tomb - TM39
  (288, 28800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Vigoroth - Aerial Ace - TM40
  (288, 28800, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 37),
  -- Vigoroth - Facade - TM42
  (288, 28800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Vigoroth - Rest - TM44
  (288, 28800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Vigoroth - Attract - TM45
  (288, 28800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Vigoroth - Low Sweep - TM47
  (288, 28800, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 41),
  -- Vigoroth - Round - TM48
  (288, 28800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Vigoroth - Focus Blast - TM52
  (288, 28800, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 43),
  -- Vigoroth - Fling - TM56
  (288, 28800, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 44),
  -- Vigoroth - Incinerate - TM59
  (288, 28800, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 45),
  -- Vigoroth - Shadow Claw - TM65
  (288, 28800, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 46),
  -- Vigoroth - Retaliate - TM67
  (288, 28800, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 47),
  -- Vigoroth - Bulldoze - TM78
  (288, 28800, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 48),
  -- Vigoroth - Rock Slide - TM80
  (288, 28800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 49),
  -- Vigoroth - Work Up - TM83
  (288, 28800, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 50),
  -- Vigoroth - Swagger - TM87
  (288, 28800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 51),
  -- Vigoroth - Substitute - TM90
  (288, 28800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 52),
  -- Vigoroth - Rock Smash - TM94
  (288, 28800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 53),
  -- Vigoroth - Cut - HM01
  (288, 28800, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 54),
  -- Vigoroth - Strength - HM04
  (288, 28800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 55),
  -- Vigoroth - After You - Move Tutor
  (288, 28800, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Vigoroth - Covet - Move Tutor
  (288, 28800, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Vigoroth - Fire Punch - Move Tutor
  (288, 28800, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Vigoroth - Gunk Shot - Move Tutor
  (288, 28800, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Vigoroth - Ice Punch - Move Tutor
  (288, 28800, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Vigoroth - Icy Wind - Move Tutor
  (288, 28800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Vigoroth - Low Kick - Move Tutor
  (288, 28800, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Vigoroth - Sleep Talk - Move Tutor
  (288, 28800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Vigoroth - Thunder Punch - Move Tutor
  (288, 28800, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Vigoroth - Uproar - Move Tutor
  (288, 28800, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Slaking - Scratch - Level 1
  (289, 28900, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slaking - Yawn - Level 1
  (289, 28900, 281, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slaking - Encore - Level 1
  (289, 28900, 227, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slaking - Slack Off - Level 1
  (289, 28900, 303, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slaking - Encore - Level 7
  (289, 28900, 227, 12, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Slaking - Slack Off - Level 13
  (289, 28900, 303, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Slaking - Feint Attack - Level 19
  (289, 28900, 185, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Slaking - Amnesia - Level 25
  (289, 28900, 133, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Slaking - Covet - Level 31
  (289, 28900, 343, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Slaking - Swagger - Level 36
  (289, 28900, 207, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Slaking - Chip Away - Level 37
  (289, 28900, 498, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Slaking - Counter - Level 43
  (289, 28900, 68, 12, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Slaking - Flail - Level 49
  (289, 28900, 175, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Slaking - Fling - Level 55
  (289, 28900, 374, 12, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Slaking - Punishment - Level 61
  (289, 28900, 386, 12, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Slaking - Hammer Arm - Level 67
  (289, 28900, 359, 12, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Slaking - Hone Claws - TM01
  (289, 28900, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 17),
  -- Slaking - Roar - TM05
  (289, 28900, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 18),
  -- Slaking - Toxic - TM06
  (289, 28900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Slaking - Bulk Up - TM08
  (289, 28900, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 20),
  -- Slaking - Hidden Power - TM10
  (289, 28900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Slaking - Sunny Day - TM11
  (289, 28900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Slaking - Taunt - TM12
  (289, 28900, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 23),
  -- Slaking - Ice Beam - TM13
  (289, 28900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 24),
  -- Slaking - Blizzard - TM14
  (289, 28900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 25),
  -- Slaking - Hyper Beam - TM15
  (289, 28900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Slaking - Protect - TM17
  (289, 28900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 27),
  -- Slaking - Rain Dance - TM18
  (289, 28900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 28),
  -- Slaking - Frustration - TM21
  (289, 28900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Slaking - Solar Beam - TM22
  (289, 28900, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 30),
  -- Slaking - Smack Down - TM23
  (289, 28900, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 31),
  -- Slaking - Thunderbolt - TM24
  (289, 28900, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 32),
  -- Slaking - Thunder - TM25
  (289, 28900, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 33),
  -- Slaking - Earthquake - TM26
  (289, 28900, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 34),
  -- Slaking - Return - TM27
  (289, 28900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 35),
  -- Slaking - Shadow Ball - TM30
  (289, 28900, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 36),
  -- Slaking - Brick Break - TM31
  (289, 28900, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 37),
  -- Slaking - Double Team - TM32
  (289, 28900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 38),
  -- Slaking - Flamethrower - TM35
  (289, 28900, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 39),
  -- Slaking - Fire Blast - TM38
  (289, 28900, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 40),
  -- Slaking - Rock Tomb - TM39
  (289, 28900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 41),
  -- Slaking - Aerial Ace - TM40
  (289, 28900, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 42),
  -- Slaking - Facade - TM42
  (289, 28900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 43),
  -- Slaking - Rest - TM44
  (289, 28900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 44),
  -- Slaking - Attract - TM45
  (289, 28900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 45),
  -- Slaking - Low Sweep - TM47
  (289, 28900, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 46),
  -- Slaking - Round - TM48
  (289, 28900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 47),
  -- Slaking - Focus Blast - TM52
  (289, 28900, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 48),
  -- Slaking - Fling - TM56
  (289, 28900, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 49),
  -- Slaking - Incinerate - TM59
  (289, 28900, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 50),
  -- Slaking - Quash - TM60
  (289, 28900, 511, 12, NULL, 2, NULL, NULL, 12002060, NULL, 51),
  -- Slaking - Shadow Claw - TM65
  (289, 28900, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 52),
  -- Slaking - Retaliate - TM67
  (289, 28900, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 53),
  -- Slaking - Giga Impact - TM68
  (289, 28900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 54),
  -- Slaking - Bulldoze - TM78
  (289, 28900, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 55),
  -- Slaking - Rock Slide - TM80
  (289, 28900, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 56),
  -- Slaking - Work Up - TM83
  (289, 28900, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 57),
  -- Slaking - Swagger - TM87
  (289, 28900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 58),
  -- Slaking - Substitute - TM90
  (289, 28900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 59),
  -- Slaking - Rock Smash - TM94
  (289, 28900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 60),
  -- Slaking - Cut - HM01
  (289, 28900, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 61),
  -- Slaking - Strength - HM04
  (289, 28900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 62),
  -- Slaking - After You - Move Tutor
  (289, 28900, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Slaking - Block - Move Tutor
  (289, 28900, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Slaking - Covet - Move Tutor
  (289, 28900, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Slaking - Fire Punch - Move Tutor
  (289, 28900, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Slaking - Gunk Shot - Move Tutor
  (289, 28900, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Slaking - Ice Punch - Move Tutor
  (289, 28900, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Slaking - Icy Wind - Move Tutor
  (289, 28900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Slaking - Low Kick - Move Tutor
  (289, 28900, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Slaking - Sleep Talk - Move Tutor
  (289, 28900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Slaking - Snore - Move Tutor
  (289, 28900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Slaking - Thunder Punch - Move Tutor
  (289, 28900, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Nincada - Scratch - Level 1
  (290, 29000, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nincada - Harden - Level 1
  (290, 29000, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nincada - Leech Life - Level 5
  (290, 29000, 141, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nincada - Sand Attack - Level 9
  (290, 29000, 28, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Nincada - Fury Swipes - Level 14
  (290, 29000, 154, 12, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Nincada - Mind Reader - Level 19
  (290, 29000, 170, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Nincada - False Swipe - Level 25
  (290, 29000, 206, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nincada - Mud-Slap - Level 31
  (290, 29000, 189, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Nincada - Metal Claw - Level 38
  (290, 29000, 232, 12, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Nincada - Dig - Level 45
  (290, 29000, 91, 12, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Nincada - Hone Claws - TM01
  (290, 29000, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 11),
  -- Nincada - Toxic - TM06
  (290, 29000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 12),
  -- Nincada - Hidden Power - TM10
  (290, 29000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 13),
  -- Nincada - Sunny Day - TM11
  (290, 29000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 14),
  -- Nincada - Protect - TM17
  (290, 29000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 15),
  -- Nincada - Frustration - TM21
  (290, 29000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 16),
  -- Nincada - Solar Beam - TM22
  (290, 29000, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 17),
  -- Nincada - Return - TM27
  (290, 29000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 18),
  -- Nincada - Dig - TM28
  (290, 29000, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 19),
  -- Nincada - Shadow Ball - TM30
  (290, 29000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 20),
  -- Nincada - Double Team - TM32
  (290, 29000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 21),
  -- Nincada - Sandstorm - TM37
  (290, 29000, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 22),
  -- Nincada - Aerial Ace - TM40
  (290, 29000, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 23),
  -- Nincada - Facade - TM42
  (290, 29000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 24),
  -- Nincada - Rest - TM44
  (290, 29000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 25),
  -- Nincada - Round - TM48
  (290, 29000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 26),
  -- Nincada - False Swipe - TM54
  (290, 29000, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 27),
  -- Nincada - Flash - TM70
  (290, 29000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 28),
  -- Nincada - Struggle Bug - TM76
  (290, 29000, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 29),
  -- Nincada - X-Scissor - TM81
  (290, 29000, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 30),
  -- Nincada - Swagger - TM87
  (290, 29000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 31),
  -- Nincada - Substitute - TM90
  (290, 29000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 32),
  -- Nincada - Cut - HM01
  (290, 29000, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 33),
  -- Nincada - Bug Bite - Egg Move
  (290, 29000, 450, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Nincada - Bug Buzz - Egg Move
  (290, 29000, 405, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Nincada - Endure - Egg Move
  (290, 29000, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Nincada - Final Gambit - Egg Move
  (290, 29000, 515, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Nincada - Feint Attack - Egg Move
  (290, 29000, 185, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Nincada - Gust - Egg Move
  (290, 29000, 16, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Nincada - Night Slash - Egg Move
  (290, 29000, 400, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Nincada - Silver Wind - Egg Move
  (290, 29000, 318, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Nincada - Bug Bite - Move Tutor
  (290, 29000, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Nincada - Giga Drain - Move Tutor
  (290, 29000, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Nincada - Sleep Talk - Move Tutor
  (290, 29000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Nincada - Snore - Move Tutor
  (290, 29000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Nincada - Spite - Move Tutor
  (290, 29000, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Ninjask - Bug Bite - Level 1
  (291, 29100, 450, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninjask - Scratch - Level 1
  (291, 29100, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninjask - Harden - Level 1
  (291, 29100, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninjask - Leech Life - Level 1
  (291, 29100, 141, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninjask - Sand Attack - Level 1
  (291, 29100, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ninjask - Leech Life - Level 5
  (291, 29100, 141, 12, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Ninjask - Sand Attack - Level 9
  (291, 29100, 28, 12, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Ninjask - Fury Swipes - Level 14
  (291, 29100, 154, 12, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Ninjask - Mind Reader - Level 19
  (291, 29100, 170, 12, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Ninjask - Double Team - Level 20
  (291, 29100, 104, 12, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Ninjask - Fury Cutter - Level 20
  (291, 29100, 210, 12, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Ninjask - Screech - Level 20
  (291, 29100, 103, 12, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Ninjask - Swords Dance - Level 25
  (291, 29100, 14, 12, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Ninjask - Slash - Level 31
  (291, 29100, 163, 12, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Ninjask - Agility - Level 38
  (291, 29100, 97, 12, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Ninjask - Baton Pass - Level 45
  (291, 29100, 226, 12, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Ninjask - X-Scissor - Level 52
  (291, 29100, 404, 12, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Ninjask - Hone Claws - TM01
  (291, 29100, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 18),
  -- Ninjask - Toxic - TM06
  (291, 29100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Ninjask - Hidden Power - TM10
  (291, 29100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Ninjask - Sunny Day - TM11
  (291, 29100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Ninjask - Hyper Beam - TM15
  (291, 29100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Ninjask - Protect - TM17
  (291, 29100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Ninjask - Frustration - TM21
  (291, 29100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Ninjask - Solar Beam - TM22
  (291, 29100, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 25),
  -- Ninjask - Return - TM27
  (291, 29100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Ninjask - Dig - TM28
  (291, 29100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Ninjask - Shadow Ball - TM30
  (291, 29100, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Ninjask - Double Team - TM32
  (291, 29100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Ninjask - Sandstorm - TM37
  (291, 29100, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 30),
  -- Ninjask - Aerial Ace - TM40
  (291, 29100, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 31),
  -- Ninjask - Facade - TM42
  (291, 29100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Ninjask - Rest - TM44
  (291, 29100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Ninjask - Attract - TM45
  (291, 29100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Ninjask - Thief - TM46
  (291, 29100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 35),
  -- Ninjask - Round - TM48
  (291, 29100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Ninjask - False Swipe - TM54
  (291, 29100, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 37),
  -- Ninjask - Giga Impact - TM68
  (291, 29100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 38),
  -- Ninjask - Flash - TM70
  (291, 29100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 39),
  -- Ninjask - Swords Dance - TM75
  (291, 29100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 40),
  -- Ninjask - Struggle Bug - TM76
  (291, 29100, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 41),
  -- Ninjask - X-Scissor - TM81
  (291, 29100, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 42),
  -- Ninjask - Swagger - TM87
  (291, 29100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Ninjask - U-turn - TM89
  (291, 29100, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 44),
  -- Ninjask - Substitute - TM90
  (291, 29100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Ninjask - Cut - HM01
  (291, 29100, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 46),
  -- Ninjask - Bug Bite - Move Tutor
  (291, 29100, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Ninjask - Giga Drain - Move Tutor
  (291, 29100, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Ninjask - Roost - Move Tutor
  (291, 29100, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Ninjask - Sleep Talk - Move Tutor
  (291, 29100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Ninjask - Snore - Move Tutor
  (291, 29100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Ninjask - Spite - Move Tutor
  (291, 29100, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Ninjask - Uproar - Move Tutor
  (291, 29100, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Shedinja - Scratch - Level 1
  (292, 29200, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shedinja - Harden - Level 1
  (292, 29200, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shedinja - Leech Life - Level 5
  (292, 29200, 141, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shedinja - Sand Attack - Level 9
  (292, 29200, 28, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Shedinja - Fury Swipes - Level 14
  (292, 29200, 154, 12, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Shedinja - Mind Reader - Level 19
  (292, 29200, 170, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shedinja - Spite - Level 25
  (292, 29200, 180, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shedinja - Confuse Ray - Level 31
  (292, 29200, 109, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Shedinja - Shadow Sneak - Level 38
  (292, 29200, 425, 12, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Shedinja - Grudge - Level 45
  (292, 29200, 288, 12, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Shedinja - Heal Block - Level 52
  (292, 29200, 377, 12, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Shedinja - Shadow Ball - Level 59
  (292, 29200, 247, 12, NULL, 1, 59, NULL, NULL, NULL, 12),
  -- Shedinja - Hone Claws - TM01
  (292, 29200, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 13),
  -- Shedinja - Toxic - TM06
  (292, 29200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Shedinja - Hidden Power - TM10
  (292, 29200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Shedinja - Sunny Day - TM11
  (292, 29200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Shedinja - Hyper Beam - TM15
  (292, 29200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 17),
  -- Shedinja - Protect - TM17
  (292, 29200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Shedinja - Telekinesis - TM19
  (292, 29200, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 19),
  -- Shedinja - Frustration - TM21
  (292, 29200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Shedinja - Solar Beam - TM22
  (292, 29200, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 21),
  -- Shedinja - Return - TM27
  (292, 29200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 22),
  -- Shedinja - Dig - TM28
  (292, 29200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 23),
  -- Shedinja - Shadow Ball - TM30
  (292, 29200, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 24),
  -- Shedinja - Double Team - TM32
  (292, 29200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Shedinja - Sandstorm - TM37
  (292, 29200, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 26),
  -- Shedinja - Aerial Ace - TM40
  (292, 29200, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 27),
  -- Shedinja - Facade - TM42
  (292, 29200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Shedinja - Rest - TM44
  (292, 29200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Shedinja - Thief - TM46
  (292, 29200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 30),
  -- Shedinja - Round - TM48
  (292, 29200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Shedinja - False Swipe - TM54
  (292, 29200, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 32),
  -- Shedinja - Will-O-Wisp - TM61
  (292, 29200, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 33),
  -- Shedinja - Shadow Claw - TM65
  (292, 29200, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 34),
  -- Shedinja - Giga Impact - TM68
  (292, 29200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 35),
  -- Shedinja - Flash - TM70
  (292, 29200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 36),
  -- Shedinja - Struggle Bug - TM76
  (292, 29200, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 37),
  -- Shedinja - X-Scissor - TM81
  (292, 29200, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 38),
  -- Shedinja - Dream Eater - TM85
  (292, 29200, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 39),
  -- Shedinja - Swagger - TM87
  (292, 29200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Shedinja - Substitute - TM90
  (292, 29200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Shedinja - Cut - HM01
  (292, 29200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 42),
  -- Shedinja - Bug Bite - Move Tutor
  (292, 29200, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Shedinja - Giga Drain - Move Tutor
  (292, 29200, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Shedinja - Sleep Talk - Move Tutor
  (292, 29200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Shedinja - Snore - Move Tutor
  (292, 29200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Shedinja - Spite - Move Tutor
  (292, 29200, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Shedinja - Trick - Move Tutor
  (292, 29200, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Whismur - Pound - Level 1
  (293, 29300, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whismur - Uproar - Level 5
  (293, 29300, 253, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Whismur - Astonish - Level 11
  (293, 29300, 310, 12, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Whismur - Howl - Level 15
  (293, 29300, 336, 12, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Whismur - Supersonic - Level 21
  (293, 29300, 48, 12, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Whismur - Stomp - Level 25
  (293, 29300, 23, 12, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Whismur - Screech - Level 31
  (293, 29300, 103, 12, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Whismur - Roar - Level 35
  (293, 29300, 46, 12, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Whismur - Synchronoise - Level 41
  (293, 29300, 485, 12, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Whismur - Rest - Level 45
  (293, 29300, 156, 12, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Whismur - Sleep Talk - Level 45
  (293, 29300, 214, 12, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Whismur - Hyper Voice - Level 51
  (293, 29300, 304, 12, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Whismur - Roar - TM05
  (293, 29300, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 13),
  -- Whismur - Toxic - TM06
  (293, 29300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Whismur - Hidden Power - TM10
  (293, 29300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Whismur - Sunny Day - TM11
  (293, 29300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Whismur - Ice Beam - TM13
  (293, 29300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 17),
  -- Whismur - Blizzard - TM14
  (293, 29300, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 18),
  -- Whismur - Protect - TM17
  (293, 29300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Whismur - Rain Dance - TM18
  (293, 29300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Whismur - Frustration - TM21
  (293, 29300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Whismur - Solar Beam - TM22
  (293, 29300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 22),
  -- Whismur - Return - TM27
  (293, 29300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Whismur - Shadow Ball - TM30
  (293, 29300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 24),
  -- Whismur - Double Team - TM32
  (293, 29300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Whismur - Flamethrower - TM35
  (293, 29300, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 26),
  -- Whismur - Fire Blast - TM38
  (293, 29300, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 27),
  -- Whismur - Facade - TM42
  (293, 29300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Whismur - Rest - TM44
  (293, 29300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Whismur - Attract - TM45
  (293, 29300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Whismur - Round - TM48
  (293, 29300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Whismur - Echoed Voice - TM49
  (293, 29300, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 32),
  -- Whismur - Fling - TM56
  (293, 29300, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 33),
  -- Whismur - Incinerate - TM59
  (293, 29300, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 34),
  -- Whismur - Retaliate - TM67
  (293, 29300, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 35),
  -- Whismur - Work Up - TM83
  (293, 29300, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 36),
  -- Whismur - Swagger - TM87
  (293, 29300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Whismur - Substitute - TM90
  (293, 29300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Whismur - Circle Throw - Egg Move
  (293, 29300, 509, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Whismur - Endeavor - Egg Move
  (293, 29300, 283, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Whismur - Extrasensory - Egg Move
  (293, 29300, 326, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Whismur - Fake Tears - Egg Move
  (293, 29300, 313, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Whismur - Hammer Arm - Egg Move
  (293, 29300, 359, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Whismur - Smelling Salts - Egg Move
  (293, 29300, 265, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Whismur - Smokescreen - Egg Move
  (293, 29300, 108, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Whismur - Snore - Egg Move
  (293, 29300, 173, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Whismur - Take Down - Egg Move
  (293, 29300, 36, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Whismur - Endeavor - Move Tutor
  (293, 29300, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Whismur - Fire Punch - Move Tutor
  (293, 29300, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Whismur - Hyper Voice - Move Tutor
  (293, 29300, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Whismur - Ice Punch - Move Tutor
  (293, 29300, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Whismur - Icy Wind - Move Tutor
  (293, 29300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Whismur - Sleep Talk - Move Tutor
  (293, 29300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Whismur - Snore - Move Tutor
  (293, 29300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Whismur - Thunder Punch - Move Tutor
  (293, 29300, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Whismur - Uproar - Move Tutor
  (293, 29300, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Whismur - Zen Headbutt - Move Tutor
  (293, 29300, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Loudred - Pound - Level 1
  (294, 29400, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Loudred - Uproar - Level 1
  (294, 29400, 253, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Loudred - Astonish - Level 1
  (294, 29400, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Loudred - Howl - Level 1
  (294, 29400, 336, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Loudred - Uproar - Level 5
  (294, 29400, 253, 12, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Loudred - Astonish - Level 11
  (294, 29400, 310, 12, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Loudred - Howl - Level 15
  (294, 29400, 336, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Loudred - Bite - Level 20
  (294, 29400, 44, 12, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Loudred - Supersonic - Level 23
  (294, 29400, 48, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Loudred - Stomp - Level 29
  (294, 29400, 23, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Loudred - Screech - Level 37
  (294, 29400, 103, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Loudred - Roar - Level 43
  (294, 29400, 46, 12, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Loudred - Synchronoise - Level 51
  (294, 29400, 485, 12, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Loudred - Rest - Level 57
  (294, 29400, 156, 12, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Loudred - Sleep Talk - Level 57
  (294, 29400, 214, 12, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Loudred - Hyper Voice - Level 65
  (294, 29400, 304, 12, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Loudred - Roar - TM05
  (294, 29400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 17),
  -- Loudred - Toxic - TM06
  (294, 29400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Loudred - Hidden Power - TM10
  (294, 29400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Loudred - Sunny Day - TM11
  (294, 29400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Loudred - Taunt - TM12
  (294, 29400, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Loudred - Ice Beam - TM13
  (294, 29400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 22),
  -- Loudred - Blizzard - TM14
  (294, 29400, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 23),
  -- Loudred - Protect - TM17
  (294, 29400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Loudred - Rain Dance - TM18
  (294, 29400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Loudred - Frustration - TM21
  (294, 29400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Loudred - Solar Beam - TM22
  (294, 29400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 27),
  -- Loudred - Smack Down - TM23
  (294, 29400, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 28),
  -- Loudred - Earthquake - TM26
  (294, 29400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 29),
  -- Loudred - Return - TM27
  (294, 29400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Loudred - Shadow Ball - TM30
  (294, 29400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Loudred - Brick Break - TM31
  (294, 29400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 32),
  -- Loudred - Double Team - TM32
  (294, 29400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Loudred - Flamethrower - TM35
  (294, 29400, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 34),
  -- Loudred - Fire Blast - TM38
  (294, 29400, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 35),
  -- Loudred - Rock Tomb - TM39
  (294, 29400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Loudred - Torment - TM41
  (294, 29400, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 37),
  -- Loudred - Facade - TM42
  (294, 29400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Loudred - Rest - TM44
  (294, 29400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Loudred - Attract - TM45
  (294, 29400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Loudred - Round - TM48
  (294, 29400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 41),
  -- Loudred - Echoed Voice - TM49
  (294, 29400, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 42),
  -- Loudred - Overheat - TM50
  (294, 29400, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 43),
  -- Loudred - Fling - TM56
  (294, 29400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 44),
  -- Loudred - Incinerate - TM59
  (294, 29400, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 45),
  -- Loudred - Retaliate - TM67
  (294, 29400, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 46),
  -- Loudred - Bulldoze - TM78
  (294, 29400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 47),
  -- Loudred - Rock Slide - TM80
  (294, 29400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 48),
  -- Loudred - Work Up - TM83
  (294, 29400, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 49),
  -- Loudred - Swagger - TM87
  (294, 29400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Loudred - Substitute - TM90
  (294, 29400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Loudred - Rock Smash - TM94
  (294, 29400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 52),
  -- Loudred - Strength - HM04
  (294, 29400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 53),
  -- Loudred - Endeavor - Move Tutor
  (294, 29400, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Loudred - Fire Punch - Move Tutor
  (294, 29400, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Loudred - Hyper Voice - Move Tutor
  (294, 29400, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Loudred - Ice Punch - Move Tutor
  (294, 29400, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Loudred - Icy Wind - Move Tutor
  (294, 29400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Loudred - Low Kick - Move Tutor
  (294, 29400, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Loudred - Sleep Talk - Move Tutor
  (294, 29400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Loudred - Snore - Move Tutor
  (294, 29400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Loudred - Thunder Punch - Move Tutor
  (294, 29400, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Loudred - Uproar - Move Tutor
  (294, 29400, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Loudred - Zen Headbutt - Move Tutor
  (294, 29400, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Exploud - Ice Fang - Level 1
  (295, 29500, 423, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exploud - Fire Fang - Level 1
  (295, 29500, 424, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exploud - Thunder Fang - Level 1
  (295, 29500, 422, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exploud - Pound - Level 1
  (295, 29500, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exploud - Uproar - Level 1
  (295, 29500, 253, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exploud - Astonish - Level 1
  (295, 29500, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Exploud - Howl - Level 1
  (295, 29500, 336, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Exploud - Uproar - Level 5
  (295, 29500, 253, 12, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Exploud - Astonish - Level 11
  (295, 29500, 310, 12, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Exploud - Howl - Level 15
  (295, 29500, 336, 12, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Exploud - Bite - Level 20
  (295, 29500, 44, 12, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Exploud - Supersonic - Level 23
  (295, 29500, 48, 12, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Exploud - Stomp - Level 29
  (295, 29500, 23, 12, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Exploud - Screech - Level 37
  (295, 29500, 103, 12, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Exploud - Crunch - Level 40
  (295, 29500, 242, 12, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Exploud - Roar - Level 45
  (295, 29500, 46, 12, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Exploud - Synchronoise - Level 55
  (295, 29500, 485, 12, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Exploud - Rest - Level 55
  (295, 29500, 156, 12, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Exploud - Sleep Talk - Level 63
  (295, 29500, 214, 12, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Exploud - Hyper Voice - Level 71
  (295, 29500, 304, 12, NULL, 1, 71, NULL, NULL, NULL, 20),
  -- Exploud - Hyper Beam - Level 79
  (295, 29500, 63, 12, NULL, 1, 79, NULL, NULL, NULL, 21),
  -- Exploud - Roar - TM05
  (295, 29500, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 22),
  -- Exploud - Toxic - TM06
  (295, 29500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 23),
  -- Exploud - Hidden Power - TM10
  (295, 29500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 24),
  -- Exploud - Sunny Day - TM11
  (295, 29500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 25),
  -- Exploud - Taunt - TM12
  (295, 29500, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 26),
  -- Exploud - Ice Beam - TM13
  (295, 29500, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 27),
  -- Exploud - Blizzard - TM14
  (295, 29500, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 28),
  -- Exploud - Hyper Beam - TM15
  (295, 29500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 29),
  -- Exploud - Protect - TM17
  (295, 29500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 30),
  -- Exploud - Rain Dance - TM18
  (295, 29500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 31),
  -- Exploud - Frustration - TM21
  (295, 29500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 32),
  -- Exploud - Solar Beam - TM22
  (295, 29500, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 33),
  -- Exploud - Smack Down - TM23
  (295, 29500, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 34),
  -- Exploud - Earthquake - TM26
  (295, 29500, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 35),
  -- Exploud - Return - TM27
  (295, 29500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 36),
  -- Exploud - Shadow Ball - TM30
  (295, 29500, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 37),
  -- Exploud - Brick Break - TM31
  (295, 29500, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 38),
  -- Exploud - Double Team - TM32
  (295, 29500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 39),
  -- Exploud - Flamethrower - TM35
  (295, 29500, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 40),
  -- Exploud - Fire Blast - TM38
  (295, 29500, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 41),
  -- Exploud - Rock Tomb - TM39
  (295, 29500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 42),
  -- Exploud - Torment - TM41
  (295, 29500, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 43),
  -- Exploud - Facade - TM42
  (295, 29500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 44),
  -- Exploud - Rest - TM44
  (295, 29500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 45),
  -- Exploud - Attract - TM45
  (295, 29500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 46),
  -- Exploud - Round - TM48
  (295, 29500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 47),
  -- Exploud - Echoed Voice - TM49
  (295, 29500, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 48),
  -- Exploud - Overheat - TM50
  (295, 29500, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 49),
  -- Exploud - Focus Blast - TM52
  (295, 29500, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 50),
  -- Exploud - Fling - TM56
  (295, 29500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 51),
  -- Exploud - Incinerate - TM59
  (295, 29500, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 52),
  -- Exploud - Retaliate - TM67
  (295, 29500, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 53),
  -- Exploud - Giga Impact - TM68
  (295, 29500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 54),
  -- Exploud - Bulldoze - TM78
  (295, 29500, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 55),
  -- Exploud - Rock Slide - TM80
  (295, 29500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 56),
  -- Exploud - Work Up - TM83
  (295, 29500, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 57),
  -- Exploud - Swagger - TM87
  (295, 29500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 58),
  -- Exploud - Substitute - TM90
  (295, 29500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 59),
  -- Exploud - Rock Smash - TM94
  (295, 29500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 60),
  -- Exploud - Surf - HM03
  (295, 29500, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 61),
  -- Exploud - Strength - HM04
  (295, 29500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 62),
  -- Exploud - Endeavor - Move Tutor
  (295, 29500, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Exploud - Fire Punch - Move Tutor
  (295, 29500, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Exploud - Hyper Voice - Move Tutor
  (295, 29500, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Exploud - Ice Punch - Move Tutor
  (295, 29500, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Exploud - Icy Wind - Move Tutor
  (295, 29500, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Exploud - Low Kick - Move Tutor
  (295, 29500, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Exploud - Outrage - Move Tutor
  (295, 29500, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Exploud - Sleep Talk - Move Tutor
  (295, 29500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Exploud - Snore - Move Tutor
  (295, 29500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Exploud - Thunder Punch - Move Tutor
  (295, 29500, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Exploud - Uproar - Move Tutor
  (295, 29500, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Exploud - Zen Headbutt - Move Tutor
  (295, 29500, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Makuhita - Tackle - Level 1
  (296, 29600, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Makuhita - Focus Energy - Level 1
  (296, 29600, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Makuhita - Sand Attack - Level 4
  (296, 29600, 28, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Makuhita - Arm Thrust - Level 7
  (296, 29600, 292, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Makuhita - Vital Throw - Level 10
  (296, 29600, 233, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Makuhita - Fake Out - Level 13
  (296, 29600, 252, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Makuhita - Whirlwind - Level 16
  (296, 29600, 18, 12, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Makuhita - Knock Off - Level 19
  (296, 29600, 282, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Makuhita - Smelling Salts - Level 22
  (296, 29600, 265, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Makuhita - Belly Drum - Level 25
  (296, 29600, 187, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Makuhita - Force Palm - Level 28
  (296, 29600, 395, 12, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Makuhita - Seismic Toss - Level 31
  (296, 29600, 69, 12, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Makuhita - Wake-Up Slap - Level 34
  (296, 29600, 358, 12, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Makuhita - Endure - Level 37
  (296, 29600, 203, 12, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Makuhita - Close Combat - Level 40
  (296, 29600, 370, 12, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Makuhita - Reversal - Level 43
  (296, 29600, 179, 12, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Makuhita - Heavy Slam - Level 46
  (296, 29600, 484, 12, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Makuhita - Toxic - TM06
  (296, 29600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Makuhita - Bulk Up - TM08
  (296, 29600, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 19),
  -- Makuhita - Hidden Power - TM10
  (296, 29600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Makuhita - Sunny Day - TM11
  (296, 29600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Makuhita - Protect - TM17
  (296, 29600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Makuhita - Rain Dance - TM18
  (296, 29600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Makuhita - Frustration - TM21
  (296, 29600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Makuhita - Smack Down - TM23
  (296, 29600, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 25),
  -- Makuhita - Earthquake - TM26
  (296, 29600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 26),
  -- Makuhita - Return - TM27
  (296, 29600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Makuhita - Dig - TM28
  (296, 29600, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 28),
  -- Makuhita - Brick Break - TM31
  (296, 29600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 29),
  -- Makuhita - Double Team - TM32
  (296, 29600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Makuhita - Rock Tomb - TM39
  (296, 29600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 31),
  -- Makuhita - Facade - TM42
  (296, 29600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Makuhita - Rest - TM44
  (296, 29600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Makuhita - Attract - TM45
  (296, 29600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Makuhita - Low Sweep - TM47
  (296, 29600, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 35),
  -- Makuhita - Round - TM48
  (296, 29600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Makuhita - Focus Blast - TM52
  (296, 29600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 37),
  -- Makuhita - Fling - TM56
  (296, 29600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 38),
  -- Makuhita - Retaliate - TM67
  (296, 29600, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 39),
  -- Makuhita - Bulldoze - TM78
  (296, 29600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 40),
  -- Makuhita - Rock Slide - TM80
  (296, 29600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 41),
  -- Makuhita - Work Up - TM83
  (296, 29600, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 42),
  -- Makuhita - Poison Jab - TM84
  (296, 29600, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 43),
  -- Makuhita - Swagger - TM87
  (296, 29600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Makuhita - Substitute - TM90
  (296, 29600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Makuhita - Rock Smash - TM94
  (296, 29600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 46),
  -- Makuhita - Surf - HM03
  (296, 29600, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 47),
  -- Makuhita - Strength - HM04
  (296, 29600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 48),
  -- Makuhita - Bullet Punch - Egg Move
  (296, 29600, 418, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Makuhita - Chip Away - Egg Move
  (296, 29600, 498, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Makuhita - Counter - Egg Move
  (296, 29600, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Makuhita - Cross Chop - Egg Move
  (296, 29600, 238, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Makuhita - Detect - Egg Move
  (296, 29600, 197, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Makuhita - Dynamic Punch - Egg Move
  (296, 29600, 223, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Makuhita - Feint Attack - Egg Move
  (296, 29600, 185, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Makuhita - Feint - Egg Move
  (296, 29600, 364, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Makuhita - Focus Punch - Egg Move
  (296, 29600, 264, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Makuhita - Foresight - Egg Move
  (296, 29600, 193, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Makuhita - Helping Hand - Egg Move
  (296, 29600, 270, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Makuhita - Revenge - Egg Move
  (296, 29600, 279, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Makuhita - Wake-Up Slap - Egg Move
  (296, 29600, 358, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Makuhita - Wide Guard - Egg Move
  (296, 29600, 469, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Makuhita - Fire Punch - Move Tutor
  (296, 29600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Makuhita - Helping Hand - Move Tutor
  (296, 29600, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Makuhita - Ice Punch - Move Tutor
  (296, 29600, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Makuhita - Knock Off - Move Tutor
  (296, 29600, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Makuhita - Low Kick - Move Tutor
  (296, 29600, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Makuhita - Role Play - Move Tutor
  (296, 29600, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Makuhita - Sleep Talk - Move Tutor
  (296, 29600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Makuhita - Snore - Move Tutor
  (296, 29600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Makuhita - Superpower - Move Tutor
  (296, 29600, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Makuhita - Thunder Punch - Move Tutor
  (296, 29600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Hariyama - Brine - Level 1
  (297, 29700, 362, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hariyama - Tackle - Level 1
  (297, 29700, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hariyama - Focus Energy - Level 1
  (297, 29700, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hariyama - Sand Attack - Level 1
  (297, 29700, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hariyama - Arm Thrust - Level 1
  (297, 29700, 292, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hariyama - Sand Attack - Level 4
  (297, 29700, 28, 12, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Hariyama - Arm Thrust - Level 7
  (297, 29700, 292, 12, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Hariyama - Vital Throw - Level 10
  (297, 29700, 233, 12, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Hariyama - Fake Out - Level 13
  (297, 29700, 252, 12, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Hariyama - Whirlwind - Level 16
  (297, 29700, 18, 12, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Hariyama - Knock Off - Level 19
  (297, 29700, 282, 12, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Hariyama - Smelling Salts - Level 22
  (297, 29700, 265, 12, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Hariyama - Belly Drum - Level 27
  (297, 29700, 187, 12, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Hariyama - Force Palm - Level 32
  (297, 29700, 395, 12, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Hariyama - Seismic Toss - Level 37
  (297, 29700, 69, 12, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Hariyama - Wake-Up Slap - Level 42
  (297, 29700, 358, 12, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Hariyama - Endure - Level 47
  (297, 29700, 203, 12, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Hariyama - Close Combat - Level 52
  (297, 29700, 370, 12, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Hariyama - Reversal - Level 57
  (297, 29700, 179, 12, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Hariyama - Heavy Slam - Level 62
  (297, 29700, 484, 12, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Hariyama - Toxic - TM06
  (297, 29700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Hariyama - Bulk Up - TM08
  (297, 29700, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 22),
  -- Hariyama - Hidden Power - TM10
  (297, 29700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Hariyama - Sunny Day - TM11
  (297, 29700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Hariyama - Hyper Beam - TM15
  (297, 29700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Hariyama - Protect - TM17
  (297, 29700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Hariyama - Rain Dance - TM18
  (297, 29700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Hariyama - Frustration - TM21
  (297, 29700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Hariyama - Smack Down - TM23
  (297, 29700, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 29),
  -- Hariyama - Earthquake - TM26
  (297, 29700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 30),
  -- Hariyama - Return - TM27
  (297, 29700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Hariyama - Dig - TM28
  (297, 29700, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 32),
  -- Hariyama - Brick Break - TM31
  (297, 29700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 33),
  -- Hariyama - Double Team - TM32
  (297, 29700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Hariyama - Rock Tomb - TM39
  (297, 29700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 35),
  -- Hariyama - Facade - TM42
  (297, 29700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Hariyama - Rest - TM44
  (297, 29700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Hariyama - Attract - TM45
  (297, 29700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Hariyama - Low Sweep - TM47
  (297, 29700, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 39),
  -- Hariyama - Round - TM48
  (297, 29700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Hariyama - Focus Blast - TM52
  (297, 29700, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 41),
  -- Hariyama - Fling - TM56
  (297, 29700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 42),
  -- Hariyama - Payback - TM66
  (297, 29700, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 43),
  -- Hariyama - Retaliate - TM67
  (297, 29700, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 44),
  -- Hariyama - Giga Impact - TM68
  (297, 29700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 45),
  -- Hariyama - Stone Edge - TM71
  (297, 29700, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 46),
  -- Hariyama - Bulldoze - TM78
  (297, 29700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 47),
  -- Hariyama - Rock Slide - TM80
  (297, 29700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 48),
  -- Hariyama - Work Up - TM83
  (297, 29700, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 49),
  -- Hariyama - Poison Jab - TM84
  (297, 29700, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 50),
  -- Hariyama - Swagger - TM87
  (297, 29700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 51),
  -- Hariyama - Substitute - TM90
  (297, 29700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 52),
  -- Hariyama - Rock Smash - TM94
  (297, 29700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 53),
  -- Hariyama - Surf - HM03
  (297, 29700, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 54),
  -- Hariyama - Strength - HM04
  (297, 29700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 55),
  -- Hariyama - Fire Punch - Move Tutor
  (297, 29700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Hariyama - Helping Hand - Move Tutor
  (297, 29700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Hariyama - Ice Punch - Move Tutor
  (297, 29700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Hariyama - Iron Head - Move Tutor
  (297, 29700, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Hariyama - Knock Off - Move Tutor
  (297, 29700, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Hariyama - Low Kick - Move Tutor
  (297, 29700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Hariyama - Role Play - Move Tutor
  (297, 29700, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Hariyama - Sleep Talk - Move Tutor
  (297, 29700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Hariyama - Snore - Move Tutor
  (297, 29700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Hariyama - Superpower - Move Tutor
  (297, 29700, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Hariyama - Thunder Punch - Move Tutor
  (297, 29700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Azurill - Splash - Level 1
  (298, 29800, 150, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azurill - Bubble - Level 1
  (298, 29800, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azurill - Tail Whip - Level 2
  (298, 29800, 39, 12, NULL, 1, 2, NULL, NULL, NULL, 3),
  -- Azurill - Water Sport - Level 5
  (298, 29800, 346, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Azurill - Water Gun - Level 7
  (298, 29800, 55, 12, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Azurill - Charm - Level 10
  (298, 29800, 204, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Azurill - Bubble Beam - Level 13
  (298, 29800, 61, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Azurill - Helping Hand - Level 16
  (298, 29800, 270, 12, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Azurill - Slam - Level 20
  (298, 29800, 21, 12, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Azurill - Bounce - Level 23
  (298, 29800, 340, 12, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Azurill - Toxic - TM06
  (298, 29800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 11),
  -- Azurill - Hail - TM07
  (298, 29800, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 12),
  -- Azurill - Hidden Power - TM10
  (298, 29800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 13),
  -- Azurill - Ice Beam - TM13
  (298, 29800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 14),
  -- Azurill - Blizzard - TM14
  (298, 29800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 15),
  -- Azurill - Light Screen - TM16
  (298, 29800, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 16),
  -- Azurill - Protect - TM17
  (298, 29800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Azurill - Rain Dance - TM18
  (298, 29800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 18),
  -- Azurill - Frustration - TM21
  (298, 29800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Azurill - Return - TM27
  (298, 29800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 20),
  -- Azurill - Double Team - TM32
  (298, 29800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 21),
  -- Azurill - Facade - TM42
  (298, 29800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 22),
  -- Azurill - Rest - TM44
  (298, 29800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 23),
  -- Azurill - Attract - TM45
  (298, 29800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 24),
  -- Azurill - Round - TM48
  (298, 29800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 25),
  -- Azurill - Scald - TM55
  (298, 29800, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 26),
  -- Azurill - Work Up - TM83
  (298, 29800, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 27),
  -- Azurill - Swagger - TM87
  (298, 29800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 28),
  -- Azurill - Substitute - TM90
  (298, 29800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 29),
  -- Azurill - Surf - HM03
  (298, 29800, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 30),
  -- Azurill - Waterfall - HM05
  (298, 29800, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 31),
  -- Azurill - Body Slam - Egg Move
  (298, 29800, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Azurill - Encore - Egg Move
  (298, 29800, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Azurill - Fake Tears - Egg Move
  (298, 29800, 313, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Azurill - Muddy Water - Egg Move
  (298, 29800, 330, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Azurill - Refresh - Egg Move
  (298, 29800, 287, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Azurill - Sing - Egg Move
  (298, 29800, 47, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Azurill - Slam - Egg Move
  (298, 29800, 21, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Azurill - Soak - Egg Move
  (298, 29800, 487, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Azurill - Tickle - Egg Move
  (298, 29800, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Azurill - Water Sport - Egg Move
  (298, 29800, 346, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Azurill - Bounce - Move Tutor
  (298, 29800, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Azurill - Covet - Move Tutor
  (298, 29800, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Azurill - Helping Hand - Move Tutor
  (298, 29800, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Azurill - Hyper Voice - Move Tutor
  (298, 29800, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Azurill - Icy Wind - Move Tutor
  (298, 29800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Azurill - Iron Tail - Move Tutor
  (298, 29800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Azurill - Knock Off - Move Tutor
  (298, 29800, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Azurill - Sleep Talk - Move Tutor
  (298, 29800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Azurill - Snore - Move Tutor
  (298, 29800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Azurill - Uproar - Move Tutor
  (298, 29800, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Nosepass - Tackle - Level 1
  (299, 29900, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nosepass - Harden - Level 4
  (299, 29900, 106, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Nosepass - Block - Level 8
  (299, 29900, 335, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Nosepass - Rock Throw - Level 11
  (299, 29900, 88, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Nosepass - Thunder Wave - Level 15
  (299, 29900, 86, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nosepass - Rock Blast - Level 18
  (299, 29900, 350, 12, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Nosepass - Rest - Level 22
  (299, 29900, 156, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Nosepass - Spark - Level 25
  (299, 29900, 209, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Nosepass - Rock Slide - Level 29
  (299, 29900, 157, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Nosepass - Power Gem - Level 32
  (299, 29900, 408, 12, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Nosepass - Sandstorm - Level 36
  (299, 29900, 201, 12, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Nosepass - Discharge - Level 39
  (299, 29900, 435, 12, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Nosepass - Earth Power - Level 43
  (299, 29900, 414, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Nosepass - Stone Edge - Level 46
  (299, 29900, 444, 12, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Nosepass - Lock-On - Level 50
  (299, 29900, 199, 12, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Nosepass - Zap Cannon - Level 50
  (299, 29900, 192, 12, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Nosepass - Toxic - TM06
  (299, 29900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Nosepass - Hidden Power - TM10
  (299, 29900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Nosepass - Sunny Day - TM11
  (299, 29900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Nosepass - Taunt - TM12
  (299, 29900, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 20),
  -- Nosepass - Protect - TM17
  (299, 29900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Nosepass - Frustration - TM21
  (299, 29900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Nosepass - Smack Down - TM23
  (299, 29900, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 23),
  -- Nosepass - Thunderbolt - TM24
  (299, 29900, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 24),
  -- Nosepass - Thunder - TM25
  (299, 29900, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 25),
  -- Nosepass - Earthquake - TM26
  (299, 29900, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 26),
  -- Nosepass - Return - TM27
  (299, 29900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Nosepass - Double Team - TM32
  (299, 29900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Nosepass - Sandstorm - TM37
  (299, 29900, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Nosepass - Rock Tomb - TM39
  (299, 29900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Nosepass - Torment - TM41
  (299, 29900, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 31),
  -- Nosepass - Facade - TM42
  (299, 29900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Nosepass - Rest - TM44
  (299, 29900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Nosepass - Attract - TM45
  (299, 29900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Nosepass - Round - TM48
  (299, 29900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Nosepass - Explosion - TM64
  (299, 29900, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 36),
  -- Nosepass - Rock Polish - TM69
  (299, 29900, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 37),
  -- Nosepass - Stone Edge - TM71
  (299, 29900, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 38),
  -- Nosepass - Volt Switch - TM72
  (299, 29900, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 39),
  -- Nosepass - Thunder Wave - TM73
  (299, 29900, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 40),
  -- Nosepass - Bulldoze - TM78
  (299, 29900, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 41),
  -- Nosepass - Rock Slide - TM80
  (299, 29900, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 42),
  -- Nosepass - Swagger - TM87
  (299, 29900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Nosepass - Substitute - TM90
  (299, 29900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Nosepass - Rock Smash - TM94
  (299, 29900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Nosepass - Strength - HM04
  (299, 29900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 46),
  -- Nosepass - Block - Egg Move
  (299, 29900, 335, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nosepass - Double-Edge - Egg Move
  (299, 29900, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nosepass - Endure - Egg Move
  (299, 29900, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nosepass - Magnitude - Egg Move
  (299, 29900, 222, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nosepass - Rollout - Egg Move
  (299, 29900, 205, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nosepass - Stealth Rock - Egg Move
  (299, 29900, 446, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nosepass - Block - Move Tutor
  (299, 29900, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Nosepass - Earth Power - Move Tutor
  (299, 29900, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Nosepass - Fire Punch - Move Tutor
  (299, 29900, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Nosepass - Gravity - Move Tutor
  (299, 29900, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Nosepass - Ice Punch - Move Tutor
  (299, 29900, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Nosepass - Iron Defense - Move Tutor
  (299, 29900, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Nosepass - Magic Coat - Move Tutor
  (299, 29900, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Nosepass - Magnet Rise - Move Tutor
  (299, 29900, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Nosepass - Pain Split - Move Tutor
  (299, 29900, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Nosepass - Sleep Talk - Move Tutor
  (299, 29900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Nosepass - Snore - Move Tutor
  (299, 29900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Nosepass - Stealth Rock - Move Tutor
  (299, 29900, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Nosepass - Thunder Punch - Move Tutor
  (299, 29900, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Skitty - Fake Out - Level 1
  (300, 30000, 252, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skitty - Growl - Level 1
  (300, 30000, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skitty - Tail Whip - Level 1
  (300, 30000, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skitty - Tackle - Level 1
  (300, 30000, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skitty - Foresight - Level 4
  (300, 30000, 193, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Skitty - Attract - Level 8
  (300, 30000, 213, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Skitty - Sing - Level 11
  (300, 30000, 47, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Skitty - Double Slap - Level 15
  (300, 30000, 3, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Skitty - Copycat - Level 18
  (300, 30000, 383, 12, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Skitty - Assist - Level 22
  (300, 30000, 274, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Skitty - Charm - Level 25
  (300, 30000, 204, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Skitty - Feint Attack - Level 29
  (300, 30000, 185, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Skitty - Wake-Up Slap - Level 32
  (300, 30000, 358, 12, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Skitty - Covet - Level 36
  (300, 30000, 343, 12, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Skitty - Heal Bell - Level 39
  (300, 30000, 215, 12, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Skitty - Double-Edge - Level 42
  (300, 30000, 38, 12, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Skitty - Captivate - Level 46
  (300, 30000, 445, 12, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Skitty - Calm Mind - TM04
  (300, 30000, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 18),
  -- Skitty - Toxic - TM06
  (300, 30000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Skitty - Hidden Power - TM10
  (300, 30000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Skitty - Sunny Day - TM11
  (300, 30000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Skitty - Ice Beam - TM13
  (300, 30000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 22),
  -- Skitty - Blizzard - TM14
  (300, 30000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 23),
  -- Skitty - Protect - TM17
  (300, 30000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Skitty - Rain Dance - TM18
  (300, 30000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Skitty - Safeguard - TM20
  (300, 30000, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 26),
  -- Skitty - Frustration - TM21
  (300, 30000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Skitty - Solar Beam - TM22
  (300, 30000, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 28),
  -- Skitty - Thunderbolt - TM24
  (300, 30000, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 29),
  -- Skitty - Thunder - TM25
  (300, 30000, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 30),
  -- Skitty - Return - TM27
  (300, 30000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Skitty - Dig - TM28
  (300, 30000, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 32),
  -- Skitty - Shadow Ball - TM30
  (300, 30000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 33),
  -- Skitty - Double Team - TM32
  (300, 30000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Skitty - Facade - TM42
  (300, 30000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Skitty - Rest - TM44
  (300, 30000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Skitty - Attract - TM45
  (300, 30000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Skitty - Round - TM48
  (300, 30000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Skitty - Echoed Voice - TM49
  (300, 30000, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 39),
  -- Skitty - Charge Beam - TM57
  (300, 30000, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 40),
  -- Skitty - Payback - TM66
  (300, 30000, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 41),
  -- Skitty - Retaliate - TM67
  (300, 30000, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 42),
  -- Skitty - Flash - TM70
  (300, 30000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 43),
  -- Skitty - Thunder Wave - TM73
  (300, 30000, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 44),
  -- Skitty - Psych Up - TM77
  (300, 30000, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 45),
  -- Skitty - Work Up - TM83
  (300, 30000, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 46),
  -- Skitty - Dream Eater - TM85
  (300, 30000, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 47),
  -- Skitty - Grass Knot - TM86
  (300, 30000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 48),
  -- Skitty - Swagger - TM87
  (300, 30000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Skitty - Substitute - TM90
  (300, 30000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 50),
  -- Skitty - Wild Charge - TM93
  (300, 30000, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 51),
  -- Skitty - Baton Pass - Egg Move
  (300, 30000, 226, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Skitty - Captivate - Egg Move
  (300, 30000, 445, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skitty - Fake Out - Egg Move
  (300, 30000, 252, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skitty - Fake Tears - Egg Move
  (300, 30000, 313, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skitty - Helping Hand - Egg Move
  (300, 30000, 270, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skitty - Last Resort - Egg Move
  (300, 30000, 387, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skitty - Mud Bomb - Egg Move
  (300, 30000, 426, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skitty - Simple Beam - Egg Move
  (300, 30000, 493, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skitty - Sucker Punch - Egg Move
  (300, 30000, 389, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skitty - Tickle - Egg Move
  (300, 30000, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Skitty - Uproar - Egg Move
  (300, 30000, 253, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Skitty - Wish - Egg Move
  (300, 30000, 273, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Skitty - Zen Headbutt - Egg Move
  (300, 30000, 428, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Skitty - Covet - Move Tutor
  (300, 30000, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Skitty - Heal Bell - Move Tutor
  (300, 30000, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Skitty - Helping Hand - Move Tutor
  (300, 30000, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Skitty - Hyper Voice - Move Tutor
  (300, 30000, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Skitty - Icy Wind - Move Tutor
  (300, 30000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Skitty - Iron Tail - Move Tutor
  (300, 30000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Skitty - Last Resort - Move Tutor
  (300, 30000, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Skitty - Sleep Talk - Move Tutor
  (300, 30000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Skitty - Snore - Move Tutor
  (300, 30000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Skitty - Uproar - Move Tutor
  (300, 30000, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Skitty - Zen Headbutt - Move Tutor
  (300, 30000, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75);
