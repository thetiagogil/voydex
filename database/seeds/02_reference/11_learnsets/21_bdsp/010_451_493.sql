-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII raw Pokémon learnset pages for Brilliant Diamond / Shining Pearl.
-- Cross-check: Serebii BDSP game learnset pages and PokemonDB generation learnset pages where useful.
-- Machine normalization: Bulbapedia BDSP TM catalog data.
-- Product scope: default-form BDSP direct acquisition rows only; alternate/regional form sections are excluded until separately seeded.
-- Correction: legendary and mythical rows are checked against each game's own
-- data (PKHeX learnset and personal tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Brilliant Diamond / Shining Pearl learnsets for default forms, species 451-493.
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
  -- Skorupi - Poison Sting - Starting Move
  (451, 45100, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Skorupi - Leer - Starting Move
  (451, 45100, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Skorupi - Hone Claws - Level 3
  (451, 45100, 468, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Skorupi - Fell Stinger - Level 6
  (451, 45100, 565, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Skorupi - Poison Fang - Level 9
  (451, 45100, 305, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Skorupi - Bite - Level 12
  (451, 45100, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Skorupi - Toxic Spikes - Level 15
  (451, 45100, 390, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Skorupi - Bug Bite - Level 18
  (451, 45100, 450, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Skorupi - Venoshock - Level 21
  (451, 45100, 474, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Skorupi - Knock Off - Level 24
  (451, 45100, 282, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Skorupi - Scary Face - Level 27
  (451, 45100, 184, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Skorupi - Pin Missile - Level 30
  (451, 45100, 42, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Skorupi - Toxic - Level 33
  (451, 45100, 92, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Skorupi - Night Slash - Level 36
  (451, 45100, 400, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Skorupi - Cross Poison - Level 39
  (451, 45100, 440, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Skorupi - X-Scissor - Level 42
  (451, 45100, 404, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Skorupi - Acupressure - Level 45
  (451, 45100, 367, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Skorupi - Crunch - Level 48
  (451, 45100, 242, 21, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Skorupi - Toxic - TM06
  (451, 45100, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 19),
  -- Skorupi - Sunny Day - TM11
  (451, 45100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Skorupi - Taunt - TM12
  (451, 45100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 21),
  -- Skorupi - Protect - TM17
  (451, 45100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Skorupi - Rain Dance - TM18
  (451, 45100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Skorupi - Iron Tail - TM23
  (451, 45100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Skorupi - Dig - TM28
  (451, 45100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Skorupi - Shadow Ball - TM30
  (451, 45100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Skorupi - Brick Break - TM31
  (451, 45100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Skorupi - Double Team - TM32
  (451, 45100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Skorupi - Sludge Bomb - TM36
  (451, 45100, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 29),
  -- Skorupi - Rock Tomb - TM39
  (451, 45100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Skorupi - Aerial Ace - TM40
  (451, 45100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Skorupi - Torment - TM41
  (451, 45100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 32),
  -- Skorupi - Facade - TM42
  (451, 45100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Skorupi - Rest - TM44
  (451, 45100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Skorupi - Attract - TM45
  (451, 45100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Skorupi - Thief - TM46
  (451, 45100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Skorupi - False Swipe - TM54
  (451, 45100, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 37),
  -- Skorupi - Fling - TM56
  (451, 45100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Skorupi - Endure - TM58
  (451, 45100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Skorupi - Bug Buzz - TM62
  (451, 45100, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 40),
  -- Skorupi - Payback - TM66
  (451, 45100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 41),
  -- Skorupi - Flash - TM70
  (451, 45100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Skorupi - Swords Dance - TM75
  (451, 45100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 43),
  -- Skorupi - Dark Pulse - TM79
  (451, 45100, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 44),
  -- Skorupi - X-Scissor - TM81
  (451, 45100, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 45),
  -- Skorupi - Sleep Talk - TM82
  (451, 45100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Skorupi - Poison Jab - TM84
  (451, 45100, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 47),
  -- Skorupi - Swagger - TM87
  (451, 45100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Skorupi - Substitute - TM90
  (451, 45100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Skorupi - Cut - TM93
  (451, 45100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 50),
  -- Skorupi - Strength - TM96
  (451, 45100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 51),
  -- Skorupi - Rock Smash - TM98
  (451, 45100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 52),
  -- Skorupi - Agility - Egg
  (451, 45100, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skorupi - Confuse Ray - Egg
  (451, 45100, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skorupi - Night Slash - Egg
  (451, 45100, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skorupi - Poison Tail - Egg
  (451, 45100, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skorupi - Sand Attack - Egg
  (451, 45100, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skorupi - Screech - Egg
  (451, 45100, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skorupi - Slash - Egg
  (451, 45100, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skorupi - Whirlwind - Egg
  (451, 45100, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Drapion - Thunder Fang - Starting Move
  (452, 45200, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Drapion - Ice Fang - Starting Move
  (452, 45200, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Drapion - Fire Fang - Starting Move
  (452, 45200, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Drapion - Poison Sting - Starting Move
  (452, 45200, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Drapion - Leer - Starting Move
  (452, 45200, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Drapion - Hone Claws - Starting Move
  (452, 45200, 468, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Drapion - Fell Stinger - Starting Move
  (452, 45200, 565, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Drapion - Poison Fang - Level 9
  (452, 45200, 305, 21, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Drapion - Bite - Level 12
  (452, 45200, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Drapion - Toxic Spikes - Level 15
  (452, 45200, 390, 21, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Drapion - Bug Bite - Level 18
  (452, 45200, 450, 21, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Drapion - Venoshock - Level 21
  (452, 45200, 474, 21, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Drapion - Knock Off - Level 24
  (452, 45200, 282, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Drapion - Scary Face - Level 27
  (452, 45200, 184, 21, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Drapion - Pin Missile - Level 30
  (452, 45200, 42, 21, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Drapion - Toxic - Level 33
  (452, 45200, 92, 21, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Drapion - Night Slash - Level 36
  (452, 45200, 400, 21, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Drapion - Cross Poison - Level 39
  (452, 45200, 440, 21, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Drapion - X-Scissor - Level 44
  (452, 45200, 404, 21, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Drapion - Acupressure - Level 49
  (452, 45200, 367, 21, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Drapion - Crunch - Level 54
  (452, 45200, 242, 21, NULL, 1, 54, NULL, NULL, NULL, 21),
  -- Drapion - Roar - TM05
  (452, 45200, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 22),
  -- Drapion - Toxic - TM06
  (452, 45200, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 23),
  -- Drapion - Sunny Day - TM11
  (452, 45200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 24),
  -- Drapion - Taunt - TM12
  (452, 45200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 25),
  -- Drapion - Hyper Beam - TM15
  (452, 45200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Drapion - Protect - TM17
  (452, 45200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Drapion - Rain Dance - TM18
  (452, 45200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Drapion - Iron Tail - TM23
  (452, 45200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Drapion - Earthquake - TM26
  (452, 45200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 30),
  -- Drapion - Dig - TM28
  (452, 45200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 31),
  -- Drapion - Shadow Ball - TM30
  (452, 45200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 32),
  -- Drapion - Brick Break - TM31
  (452, 45200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 33),
  -- Drapion - Double Team - TM32
  (452, 45200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Drapion - Sludge Bomb - TM36
  (452, 45200, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 35),
  -- Drapion - Rock Tomb - TM39
  (452, 45200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 36),
  -- Drapion - Aerial Ace - TM40
  (452, 45200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 37),
  -- Drapion - Torment - TM41
  (452, 45200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 38),
  -- Drapion - Facade - TM42
  (452, 45200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Drapion - Rest - TM44
  (452, 45200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Drapion - Attract - TM45
  (452, 45200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 41),
  -- Drapion - Thief - TM46
  (452, 45200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 42),
  -- Drapion - False Swipe - TM54
  (452, 45200, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 43),
  -- Drapion - Fling - TM56
  (452, 45200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 44),
  -- Drapion - Endure - TM58
  (452, 45200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 45),
  -- Drapion - Bug Buzz - TM62
  (452, 45200, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 46),
  -- Drapion - Payback - TM66
  (452, 45200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 47),
  -- Drapion - Giga Impact - TM68
  (452, 45200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 48),
  -- Drapion - Flash - TM70
  (452, 45200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 49),
  -- Drapion - Swords Dance - TM75
  (452, 45200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 50),
  -- Drapion - Snarl - TM78
  (452, 45200, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 51),
  -- Drapion - Dark Pulse - TM79
  (452, 45200, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 52),
  -- Drapion - Rock Slide - TM80
  (452, 45200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 53),
  -- Drapion - X-Scissor - TM81
  (452, 45200, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 54),
  -- Drapion - Sleep Talk - TM82
  (452, 45200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 55),
  -- Drapion - Bulldoze - TM83
  (452, 45200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 56),
  -- Drapion - Poison Jab - TM84
  (452, 45200, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 57),
  -- Drapion - Swagger - TM87
  (452, 45200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 58),
  -- Drapion - Substitute - TM90
  (452, 45200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 59),
  -- Drapion - Cut - TM93
  (452, 45200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 60),
  -- Drapion - Strength - TM96
  (452, 45200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 61),
  -- Drapion - Rock Smash - TM98
  (452, 45200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 62),
  -- Drapion - Rock Climb - TM100
  (452, 45200, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 63),
  -- Drapion - Agility - Egg
  (452, 45200, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Drapion - Confuse Ray - Egg
  (452, 45200, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Drapion - Night Slash - Egg
  (452, 45200, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Drapion - Poison Tail - Egg
  (452, 45200, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Drapion - Sand Attack - Egg
  (452, 45200, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Drapion - Screech - Egg
  (452, 45200, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Drapion - Slash - Egg
  (452, 45200, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Drapion - Whirlwind - Egg
  (452, 45200, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Croagunk - Poison Sting - Starting Move
  (453, 45300, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Croagunk - Mud-Slap - Starting Move
  (453, 45300, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Croagunk - Astonish - Level 4
  (453, 45300, 310, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Croagunk - Taunt - Level 8
  (453, 45300, 269, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Croagunk - Flatter - Level 12
  (453, 45300, 260, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Croagunk - Revenge - Level 16
  (453, 45300, 279, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Croagunk - Venoshock - Level 20
  (453, 45300, 474, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Croagunk - Sucker Punch - Level 24
  (453, 45300, 389, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Croagunk - Swagger - Level 28
  (453, 45300, 207, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Croagunk - Poison Jab - Level 32
  (453, 45300, 398, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Croagunk - Toxic - Level 36
  (453, 45300, 92, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Croagunk - Nasty Plot - Level 40
  (453, 45300, 417, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Croagunk - Sludge Bomb - Level 44
  (453, 45300, 188, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Croagunk - Belch - Level 48
  (453, 45300, 562, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Croagunk - Focus Punch - TM01
  (453, 45300, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Croagunk - Toxic - TM06
  (453, 45300, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 16),
  -- Croagunk - Bulk Up - TM08
  (453, 45300, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 17),
  -- Croagunk - Work Up - TM10
  (453, 45300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Croagunk - Sunny Day - TM11
  (453, 45300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Croagunk - Taunt - TM12
  (453, 45300, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 20),
  -- Croagunk - Protect - TM17
  (453, 45300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Croagunk - Rain Dance - TM18
  (453, 45300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Croagunk - Earthquake - TM26
  (453, 45300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Croagunk - Low Sweep - TM27
  (453, 45300, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 24),
  -- Croagunk - Dig - TM28
  (453, 45300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Croagunk - Shadow Ball - TM30
  (453, 45300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Croagunk - Brick Break - TM31
  (453, 45300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Croagunk - Double Team - TM32
  (453, 45300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Croagunk - Sludge Bomb - TM36
  (453, 45300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 29),
  -- Croagunk - Rock Tomb - TM39
  (453, 45300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Croagunk - Torment - TM41
  (453, 45300, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 31),
  -- Croagunk - Facade - TM42
  (453, 45300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Croagunk - Rest - TM44
  (453, 45300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Croagunk - Attract - TM45
  (453, 45300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Croagunk - Thief - TM46
  (453, 45300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Croagunk - Focus Blast - TM52
  (453, 45300, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 36),
  -- Croagunk - Fling - TM56
  (453, 45300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Croagunk - Endure - TM58
  (453, 45300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Croagunk - Drain Punch - TM60
  (453, 45300, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 39),
  -- Croagunk - Nasty Plot - TM63
  (453, 45300, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 40),
  -- Croagunk - Payback - TM66
  (453, 45300, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 41),
  -- Croagunk - Dark Pulse - TM79
  (453, 45300, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 42),
  -- Croagunk - Rock Slide - TM80
  (453, 45300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Croagunk - X-Scissor - TM81
  (453, 45300, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 44),
  -- Croagunk - Sleep Talk - TM82
  (453, 45300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Croagunk - Bulldoze - TM83
  (453, 45300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 46),
  -- Croagunk - Poison Jab - TM84
  (453, 45300, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 47),
  -- Croagunk - Swagger - TM87
  (453, 45300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Croagunk - Substitute - TM90
  (453, 45300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Croagunk - Strength - TM96
  (453, 45300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 50),
  -- Croagunk - Rock Smash - TM98
  (453, 45300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Croagunk - Rock Climb - TM100
  (453, 45300, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 52),
  -- Croagunk - Acupressure - Egg
  (453, 45300, 367, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Croagunk - Bullet Punch - Egg
  (453, 45300, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Croagunk - Counter - Egg
  (453, 45300, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Croagunk - Cross Chop - Egg
  (453, 45300, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Croagunk - Dynamic Punch - Egg
  (453, 45300, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Croagunk - Fake Out - Egg
  (453, 45300, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Croagunk - Feint - Egg
  (453, 45300, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Croagunk - Headbutt - Egg
  (453, 45300, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Croagunk - Quick Guard - Egg
  (453, 45300, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Croagunk - Vacuum Wave - Egg
  (453, 45300, 410, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Toxicroak - Poison Sting - Starting Move
  (454, 45400, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Toxicroak - Mud-Slap - Starting Move
  (454, 45400, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Toxicroak - Astonish - Starting Move
  (454, 45400, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Toxicroak - Taunt - Starting Move
  (454, 45400, 269, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Toxicroak - Flatter - Level 12
  (454, 45400, 260, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Toxicroak - Revenge - Level 16
  (454, 45400, 279, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Toxicroak - Venoshock - Level 20
  (454, 45400, 474, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Toxicroak - Sucker Punch - Level 24
  (454, 45400, 389, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Toxicroak - Swagger - Level 28
  (454, 45400, 207, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Toxicroak - Poison Jab - Level 32
  (454, 45400, 398, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Toxicroak - Toxic - Level 36
  (454, 45400, 92, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Toxicroak - Nasty Plot - Level 42
  (454, 45400, 417, 21, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Toxicroak - Sludge Bomb - Level 48
  (454, 45400, 188, 21, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Toxicroak - Belch - Level 54
  (454, 45400, 562, 21, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Toxicroak - Focus Punch - TM01
  (454, 45400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Toxicroak - Toxic - TM06
  (454, 45400, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 16),
  -- Toxicroak - Bulk Up - TM08
  (454, 45400, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 17),
  -- Toxicroak - Work Up - TM10
  (454, 45400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Toxicroak - Sunny Day - TM11
  (454, 45400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Toxicroak - Taunt - TM12
  (454, 45400, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 20),
  -- Toxicroak - Hyper Beam - TM15
  (454, 45400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Toxicroak - Protect - TM17
  (454, 45400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Toxicroak - Rain Dance - TM18
  (454, 45400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Toxicroak - Earthquake - TM26
  (454, 45400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Toxicroak - Low Sweep - TM27
  (454, 45400, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 25),
  -- Toxicroak - Dig - TM28
  (454, 45400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Toxicroak - Shadow Ball - TM30
  (454, 45400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Toxicroak - Brick Break - TM31
  (454, 45400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Toxicroak - Double Team - TM32
  (454, 45400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Toxicroak - Sludge Bomb - TM36
  (454, 45400, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 30),
  -- Toxicroak - Rock Tomb - TM39
  (454, 45400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 31),
  -- Toxicroak - Torment - TM41
  (454, 45400, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 32),
  -- Toxicroak - Facade - TM42
  (454, 45400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Toxicroak - Rest - TM44
  (454, 45400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Toxicroak - Attract - TM45
  (454, 45400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Toxicroak - Thief - TM46
  (454, 45400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Toxicroak - Focus Blast - TM52
  (454, 45400, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Toxicroak - Fling - TM56
  (454, 45400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Toxicroak - Endure - TM58
  (454, 45400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Toxicroak - Drain Punch - TM60
  (454, 45400, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 40),
  -- Toxicroak - Nasty Plot - TM63
  (454, 45400, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 41),
  -- Toxicroak - Payback - TM66
  (454, 45400, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 42),
  -- Toxicroak - Giga Impact - TM68
  (454, 45400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Toxicroak - Stone Edge - TM71
  (454, 45400, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 44),
  -- Toxicroak - Swords Dance - TM75
  (454, 45400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 45),
  -- Toxicroak - Dark Pulse - TM79
  (454, 45400, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 46),
  -- Toxicroak - Rock Slide - TM80
  (454, 45400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 47),
  -- Toxicroak - X-Scissor - TM81
  (454, 45400, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 48),
  -- Toxicroak - Sleep Talk - TM82
  (454, 45400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Toxicroak - Bulldoze - TM83
  (454, 45400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 50),
  -- Toxicroak - Poison Jab - TM84
  (454, 45400, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 51),
  -- Toxicroak - Swagger - TM87
  (454, 45400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Toxicroak - Substitute - TM90
  (454, 45400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Toxicroak - Cut - TM93
  (454, 45400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 54),
  -- Toxicroak - Strength - TM96
  (454, 45400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 55),
  -- Toxicroak - Rock Smash - TM98
  (454, 45400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 56),
  -- Toxicroak - Rock Climb - TM100
  (454, 45400, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 57),
  -- Toxicroak - Acupressure - Egg
  (454, 45400, 367, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Toxicroak - Bullet Punch - Egg
  (454, 45400, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Toxicroak - Counter - Egg
  (454, 45400, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Toxicroak - Cross Chop - Egg
  (454, 45400, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Toxicroak - Dynamic Punch - Egg
  (454, 45400, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Toxicroak - Fake Out - Egg
  (454, 45400, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Toxicroak - Feint - Egg
  (454, 45400, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Toxicroak - Headbutt - Egg
  (454, 45400, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Toxicroak - Quick Guard - Egg
  (454, 45400, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Toxicroak - Vacuum Wave - Egg
  (454, 45400, 410, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Carnivine - Bind - Starting Move
  (455, 45500, 20, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Carnivine - Growth - Starting Move
  (455, 45500, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Carnivine - Bite - Level 7
  (455, 45500, 44, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Carnivine - Vine Whip - Level 11
  (455, 45500, 22, 21, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Carnivine - Sweet Scent - Level 17
  (455, 45500, 230, 21, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Carnivine - Ingrain - Level 21
  (455, 45500, 275, 21, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Carnivine - Grass Knot - Level 27
  (455, 45500, 447, 21, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Carnivine - Leaf Tornado - Level 31
  (455, 45500, 536, 21, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Carnivine - Stockpile - Level 37
  (455, 45500, 254, 21, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Carnivine - Spit Up - Level 37
  (455, 45500, 255, 21, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Carnivine - Swallow - Level 37
  (455, 45500, 256, 21, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Carnivine - Crunch - Level 41
  (455, 45500, 242, 21, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Carnivine - Seed Bomb - Level 47
  (455, 45500, 402, 21, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Carnivine - Power Whip - Level 50
  (455, 45500, 438, 21, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Carnivine - Bullet Seed - TM09
  (455, 45500, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 15),
  -- Carnivine - Sunny Day - TM11
  (455, 45500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Carnivine - Hyper Beam - TM15
  (455, 45500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 17),
  -- Carnivine - Protect - TM17
  (455, 45500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Carnivine - Giga Drain - TM19
  (455, 45500, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 19),
  -- Carnivine - Solar Beam - TM22
  (455, 45500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 20),
  -- Carnivine - Double Team - TM32
  (455, 45500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Carnivine - Sludge Bomb - TM36
  (455, 45500, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 22),
  -- Carnivine - Facade - TM42
  (455, 45500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 23),
  -- Carnivine - Rest - TM44
  (455, 45500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 24),
  -- Carnivine - Attract - TM45
  (455, 45500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 25),
  -- Carnivine - Thief - TM46
  (455, 45500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 26),
  -- Carnivine - Energy Ball - TM53
  (455, 45500, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 27),
  -- Carnivine - Fling - TM56
  (455, 45500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 28),
  -- Carnivine - Endure - TM58
  (455, 45500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Carnivine - Payback - TM66
  (455, 45500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 30),
  -- Carnivine - Giga Impact - TM68
  (455, 45500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 31),
  -- Carnivine - Flash - TM70
  (455, 45500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Carnivine - Swords Dance - TM75
  (455, 45500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 33),
  -- Carnivine - Sleep Talk - TM82
  (455, 45500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Carnivine - Grass Knot - TM86
  (455, 45500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 35),
  -- Carnivine - Swagger - TM87
  (455, 45500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Carnivine - Substitute - TM90
  (455, 45500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Carnivine - Cut - TM93
  (455, 45500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 38),
  -- Carnivine - Acid Spray - Egg
  (455, 45500, 491, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Carnivine - Leech Seed - Egg
  (455, 45500, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Carnivine - Magical Leaf - Egg
  (455, 45500, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Carnivine - Rage Powder - Egg
  (455, 45500, 476, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Carnivine - Razor Leaf - Egg
  (455, 45500, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Carnivine - Slam - Egg
  (455, 45500, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Carnivine - Sleep Powder - Egg
  (455, 45500, 79, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Carnivine - Stun Spore - Egg
  (455, 45500, 78, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Carnivine - Synthesis - Egg
  (455, 45500, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Carnivine - Worry Seed - Egg
  (455, 45500, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Finneon - Pound - Starting Move
  (456, 45600, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Finneon - Water Gun - Level 6
  (456, 45600, 55, 21, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Finneon - Attract - Level 10
  (456, 45600, 213, 21, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Finneon - Rain Dance - Level 13
  (456, 45600, 240, 21, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Finneon - Gust - Level 17
  (456, 45600, 16, 21, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Finneon - Water Pulse - Level 22
  (456, 45600, 352, 21, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Finneon - Flail - Level 26
  (456, 45600, 175, 21, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Finneon - Safeguard - Level 29
  (456, 45600, 219, 21, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Finneon - Aqua Ring - Level 33
  (456, 45600, 392, 21, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Finneon - Whirlpool - Level 38
  (456, 45600, 250, 21, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Finneon - U-turn - Level 42
  (456, 45600, 369, 21, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Finneon - Bounce - Level 45
  (456, 45600, 340, 21, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Finneon - Tailwind - Level 49
  (456, 45600, 366, 21, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Finneon - Soak - Level 54
  (456, 45600, 487, 21, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Finneon - Water Pulse - TM03
  (456, 45600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Finneon - Hail - TM07
  (456, 45600, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Finneon - Ice Beam - TM13
  (456, 45600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Finneon - Blizzard - TM14
  (456, 45600, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Finneon - Protect - TM17
  (456, 45600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Finneon - Rain Dance - TM18
  (456, 45600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Finneon - Safeguard - TM20
  (456, 45600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 21),
  -- Finneon - Double Team - TM32
  (456, 45600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Finneon - Facade - TM42
  (456, 45600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 23),
  -- Finneon - Rest - TM44
  (456, 45600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 24),
  -- Finneon - Attract - TM45
  (456, 45600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 25),
  -- Finneon - Scald - TM49
  (456, 45600, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 26),
  -- Finneon - Brine - TM55
  (456, 45600, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 27),
  -- Finneon - Endure - TM58
  (456, 45600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Finneon - Payback - TM66
  (456, 45600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 29),
  -- Finneon - Flash - TM70
  (456, 45600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 30),
  -- Finneon - Psych Up - TM77
  (456, 45600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 31),
  -- Finneon - Sleep Talk - TM82
  (456, 45600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Finneon - Swagger - TM87
  (456, 45600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Finneon - U-turn - TM89
  (456, 45600, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 34),
  -- Finneon - Substitute - TM90
  (456, 45600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 35),
  -- Finneon - Surf - TM95
  (456, 45600, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 36),
  -- Finneon - Defog - TM97
  (456, 45600, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 37),
  -- Finneon - Waterfall - TM99
  (456, 45600, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 38),
  -- Finneon - Agility - Egg
  (456, 45600, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Finneon - Aqua Tail - Egg
  (456, 45600, 401, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Finneon - Aurora Beam - Egg
  (456, 45600, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Finneon - Charm - Egg
  (456, 45600, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Finneon - Confuse Ray - Egg
  (456, 45600, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Finneon - Flail - Egg
  (456, 45600, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Finneon - Psybeam - Egg
  (456, 45600, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Finneon - Splash - Egg
  (456, 45600, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Finneon - Sweet Kiss - Egg
  (456, 45600, 186, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Finneon - Tickle - Egg
  (456, 45600, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lumineon - Soak - Starting Move
  (457, 45700, 487, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lumineon - Gust - Starting Move
  (457, 45700, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lumineon - Pound - Starting Move
  (457, 45700, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Lumineon - Water Gun - Starting Move
  (457, 45700, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Lumineon - Attract - Starting Move
  (457, 45700, 213, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Lumineon - Water Gun - Level 6
  (457, 45700, 55, 21, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Lumineon - Attract - Level 10
  (457, 45700, 213, 21, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Lumineon - Rain Dance - Level 13
  (457, 45700, 240, 21, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Lumineon - Gust - Level 17
  (457, 45700, 16, 21, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Lumineon - Water Pulse - Level 22
  (457, 45700, 352, 21, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Lumineon - Flail - Level 26
  (457, 45700, 175, 21, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Lumineon - Safeguard - Level 29
  (457, 45700, 219, 21, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Lumineon - Aqua Ring - Level 35
  (457, 45700, 392, 21, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Lumineon - Whirlpool - Level 42
  (457, 45700, 250, 21, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Lumineon - U-turn - Level 48
  (457, 45700, 369, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Lumineon - Bounce - Level 53
  (457, 45700, 340, 21, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Lumineon - Tailwind - Level 59
  (457, 45700, 366, 21, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Lumineon - Soak - Level 66
  (457, 45700, 487, 21, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Lumineon - Water Pulse - TM03
  (457, 45700, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Lumineon - Hail - TM07
  (457, 45700, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 20),
  -- Lumineon - Ice Beam - TM13
  (457, 45700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Lumineon - Blizzard - TM14
  (457, 45700, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Lumineon - Hyper Beam - TM15
  (457, 45700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Lumineon - Protect - TM17
  (457, 45700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Lumineon - Rain Dance - TM18
  (457, 45700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Lumineon - Safeguard - TM20
  (457, 45700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 26),
  -- Lumineon - Double Team - TM32
  (457, 45700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Lumineon - Facade - TM42
  (457, 45700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Lumineon - Rest - TM44
  (457, 45700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Lumineon - Attract - TM45
  (457, 45700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Lumineon - Scald - TM49
  (457, 45700, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 31),
  -- Lumineon - Brine - TM55
  (457, 45700, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 32),
  -- Lumineon - Endure - TM58
  (457, 45700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Lumineon - Payback - TM66
  (457, 45700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 34),
  -- Lumineon - Giga Impact - TM68
  (457, 45700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 35),
  -- Lumineon - Flash - TM70
  (457, 45700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 36),
  -- Lumineon - Psych Up - TM77
  (457, 45700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 37),
  -- Lumineon - Sleep Talk - TM82
  (457, 45700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Lumineon - Swagger - TM87
  (457, 45700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Lumineon - U-turn - TM89
  (457, 45700, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 40),
  -- Lumineon - Substitute - TM90
  (457, 45700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Lumineon - Surf - TM95
  (457, 45700, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 42),
  -- Lumineon - Defog - TM97
  (457, 45700, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 43),
  -- Lumineon - Waterfall - TM99
  (457, 45700, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 44),
  -- Lumineon - Agility - Egg
  (457, 45700, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lumineon - Aqua Tail - Egg
  (457, 45700, 401, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lumineon - Aurora Beam - Egg
  (457, 45700, 62, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lumineon - Charm - Egg
  (457, 45700, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lumineon - Confuse Ray - Egg
  (457, 45700, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lumineon - Flail - Egg
  (457, 45700, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lumineon - Psybeam - Egg
  (457, 45700, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lumineon - Splash - Egg
  (457, 45700, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lumineon - Sweet Kiss - Egg
  (457, 45700, 186, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lumineon - Tickle - Egg
  (457, 45700, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mantyke - Tackle - Starting Move
  (458, 45800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mantyke - Water Gun - Starting Move
  (458, 45800, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mantyke - Supersonic - Level 4
  (458, 45800, 48, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mantyke - Wing Attack - Level 8
  (458, 45800, 17, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mantyke - Water Pulse - Level 12
  (458, 45800, 352, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mantyke - Wide Guard - Level 16
  (458, 45800, 469, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mantyke - Agility - Level 20
  (458, 45800, 97, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mantyke - Bubble Beam - Level 24
  (458, 45800, 61, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mantyke - Headbutt - Level 28
  (458, 45800, 29, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Mantyke - Air Slash - Level 32
  (458, 45800, 403, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Mantyke - Aqua Ring - Level 36
  (458, 45800, 392, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mantyke - Bounce - Level 40
  (458, 45800, 340, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Mantyke - Take Down - Level 44
  (458, 45800, 36, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Mantyke - Hydro Pump - Level 48
  (458, 45800, 56, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Mantyke - Water Pulse - TM03
  (458, 45800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Mantyke - Hail - TM07
  (458, 45800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Mantyke - Ice Beam - TM13
  (458, 45800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Mantyke - Blizzard - TM14
  (458, 45800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Mantyke - Protect - TM17
  (458, 45800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Mantyke - Rain Dance - TM18
  (458, 45800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Mantyke - Earthquake - TM26
  (458, 45800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 21),
  -- Mantyke - Double Team - TM32
  (458, 45800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Mantyke - Aerial Ace - TM40
  (458, 45800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 23),
  -- Mantyke - Facade - TM42
  (458, 45800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Mantyke - Rest - TM44
  (458, 45800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Mantyke - Attract - TM45
  (458, 45800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Mantyke - Scald - TM49
  (458, 45800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 27),
  -- Mantyke - Endure - TM58
  (458, 45800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Mantyke - Rock Slide - TM80
  (458, 45800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 29),
  -- Mantyke - Sleep Talk - TM82
  (458, 45800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 30),
  -- Mantyke - Bulldoze - TM83
  (458, 45800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 31),
  -- Mantyke - Swagger - TM87
  (458, 45800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 32),
  -- Mantyke - Substitute - TM90
  (458, 45800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 33),
  -- Mantyke - Surf - TM95
  (458, 45800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 34),
  -- Mantyke - Waterfall - TM99
  (458, 45800, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 35),
  -- Mantyke - Amnesia - Egg
  (458, 45800, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Mantyke - Confuse Ray - Egg
  (458, 45800, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Mantyke - Haze - Egg
  (458, 45800, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Mantyke - Hydro Pump - Egg
  (458, 45800, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mantyke - Mirror Coat - Egg
  (458, 45800, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mantyke - Slam - Egg
  (458, 45800, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mantyke - Splash - Egg
  (458, 45800, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mantyke - Tailwind - Egg
  (458, 45800, 366, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mantyke - Twister - Egg
  (458, 45800, 239, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mantyke - Wide Guard - Egg
  (458, 45800, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snover - Powder Snow - Starting Move
  (459, 45900, 181, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Snover - Leer - Starting Move
  (459, 45900, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Snover - Leafage - Level 5
  (459, 45900, 670, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Snover - Mist - Level 10
  (459, 45900, 54, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snover - Ice Shard - Level 15
  (459, 45900, 420, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Snover - Razor Leaf - Level 20
  (459, 45900, 75, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Snover - Icy Wind - Level 25
  (459, 45900, 196, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Snover - Swagger - Level 30
  (459, 45900, 207, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Snover - Ingrain - Level 35
  (459, 45900, 275, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Snover - Wood Hammer - Level 41
  (459, 45900, 452, 21, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Snover - Blizzard - Level 45
  (459, 45900, 59, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Snover - Sheer Cold - Level 50
  (459, 45900, 329, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Snover - Water Pulse - TM03
  (459, 45900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 13),
  -- Snover - Hail - TM07
  (459, 45900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 14),
  -- Snover - Bullet Seed - TM09
  (459, 45900, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 15),
  -- Snover - Ice Beam - TM13
  (459, 45900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 16),
  -- Snover - Blizzard - TM14
  (459, 45900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 17),
  -- Snover - Light Screen - TM16
  (459, 45900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 18),
  -- Snover - Protect - TM17
  (459, 45900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Snover - Rain Dance - TM18
  (459, 45900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Snover - Giga Drain - TM19
  (459, 45900, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 21),
  -- Snover - Safeguard - TM20
  (459, 45900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Snover - Solar Beam - TM22
  (459, 45900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Snover - Iron Tail - TM23
  (459, 45900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Snover - Shadow Ball - TM30
  (459, 45900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Snover - Double Team - TM32
  (459, 45900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Snover - Facade - TM42
  (459, 45900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Snover - Rest - TM44
  (459, 45900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Snover - Attract - TM45
  (459, 45900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Snover - Energy Ball - TM53
  (459, 45900, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 30),
  -- Snover - Endure - TM58
  (459, 45900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Snover - Flash - TM70
  (459, 45900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Snover - Avalanche - TM72
  (459, 45900, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 33),
  -- Snover - Swords Dance - TM75
  (459, 45900, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 34),
  -- Snover - Sleep Talk - TM82
  (459, 45900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Snover - Grass Knot - TM86
  (459, 45900, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 36),
  -- Snover - Swagger - TM87
  (459, 45900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Snover - Substitute - TM90
  (459, 45900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Snover - Double-Edge - Egg
  (459, 45900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Snover - Growth - Egg
  (459, 45900, 74, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Snover - Leech Seed - Egg
  (459, 45900, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Snover - Magical Leaf - Egg
  (459, 45900, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Snover - Mist - Egg
  (459, 45900, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snover - Seed Bomb - Egg
  (459, 45900, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snover - Skull Bash - Egg
  (459, 45900, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snover - Stomp - Egg
  (459, 45900, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Abomasnow - Ice Punch - Starting Move
  (460, 46000, 8, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Abomasnow - Aurora Veil - Starting Move
  (460, 46000, 694, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Abomasnow - Powder Snow - Starting Move
  (460, 46000, 181, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Abomasnow - Leer - Starting Move
  (460, 46000, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Abomasnow - Leafage - Starting Move
  (460, 46000, 670, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Abomasnow - Mist - Starting Move
  (460, 46000, 54, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Abomasnow - Ice Punch - Evolution
  (460, 46000, 8, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Abomasnow - Ice Shard - Level 15
  (460, 46000, 420, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Abomasnow - Razor Leaf - Level 20
  (460, 46000, 75, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Abomasnow - Icy Wind - Level 25
  (460, 46000, 196, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Abomasnow - Swagger - Level 30
  (460, 46000, 207, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Abomasnow - Ingrain - Level 35
  (460, 46000, 275, 21, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Abomasnow - Wood Hammer - Level 43
  (460, 46000, 452, 21, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Abomasnow - Blizzard - Level 49
  (460, 46000, 59, 21, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Abomasnow - Sheer Cold - Level 56
  (460, 46000, 329, 21, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Abomasnow - Focus Punch - TM01
  (460, 46000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Abomasnow - Water Pulse - TM03
  (460, 46000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Abomasnow - Hail - TM07
  (460, 46000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Abomasnow - Bullet Seed - TM09
  (460, 46000, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 19),
  -- Abomasnow - Ice Beam - TM13
  (460, 46000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Abomasnow - Blizzard - TM14
  (460, 46000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Abomasnow - Hyper Beam - TM15
  (460, 46000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Abomasnow - Light Screen - TM16
  (460, 46000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 23),
  -- Abomasnow - Protect - TM17
  (460, 46000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Abomasnow - Rain Dance - TM18
  (460, 46000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Abomasnow - Giga Drain - TM19
  (460, 46000, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 26),
  -- Abomasnow - Safeguard - TM20
  (460, 46000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 27),
  -- Abomasnow - Solar Beam - TM22
  (460, 46000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Abomasnow - Iron Tail - TM23
  (460, 46000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Abomasnow - Earthquake - TM26
  (460, 46000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 30),
  -- Abomasnow - Shadow Ball - TM30
  (460, 46000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 31),
  -- Abomasnow - Brick Break - TM31
  (460, 46000, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 32),
  -- Abomasnow - Double Team - TM32
  (460, 46000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Abomasnow - Rock Tomb - TM39
  (460, 46000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 34),
  -- Abomasnow - Facade - TM42
  (460, 46000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Abomasnow - Rest - TM44
  (460, 46000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Abomasnow - Attract - TM45
  (460, 46000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 37),
  -- Abomasnow - Focus Blast - TM52
  (460, 46000, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 38),
  -- Abomasnow - Energy Ball - TM53
  (460, 46000, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 39),
  -- Abomasnow - Fling - TM56
  (460, 46000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Abomasnow - Endure - TM58
  (460, 46000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Abomasnow - Giga Impact - TM68
  (460, 46000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Abomasnow - Flash - TM70
  (460, 46000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 43),
  -- Abomasnow - Avalanche - TM72
  (460, 46000, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 44),
  -- Abomasnow - Swords Dance - TM75
  (460, 46000, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 45),
  -- Abomasnow - Rock Slide - TM80
  (460, 46000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 46),
  -- Abomasnow - Sleep Talk - TM82
  (460, 46000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Abomasnow - Bulldoze - TM83
  (460, 46000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 48),
  -- Abomasnow - Grass Knot - TM86
  (460, 46000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 49),
  -- Abomasnow - Swagger - TM87
  (460, 46000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Abomasnow - Substitute - TM90
  (460, 46000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Abomasnow - Strength - TM96
  (460, 46000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 52),
  -- Abomasnow - Rock Smash - TM98
  (460, 46000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 53),
  -- Abomasnow - Rock Climb - TM100
  (460, 46000, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 54),
  -- Abomasnow - Double-Edge - Egg
  (460, 46000, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Abomasnow - Growth - Egg
  (460, 46000, 74, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Abomasnow - Leech Seed - Egg
  (460, 46000, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Abomasnow - Magical Leaf - Egg
  (460, 46000, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Abomasnow - Mist - Egg
  (460, 46000, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Abomasnow - Seed Bomb - Egg
  (460, 46000, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Abomasnow - Skull Bash - Egg
  (460, 46000, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Abomasnow - Stomp - Egg
  (460, 46000, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Weavile - Revenge - Starting Move
  (461, 46100, 279, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Weavile - Assurance - Starting Move
  (461, 46100, 372, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Weavile - Quick Attack - Starting Move
  (461, 46100, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Weavile - Beat Up - Starting Move
  (461, 46100, 251, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Weavile - Agility - Starting Move
  (461, 46100, 97, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Weavile - Slash - Starting Move
  (461, 46100, 163, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Weavile - Scratch - Starting Move
  (461, 46100, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Weavile - Leer - Starting Move
  (461, 46100, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Weavile - Taunt - Starting Move
  (461, 46100, 269, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Weavile - Ice Shard - Starting Move
  (461, 46100, 420, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Weavile - Metal Claw - Level 18
  (461, 46100, 232, 21, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Weavile - Icy Wind - Level 24
  (461, 46100, 196, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Weavile - Fury Swipes - Level 30
  (461, 46100, 154, 21, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Weavile - Hone Claws - Level 36
  (461, 46100, 468, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Weavile - Fling - Level 42
  (461, 46100, 374, 21, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Weavile - Nasty Plot - Level 48
  (461, 46100, 417, 21, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Weavile - Screech - Level 54
  (461, 46100, 103, 21, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Weavile - Night Slash - Level 60
  (461, 46100, 400, 21, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Weavile - Dark Pulse - Level 66
  (461, 46100, 399, 21, NULL, 1, 66, NULL, NULL, NULL, 19),
  -- Weavile - Focus Punch - TM01
  (461, 46100, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Weavile - Calm Mind - TM04
  (461, 46100, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 21),
  -- Weavile - Hail - TM07
  (461, 46100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 22),
  -- Weavile - Sunny Day - TM11
  (461, 46100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Weavile - Taunt - TM12
  (461, 46100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Weavile - Ice Beam - TM13
  (461, 46100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 25),
  -- Weavile - Blizzard - TM14
  (461, 46100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 26),
  -- Weavile - Hyper Beam - TM15
  (461, 46100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Weavile - Protect - TM17
  (461, 46100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Weavile - Rain Dance - TM18
  (461, 46100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 29),
  -- Weavile - Iron Tail - TM23
  (461, 46100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Weavile - Low Sweep - TM27
  (461, 46100, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 31),
  -- Weavile - Dig - TM28
  (461, 46100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Weavile - Shadow Ball - TM30
  (461, 46100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Weavile - Brick Break - TM31
  (461, 46100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Weavile - Double Team - TM32
  (461, 46100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Weavile - Reflect - TM33
  (461, 46100, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 36),
  -- Weavile - Aerial Ace - TM40
  (461, 46100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 37),
  -- Weavile - Torment - TM41
  (461, 46100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 38),
  -- Weavile - Facade - TM42
  (461, 46100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Weavile - Rest - TM44
  (461, 46100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Weavile - Attract - TM45
  (461, 46100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 41),
  -- Weavile - Thief - TM46
  (461, 46100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 42),
  -- Weavile - Focus Blast - TM52
  (461, 46100, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 43),
  -- Weavile - False Swipe - TM54
  (461, 46100, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 44),
  -- Weavile - Fling - TM56
  (461, 46100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 45),
  -- Weavile - Endure - TM58
  (461, 46100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 46),
  -- Weavile - Nasty Plot - TM63
  (461, 46100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 47),
  -- Weavile - Shadow Claw - TM65
  (461, 46100, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 48),
  -- Weavile - Payback - TM66
  (461, 46100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 49),
  -- Weavile - Giga Impact - TM68
  (461, 46100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 50),
  -- Weavile - Avalanche - TM72
  (461, 46100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 51),
  -- Weavile - Swords Dance - TM75
  (461, 46100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 52),
  -- Weavile - Psych Up - TM77
  (461, 46100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 53),
  -- Weavile - Snarl - TM78
  (461, 46100, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 54),
  -- Weavile - Dark Pulse - TM79
  (461, 46100, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 55),
  -- Weavile - X-Scissor - TM81
  (461, 46100, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 56),
  -- Weavile - Sleep Talk - TM82
  (461, 46100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 57),
  -- Weavile - Poison Jab - TM84
  (461, 46100, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 58),
  -- Weavile - Dream Eater - TM85
  (461, 46100, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 59),
  -- Weavile - Swagger - TM87
  (461, 46100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 60),
  -- Weavile - Substitute - TM90
  (461, 46100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 61),
  -- Weavile - Cut - TM93
  (461, 46100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 62),
  -- Weavile - Surf - TM95
  (461, 46100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 63),
  -- Weavile - Strength - TM96
  (461, 46100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 64),
  -- Weavile - Rock Smash - TM98
  (461, 46100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 65),
  -- Weavile - Bite - Egg
  (461, 46100, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Weavile - Counter - Egg
  (461, 46100, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Weavile - Crush Claw - Egg
  (461, 46100, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Weavile - Double Hit - Egg
  (461, 46100, 458, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Weavile - Fake Out - Egg
  (461, 46100, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Weavile - Feint - Egg
  (461, 46100, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Weavile - Ice Punch - Egg
  (461, 46100, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Weavile - Ice Shard - Egg
  (461, 46100, 420, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Weavile - Icicle Crash - Egg
  (461, 46100, 556, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Weavile - Spite - Egg
  (461, 46100, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Weavile - Throat Chop - Egg
  (461, 46100, 675, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Magnezone - Tri Attack - Starting Move
  (462, 46200, 161, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Magnezone - Electric Terrain - Starting Move
  (462, 46200, 604, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Magnezone - Magnetic Flux - Starting Move
  (462, 46200, 602, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Magnezone - Mirror Coat - Starting Move
  (462, 46200, 243, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Magnezone - Thunder Shock - Starting Move
  (462, 46200, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Magnezone - Tackle - Starting Move
  (462, 46200, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Magnezone - Supersonic - Starting Move
  (462, 46200, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Magnezone - Thunder Wave - Starting Move
  (462, 46200, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Magnezone - Electro Ball - Level 12
  (462, 46200, 486, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Magnezone - Gyro Ball - Level 16
  (462, 46200, 360, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Magnezone - Spark - Level 20
  (462, 46200, 209, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Magnezone - Screech - Level 24
  (462, 46200, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Magnezone - Magnet Rise - Level 28
  (462, 46200, 393, 21, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Magnezone - Flash Cannon - Level 34
  (462, 46200, 430, 21, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Magnezone - Discharge - Level 40
  (462, 46200, 435, 21, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Magnezone - Metal Sound - Level 46
  (462, 46200, 319, 21, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Magnezone - Light Screen - Level 52
  (462, 46200, 113, 21, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Magnezone - Lock-On - Level 58
  (462, 46200, 199, 21, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Magnezone - Zap Cannon - Level 64
  (462, 46200, 192, 21, NULL, 1, 64, NULL, NULL, NULL, 19),
  -- Magnezone - Sunny Day - TM11
  (462, 46200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Magnezone - Hyper Beam - TM15
  (462, 46200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Magnezone - Light Screen - TM16
  (462, 46200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Magnezone - Protect - TM17
  (462, 46200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Magnezone - Rain Dance - TM18
  (462, 46200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Magnezone - Thunderbolt - TM24
  (462, 46200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Magnezone - Thunder - TM25
  (462, 46200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Magnezone - Double Team - TM32
  (462, 46200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Magnezone - Reflect - TM33
  (462, 46200, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 28),
  -- Magnezone - Shock Wave - TM34
  (462, 46200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Magnezone - Facade - TM42
  (462, 46200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Magnezone - Volt Switch - TM43
  (462, 46200, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 31),
  -- Magnezone - Rest - TM44
  (462, 46200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Magnezone - Charge Beam - TM57
  (462, 46200, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 33),
  -- Magnezone - Endure - TM58
  (462, 46200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Magnezone - Explosion - TM64
  (462, 46200, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 35),
  -- Magnezone - Recycle - TM67
  (462, 46200, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 36),
  -- Magnezone - Giga Impact - TM68
  (462, 46200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Magnezone - Flash - TM70
  (462, 46200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Magnezone - Thunder Wave - TM73
  (462, 46200, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 39),
  -- Magnezone - Gyro Ball - TM74
  (462, 46200, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 40),
  -- Magnezone - Psych Up - TM77
  (462, 46200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Magnezone - Sleep Talk - TM82
  (462, 46200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Magnezone - Swagger - TM87
  (462, 46200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Magnezone - Substitute - TM90
  (462, 46200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Magnezone - Flash Cannon - TM91
  (462, 46200, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 45),
  -- Lickilicky - Lick - Starting Move
  (463, 46300, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lickilicky - Defense Curl - Starting Move
  (463, 46300, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lickilicky - Rollout - Starting Move
  (463, 46300, 205, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Lickilicky - Supersonic - Starting Move
  (463, 46300, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Lickilicky - Wrap - Level 18
  (463, 46300, 35, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Lickilicky - Disable - Level 24
  (463, 46300, 50, 21, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Lickilicky - Stomp - Level 30
  (463, 46300, 23, 21, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Lickilicky - Knock Off - Level 36
  (463, 46300, 282, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Lickilicky - Screech - Level 42
  (463, 46300, 103, 21, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Lickilicky - Slam - Level 48
  (463, 46300, 21, 21, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Lickilicky - Power Whip - Level 54
  (463, 46300, 438, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Lickilicky - Belly Drum - Level 60
  (463, 46300, 187, 21, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Lickilicky - Focus Punch - TM01
  (463, 46300, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 13),
  -- Lickilicky - Water Pulse - TM03
  (463, 46300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Lickilicky - Work Up - TM10
  (463, 46300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 15),
  -- Lickilicky - Sunny Day - TM11
  (463, 46300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Lickilicky - Ice Beam - TM13
  (463, 46300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Lickilicky - Blizzard - TM14
  (463, 46300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Lickilicky - Hyper Beam - TM15
  (463, 46300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Lickilicky - Protect - TM17
  (463, 46300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Lickilicky - Rain Dance - TM18
  (463, 46300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Lickilicky - Solar Beam - TM22
  (463, 46300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Lickilicky - Iron Tail - TM23
  (463, 46300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Lickilicky - Thunderbolt - TM24
  (463, 46300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Lickilicky - Thunder - TM25
  (463, 46300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Lickilicky - Earthquake - TM26
  (463, 46300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Lickilicky - Dig - TM28
  (463, 46300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Lickilicky - Shadow Ball - TM30
  (463, 46300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Lickilicky - Brick Break - TM31
  (463, 46300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Lickilicky - Double Team - TM32
  (463, 46300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Lickilicky - Shock Wave - TM34
  (463, 46300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 31),
  -- Lickilicky - Flamethrower - TM35
  (463, 46300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 32),
  -- Lickilicky - Sandstorm - TM37
  (463, 46300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Lickilicky - Fire Blast - TM38
  (463, 46300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 34),
  -- Lickilicky - Rock Tomb - TM39
  (463, 46300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Lickilicky - Facade - TM42
  (463, 46300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Lickilicky - Rest - TM44
  (463, 46300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Lickilicky - Attract - TM45
  (463, 46300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Lickilicky - Thief - TM46
  (463, 46300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 39),
  -- Lickilicky - Focus Blast - TM52
  (463, 46300, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 40),
  -- Lickilicky - Fling - TM56
  (463, 46300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 41),
  -- Lickilicky - Endure - TM58
  (463, 46300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Lickilicky - Explosion - TM64
  (463, 46300, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 43),
  -- Lickilicky - Giga Impact - TM68
  (463, 46300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Lickilicky - Gyro Ball - TM74
  (463, 46300, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 45),
  -- Lickilicky - Swords Dance - TM75
  (463, 46300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 46),
  -- Lickilicky - Psych Up - TM77
  (463, 46300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 47),
  -- Lickilicky - Rock Slide - TM80
  (463, 46300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 48),
  -- Lickilicky - Sleep Talk - TM82
  (463, 46300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Lickilicky - Bulldoze - TM83
  (463, 46300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 50),
  -- Lickilicky - Dream Eater - TM85
  (463, 46300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 51),
  -- Lickilicky - Swagger - TM87
  (463, 46300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Lickilicky - Substitute - TM90
  (463, 46300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Lickilicky - Cut - TM93
  (463, 46300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 54),
  -- Lickilicky - Surf - TM95
  (463, 46300, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 55),
  -- Lickilicky - Strength - TM96
  (463, 46300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 56),
  -- Lickilicky - Rock Smash - TM98
  (463, 46300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 57),
  -- Lickilicky - Rock Climb - TM100
  (463, 46300, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 58),
  -- Lickilicky - Amnesia - Egg
  (463, 46300, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Lickilicky - Belch - Egg
  (463, 46300, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Lickilicky - Belly Drum - Egg
  (463, 46300, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lickilicky - Body Slam - Egg
  (463, 46300, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Lickilicky - Curse - Egg
  (463, 46300, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Lickilicky - Hammer Arm - Egg
  (463, 46300, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lickilicky - Muddy Water - Egg
  (463, 46300, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Lickilicky - Snore - Egg
  (463, 46300, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Lickilicky - Thrash - Egg
  (463, 46300, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Lickilicky - Zen Headbutt - Egg
  (463, 46300, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Rhyperior - Hammer Arm - Starting Move
  (464, 46400, 359, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Rhyperior - Tackle - Starting Move
  (464, 46400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Rhyperior - Tail Whip - Starting Move
  (464, 46400, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Rhyperior - Smack Down - Starting Move
  (464, 46400, 479, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Rhyperior - Bulldoze - Starting Move
  (464, 46400, 523, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Rhyperior - Horn Attack - Level 15
  (464, 46400, 30, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rhyperior - Scary Face - Level 20
  (464, 46400, 184, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Rhyperior - Stomp - Level 25
  (464, 46400, 23, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Rhyperior - Rock Blast - Level 30
  (464, 46400, 350, 21, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Rhyperior - Drill Run - Level 35
  (464, 46400, 529, 21, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Rhyperior - Take Down - Level 40
  (464, 46400, 36, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Rhyperior - Earthquake - Level 47
  (464, 46400, 89, 21, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Rhyperior - Stone Edge - Level 54
  (464, 46400, 444, 21, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Rhyperior - Megahorn - Level 61
  (464, 46400, 224, 21, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Rhyperior - Horn Drill - Level 68
  (464, 46400, 32, 21, NULL, 1, 68, NULL, NULL, NULL, 15),
  -- Rhyperior - Rock Wrecker - Level 75
  (464, 46400, 439, 21, NULL, 1, 75, NULL, NULL, NULL, 16),
  -- Rhyperior - Focus Punch - TM01
  (464, 46400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Rhyperior - Roar - TM05
  (464, 46400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Rhyperior - Sunny Day - TM11
  (464, 46400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Rhyperior - Ice Beam - TM13
  (464, 46400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Rhyperior - Blizzard - TM14
  (464, 46400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Rhyperior - Hyper Beam - TM15
  (464, 46400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Rhyperior - Protect - TM17
  (464, 46400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Rhyperior - Rain Dance - TM18
  (464, 46400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Rhyperior - Iron Tail - TM23
  (464, 46400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Rhyperior - Thunderbolt - TM24
  (464, 46400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Rhyperior - Thunder - TM25
  (464, 46400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Rhyperior - Earthquake - TM26
  (464, 46400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 28),
  -- Rhyperior - Dig - TM28
  (464, 46400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Rhyperior - Brick Break - TM31
  (464, 46400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 30),
  -- Rhyperior - Double Team - TM32
  (464, 46400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Rhyperior - Shock Wave - TM34
  (464, 46400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Rhyperior - Flamethrower - TM35
  (464, 46400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 33),
  -- Rhyperior - Sandstorm - TM37
  (464, 46400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 34),
  -- Rhyperior - Fire Blast - TM38
  (464, 46400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 35),
  -- Rhyperior - Rock Tomb - TM39
  (464, 46400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 36),
  -- Rhyperior - Facade - TM42
  (464, 46400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Rhyperior - Rest - TM44
  (464, 46400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Rhyperior - Attract - TM45
  (464, 46400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Rhyperior - Thief - TM46
  (464, 46400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 40),
  -- Rhyperior - Focus Blast - TM52
  (464, 46400, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 41),
  -- Rhyperior - Fling - TM56
  (464, 46400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Rhyperior - Endure - TM58
  (464, 46400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Rhyperior - Dragon Pulse - TM59
  (464, 46400, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 44),
  -- Rhyperior - Shadow Claw - TM65
  (464, 46400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 45),
  -- Rhyperior - Payback - TM66
  (464, 46400, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 46),
  -- Rhyperior - Giga Impact - TM68
  (464, 46400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Rhyperior - Rock Polish - TM69
  (464, 46400, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 48),
  -- Rhyperior - Stone Edge - TM71
  (464, 46400, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 49),
  -- Rhyperior - Avalanche - TM72
  (464, 46400, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 50),
  -- Rhyperior - Swords Dance - TM75
  (464, 46400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 51),
  -- Rhyperior - Stealth Rock - TM76
  (464, 46400, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 52),
  -- Rhyperior - Rock Slide - TM80
  (464, 46400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 53),
  -- Rhyperior - Sleep Talk - TM82
  (464, 46400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 54),
  -- Rhyperior - Bulldoze - TM83
  (464, 46400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 55),
  -- Rhyperior - Poison Jab - TM84
  (464, 46400, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 56),
  -- Rhyperior - Swagger - TM87
  (464, 46400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 57),
  -- Rhyperior - Substitute - TM90
  (464, 46400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 58),
  -- Rhyperior - Flash Cannon - TM91
  (464, 46400, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 59),
  -- Rhyperior - Cut - TM93
  (464, 46400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 60),
  -- Rhyperior - Surf - TM95
  (464, 46400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 61),
  -- Rhyperior - Strength - TM96
  (464, 46400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 62),
  -- Rhyperior - Rock Smash - TM98
  (464, 46400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 63),
  -- Rhyperior - Rock Climb - TM100
  (464, 46400, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 64),
  -- Rhyperior - Counter - Egg
  (464, 46400, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rhyperior - Crunch - Egg
  (464, 46400, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Rhyperior - Crush Claw - Egg
  (464, 46400, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Rhyperior - Curse - Egg
  (464, 46400, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Rhyperior - Dragon Rush - Egg
  (464, 46400, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Rhyperior - Fire Fang - Egg
  (464, 46400, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Rhyperior - Guard Split - Egg
  (464, 46400, 470, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Rhyperior - Ice Fang - Egg
  (464, 46400, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Rhyperior - Metal Burst - Egg
  (464, 46400, 368, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Rhyperior - Reversal - Egg
  (464, 46400, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Rhyperior - Skull Bash - Egg
  (464, 46400, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Rhyperior - Thunder Fang - Egg
  (464, 46400, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Tangrowth - Block - Starting Move
  (465, 46500, 335, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Tangrowth - Absorb - Starting Move
  (465, 46500, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Tangrowth - Bind - Starting Move
  (465, 46500, 20, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Tangrowth - Stun Spore - Starting Move
  (465, 46500, 78, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Tangrowth - Growth - Starting Move
  (465, 46500, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Tangrowth - Mega Drain - Level 12
  (465, 46500, 72, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Tangrowth - Vine Whip - Level 16
  (465, 46500, 22, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Tangrowth - Poison Powder - Level 20
  (465, 46500, 77, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Tangrowth - Ancient Power - Level 24
  (465, 46500, 246, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Tangrowth - Knock Off - Level 28
  (465, 46500, 282, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Tangrowth - Giga Drain - Level 32
  (465, 46500, 202, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Tangrowth - Sleep Powder - Level 36
  (465, 46500, 79, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Tangrowth - Slam - Level 40
  (465, 46500, 21, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Tangrowth - Tickle - Level 44
  (465, 46500, 321, 21, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Tangrowth - Power Whip - Level 48
  (465, 46500, 438, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Tangrowth - Ingrain - Level 52
  (465, 46500, 275, 21, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Tangrowth - Grassy Terrain - Level 56
  (465, 46500, 580, 21, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Tangrowth - Bullet Seed - TM09
  (465, 46500, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 18),
  -- Tangrowth - Sunny Day - TM11
  (465, 46500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Tangrowth - Hyper Beam - TM15
  (465, 46500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Tangrowth - Protect - TM17
  (465, 46500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Tangrowth - Giga Drain - TM19
  (465, 46500, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 22),
  -- Tangrowth - Solar Beam - TM22
  (465, 46500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Tangrowth - Earthquake - TM26
  (465, 46500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Tangrowth - Brick Break - TM31
  (465, 46500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Tangrowth - Double Team - TM32
  (465, 46500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Tangrowth - Reflect - TM33
  (465, 46500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 27),
  -- Tangrowth - Shock Wave - TM34
  (465, 46500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 28),
  -- Tangrowth - Sludge Bomb - TM36
  (465, 46500, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 29),
  -- Tangrowth - Rock Tomb - TM39
  (465, 46500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Tangrowth - Aerial Ace - TM40
  (465, 46500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Tangrowth - Facade - TM42
  (465, 46500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Tangrowth - Rest - TM44
  (465, 46500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Tangrowth - Attract - TM45
  (465, 46500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Tangrowth - Thief - TM46
  (465, 46500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Tangrowth - Focus Blast - TM52
  (465, 46500, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 36),
  -- Tangrowth - Energy Ball - TM53
  (465, 46500, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 37),
  -- Tangrowth - Fling - TM56
  (465, 46500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Tangrowth - Endure - TM58
  (465, 46500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Tangrowth - Payback - TM66
  (465, 46500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 40),
  -- Tangrowth - Giga Impact - TM68
  (465, 46500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Tangrowth - Flash - TM70
  (465, 46500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Tangrowth - Swords Dance - TM75
  (465, 46500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 43),
  -- Tangrowth - Psych Up - TM77
  (465, 46500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 44),
  -- Tangrowth - Rock Slide - TM80
  (465, 46500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 45),
  -- Tangrowth - Sleep Talk - TM82
  (465, 46500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Tangrowth - Bulldoze - TM83
  (465, 46500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 47),
  -- Tangrowth - Poison Jab - TM84
  (465, 46500, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 48),
  -- Tangrowth - Grass Knot - TM86
  (465, 46500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 49),
  -- Tangrowth - Swagger - TM87
  (465, 46500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Tangrowth - Substitute - TM90
  (465, 46500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Tangrowth - Cut - TM93
  (465, 46500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 52),
  -- Tangrowth - Strength - TM96
  (465, 46500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 53),
  -- Tangrowth - Rock Smash - TM98
  (465, 46500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 54),
  -- Tangrowth - Amnesia - Egg
  (465, 46500, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tangrowth - Confusion - Egg
  (465, 46500, 93, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tangrowth - Endeavor - Egg
  (465, 46500, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tangrowth - Flail - Egg
  (465, 46500, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tangrowth - Leaf Storm - Egg
  (465, 46500, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tangrowth - Leech Seed - Egg
  (465, 46500, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tangrowth - Mega Drain - Egg
  (465, 46500, 72, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Tangrowth - Nature Power - Egg
  (465, 46500, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Tangrowth - Power Swap - Egg
  (465, 46500, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Tangrowth - Rage Powder - Egg
  (465, 46500, 476, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Electivire - Wild Charge - Starting Move
  (466, 46600, 528, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Electivire - Quick Attack - Starting Move
  (466, 46600, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Electivire - Leer - Starting Move
  (466, 46600, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Electivire - Thunder Shock - Starting Move
  (466, 46600, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Electivire - Charge - Starting Move
  (466, 46600, 268, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Electivire - Swift - Level 12
  (466, 46600, 129, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Electivire - Shock Wave - Level 16
  (466, 46600, 351, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Electivire - Thunder Wave - Level 20
  (466, 46600, 86, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Electivire - Screech - Level 24
  (466, 46600, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Electivire - Thunder Punch - Level 28
  (466, 46600, 9, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Electivire - Discharge - Level 34
  (466, 46600, 435, 21, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Electivire - Low Kick - Level 40
  (466, 46600, 67, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Electivire - Thunderbolt - Level 46
  (466, 46600, 85, 21, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Electivire - Light Screen - Level 52
  (466, 46600, 113, 21, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Electivire - Thunder - Level 58
  (466, 46600, 87, 21, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Electivire - Giga Impact - Level 64
  (466, 46600, 416, 21, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Electivire - Focus Punch - TM01
  (466, 46600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Electivire - Taunt - TM12
  (466, 46600, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Electivire - Hyper Beam - TM15
  (466, 46600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Electivire - Light Screen - TM16
  (466, 46600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Electivire - Protect - TM17
  (466, 46600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Electivire - Rain Dance - TM18
  (466, 46600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Electivire - Iron Tail - TM23
  (466, 46600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Electivire - Thunderbolt - TM24
  (466, 46600, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Electivire - Thunder - TM25
  (466, 46600, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Electivire - Earthquake - TM26
  (466, 46600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Electivire - Low Sweep - TM27
  (466, 46600, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 27),
  -- Electivire - Dig - TM28
  (466, 46600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Electivire - Psychic - TM29
  (466, 46600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 29),
  -- Electivire - Brick Break - TM31
  (466, 46600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 30),
  -- Electivire - Double Team - TM32
  (466, 46600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Electivire - Shock Wave - TM34
  (466, 46600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Electivire - Flamethrower - TM35
  (466, 46600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 33),
  -- Electivire - Rock Tomb - TM39
  (466, 46600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 34),
  -- Electivire - Torment - TM41
  (466, 46600, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 35),
  -- Electivire - Facade - TM42
  (466, 46600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Electivire - Volt Switch - TM43
  (466, 46600, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 37),
  -- Electivire - Rest - TM44
  (466, 46600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Electivire - Attract - TM45
  (466, 46600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Electivire - Thief - TM46
  (466, 46600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 40),
  -- Electivire - Focus Blast - TM52
  (466, 46600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 41),
  -- Electivire - Fling - TM56
  (466, 46600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Electivire - Charge Beam - TM57
  (466, 46600, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 43),
  -- Electivire - Endure - TM58
  (466, 46600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 44),
  -- Electivire - Giga Impact - TM68
  (466, 46600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 45),
  -- Electivire - Flash - TM70
  (466, 46600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 46),
  -- Electivire - Thunder Wave - TM73
  (466, 46600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 47),
  -- Electivire - Rock Slide - TM80
  (466, 46600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 48),
  -- Electivire - Sleep Talk - TM82
  (466, 46600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Electivire - Bulldoze - TM83
  (466, 46600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 50),
  -- Electivire - Swagger - TM87
  (466, 46600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Electivire - Substitute - TM90
  (466, 46600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Electivire - Strength - TM96
  (466, 46600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 53),
  -- Electivire - Rock Smash - TM98
  (466, 46600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 54),
  -- Electivire - Rock Climb - TM100
  (466, 46600, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 55),
  -- Electivire - Cross Chop - Egg
  (466, 46600, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Electivire - Dynamic Punch - Egg
  (466, 46600, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Electivire - Feint - Egg
  (466, 46600, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Electivire - Fire Punch - Egg
  (466, 46600, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Electivire - Hammer Arm - Egg
  (466, 46600, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Electivire - Ice Punch - Egg
  (466, 46600, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Magmortar - Smog - Starting Move
  (467, 46700, 123, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Magmortar - Leer - Starting Move
  (467, 46700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Magmortar - Ember - Starting Move
  (467, 46700, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Magmortar - Smokescreen - Starting Move
  (467, 46700, 108, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Magmortar - Clear Smog - Level 12
  (467, 46700, 499, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magmortar - Flame Wheel - Level 16
  (467, 46700, 172, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magmortar - Confuse Ray - Level 20
  (467, 46700, 109, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magmortar - Scary Face - Level 24
  (467, 46700, 184, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magmortar - Fire Punch - Level 28
  (467, 46700, 7, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magmortar - Lava Plume - Level 34
  (467, 46700, 436, 21, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Magmortar - Low Kick - Level 40
  (467, 46700, 67, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Magmortar - Flamethrower - Level 46
  (467, 46700, 53, 21, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Magmortar - Sunny Day - Level 52
  (467, 46700, 241, 21, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Magmortar - Fire Blast - Level 58
  (467, 46700, 126, 21, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Magmortar - Hyper Beam - Level 64
  (467, 46700, 63, 21, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Magmortar - Focus Punch - TM01
  (467, 46700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Magmortar - Sunny Day - TM11
  (467, 46700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Magmortar - Taunt - TM12
  (467, 46700, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Magmortar - Hyper Beam - TM15
  (467, 46700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Magmortar - Protect - TM17
  (467, 46700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Magmortar - Solar Beam - TM22
  (467, 46700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 21),
  -- Magmortar - Iron Tail - TM23
  (467, 46700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Magmortar - Thunderbolt - TM24
  (467, 46700, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 23),
  -- Magmortar - Earthquake - TM26
  (467, 46700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Magmortar - Low Sweep - TM27
  (467, 46700, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 25),
  -- Magmortar - Psychic - TM29
  (467, 46700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 26),
  -- Magmortar - Brick Break - TM31
  (467, 46700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Magmortar - Double Team - TM32
  (467, 46700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Magmortar - Flamethrower - TM35
  (467, 46700, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 29),
  -- Magmortar - Fire Blast - TM38
  (467, 46700, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 30),
  -- Magmortar - Rock Tomb - TM39
  (467, 46700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 31),
  -- Magmortar - Torment - TM41
  (467, 46700, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 32),
  -- Magmortar - Facade - TM42
  (467, 46700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Magmortar - Rest - TM44
  (467, 46700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Magmortar - Attract - TM45
  (467, 46700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Magmortar - Thief - TM46
  (467, 46700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Magmortar - Overheat - TM50
  (467, 46700, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 37),
  -- Magmortar - Focus Blast - TM52
  (467, 46700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 38),
  -- Magmortar - Fling - TM56
  (467, 46700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 39),
  -- Magmortar - Endure - TM58
  (467, 46700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Magmortar - Will-O-Wisp - TM61
  (467, 46700, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 41),
  -- Magmortar - Giga Impact - TM68
  (467, 46700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Magmortar - Rock Slide - TM80
  (467, 46700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Magmortar - Sleep Talk - TM82
  (467, 46700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Magmortar - Bulldoze - TM83
  (467, 46700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Magmortar - Swagger - TM87
  (467, 46700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Magmortar - Substitute - TM90
  (467, 46700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Magmortar - Strength - TM96
  (467, 46700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Magmortar - Rock Smash - TM98
  (467, 46700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Magmortar - Rock Climb - TM100
  (467, 46700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 50),
  -- Magmortar - Belch - Egg
  (467, 46700, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Magmortar - Belly Drum - Egg
  (467, 46700, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Magmortar - Cross Chop - Egg
  (467, 46700, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Magmortar - Dynamic Punch - Egg
  (467, 46700, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Magmortar - Flare Blitz - Egg
  (467, 46700, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Magmortar - Focus Energy - Egg
  (467, 46700, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Magmortar - Mach Punch - Egg
  (467, 46700, 183, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Magmortar - Mega Punch - Egg
  (467, 46700, 5, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Magmortar - Power Swap - Egg
  (467, 46700, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Magmortar - Screech - Egg
  (467, 46700, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Magmortar - Thunder Punch - Egg
  (467, 46700, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Togekiss - Air Slash - Starting Move
  (468, 46800, 403, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Togekiss - Fairy Wind - Starting Move
  (468, 46800, 584, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Togekiss - Sky Attack - Starting Move
  (468, 46800, 143, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Togekiss - Aura Sphere - Starting Move
  (468, 46800, 396, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Togekiss - Extreme Speed - Starting Move
  (468, 46800, 245, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Togekiss - Tri Attack - Starting Move
  (468, 46800, 161, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Togekiss - Charm - Starting Move
  (468, 46800, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Togekiss - Ancient Power - Starting Move
  (468, 46800, 246, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Togekiss - Yawn - Starting Move
  (468, 46800, 281, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Togekiss - Metronome - Starting Move
  (468, 46800, 118, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Togekiss - After You - Starting Move
  (468, 46800, 495, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Togekiss - Double-Edge - Starting Move
  (468, 46800, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Togekiss - Safeguard - Starting Move
  (468, 46800, 219, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Togekiss - Follow Me - Starting Move
  (468, 46800, 266, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Togekiss - Baton Pass - Starting Move
  (468, 46800, 226, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Togekiss - Last Resort - Starting Move
  (468, 46800, 387, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Togekiss - Wish - Starting Move
  (468, 46800, 273, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Togekiss - Growl - Starting Move
  (468, 46800, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 18),
  -- Togekiss - Pound - Starting Move
  (468, 46800, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 19),
  -- Togekiss - Sweet Kiss - Starting Move
  (468, 46800, 186, 21, NULL, 8, NULL, NULL, NULL, NULL, 20),
  -- Togekiss - Life Dew - Starting Move
  (468, 46800, 791, 21, NULL, 8, NULL, NULL, NULL, NULL, 21),
  -- Togekiss - Air Slash - Evolution
  (468, 46800, 403, 21, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Togekiss - Focus Punch - TM01
  (468, 46800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 23),
  -- Togekiss - Water Pulse - TM03
  (468, 46800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 24),
  -- Togekiss - Work Up - TM10
  (468, 46800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 25),
  -- Togekiss - Sunny Day - TM11
  (468, 46800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 26),
  -- Togekiss - Hyper Beam - TM15
  (468, 46800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Togekiss - Light Screen - TM16
  (468, 46800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 28),
  -- Togekiss - Protect - TM17
  (468, 46800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Togekiss - Rain Dance - TM18
  (468, 46800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 30),
  -- Togekiss - Safeguard - TM20
  (468, 46800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 31),
  -- Togekiss - Dazzling Gleam - TM21
  (468, 46800, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 32),
  -- Togekiss - Solar Beam - TM22
  (468, 46800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 33),
  -- Togekiss - Psychic - TM29
  (468, 46800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 34),
  -- Togekiss - Shadow Ball - TM30
  (468, 46800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 35),
  -- Togekiss - Brick Break - TM31
  (468, 46800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 36),
  -- Togekiss - Double Team - TM32
  (468, 46800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Togekiss - Reflect - TM33
  (468, 46800, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 38),
  -- Togekiss - Shock Wave - TM34
  (468, 46800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 39),
  -- Togekiss - Flamethrower - TM35
  (468, 46800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 40),
  -- Togekiss - Fire Blast - TM38
  (468, 46800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 41),
  -- Togekiss - Aerial Ace - TM40
  (468, 46800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 42),
  -- Togekiss - Facade - TM42
  (468, 46800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 43),
  -- Togekiss - Rest - TM44
  (468, 46800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 44),
  -- Togekiss - Attract - TM45
  (468, 46800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 45),
  -- Togekiss - Steel Wing - TM47
  (468, 46800, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 46),
  -- Togekiss - Roost - TM51
  (468, 46800, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 47),
  -- Togekiss - Fling - TM56
  (468, 46800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 48),
  -- Togekiss - Endure - TM58
  (468, 46800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 49),
  -- Togekiss - Drain Punch - TM60
  (468, 46800, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 50),
  -- Togekiss - Nasty Plot - TM63
  (468, 46800, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 51),
  -- Togekiss - Giga Impact - TM68
  (468, 46800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 52),
  -- Togekiss - Flash - TM70
  (468, 46800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 53),
  -- Togekiss - Thunder Wave - TM73
  (468, 46800, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 54),
  -- Togekiss - Psych Up - TM77
  (468, 46800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 55),
  -- Togekiss - Sleep Talk - TM82
  (468, 46800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 56),
  -- Togekiss - Dream Eater - TM85
  (468, 46800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 57),
  -- Togekiss - Grass Knot - TM86
  (468, 46800, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 58),
  -- Togekiss - Swagger - TM87
  (468, 46800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 59),
  -- Togekiss - Pluck - TM88
  (468, 46800, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 60),
  -- Togekiss - Substitute - TM90
  (468, 46800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 61),
  -- Togekiss - Fly - TM94
  (468, 46800, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 62),
  -- Togekiss - Defog - TM97
  (468, 46800, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 63),
  -- Togekiss - Rock Smash - TM98
  (468, 46800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 64),
  -- Togekiss - Extrasensory - Egg
  (468, 46800, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Togekiss - Future Sight - Egg
  (468, 46800, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Togekiss - Morning Sun - Egg
  (468, 46800, 234, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Togekiss - Peck - Egg
  (468, 46800, 64, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Togekiss - Present - Egg
  (468, 46800, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Togekiss - Psycho Shift - Egg
  (468, 46800, 375, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Togekiss - Stored Power - Egg
  (468, 46800, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Yanmega - Bug Buzz - Starting Move
  (469, 46900, 405, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Yanmega - Air Slash - Starting Move
  (469, 46900, 403, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Yanmega - Night Slash - Starting Move
  (469, 46900, 400, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Yanmega - Bug Bite - Starting Move
  (469, 46900, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Yanmega - Hypnosis - Starting Move
  (469, 46900, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Yanmega - Wing Attack - Starting Move
  (469, 46900, 17, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Yanmega - Tackle - Starting Move
  (469, 46900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Yanmega - Gust - Starting Move
  (469, 46900, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Yanmega - Quick Attack - Starting Move
  (469, 46900, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Yanmega - Double Team - Starting Move
  (469, 46900, 104, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Yanmega - Quick Attack - Level 6
  (469, 46900, 98, 21, NULL, 1, 6, NULL, NULL, NULL, 11),
  -- Yanmega - Double Team - Level 11
  (469, 46900, 104, 21, NULL, 1, 11, NULL, NULL, NULL, 12),
  -- Yanmega - Aerial Ace - Level 14
  (469, 46900, 332, 21, NULL, 1, 14, NULL, NULL, NULL, 13),
  -- Yanmega - Detect - Level 17
  (469, 46900, 197, 21, NULL, 1, 17, NULL, NULL, NULL, 14),
  -- Yanmega - Supersonic - Level 22
  (469, 46900, 48, 21, NULL, 1, 22, NULL, NULL, NULL, 15),
  -- Yanmega - Uproar - Level 27
  (469, 46900, 253, 21, NULL, 1, 27, NULL, NULL, NULL, 16),
  -- Yanmega - String Shot - Level 30
  (469, 46900, 81, 21, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Yanmega - Ancient Power - Level 33
  (469, 46900, 246, 21, NULL, 1, 33, NULL, NULL, NULL, 18),
  -- Yanmega - Feint - Level 38
  (469, 46900, 364, 21, NULL, 1, 38, NULL, NULL, NULL, 19),
  -- Yanmega - Slash - Level 43
  (469, 46900, 163, 21, NULL, 1, 43, NULL, NULL, NULL, 20),
  -- Yanmega - Screech - Level 46
  (469, 46900, 103, 21, NULL, 1, 46, NULL, NULL, NULL, 21),
  -- Yanmega - U-turn - Level 49
  (469, 46900, 369, 21, NULL, 1, 49, NULL, NULL, NULL, 22),
  -- Yanmega - Air Slash - Level 54
  (469, 46900, 403, 21, NULL, 1, 54, NULL, NULL, NULL, 23),
  -- Yanmega - Bug Buzz - Level 57
  (469, 46900, 405, 21, NULL, 1, 57, NULL, NULL, NULL, 24),
  -- Yanmega - Sunny Day - TM11
  (469, 46900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 25),
  -- Yanmega - Hyper Beam - TM15
  (469, 46900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Yanmega - Protect - TM17
  (469, 46900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Yanmega - Giga Drain - TM19
  (469, 46900, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 28),
  -- Yanmega - Solar Beam - TM22
  (469, 46900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Yanmega - Psychic - TM29
  (469, 46900, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 30),
  -- Yanmega - Shadow Ball - TM30
  (469, 46900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 31),
  -- Yanmega - Double Team - TM32
  (469, 46900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Yanmega - Aerial Ace - TM40
  (469, 46900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 33),
  -- Yanmega - Facade - TM42
  (469, 46900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Yanmega - Rest - TM44
  (469, 46900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Yanmega - Attract - TM45
  (469, 46900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Yanmega - Thief - TM46
  (469, 46900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 37),
  -- Yanmega - Steel Wing - TM47
  (469, 46900, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 38),
  -- Yanmega - Roost - TM51
  (469, 46900, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 39),
  -- Yanmega - Endure - TM58
  (469, 46900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Yanmega - Bug Buzz - TM62
  (469, 46900, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 41),
  -- Yanmega - Giga Impact - TM68
  (469, 46900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Yanmega - Flash - TM70
  (469, 46900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 43),
  -- Yanmega - Swords Dance - TM75
  (469, 46900, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 44),
  -- Yanmega - Psych Up - TM77
  (469, 46900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 45),
  -- Yanmega - Sleep Talk - TM82
  (469, 46900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Yanmega - Dream Eater - TM85
  (469, 46900, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 47),
  -- Yanmega - Swagger - TM87
  (469, 46900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Yanmega - U-turn - TM89
  (469, 46900, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 49),
  -- Yanmega - Substitute - TM90
  (469, 46900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Yanmega - Defog - TM97
  (469, 46900, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 51),
  -- Yanmega - Double-Edge - Egg
  (469, 46900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Yanmega - Feint - Egg
  (469, 46900, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Yanmega - Leech Life - Egg
  (469, 46900, 141, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Yanmega - Reversal - Egg
  (469, 46900, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Yanmega - Whirlwind - Egg
  (469, 46900, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Leafeon - Razor Leaf - Starting Move
  (470, 47000, 75, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Leafeon - Covet - Starting Move
  (470, 47000, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Leafeon - Swift - Starting Move
  (470, 47000, 129, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Leafeon - Bite - Starting Move
  (470, 47000, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Leafeon - Copycat - Starting Move
  (470, 47000, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Leafeon - Baton Pass - Starting Move
  (470, 47000, 226, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Leafeon - Take Down - Starting Move
  (470, 47000, 36, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Leafeon - Charm - Starting Move
  (470, 47000, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Leafeon - Double-Edge - Starting Move
  (470, 47000, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Leafeon - Helping Hand - Starting Move
  (470, 47000, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Leafeon - Tackle - Starting Move
  (470, 47000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Leafeon - Growl - Starting Move
  (470, 47000, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Leafeon - Tail Whip - Starting Move
  (470, 47000, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Leafeon - Razor Leaf - Evolution
  (470, 47000, 75, 21, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Leafeon - Sand Attack - Level 5
  (470, 47000, 28, 21, NULL, 1, 5, NULL, NULL, NULL, 15),
  -- Leafeon - Quick Attack - Level 10
  (470, 47000, 98, 21, NULL, 1, 10, NULL, NULL, NULL, 16),
  -- Leafeon - Baby-Doll Eyes - Level 15
  (470, 47000, 608, 21, NULL, 1, 15, NULL, NULL, NULL, 17),
  -- Leafeon - Leech Seed - Level 20
  (470, 47000, 73, 21, NULL, 1, 20, NULL, NULL, NULL, 18),
  -- Leafeon - Magical Leaf - Level 25
  (470, 47000, 345, 21, NULL, 1, 25, NULL, NULL, NULL, 19),
  -- Leafeon - Synthesis - Level 30
  (470, 47000, 235, 21, NULL, 1, 30, NULL, NULL, NULL, 20),
  -- Leafeon - Sunny Day - Level 35
  (470, 47000, 241, 21, NULL, 1, 35, NULL, NULL, NULL, 21),
  -- Leafeon - Giga Drain - Level 40
  (470, 47000, 202, 21, NULL, 1, 40, NULL, NULL, NULL, 22),
  -- Leafeon - Swords Dance - Level 45
  (470, 47000, 14, 21, NULL, 1, 45, NULL, NULL, NULL, 23),
  -- Leafeon - Leaf Blade - Level 50
  (470, 47000, 348, 21, NULL, 1, 50, NULL, NULL, NULL, 24),
  -- Leafeon - Last Resort - Level 55
  (470, 47000, 387, 21, NULL, 1, 55, NULL, NULL, NULL, 25),
  -- Leafeon - Roar - TM05
  (470, 47000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 26),
  -- Leafeon - Bullet Seed - TM09
  (470, 47000, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 27),
  -- Leafeon - Work Up - TM10
  (470, 47000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 28),
  -- Leafeon - Sunny Day - TM11
  (470, 47000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 29),
  -- Leafeon - Hyper Beam - TM15
  (470, 47000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 30),
  -- Leafeon - Protect - TM17
  (470, 47000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 31),
  -- Leafeon - Rain Dance - TM18
  (470, 47000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 32),
  -- Leafeon - Giga Drain - TM19
  (470, 47000, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 33),
  -- Leafeon - Solar Beam - TM22
  (470, 47000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 34),
  -- Leafeon - Iron Tail - TM23
  (470, 47000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 35),
  -- Leafeon - Dig - TM28
  (470, 47000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 36),
  -- Leafeon - Shadow Ball - TM30
  (470, 47000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 37),
  -- Leafeon - Double Team - TM32
  (470, 47000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 38),
  -- Leafeon - Aerial Ace - TM40
  (470, 47000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 39),
  -- Leafeon - Facade - TM42
  (470, 47000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Leafeon - Rest - TM44
  (470, 47000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 41),
  -- Leafeon - Attract - TM45
  (470, 47000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 42),
  -- Leafeon - Energy Ball - TM53
  (470, 47000, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 43),
  -- Leafeon - Endure - TM58
  (470, 47000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 44),
  -- Leafeon - Giga Impact - TM68
  (470, 47000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 45),
  -- Leafeon - Flash - TM70
  (470, 47000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 46),
  -- Leafeon - Swords Dance - TM75
  (470, 47000, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 47),
  -- Leafeon - X-Scissor - TM81
  (470, 47000, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 48),
  -- Leafeon - Sleep Talk - TM82
  (470, 47000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Leafeon - Grass Knot - TM86
  (470, 47000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 50),
  -- Leafeon - Swagger - TM87
  (470, 47000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Leafeon - Substitute - TM90
  (470, 47000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Leafeon - Strength - TM96
  (470, 47000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 53),
  -- Leafeon - Rock Smash - TM98
  (470, 47000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 54),
  -- Leafeon - Charm - Egg
  (470, 47000, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Leafeon - Covet - Egg
  (470, 47000, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Leafeon - Curse - Egg
  (470, 47000, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Leafeon - Detect - Egg
  (470, 47000, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Leafeon - Double Kick - Egg
  (470, 47000, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Leafeon - Fake Tears - Egg
  (470, 47000, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Leafeon - Flail - Egg
  (470, 47000, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Leafeon - Mud-Slap - Egg
  (470, 47000, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Leafeon - Stored Power - Egg
  (470, 47000, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Leafeon - Tickle - Egg
  (470, 47000, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Leafeon - Wish - Egg
  (470, 47000, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Leafeon - Yawn - Egg
  (470, 47000, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Glaceon - Icy Wind - Starting Move
  (471, 47100, 196, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Glaceon - Covet - Starting Move
  (471, 47100, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Glaceon - Swift - Starting Move
  (471, 47100, 129, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Glaceon - Copycat - Starting Move
  (471, 47100, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Glaceon - Baton Pass - Starting Move
  (471, 47100, 226, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Glaceon - Take Down - Starting Move
  (471, 47100, 36, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Glaceon - Charm - Starting Move
  (471, 47100, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Glaceon - Double-Edge - Starting Move
  (471, 47100, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Glaceon - Helping Hand - Starting Move
  (471, 47100, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Glaceon - Tackle - Starting Move
  (471, 47100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Glaceon - Growl - Starting Move
  (471, 47100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Glaceon - Tail Whip - Starting Move
  (471, 47100, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Glaceon - Icy Wind - Evolution
  (471, 47100, 196, 21, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Glaceon - Sand Attack - Level 5
  (471, 47100, 28, 21, NULL, 1, 5, NULL, NULL, NULL, 14),
  -- Glaceon - Quick Attack - Level 10
  (471, 47100, 98, 21, NULL, 1, 10, NULL, NULL, NULL, 15),
  -- Glaceon - Baby-Doll Eyes - Level 15
  (471, 47100, 608, 21, NULL, 1, 15, NULL, NULL, NULL, 16),
  -- Glaceon - Ice Shard - Level 20
  (471, 47100, 420, 21, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Glaceon - Bite - Level 25
  (471, 47100, 44, 21, NULL, 1, 25, NULL, NULL, NULL, 18),
  -- Glaceon - Ice Fang - Level 30
  (471, 47100, 423, 21, NULL, 1, 30, NULL, NULL, NULL, 19),
  -- Glaceon - Hail - Level 35
  (471, 47100, 258, 21, NULL, 1, 35, NULL, NULL, NULL, 20),
  -- Glaceon - Freeze-Dry - Level 40
  (471, 47100, 573, 21, NULL, 1, 40, NULL, NULL, NULL, 21),
  -- Glaceon - Mirror Coat - Level 45
  (471, 47100, 243, 21, NULL, 1, 45, NULL, NULL, NULL, 22),
  -- Glaceon - Blizzard - Level 50
  (471, 47100, 59, 21, NULL, 1, 50, NULL, NULL, NULL, 23),
  -- Glaceon - Last Resort - Level 55
  (471, 47100, 387, 21, NULL, 1, 55, NULL, NULL, NULL, 24),
  -- Glaceon - Water Pulse - TM03
  (471, 47100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 25),
  -- Glaceon - Roar - TM05
  (471, 47100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 26),
  -- Glaceon - Hail - TM07
  (471, 47100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 27),
  -- Glaceon - Work Up - TM10
  (471, 47100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 28),
  -- Glaceon - Sunny Day - TM11
  (471, 47100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 29),
  -- Glaceon - Ice Beam - TM13
  (471, 47100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 30),
  -- Glaceon - Blizzard - TM14
  (471, 47100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 31),
  -- Glaceon - Hyper Beam - TM15
  (471, 47100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 32),
  -- Glaceon - Protect - TM17
  (471, 47100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 33),
  -- Glaceon - Rain Dance - TM18
  (471, 47100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 34),
  -- Glaceon - Iron Tail - TM23
  (471, 47100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 35),
  -- Glaceon - Dig - TM28
  (471, 47100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 36),
  -- Glaceon - Shadow Ball - TM30
  (471, 47100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 37),
  -- Glaceon - Double Team - TM32
  (471, 47100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 38),
  -- Glaceon - Facade - TM42
  (471, 47100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Glaceon - Rest - TM44
  (471, 47100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Glaceon - Attract - TM45
  (471, 47100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 41),
  -- Glaceon - Endure - TM58
  (471, 47100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Glaceon - Giga Impact - TM68
  (471, 47100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Glaceon - Avalanche - TM72
  (471, 47100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 44),
  -- Glaceon - Sleep Talk - TM82
  (471, 47100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Glaceon - Swagger - TM87
  (471, 47100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Glaceon - Substitute - TM90
  (471, 47100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Glaceon - Strength - TM96
  (471, 47100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Glaceon - Rock Smash - TM98
  (471, 47100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Glaceon - Charm - Egg
  (471, 47100, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Glaceon - Covet - Egg
  (471, 47100, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Glaceon - Curse - Egg
  (471, 47100, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Glaceon - Detect - Egg
  (471, 47100, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Glaceon - Double Kick - Egg
  (471, 47100, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Glaceon - Fake Tears - Egg
  (471, 47100, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Glaceon - Flail - Egg
  (471, 47100, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Glaceon - Mud-Slap - Egg
  (471, 47100, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Glaceon - Stored Power - Egg
  (471, 47100, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Glaceon - Tickle - Egg
  (471, 47100, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Glaceon - Wish - Egg
  (471, 47100, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Glaceon - Yawn - Egg
  (471, 47100, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gliscor - Guillotine - Starting Move
  (472, 47200, 12, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gliscor - Thunder Fang - Starting Move
  (472, 47200, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Gliscor - Ice Fang - Starting Move
  (472, 47200, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Gliscor - Fire Fang - Starting Move
  (472, 47200, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Gliscor - Poison Jab - Starting Move
  (472, 47200, 398, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Gliscor - Sand Attack - Starting Move
  (472, 47200, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Gliscor - Harden - Starting Move
  (472, 47200, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Gliscor - Knock Off - Starting Move
  (472, 47200, 282, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Gliscor - Poison Sting - Starting Move
  (472, 47200, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Gliscor - Night Slash - Starting Move
  (472, 47200, 400, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Gliscor - Slash - Starting Move
  (472, 47200, 163, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Gliscor - Sand Attack - Level 4
  (472, 47200, 28, 21, NULL, 1, 4, NULL, NULL, NULL, 12),
  -- Gliscor - Harden - Level 7
  (472, 47200, 106, 21, NULL, 1, 7, NULL, NULL, NULL, 13),
  -- Gliscor - Knock Off - Level 10
  (472, 47200, 282, 21, NULL, 1, 10, NULL, NULL, NULL, 14),
  -- Gliscor - Quick Attack - Level 13
  (472, 47200, 98, 21, NULL, 1, 13, NULL, NULL, NULL, 15),
  -- Gliscor - Fury Cutter - Level 16
  (472, 47200, 210, 21, NULL, 1, 16, NULL, NULL, NULL, 16),
  -- Gliscor - Mud-Slap - Level 19
  (472, 47200, 189, 21, NULL, 1, 19, NULL, NULL, NULL, 17),
  -- Gliscor - Acrobatics - Level 22
  (472, 47200, 512, 21, NULL, 1, 22, NULL, NULL, NULL, 18),
  -- Gliscor - Night Slash - Level 27
  (472, 47200, 400, 21, NULL, 1, 27, NULL, NULL, NULL, 19),
  -- Gliscor - U-turn - Level 30
  (472, 47200, 369, 21, NULL, 1, 30, NULL, NULL, NULL, 20),
  -- Gliscor - Screech - Level 35
  (472, 47200, 103, 21, NULL, 1, 35, NULL, NULL, NULL, 21),
  -- Gliscor - X-Scissor - Level 40
  (472, 47200, 404, 21, NULL, 1, 40, NULL, NULL, NULL, 22),
  -- Gliscor - Earthquake - Level 45
  (472, 47200, 89, 21, NULL, 1, 45, NULL, NULL, NULL, 23),
  -- Gliscor - Swords Dance - Level 50
  (472, 47200, 14, 21, NULL, 1, 50, NULL, NULL, NULL, 24),
  -- Gliscor - Guillotine - Level 55
  (472, 47200, 12, 21, NULL, 1, 55, NULL, NULL, NULL, 25),
  -- Gliscor - Sunny Day - TM11
  (472, 47200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 26),
  -- Gliscor - Taunt - TM12
  (472, 47200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 27),
  -- Gliscor - Hyper Beam - TM15
  (472, 47200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Gliscor - Protect - TM17
  (472, 47200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Gliscor - Rain Dance - TM18
  (472, 47200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 30),
  -- Gliscor - Iron Tail - TM23
  (472, 47200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 31),
  -- Gliscor - Earthquake - TM26
  (472, 47200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 32),
  -- Gliscor - Dig - TM28
  (472, 47200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 33),
  -- Gliscor - Brick Break - TM31
  (472, 47200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Gliscor - Double Team - TM32
  (472, 47200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Gliscor - Sludge Bomb - TM36
  (472, 47200, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 36),
  -- Gliscor - Sandstorm - TM37
  (472, 47200, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 37),
  -- Gliscor - Rock Tomb - TM39
  (472, 47200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 38),
  -- Gliscor - Aerial Ace - TM40
  (472, 47200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 39),
  -- Gliscor - Torment - TM41
  (472, 47200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 40),
  -- Gliscor - Facade - TM42
  (472, 47200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 41),
  -- Gliscor - Rest - TM44
  (472, 47200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 42),
  -- Gliscor - Attract - TM45
  (472, 47200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 43),
  -- Gliscor - Thief - TM46
  (472, 47200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 44),
  -- Gliscor - Steel Wing - TM47
  (472, 47200, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 45),
  -- Gliscor - Roost - TM51
  (472, 47200, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 46),
  -- Gliscor - False Swipe - TM54
  (472, 47200, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 47),
  -- Gliscor - Fling - TM56
  (472, 47200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 48),
  -- Gliscor - Endure - TM58
  (472, 47200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 49),
  -- Gliscor - Payback - TM66
  (472, 47200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 50),
  -- Gliscor - Giga Impact - TM68
  (472, 47200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 51),
  -- Gliscor - Rock Polish - TM69
  (472, 47200, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 52),
  -- Gliscor - Stone Edge - TM71
  (472, 47200, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 53),
  -- Gliscor - Swords Dance - TM75
  (472, 47200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 54),
  -- Gliscor - Stealth Rock - TM76
  (472, 47200, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 55),
  -- Gliscor - Dark Pulse - TM79
  (472, 47200, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 56),
  -- Gliscor - Rock Slide - TM80
  (472, 47200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 57),
  -- Gliscor - X-Scissor - TM81
  (472, 47200, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 58),
  -- Gliscor - Sleep Talk - TM82
  (472, 47200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 59),
  -- Gliscor - Bulldoze - TM83
  (472, 47200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 60),
  -- Gliscor - Poison Jab - TM84
  (472, 47200, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 61),
  -- Gliscor - Swagger - TM87
  (472, 47200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 62),
  -- Gliscor - U-turn - TM89
  (472, 47200, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 63),
  -- Gliscor - Substitute - TM90
  (472, 47200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 64),
  -- Gliscor - Cut - TM93
  (472, 47200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 65),
  -- Gliscor - Strength - TM96
  (472, 47200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 66),
  -- Gliscor - Defog - TM97
  (472, 47200, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 67),
  -- Gliscor - Rock Smash - TM98
  (472, 47200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 68),
  -- Gliscor - Agility - Egg
  (472, 47200, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Gliscor - Baton Pass - Egg
  (472, 47200, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Gliscor - Counter - Egg
  (472, 47200, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Gliscor - Cross Poison - Egg
  (472, 47200, 440, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Gliscor - Double-Edge - Egg
  (472, 47200, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Gliscor - Feint - Egg
  (472, 47200, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Gliscor - Metal Claw - Egg
  (472, 47200, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Gliscor - Night Slash - Egg
  (472, 47200, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Gliscor - Poison Tail - Egg
  (472, 47200, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Gliscor - Power Trick - Egg
  (472, 47200, 379, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Gliscor - Sand Tomb - Egg
  (472, 47200, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Gliscor - Wing Attack - Egg
  (472, 47200, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Mamoswine - Double Hit - Starting Move
  (473, 47300, 458, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mamoswine - Ice Fang - Starting Move
  (473, 47300, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mamoswine - Ancient Power - Starting Move
  (473, 47300, 246, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Mamoswine - Tackle - Starting Move
  (473, 47300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Mamoswine - Mud-Slap - Starting Move
  (473, 47300, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Mamoswine - Powder Snow - Starting Move
  (473, 47300, 181, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Mamoswine - Flail - Starting Move
  (473, 47300, 175, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Mamoswine - Double Hit - Evolution
  (473, 47300, 458, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Mamoswine - Ice Shard - Level 15
  (473, 47300, 420, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Mamoswine - Mist - Level 20
  (473, 47300, 54, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Mamoswine - Endure - Level 25
  (473, 47300, 203, 21, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Mamoswine - Icy Wind - Level 30
  (473, 47300, 196, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Mamoswine - Amnesia - Level 37
  (473, 47300, 133, 21, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Mamoswine - Take Down - Level 44
  (473, 47300, 36, 21, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Mamoswine - Earthquake - Level 51
  (473, 47300, 89, 21, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Mamoswine - Blizzard - Level 58
  (473, 47300, 59, 21, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Mamoswine - Thrash - Level 65
  (473, 47300, 37, 21, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Mamoswine - Roar - TM05
  (473, 47300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Mamoswine - Hail - TM07
  (473, 47300, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Mamoswine - Ice Beam - TM13
  (473, 47300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Mamoswine - Blizzard - TM14
  (473, 47300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Mamoswine - Hyper Beam - TM15
  (473, 47300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Mamoswine - Light Screen - TM16
  (473, 47300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 23),
  -- Mamoswine - Protect - TM17
  (473, 47300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Mamoswine - Rain Dance - TM18
  (473, 47300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Mamoswine - Earthquake - TM26
  (473, 47300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Mamoswine - Dig - TM28
  (473, 47300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Mamoswine - Double Team - TM32
  (473, 47300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Mamoswine - Reflect - TM33
  (473, 47300, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 29),
  -- Mamoswine - Sandstorm - TM37
  (473, 47300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 30),
  -- Mamoswine - Rock Tomb - TM39
  (473, 47300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 31),
  -- Mamoswine - Facade - TM42
  (473, 47300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Mamoswine - Rest - TM44
  (473, 47300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Mamoswine - Attract - TM45
  (473, 47300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Mamoswine - Endure - TM58
  (473, 47300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Mamoswine - Giga Impact - TM68
  (473, 47300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Mamoswine - Stone Edge - TM71
  (473, 47300, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 37),
  -- Mamoswine - Avalanche - TM72
  (473, 47300, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 38),
  -- Mamoswine - Stealth Rock - TM76
  (473, 47300, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 39),
  -- Mamoswine - Rock Slide - TM80
  (473, 47300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 40),
  -- Mamoswine - Sleep Talk - TM82
  (473, 47300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Mamoswine - Bulldoze - TM83
  (473, 47300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 42),
  -- Mamoswine - Swagger - TM87
  (473, 47300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Mamoswine - Substitute - TM90
  (473, 47300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Mamoswine - Strength - TM96
  (473, 47300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Mamoswine - Rock Smash - TM98
  (473, 47300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Mamoswine - Rock Climb - TM100
  (473, 47300, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 47),
  -- Mamoswine - Ancient Power - Egg
  (473, 47300, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mamoswine - Bite - Egg
  (473, 47300, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mamoswine - Body Slam - Egg
  (473, 47300, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mamoswine - Curse - Egg
  (473, 47300, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mamoswine - Double-Edge - Egg
  (473, 47300, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mamoswine - Fissure - Egg
  (473, 47300, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mamoswine - Freeze-Dry - Egg
  (473, 47300, 573, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mamoswine - Icicle Crash - Egg
  (473, 47300, 556, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mamoswine - Icicle Spear - Egg
  (473, 47300, 333, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mamoswine - Mud Shot - Egg
  (473, 47300, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mamoswine - Take Down - Egg
  (473, 47300, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Porygon-Z - Trick Room - Starting Move
  (474, 47400, 433, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Porygon-Z - Nasty Plot - Starting Move
  (474, 47400, 417, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Porygon-Z - Defense Curl - Starting Move
  (474, 47400, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Porygon-Z - Tackle - Starting Move
  (474, 47400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Porygon-Z - Conversion - Starting Move
  (474, 47400, 160, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Porygon-Z - Recycle - Starting Move
  (474, 47400, 278, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Porygon-Z - Magnet Rise - Starting Move
  (474, 47400, 393, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Porygon-Z - Thunder Shock - Level 15
  (474, 47400, 84, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Porygon-Z - Psybeam - Level 20
  (474, 47400, 60, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Porygon-Z - Conversion 2 - Level 25
  (474, 47400, 176, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Porygon-Z - Agility - Level 30
  (474, 47400, 97, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Porygon-Z - Recover - Level 35
  (474, 47400, 105, 21, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Porygon-Z - Discharge - Level 40
  (474, 47400, 435, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Porygon-Z - Tri Attack - Level 45
  (474, 47400, 161, 21, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Porygon-Z - Magic Coat - Level 50
  (474, 47400, 277, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Porygon-Z - Lock-On - Level 55
  (474, 47400, 199, 21, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Porygon-Z - Zap Cannon - Level 60
  (474, 47400, 192, 21, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Porygon-Z - Hyper Beam - Level 65
  (474, 47400, 63, 21, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Porygon-Z - Sunny Day - TM11
  (474, 47400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Porygon-Z - Ice Beam - TM13
  (474, 47400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Porygon-Z - Blizzard - TM14
  (474, 47400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Porygon-Z - Hyper Beam - TM15
  (474, 47400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Porygon-Z - Protect - TM17
  (474, 47400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Porygon-Z - Rain Dance - TM18
  (474, 47400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Porygon-Z - Solar Beam - TM22
  (474, 47400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 25),
  -- Porygon-Z - Iron Tail - TM23
  (474, 47400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 26),
  -- Porygon-Z - Thunderbolt - TM24
  (474, 47400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 27),
  -- Porygon-Z - Thunder - TM25
  (474, 47400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 28),
  -- Porygon-Z - Psychic - TM29
  (474, 47400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 29),
  -- Porygon-Z - Shadow Ball - TM30
  (474, 47400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Porygon-Z - Double Team - TM32
  (474, 47400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Porygon-Z - Shock Wave - TM34
  (474, 47400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Porygon-Z - Aerial Ace - TM40
  (474, 47400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 33),
  -- Porygon-Z - Facade - TM42
  (474, 47400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Porygon-Z - Rest - TM44
  (474, 47400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Porygon-Z - Thief - TM46
  (474, 47400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Porygon-Z - Charge Beam - TM57
  (474, 47400, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 37),
  -- Porygon-Z - Endure - TM58
  (474, 47400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Porygon-Z - Nasty Plot - TM63
  (474, 47400, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 39),
  -- Porygon-Z - Recycle - TM67
  (474, 47400, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 40),
  -- Porygon-Z - Giga Impact - TM68
  (474, 47400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Porygon-Z - Flash - TM70
  (474, 47400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Porygon-Z - Thunder Wave - TM73
  (474, 47400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Porygon-Z - Psych Up - TM77
  (474, 47400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 44),
  -- Porygon-Z - Dark Pulse - TM79
  (474, 47400, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 45),
  -- Porygon-Z - Sleep Talk - TM82
  (474, 47400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Porygon-Z - Dream Eater - TM85
  (474, 47400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 47),
  -- Porygon-Z - Swagger - TM87
  (474, 47400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Porygon-Z - Substitute - TM90
  (474, 47400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Porygon-Z - Trick Room - TM92
  (474, 47400, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 50),
  -- Gallade - Slash - Starting Move
  (475, 47500, 163, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gallade - Night Slash - Starting Move
  (475, 47500, 400, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Gallade - Growl - Starting Move
  (475, 47500, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Gallade - Disarming Voice - Starting Move
  (475, 47500, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Gallade - Hypnosis - Starting Move
  (475, 47500, 95, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Gallade - Draining Kiss - Starting Move
  (475, 47500, 577, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Gallade - Imprison - Starting Move
  (475, 47500, 286, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Gallade - Psybeam - Starting Move
  (475, 47500, 60, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Gallade - Life Dew - Starting Move
  (475, 47500, 791, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Gallade - Charm - Starting Move
  (475, 47500, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Gallade - Calm Mind - Starting Move
  (475, 47500, 347, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Gallade - Psychic - Starting Move
  (475, 47500, 94, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Gallade - Dream Eater - Starting Move
  (475, 47500, 138, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Gallade - Future Sight - Starting Move
  (475, 47500, 248, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Gallade - Leer - Starting Move
  (475, 47500, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Gallade - Fury Cutter - Starting Move
  (475, 47500, 210, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Gallade - Double Team - Starting Move
  (475, 47500, 104, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Gallade - Confusion - Starting Move
  (475, 47500, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 18),
  -- Gallade - Slash - Evolution
  (475, 47500, 163, 21, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Gallade - Helping Hand - Level 9
  (475, 47500, 270, 21, NULL, 1, 9, NULL, NULL, NULL, 20),
  -- Gallade - Feint - Level 12
  (475, 47500, 364, 21, NULL, 1, 12, NULL, NULL, NULL, 21),
  -- Gallade - Teleport - Level 15
  (475, 47500, 100, 21, NULL, 1, 15, NULL, NULL, NULL, 22),
  -- Gallade - Aerial Ace - Level 18
  (475, 47500, 332, 21, NULL, 1, 18, NULL, NULL, NULL, 23),
  -- Gallade - False Swipe - Level 23
  (475, 47500, 206, 21, NULL, 1, 23, NULL, NULL, NULL, 24),
  -- Gallade - Protect - Level 28
  (475, 47500, 182, 21, NULL, 1, 28, NULL, NULL, NULL, 25),
  -- Gallade - Swords Dance - Level 35
  (475, 47500, 14, 21, NULL, 1, 35, NULL, NULL, NULL, 26),
  -- Gallade - Psycho Cut - Level 42
  (475, 47500, 427, 21, NULL, 1, 42, NULL, NULL, NULL, 27),
  -- Gallade - Heal Pulse - Level 49
  (475, 47500, 505, 21, NULL, 1, 49, NULL, NULL, NULL, 28),
  -- Gallade - Quick Guard - Level 56
  (475, 47500, 501, 21, NULL, 1, 56, NULL, NULL, NULL, 29),
  -- Gallade - Wide Guard - Level 56
  (475, 47500, 469, 21, NULL, 1, 56, NULL, NULL, NULL, 30),
  -- Gallade - Close Combat - Level 63
  (475, 47500, 370, 21, NULL, 1, 63, NULL, NULL, NULL, 31),
  -- Gallade - Focus Punch - TM01
  (475, 47500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 32),
  -- Gallade - Calm Mind - TM04
  (475, 47500, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 33),
  -- Gallade - Bulk Up - TM08
  (475, 47500, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 34),
  -- Gallade - Work Up - TM10
  (475, 47500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 35),
  -- Gallade - Sunny Day - TM11
  (475, 47500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 36),
  -- Gallade - Taunt - TM12
  (475, 47500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 37),
  -- Gallade - Hyper Beam - TM15
  (475, 47500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 38),
  -- Gallade - Light Screen - TM16
  (475, 47500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 39),
  -- Gallade - Protect - TM17
  (475, 47500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 40),
  -- Gallade - Rain Dance - TM18
  (475, 47500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 41),
  -- Gallade - Safeguard - TM20
  (475, 47500, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 42),
  -- Gallade - Dazzling Gleam - TM21
  (475, 47500, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 43),
  -- Gallade - Thunderbolt - TM24
  (475, 47500, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 44),
  -- Gallade - Earthquake - TM26
  (475, 47500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 45),
  -- Gallade - Low Sweep - TM27
  (475, 47500, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 46),
  -- Gallade - Psychic - TM29
  (475, 47500, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 47),
  -- Gallade - Shadow Ball - TM30
  (475, 47500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 48),
  -- Gallade - Brick Break - TM31
  (475, 47500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 49),
  -- Gallade - Double Team - TM32
  (475, 47500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 50),
  -- Gallade - Reflect - TM33
  (475, 47500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 51),
  -- Gallade - Shock Wave - TM34
  (475, 47500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 52),
  -- Gallade - Rock Tomb - TM39
  (475, 47500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 53),
  -- Gallade - Aerial Ace - TM40
  (475, 47500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 54),
  -- Gallade - Torment - TM41
  (475, 47500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 55),
  -- Gallade - Facade - TM42
  (475, 47500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 56),
  -- Gallade - Rest - TM44
  (475, 47500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 57),
  -- Gallade - Attract - TM45
  (475, 47500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 58),
  -- Gallade - Thief - TM46
  (475, 47500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 59),
  -- Gallade - Skill Swap - TM48
  (475, 47500, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 60),
  -- Gallade - Focus Blast - TM52
  (475, 47500, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 61),
  -- Gallade - Energy Ball - TM53
  (475, 47500, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 62),
  -- Gallade - False Swipe - TM54
  (475, 47500, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 63),
  -- Gallade - Fling - TM56
  (475, 47500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 64),
  -- Gallade - Charge Beam - TM57
  (475, 47500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 65),
  -- Gallade - Endure - TM58
  (475, 47500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 66),
  -- Gallade - Drain Punch - TM60
  (475, 47500, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 67),
  -- Gallade - Will-O-Wisp - TM61
  (475, 47500, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 68),
  -- Gallade - Recycle - TM67
  (475, 47500, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 69),
  -- Gallade - Giga Impact - TM68
  (475, 47500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 70),
  -- Gallade - Flash - TM70
  (475, 47500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 71),
  -- Gallade - Stone Edge - TM71
  (475, 47500, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 72),
  -- Gallade - Thunder Wave - TM73
  (475, 47500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 73),
  -- Gallade - Swords Dance - TM75
  (475, 47500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 74),
  -- Gallade - Psych Up - TM77
  (475, 47500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 75),
  -- Gallade - Rock Slide - TM80
  (475, 47500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 76),
  -- Gallade - X-Scissor - TM81
  (475, 47500, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 77),
  -- Gallade - Sleep Talk - TM82
  (475, 47500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 78),
  -- Gallade - Bulldoze - TM83
  (475, 47500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 79),
  -- Gallade - Poison Jab - TM84
  (475, 47500, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 80),
  -- Gallade - Dream Eater - TM85
  (475, 47500, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 81),
  -- Gallade - Grass Knot - TM86
  (475, 47500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 82),
  -- Gallade - Swagger - TM87
  (475, 47500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 83),
  -- Gallade - Substitute - TM90
  (475, 47500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 84),
  -- Gallade - Trick Room - TM92
  (475, 47500, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 85),
  -- Gallade - Cut - TM93
  (475, 47500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 86),
  -- Gallade - Strength - TM96
  (475, 47500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 87),
  -- Gallade - Rock Smash - TM98
  (475, 47500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 88),
  -- Gallade - Ally Switch - Egg
  (475, 47500, 502, 21, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Gallade - Confuse Ray - Egg
  (475, 47500, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Gallade - Destiny Bond - Egg
  (475, 47500, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Gallade - Disable - Egg
  (475, 47500, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Gallade - Encore - Egg
  (475, 47500, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Gallade - Grudge - Egg
  (475, 47500, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Gallade - Knock Off - Egg
  (475, 47500, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Gallade - Mean Look - Egg
  (475, 47500, 212, 21, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Gallade - Memento - Egg
  (475, 47500, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 97),
  -- Gallade - Misty Terrain - Egg
  (475, 47500, 581, 21, NULL, 5, NULL, NULL, NULL, NULL, 98),
  -- Gallade - Shadow Sneak - Egg
  (475, 47500, 425, 21, NULL, 5, NULL, NULL, NULL, NULL, 99),
  -- Probopass - Tri Attack - Starting Move
  (476, 47600, 161, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Probopass - Magnetic Flux - Starting Move
  (476, 47600, 602, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Probopass - Magnet Rise - Starting Move
  (476, 47600, 393, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Probopass - Gravity - Starting Move
  (476, 47600, 356, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Probopass - Wide Guard - Starting Move
  (476, 47600, 469, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Probopass - Harden - Starting Move
  (476, 47600, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Probopass - Rock Throw - Starting Move
  (476, 47600, 88, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Probopass - Tackle - Starting Move
  (476, 47600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Probopass - Iron Defense - Starting Move
  (476, 47600, 334, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Probopass - Block - Starting Move
  (476, 47600, 335, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Probopass - Tri Attack - Evolution
  (476, 47600, 161, 21, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Probopass - Iron Defense - Level 4
  (476, 47600, 334, 21, NULL, 1, 4, NULL, NULL, NULL, 12),
  -- Probopass - Block - Level 7
  (476, 47600, 335, 21, NULL, 1, 7, NULL, NULL, NULL, 13),
  -- Probopass - Smack Down - Level 10
  (476, 47600, 479, 21, NULL, 1, 10, NULL, NULL, NULL, 14),
  -- Probopass - Thunder Wave - Level 13
  (476, 47600, 86, 21, NULL, 1, 13, NULL, NULL, NULL, 15),
  -- Probopass - Rest - Level 16
  (476, 47600, 156, 21, NULL, 1, 16, NULL, NULL, NULL, 16),
  -- Probopass - Spark - Level 19
  (476, 47600, 209, 21, NULL, 1, 19, NULL, NULL, NULL, 17),
  -- Probopass - Rock Slide - Level 22
  (476, 47600, 157, 21, NULL, 1, 22, NULL, NULL, NULL, 18),
  -- Probopass - Power Gem - Level 25
  (476, 47600, 408, 21, NULL, 1, 25, NULL, NULL, NULL, 19),
  -- Probopass - Rock Blast - Level 28
  (476, 47600, 350, 21, NULL, 1, 28, NULL, NULL, NULL, 20),
  -- Probopass - Discharge - Level 31
  (476, 47600, 435, 21, NULL, 1, 31, NULL, NULL, NULL, 21),
  -- Probopass - Sandstorm - Level 34
  (476, 47600, 201, 21, NULL, 1, 34, NULL, NULL, NULL, 22),
  -- Probopass - Earth Power - Level 37
  (476, 47600, 414, 21, NULL, 1, 37, NULL, NULL, NULL, 23),
  -- Probopass - Stone Edge - Level 40
  (476, 47600, 444, 21, NULL, 1, 40, NULL, NULL, NULL, 24),
  -- Probopass - Lock-On - Level 43
  (476, 47600, 199, 21, NULL, 1, 43, NULL, NULL, NULL, 25),
  -- Probopass - Zap Cannon - Level 43
  (476, 47600, 192, 21, NULL, 1, 43, NULL, NULL, NULL, 26),
  -- Probopass - Body Press - Level 50
  (476, 47600, 776, 21, NULL, 1, 50, NULL, NULL, NULL, 27),
  -- Probopass - Sunny Day - TM11
  (476, 47600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 28),
  -- Probopass - Taunt - TM12
  (476, 47600, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 29),
  -- Probopass - Hyper Beam - TM15
  (476, 47600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 30),
  -- Probopass - Protect - TM17
  (476, 47600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 31),
  -- Probopass - Dazzling Gleam - TM21
  (476, 47600, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 32),
  -- Probopass - Thunderbolt - TM24
  (476, 47600, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 33),
  -- Probopass - Thunder - TM25
  (476, 47600, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 34),
  -- Probopass - Earthquake - TM26
  (476, 47600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 35),
  -- Probopass - Double Team - TM32
  (476, 47600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 36),
  -- Probopass - Shock Wave - TM34
  (476, 47600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 37),
  -- Probopass - Sandstorm - TM37
  (476, 47600, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 38),
  -- Probopass - Rock Tomb - TM39
  (476, 47600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 39),
  -- Probopass - Torment - TM41
  (476, 47600, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 40),
  -- Probopass - Facade - TM42
  (476, 47600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 41),
  -- Probopass - Volt Switch - TM43
  (476, 47600, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 42),
  -- Probopass - Rest - TM44
  (476, 47600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 43),
  -- Probopass - Attract - TM45
  (476, 47600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 44),
  -- Probopass - Endure - TM58
  (476, 47600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 45),
  -- Probopass - Explosion - TM64
  (476, 47600, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 46),
  -- Probopass - Giga Impact - TM68
  (476, 47600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Probopass - Rock Polish - TM69
  (476, 47600, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 48),
  -- Probopass - Stone Edge - TM71
  (476, 47600, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 49),
  -- Probopass - Thunder Wave - TM73
  (476, 47600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 50),
  -- Probopass - Stealth Rock - TM76
  (476, 47600, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 51),
  -- Probopass - Rock Slide - TM80
  (476, 47600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 52),
  -- Probopass - Sleep Talk - TM82
  (476, 47600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 53),
  -- Probopass - Bulldoze - TM83
  (476, 47600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 54),
  -- Probopass - Swagger - TM87
  (476, 47600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 55),
  -- Probopass - Substitute - TM90
  (476, 47600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 56),
  -- Probopass - Flash Cannon - TM91
  (476, 47600, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 57),
  -- Probopass - Strength - TM96
  (476, 47600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 58),
  -- Probopass - Rock Smash - TM98
  (476, 47600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 59),
  -- Probopass - Block - Egg
  (476, 47600, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Probopass - Double-Edge - Egg
  (476, 47600, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Probopass - Rollout - Egg
  (476, 47600, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Probopass - Wide Guard - Egg
  (476, 47600, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Dusknoir - Shadow Punch - Starting Move
  (477, 47700, 325, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Dusknoir - Fire Punch - Starting Move
  (477, 47700, 7, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Dusknoir - Ice Punch - Starting Move
  (477, 47700, 8, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Dusknoir - Thunder Punch - Starting Move
  (477, 47700, 9, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Dusknoir - Gravity - Starting Move
  (477, 47700, 356, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Dusknoir - Bind - Starting Move
  (477, 47700, 20, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Dusknoir - Astonish - Starting Move
  (477, 47700, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Dusknoir - Leer - Starting Move
  (477, 47700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Dusknoir - Disable - Starting Move
  (477, 47700, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Dusknoir - Shadow Sneak - Starting Move
  (477, 47700, 425, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Dusknoir - Confuse Ray - Level 12
  (477, 47700, 109, 21, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Dusknoir - Night Shade - Level 16
  (477, 47700, 101, 21, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Dusknoir - Payback - Level 20
  (477, 47700, 371, 21, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Dusknoir - Will-O-Wisp - Level 24
  (477, 47700, 261, 21, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Dusknoir - Mean Look - Level 28
  (477, 47700, 212, 21, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Dusknoir - Hex - Level 32
  (477, 47700, 506, 21, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Dusknoir - Curse - Level 36
  (477, 47700, 174, 21, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Dusknoir - Shadow Ball - Level 42
  (477, 47700, 247, 21, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Dusknoir - Future Sight - Level 48
  (477, 47700, 248, 21, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Dusknoir - Destiny Bond - Level 54
  (477, 47700, 194, 21, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Dusknoir - Focus Punch - TM01
  (477, 47700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 21),
  -- Dusknoir - Calm Mind - TM04
  (477, 47700, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 22),
  -- Dusknoir - Sunny Day - TM11
  (477, 47700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Dusknoir - Taunt - TM12
  (477, 47700, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Dusknoir - Ice Beam - TM13
  (477, 47700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 25),
  -- Dusknoir - Blizzard - TM14
  (477, 47700, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 26),
  -- Dusknoir - Hyper Beam - TM15
  (477, 47700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Dusknoir - Protect - TM17
  (477, 47700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Dusknoir - Rain Dance - TM18
  (477, 47700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 29),
  -- Dusknoir - Earthquake - TM26
  (477, 47700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 30),
  -- Dusknoir - Psychic - TM29
  (477, 47700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 31),
  -- Dusknoir - Shadow Ball - TM30
  (477, 47700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 32),
  -- Dusknoir - Brick Break - TM31
  (477, 47700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 33),
  -- Dusknoir - Double Team - TM32
  (477, 47700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Dusknoir - Rock Tomb - TM39
  (477, 47700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Dusknoir - Torment - TM41
  (477, 47700, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 36),
  -- Dusknoir - Facade - TM42
  (477, 47700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Dusknoir - Rest - TM44
  (477, 47700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Dusknoir - Attract - TM45
  (477, 47700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Dusknoir - Thief - TM46
  (477, 47700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 40),
  -- Dusknoir - Skill Swap - TM48
  (477, 47700, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 41),
  -- Dusknoir - Focus Blast - TM52
  (477, 47700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 42),
  -- Dusknoir - Fling - TM56
  (477, 47700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 43),
  -- Dusknoir - Charge Beam - TM57
  (477, 47700, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 44),
  -- Dusknoir - Endure - TM58
  (477, 47700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 45),
  -- Dusknoir - Will-O-Wisp - TM61
  (477, 47700, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 46),
  -- Dusknoir - Payback - TM66
  (477, 47700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 47),
  -- Dusknoir - Giga Impact - TM68
  (477, 47700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 48),
  -- Dusknoir - Flash - TM70
  (477, 47700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 49),
  -- Dusknoir - Psych Up - TM77
  (477, 47700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 50),
  -- Dusknoir - Dark Pulse - TM79
  (477, 47700, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 51),
  -- Dusknoir - Rock Slide - TM80
  (477, 47700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 52),
  -- Dusknoir - Sleep Talk - TM82
  (477, 47700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 53),
  -- Dusknoir - Bulldoze - TM83
  (477, 47700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 54),
  -- Dusknoir - Dream Eater - TM85
  (477, 47700, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 55),
  -- Dusknoir - Swagger - TM87
  (477, 47700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 56),
  -- Dusknoir - Substitute - TM90
  (477, 47700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 57),
  -- Dusknoir - Trick Room - TM92
  (477, 47700, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 58),
  -- Dusknoir - Strength - TM96
  (477, 47700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 59),
  -- Dusknoir - Rock Smash - TM98
  (477, 47700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 60),
  -- Dusknoir - Destiny Bond - Egg
  (477, 47700, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Dusknoir - Grudge - Egg
  (477, 47700, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Dusknoir - Haze - Egg
  (477, 47700, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Dusknoir - Imprison - Egg
  (477, 47700, 286, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Dusknoir - Memento - Egg
  (477, 47700, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Dusknoir - Pain Split - Egg
  (477, 47700, 220, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Froslass - Hex - Starting Move
  (478, 47800, 506, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Froslass - Destiny Bond - Starting Move
  (478, 47800, 194, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Froslass - Protect - Starting Move
  (478, 47800, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Froslass - Bite - Starting Move
  (478, 47800, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Froslass - Ice Fang - Starting Move
  (478, 47800, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Froslass - Headbutt - Starting Move
  (478, 47800, 29, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Froslass - Crunch - Starting Move
  (478, 47800, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Froslass - Powder Snow - Starting Move
  (478, 47800, 181, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Froslass - Astonish - Starting Move
  (478, 47800, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Froslass - Leer - Starting Move
  (478, 47800, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Froslass - Double Team - Starting Move
  (478, 47800, 104, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Froslass - Hex - Evolution
  (478, 47800, 506, 21, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Froslass - Ice Shard - Level 15
  (478, 47800, 420, 21, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Froslass - Draining Kiss - Level 20
  (478, 47800, 577, 21, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Froslass - Icy Wind - Level 25
  (478, 47800, 196, 21, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Froslass - Frost Breath - Level 30
  (478, 47800, 524, 21, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Froslass - Confuse Ray - Level 35
  (478, 47800, 109, 21, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Froslass - Hail - Level 40
  (478, 47800, 258, 21, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Froslass - Will-O-Wisp - Level 47
  (478, 47800, 261, 21, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Froslass - Aurora Veil - Level 54
  (478, 47800, 694, 21, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Froslass - Shadow Ball - Level 61
  (478, 47800, 247, 21, NULL, 1, 61, NULL, NULL, NULL, 21),
  -- Froslass - Blizzard - Level 68
  (478, 47800, 59, 21, NULL, 1, 68, NULL, NULL, NULL, 22),
  -- Froslass - Water Pulse - TM03
  (478, 47800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 23),
  -- Froslass - Hail - TM07
  (478, 47800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 24),
  -- Froslass - Taunt - TM12
  (478, 47800, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 25),
  -- Froslass - Ice Beam - TM13
  (478, 47800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 26),
  -- Froslass - Blizzard - TM14
  (478, 47800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 27),
  -- Froslass - Hyper Beam - TM15
  (478, 47800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Froslass - Light Screen - TM16
  (478, 47800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 29),
  -- Froslass - Protect - TM17
  (478, 47800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 30),
  -- Froslass - Rain Dance - TM18
  (478, 47800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 31),
  -- Froslass - Safeguard - TM20
  (478, 47800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 32),
  -- Froslass - Thunderbolt - TM24
  (478, 47800, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 33),
  -- Froslass - Thunder - TM25
  (478, 47800, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 34),
  -- Froslass - Psychic - TM29
  (478, 47800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 35),
  -- Froslass - Shadow Ball - TM30
  (478, 47800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 36),
  -- Froslass - Double Team - TM32
  (478, 47800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Froslass - Reflect - TM33
  (478, 47800, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 38),
  -- Froslass - Shock Wave - TM34
  (478, 47800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 39),
  -- Froslass - Torment - TM41
  (478, 47800, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 40),
  -- Froslass - Facade - TM42
  (478, 47800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 41),
  -- Froslass - Rest - TM44
  (478, 47800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 42),
  -- Froslass - Attract - TM45
  (478, 47800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 43),
  -- Froslass - Fling - TM56
  (478, 47800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 44),
  -- Froslass - Endure - TM58
  (478, 47800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 45),
  -- Froslass - Will-O-Wisp - TM61
  (478, 47800, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 46),
  -- Froslass - Payback - TM66
  (478, 47800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 47),
  -- Froslass - Giga Impact - TM68
  (478, 47800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 48),
  -- Froslass - Flash - TM70
  (478, 47800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 49),
  -- Froslass - Avalanche - TM72
  (478, 47800, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 50),
  -- Froslass - Thunder Wave - TM73
  (478, 47800, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 51),
  -- Froslass - Psych Up - TM77
  (478, 47800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 52),
  -- Froslass - Sleep Talk - TM82
  (478, 47800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 53),
  -- Froslass - Dream Eater - TM85
  (478, 47800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 54),
  -- Froslass - Swagger - TM87
  (478, 47800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 55),
  -- Froslass - Substitute - TM90
  (478, 47800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 56),
  -- Froslass - Block - Egg
  (478, 47800, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Froslass - Disable - Egg
  (478, 47800, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Froslass - Fake Tears - Egg
  (478, 47800, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Froslass - Hex - Egg
  (478, 47800, 506, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Froslass - Icicle Crash - Egg
  (478, 47800, 556, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Froslass - Rollout - Egg
  (478, 47800, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Froslass - Spikes - Egg
  (478, 47800, 191, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Froslass - Switcheroo - Egg
  (478, 47800, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Froslass - Weather Ball - Egg
  (478, 47800, 311, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rotom - Astonish - Starting Move
  (479, 47900, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Rotom - Double Team - Starting Move
  (479, 47900, 104, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Rotom - Thunder Shock - Level 5
  (479, 47900, 84, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom - Confuse Ray - Level 10
  (479, 47900, 109, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom - Charge - Level 15
  (479, 47900, 268, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom - Electro Ball - Level 20
  (479, 47900, 486, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom - Thunder Wave - Level 25
  (479, 47900, 86, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom - Shock Wave - Level 30
  (479, 47900, 351, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom - Hex - Level 35
  (479, 47900, 506, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom - Substitute - Level 40
  (479, 47900, 164, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom - Trick - Level 45
  (479, 47900, 271, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom - Discharge - Level 50
  (479, 47900, 435, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom - Uproar - Level 55
  (479, 47900, 253, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom - Sunny Day - TM11
  (479, 47900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Rotom - Light Screen - TM16
  (479, 47900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 15),
  -- Rotom - Protect - TM17
  (479, 47900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Rotom - Rain Dance - TM18
  (479, 47900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Rotom - Thunderbolt - TM24
  (479, 47900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 18),
  -- Rotom - Thunder - TM25
  (479, 47900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 19),
  -- Rotom - Shadow Ball - TM30
  (479, 47900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 20),
  -- Rotom - Double Team - TM32
  (479, 47900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Rotom - Reflect - TM33
  (479, 47900, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 22),
  -- Rotom - Shock Wave - TM34
  (479, 47900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 23),
  -- Rotom - Facade - TM42
  (479, 47900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Rotom - Volt Switch - TM43
  (479, 47900, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 25),
  -- Rotom - Rest - TM44
  (479, 47900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Rotom - Thief - TM46
  (479, 47900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Rotom - Charge Beam - TM57
  (479, 47900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 28),
  -- Rotom - Endure - TM58
  (479, 47900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Rotom - Will-O-Wisp - TM61
  (479, 47900, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 30),
  -- Rotom - Nasty Plot - TM63
  (479, 47900, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 31),
  -- Rotom - Flash - TM70
  (479, 47900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Rotom - Thunder Wave - TM73
  (479, 47900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 33),
  -- Rotom - Psych Up - TM77
  (479, 47900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 34),
  -- Rotom - Dark Pulse - TM79
  (479, 47900, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 35),
  -- Rotom - Sleep Talk - TM82
  (479, 47900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 36),
  -- Rotom - Dream Eater - TM85
  (479, 47900, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 37),
  -- Rotom - Swagger - TM87
  (479, 47900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Rotom - Substitute - TM90
  (479, 47900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Uxie - Confusion - Starting Move
  (480, 48000, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Uxie - Rest - Starting Move
  (480, 48000, 156, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Uxie - Swift - Level 7
  (480, 48000, 129, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Uxie - Endure - Level 14
  (480, 48000, 203, 21, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Uxie - Psybeam - Level 21
  (480, 48000, 60, 21, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Uxie - Imprison - Level 28
  (480, 48000, 286, 21, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Uxie - Extrasensory - Level 35
  (480, 48000, 326, 21, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Uxie - Amnesia - Level 42
  (480, 48000, 133, 21, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Uxie - Psychic - Level 49
  (480, 48000, 94, 21, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Uxie - Yawn - Level 56
  (480, 48000, 281, 21, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Uxie - Future Sight - Level 63
  (480, 48000, 248, 21, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Uxie - Flail - Level 70
  (480, 48000, 175, 21, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Uxie - Memento - Level 77
  (480, 48000, 262, 21, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Uxie - Water Pulse - TM03
  (480, 48000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Uxie - Calm Mind - TM04
  (480, 48000, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 15),
  -- Uxie - Sunny Day - TM11
  (480, 48000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Uxie - Hyper Beam - TM15
  (480, 48000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 17),
  -- Uxie - Light Screen - TM16
  (480, 48000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 18),
  -- Uxie - Protect - TM17
  (480, 48000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Uxie - Rain Dance - TM18
  (480, 48000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Uxie - Giga Drain - TM19
  (480, 48000, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 21),
  -- Uxie - Safeguard - TM20
  (480, 48000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Uxie - Dazzling Gleam - TM21
  (480, 48000, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 23),
  -- Uxie - Solar Beam - TM22
  (480, 48000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Uxie - Iron Tail - TM23
  (480, 48000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Uxie - Thunderbolt - TM24
  (480, 48000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Uxie - Thunder - TM25
  (480, 48000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Uxie - Psychic - TM29
  (480, 48000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Uxie - Shadow Ball - TM30
  (480, 48000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Uxie - Double Team - TM32
  (480, 48000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Uxie - Reflect - TM33
  (480, 48000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 31),
  -- Uxie - Shock Wave - TM34
  (480, 48000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Uxie - Sandstorm - TM37
  (480, 48000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Uxie - Facade - TM42
  (480, 48000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Uxie - Rest - TM44
  (480, 48000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Uxie - Skill Swap - TM48
  (480, 48000, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 36),
  -- Uxie - Energy Ball - TM53
  (480, 48000, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 37),
  -- Uxie - Fling - TM56
  (480, 48000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Uxie - Charge Beam - TM57
  (480, 48000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Uxie - Endure - TM58
  (480, 48000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Uxie - Drain Punch - TM60
  (480, 48000, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 41),
  -- Uxie - Nasty Plot - TM63
  (480, 48000, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 42),
  -- Uxie - Recycle - TM67
  (480, 48000, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 43),
  -- Uxie - Giga Impact - TM68
  (480, 48000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Uxie - Flash - TM70
  (480, 48000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 45),
  -- Uxie - Thunder Wave - TM73
  (480, 48000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 46),
  -- Uxie - Stealth Rock - TM76
  (480, 48000, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 47),
  -- Uxie - Psych Up - TM77
  (480, 48000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 48),
  -- Uxie - Sleep Talk - TM82
  (480, 48000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Uxie - Dream Eater - TM85
  (480, 48000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 50),
  -- Uxie - Grass Knot - TM86
  (480, 48000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 51),
  -- Uxie - Swagger - TM87
  (480, 48000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Uxie - U-turn - TM89
  (480, 48000, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 53),
  -- Uxie - Substitute - TM90
  (480, 48000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 54),
  -- Uxie - Trick Room - TM92
  (480, 48000, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 55),
  -- Mesprit - Confusion - Starting Move
  (481, 48100, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mesprit - Rest - Starting Move
  (481, 48100, 156, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mesprit - Swift - Level 7
  (481, 48100, 129, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Mesprit - Protect - Level 14
  (481, 48100, 182, 21, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Mesprit - Psybeam - Level 21
  (481, 48100, 60, 21, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mesprit - Imprison - Level 28
  (481, 48100, 286, 21, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Mesprit - Extrasensory - Level 35
  (481, 48100, 326, 21, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Mesprit - Charm - Level 42
  (481, 48100, 204, 21, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Mesprit - Psychic - Level 49
  (481, 48100, 94, 21, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Mesprit - Flatter - Level 56
  (481, 48100, 260, 21, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Mesprit - Future Sight - Level 63
  (481, 48100, 248, 21, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Mesprit - Copycat - Level 70
  (481, 48100, 383, 21, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Mesprit - Healing Wish - Level 77
  (481, 48100, 361, 21, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Mesprit - Water Pulse - TM03
  (481, 48100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Mesprit - Calm Mind - TM04
  (481, 48100, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 15),
  -- Mesprit - Sunny Day - TM11
  (481, 48100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Mesprit - Ice Beam - TM13
  (481, 48100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Mesprit - Blizzard - TM14
  (481, 48100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Mesprit - Hyper Beam - TM15
  (481, 48100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Mesprit - Light Screen - TM16
  (481, 48100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Mesprit - Protect - TM17
  (481, 48100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Mesprit - Rain Dance - TM18
  (481, 48100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Mesprit - Safeguard - TM20
  (481, 48100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Mesprit - Dazzling Gleam - TM21
  (481, 48100, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 24),
  -- Mesprit - Iron Tail - TM23
  (481, 48100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Mesprit - Thunderbolt - TM24
  (481, 48100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Mesprit - Thunder - TM25
  (481, 48100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Mesprit - Psychic - TM29
  (481, 48100, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Mesprit - Shadow Ball - TM30
  (481, 48100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Mesprit - Double Team - TM32
  (481, 48100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Mesprit - Reflect - TM33
  (481, 48100, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 31),
  -- Mesprit - Shock Wave - TM34
  (481, 48100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Mesprit - Sandstorm - TM37
  (481, 48100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Mesprit - Facade - TM42
  (481, 48100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Mesprit - Rest - TM44
  (481, 48100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Mesprit - Skill Swap - TM48
  (481, 48100, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 36),
  -- Mesprit - Energy Ball - TM53
  (481, 48100, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 37),
  -- Mesprit - Fling - TM56
  (481, 48100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Mesprit - Charge Beam - TM57
  (481, 48100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Mesprit - Endure - TM58
  (481, 48100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Mesprit - Drain Punch - TM60
  (481, 48100, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 41),
  -- Mesprit - Nasty Plot - TM63
  (481, 48100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 42),
  -- Mesprit - Recycle - TM67
  (481, 48100, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 43),
  -- Mesprit - Giga Impact - TM68
  (481, 48100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Mesprit - Flash - TM70
  (481, 48100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 45),
  -- Mesprit - Thunder Wave - TM73
  (481, 48100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 46),
  -- Mesprit - Stealth Rock - TM76
  (481, 48100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 47),
  -- Mesprit - Psych Up - TM77
  (481, 48100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 48),
  -- Mesprit - Sleep Talk - TM82
  (481, 48100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Mesprit - Dream Eater - TM85
  (481, 48100, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 50),
  -- Mesprit - Grass Knot - TM86
  (481, 48100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 51),
  -- Mesprit - Swagger - TM87
  (481, 48100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Mesprit - U-turn - TM89
  (481, 48100, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 53),
  -- Mesprit - Substitute - TM90
  (481, 48100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 54),
  -- Mesprit - Trick Room - TM92
  (481, 48100, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 55),
  -- Azelf - Confusion - Starting Move
  (482, 48200, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Azelf - Rest - Starting Move
  (482, 48200, 156, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Azelf - Swift - Level 7
  (482, 48200, 129, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Azelf - Detect - Level 14
  (482, 48200, 197, 21, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Azelf - Psybeam - Level 21
  (482, 48200, 60, 21, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Azelf - Imprison - Level 28
  (482, 48200, 286, 21, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Azelf - Extrasensory - Level 35
  (482, 48200, 326, 21, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Azelf - Nasty Plot - Level 42
  (482, 48200, 417, 21, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Azelf - Psychic - Level 49
  (482, 48200, 94, 21, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Azelf - Uproar - Level 56
  (482, 48200, 253, 21, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Azelf - Future Sight - Level 63
  (482, 48200, 248, 21, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Azelf - Last Resort - Level 70
  (482, 48200, 387, 21, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Azelf - Explosion - Level 77
  (482, 48200, 153, 21, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Azelf - Water Pulse - TM03
  (482, 48200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Azelf - Calm Mind - TM04
  (482, 48200, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 15),
  -- Azelf - Sunny Day - TM11
  (482, 48200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Azelf - Taunt - TM12
  (482, 48200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 17),
  -- Azelf - Hyper Beam - TM15
  (482, 48200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Azelf - Light Screen - TM16
  (482, 48200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Azelf - Protect - TM17
  (482, 48200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Azelf - Rain Dance - TM18
  (482, 48200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Azelf - Safeguard - TM20
  (482, 48200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Azelf - Dazzling Gleam - TM21
  (482, 48200, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 23),
  -- Azelf - Iron Tail - TM23
  (482, 48200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Azelf - Thunderbolt - TM24
  (482, 48200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Azelf - Thunder - TM25
  (482, 48200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Azelf - Psychic - TM29
  (482, 48200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Azelf - Shadow Ball - TM30
  (482, 48200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Azelf - Double Team - TM32
  (482, 48200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Azelf - Reflect - TM33
  (482, 48200, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 30),
  -- Azelf - Shock Wave - TM34
  (482, 48200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 31),
  -- Azelf - Flamethrower - TM35
  (482, 48200, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 32),
  -- Azelf - Sandstorm - TM37
  (482, 48200, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Azelf - Fire Blast - TM38
  (482, 48200, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 34),
  -- Azelf - Torment - TM41
  (482, 48200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 35),
  -- Azelf - Facade - TM42
  (482, 48200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Azelf - Rest - TM44
  (482, 48200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Azelf - Skill Swap - TM48
  (482, 48200, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 38),
  -- Azelf - Energy Ball - TM53
  (482, 48200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 39),
  -- Azelf - Fling - TM56
  (482, 48200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Azelf - Charge Beam - TM57
  (482, 48200, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 41),
  -- Azelf - Endure - TM58
  (482, 48200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Azelf - Drain Punch - TM60
  (482, 48200, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 43),
  -- Azelf - Nasty Plot - TM63
  (482, 48200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 44),
  -- Azelf - Explosion - TM64
  (482, 48200, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 45),
  -- Azelf - Payback - TM66
  (482, 48200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 46),
  -- Azelf - Recycle - TM67
  (482, 48200, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 47),
  -- Azelf - Giga Impact - TM68
  (482, 48200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 48),
  -- Azelf - Flash - TM70
  (482, 48200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 49),
  -- Azelf - Thunder Wave - TM73
  (482, 48200, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 50),
  -- Azelf - Stealth Rock - TM76
  (482, 48200, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 51),
  -- Azelf - Psych Up - TM77
  (482, 48200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 52),
  -- Azelf - Sleep Talk - TM82
  (482, 48200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 53),
  -- Azelf - Dream Eater - TM85
  (482, 48200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 54),
  -- Azelf - Grass Knot - TM86
  (482, 48200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 55),
  -- Azelf - Swagger - TM87
  (482, 48200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 56),
  -- Azelf - U-turn - TM89
  (482, 48200, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 57),
  -- Azelf - Substitute - TM90
  (482, 48200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 58),
  -- Azelf - Trick Room - TM92
  (482, 48200, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 59),
  -- Dialga - Scary Face - Starting Move
  (483, 48300, 184, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Dialga - Metal Claw - Starting Move
  (483, 48300, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Dialga - Dragon Breath - Level 8
  (483, 48300, 225, 21, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Dialga - Ancient Power - Level 16
  (483, 48300, 246, 21, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Dialga - Slash - Level 24
  (483, 48300, 163, 21, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Dialga - Flash Cannon - Level 32
  (483, 48300, 430, 21, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Dialga - Roar of Time - Level 40
  (483, 48300, 459, 21, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Dialga - Dragon Claw - Level 48
  (483, 48300, 337, 21, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Dialga - Aura Sphere - Level 56
  (483, 48300, 396, 21, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Dialga - Power Gem - Level 64
  (483, 48300, 408, 21, NULL, 1, 64, NULL, NULL, NULL, 10),
  -- Dialga - Metal Burst - Level 72
  (483, 48300, 368, 21, NULL, 1, 72, NULL, NULL, NULL, 11),
  -- Dialga - Earth Power - Level 80
  (483, 48300, 414, 21, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Dialga - Iron Tail - Level 88
  (483, 48300, 231, 21, NULL, 1, 88, NULL, NULL, NULL, 13),
  -- Dialga - Dragon Claw - TM02
  (483, 48300, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 14),
  -- Dialga - Roar - TM05
  (483, 48300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 15),
  -- Dialga - Bulk Up - TM08
  (483, 48300, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 16),
  -- Dialga - Sunny Day - TM11
  (483, 48300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Dialga - Ice Beam - TM13
  (483, 48300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Dialga - Blizzard - TM14
  (483, 48300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Dialga - Hyper Beam - TM15
  (483, 48300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Dialga - Protect - TM17
  (483, 48300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Dialga - Rain Dance - TM18
  (483, 48300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Dialga - Safeguard - TM20
  (483, 48300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Dialga - Iron Tail - TM23
  (483, 48300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Dialga - Thunderbolt - TM24
  (483, 48300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Dialga - Thunder - TM25
  (483, 48300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Dialga - Earthquake - TM26
  (483, 48300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Dialga - Brick Break - TM31
  (483, 48300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Dialga - Double Team - TM32
  (483, 48300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Dialga - Shock Wave - TM34
  (483, 48300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Dialga - Flamethrower - TM35
  (483, 48300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 31),
  -- Dialga - Sandstorm - TM37
  (483, 48300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 32),
  -- Dialga - Fire Blast - TM38
  (483, 48300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 33),
  -- Dialga - Rock Tomb - TM39
  (483, 48300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 34),
  -- Dialga - Aerial Ace - TM40
  (483, 48300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 35),
  -- Dialga - Facade - TM42
  (483, 48300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Dialga - Rest - TM44
  (483, 48300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Dialga - Overheat - TM50
  (483, 48300, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 38),
  -- Dialga - Endure - TM58
  (483, 48300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Dialga - Dragon Pulse - TM59
  (483, 48300, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 40),
  -- Dialga - Shadow Claw - TM65
  (483, 48300, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 41),
  -- Dialga - Giga Impact - TM68
  (483, 48300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Dialga - Flash - TM70
  (483, 48300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 43),
  -- Dialga - Stone Edge - TM71
  (483, 48300, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 44),
  -- Dialga - Thunder Wave - TM73
  (483, 48300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 45),
  -- Dialga - Stealth Rock - TM76
  (483, 48300, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 46),
  -- Dialga - Psych Up - TM77
  (483, 48300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 47),
  -- Dialga - Rock Slide - TM80
  (483, 48300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 48),
  -- Dialga - Sleep Talk - TM82
  (483, 48300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Dialga - Bulldoze - TM83
  (483, 48300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 50),
  -- Dialga - Swagger - TM87
  (483, 48300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Dialga - Substitute - TM90
  (483, 48300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Dialga - Flash Cannon - TM91
  (483, 48300, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 53),
  -- Dialga - Trick Room - TM92
  (483, 48300, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 54),
  -- Dialga - Cut - TM93
  (483, 48300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 55),
  -- Dialga - Strength - TM96
  (483, 48300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 56),
  -- Dialga - Rock Smash - TM98
  (483, 48300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 57),
  -- Palkia - Scary Face - Starting Move
  (484, 48400, 184, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Palkia - Water Pulse - Starting Move
  (484, 48400, 352, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Palkia - Dragon Breath - Level 8
  (484, 48400, 225, 21, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Palkia - Ancient Power - Level 16
  (484, 48400, 246, 21, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Palkia - Slash - Level 24
  (484, 48400, 163, 21, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Palkia - Aqua Ring - Level 32
  (484, 48400, 392, 21, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Palkia - Spacial Rend - Level 40
  (484, 48400, 460, 21, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Palkia - Dragon Claw - Level 48
  (484, 48400, 337, 21, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Palkia - Aura Sphere - Level 56
  (484, 48400, 396, 21, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Palkia - Power Gem - Level 64
  (484, 48400, 408, 21, NULL, 1, 64, NULL, NULL, NULL, 10),
  -- Palkia - Aqua Tail - Level 72
  (484, 48400, 401, 21, NULL, 1, 72, NULL, NULL, NULL, 11),
  -- Palkia - Earth Power - Level 80
  (484, 48400, 414, 21, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Palkia - Hydro Pump - Level 88
  (484, 48400, 56, 21, NULL, 1, 88, NULL, NULL, NULL, 13),
  -- Palkia - Focus Punch - TM01
  (484, 48400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 14),
  -- Palkia - Dragon Claw - TM02
  (484, 48400, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 15),
  -- Palkia - Water Pulse - TM03
  (484, 48400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Palkia - Roar - TM05
  (484, 48400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Palkia - Hail - TM07
  (484, 48400, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Palkia - Bulk Up - TM08
  (484, 48400, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 19),
  -- Palkia - Sunny Day - TM11
  (484, 48400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Palkia - Ice Beam - TM13
  (484, 48400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Palkia - Blizzard - TM14
  (484, 48400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Palkia - Hyper Beam - TM15
  (484, 48400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Palkia - Protect - TM17
  (484, 48400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Palkia - Rain Dance - TM18
  (484, 48400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Palkia - Safeguard - TM20
  (484, 48400, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 26),
  -- Palkia - Thunderbolt - TM24
  (484, 48400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 27),
  -- Palkia - Thunder - TM25
  (484, 48400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 28),
  -- Palkia - Earthquake - TM26
  (484, 48400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 29),
  -- Palkia - Brick Break - TM31
  (484, 48400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 30),
  -- Palkia - Double Team - TM32
  (484, 48400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Palkia - Shock Wave - TM34
  (484, 48400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Palkia - Flamethrower - TM35
  (484, 48400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 33),
  -- Palkia - Sandstorm - TM37
  (484, 48400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 34),
  -- Palkia - Fire Blast - TM38
  (484, 48400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 35),
  -- Palkia - Rock Tomb - TM39
  (484, 48400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 36),
  -- Palkia - Aerial Ace - TM40
  (484, 48400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 37),
  -- Palkia - Facade - TM42
  (484, 48400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 38),
  -- Palkia - Rest - TM44
  (484, 48400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 39),
  -- Palkia - Focus Blast - TM52
  (484, 48400, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 40),
  -- Palkia - Brine - TM55
  (484, 48400, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 41),
  -- Palkia - Fling - TM56
  (484, 48400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Palkia - Endure - TM58
  (484, 48400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Palkia - Dragon Pulse - TM59
  (484, 48400, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 44),
  -- Palkia - Shadow Claw - TM65
  (484, 48400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 45),
  -- Palkia - Giga Impact - TM68
  (484, 48400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 46),
  -- Palkia - Stone Edge - TM71
  (484, 48400, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 47),
  -- Palkia - Avalanche - TM72
  (484, 48400, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 48),
  -- Palkia - Thunder Wave - TM73
  (484, 48400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 49),
  -- Palkia - Psych Up - TM77
  (484, 48400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 50),
  -- Palkia - Rock Slide - TM80
  (484, 48400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 51),
  -- Palkia - Sleep Talk - TM82
  (484, 48400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 52),
  -- Palkia - Bulldoze - TM83
  (484, 48400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 53),
  -- Palkia - Swagger - TM87
  (484, 48400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 54),
  -- Palkia - Substitute - TM90
  (484, 48400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 55),
  -- Palkia - Trick Room - TM92
  (484, 48400, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 56),
  -- Palkia - Cut - TM93
  (484, 48400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 57),
  -- Palkia - Surf - TM95
  (484, 48400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 58),
  -- Palkia - Strength - TM96
  (484, 48400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 59),
  -- Palkia - Rock Smash - TM98
  (484, 48400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 60),
  -- Heatran - Fire Spin - Starting Move
  (485, 48500, 83, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Heatran - Leer - Starting Move
  (485, 48500, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Heatran - Metal Claw - Level 6
  (485, 48500, 232, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Heatran - Ancient Power - Level 12
  (485, 48500, 246, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Heatran - Fire Fang - Level 18
  (485, 48500, 424, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Heatran - Scary Face - Level 24
  (485, 48500, 184, 21, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Heatran - Iron Head - Level 30
  (485, 48500, 442, 21, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Heatran - Crunch - Level 36
  (485, 48500, 242, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Heatran - Lava Plume - Level 42
  (485, 48500, 436, 21, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Heatran - Metal Sound - Level 48
  (485, 48500, 319, 21, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Heatran - Earth Power - Level 54
  (485, 48500, 414, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Heatran - Heat Wave - Level 60
  (485, 48500, 257, 21, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Heatran - Stone Edge - Level 66
  (485, 48500, 444, 21, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Heatran - Magma Storm - Level 72
  (485, 48500, 463, 21, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Heatran - Roar - TM05
  (485, 48500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 15),
  -- Heatran - Sunny Day - TM11
  (485, 48500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Heatran - Taunt - TM12
  (485, 48500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 17),
  -- Heatran - Hyper Beam - TM15
  (485, 48500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Heatran - Protect - TM17
  (485, 48500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Heatran - Solar Beam - TM22
  (485, 48500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 20),
  -- Heatran - Earthquake - TM26
  (485, 48500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 21),
  -- Heatran - Dig - TM28
  (485, 48500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Heatran - Double Team - TM32
  (485, 48500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Heatran - Flamethrower - TM35
  (485, 48500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 24),
  -- Heatran - Fire Blast - TM38
  (485, 48500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 25),
  -- Heatran - Rock Tomb - TM39
  (485, 48500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 26),
  -- Heatran - Torment - TM41
  (485, 48500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 27),
  -- Heatran - Facade - TM42
  (485, 48500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Heatran - Rest - TM44
  (485, 48500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Heatran - Attract - TM45
  (485, 48500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Heatran - Overheat - TM50
  (485, 48500, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 31),
  -- Heatran - Endure - TM58
  (485, 48500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Heatran - Dragon Pulse - TM59
  (485, 48500, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 33),
  -- Heatran - Will-O-Wisp - TM61
  (485, 48500, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 34),
  -- Heatran - Explosion - TM64
  (485, 48500, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 35),
  -- Heatran - Payback - TM66
  (485, 48500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 36),
  -- Heatran - Giga Impact - TM68
  (485, 48500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Heatran - Stone Edge - TM71
  (485, 48500, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 38),
  -- Heatran - Stealth Rock - TM76
  (485, 48500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 39),
  -- Heatran - Dark Pulse - TM79
  (485, 48500, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 40),
  -- Heatran - Rock Slide - TM80
  (485, 48500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Heatran - Sleep Talk - TM82
  (485, 48500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Heatran - Bulldoze - TM83
  (485, 48500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Heatran - Swagger - TM87
  (485, 48500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Heatran - Substitute - TM90
  (485, 48500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Heatran - Flash Cannon - TM91
  (485, 48500, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 46),
  -- Heatran - Strength - TM96
  (485, 48500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Heatran - Rock Smash - TM98
  (485, 48500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Heatran - Rock Climb - TM100
  (485, 48500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 49),
  -- Regigigas - Pound - Starting Move
  (486, 48600, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Regigigas - Confuse Ray - Starting Move
  (486, 48600, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Regigigas - Payback - Level 6
  (486, 48600, 371, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regigigas - Revenge - Level 12
  (486, 48600, 279, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regigigas - Stomp - Level 18
  (486, 48600, 23, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regigigas - Protect - Level 24
  (486, 48600, 182, 21, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regigigas - Knock Off - Level 30
  (486, 48600, 282, 21, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regigigas - Mega Punch - Level 36
  (486, 48600, 5, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regigigas - Body Press - Level 42
  (486, 48600, 776, 21, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regigigas - Wide Guard - Level 48
  (486, 48600, 469, 21, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regigigas - Zen Headbutt - Level 54
  (486, 48600, 428, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regigigas - Heavy Slam - Level 60
  (486, 48600, 484, 21, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regigigas - Hammer Arm - Level 66
  (486, 48600, 359, 21, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regigigas - Giga Impact - Level 72
  (486, 48600, 416, 21, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regigigas - Crush Grip - Level 78
  (486, 48600, 462, 21, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regigigas - Focus Punch - TM01
  (486, 48600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Regigigas - Sunny Day - TM11
  (486, 48600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Regigigas - Hyper Beam - TM15
  (486, 48600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Regigigas - Protect - TM17
  (486, 48600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Regigigas - Rain Dance - TM18
  (486, 48600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Regigigas - Safeguard - TM20
  (486, 48600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 21),
  -- Regigigas - Thunderbolt - TM24
  (486, 48600, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Regigigas - Thunder - TM25
  (486, 48600, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Regigigas - Earthquake - TM26
  (486, 48600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Regigigas - Brick Break - TM31
  (486, 48600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Regigigas - Double Team - TM32
  (486, 48600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Regigigas - Shock Wave - TM34
  (486, 48600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Regigigas - Rock Tomb - TM39
  (486, 48600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Regigigas - Aerial Ace - TM40
  (486, 48600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Regigigas - Facade - TM42
  (486, 48600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Regigigas - Rest - TM44
  (486, 48600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Regigigas - Focus Blast - TM52
  (486, 48600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 32),
  -- Regigigas - Fling - TM56
  (486, 48600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 33),
  -- Regigigas - Endure - TM58
  (486, 48600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Regigigas - Drain Punch - TM60
  (486, 48600, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 35),
  -- Regigigas - Payback - TM66
  (486, 48600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 36),
  -- Regigigas - Giga Impact - TM68
  (486, 48600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Regigigas - Rock Polish - TM69
  (486, 48600, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 38),
  -- Regigigas - Stone Edge - TM71
  (486, 48600, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 39),
  -- Regigigas - Avalanche - TM72
  (486, 48600, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 40),
  -- Regigigas - Thunder Wave - TM73
  (486, 48600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 41),
  -- Regigigas - Psych Up - TM77
  (486, 48600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 42),
  -- Regigigas - Rock Slide - TM80
  (486, 48600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Regigigas - Sleep Talk - TM82
  (486, 48600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Regigigas - Bulldoze - TM83
  (486, 48600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Regigigas - Swagger - TM87
  (486, 48600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Regigigas - Substitute - TM90
  (486, 48600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Regigigas - Strength - TM96
  (486, 48600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Regigigas - Rock Smash - TM98
  (486, 48600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Regigigas - Rock Climb - TM100
  (486, 48600, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 50),
  -- Giratina - Shadow Sneak - Starting Move
  (487, 48700, 425, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Giratina - Defog - Starting Move
  (487, 48700, 432, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Giratina - Dragon Breath - Level 7
  (487, 48700, 225, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Giratina - Ancient Power - Level 14
  (487, 48700, 246, 21, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Giratina - Hex - Level 21
  (487, 48700, 506, 21, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Giratina - Slash - Level 28
  (487, 48700, 163, 21, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Giratina - Scary Face - Level 35
  (487, 48700, 184, 21, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Giratina - Shadow Claw - Level 42
  (487, 48700, 421, 21, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Giratina - Shadow Force - Level 49
  (487, 48700, 467, 21, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Giratina - Pain Split - Level 56
  (487, 48700, 220, 21, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Giratina - Aura Sphere - Level 63
  (487, 48700, 396, 21, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Giratina - Dragon Claw - Level 70
  (487, 48700, 337, 21, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Giratina - Earth Power - Level 77
  (487, 48700, 414, 21, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Giratina - Destiny Bond - Level 84
  (487, 48700, 194, 21, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Giratina - Dragon Claw - TM02
  (487, 48700, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 15),
  -- Giratina - Calm Mind - TM04
  (487, 48700, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Giratina - Roar - TM05
  (487, 48700, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Giratina - Sunny Day - TM11
  (487, 48700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Giratina - Hyper Beam - TM15
  (487, 48700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Giratina - Protect - TM17
  (487, 48700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Giratina - Rain Dance - TM18
  (487, 48700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Giratina - Safeguard - TM20
  (487, 48700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Giratina - Iron Tail - TM23
  (487, 48700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Giratina - Thunderbolt - TM24
  (487, 48700, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Giratina - Thunder - TM25
  (487, 48700, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Giratina - Earthquake - TM26
  (487, 48700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Giratina - Psychic - TM29
  (487, 48700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Giratina - Shadow Ball - TM30
  (487, 48700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Giratina - Double Team - TM32
  (487, 48700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Giratina - Shock Wave - TM34
  (487, 48700, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Giratina - Aerial Ace - TM40
  (487, 48700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Giratina - Facade - TM42
  (487, 48700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Giratina - Rest - TM44
  (487, 48700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Giratina - Steel Wing - TM47
  (487, 48700, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 34),
  -- Giratina - Energy Ball - TM53
  (487, 48700, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 35),
  -- Giratina - Charge Beam - TM57
  (487, 48700, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 36),
  -- Giratina - Endure - TM58
  (487, 48700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Giratina - Dragon Pulse - TM59
  (487, 48700, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 38),
  -- Giratina - Will-O-Wisp - TM61
  (487, 48700, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 39),
  -- Giratina - Shadow Claw - TM65
  (487, 48700, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 40),
  -- Giratina - Payback - TM66
  (487, 48700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 41),
  -- Giratina - Giga Impact - TM68
  (487, 48700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Giratina - Stone Edge - TM71
  (487, 48700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 43),
  -- Giratina - Thunder Wave - TM73
  (487, 48700, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 44),
  -- Giratina - Psych Up - TM77
  (487, 48700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 45),
  -- Giratina - Dark Pulse - TM79
  (487, 48700, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 46),
  -- Giratina - Sleep Talk - TM82
  (487, 48700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Giratina - Bulldoze - TM83
  (487, 48700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 48),
  -- Giratina - Dream Eater - TM85
  (487, 48700, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 49),
  -- Giratina - Swagger - TM87
  (487, 48700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Giratina - Substitute - TM90
  (487, 48700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Giratina - Cut - TM93
  (487, 48700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 52),
  -- Giratina - Fly - TM94
  (487, 48700, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 53),
  -- Giratina - Strength - TM96
  (487, 48700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Giratina - Defog - TM97
  (487, 48700, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 55),
  -- Giratina - Rock Smash - TM98
  (487, 48700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 56),
  -- Giratina - Rock Climb - TM100
  (487, 48700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 57),
  -- Cresselia - Confusion - Starting Move
  (488, 48800, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cresselia - Double Team - Starting Move
  (488, 48800, 104, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Cresselia - Mist - Level 6
  (488, 48800, 54, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cresselia - Aurora Beam - Level 12
  (488, 48800, 62, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Cresselia - Psybeam - Level 18
  (488, 48800, 60, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Cresselia - Psycho Shift - Level 24
  (488, 48800, 375, 21, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Cresselia - Slash - Level 30
  (488, 48800, 163, 21, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Cresselia - Psycho Cut - Level 36
  (488, 48800, 427, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Cresselia - Moonlight - Level 42
  (488, 48800, 236, 21, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Cresselia - Safeguard - Level 48
  (488, 48800, 219, 21, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Cresselia - Psychic - Level 54
  (488, 48800, 94, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Cresselia - Moonblast - Level 60
  (488, 48800, 585, 21, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Cresselia - Future Sight - Level 66
  (488, 48800, 248, 21, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Cresselia - Lunar Dance - Level 72
  (488, 48800, 461, 21, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Cresselia - Calm Mind - TM04
  (488, 48800, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 15),
  -- Cresselia - Sunny Day - TM11
  (488, 48800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Cresselia - Ice Beam - TM13
  (488, 48800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Cresselia - Hyper Beam - TM15
  (488, 48800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Cresselia - Light Screen - TM16
  (488, 48800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Cresselia - Protect - TM17
  (488, 48800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Cresselia - Rain Dance - TM18
  (488, 48800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Cresselia - Safeguard - TM20
  (488, 48800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Cresselia - Solar Beam - TM22
  (488, 48800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Cresselia - Psychic - TM29
  (488, 48800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 24),
  -- Cresselia - Shadow Ball - TM30
  (488, 48800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Cresselia - Double Team - TM32
  (488, 48800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Cresselia - Reflect - TM33
  (488, 48800, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 27),
  -- Cresselia - Facade - TM42
  (488, 48800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Cresselia - Rest - TM44
  (488, 48800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Cresselia - Attract - TM45
  (488, 48800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Cresselia - Skill Swap - TM48
  (488, 48800, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 31),
  -- Cresselia - Energy Ball - TM53
  (488, 48800, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 32),
  -- Cresselia - Charge Beam - TM57
  (488, 48800, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 33),
  -- Cresselia - Endure - TM58
  (488, 48800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Cresselia - Recycle - TM67
  (488, 48800, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 35),
  -- Cresselia - Giga Impact - TM68
  (488, 48800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Cresselia - Flash - TM70
  (488, 48800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Cresselia - Thunder Wave - TM73
  (488, 48800, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 38),
  -- Cresselia - Psych Up - TM77
  (488, 48800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 39),
  -- Cresselia - Sleep Talk - TM82
  (488, 48800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Cresselia - Dream Eater - TM85
  (488, 48800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 41),
  -- Cresselia - Grass Knot - TM86
  (488, 48800, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 42),
  -- Cresselia - Swagger - TM87
  (488, 48800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Cresselia - Substitute - TM90
  (488, 48800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Cresselia - Trick Room - TM92
  (488, 48800, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 45),
  -- Phione - Water Gun - Starting Move
  (489, 48900, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Phione - Charm - Level 9
  (489, 48900, 204, 21, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Phione - Supersonic - Level 16
  (489, 48900, 48, 21, NULL, 1, 16, NULL, NULL, NULL, 3),
  -- Phione - Bubble Beam - Level 24
  (489, 48900, 61, 21, NULL, 1, 24, NULL, NULL, NULL, 4),
  -- Phione - Acid Armor - Level 31
  (489, 48900, 151, 21, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Phione - Whirlpool - Level 39
  (489, 48900, 250, 21, NULL, 1, 39, NULL, NULL, NULL, 6),
  -- Phione - Water Pulse - Level 46
  (489, 48900, 352, 21, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Phione - Aqua Ring - Level 54
  (489, 48900, 392, 21, NULL, 1, 54, NULL, NULL, NULL, 8),
  -- Phione - Dive - Level 61
  (489, 48900, 291, 21, NULL, 1, 61, NULL, NULL, NULL, 9),
  -- Phione - Rain Dance - Level 69
  (489, 48900, 240, 21, NULL, 1, 69, NULL, NULL, NULL, 10),
  -- Phione - Water Pulse - TM03
  (489, 48900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 11),
  -- Phione - Hail - TM07
  (489, 48900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 12),
  -- Phione - Ice Beam - TM13
  (489, 48900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 13),
  -- Phione - Blizzard - TM14
  (489, 48900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 14),
  -- Phione - Protect - TM17
  (489, 48900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 15),
  -- Phione - Rain Dance - TM18
  (489, 48900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 16),
  -- Phione - Safeguard - TM20
  (489, 48900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 17),
  -- Phione - Dazzling Gleam - TM21
  (489, 48900, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 18),
  -- Phione - Double Team - TM32
  (489, 48900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 19),
  -- Phione - Facade - TM42
  (489, 48900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 20),
  -- Phione - Rest - TM44
  (489, 48900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 21),
  -- Phione - Scald - TM49
  (489, 48900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 22),
  -- Phione - Brine - TM55
  (489, 48900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 23),
  -- Phione - Fling - TM56
  (489, 48900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 24),
  -- Phione - Endure - TM58
  (489, 48900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 25),
  -- Phione - Psych Up - TM77
  (489, 48900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 26),
  -- Phione - Sleep Talk - TM82
  (489, 48900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 27),
  -- Phione - Grass Knot - TM86
  (489, 48900, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 28),
  -- Phione - Swagger - TM87
  (489, 48900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 29),
  -- Phione - U-turn - TM89
  (489, 48900, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 30),
  -- Phione - Substitute - TM90
  (489, 48900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 31),
  -- Phione - Surf - TM95
  (489, 48900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 32),
  -- Phione - Waterfall - TM99
  (489, 48900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 33),
  -- Manaphy - Tail Glow - Starting Move
  (490, 49000, 294, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Manaphy - Water Gun - Starting Move
  (490, 49000, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Manaphy - Charm - Level 9
  (490, 49000, 204, 21, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Manaphy - Supersonic - Level 16
  (490, 49000, 48, 21, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Manaphy - Bubble Beam - Level 24
  (490, 49000, 61, 21, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Manaphy - Acid Armor - Level 31
  (490, 49000, 151, 21, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Manaphy - Whirlpool - Level 39
  (490, 49000, 250, 21, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Manaphy - Water Pulse - Level 46
  (490, 49000, 352, 21, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Manaphy - Aqua Ring - Level 54
  (490, 49000, 392, 21, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Manaphy - Dive - Level 61
  (490, 49000, 291, 21, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Manaphy - Rain Dance - Level 69
  (490, 49000, 240, 21, NULL, 1, 69, NULL, NULL, NULL, 11),
  -- Manaphy - Heart Swap - Level 76
  (490, 49000, 391, 21, NULL, 1, 76, NULL, NULL, NULL, 12),
  -- Manaphy - Water Pulse - TM03
  (490, 49000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 13),
  -- Manaphy - Calm Mind - TM04
  (490, 49000, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 14),
  -- Manaphy - Hail - TM07
  (490, 49000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 15),
  -- Manaphy - Ice Beam - TM13
  (490, 49000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 16),
  -- Manaphy - Blizzard - TM14
  (490, 49000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 17),
  -- Manaphy - Hyper Beam - TM15
  (490, 49000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Manaphy - Light Screen - TM16
  (490, 49000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Manaphy - Protect - TM17
  (490, 49000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Manaphy - Rain Dance - TM18
  (490, 49000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Manaphy - Safeguard - TM20
  (490, 49000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Manaphy - Dazzling Gleam - TM21
  (490, 49000, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 23),
  -- Manaphy - Psychic - TM29
  (490, 49000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 24),
  -- Manaphy - Shadow Ball - TM30
  (490, 49000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Manaphy - Double Team - TM32
  (490, 49000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Manaphy - Reflect - TM33
  (490, 49000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 27),
  -- Manaphy - Facade - TM42
  (490, 49000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Manaphy - Rest - TM44
  (490, 49000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Manaphy - Skill Swap - TM48
  (490, 49000, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 30),
  -- Manaphy - Scald - TM49
  (490, 49000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 31),
  -- Manaphy - Energy Ball - TM53
  (490, 49000, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 32),
  -- Manaphy - Brine - TM55
  (490, 49000, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 33),
  -- Manaphy - Fling - TM56
  (490, 49000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Manaphy - Endure - TM58
  (490, 49000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Manaphy - Giga Impact - TM68
  (490, 49000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Manaphy - Flash - TM70
  (490, 49000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Manaphy - Psych Up - TM77
  (490, 49000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 38),
  -- Manaphy - Sleep Talk - TM82
  (490, 49000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Manaphy - Grass Knot - TM86
  (490, 49000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 40),
  -- Manaphy - Swagger - TM87
  (490, 49000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Manaphy - U-turn - TM89
  (490, 49000, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 42),
  -- Manaphy - Substitute - TM90
  (490, 49000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Manaphy - Surf - TM95
  (490, 49000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 44),
  -- Manaphy - Waterfall - TM99
  (490, 49000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 45),
  -- Darkrai - Confuse Ray - Starting Move
  (491, 49100, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Darkrai - Disable - Starting Move
  (491, 49100, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Darkrai - Quick Attack - Level 11
  (491, 49100, 98, 21, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Darkrai - Hypnosis - Level 20
  (491, 49100, 95, 21, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Darkrai - Sucker Punch - Level 29
  (491, 49100, 389, 21, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Darkrai - Foul Play - Level 38
  (491, 49100, 492, 21, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Darkrai - Double Team - Level 47
  (491, 49100, 104, 21, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Darkrai - Haze - Level 57
  (491, 49100, 114, 21, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Darkrai - Dark Void - Level 66
  (491, 49100, 464, 21, NULL, 1, 66, NULL, NULL, NULL, 9),
  -- Darkrai - Nasty Plot - Level 75
  (491, 49100, 417, 21, NULL, 1, 75, NULL, NULL, NULL, 10),
  -- Darkrai - Dream Eater - Level 84
  (491, 49100, 138, 21, NULL, 1, 84, NULL, NULL, NULL, 11),
  -- Darkrai - Dark Pulse - Level 93
  (491, 49100, 399, 21, NULL, 1, 93, NULL, NULL, NULL, 12),
  -- Darkrai - Focus Punch - TM01
  (491, 49100, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 13),
  -- Darkrai - Calm Mind - TM04
  (491, 49100, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 14),
  -- Darkrai - Sunny Day - TM11
  (491, 49100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Darkrai - Taunt - TM12
  (491, 49100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 16),
  -- Darkrai - Ice Beam - TM13
  (491, 49100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Darkrai - Blizzard - TM14
  (491, 49100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Darkrai - Hyper Beam - TM15
  (491, 49100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Darkrai - Protect - TM17
  (491, 49100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Darkrai - Rain Dance - TM18
  (491, 49100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Darkrai - Thunderbolt - TM24
  (491, 49100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Darkrai - Thunder - TM25
  (491, 49100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Darkrai - Psychic - TM29
  (491, 49100, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 24),
  -- Darkrai - Shadow Ball - TM30
  (491, 49100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Darkrai - Brick Break - TM31
  (491, 49100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Darkrai - Double Team - TM32
  (491, 49100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Darkrai - Shock Wave - TM34
  (491, 49100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 28),
  -- Darkrai - Sludge Bomb - TM36
  (491, 49100, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 29),
  -- Darkrai - Rock Tomb - TM39
  (491, 49100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Darkrai - Aerial Ace - TM40
  (491, 49100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Darkrai - Torment - TM41
  (491, 49100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 32),
  -- Darkrai - Facade - TM42
  (491, 49100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Darkrai - Rest - TM44
  (491, 49100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Darkrai - Thief - TM46
  (491, 49100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Darkrai - Focus Blast - TM52
  (491, 49100, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 36),
  -- Darkrai - Fling - TM56
  (491, 49100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Darkrai - Charge Beam - TM57
  (491, 49100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 38),
  -- Darkrai - Endure - TM58
  (491, 49100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Darkrai - Drain Punch - TM60
  (491, 49100, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 40),
  -- Darkrai - Will-O-Wisp - TM61
  (491, 49100, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 41),
  -- Darkrai - Nasty Plot - TM63
  (491, 49100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 42),
  -- Darkrai - Shadow Claw - TM65
  (491, 49100, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 43),
  -- Darkrai - Payback - TM66
  (491, 49100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 44),
  -- Darkrai - Giga Impact - TM68
  (491, 49100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 45),
  -- Darkrai - Flash - TM70
  (491, 49100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 46),
  -- Darkrai - Thunder Wave - TM73
  (491, 49100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 47),
  -- Darkrai - Swords Dance - TM75
  (491, 49100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 48),
  -- Darkrai - Psych Up - TM77
  (491, 49100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 49),
  -- Darkrai - Snarl - TM78
  (491, 49100, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 50),
  -- Darkrai - Dark Pulse - TM79
  (491, 49100, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 51),
  -- Darkrai - Rock Slide - TM80
  (491, 49100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 52),
  -- Darkrai - X-Scissor - TM81
  (491, 49100, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 53),
  -- Darkrai - Sleep Talk - TM82
  (491, 49100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 54),
  -- Darkrai - Poison Jab - TM84
  (491, 49100, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 55),
  -- Darkrai - Dream Eater - TM85
  (491, 49100, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 56),
  -- Darkrai - Swagger - TM87
  (491, 49100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 57),
  -- Darkrai - Substitute - TM90
  (491, 49100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 58),
  -- Darkrai - Cut - TM93
  (491, 49100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 59),
  -- Darkrai - Strength - TM96
  (491, 49100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 60),
  -- Darkrai - Rock Smash - TM98
  (491, 49100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 61),
  -- Darkrai - Rock Climb - TM100
  (491, 49100, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 62),
  -- Shaymin - Growth - Starting Move
  (492, 49200, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shaymin - Magical Leaf - Level 10
  (492, 49200, 345, 21, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin - Leech Seed - Level 19
  (492, 49200, 73, 21, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin - Synthesis - Level 28
  (492, 49200, 235, 21, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin - Sweet Scent - Level 37
  (492, 49200, 230, 21, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin - Healing Wish - Level 46
  (492, 49200, 361, 21, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin - Worry Seed - Level 55
  (492, 49200, 388, 21, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin - Aromatherapy - Level 64
  (492, 49200, 312, 21, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin - Energy Ball - Level 73
  (492, 49200, 412, 21, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin - Sweet Kiss - Level 82
  (492, 49200, 186, 21, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin - Healing Wish - Level 91
  (492, 49200, 361, 21, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin - Seed Flare - Level 100
  (492, 49200, 465, 21, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin - Bullet Seed - TM09
  (492, 49200, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 13),
  -- Shaymin - Sunny Day - TM11
  (492, 49200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Shaymin - Hyper Beam - TM15
  (492, 49200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 15),
  -- Shaymin - Protect - TM17
  (492, 49200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Shaymin - Giga Drain - TM19
  (492, 49200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 17),
  -- Shaymin - Safeguard - TM20
  (492, 49200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 18),
  -- Shaymin - Dazzling Gleam - TM21
  (492, 49200, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 19),
  -- Shaymin - Solar Beam - TM22
  (492, 49200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 20),
  -- Shaymin - Psychic - TM29
  (492, 49200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 21),
  -- Shaymin - Double Team - TM32
  (492, 49200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Shaymin - Facade - TM42
  (492, 49200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 23),
  -- Shaymin - Rest - TM44
  (492, 49200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 24),
  -- Shaymin - Energy Ball - TM53
  (492, 49200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 25),
  -- Shaymin - Endure - TM58
  (492, 49200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 26),
  -- Shaymin - Giga Impact - TM68
  (492, 49200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 27),
  -- Shaymin - Flash - TM70
  (492, 49200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 28),
  -- Shaymin - Swords Dance - TM75
  (492, 49200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 29),
  -- Shaymin - Psych Up - TM77
  (492, 49200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 30),
  -- Shaymin - Sleep Talk - TM82
  (492, 49200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 31),
  -- Shaymin - Grass Knot - TM86
  (492, 49200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 32),
  -- Shaymin - Swagger - TM87
  (492, 49200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Shaymin - Substitute - TM90
  (492, 49200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Shaymin (Sky) - Growth - Starting Move
  (492, 49201, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shaymin (Sky) - Magical Leaf - Level 10
  (492, 49201, 345, 21, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin (Sky) - Leech Seed - Level 19
  (492, 49201, 73, 21, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin (Sky) - Quick Attack - Level 28
  (492, 49201, 98, 21, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin (Sky) - Sweet Scent - Level 37
  (492, 49201, 230, 21, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin (Sky) - Healing Wish - Level 46
  (492, 49201, 361, 21, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin (Sky) - Worry Seed - Level 55
  (492, 49201, 388, 21, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin (Sky) - Air Slash - Level 64
  (492, 49201, 403, 21, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin (Sky) - Energy Ball - Level 73
  (492, 49201, 412, 21, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin (Sky) - Sweet Kiss - Level 82
  (492, 49201, 186, 21, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin (Sky) - Leaf Storm - Level 91
  (492, 49201, 437, 21, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin (Sky) - Seed Flare - Level 100
  (492, 49201, 465, 21, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin (Sky) - Bullet Seed - TM09
  (492, 49201, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 13),
  -- Shaymin (Sky) - Sunny Day - TM11
  (492, 49201, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Shaymin (Sky) - Hyper Beam - TM15
  (492, 49201, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 15),
  -- Shaymin (Sky) - Protect - TM17
  (492, 49201, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Shaymin (Sky) - Giga Drain - TM19
  (492, 49201, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 17),
  -- Shaymin (Sky) - Safeguard - TM20
  (492, 49201, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 18),
  -- Shaymin (Sky) - Dazzling Gleam - TM21
  (492, 49201, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 19),
  -- Shaymin (Sky) - Solar Beam - TM22
  (492, 49201, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 20),
  -- Shaymin (Sky) - Psychic - TM29
  (492, 49201, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 21),
  -- Shaymin (Sky) - Double Team - TM32
  (492, 49201, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Shaymin (Sky) - Facade - TM42
  (492, 49201, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 23),
  -- Shaymin (Sky) - Rest - TM44
  (492, 49201, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 24),
  -- Shaymin (Sky) - Energy Ball - TM53
  (492, 49201, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 25),
  -- Shaymin (Sky) - Endure - TM58
  (492, 49201, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 26),
  -- Shaymin (Sky) - Giga Impact - TM68
  (492, 49201, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 27),
  -- Shaymin (Sky) - Flash - TM70
  (492, 49201, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 28),
  -- Shaymin (Sky) - Swords Dance - TM75
  (492, 49201, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 29),
  -- Shaymin (Sky) - Psych Up - TM77
  (492, 49201, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 30),
  -- Shaymin (Sky) - Sleep Talk - TM82
  (492, 49201, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 31),
  -- Shaymin (Sky) - Grass Knot - TM86
  (492, 49201, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 32),
  -- Shaymin (Sky) - Swagger - TM87
  (492, 49201, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Shaymin (Sky) - Substitute - TM90
  (492, 49201, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Arceus - Seismic Toss - Starting Move
  (493, 49300, 69, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Arceus - Cosmic Power - Starting Move
  (493, 49300, 322, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Arceus - Gravity - Level 10
  (493, 49300, 356, 21, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Arceus - Earth Power - Level 20
  (493, 49300, 414, 21, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Arceus - Hyper Voice - Level 30
  (493, 49300, 304, 21, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Arceus - Extreme Speed - Level 40
  (493, 49300, 245, 21, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Arceus - Healing Wish - Level 50
  (493, 49300, 361, 21, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Arceus - Future Sight - Level 60
  (493, 49300, 248, 21, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Arceus - Recover - Level 70
  (493, 49300, 105, 21, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Arceus - Hyper Beam - Level 80
  (493, 49300, 63, 21, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Arceus - Perish Song - Level 90
  (493, 49300, 195, 21, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Arceus - Judgment - Level 100
  (493, 49300, 449, 21, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Arceus - Dragon Claw - TM02
  (493, 49300, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 13),
  -- Arceus - Water Pulse - TM03
  (493, 49300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Arceus - Calm Mind - TM04
  (493, 49300, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 15),
  -- Arceus - Roar - TM05
  (493, 49300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 16),
  -- Arceus - Hail - TM07
  (493, 49300, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Arceus - Bullet Seed - TM09
  (493, 49300, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 18),
  -- Arceus - Work Up - TM10
  (493, 49300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 19),
  -- Arceus - Sunny Day - TM11
  (493, 49300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Arceus - Ice Beam - TM13
  (493, 49300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Arceus - Blizzard - TM14
  (493, 49300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Arceus - Hyper Beam - TM15
  (493, 49300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Arceus - Light Screen - TM16
  (493, 49300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 24),
  -- Arceus - Protect - TM17
  (493, 49300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Arceus - Rain Dance - TM18
  (493, 49300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Arceus - Giga Drain - TM19
  (493, 49300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Arceus - Safeguard - TM20
  (493, 49300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 28),
  -- Arceus - Solar Beam - TM22
  (493, 49300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Arceus - Iron Tail - TM23
  (493, 49300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Arceus - Thunderbolt - TM24
  (493, 49300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 31),
  -- Arceus - Thunder - TM25
  (493, 49300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 32),
  -- Arceus - Earthquake - TM26
  (493, 49300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 33),
  -- Arceus - Psychic - TM29
  (493, 49300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 34),
  -- Arceus - Shadow Ball - TM30
  (493, 49300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 35),
  -- Arceus - Brick Break - TM31
  (493, 49300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 36),
  -- Arceus - Double Team - TM32
  (493, 49300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Arceus - Reflect - TM33
  (493, 49300, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 38),
  -- Arceus - Shock Wave - TM34
  (493, 49300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 39),
  -- Arceus - Flamethrower - TM35
  (493, 49300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 40),
  -- Arceus - Sludge Bomb - TM36
  (493, 49300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 41),
  -- Arceus - Sandstorm - TM37
  (493, 49300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 42),
  -- Arceus - Fire Blast - TM38
  (493, 49300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 43),
  -- Arceus - Rock Tomb - TM39
  (493, 49300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 44),
  -- Arceus - Aerial Ace - TM40
  (493, 49300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 45),
  -- Arceus - Facade - TM42
  (493, 49300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 46),
  -- Arceus - Rest - TM44
  (493, 49300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 47),
  -- Arceus - Overheat - TM50
  (493, 49300, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 48),
  -- Arceus - Focus Blast - TM52
  (493, 49300, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 49),
  -- Arceus - Energy Ball - TM53
  (493, 49300, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 50),
  -- Arceus - Brine - TM55
  (493, 49300, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 51),
  -- Arceus - Charge Beam - TM57
  (493, 49300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 52),
  -- Arceus - Endure - TM58
  (493, 49300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 53),
  -- Arceus - Dragon Pulse - TM59
  (493, 49300, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 54),
  -- Arceus - Will-O-Wisp - TM61
  (493, 49300, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 55),
  -- Arceus - Shadow Claw - TM65
  (493, 49300, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 56),
  -- Arceus - Payback - TM66
  (493, 49300, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 57),
  -- Arceus - Recycle - TM67
  (493, 49300, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 58),
  -- Arceus - Giga Impact - TM68
  (493, 49300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 59),
  -- Arceus - Flash - TM70
  (493, 49300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 60),
  -- Arceus - Stone Edge - TM71
  (493, 49300, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 61),
  -- Arceus - Avalanche - TM72
  (493, 49300, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 62),
  -- Arceus - Thunder Wave - TM73
  (493, 49300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 63),
  -- Arceus - Swords Dance - TM75
  (493, 49300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 64),
  -- Arceus - Stealth Rock - TM76
  (493, 49300, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 65),
  -- Arceus - Psych Up - TM77
  (493, 49300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 66),
  -- Arceus - Snarl - TM78
  (493, 49300, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 67),
  -- Arceus - Dark Pulse - TM79
  (493, 49300, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 68),
  -- Arceus - Rock Slide - TM80
  (493, 49300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 69),
  -- Arceus - X-Scissor - TM81
  (493, 49300, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 70),
  -- Arceus - Sleep Talk - TM82
  (493, 49300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 71),
  -- Arceus - Bulldoze - TM83
  (493, 49300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 72),
  -- Arceus - Poison Jab - TM84
  (493, 49300, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 73),
  -- Arceus - Dream Eater - TM85
  (493, 49300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 74),
  -- Arceus - Grass Knot - TM86
  (493, 49300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 75),
  -- Arceus - Swagger - TM87
  (493, 49300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 76),
  -- Arceus - Substitute - TM90
  (493, 49300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 77),
  -- Arceus - Flash Cannon - TM91
  (493, 49300, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 78),
  -- Arceus - Trick Room - TM92
  (493, 49300, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 79),
  -- Arceus - Cut - TM93
  (493, 49300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 80),
  -- Arceus - Fly - TM94
  (493, 49300, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 81),
  -- Arceus - Surf - TM95
  (493, 49300, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 82),
  -- Arceus - Strength - TM96
  (493, 49300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 83),
  -- Arceus - Defog - TM97
  (493, 49300, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 84),
  -- Arceus - Rock Smash - TM98
  (493, 49300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 85),
  -- Arceus - Waterfall - TM99
  (493, 49300, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 86),
  -- Arceus - Rock Climb - TM100
  (493, 49300, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 87);
