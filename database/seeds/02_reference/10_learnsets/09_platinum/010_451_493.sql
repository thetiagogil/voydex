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
-- Pokémon: #451-#493
-- Rows: 2896
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
  -- Skorupi - Poison Sting - Level 1
  (451, 45100, 40, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skorupi - Leer - Level 1
  (451, 45100, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skorupi - Bite - Level 1
  (451, 45100, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skorupi - Knock Off - Level 6
  (451, 45100, 282, 9, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Skorupi - Pin Missile - Level 12
  (451, 45100, 42, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skorupi - Acupressure - Level 17
  (451, 45100, 367, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Skorupi - Scary Face - Level 23
  (451, 45100, 184, 9, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Skorupi - Toxic Spikes - Level 28
  (451, 45100, 390, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Skorupi - Bug Bite - Level 34
  (451, 45100, 450, 9, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Skorupi - Poison Fang - Level 39
  (451, 45100, 305, 9, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Skorupi - Crunch - Level 45
  (451, 45100, 242, 9, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Skorupi - Cross Poison - Level 50
  (451, 45100, 440, 9, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Skorupi - Toxic - TM06
  (451, 45100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Skorupi - Hidden Power - TM10
  (451, 45100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Skorupi - Sunny Day - TM11
  (451, 45100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Skorupi - Taunt - TM12
  (451, 45100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 16),
  -- Skorupi - Protect - TM17
  (451, 45100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Skorupi - Rain Dance - TM18
  (451, 45100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Skorupi - Frustration - TM21
  (451, 45100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Skorupi - Iron Tail - TM23
  (451, 45100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 20),
  -- Skorupi - Return - TM27
  (451, 45100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 21),
  -- Skorupi - Dig - TM28
  (451, 45100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 22),
  -- Skorupi - Shadow Ball - TM30
  (451, 45100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Skorupi - Brick Break - TM31
  (451, 45100, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 24),
  -- Skorupi - Double Team - TM32
  (451, 45100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Skorupi - Sludge Bomb - TM36
  (451, 45100, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 26),
  -- Skorupi - Rock Tomb - TM39
  (451, 45100, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 27),
  -- Skorupi - Aerial Ace - TM40
  (451, 45100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 28),
  -- Skorupi - Torment - TM41
  (451, 45100, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 29),
  -- Skorupi - Facade - TM42
  (451, 45100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Skorupi - Secret Power - TM43
  (451, 45100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Skorupi - Rest - TM44
  (451, 45100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Skorupi - Attract - TM45
  (451, 45100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Skorupi - Thief - TM46
  (451, 45100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 34),
  -- Skorupi - False Swipe - TM54
  (451, 45100, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 35),
  -- Skorupi - Fling - TM56
  (451, 45100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Skorupi - Endure - TM58
  (451, 45100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Skorupi - Payback - TM66
  (451, 45100, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 38),
  -- Skorupi - Flash - TM70
  (451, 45100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 39),
  -- Skorupi - Swords Dance - TM75
  (451, 45100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 40),
  -- Skorupi - Captivate - TM78
  (451, 45100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Skorupi - Dark Pulse - TM79
  (451, 45100, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 42),
  -- Skorupi - X-Scissor - TM81
  (451, 45100, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 43),
  -- Skorupi - Sleep Talk - TM82
  (451, 45100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Skorupi - Natural Gift - TM83
  (451, 45100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Skorupi - Poison Jab - TM84
  (451, 45100, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 46),
  -- Skorupi - Swagger - TM87
  (451, 45100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Skorupi - Substitute - TM90
  (451, 45100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Skorupi - Cut - HM01
  (451, 45100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 49),
  -- Skorupi - Strength - HM04
  (451, 45100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 50),
  -- Skorupi - Rock Smash - HM06
  (451, 45100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 51),
  -- Skorupi - Whirlwind - Egg
  (451, 45100, 18, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Skorupi - Sand Attack - Egg
  (451, 45100, 28, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skorupi - Agility - Egg
  (451, 45100, 97, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skorupi - Screech - Egg
  (451, 45100, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skorupi - Confuse Ray - Egg
  (451, 45100, 109, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skorupi - Slash - Egg
  (451, 45100, 163, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skorupi - Feint Attack - Egg
  (451, 45100, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skorupi - Pursuit - Egg
  (451, 45100, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skorupi - Night Slash - Egg
  (451, 45100, 400, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skorupi - Snore - Tutor
  (451, 45100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Skorupi - Mud-Slap - Tutor
  (451, 45100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Skorupi - Fury Cutter - Tutor
  (451, 45100, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Skorupi - Knock Off - Tutor
  (451, 45100, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Skorupi - Aqua Tail - Tutor
  (451, 45100, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Drapion - Poison Sting - Level 1
  (452, 45200, 40, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drapion - Leer - Level 1
  (452, 45200, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drapion - Bite - Level 1
  (452, 45200, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drapion - Knock Off - Level 1
  (452, 45200, 282, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drapion - Thunder Fang - Level 1
  (452, 45200, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drapion - Ice Fang - Level 1
  (452, 45200, 423, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Drapion - Fire Fang - Level 1
  (452, 45200, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Drapion - Knock Off - Level 6
  (452, 45200, 282, 9, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Drapion - Pin Missile - Level 12
  (452, 45200, 42, 9, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Drapion - Acupressure - Level 17
  (452, 45200, 367, 9, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Drapion - Scary Face - Level 23
  (452, 45200, 184, 9, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Drapion - Toxic Spikes - Level 28
  (452, 45200, 390, 9, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Drapion - Bug Bite - Level 34
  (452, 45200, 450, 9, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Drapion - Poison Fang - Level 39
  (452, 45200, 305, 9, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Drapion - Crunch - Level 49
  (452, 45200, 242, 9, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Drapion - Cross Poison - Level 58
  (452, 45200, 440, 9, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Drapion - Roar - TM05
  (452, 45200, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Drapion - Toxic - TM06
  (452, 45200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Drapion - Hidden Power - TM10
  (452, 45200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Drapion - Sunny Day - TM11
  (452, 45200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Drapion - Taunt - TM12
  (452, 45200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 21),
  -- Drapion - Hyper Beam - TM15
  (452, 45200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Drapion - Protect - TM17
  (452, 45200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Drapion - Rain Dance - TM18
  (452, 45200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Drapion - Frustration - TM21
  (452, 45200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Drapion - Iron Tail - TM23
  (452, 45200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Drapion - Earthquake - TM26
  (452, 45200, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 27),
  -- Drapion - Return - TM27
  (452, 45200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Drapion - Dig - TM28
  (452, 45200, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 29),
  -- Drapion - Shadow Ball - TM30
  (452, 45200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Drapion - Brick Break - TM31
  (452, 45200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 31),
  -- Drapion - Double Team - TM32
  (452, 45200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Drapion - Sludge Bomb - TM36
  (452, 45200, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 33),
  -- Drapion - Rock Tomb - TM39
  (452, 45200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Drapion - Aerial Ace - TM40
  (452, 45200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 35),
  -- Drapion - Torment - TM41
  (452, 45200, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 36),
  -- Drapion - Facade - TM42
  (452, 45200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Drapion - Secret Power - TM43
  (452, 45200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Drapion - Rest - TM44
  (452, 45200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Drapion - Attract - TM45
  (452, 45200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Drapion - Thief - TM46
  (452, 45200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 41),
  -- Drapion - False Swipe - TM54
  (452, 45200, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 42),
  -- Drapion - Fling - TM56
  (452, 45200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 43),
  -- Drapion - Endure - TM58
  (452, 45200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Drapion - Payback - TM66
  (452, 45200, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 45),
  -- Drapion - Giga Impact - TM68
  (452, 45200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 46),
  -- Drapion - Flash - TM70
  (452, 45200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 47),
  -- Drapion - Swords Dance - TM75
  (452, 45200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 48),
  -- Drapion - Captivate - TM78
  (452, 45200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 49),
  -- Drapion - Dark Pulse - TM79
  (452, 45200, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 50),
  -- Drapion - Rock Slide - TM80
  (452, 45200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 51),
  -- Drapion - X-Scissor - TM81
  (452, 45200, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 52),
  -- Drapion - Sleep Talk - TM82
  (452, 45200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 53),
  -- Drapion - Natural Gift - TM83
  (452, 45200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 54),
  -- Drapion - Poison Jab - TM84
  (452, 45200, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 55),
  -- Drapion - Swagger - TM87
  (452, 45200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 56),
  -- Drapion - Substitute - TM90
  (452, 45200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 57),
  -- Drapion - Cut - HM01
  (452, 45200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 58),
  -- Drapion - Strength - HM04
  (452, 45200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 59),
  -- Drapion - Rock Smash - HM06
  (452, 45200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 60),
  -- Drapion - Rock Climb - HM08
  (452, 45200, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 61),
  -- Drapion - Snore - Tutor
  (452, 45200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Drapion - Mud-Slap - Tutor
  (452, 45200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Drapion - Fury Cutter - Tutor
  (452, 45200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Drapion - Knock Off - Tutor
  (452, 45200, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Drapion - Aqua Tail - Tutor
  (452, 45200, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Croagunk - Astonish - Level 1
  (453, 45300, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croagunk - Mud-Slap - Level 3
  (453, 45300, 189, 9, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Croagunk - Poison Sting - Level 8
  (453, 45300, 40, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Croagunk - Taunt - Level 10
  (453, 45300, 269, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Croagunk - Pursuit - Level 15
  (453, 45300, 228, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Croagunk - Feint Attack - Level 17
  (453, 45300, 185, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Croagunk - Revenge - Level 22
  (453, 45300, 279, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Croagunk - Swagger - Level 24
  (453, 45300, 207, 9, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Croagunk - Mud Bomb - Level 29
  (453, 45300, 426, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Croagunk - Sucker Punch - Level 31
  (453, 45300, 389, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Croagunk - Nasty Plot - Level 36
  (453, 45300, 417, 9, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Croagunk - Poison Jab - Level 38
  (453, 45300, 398, 9, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Croagunk - Sludge Bomb - Level 43
  (453, 45300, 188, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Croagunk - Flatter - Level 45
  (453, 45300, 260, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Croagunk - Focus Punch - TM01
  (453, 45300, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Croagunk - Toxic - TM06
  (453, 45300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Croagunk - Bulk Up - TM08
  (453, 45300, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 17),
  -- Croagunk - Hidden Power - TM10
  (453, 45300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Croagunk - Sunny Day - TM11
  (453, 45300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Croagunk - Taunt - TM12
  (453, 45300, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 20),
  -- Croagunk - Protect - TM17
  (453, 45300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Croagunk - Rain Dance - TM18
  (453, 45300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Croagunk - Frustration - TM21
  (453, 45300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Croagunk - Earthquake - TM26
  (453, 45300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Croagunk - Return - TM27
  (453, 45300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Croagunk - Dig - TM28
  (453, 45300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Croagunk - Shadow Ball - TM30
  (453, 45300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Croagunk - Brick Break - TM31
  (453, 45300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 28),
  -- Croagunk - Double Team - TM32
  (453, 45300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Croagunk - Sludge Bomb - TM36
  (453, 45300, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 30),
  -- Croagunk - Rock Tomb - TM39
  (453, 45300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 31),
  -- Croagunk - Torment - TM41
  (453, 45300, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 32),
  -- Croagunk - Facade - TM42
  (453, 45300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Croagunk - Secret Power - TM43
  (453, 45300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Croagunk - Rest - TM44
  (453, 45300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Croagunk - Attract - TM45
  (453, 45300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Croagunk - Thief - TM46
  (453, 45300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 37),
  -- Croagunk - Snatch - TM49
  (453, 45300, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 38),
  -- Croagunk - Focus Blast - TM52
  (453, 45300, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 39),
  -- Croagunk - Fling - TM56
  (453, 45300, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 40),
  -- Croagunk - Endure - TM58
  (453, 45300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Croagunk - Embargo - TM63
  (453, 45300, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 42),
  -- Croagunk - Payback - TM66
  (453, 45300, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 43),
  -- Croagunk - Captivate - TM78
  (453, 45300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Croagunk - Dark Pulse - TM79
  (453, 45300, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 45),
  -- Croagunk - Rock Slide - TM80
  (453, 45300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 46),
  -- Croagunk - X-Scissor - TM81
  (453, 45300, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 47),
  -- Croagunk - Sleep Talk - TM82
  (453, 45300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Croagunk - Natural Gift - TM83
  (453, 45300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Croagunk - Poison Jab - TM84
  (453, 45300, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 50),
  -- Croagunk - Swagger - TM87
  (453, 45300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Croagunk - Substitute - TM90
  (453, 45300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Croagunk - Strength - HM04
  (453, 45300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 53),
  -- Croagunk - Rock Smash - HM06
  (453, 45300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 54),
  -- Croagunk - Rock Climb - HM08
  (453, 45300, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 55),
  -- Croagunk - Headbutt - Egg
  (453, 45300, 29, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Croagunk - Meditate - Egg
  (453, 45300, 96, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Croagunk - Dynamic Punch - Egg
  (453, 45300, 223, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Croagunk - Cross Chop - Egg
  (453, 45300, 238, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Croagunk - Fake Out - Egg
  (453, 45300, 252, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Croagunk - Smelling Salts - Egg
  (453, 45300, 265, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Croagunk - Wake-Up Slap - Egg
  (453, 45300, 358, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Croagunk - Feint - Egg
  (453, 45300, 364, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Croagunk - Me First - Egg
  (453, 45300, 382, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Croagunk - Vacuum Wave - Egg
  (453, 45300, 410, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Croagunk - Bullet Punch - Egg
  (453, 45300, 418, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Croagunk - Ice Punch - Tutor
  (453, 45300, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Croagunk - Thunder Punch - Tutor
  (453, 45300, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Croagunk - Snore - Tutor
  (453, 45300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Croagunk - Spite - Tutor
  (453, 45300, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Croagunk - Mud-Slap - Tutor
  (453, 45300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Croagunk - Icy Wind - Tutor
  (453, 45300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Croagunk - Fury Cutter - Tutor
  (453, 45300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Croagunk - Helping Hand - Tutor
  (453, 45300, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Croagunk - Knock Off - Tutor
  (453, 45300, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Croagunk - Bounce - Tutor
  (453, 45300, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Croagunk - Sucker Punch - Tutor
  (453, 45300, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Croagunk - Vacuum Wave - Tutor
  (453, 45300, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Croagunk - Gunk Shot - Tutor
  (453, 45300, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Toxicroak - Poison Sting - Level 1
  (454, 45400, 40, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxicroak - Mud-Slap - Level 1
  (454, 45400, 189, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxicroak - Astonish - Level 1
  (454, 45400, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxicroak - Mud-Slap - Level 3
  (454, 45400, 189, 9, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Toxicroak - Poison Sting - Level 8
  (454, 45400, 40, 9, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Toxicroak - Taunt - Level 10
  (454, 45400, 269, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Toxicroak - Pursuit - Level 15
  (454, 45400, 228, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Toxicroak - Feint Attack - Level 17
  (454, 45400, 185, 9, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Toxicroak - Revenge - Level 22
  (454, 45400, 279, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Toxicroak - Swagger - Level 24
  (454, 45400, 207, 9, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Toxicroak - Mud Bomb - Level 29
  (454, 45400, 426, 9, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Toxicroak - Sucker Punch - Level 31
  (454, 45400, 389, 9, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Toxicroak - Nasty Plot - Level 36
  (454, 45400, 417, 9, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Toxicroak - Poison Jab - Level 41
  (454, 45400, 398, 9, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Toxicroak - Sludge Bomb - Level 49
  (454, 45400, 188, 9, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Toxicroak - Flatter - Level 54
  (454, 45400, 260, 9, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Toxicroak - Focus Punch - TM01
  (454, 45400, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Toxicroak - Toxic - TM06
  (454, 45400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Toxicroak - Bulk Up - TM08
  (454, 45400, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 19),
  -- Toxicroak - Hidden Power - TM10
  (454, 45400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Toxicroak - Sunny Day - TM11
  (454, 45400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Toxicroak - Taunt - TM12
  (454, 45400, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 22),
  -- Toxicroak - Hyper Beam - TM15
  (454, 45400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Toxicroak - Protect - TM17
  (454, 45400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Toxicroak - Rain Dance - TM18
  (454, 45400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Toxicroak - Frustration - TM21
  (454, 45400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Toxicroak - Earthquake - TM26
  (454, 45400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 27),
  -- Toxicroak - Return - TM27
  (454, 45400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Toxicroak - Dig - TM28
  (454, 45400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 29),
  -- Toxicroak - Shadow Ball - TM30
  (454, 45400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Toxicroak - Brick Break - TM31
  (454, 45400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 31),
  -- Toxicroak - Double Team - TM32
  (454, 45400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Toxicroak - Sludge Bomb - TM36
  (454, 45400, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 33),
  -- Toxicroak - Rock Tomb - TM39
  (454, 45400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Toxicroak - Torment - TM41
  (454, 45400, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 35),
  -- Toxicroak - Facade - TM42
  (454, 45400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Toxicroak - Secret Power - TM43
  (454, 45400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Toxicroak - Rest - TM44
  (454, 45400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Toxicroak - Attract - TM45
  (454, 45400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 39),
  -- Toxicroak - Thief - TM46
  (454, 45400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 40),
  -- Toxicroak - Snatch - TM49
  (454, 45400, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 41),
  -- Toxicroak - Focus Blast - TM52
  (454, 45400, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 42),
  -- Toxicroak - Fling - TM56
  (454, 45400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 43),
  -- Toxicroak - Endure - TM58
  (454, 45400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Toxicroak - Embargo - TM63
  (454, 45400, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 45),
  -- Toxicroak - Payback - TM66
  (454, 45400, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 46),
  -- Toxicroak - Giga Impact - TM68
  (454, 45400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 47),
  -- Toxicroak - Stone Edge - TM71
  (454, 45400, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 48),
  -- Toxicroak - Swords Dance - TM75
  (454, 45400, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 49),
  -- Toxicroak - Captivate - TM78
  (454, 45400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 50),
  -- Toxicroak - Dark Pulse - TM79
  (454, 45400, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 51),
  -- Toxicroak - Rock Slide - TM80
  (454, 45400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 52),
  -- Toxicroak - X-Scissor - TM81
  (454, 45400, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 53),
  -- Toxicroak - Sleep Talk - TM82
  (454, 45400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 54),
  -- Toxicroak - Natural Gift - TM83
  (454, 45400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 55),
  -- Toxicroak - Poison Jab - TM84
  (454, 45400, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 56),
  -- Toxicroak - Swagger - TM87
  (454, 45400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 57),
  -- Toxicroak - Substitute - TM90
  (454, 45400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 58),
  -- Toxicroak - Cut - HM01
  (454, 45400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 59),
  -- Toxicroak - Strength - HM04
  (454, 45400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 60),
  -- Toxicroak - Rock Smash - HM06
  (454, 45400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 61),
  -- Toxicroak - Rock Climb - HM08
  (454, 45400, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 62),
  -- Toxicroak - Ice Punch - Tutor
  (454, 45400, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Toxicroak - Thunder Punch - Tutor
  (454, 45400, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Toxicroak - Snore - Tutor
  (454, 45400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Toxicroak - Spite - Tutor
  (454, 45400, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Toxicroak - Mud-Slap - Tutor
  (454, 45400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Toxicroak - Icy Wind - Tutor
  (454, 45400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Toxicroak - Fury Cutter - Tutor
  (454, 45400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Toxicroak - Helping Hand - Tutor
  (454, 45400, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Toxicroak - Knock Off - Tutor
  (454, 45400, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Toxicroak - Bounce - Tutor
  (454, 45400, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Toxicroak - Sucker Punch - Tutor
  (454, 45400, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Toxicroak - Vacuum Wave - Tutor
  (454, 45400, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Toxicroak - Gunk Shot - Tutor
  (454, 45400, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Carnivine - Bind - Level 1
  (455, 45500, 20, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carnivine - Growth - Level 1
  (455, 45500, 74, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carnivine - Bite - Level 7
  (455, 45500, 44, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Carnivine - Vine Whip - Level 11
  (455, 45500, 22, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Carnivine - Sweet Scent - Level 17
  (455, 45500, 230, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Carnivine - Ingrain - Level 21
  (455, 45500, 275, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Carnivine - Feint Attack - Level 27
  (455, 45500, 185, 9, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Carnivine - Stockpile - Level 31
  (455, 45500, 254, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Carnivine - Spit Up - Level 31
  (455, 45500, 255, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Carnivine - Swallow - Level 31
  (455, 45500, 256, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Carnivine - Crunch - Level 37
  (455, 45500, 242, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Carnivine - Wring Out - Level 41
  (455, 45500, 378, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Carnivine - Power Whip - Level 47
  (455, 45500, 438, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Carnivine - Toxic - TM06
  (455, 45500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Carnivine - Bullet Seed - TM09
  (455, 45500, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 15),
  -- Carnivine - Hidden Power - TM10
  (455, 45500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Carnivine - Sunny Day - TM11
  (455, 45500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Carnivine - Hyper Beam - TM15
  (455, 45500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 18),
  -- Carnivine - Protect - TM17
  (455, 45500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Carnivine - Giga Drain - TM19
  (455, 45500, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 20),
  -- Carnivine - Frustration - TM21
  (455, 45500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Carnivine - Solar Beam - TM22
  (455, 45500, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 22),
  -- Carnivine - Return - TM27
  (455, 45500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Carnivine - Double Team - TM32
  (455, 45500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Carnivine - Sludge Bomb - TM36
  (455, 45500, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 25),
  -- Carnivine - Facade - TM42
  (455, 45500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Carnivine - Secret Power - TM43
  (455, 45500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Carnivine - Rest - TM44
  (455, 45500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Carnivine - Attract - TM45
  (455, 45500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Carnivine - Thief - TM46
  (455, 45500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Carnivine - Energy Ball - TM53
  (455, 45500, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 31),
  -- Carnivine - Fling - TM56
  (455, 45500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 32),
  -- Carnivine - Endure - TM58
  (455, 45500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Carnivine - Payback - TM66
  (455, 45500, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 34),
  -- Carnivine - Giga Impact - TM68
  (455, 45500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 35),
  -- Carnivine - Flash - TM70
  (455, 45500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 36),
  -- Carnivine - Swords Dance - TM75
  (455, 45500, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 37),
  -- Carnivine - Captivate - TM78
  (455, 45500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Carnivine - Sleep Talk - TM82
  (455, 45500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Carnivine - Natural Gift - TM83
  (455, 45500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Carnivine - Grass Knot - TM86
  (455, 45500, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 41),
  -- Carnivine - Swagger - TM87
  (455, 45500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Carnivine - Substitute - TM90
  (455, 45500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Carnivine - Cut - HM01
  (455, 45500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 44),
  -- Carnivine - Slam - Egg
  (455, 45500, 21, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Carnivine - Leech Seed - Egg
  (455, 45500, 73, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Carnivine - Razor Leaf - Egg
  (455, 45500, 75, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Carnivine - Stun Spore - Egg
  (455, 45500, 78, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Carnivine - Sleep Powder - Egg
  (455, 45500, 79, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Carnivine - Synthesis - Egg
  (455, 45500, 235, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Carnivine - Magical Leaf - Egg
  (455, 45500, 345, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Carnivine - Worry Seed - Egg
  (455, 45500, 388, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Carnivine - Snore - Tutor
  (455, 45500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Carnivine - Mud-Slap - Tutor
  (455, 45500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Carnivine - Fury Cutter - Tutor
  (455, 45500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Carnivine - Synthesis - Tutor
  (455, 45500, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Carnivine - Knock Off - Tutor
  (455, 45500, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Carnivine - Gastro Acid - Tutor
  (455, 45500, 380, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Carnivine - Seed Bomb - Tutor
  (455, 45500, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Finneon - Pound - Level 1
  (456, 45600, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Finneon - Water Gun - Level 6
  (456, 45600, 55, 9, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Finneon - Attract - Level 10
  (456, 45600, 213, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Finneon - Rain Dance - Level 13
  (456, 45600, 240, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Finneon - Gust - Level 17
  (456, 45600, 16, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Finneon - Water Pulse - Level 22
  (456, 45600, 352, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Finneon - Captivate - Level 26
  (456, 45600, 445, 9, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Finneon - Safeguard - Level 29
  (456, 45600, 219, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Finneon - Aqua Ring - Level 33
  (456, 45600, 392, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Finneon - Whirlpool - Level 38
  (456, 45600, 250, 9, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Finneon - U-turn - Level 42
  (456, 45600, 369, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Finneon - Bounce - Level 45
  (456, 45600, 340, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Finneon - Silver Wind - Level 49
  (456, 45600, 318, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Finneon - Water Pulse - TM03
  (456, 45600, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Finneon - Toxic - TM06
  (456, 45600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Finneon - Hail - TM07
  (456, 45600, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 16),
  -- Finneon - Hidden Power - TM10
  (456, 45600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Finneon - Ice Beam - TM13
  (456, 45600, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Finneon - Blizzard - TM14
  (456, 45600, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Finneon - Protect - TM17
  (456, 45600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Finneon - Rain Dance - TM18
  (456, 45600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Finneon - Safeguard - TM20
  (456, 45600, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 22),
  -- Finneon - Frustration - TM21
  (456, 45600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Finneon - Return - TM27
  (456, 45600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Finneon - Double Team - TM32
  (456, 45600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Finneon - Facade - TM42
  (456, 45600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Finneon - Secret Power - TM43
  (456, 45600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Finneon - Rest - TM44
  (456, 45600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Finneon - Attract - TM45
  (456, 45600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Finneon - Brine - TM55
  (456, 45600, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 30),
  -- Finneon - Endure - TM58
  (456, 45600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Finneon - Silver Wind - TM62
  (456, 45600, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 32),
  -- Finneon - Payback - TM66
  (456, 45600, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 33),
  -- Finneon - Flash - TM70
  (456, 45600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 34),
  -- Finneon - Psych Up - TM77
  (456, 45600, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 35),
  -- Finneon - Captivate - TM78
  (456, 45600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Finneon - Sleep Talk - TM82
  (456, 45600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 37),
  -- Finneon - Natural Gift - TM83
  (456, 45600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 38),
  -- Finneon - Swagger - TM87
  (456, 45600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 39),
  -- Finneon - U-turn - TM89
  (456, 45600, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 40),
  -- Finneon - Substitute - TM90
  (456, 45600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Finneon - Surf - HM03
  (456, 45600, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 42),
  -- Finneon - Defog - HM05
  (456, 45600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 43),
  -- Finneon - Waterfall - HM07
  (456, 45600, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 44),
  -- Finneon - Psybeam - Egg
  (456, 45600, 60, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Finneon - Agility - Egg
  (456, 45600, 97, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Finneon - Splash - Egg
  (456, 45600, 150, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Finneon - Flail - Egg
  (456, 45600, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Finneon - Sweet Kiss - Egg
  (456, 45600, 186, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Finneon - Charm - Egg
  (456, 45600, 204, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Finneon - Tickle - Egg
  (456, 45600, 321, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Finneon - Aqua Tail - Egg
  (456, 45600, 401, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Finneon - Swift - Tutor
  (456, 45600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Finneon - Snore - Tutor
  (456, 45600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Finneon - Icy Wind - Tutor
  (456, 45600, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Finneon - Twister - Tutor
  (456, 45600, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Finneon - Dive - Tutor
  (456, 45600, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Finneon - Air Cutter - Tutor
  (456, 45600, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Finneon - Bounce - Tutor
  (456, 45600, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Finneon - Aqua Tail - Tutor
  (456, 45600, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Finneon - Ominous Wind - Tutor
  (456, 45600, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Lumineon - Pound - Level 1
  (457, 45700, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lumineon - Water Gun - Level 1
  (457, 45700, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lumineon - Attract - Level 1
  (457, 45700, 213, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lumineon - Water Gun - Level 6
  (457, 45700, 55, 9, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Lumineon - Attract - Level 10
  (457, 45700, 213, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Lumineon - Rain Dance - Level 13
  (457, 45700, 240, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Lumineon - Gust - Level 17
  (457, 45700, 16, 9, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Lumineon - Water Pulse - Level 22
  (457, 45700, 352, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Lumineon - Captivate - Level 26
  (457, 45700, 445, 9, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Lumineon - Safeguard - Level 29
  (457, 45700, 219, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Lumineon - Aqua Ring - Level 35
  (457, 45700, 392, 9, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Lumineon - Whirlpool - Level 42
  (457, 45700, 250, 9, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Lumineon - U-turn - Level 48
  (457, 45700, 369, 9, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Lumineon - Bounce - Level 53
  (457, 45700, 340, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Lumineon - Silver Wind - Level 59
  (457, 45700, 318, 9, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Lumineon - Water Pulse - TM03
  (457, 45700, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Lumineon - Toxic - TM06
  (457, 45700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Lumineon - Hail - TM07
  (457, 45700, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Lumineon - Hidden Power - TM10
  (457, 45700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Lumineon - Ice Beam - TM13
  (457, 45700, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Lumineon - Blizzard - TM14
  (457, 45700, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Lumineon - Hyper Beam - TM15
  (457, 45700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Lumineon - Protect - TM17
  (457, 45700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Lumineon - Rain Dance - TM18
  (457, 45700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Lumineon - Safeguard - TM20
  (457, 45700, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 25),
  -- Lumineon - Frustration - TM21
  (457, 45700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Lumineon - Return - TM27
  (457, 45700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Lumineon - Double Team - TM32
  (457, 45700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Lumineon - Facade - TM42
  (457, 45700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Lumineon - Secret Power - TM43
  (457, 45700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Lumineon - Rest - TM44
  (457, 45700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Lumineon - Attract - TM45
  (457, 45700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Lumineon - Brine - TM55
  (457, 45700, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 33),
  -- Lumineon - Endure - TM58
  (457, 45700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Lumineon - Silver Wind - TM62
  (457, 45700, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 35),
  -- Lumineon - Payback - TM66
  (457, 45700, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 36),
  -- Lumineon - Giga Impact - TM68
  (457, 45700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Lumineon - Flash - TM70
  (457, 45700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Lumineon - Psych Up - TM77
  (457, 45700, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 39),
  -- Lumineon - Captivate - TM78
  (457, 45700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Lumineon - Sleep Talk - TM82
  (457, 45700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Lumineon - Natural Gift - TM83
  (457, 45700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Lumineon - Swagger - TM87
  (457, 45700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Lumineon - U-turn - TM89
  (457, 45700, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 44),
  -- Lumineon - Substitute - TM90
  (457, 45700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Lumineon - Surf - HM03
  (457, 45700, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 46),
  -- Lumineon - Defog - HM05
  (457, 45700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Lumineon - Waterfall - HM07
  (457, 45700, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 48),
  -- Lumineon - Swift - Tutor
  (457, 45700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Lumineon - Snore - Tutor
  (457, 45700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Lumineon - Icy Wind - Tutor
  (457, 45700, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Lumineon - Twister - Tutor
  (457, 45700, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Lumineon - Dive - Tutor
  (457, 45700, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Lumineon - Air Cutter - Tutor
  (457, 45700, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Lumineon - Bounce - Tutor
  (457, 45700, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Lumineon - Aqua Tail - Tutor
  (457, 45700, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Lumineon - Ominous Wind - Tutor
  (457, 45700, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Mantyke - Tackle - Level 1
  (458, 45800, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantyke - Bubble - Level 1
  (458, 45800, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantyke - Supersonic - Level 4
  (458, 45800, 48, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mantyke - Bubble Beam - Level 10
  (458, 45800, 61, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mantyke - Headbutt - Level 13
  (458, 45800, 29, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Mantyke - Agility - Level 19
  (458, 45800, 97, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Mantyke - Wing Attack - Level 22
  (458, 45800, 17, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Mantyke - Water Pulse - Level 28
  (458, 45800, 352, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Mantyke - Take Down - Level 31
  (458, 45800, 36, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Mantyke - Confuse Ray - Level 37
  (458, 45800, 109, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Mantyke - Bounce - Level 40
  (458, 45800, 340, 9, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Mantyke - Aqua Ring - Level 46
  (458, 45800, 392, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Mantyke - Hydro Pump - Level 49
  (458, 45800, 56, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Mantyke - Water Pulse - TM03
  (458, 45800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Mantyke - Toxic - TM06
  (458, 45800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Mantyke - Hail - TM07
  (458, 45800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 16),
  -- Mantyke - Hidden Power - TM10
  (458, 45800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Mantyke - Ice Beam - TM13
  (458, 45800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Mantyke - Blizzard - TM14
  (458, 45800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Mantyke - Protect - TM17
  (458, 45800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Mantyke - Rain Dance - TM18
  (458, 45800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Mantyke - Frustration - TM21
  (458, 45800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Mantyke - Earthquake - TM26
  (458, 45800, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 23),
  -- Mantyke - Return - TM27
  (458, 45800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Mantyke - Double Team - TM32
  (458, 45800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Mantyke - Aerial Ace - TM40
  (458, 45800, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 26),
  -- Mantyke - Facade - TM42
  (458, 45800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Mantyke - Secret Power - TM43
  (458, 45800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Mantyke - Rest - TM44
  (458, 45800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Mantyke - Attract - TM45
  (458, 45800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Mantyke - Endure - TM58
  (458, 45800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Mantyke - Captivate - TM78
  (458, 45800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 32),
  -- Mantyke - Sleep Talk - TM82
  (458, 45800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 33),
  -- Mantyke - Natural Gift - TM83
  (458, 45800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 34),
  -- Mantyke - Swagger - TM87
  (458, 45800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 35),
  -- Mantyke - Substitute - TM90
  (458, 45800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 36),
  -- Mantyke - Surf - HM03
  (458, 45800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 37),
  -- Mantyke - Defog - HM05
  (458, 45800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 38),
  -- Mantyke - Waterfall - HM07
  (458, 45800, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 39),
  -- Mantyke - Slam - Egg
  (458, 45800, 21, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mantyke - Hydro Pump - Egg
  (458, 45800, 56, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mantyke - Haze - Egg
  (458, 45800, 114, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mantyke - Splash - Egg
  (458, 45800, 150, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mantyke - Rock Slide - Egg
  (458, 45800, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mantyke - Twister - Egg
  (458, 45800, 239, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mantyke - Mirror Coat - Egg
  (458, 45800, 243, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mantyke - Mud Sport - Egg
  (458, 45800, 300, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mantyke - Signal Beam - Egg
  (458, 45800, 324, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mantyke - Water Sport - Egg
  (458, 45800, 346, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mantyke - Swift - Tutor
  (458, 45800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Mantyke - Snore - Tutor
  (458, 45800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Mantyke - Mud-Slap - Tutor
  (458, 45800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Mantyke - Icy Wind - Tutor
  (458, 45800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Mantyke - Helping Hand - Tutor
  (458, 45800, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Mantyke - Dive - Tutor
  (458, 45800, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Mantyke - Air Cutter - Tutor
  (458, 45800, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Mantyke - Bounce - Tutor
  (458, 45800, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Snover - Leer - Level 1
  (459, 45900, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snover - Powder Snow - Level 1
  (459, 45900, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snover - Razor Leaf - Level 5
  (459, 45900, 75, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Snover - Icy Wind - Level 9
  (459, 45900, 196, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Snover - Grass Whistle - Level 13
  (459, 45900, 320, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snover - Swagger - Level 17
  (459, 45900, 207, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Snover - Mist - Level 21
  (459, 45900, 54, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Snover - Ice Shard - Level 26
  (459, 45900, 420, 9, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Snover - Ingrain - Level 31
  (459, 45900, 275, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Snover - Wood Hammer - Level 36
  (459, 45900, 452, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Snover - Blizzard - Level 41
  (459, 45900, 59, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Snover - Sheer Cold - Level 46
  (459, 45900, 329, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Snover - Water Pulse - TM03
  (459, 45900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Snover - Toxic - TM06
  (459, 45900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Snover - Hail - TM07
  (459, 45900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 15),
  -- Snover - Bullet Seed - TM09
  (459, 45900, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 16),
  -- Snover - Hidden Power - TM10
  (459, 45900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Snover - Ice Beam - TM13
  (459, 45900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Snover - Blizzard - TM14
  (459, 45900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Snover - Light Screen - TM16
  (459, 45900, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 20),
  -- Snover - Protect - TM17
  (459, 45900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Snover - Rain Dance - TM18
  (459, 45900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Snover - Giga Drain - TM19
  (459, 45900, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 23),
  -- Snover - Safeguard - TM20
  (459, 45900, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 24),
  -- Snover - Frustration - TM21
  (459, 45900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Snover - Solar Beam - TM22
  (459, 45900, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 26),
  -- Snover - Iron Tail - TM23
  (459, 45900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Snover - Return - TM27
  (459, 45900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Snover - Shadow Ball - TM30
  (459, 45900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Snover - Double Team - TM32
  (459, 45900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Snover - Facade - TM42
  (459, 45900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Snover - Secret Power - TM43
  (459, 45900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Snover - Rest - TM44
  (459, 45900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Snover - Attract - TM45
  (459, 45900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Snover - Energy Ball - TM53
  (459, 45900, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 35),
  -- Snover - Endure - TM58
  (459, 45900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Snover - Flash - TM70
  (459, 45900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 37),
  -- Snover - Avalanche - TM72
  (459, 45900, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 38),
  -- Snover - Swords Dance - TM75
  (459, 45900, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 39),
  -- Snover - Captivate - TM78
  (459, 45900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Snover - Sleep Talk - TM82
  (459, 45900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Snover - Natural Gift - TM83
  (459, 45900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Snover - Grass Knot - TM86
  (459, 45900, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 43),
  -- Snover - Swagger - TM87
  (459, 45900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Snover - Substitute - TM90
  (459, 45900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Snover - Stomp - Egg
  (459, 45900, 23, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snover - Double-Edge - Egg
  (459, 45900, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snover - Mist - Egg
  (459, 45900, 54, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Snover - Leech Seed - Egg
  (459, 45900, 73, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Snover - Growth - Egg
  (459, 45900, 74, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Snover - Magical Leaf - Egg
  (459, 45900, 345, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Snover - Seed Bomb - Egg
  (459, 45900, 402, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Snover - Ice Punch - Tutor
  (459, 45900, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Snover - Snore - Tutor
  (459, 45900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Snover - Mud-Slap - Tutor
  (459, 45900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Snover - Icy Wind - Tutor
  (459, 45900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Snover - Synthesis - Tutor
  (459, 45900, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Snover - Seed Bomb - Tutor
  (459, 45900, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Abomasnow - Ice Punch - Level 1
  (460, 46000, 8, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abomasnow - Leer - Level 1
  (460, 46000, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Abomasnow - Razor Leaf - Level 1
  (460, 46000, 75, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Abomasnow - Powder Snow - Level 1
  (460, 46000, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Abomasnow - Icy Wind - Level 1
  (460, 46000, 196, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Abomasnow - Razor Leaf - Level 5
  (460, 46000, 75, 9, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Abomasnow - Icy Wind - Level 9
  (460, 46000, 196, 9, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Abomasnow - Grass Whistle - Level 13
  (460, 46000, 320, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Abomasnow - Swagger - Level 17
  (460, 46000, 207, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Abomasnow - Mist - Level 21
  (460, 46000, 54, 9, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Abomasnow - Ice Shard - Level 26
  (460, 46000, 420, 9, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Abomasnow - Ingrain - Level 31
  (460, 46000, 275, 9, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Abomasnow - Wood Hammer - Level 36
  (460, 46000, 452, 9, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Abomasnow - Blizzard - Level 47
  (460, 46000, 59, 9, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Abomasnow - Sheer Cold - Level 58
  (460, 46000, 329, 9, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Abomasnow - Focus Punch - TM01
  (460, 46000, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Abomasnow - Water Pulse - TM03
  (460, 46000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Abomasnow - Toxic - TM06
  (460, 46000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Abomasnow - Hail - TM07
  (460, 46000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 19),
  -- Abomasnow - Bullet Seed - TM09
  (460, 46000, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 20),
  -- Abomasnow - Hidden Power - TM10
  (460, 46000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Abomasnow - Ice Beam - TM13
  (460, 46000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Abomasnow - Blizzard - TM14
  (460, 46000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Abomasnow - Hyper Beam - TM15
  (460, 46000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Abomasnow - Light Screen - TM16
  (460, 46000, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 25),
  -- Abomasnow - Protect - TM17
  (460, 46000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Abomasnow - Rain Dance - TM18
  (460, 46000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Abomasnow - Giga Drain - TM19
  (460, 46000, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 28),
  -- Abomasnow - Safeguard - TM20
  (460, 46000, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 29),
  -- Abomasnow - Frustration - TM21
  (460, 46000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 30),
  -- Abomasnow - Solar Beam - TM22
  (460, 46000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 31),
  -- Abomasnow - Iron Tail - TM23
  (460, 46000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 32),
  -- Abomasnow - Earthquake - TM26
  (460, 46000, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 33),
  -- Abomasnow - Return - TM27
  (460, 46000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 34),
  -- Abomasnow - Shadow Ball - TM30
  (460, 46000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 35),
  -- Abomasnow - Brick Break - TM31
  (460, 46000, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 36),
  -- Abomasnow - Double Team - TM32
  (460, 46000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 37),
  -- Abomasnow - Rock Tomb - TM39
  (460, 46000, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 38),
  -- Abomasnow - Facade - TM42
  (460, 46000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 39),
  -- Abomasnow - Secret Power - TM43
  (460, 46000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 40),
  -- Abomasnow - Rest - TM44
  (460, 46000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 41),
  -- Abomasnow - Attract - TM45
  (460, 46000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 42),
  -- Abomasnow - Focus Blast - TM52
  (460, 46000, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 43),
  -- Abomasnow - Energy Ball - TM53
  (460, 46000, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 44),
  -- Abomasnow - Fling - TM56
  (460, 46000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 45),
  -- Abomasnow - Endure - TM58
  (460, 46000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 46),
  -- Abomasnow - Giga Impact - TM68
  (460, 46000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 47),
  -- Abomasnow - Flash - TM70
  (460, 46000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 48),
  -- Abomasnow - Avalanche - TM72
  (460, 46000, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 49),
  -- Abomasnow - Swords Dance - TM75
  (460, 46000, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 50),
  -- Abomasnow - Captivate - TM78
  (460, 46000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 51),
  -- Abomasnow - Rock Slide - TM80
  (460, 46000, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 52),
  -- Abomasnow - Sleep Talk - TM82
  (460, 46000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 53),
  -- Abomasnow - Natural Gift - TM83
  (460, 46000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 54),
  -- Abomasnow - Grass Knot - TM86
  (460, 46000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 55),
  -- Abomasnow - Swagger - TM87
  (460, 46000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 56),
  -- Abomasnow - Substitute - TM90
  (460, 46000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 57),
  -- Abomasnow - Strength - HM04
  (460, 46000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 58),
  -- Abomasnow - Rock Smash - HM06
  (460, 46000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 59),
  -- Abomasnow - Rock Climb - HM08
  (460, 46000, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 60),
  -- Abomasnow - Ice Punch - Tutor
  (460, 46000, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Abomasnow - Snore - Tutor
  (460, 46000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Abomasnow - Mud-Slap - Tutor
  (460, 46000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Abomasnow - Icy Wind - Tutor
  (460, 46000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Abomasnow - Outrage - Tutor
  (460, 46000, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Abomasnow - Synthesis - Tutor
  (460, 46000, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Abomasnow - Seed Bomb - Tutor
  (460, 46000, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Weavile - Scratch - Level 1
  (461, 46100, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weavile - Leer - Level 1
  (461, 46100, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weavile - Quick Attack - Level 1
  (461, 46100, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weavile - Taunt - Level 1
  (461, 46100, 269, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weavile - Revenge - Level 1
  (461, 46100, 279, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weavile - Assurance - Level 1
  (461, 46100, 372, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Weavile - Embargo - Level 1
  (461, 46100, 373, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Weavile - Quick Attack - Level 8
  (461, 46100, 98, 9, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Weavile - Screech - Level 10
  (461, 46100, 103, 9, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Weavile - Feint Attack - Level 14
  (461, 46100, 185, 9, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Weavile - Fury Swipes - Level 21
  (461, 46100, 154, 9, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Weavile - Nasty Plot - Level 24
  (461, 46100, 417, 9, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Weavile - Icy Wind - Level 28
  (461, 46100, 196, 9, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Weavile - Night Slash - Level 35
  (461, 46100, 400, 9, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Weavile - Fling - Level 38
  (461, 46100, 374, 9, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Weavile - Metal Claw - Level 42
  (461, 46100, 232, 9, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Weavile - Dark Pulse - Level 49
  (461, 46100, 399, 9, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Weavile - Focus Punch - TM01
  (461, 46100, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 18),
  -- Weavile - Calm Mind - TM04
  (461, 46100, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 19),
  -- Weavile - Toxic - TM06
  (461, 46100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Weavile - Hail - TM07
  (461, 46100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 21),
  -- Weavile - Hidden Power - TM10
  (461, 46100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Weavile - Sunny Day - TM11
  (461, 46100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 23),
  -- Weavile - Taunt - TM12
  (461, 46100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 24),
  -- Weavile - Ice Beam - TM13
  (461, 46100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 25),
  -- Weavile - Blizzard - TM14
  (461, 46100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 26),
  -- Weavile - Hyper Beam - TM15
  (461, 46100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 27),
  -- Weavile - Protect - TM17
  (461, 46100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 28),
  -- Weavile - Rain Dance - TM18
  (461, 46100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 29),
  -- Weavile - Frustration - TM21
  (461, 46100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 30),
  -- Weavile - Iron Tail - TM23
  (461, 46100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 31),
  -- Weavile - Return - TM27
  (461, 46100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Weavile - Dig - TM28
  (461, 46100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 33),
  -- Weavile - Shadow Ball - TM30
  (461, 46100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 34),
  -- Weavile - Brick Break - TM31
  (461, 46100, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 35),
  -- Weavile - Double Team - TM32
  (461, 46100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 36),
  -- Weavile - Aerial Ace - TM40
  (461, 46100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 37),
  -- Weavile - Torment - TM41
  (461, 46100, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 38),
  -- Weavile - Facade - TM42
  (461, 46100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 39),
  -- Weavile - Secret Power - TM43
  (461, 46100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 40),
  -- Weavile - Rest - TM44
  (461, 46100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 41),
  -- Weavile - Attract - TM45
  (461, 46100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 42),
  -- Weavile - Thief - TM46
  (461, 46100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 43),
  -- Weavile - Snatch - TM49
  (461, 46100, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 44),
  -- Weavile - Focus Blast - TM52
  (461, 46100, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 45),
  -- Weavile - False Swipe - TM54
  (461, 46100, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 46),
  -- Weavile - Fling - TM56
  (461, 46100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 47),
  -- Weavile - Endure - TM58
  (461, 46100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 48),
  -- Weavile - Embargo - TM63
  (461, 46100, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 49),
  -- Weavile - Shadow Claw - TM65
  (461, 46100, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 50),
  -- Weavile - Payback - TM66
  (461, 46100, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 51),
  -- Weavile - Giga Impact - TM68
  (461, 46100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 52),
  -- Weavile - Avalanche - TM72
  (461, 46100, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 53),
  -- Weavile - Swords Dance - TM75
  (461, 46100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 54),
  -- Weavile - Psych Up - TM77
  (461, 46100, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 55),
  -- Weavile - Captivate - TM78
  (461, 46100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 56),
  -- Weavile - Dark Pulse - TM79
  (461, 46100, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 57),
  -- Weavile - X-Scissor - TM81
  (461, 46100, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 58),
  -- Weavile - Sleep Talk - TM82
  (461, 46100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 59),
  -- Weavile - Natural Gift - TM83
  (461, 46100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 60),
  -- Weavile - Poison Jab - TM84
  (461, 46100, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 61),
  -- Weavile - Dream Eater - TM85
  (461, 46100, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 62),
  -- Weavile - Swagger - TM87
  (461, 46100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 63),
  -- Weavile - Substitute - TM90
  (461, 46100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 64),
  -- Weavile - Cut - HM01
  (461, 46100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 65),
  -- Weavile - Surf - HM03
  (461, 46100, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 66),
  -- Weavile - Strength - HM04
  (461, 46100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 67),
  -- Weavile - Defog - HM05
  (461, 46100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 68),
  -- Weavile - Rock Smash - HM06
  (461, 46100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 69),
  -- Weavile - Ice Punch - Tutor
  (461, 46100, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Weavile - Swift - Tutor
  (461, 46100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Weavile - Snore - Tutor
  (461, 46100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Weavile - Spite - Tutor
  (461, 46100, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Weavile - Mud-Slap - Tutor
  (461, 46100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Weavile - Icy Wind - Tutor
  (461, 46100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Weavile - Fury Cutter - Tutor
  (461, 46100, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Weavile - Knock Off - Tutor
  (461, 46100, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Magnezone - Tackle - Level 1
  (462, 46200, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnezone - Supersonic - Level 1
  (462, 46200, 48, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnezone - Thunder Shock - Level 1
  (462, 46200, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magnezone - Barrier - Level 1
  (462, 46200, 112, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magnezone - Mirror Coat - Level 1
  (462, 46200, 243, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magnezone - Metal Sound - Level 1
  (462, 46200, 319, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magnezone - Thunder Shock - Level 6
  (462, 46200, 84, 9, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Magnezone - Supersonic - Level 11
  (462, 46200, 48, 9, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Magnezone - Sonic Boom - Level 14
  (462, 46200, 49, 9, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Magnezone - Thunder Wave - Level 17
  (462, 46200, 86, 9, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Magnezone - Spark - Level 22
  (462, 46200, 209, 9, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Magnezone - Lock-On - Level 27
  (462, 46200, 199, 9, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Magnezone - Magnet Bomb - Level 30
  (462, 46200, 443, 9, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Magnezone - Screech - Level 34
  (462, 46200, 103, 9, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Magnezone - Discharge - Level 40
  (462, 46200, 435, 9, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Magnezone - Mirror Shot - Level 46
  (462, 46200, 429, 9, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Magnezone - Magnet Rise - Level 50
  (462, 46200, 393, 9, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Magnezone - Gyro Ball - Level 54
  (462, 46200, 360, 9, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Magnezone - Zap Cannon - Level 60
  (462, 46200, 192, 9, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Magnezone - Toxic - TM06
  (462, 46200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Magnezone - Hidden Power - TM10
  (462, 46200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Magnezone - Sunny Day - TM11
  (462, 46200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Magnezone - Hyper Beam - TM15
  (462, 46200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Magnezone - Light Screen - TM16
  (462, 46200, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 24),
  -- Magnezone - Protect - TM17
  (462, 46200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Magnezone - Rain Dance - TM18
  (462, 46200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Magnezone - Frustration - TM21
  (462, 46200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Magnezone - Thunderbolt - TM24
  (462, 46200, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 28),
  -- Magnezone - Thunder - TM25
  (462, 46200, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 29),
  -- Magnezone - Return - TM27
  (462, 46200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Magnezone - Double Team - TM32
  (462, 46200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Magnezone - Reflect - TM33
  (462, 46200, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 32),
  -- Magnezone - Shock Wave - TM34
  (462, 46200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Magnezone - Facade - TM42
  (462, 46200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Magnezone - Secret Power - TM43
  (462, 46200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Magnezone - Rest - TM44
  (462, 46200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Magnezone - Charge Beam - TM57
  (462, 46200, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 37),
  -- Magnezone - Endure - TM58
  (462, 46200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Magnezone - Explosion - TM64
  (462, 46200, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 39),
  -- Magnezone - Recycle - TM67
  (462, 46200, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 40),
  -- Magnezone - Giga Impact - TM68
  (462, 46200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Magnezone - Flash - TM70
  (462, 46200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 42),
  -- Magnezone - Thunder Wave - TM73
  (462, 46200, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 43),
  -- Magnezone - Gyro Ball - TM74
  (462, 46200, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 44),
  -- Magnezone - Psych Up - TM77
  (462, 46200, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 45),
  -- Magnezone - Sleep Talk - TM82
  (462, 46200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Magnezone - Natural Gift - TM83
  (462, 46200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Magnezone - Swagger - TM87
  (462, 46200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 48),
  -- Magnezone - Substitute - TM90
  (462, 46200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Magnezone - Flash Cannon - TM91
  (462, 46200, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 50),
  -- Magnezone - Swift - Tutor
  (462, 46200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Magnezone - Snore - Tutor
  (462, 46200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Magnezone - Rollout - Tutor
  (462, 46200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Magnezone - Signal Beam - Tutor
  (462, 46200, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Magnezone - Iron Defense - Tutor
  (462, 46200, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Magnezone - Magnet Rise - Tutor
  (462, 46200, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Magnezone - Iron Head - Tutor
  (462, 46200, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Lickilicky - Lick - Level 1
  (463, 46300, 122, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickilicky - Supersonic - Level 5
  (463, 46300, 48, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Lickilicky - Defense Curl - Level 9
  (463, 46300, 111, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Lickilicky - Knock Off - Level 13
  (463, 46300, 282, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Lickilicky - Wrap - Level 17
  (463, 46300, 35, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Lickilicky - Stomp - Level 21
  (463, 46300, 23, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Lickilicky - Disable - Level 25
  (463, 46300, 50, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lickilicky - Slam - Level 29
  (463, 46300, 21, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Lickilicky - Rollout - Level 33
  (463, 46300, 205, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Lickilicky - Me First - Level 37
  (463, 46300, 382, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lickilicky - Refresh - Level 41
  (463, 46300, 287, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Lickilicky - Screech - Level 45
  (463, 46300, 103, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Lickilicky - Power Whip - Level 49
  (463, 46300, 438, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Lickilicky - Wring Out - Level 53
  (463, 46300, 378, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Lickilicky - Gyro Ball - Level 57
  (463, 46300, 360, 9, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Lickilicky - Focus Punch - TM01
  (463, 46300, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Lickilicky - Water Pulse - TM03
  (463, 46300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Lickilicky - Toxic - TM06
  (463, 46300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Lickilicky - Hidden Power - TM10
  (463, 46300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Lickilicky - Sunny Day - TM11
  (463, 46300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Lickilicky - Ice Beam - TM13
  (463, 46300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Lickilicky - Blizzard - TM14
  (463, 46300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Lickilicky - Hyper Beam - TM15
  (463, 46300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Lickilicky - Protect - TM17
  (463, 46300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Lickilicky - Rain Dance - TM18
  (463, 46300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Lickilicky - Frustration - TM21
  (463, 46300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Lickilicky - Solar Beam - TM22
  (463, 46300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Lickilicky - Iron Tail - TM23
  (463, 46300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Lickilicky - Thunderbolt - TM24
  (463, 46300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 29),
  -- Lickilicky - Thunder - TM25
  (463, 46300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 30),
  -- Lickilicky - Earthquake - TM26
  (463, 46300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 31),
  -- Lickilicky - Return - TM27
  (463, 46300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Lickilicky - Dig - TM28
  (463, 46300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 33),
  -- Lickilicky - Shadow Ball - TM30
  (463, 46300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 34),
  -- Lickilicky - Brick Break - TM31
  (463, 46300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 35),
  -- Lickilicky - Double Team - TM32
  (463, 46300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 36),
  -- Lickilicky - Shock Wave - TM34
  (463, 46300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 37),
  -- Lickilicky - Flamethrower - TM35
  (463, 46300, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 38),
  -- Lickilicky - Sandstorm - TM37
  (463, 46300, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 39),
  -- Lickilicky - Fire Blast - TM38
  (463, 46300, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 40),
  -- Lickilicky - Rock Tomb - TM39
  (463, 46300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 41),
  -- Lickilicky - Facade - TM42
  (463, 46300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 42),
  -- Lickilicky - Secret Power - TM43
  (463, 46300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 43),
  -- Lickilicky - Rest - TM44
  (463, 46300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 44),
  -- Lickilicky - Attract - TM45
  (463, 46300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 45),
  -- Lickilicky - Thief - TM46
  (463, 46300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 46),
  -- Lickilicky - Focus Blast - TM52
  (463, 46300, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 47),
  -- Lickilicky - Fling - TM56
  (463, 46300, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 48),
  -- Lickilicky - Endure - TM58
  (463, 46300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 49),
  -- Lickilicky - Explosion - TM64
  (463, 46300, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 50),
  -- Lickilicky - Giga Impact - TM68
  (463, 46300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 51),
  -- Lickilicky - Gyro Ball - TM74
  (463, 46300, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 52),
  -- Lickilicky - Swords Dance - TM75
  (463, 46300, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 53),
  -- Lickilicky - Psych Up - TM77
  (463, 46300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 54),
  -- Lickilicky - Captivate - TM78
  (463, 46300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 55),
  -- Lickilicky - Rock Slide - TM80
  (463, 46300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 56),
  -- Lickilicky - Sleep Talk - TM82
  (463, 46300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 57),
  -- Lickilicky - Natural Gift - TM83
  (463, 46300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 58),
  -- Lickilicky - Dream Eater - TM85
  (463, 46300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 59),
  -- Lickilicky - Swagger - TM87
  (463, 46300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 60),
  -- Lickilicky - Substitute - TM90
  (463, 46300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 61),
  -- Lickilicky - Cut - HM01
  (463, 46300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 62),
  -- Lickilicky - Surf - HM03
  (463, 46300, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 63),
  -- Lickilicky - Strength - HM04
  (463, 46300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 64),
  -- Lickilicky - Defog - HM05
  (463, 46300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 65),
  -- Lickilicky - Rock Smash - HM06
  (463, 46300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 66),
  -- Lickilicky - Rock Climb - HM08
  (463, 46300, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 67),
  -- Lickilicky - Fire Punch - Tutor
  (463, 46300, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Lickilicky - Ice Punch - Tutor
  (463, 46300, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Lickilicky - Thunder Punch - Tutor
  (463, 46300, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Lickilicky - Snore - Tutor
  (463, 46300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Lickilicky - Mud-Slap - Tutor
  (463, 46300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Lickilicky - Icy Wind - Tutor
  (463, 46300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Lickilicky - Rollout - Tutor
  (463, 46300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Lickilicky - Knock Off - Tutor
  (463, 46300, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Lickilicky - Aqua Tail - Tutor
  (463, 46300, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Lickilicky - Zen Headbutt - Tutor
  (463, 46300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Rhyperior - Stomp - Level 1
  (464, 46400, 23, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyperior - Horn Attack - Level 1
  (464, 46400, 30, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyperior - Fury Attack - Level 1
  (464, 46400, 31, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhyperior - Tail Whip - Level 1
  (464, 46400, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhyperior - Poison Jab - Level 1
  (464, 46400, 398, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rhyperior - Stomp - Level 9
  (464, 46400, 23, 9, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Rhyperior - Fury Attack - Level 13
  (464, 46400, 31, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Rhyperior - Scary Face - Level 21
  (464, 46400, 184, 9, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Rhyperior - Rock Blast - Level 25
  (464, 46400, 350, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Rhyperior - Take Down - Level 33
  (464, 46400, 36, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Rhyperior - Horn Drill - Level 37
  (464, 46400, 32, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Rhyperior - Hammer Arm - Level 42
  (464, 46400, 359, 9, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Rhyperior - Stone Edge - Level 45
  (464, 46400, 444, 9, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Rhyperior - Earthquake - Level 49
  (464, 46400, 89, 9, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Rhyperior - Megahorn - Level 57
  (464, 46400, 224, 9, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rhyperior - Rock Wrecker - Level 61
  (464, 46400, 439, 9, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Rhyperior - Focus Punch - TM01
  (464, 46400, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Rhyperior - Roar - TM05
  (464, 46400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Rhyperior - Toxic - TM06
  (464, 46400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Rhyperior - Hidden Power - TM10
  (464, 46400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Rhyperior - Sunny Day - TM11
  (464, 46400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Rhyperior - Ice Beam - TM13
  (464, 46400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Rhyperior - Blizzard - TM14
  (464, 46400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Rhyperior - Hyper Beam - TM15
  (464, 46400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Rhyperior - Protect - TM17
  (464, 46400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Rhyperior - Rain Dance - TM18
  (464, 46400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Rhyperior - Frustration - TM21
  (464, 46400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Rhyperior - Iron Tail - TM23
  (464, 46400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Rhyperior - Thunderbolt - TM24
  (464, 46400, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 29),
  -- Rhyperior - Thunder - TM25
  (464, 46400, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 30),
  -- Rhyperior - Earthquake - TM26
  (464, 46400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 31),
  -- Rhyperior - Return - TM27
  (464, 46400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Rhyperior - Dig - TM28
  (464, 46400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 33),
  -- Rhyperior - Brick Break - TM31
  (464, 46400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 34),
  -- Rhyperior - Double Team - TM32
  (464, 46400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 35),
  -- Rhyperior - Shock Wave - TM34
  (464, 46400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 36),
  -- Rhyperior - Flamethrower - TM35
  (464, 46400, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 37),
  -- Rhyperior - Sandstorm - TM37
  (464, 46400, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 38),
  -- Rhyperior - Fire Blast - TM38
  (464, 46400, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 39),
  -- Rhyperior - Rock Tomb - TM39
  (464, 46400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 40),
  -- Rhyperior - Facade - TM42
  (464, 46400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 41),
  -- Rhyperior - Secret Power - TM43
  (464, 46400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 42),
  -- Rhyperior - Rest - TM44
  (464, 46400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 43),
  -- Rhyperior - Attract - TM45
  (464, 46400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 44),
  -- Rhyperior - Thief - TM46
  (464, 46400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 45),
  -- Rhyperior - Focus Blast - TM52
  (464, 46400, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 46),
  -- Rhyperior - Fling - TM56
  (464, 46400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 47),
  -- Rhyperior - Endure - TM58
  (464, 46400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 48),
  -- Rhyperior - Dragon Pulse - TM59
  (464, 46400, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 49),
  -- Rhyperior - Shadow Claw - TM65
  (464, 46400, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 50),
  -- Rhyperior - Payback - TM66
  (464, 46400, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 51),
  -- Rhyperior - Giga Impact - TM68
  (464, 46400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 52),
  -- Rhyperior - Rock Polish - TM69
  (464, 46400, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 53),
  -- Rhyperior - Stone Edge - TM71
  (464, 46400, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 54),
  -- Rhyperior - Avalanche - TM72
  (464, 46400, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 55),
  -- Rhyperior - Swords Dance - TM75
  (464, 46400, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 56),
  -- Rhyperior - Stealth Rock - TM76
  (464, 46400, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 57),
  -- Rhyperior - Captivate - TM78
  (464, 46400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 58),
  -- Rhyperior - Rock Slide - TM80
  (464, 46400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 59),
  -- Rhyperior - Sleep Talk - TM82
  (464, 46400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 60),
  -- Rhyperior - Natural Gift - TM83
  (464, 46400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 61),
  -- Rhyperior - Poison Jab - TM84
  (464, 46400, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 62),
  -- Rhyperior - Swagger - TM87
  (464, 46400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 63),
  -- Rhyperior - Substitute - TM90
  (464, 46400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 64),
  -- Rhyperior - Flash Cannon - TM91
  (464, 46400, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 65),
  -- Rhyperior - Cut - HM01
  (464, 46400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 66),
  -- Rhyperior - Surf - HM03
  (464, 46400, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 67),
  -- Rhyperior - Strength - HM04
  (464, 46400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 68),
  -- Rhyperior - Defog - HM05
  (464, 46400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 69),
  -- Rhyperior - Rock Smash - HM06
  (464, 46400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 70),
  -- Rhyperior - Rock Climb - HM08
  (464, 46400, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 71),
  -- Rhyperior - Fire Punch - Tutor
  (464, 46400, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Rhyperior - Ice Punch - Tutor
  (464, 46400, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Rhyperior - Thunder Punch - Tutor
  (464, 46400, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Rhyperior - Snore - Tutor
  (464, 46400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Rhyperior - Spite - Tutor
  (464, 46400, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Rhyperior - Mud-Slap - Tutor
  (464, 46400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Rhyperior - Icy Wind - Tutor
  (464, 46400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Rhyperior - Outrage - Tutor
  (464, 46400, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Rhyperior - Rollout - Tutor
  (464, 46400, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Rhyperior - Fury Cutter - Tutor
  (464, 46400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Rhyperior - Ancient Power - Tutor
  (464, 46400, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Rhyperior - Uproar - Tutor
  (464, 46400, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Rhyperior - Superpower - Tutor
  (464, 46400, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 84),
  -- Rhyperior - Endeavor - Tutor
  (464, 46400, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 85),
  -- Rhyperior - Aqua Tail - Tutor
  (464, 46400, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 86),
  -- Rhyperior - Earth Power - Tutor
  (464, 46400, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 87),
  -- Rhyperior - Iron Head - Tutor
  (464, 46400, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 88),
  -- Tangrowth - Constrict - Level 1
  (465, 46500, 132, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangrowth - Ingrain - Level 1
  (465, 46500, 275, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangrowth - Sleep Powder - Level 5
  (465, 46500, 79, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tangrowth - Absorb - Level 8
  (465, 46500, 71, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tangrowth - Growth - Level 12
  (465, 46500, 74, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tangrowth - Poison Powder - Level 15
  (465, 46500, 77, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tangrowth - Vine Whip - Level 19
  (465, 46500, 22, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Tangrowth - Bind - Level 22
  (465, 46500, 20, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Tangrowth - Mega Drain - Level 26
  (465, 46500, 72, 9, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Tangrowth - Stun Spore - Level 29
  (465, 46500, 78, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Tangrowth - Ancient Power - Level 33
  (465, 46500, 246, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Tangrowth - Knock Off - Level 36
  (465, 46500, 282, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Tangrowth - Natural Gift - Level 40
  (465, 46500, 363, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Tangrowth - Slam - Level 43
  (465, 46500, 21, 9, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Tangrowth - Tickle - Level 47
  (465, 46500, 321, 9, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Tangrowth - Wring Out - Level 50
  (465, 46500, 378, 9, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Tangrowth - Power Whip - Level 54
  (465, 46500, 438, 9, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Tangrowth - Block - Level 57
  (465, 46500, 335, 9, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Tangrowth - Toxic - TM06
  (465, 46500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Tangrowth - Bullet Seed - TM09
  (465, 46500, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 20),
  -- Tangrowth - Hidden Power - TM10
  (465, 46500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Tangrowth - Sunny Day - TM11
  (465, 46500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Tangrowth - Hyper Beam - TM15
  (465, 46500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Tangrowth - Protect - TM17
  (465, 46500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Tangrowth - Giga Drain - TM19
  (465, 46500, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 25),
  -- Tangrowth - Frustration - TM21
  (465, 46500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Tangrowth - Solar Beam - TM22
  (465, 46500, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Tangrowth - Earthquake - TM26
  (465, 46500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Tangrowth - Return - TM27
  (465, 46500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Tangrowth - Brick Break - TM31
  (465, 46500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 30),
  -- Tangrowth - Double Team - TM32
  (465, 46500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Tangrowth - Reflect - TM33
  (465, 46500, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 32),
  -- Tangrowth - Shock Wave - TM34
  (465, 46500, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Tangrowth - Sludge Bomb - TM36
  (465, 46500, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 34),
  -- Tangrowth - Rock Tomb - TM39
  (465, 46500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 35),
  -- Tangrowth - Aerial Ace - TM40
  (465, 46500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 36),
  -- Tangrowth - Facade - TM42
  (465, 46500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Tangrowth - Secret Power - TM43
  (465, 46500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Tangrowth - Rest - TM44
  (465, 46500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Tangrowth - Attract - TM45
  (465, 46500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Tangrowth - Thief - TM46
  (465, 46500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 41),
  -- Tangrowth - Focus Blast - TM52
  (465, 46500, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 42),
  -- Tangrowth - Energy Ball - TM53
  (465, 46500, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 43),
  -- Tangrowth - Fling - TM56
  (465, 46500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 44),
  -- Tangrowth - Endure - TM58
  (465, 46500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 45),
  -- Tangrowth - Payback - TM66
  (465, 46500, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 46),
  -- Tangrowth - Giga Impact - TM68
  (465, 46500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 47),
  -- Tangrowth - Flash - TM70
  (465, 46500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 48),
  -- Tangrowth - Swords Dance - TM75
  (465, 46500, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 49),
  -- Tangrowth - Psych Up - TM77
  (465, 46500, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 50),
  -- Tangrowth - Captivate - TM78
  (465, 46500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 51),
  -- Tangrowth - Rock Slide - TM80
  (465, 46500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 52),
  -- Tangrowth - Sleep Talk - TM82
  (465, 46500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 53),
  -- Tangrowth - Natural Gift - TM83
  (465, 46500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 54),
  -- Tangrowth - Poison Jab - TM84
  (465, 46500, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 55),
  -- Tangrowth - Grass Knot - TM86
  (465, 46500, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 56),
  -- Tangrowth - Swagger - TM87
  (465, 46500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 57),
  -- Tangrowth - Substitute - TM90
  (465, 46500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 58),
  -- Tangrowth - Cut - HM01
  (465, 46500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 59),
  -- Tangrowth - Strength - HM04
  (465, 46500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 60),
  -- Tangrowth - Rock Smash - HM06
  (465, 46500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 61),
  -- Tangrowth - Snore - Tutor
  (465, 46500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Tangrowth - Mud-Slap - Tutor
  (465, 46500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Tangrowth - Synthesis - Tutor
  (465, 46500, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Tangrowth - Ancient Power - Tutor
  (465, 46500, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Tangrowth - Knock Off - Tutor
  (465, 46500, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Tangrowth - Seed Bomb - Tutor
  (465, 46500, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Electivire - Fire Punch - Level 1
  (466, 46600, 7, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electivire - Leer - Level 1
  (466, 46600, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electivire - Low Kick - Level 1
  (466, 46600, 67, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electivire - Thunder Shock - Level 1
  (466, 46600, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electivire - Quick Attack - Level 1
  (466, 46600, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Electivire - Thunder Shock - Level 7
  (466, 46600, 84, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Electivire - Low Kick - Level 10
  (466, 46600, 67, 9, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Electivire - Swift - Level 16
  (466, 46600, 129, 9, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Electivire - Shock Wave - Level 19
  (466, 46600, 351, 9, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Electivire - Light Screen - Level 25
  (466, 46600, 113, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Electivire - Thunder Punch - Level 28
  (466, 46600, 9, 9, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Electivire - Discharge - Level 37
  (466, 46600, 435, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Electivire - Thunderbolt - Level 43
  (466, 46600, 85, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Electivire - Screech - Level 52
  (466, 46600, 103, 9, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Electivire - Thunder - Level 58
  (466, 46600, 87, 9, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Electivire - Giga Impact - Level 67
  (466, 46600, 416, 9, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Electivire - Focus Punch - TM01
  (466, 46600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Electivire - Toxic - TM06
  (466, 46600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Electivire - Hidden Power - TM10
  (466, 46600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Electivire - Taunt - TM12
  (466, 46600, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 20),
  -- Electivire - Hyper Beam - TM15
  (466, 46600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Electivire - Light Screen - TM16
  (466, 46600, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 22),
  -- Electivire - Protect - TM17
  (466, 46600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Electivire - Rain Dance - TM18
  (466, 46600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Electivire - Frustration - TM21
  (466, 46600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Electivire - Iron Tail - TM23
  (466, 46600, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Electivire - Thunderbolt - TM24
  (466, 46600, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Electivire - Thunder - TM25
  (466, 46600, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Electivire - Earthquake - TM26
  (466, 46600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Electivire - Return - TM27
  (466, 46600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Electivire - Dig - TM28
  (466, 46600, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 31),
  -- Electivire - Psychic - TM29
  (466, 46600, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 32),
  -- Electivire - Brick Break - TM31
  (466, 46600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 33),
  -- Electivire - Double Team - TM32
  (466, 46600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 34),
  -- Electivire - Shock Wave - TM34
  (466, 46600, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 35),
  -- Electivire - Flamethrower - TM35
  (466, 46600, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 36),
  -- Electivire - Rock Tomb - TM39
  (466, 46600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 37),
  -- Electivire - Torment - TM41
  (466, 46600, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 38),
  -- Electivire - Facade - TM42
  (466, 46600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 39),
  -- Electivire - Secret Power - TM43
  (466, 46600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 40),
  -- Electivire - Rest - TM44
  (466, 46600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 41),
  -- Electivire - Attract - TM45
  (466, 46600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 42),
  -- Electivire - Thief - TM46
  (466, 46600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 43),
  -- Electivire - Focus Blast - TM52
  (466, 46600, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 44),
  -- Electivire - Fling - TM56
  (466, 46600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 45),
  -- Electivire - Charge Beam - TM57
  (466, 46600, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 46),
  -- Electivire - Endure - TM58
  (466, 46600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 47),
  -- Electivire - Giga Impact - TM68
  (466, 46600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 48),
  -- Electivire - Flash - TM70
  (466, 46600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 49),
  -- Electivire - Thunder Wave - TM73
  (466, 46600, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 50),
  -- Electivire - Captivate - TM78
  (466, 46600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 51),
  -- Electivire - Rock Slide - TM80
  (466, 46600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 52),
  -- Electivire - Sleep Talk - TM82
  (466, 46600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 53),
  -- Electivire - Natural Gift - TM83
  (466, 46600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 54),
  -- Electivire - Swagger - TM87
  (466, 46600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 55),
  -- Electivire - Substitute - TM90
  (466, 46600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 56),
  -- Electivire - Strength - HM04
  (466, 46600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 57),
  -- Electivire - Rock Smash - HM06
  (466, 46600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 58),
  -- Electivire - Rock Climb - HM08
  (466, 46600, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 59),
  -- Electivire - Fire Punch - Tutor
  (466, 46600, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Electivire - Ice Punch - Tutor
  (466, 46600, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Electivire - Thunder Punch - Tutor
  (466, 46600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Electivire - Swift - Tutor
  (466, 46600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Electivire - Snore - Tutor
  (466, 46600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Electivire - Mud-Slap - Tutor
  (466, 46600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Electivire - Helping Hand - Tutor
  (466, 46600, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Electivire - Signal Beam - Tutor
  (466, 46600, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Electivire - Magnet Rise - Tutor
  (466, 46600, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Magmortar - Thunder Punch - Level 1
  (467, 46700, 9, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmortar - Leer - Level 1
  (467, 46700, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmortar - Ember - Level 1
  (467, 46700, 52, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmortar - Smokescreen - Level 1
  (467, 46700, 108, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magmortar - Smog - Level 1
  (467, 46700, 123, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magmortar - Ember - Level 7
  (467, 46700, 52, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Magmortar - Smokescreen - Level 10
  (467, 46700, 108, 9, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Magmortar - Feint Attack - Level 16
  (467, 46700, 185, 9, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Magmortar - Fire Spin - Level 19
  (467, 46700, 83, 9, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Magmortar - Confuse Ray - Level 25
  (467, 46700, 109, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Magmortar - Fire Punch - Level 28
  (467, 46700, 7, 9, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Magmortar - Lava Plume - Level 37
  (467, 46700, 436, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Magmortar - Flamethrower - Level 43
  (467, 46700, 53, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Magmortar - Sunny Day - Level 52
  (467, 46700, 241, 9, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Magmortar - Fire Blast - Level 58
  (467, 46700, 126, 9, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Magmortar - Hyper Beam - Level 67
  (467, 46700, 63, 9, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Magmortar - Focus Punch - TM01
  (467, 46700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Magmortar - Toxic - TM06
  (467, 46700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Magmortar - Hidden Power - TM10
  (467, 46700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Magmortar - Sunny Day - TM11
  (467, 46700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Magmortar - Taunt - TM12
  (467, 46700, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 21),
  -- Magmortar - Hyper Beam - TM15
  (467, 46700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Magmortar - Protect - TM17
  (467, 46700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Magmortar - Frustration - TM21
  (467, 46700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Magmortar - Solar Beam - TM22
  (467, 46700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Magmortar - Iron Tail - TM23
  (467, 46700, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Magmortar - Thunderbolt - TM24
  (467, 46700, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Magmortar - Earthquake - TM26
  (467, 46700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Magmortar - Return - TM27
  (467, 46700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Magmortar - Psychic - TM29
  (467, 46700, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 30),
  -- Magmortar - Brick Break - TM31
  (467, 46700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 31),
  -- Magmortar - Double Team - TM32
  (467, 46700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Magmortar - Flamethrower - TM35
  (467, 46700, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 33),
  -- Magmortar - Fire Blast - TM38
  (467, 46700, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 34),
  -- Magmortar - Rock Tomb - TM39
  (467, 46700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 35),
  -- Magmortar - Torment - TM41
  (467, 46700, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 36),
  -- Magmortar - Facade - TM42
  (467, 46700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Magmortar - Secret Power - TM43
  (467, 46700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Magmortar - Rest - TM44
  (467, 46700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Magmortar - Attract - TM45
  (467, 46700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Magmortar - Thief - TM46
  (467, 46700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 41),
  -- Magmortar - Overheat - TM50
  (467, 46700, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 42),
  -- Magmortar - Focus Blast - TM52
  (467, 46700, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 43),
  -- Magmortar - Fling - TM56
  (467, 46700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 44),
  -- Magmortar - Endure - TM58
  (467, 46700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 45),
  -- Magmortar - Will-O-Wisp - TM61
  (467, 46700, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 46),
  -- Magmortar - Giga Impact - TM68
  (467, 46700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 47),
  -- Magmortar - Captivate - TM78
  (467, 46700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 48),
  -- Magmortar - Rock Slide - TM80
  (467, 46700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 49),
  -- Magmortar - Sleep Talk - TM82
  (467, 46700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 50),
  -- Magmortar - Natural Gift - TM83
  (467, 46700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 51),
  -- Magmortar - Swagger - TM87
  (467, 46700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 52),
  -- Magmortar - Substitute - TM90
  (467, 46700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 53),
  -- Magmortar - Strength - HM04
  (467, 46700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 54),
  -- Magmortar - Rock Smash - HM06
  (467, 46700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 55),
  -- Magmortar - Rock Climb - HM08
  (467, 46700, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 56),
  -- Magmortar - Fire Punch - Tutor
  (467, 46700, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Magmortar - Thunder Punch - Tutor
  (467, 46700, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Magmortar - Snore - Tutor
  (467, 46700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Magmortar - Mud-Slap - Tutor
  (467, 46700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Magmortar - Heat Wave - Tutor
  (467, 46700, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Magmortar - Helping Hand - Tutor
  (467, 46700, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Togekiss - Sky Attack - Level 1
  (468, 46800, 143, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togekiss - Extreme Speed - Level 1
  (468, 46800, 245, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togekiss - Aura Sphere - Level 1
  (468, 46800, 396, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Togekiss - Air Slash - Level 1
  (468, 46800, 403, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Togekiss - Focus Punch - TM01
  (468, 46800, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 5),
  -- Togekiss - Water Pulse - TM03
  (468, 46800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 6),
  -- Togekiss - Toxic - TM06
  (468, 46800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 7),
  -- Togekiss - Hidden Power - TM10
  (468, 46800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 8),
  -- Togekiss - Sunny Day - TM11
  (468, 46800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 9),
  -- Togekiss - Hyper Beam - TM15
  (468, 46800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 10),
  -- Togekiss - Light Screen - TM16
  (468, 46800, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 11),
  -- Togekiss - Protect - TM17
  (468, 46800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 12),
  -- Togekiss - Rain Dance - TM18
  (468, 46800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 13),
  -- Togekiss - Safeguard - TM20
  (468, 46800, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 14),
  -- Togekiss - Frustration - TM21
  (468, 46800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 15),
  -- Togekiss - Solar Beam - TM22
  (468, 46800, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 16),
  -- Togekiss - Return - TM27
  (468, 46800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 17),
  -- Togekiss - Psychic - TM29
  (468, 46800, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 18),
  -- Togekiss - Shadow Ball - TM30
  (468, 46800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 19),
  -- Togekiss - Brick Break - TM31
  (468, 46800, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 20),
  -- Togekiss - Double Team - TM32
  (468, 46800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 21),
  -- Togekiss - Reflect - TM33
  (468, 46800, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 22),
  -- Togekiss - Shock Wave - TM34
  (468, 46800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 23),
  -- Togekiss - Flamethrower - TM35
  (468, 46800, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 24),
  -- Togekiss - Fire Blast - TM38
  (468, 46800, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 25),
  -- Togekiss - Aerial Ace - TM40
  (468, 46800, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 26),
  -- Togekiss - Facade - TM42
  (468, 46800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Togekiss - Secret Power - TM43
  (468, 46800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Togekiss - Rest - TM44
  (468, 46800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Togekiss - Attract - TM45
  (468, 46800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Togekiss - Steel Wing - TM47
  (468, 46800, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 31),
  -- Togekiss - Roost - TM51
  (468, 46800, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 32),
  -- Togekiss - Fling - TM56
  (468, 46800, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 33),
  -- Togekiss - Endure - TM58
  (468, 46800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Togekiss - Drain Punch - TM60
  (468, 46800, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 35),
  -- Togekiss - Silver Wind - TM62
  (468, 46800, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 36),
  -- Togekiss - Giga Impact - TM68
  (468, 46800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Togekiss - Flash - TM70
  (468, 46800, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Togekiss - Thunder Wave - TM73
  (468, 46800, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 39),
  -- Togekiss - Psych Up - TM77
  (468, 46800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 40),
  -- Togekiss - Captivate - TM78
  (468, 46800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Togekiss - Sleep Talk - TM82
  (468, 46800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Togekiss - Natural Gift - TM83
  (468, 46800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Togekiss - Dream Eater - TM85
  (468, 46800, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 44),
  -- Togekiss - Grass Knot - TM86
  (468, 46800, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 45),
  -- Togekiss - Swagger - TM87
  (468, 46800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Togekiss - Pluck - TM88
  (468, 46800, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 47),
  -- Togekiss - Substitute - TM90
  (468, 46800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Togekiss - Fly - HM02
  (468, 46800, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 49),
  -- Togekiss - Defog - HM05
  (468, 46800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 50),
  -- Togekiss - Rock Smash - HM06
  (468, 46800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 51),
  -- Togekiss - Swift - Tutor
  (468, 46800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Togekiss - Snore - Tutor
  (468, 46800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Togekiss - Mud-Slap - Tutor
  (468, 46800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Togekiss - Rollout - Tutor
  (468, 46800, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Togekiss - Twister - Tutor
  (468, 46800, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Togekiss - Ancient Power - Tutor
  (468, 46800, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Togekiss - Heat Wave - Tutor
  (468, 46800, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Togekiss - Trick - Tutor
  (468, 46800, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Togekiss - Endeavor - Tutor
  (468, 46800, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Togekiss - Air Cutter - Tutor
  (468, 46800, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Togekiss - Signal Beam - Tutor
  (468, 46800, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Togekiss - Last Resort - Tutor
  (468, 46800, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Togekiss - Zen Headbutt - Tutor
  (468, 46800, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Togekiss - Ominous Wind - Tutor
  (468, 46800, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Yanmega - Tackle - Level 1
  (469, 46900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanmega - Quick Attack - Level 1
  (469, 46900, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yanmega - Double Team - Level 1
  (469, 46900, 104, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Yanmega - Foresight - Level 1
  (469, 46900, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Yanmega - Night Slash - Level 1
  (469, 46900, 400, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Yanmega - Bug Bite - Level 1
  (469, 46900, 450, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Yanmega - Quick Attack - Level 6
  (469, 46900, 98, 9, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Yanmega - Double Team - Level 11
  (469, 46900, 104, 9, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Yanmega - Sonic Boom - Level 14
  (469, 46900, 49, 9, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Yanmega - Detect - Level 17
  (469, 46900, 197, 9, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Yanmega - Supersonic - Level 22
  (469, 46900, 48, 9, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Yanmega - Uproar - Level 27
  (469, 46900, 253, 9, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Yanmega - Pursuit - Level 30
  (469, 46900, 228, 9, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Yanmega - Ancient Power - Level 33
  (469, 46900, 246, 9, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Yanmega - Feint - Level 38
  (469, 46900, 364, 9, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Yanmega - Slash - Level 43
  (469, 46900, 163, 9, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Yanmega - Screech - Level 46
  (469, 46900, 103, 9, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Yanmega - U-turn - Level 49
  (469, 46900, 369, 9, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Yanmega - Air Slash - Level 54
  (469, 46900, 403, 9, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Yanmega - Bug Buzz - Level 57
  (469, 46900, 405, 9, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Yanmega - Toxic - TM06
  (469, 46900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 21),
  -- Yanmega - Hidden Power - TM10
  (469, 46900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Yanmega - Sunny Day - TM11
  (469, 46900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 23),
  -- Yanmega - Hyper Beam - TM15
  (469, 46900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Yanmega - Protect - TM17
  (469, 46900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Yanmega - Giga Drain - TM19
  (469, 46900, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 26),
  -- Yanmega - Frustration - TM21
  (469, 46900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Yanmega - Solar Beam - TM22
  (469, 46900, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 28),
  -- Yanmega - Return - TM27
  (469, 46900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Yanmega - Psychic - TM29
  (469, 46900, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 30),
  -- Yanmega - Shadow Ball - TM30
  (469, 46900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Yanmega - Double Team - TM32
  (469, 46900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Yanmega - Aerial Ace - TM40
  (469, 46900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 33),
  -- Yanmega - Facade - TM42
  (469, 46900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Yanmega - Secret Power - TM43
  (469, 46900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Yanmega - Rest - TM44
  (469, 46900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Yanmega - Attract - TM45
  (469, 46900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Yanmega - Thief - TM46
  (469, 46900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 38),
  -- Yanmega - Steel Wing - TM47
  (469, 46900, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 39),
  -- Yanmega - Roost - TM51
  (469, 46900, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 40),
  -- Yanmega - Endure - TM58
  (469, 46900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Yanmega - Silver Wind - TM62
  (469, 46900, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 42),
  -- Yanmega - Giga Impact - TM68
  (469, 46900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 43),
  -- Yanmega - Flash - TM70
  (469, 46900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 44),
  -- Yanmega - Psych Up - TM77
  (469, 46900, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 45),
  -- Yanmega - Captivate - TM78
  (469, 46900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Yanmega - Sleep Talk - TM82
  (469, 46900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Yanmega - Natural Gift - TM83
  (469, 46900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Yanmega - Dream Eater - TM85
  (469, 46900, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 49),
  -- Yanmega - Swagger - TM87
  (469, 46900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Yanmega - U-turn - TM89
  (469, 46900, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 51),
  -- Yanmega - Substitute - TM90
  (469, 46900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Yanmega - Defog - HM05
  (469, 46900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 53),
  -- Yanmega - Swift - Tutor
  (469, 46900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Yanmega - Snore - Tutor
  (469, 46900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Yanmega - Mud-Slap - Tutor
  (469, 46900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Yanmega - Ancient Power - Tutor
  (469, 46900, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Yanmega - Uproar - Tutor
  (469, 46900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Yanmega - Air Cutter - Tutor
  (469, 46900, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Yanmega - Signal Beam - Tutor
  (469, 46900, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Yanmega - Ominous Wind - Tutor
  (469, 46900, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Leafeon - Tackle - Level 1
  (470, 47000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leafeon - Tail Whip - Level 1
  (470, 47000, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Leafeon - Helping Hand - Level 1
  (470, 47000, 270, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Leafeon - Sand Attack - Level 8
  (470, 47000, 28, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Leafeon - Razor Leaf - Level 15
  (470, 47000, 75, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Leafeon - Quick Attack - Level 22
  (470, 47000, 98, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Leafeon - Synthesis - Level 29
  (470, 47000, 235, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Leafeon - Magical Leaf - Level 36
  (470, 47000, 345, 9, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Leafeon - Giga Drain - Level 43
  (470, 47000, 202, 9, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Leafeon - Last Resort - Level 50
  (470, 47000, 387, 9, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Leafeon - Grass Whistle - Level 57
  (470, 47000, 320, 9, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Leafeon - Sunny Day - Level 64
  (470, 47000, 241, 9, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Leafeon - Leaf Blade - Level 71
  (470, 47000, 348, 9, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Leafeon - Swords Dance - Level 78
  (470, 47000, 14, 9, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Leafeon - Roar - TM05
  (470, 47000, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Leafeon - Toxic - TM06
  (470, 47000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Leafeon - Bullet Seed - TM09
  (470, 47000, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 17),
  -- Leafeon - Hidden Power - TM10
  (470, 47000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Leafeon - Sunny Day - TM11
  (470, 47000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Leafeon - Hyper Beam - TM15
  (470, 47000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Leafeon - Protect - TM17
  (470, 47000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Leafeon - Rain Dance - TM18
  (470, 47000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Leafeon - Giga Drain - TM19
  (470, 47000, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 23),
  -- Leafeon - Frustration - TM21
  (470, 47000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Leafeon - Solar Beam - TM22
  (470, 47000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Leafeon - Iron Tail - TM23
  (470, 47000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Leafeon - Return - TM27
  (470, 47000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Leafeon - Dig - TM28
  (470, 47000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Leafeon - Shadow Ball - TM30
  (470, 47000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Leafeon - Double Team - TM32
  (470, 47000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Leafeon - Aerial Ace - TM40
  (470, 47000, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 31),
  -- Leafeon - Facade - TM42
  (470, 47000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Leafeon - Secret Power - TM43
  (470, 47000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Leafeon - Rest - TM44
  (470, 47000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Leafeon - Attract - TM45
  (470, 47000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Leafeon - Energy Ball - TM53
  (470, 47000, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 36),
  -- Leafeon - Endure - TM58
  (470, 47000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Leafeon - Giga Impact - TM68
  (470, 47000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 38),
  -- Leafeon - Flash - TM70
  (470, 47000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 39),
  -- Leafeon - Swords Dance - TM75
  (470, 47000, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 40),
  -- Leafeon - Captivate - TM78
  (470, 47000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Leafeon - X-Scissor - TM81
  (470, 47000, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 42),
  -- Leafeon - Sleep Talk - TM82
  (470, 47000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Leafeon - Natural Gift - TM83
  (470, 47000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Leafeon - Grass Knot - TM86
  (470, 47000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 45),
  -- Leafeon - Swagger - TM87
  (470, 47000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Leafeon - Substitute - TM90
  (470, 47000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Leafeon - Strength - HM04
  (470, 47000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 48),
  -- Leafeon - Rock Smash - HM06
  (470, 47000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 49),
  -- Leafeon - Swift - Tutor
  (470, 47000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Leafeon - Snore - Tutor
  (470, 47000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Leafeon - Mud-Slap - Tutor
  (470, 47000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Leafeon - Fury Cutter - Tutor
  (470, 47000, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Leafeon - Synthesis - Tutor
  (470, 47000, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Leafeon - Helping Hand - Tutor
  (470, 47000, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Leafeon - Knock Off - Tutor
  (470, 47000, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Leafeon - Last Resort - Tutor
  (470, 47000, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Leafeon - Seed Bomb - Tutor
  (470, 47000, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Glaceon - Tackle - Level 1
  (471, 47100, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glaceon - Tail Whip - Level 1
  (471, 47100, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glaceon - Helping Hand - Level 1
  (471, 47100, 270, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glaceon - Sand Attack - Level 8
  (471, 47100, 28, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Glaceon - Icy Wind - Level 15
  (471, 47100, 196, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Glaceon - Quick Attack - Level 22
  (471, 47100, 98, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Glaceon - Bite - Level 29
  (471, 47100, 44, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Glaceon - Ice Shard - Level 36
  (471, 47100, 420, 9, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Glaceon - Ice Fang - Level 43
  (471, 47100, 423, 9, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Glaceon - Last Resort - Level 50
  (471, 47100, 387, 9, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Glaceon - Mirror Coat - Level 57
  (471, 47100, 243, 9, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Glaceon - Hail - Level 64
  (471, 47100, 258, 9, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Glaceon - Blizzard - Level 71
  (471, 47100, 59, 9, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Glaceon - Barrier - Level 78
  (471, 47100, 112, 9, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Glaceon - Water Pulse - TM03
  (471, 47100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Glaceon - Roar - TM05
  (471, 47100, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 16),
  -- Glaceon - Toxic - TM06
  (471, 47100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Glaceon - Hail - TM07
  (471, 47100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Glaceon - Hidden Power - TM10
  (471, 47100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Glaceon - Sunny Day - TM11
  (471, 47100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Glaceon - Ice Beam - TM13
  (471, 47100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Glaceon - Blizzard - TM14
  (471, 47100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Glaceon - Hyper Beam - TM15
  (471, 47100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Glaceon - Protect - TM17
  (471, 47100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Glaceon - Rain Dance - TM18
  (471, 47100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Glaceon - Frustration - TM21
  (471, 47100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Glaceon - Iron Tail - TM23
  (471, 47100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Glaceon - Return - TM27
  (471, 47100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Glaceon - Dig - TM28
  (471, 47100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 29),
  -- Glaceon - Shadow Ball - TM30
  (471, 47100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Glaceon - Double Team - TM32
  (471, 47100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Glaceon - Facade - TM42
  (471, 47100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Glaceon - Secret Power - TM43
  (471, 47100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Glaceon - Rest - TM44
  (471, 47100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Glaceon - Attract - TM45
  (471, 47100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Glaceon - Endure - TM58
  (471, 47100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Glaceon - Giga Impact - TM68
  (471, 47100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Glaceon - Avalanche - TM72
  (471, 47100, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 38),
  -- Glaceon - Captivate - TM78
  (471, 47100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Glaceon - Sleep Talk - TM82
  (471, 47100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Glaceon - Natural Gift - TM83
  (471, 47100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Glaceon - Swagger - TM87
  (471, 47100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Glaceon - Substitute - TM90
  (471, 47100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Glaceon - Strength - HM04
  (471, 47100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 44),
  -- Glaceon - Rock Smash - HM06
  (471, 47100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 45),
  -- Glaceon - Swift - Tutor
  (471, 47100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Glaceon - Snore - Tutor
  (471, 47100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Glaceon - Mud-Slap - Tutor
  (471, 47100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Glaceon - Icy Wind - Tutor
  (471, 47100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Glaceon - Helping Hand - Tutor
  (471, 47100, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Glaceon - Signal Beam - Tutor
  (471, 47100, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Glaceon - Last Resort - Tutor
  (471, 47100, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Glaceon - Aqua Tail - Tutor
  (471, 47100, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Gliscor - Sand Attack - Level 1
  (472, 47200, 28, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gliscor - Harden - Level 1
  (472, 47200, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gliscor - Knock Off - Level 1
  (472, 47200, 282, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gliscor - Poison Jab - Level 1
  (472, 47200, 398, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gliscor - Thunder Fang - Level 1
  (472, 47200, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gliscor - Ice Fang - Level 1
  (472, 47200, 423, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gliscor - Fire Fang - Level 1
  (472, 47200, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gliscor - Sand Attack - Level 5
  (472, 47200, 28, 9, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Gliscor - Harden - Level 9
  (472, 47200, 106, 9, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Gliscor - Knock Off - Level 12
  (472, 47200, 282, 9, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Gliscor - Quick Attack - Level 16
  (472, 47200, 98, 9, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Gliscor - Fury Cutter - Level 20
  (472, 47200, 210, 9, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Gliscor - Feint Attack - Level 23
  (472, 47200, 185, 9, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Gliscor - Screech - Level 27
  (472, 47200, 103, 9, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Gliscor - Night Slash - Level 31
  (472, 47200, 400, 9, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Gliscor - Swords Dance - Level 34
  (472, 47200, 14, 9, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Gliscor - U-turn - Level 38
  (472, 47200, 369, 9, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Gliscor - X-Scissor - Level 42
  (472, 47200, 404, 9, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Gliscor - Guillotine - Level 45
  (472, 47200, 12, 9, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Gliscor - Toxic - TM06
  (472, 47200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Gliscor - Hidden Power - TM10
  (472, 47200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Gliscor - Sunny Day - TM11
  (472, 47200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Gliscor - Taunt - TM12
  (472, 47200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 23),
  -- Gliscor - Hyper Beam - TM15
  (472, 47200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Gliscor - Protect - TM17
  (472, 47200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Gliscor - Rain Dance - TM18
  (472, 47200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Gliscor - Frustration - TM21
  (472, 47200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Gliscor - Iron Tail - TM23
  (472, 47200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Gliscor - Earthquake - TM26
  (472, 47200, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Gliscor - Return - TM27
  (472, 47200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Gliscor - Dig - TM28
  (472, 47200, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 31),
  -- Gliscor - Brick Break - TM31
  (472, 47200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Gliscor - Double Team - TM32
  (472, 47200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Gliscor - Sludge Bomb - TM36
  (472, 47200, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 34),
  -- Gliscor - Sandstorm - TM37
  (472, 47200, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 35),
  -- Gliscor - Rock Tomb - TM39
  (472, 47200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Gliscor - Aerial Ace - TM40
  (472, 47200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 37),
  -- Gliscor - Torment - TM41
  (472, 47200, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 38),
  -- Gliscor - Facade - TM42
  (472, 47200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 39),
  -- Gliscor - Secret Power - TM43
  (472, 47200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 40),
  -- Gliscor - Rest - TM44
  (472, 47200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 41),
  -- Gliscor - Attract - TM45
  (472, 47200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 42),
  -- Gliscor - Thief - TM46
  (472, 47200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 43),
  -- Gliscor - Steel Wing - TM47
  (472, 47200, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 44),
  -- Gliscor - Roost - TM51
  (472, 47200, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 45),
  -- Gliscor - False Swipe - TM54
  (472, 47200, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 46),
  -- Gliscor - Fling - TM56
  (472, 47200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 47),
  -- Gliscor - Endure - TM58
  (472, 47200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 48),
  -- Gliscor - Payback - TM66
  (472, 47200, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 49),
  -- Gliscor - Giga Impact - TM68
  (472, 47200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 50),
  -- Gliscor - Rock Polish - TM69
  (472, 47200, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 51),
  -- Gliscor - Stone Edge - TM71
  (472, 47200, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 52),
  -- Gliscor - Swords Dance - TM75
  (472, 47200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 53),
  -- Gliscor - Stealth Rock - TM76
  (472, 47200, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 54),
  -- Gliscor - Captivate - TM78
  (472, 47200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 55),
  -- Gliscor - Dark Pulse - TM79
  (472, 47200, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 56),
  -- Gliscor - Rock Slide - TM80
  (472, 47200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 57),
  -- Gliscor - X-Scissor - TM81
  (472, 47200, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 58),
  -- Gliscor - Sleep Talk - TM82
  (472, 47200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 59),
  -- Gliscor - Natural Gift - TM83
  (472, 47200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 60),
  -- Gliscor - Poison Jab - TM84
  (472, 47200, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 61),
  -- Gliscor - Swagger - TM87
  (472, 47200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 62),
  -- Gliscor - U-turn - TM89
  (472, 47200, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 63),
  -- Gliscor - Substitute - TM90
  (472, 47200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 64),
  -- Gliscor - Cut - HM01
  (472, 47200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 65),
  -- Gliscor - Strength - HM04
  (472, 47200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 66),
  -- Gliscor - Defog - HM05
  (472, 47200, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 67),
  -- Gliscor - Rock Smash - HM06
  (472, 47200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 68),
  -- Gliscor - Swift - Tutor
  (472, 47200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Gliscor - Snore - Tutor
  (472, 47200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Gliscor - Mud-Slap - Tutor
  (472, 47200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Gliscor - Fury Cutter - Tutor
  (472, 47200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Gliscor - Knock Off - Tutor
  (472, 47200, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Gliscor - Aqua Tail - Tutor
  (472, 47200, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Gliscor - Earth Power - Tutor
  (472, 47200, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Mamoswine - Peck - Level 1
  (473, 47300, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mamoswine - Powder Snow - Level 1
  (473, 47300, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mamoswine - Ancient Power - Level 1
  (473, 47300, 246, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mamoswine - Mud Sport - Level 1
  (473, 47300, 300, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mamoswine - Odor Sleuth - Level 1
  (473, 47300, 316, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mamoswine - Mud Sport - Level 4
  (473, 47300, 300, 9, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Mamoswine - Powder Snow - Level 8
  (473, 47300, 181, 9, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Mamoswine - Mud-Slap - Level 13
  (473, 47300, 189, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Mamoswine - Endure - Level 16
  (473, 47300, 203, 9, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Mamoswine - Mud Bomb - Level 20
  (473, 47300, 426, 9, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Mamoswine - Hail - Level 25
  (473, 47300, 258, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Mamoswine - Ice Fang - Level 28
  (473, 47300, 423, 9, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Mamoswine - Take Down - Level 32
  (473, 47300, 36, 9, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Mamoswine - Double Hit - Level 33
  (473, 47300, 458, 9, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Mamoswine - Earthquake - Level 40
  (473, 47300, 89, 9, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Mamoswine - Mist - Level 48
  (473, 47300, 54, 9, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Mamoswine - Blizzard - Level 56
  (473, 47300, 59, 9, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Mamoswine - Scary Face - Level 65
  (473, 47300, 184, 9, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Mamoswine - Roar - TM05
  (473, 47300, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 19),
  -- Mamoswine - Toxic - TM06
  (473, 47300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Mamoswine - Hail - TM07
  (473, 47300, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 21),
  -- Mamoswine - Hidden Power - TM10
  (473, 47300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Mamoswine - Ice Beam - TM13
  (473, 47300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Mamoswine - Blizzard - TM14
  (473, 47300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 24),
  -- Mamoswine - Hyper Beam - TM15
  (473, 47300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Mamoswine - Light Screen - TM16
  (473, 47300, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 26),
  -- Mamoswine - Protect - TM17
  (473, 47300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 27),
  -- Mamoswine - Rain Dance - TM18
  (473, 47300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 28),
  -- Mamoswine - Frustration - TM21
  (473, 47300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 29),
  -- Mamoswine - Earthquake - TM26
  (473, 47300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Mamoswine - Return - TM27
  (473, 47300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Mamoswine - Dig - TM28
  (473, 47300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 32),
  -- Mamoswine - Double Team - TM32
  (473, 47300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Mamoswine - Reflect - TM33
  (473, 47300, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 34),
  -- Mamoswine - Sandstorm - TM37
  (473, 47300, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 35),
  -- Mamoswine - Rock Tomb - TM39
  (473, 47300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Mamoswine - Facade - TM42
  (473, 47300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Mamoswine - Secret Power - TM43
  (473, 47300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Mamoswine - Rest - TM44
  (473, 47300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Mamoswine - Attract - TM45
  (473, 47300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Mamoswine - Endure - TM58
  (473, 47300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Mamoswine - Giga Impact - TM68
  (473, 47300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 42),
  -- Mamoswine - Stone Edge - TM71
  (473, 47300, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 43),
  -- Mamoswine - Avalanche - TM72
  (473, 47300, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 44),
  -- Mamoswine - Stealth Rock - TM76
  (473, 47300, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 45),
  -- Mamoswine - Captivate - TM78
  (473, 47300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Mamoswine - Rock Slide - TM80
  (473, 47300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 47),
  -- Mamoswine - Sleep Talk - TM82
  (473, 47300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Mamoswine - Natural Gift - TM83
  (473, 47300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Mamoswine - Swagger - TM87
  (473, 47300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Mamoswine - Substitute - TM90
  (473, 47300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Mamoswine - Strength - HM04
  (473, 47300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 52),
  -- Mamoswine - Rock Smash - HM06
  (473, 47300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Mamoswine - Rock Climb - HM08
  (473, 47300, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 54),
  -- Mamoswine - Snore - Tutor
  (473, 47300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Mamoswine - Mud-Slap - Tutor
  (473, 47300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Mamoswine - Icy Wind - Tutor
  (473, 47300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Mamoswine - Fury Cutter - Tutor
  (473, 47300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Mamoswine - Ancient Power - Tutor
  (473, 47300, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Mamoswine - Superpower - Tutor
  (473, 47300, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Mamoswine - Knock Off - Tutor
  (473, 47300, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Mamoswine - Endeavor - Tutor
  (473, 47300, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Mamoswine - Earth Power - Tutor
  (473, 47300, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Mamoswine - Iron Head - Tutor
  (473, 47300, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Porygon-Z - Tackle - Level 1
  (474, 47400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon-Z - Conversion - Level 1
  (474, 47400, 160, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon-Z - Conversion 2 - Level 1
  (474, 47400, 176, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon-Z - Nasty Plot - Level 1
  (474, 47400, 417, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon-Z - Trick Room - Level 1
  (474, 47400, 433, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Porygon-Z - Psybeam - Level 7
  (474, 47400, 60, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Porygon-Z - Agility - Level 12
  (474, 47400, 97, 9, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Porygon-Z - Recover - Level 18
  (474, 47400, 105, 9, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Porygon-Z - Magnet Rise - Level 23
  (474, 47400, 393, 9, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Porygon-Z - Signal Beam - Level 29
  (474, 47400, 324, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Porygon-Z - Embargo - Level 34
  (474, 47400, 373, 9, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Porygon-Z - Discharge - Level 40
  (474, 47400, 435, 9, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Porygon-Z - Lock-On - Level 45
  (474, 47400, 199, 9, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Porygon-Z - Tri Attack - Level 51
  (474, 47400, 161, 9, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Porygon-Z - Magic Coat - Level 56
  (474, 47400, 277, 9, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Porygon-Z - Zap Cannon - Level 62
  (474, 47400, 192, 9, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Porygon-Z - Hyper Beam - Level 67
  (474, 47400, 63, 9, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Porygon-Z - Toxic - TM06
  (474, 47400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Porygon-Z - Hidden Power - TM10
  (474, 47400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Porygon-Z - Sunny Day - TM11
  (474, 47400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Porygon-Z - Ice Beam - TM13
  (474, 47400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Porygon-Z - Blizzard - TM14
  (474, 47400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Porygon-Z - Hyper Beam - TM15
  (474, 47400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Porygon-Z - Protect - TM17
  (474, 47400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Porygon-Z - Rain Dance - TM18
  (474, 47400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Porygon-Z - Frustration - TM21
  (474, 47400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Porygon-Z - Solar Beam - TM22
  (474, 47400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Porygon-Z - Iron Tail - TM23
  (474, 47400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Porygon-Z - Thunderbolt - TM24
  (474, 47400, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 29),
  -- Porygon-Z - Thunder - TM25
  (474, 47400, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 30),
  -- Porygon-Z - Return - TM27
  (474, 47400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Porygon-Z - Psychic - TM29
  (474, 47400, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 32),
  -- Porygon-Z - Shadow Ball - TM30
  (474, 47400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 33),
  -- Porygon-Z - Double Team - TM32
  (474, 47400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 34),
  -- Porygon-Z - Shock Wave - TM34
  (474, 47400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 35),
  -- Porygon-Z - Aerial Ace - TM40
  (474, 47400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 36),
  -- Porygon-Z - Facade - TM42
  (474, 47400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Porygon-Z - Secret Power - TM43
  (474, 47400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Porygon-Z - Rest - TM44
  (474, 47400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Porygon-Z - Thief - TM46
  (474, 47400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 40),
  -- Porygon-Z - Charge Beam - TM57
  (474, 47400, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 41),
  -- Porygon-Z - Endure - TM58
  (474, 47400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Porygon-Z - Embargo - TM63
  (474, 47400, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 43),
  -- Porygon-Z - Recycle - TM67
  (474, 47400, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 44),
  -- Porygon-Z - Giga Impact - TM68
  (474, 47400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Porygon-Z - Flash - TM70
  (474, 47400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 46),
  -- Porygon-Z - Thunder Wave - TM73
  (474, 47400, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 47),
  -- Porygon-Z - Psych Up - TM77
  (474, 47400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 48),
  -- Porygon-Z - Dark Pulse - TM79
  (474, 47400, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 49),
  -- Porygon-Z - Sleep Talk - TM82
  (474, 47400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 50),
  -- Porygon-Z - Natural Gift - TM83
  (474, 47400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 51),
  -- Porygon-Z - Dream Eater - TM85
  (474, 47400, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 52),
  -- Porygon-Z - Swagger - TM87
  (474, 47400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 53),
  -- Porygon-Z - Substitute - TM90
  (474, 47400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 54),
  -- Porygon-Z - Trick Room - TM92
  (474, 47400, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 55),
  -- Porygon-Z - Swift - Tutor
  (474, 47400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Porygon-Z - Snore - Tutor
  (474, 47400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Porygon-Z - Icy Wind - Tutor
  (474, 47400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Porygon-Z - Uproar - Tutor
  (474, 47400, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Porygon-Z - Trick - Tutor
  (474, 47400, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Porygon-Z - Signal Beam - Tutor
  (474, 47400, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Porygon-Z - Last Resort - Tutor
  (474, 47400, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Porygon-Z - Zen Headbutt - Tutor
  (474, 47400, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Gallade - Leer - Level 1
  (475, 47500, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gallade - Confusion - Level 1
  (475, 47500, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gallade - Teleport - Level 1
  (475, 47500, 100, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gallade - Double Team - Level 1
  (475, 47500, 104, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gallade - Leaf Blade - Level 1
  (475, 47500, 348, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gallade - Night Slash - Level 1
  (475, 47500, 400, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gallade - Confusion - Level 6
  (475, 47500, 93, 9, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Gallade - Double Team - Level 10
  (475, 47500, 104, 9, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Gallade - Teleport - Level 12
  (475, 47500, 100, 9, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Gallade - Fury Cutter - Level 17
  (475, 47500, 210, 9, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Gallade - Slash - Level 22
  (475, 47500, 163, 9, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Gallade - Swords Dance - Level 25
  (475, 47500, 14, 9, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Gallade - Psycho Cut - Level 31
  (475, 47500, 427, 9, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Gallade - Helping Hand - Level 36
  (475, 47500, 270, 9, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Gallade - Feint - Level 39
  (475, 47500, 364, 9, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Gallade - False Swipe - Level 45
  (475, 47500, 206, 9, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Gallade - Protect - Level 50
  (475, 47500, 182, 9, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Gallade - Close Combat - Level 53
  (475, 47500, 370, 9, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Gallade - Focus Punch - TM01
  (475, 47500, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 19),
  -- Gallade - Calm Mind - TM04
  (475, 47500, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 20),
  -- Gallade - Toxic - TM06
  (475, 47500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 21),
  -- Gallade - Bulk Up - TM08
  (475, 47500, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 22),
  -- Gallade - Hidden Power - TM10
  (475, 47500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 23),
  -- Gallade - Sunny Day - TM11
  (475, 47500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 24),
  -- Gallade - Taunt - TM12
  (475, 47500, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 25),
  -- Gallade - Hyper Beam - TM15
  (475, 47500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 26),
  -- Gallade - Light Screen - TM16
  (475, 47500, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 27),
  -- Gallade - Protect - TM17
  (475, 47500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 28),
  -- Gallade - Rain Dance - TM18
  (475, 47500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 29),
  -- Gallade - Safeguard - TM20
  (475, 47500, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 30),
  -- Gallade - Frustration - TM21
  (475, 47500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 31),
  -- Gallade - Thunderbolt - TM24
  (475, 47500, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 32),
  -- Gallade - Earthquake - TM26
  (475, 47500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 33),
  -- Gallade - Return - TM27
  (475, 47500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 34),
  -- Gallade - Psychic - TM29
  (475, 47500, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 35),
  -- Gallade - Shadow Ball - TM30
  (475, 47500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 36),
  -- Gallade - Brick Break - TM31
  (475, 47500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 37),
  -- Gallade - Double Team - TM32
  (475, 47500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 38),
  -- Gallade - Reflect - TM33
  (475, 47500, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 39),
  -- Gallade - Shock Wave - TM34
  (475, 47500, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 40),
  -- Gallade - Rock Tomb - TM39
  (475, 47500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 41),
  -- Gallade - Aerial Ace - TM40
  (475, 47500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 42),
  -- Gallade - Torment - TM41
  (475, 47500, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 43),
  -- Gallade - Facade - TM42
  (475, 47500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 44),
  -- Gallade - Secret Power - TM43
  (475, 47500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 45),
  -- Gallade - Rest - TM44
  (475, 47500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 46),
  -- Gallade - Attract - TM45
  (475, 47500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 47),
  -- Gallade - Thief - TM46
  (475, 47500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 48),
  -- Gallade - Skill Swap - TM48
  (475, 47500, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 49),
  -- Gallade - Snatch - TM49
  (475, 47500, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 50),
  -- Gallade - Focus Blast - TM52
  (475, 47500, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 51),
  -- Gallade - False Swipe - TM54
  (475, 47500, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 52),
  -- Gallade - Fling - TM56
  (475, 47500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 53),
  -- Gallade - Charge Beam - TM57
  (475, 47500, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 54),
  -- Gallade - Endure - TM58
  (475, 47500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 55),
  -- Gallade - Drain Punch - TM60
  (475, 47500, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 56),
  -- Gallade - Recycle - TM67
  (475, 47500, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 57),
  -- Gallade - Giga Impact - TM68
  (475, 47500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 58),
  -- Gallade - Flash - TM70
  (475, 47500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 59),
  -- Gallade - Stone Edge - TM71
  (475, 47500, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 60),
  -- Gallade - Thunder Wave - TM73
  (475, 47500, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 61),
  -- Gallade - Swords Dance - TM75
  (475, 47500, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 62),
  -- Gallade - Psych Up - TM77
  (475, 47500, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 63),
  -- Gallade - Captivate - TM78
  (475, 47500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 64),
  -- Gallade - Rock Slide - TM80
  (475, 47500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 65),
  -- Gallade - X-Scissor - TM81
  (475, 47500, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 66),
  -- Gallade - Sleep Talk - TM82
  (475, 47500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 67),
  -- Gallade - Natural Gift - TM83
  (475, 47500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 68),
  -- Gallade - Poison Jab - TM84
  (475, 47500, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 69),
  -- Gallade - Dream Eater - TM85
  (475, 47500, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 70),
  -- Gallade - Grass Knot - TM86
  (475, 47500, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 71),
  -- Gallade - Swagger - TM87
  (475, 47500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 72),
  -- Gallade - Substitute - TM90
  (475, 47500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 73),
  -- Gallade - Trick Room - TM92
  (475, 47500, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 74),
  -- Gallade - Cut - HM01
  (475, 47500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 75),
  -- Gallade - Strength - HM04
  (475, 47500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 76),
  -- Gallade - Rock Smash - HM06
  (475, 47500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 77),
  -- Gallade - Fire Punch - Tutor
  (475, 47500, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Gallade - Ice Punch - Tutor
  (475, 47500, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Gallade - Thunder Punch - Tutor
  (475, 47500, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Gallade - Swift - Tutor
  (475, 47500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Gallade - Snore - Tutor
  (475, 47500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Gallade - Mud-Slap - Tutor
  (475, 47500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Gallade - Fury Cutter - Tutor
  (475, 47500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 84),
  -- Gallade - Helping Hand - Tutor
  (475, 47500, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 85),
  -- Gallade - Trick - Tutor
  (475, 47500, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 86),
  -- Gallade - Knock Off - Tutor
  (475, 47500, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 87),
  -- Gallade - Signal Beam - Tutor
  (475, 47500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 88),
  -- Gallade - Vacuum Wave - Tutor
  (475, 47500, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 89),
  -- Gallade - Zen Headbutt - Tutor
  (475, 47500, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 90),
  -- Probopass - Tackle - Level 1
  (476, 47600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Probopass - Iron Defense - Level 1
  (476, 47600, 334, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Probopass - Block - Level 1
  (476, 47600, 335, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Probopass - Gravity - Level 1
  (476, 47600, 356, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Probopass - Magnet Rise - Level 1
  (476, 47600, 393, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Probopass - Magnet Bomb - Level 1
  (476, 47600, 443, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Probopass - Iron Defense - Level 7
  (476, 47600, 334, 9, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Probopass - Magnet Bomb - Level 13
  (476, 47600, 443, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Probopass - Block - Level 19
  (476, 47600, 335, 9, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Probopass - Thunder Wave - Level 25
  (476, 47600, 86, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Probopass - Rock Slide - Level 31
  (476, 47600, 157, 9, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Probopass - Sandstorm - Level 37
  (476, 47600, 201, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Probopass - Rest - Level 43
  (476, 47600, 156, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Probopass - Power Gem - Level 49
  (476, 47600, 408, 9, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Probopass - Discharge - Level 55
  (476, 47600, 435, 9, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Probopass - Stone Edge - Level 61
  (476, 47600, 444, 9, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Probopass - Zap Cannon - Level 67
  (476, 47600, 192, 9, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Probopass - Lock-On - Level 73
  (476, 47600, 199, 9, NULL, 1, 73, NULL, NULL, NULL, 18),
  -- Probopass - Earth Power - Level 79
  (476, 47600, 414, 9, NULL, 1, 79, NULL, NULL, NULL, 19),
  -- Probopass - Toxic - TM06
  (476, 47600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Probopass - Hidden Power - TM10
  (476, 47600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Probopass - Sunny Day - TM11
  (476, 47600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Probopass - Taunt - TM12
  (476, 47600, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 23),
  -- Probopass - Hyper Beam - TM15
  (476, 47600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Probopass - Protect - TM17
  (476, 47600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Probopass - Frustration - TM21
  (476, 47600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Probopass - Thunderbolt - TM24
  (476, 47600, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Probopass - Thunder - TM25
  (476, 47600, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Probopass - Earthquake - TM26
  (476, 47600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Probopass - Return - TM27
  (476, 47600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Probopass - Double Team - TM32
  (476, 47600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Probopass - Shock Wave - TM34
  (476, 47600, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 32),
  -- Probopass - Sandstorm - TM37
  (476, 47600, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 33),
  -- Probopass - Rock Tomb - TM39
  (476, 47600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Probopass - Torment - TM41
  (476, 47600, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 35),
  -- Probopass - Facade - TM42
  (476, 47600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Probopass - Secret Power - TM43
  (476, 47600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Probopass - Rest - TM44
  (476, 47600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Probopass - Attract - TM45
  (476, 47600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 39),
  -- Probopass - Endure - TM58
  (476, 47600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Probopass - Explosion - TM64
  (476, 47600, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 41),
  -- Probopass - Giga Impact - TM68
  (476, 47600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 42),
  -- Probopass - Rock Polish - TM69
  (476, 47600, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 43),
  -- Probopass - Stone Edge - TM71
  (476, 47600, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 44),
  -- Probopass - Thunder Wave - TM73
  (476, 47600, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 45),
  -- Probopass - Stealth Rock - TM76
  (476, 47600, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 46),
  -- Probopass - Captivate - TM78
  (476, 47600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 47),
  -- Probopass - Rock Slide - TM80
  (476, 47600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 48),
  -- Probopass - Sleep Talk - TM82
  (476, 47600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Probopass - Natural Gift - TM83
  (476, 47600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Probopass - Swagger - TM87
  (476, 47600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Probopass - Substitute - TM90
  (476, 47600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Probopass - Flash Cannon - TM91
  (476, 47600, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 53),
  -- Probopass - Strength - HM04
  (476, 47600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 54),
  -- Probopass - Rock Smash - HM06
  (476, 47600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 55),
  -- Probopass - Fire Punch - Tutor
  (476, 47600, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Probopass - Ice Punch - Tutor
  (476, 47600, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Probopass - Thunder Punch - Tutor
  (476, 47600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Probopass - Snore - Tutor
  (476, 47600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Probopass - Mud-Slap - Tutor
  (476, 47600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Probopass - Rollout - Tutor
  (476, 47600, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Probopass - Ancient Power - Tutor
  (476, 47600, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Probopass - Iron Defense - Tutor
  (476, 47600, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Probopass - Magnet Rise - Tutor
  (476, 47600, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Probopass - Earth Power - Tutor
  (476, 47600, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Probopass - Iron Head - Tutor
  (476, 47600, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Dusknoir - Fire Punch - Level 1
  (477, 47700, 7, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusknoir - Ice Punch - Level 1
  (477, 47700, 8, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusknoir - Thunder Punch - Level 1
  (477, 47700, 9, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusknoir - Bind - Level 1
  (477, 47700, 20, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusknoir - Leer - Level 1
  (477, 47700, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusknoir - Disable - Level 1
  (477, 47700, 50, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusknoir - Night Shade - Level 1
  (477, 47700, 101, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusknoir - Gravity - Level 1
  (477, 47700, 356, 9, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusknoir - Disable - Level 6
  (477, 47700, 50, 9, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Dusknoir - Foresight - Level 9
  (477, 47700, 193, 9, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Dusknoir - Astonish - Level 14
  (477, 47700, 310, 9, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Dusknoir - Confuse Ray - Level 17
  (477, 47700, 109, 9, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Dusknoir - Shadow Sneak - Level 22
  (477, 47700, 425, 9, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Dusknoir - Pursuit - Level 25
  (477, 47700, 228, 9, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Dusknoir - Curse - Level 30
  (477, 47700, 174, 9, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Dusknoir - Will-O-Wisp - Level 33
  (477, 47700, 261, 9, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Dusknoir - Shadow Punch - Level 37
  (477, 47700, 325, 9, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Dusknoir - Mean Look - Level 43
  (477, 47700, 212, 9, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Dusknoir - Payback - Level 51
  (477, 47700, 371, 9, NULL, 1, 51, NULL, NULL, NULL, 19),
  -- Dusknoir - Future Sight - Level 61
  (477, 47700, 248, 9, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Dusknoir - Focus Punch - TM01
  (477, 47700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 21),
  -- Dusknoir - Calm Mind - TM04
  (477, 47700, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 22),
  -- Dusknoir - Toxic - TM06
  (477, 47700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 23),
  -- Dusknoir - Hidden Power - TM10
  (477, 47700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 24),
  -- Dusknoir - Sunny Day - TM11
  (477, 47700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 25),
  -- Dusknoir - Taunt - TM12
  (477, 47700, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 26),
  -- Dusknoir - Ice Beam - TM13
  (477, 47700, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 27),
  -- Dusknoir - Blizzard - TM14
  (477, 47700, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 28),
  -- Dusknoir - Hyper Beam - TM15
  (477, 47700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 29),
  -- Dusknoir - Protect - TM17
  (477, 47700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 30),
  -- Dusknoir - Rain Dance - TM18
  (477, 47700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 31),
  -- Dusknoir - Frustration - TM21
  (477, 47700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 32),
  -- Dusknoir - Earthquake - TM26
  (477, 47700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 33),
  -- Dusknoir - Return - TM27
  (477, 47700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 34),
  -- Dusknoir - Psychic - TM29
  (477, 47700, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 35),
  -- Dusknoir - Shadow Ball - TM30
  (477, 47700, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 36),
  -- Dusknoir - Brick Break - TM31
  (477, 47700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 37),
  -- Dusknoir - Double Team - TM32
  (477, 47700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 38),
  -- Dusknoir - Rock Tomb - TM39
  (477, 47700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 39),
  -- Dusknoir - Torment - TM41
  (477, 47700, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 40),
  -- Dusknoir - Facade - TM42
  (477, 47700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 41),
  -- Dusknoir - Secret Power - TM43
  (477, 47700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 42),
  -- Dusknoir - Rest - TM44
  (477, 47700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 43),
  -- Dusknoir - Attract - TM45
  (477, 47700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 44),
  -- Dusknoir - Thief - TM46
  (477, 47700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 45),
  -- Dusknoir - Skill Swap - TM48
  (477, 47700, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 46),
  -- Dusknoir - Snatch - TM49
  (477, 47700, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 47),
  -- Dusknoir - Focus Blast - TM52
  (477, 47700, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 48),
  -- Dusknoir - Fling - TM56
  (477, 47700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 49),
  -- Dusknoir - Charge Beam - TM57
  (477, 47700, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 50),
  -- Dusknoir - Endure - TM58
  (477, 47700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 51),
  -- Dusknoir - Will-O-Wisp - TM61
  (477, 47700, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 52),
  -- Dusknoir - Embargo - TM63
  (477, 47700, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 53),
  -- Dusknoir - Payback - TM66
  (477, 47700, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 54),
  -- Dusknoir - Giga Impact - TM68
  (477, 47700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 55),
  -- Dusknoir - Flash - TM70
  (477, 47700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 56),
  -- Dusknoir - Psych Up - TM77
  (477, 47700, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 57),
  -- Dusknoir - Captivate - TM78
  (477, 47700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 58),
  -- Dusknoir - Dark Pulse - TM79
  (477, 47700, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 59),
  -- Dusknoir - Rock Slide - TM80
  (477, 47700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 60),
  -- Dusknoir - Sleep Talk - TM82
  (477, 47700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 61),
  -- Dusknoir - Natural Gift - TM83
  (477, 47700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 62),
  -- Dusknoir - Dream Eater - TM85
  (477, 47700, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 63),
  -- Dusknoir - Swagger - TM87
  (477, 47700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 64),
  -- Dusknoir - Substitute - TM90
  (477, 47700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 65),
  -- Dusknoir - Trick Room - TM92
  (477, 47700, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 66),
  -- Dusknoir - Strength - HM04
  (477, 47700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 67),
  -- Dusknoir - Rock Smash - HM06
  (477, 47700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 68),
  -- Dusknoir - Fire Punch - Tutor
  (477, 47700, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Dusknoir - Ice Punch - Tutor
  (477, 47700, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Dusknoir - Thunder Punch - Tutor
  (477, 47700, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Dusknoir - Snore - Tutor
  (477, 47700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Dusknoir - Spite - Tutor
  (477, 47700, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Dusknoir - Mud-Slap - Tutor
  (477, 47700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Dusknoir - Icy Wind - Tutor
  (477, 47700, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Dusknoir - Trick - Tutor
  (477, 47700, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Dusknoir - Sucker Punch - Tutor
  (477, 47700, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Dusknoir - Ominous Wind - Tutor
  (477, 47700, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Froslass - Leer - Level 1
  (478, 47800, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froslass - Double Team - Level 1
  (478, 47800, 104, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Froslass - Powder Snow - Level 1
  (478, 47800, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Froslass - Astonish - Level 1
  (478, 47800, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Froslass - Double Team - Level 4
  (478, 47800, 104, 9, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Froslass - Astonish - Level 10
  (478, 47800, 310, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Froslass - Icy Wind - Level 13
  (478, 47800, 196, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Froslass - Confuse Ray - Level 19
  (478, 47800, 109, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Froslass - Ominous Wind - Level 22
  (478, 47800, 466, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Froslass - Wake-Up Slap - Level 28
  (478, 47800, 358, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Froslass - Captivate - Level 31
  (478, 47800, 445, 9, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Froslass - Ice Shard - Level 37
  (478, 47800, 420, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Froslass - Hail - Level 40
  (478, 47800, 258, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Froslass - Blizzard - Level 51
  (478, 47800, 59, 9, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Froslass - Destiny Bond - Level 59
  (478, 47800, 194, 9, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Froslass - Water Pulse - TM03
  (478, 47800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Froslass - Toxic - TM06
  (478, 47800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Froslass - Hail - TM07
  (478, 47800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Froslass - Hidden Power - TM10
  (478, 47800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Froslass - Taunt - TM12
  (478, 47800, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 20),
  -- Froslass - Ice Beam - TM13
  (478, 47800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Froslass - Blizzard - TM14
  (478, 47800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Froslass - Hyper Beam - TM15
  (478, 47800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Froslass - Light Screen - TM16
  (478, 47800, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 24),
  -- Froslass - Protect - TM17
  (478, 47800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Froslass - Rain Dance - TM18
  (478, 47800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Froslass - Safeguard - TM20
  (478, 47800, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 27),
  -- Froslass - Frustration - TM21
  (478, 47800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Froslass - Thunderbolt - TM24
  (478, 47800, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 29),
  -- Froslass - Thunder - TM25
  (478, 47800, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 30),
  -- Froslass - Return - TM27
  (478, 47800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Froslass - Psychic - TM29
  (478, 47800, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 32),
  -- Froslass - Shadow Ball - TM30
  (478, 47800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 33),
  -- Froslass - Double Team - TM32
  (478, 47800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 34),
  -- Froslass - Shock Wave - TM34
  (478, 47800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 35),
  -- Froslass - Torment - TM41
  (478, 47800, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 36),
  -- Froslass - Facade - TM42
  (478, 47800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Froslass - Secret Power - TM43
  (478, 47800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Froslass - Rest - TM44
  (478, 47800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Froslass - Attract - TM45
  (478, 47800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Froslass - Snatch - TM49
  (478, 47800, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 41),
  -- Froslass - Fling - TM56
  (478, 47800, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 42),
  -- Froslass - Endure - TM58
  (478, 47800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Froslass - Embargo - TM63
  (478, 47800, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 44),
  -- Froslass - Payback - TM66
  (478, 47800, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 45),
  -- Froslass - Giga Impact - TM68
  (478, 47800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 46),
  -- Froslass - Flash - TM70
  (478, 47800, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 47),
  -- Froslass - Avalanche - TM72
  (478, 47800, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 48),
  -- Froslass - Thunder Wave - TM73
  (478, 47800, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 49),
  -- Froslass - Psych Up - TM77
  (478, 47800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 50),
  -- Froslass - Captivate - TM78
  (478, 47800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 51),
  -- Froslass - Sleep Talk - TM82
  (478, 47800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 52),
  -- Froslass - Natural Gift - TM83
  (478, 47800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 53),
  -- Froslass - Dream Eater - TM85
  (478, 47800, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 54),
  -- Froslass - Swagger - TM87
  (478, 47800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 55),
  -- Froslass - Substitute - TM90
  (478, 47800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 56),
  -- Froslass - Ice Punch - Tutor
  (478, 47800, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Froslass - Snore - Tutor
  (478, 47800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Froslass - Spite - Tutor
  (478, 47800, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Froslass - Mud-Slap - Tutor
  (478, 47800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Froslass - Icy Wind - Tutor
  (478, 47800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Froslass - Rollout - Tutor
  (478, 47800, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Froslass - Trick - Tutor
  (478, 47800, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Froslass - Signal Beam - Tutor
  (478, 47800, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Froslass - Sucker Punch - Tutor
  (478, 47800, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Froslass - Ominous Wind - Tutor
  (478, 47800, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Rotom - Thunder Shock - Level 1
  (479, 47900, 84, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom - Thunder Wave - Level 1
  (479, 47900, 86, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom - Confuse Ray - Level 1
  (479, 47900, 109, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom - Trick - Level 1
  (479, 47900, 271, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom - Astonish - Level 1
  (479, 47900, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom - Uproar - Level 8
  (479, 47900, 253, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom - Double Team - Level 15
  (479, 47900, 104, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom - Shock Wave - Level 22
  (479, 47900, 351, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom - Ominous Wind - Level 29
  (479, 47900, 466, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom - Substitute - Level 36
  (479, 47900, 164, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom - Charge - Level 43
  (479, 47900, 268, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom - Discharge - Level 50
  (479, 47900, 435, 9, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom - Toxic - TM06
  (479, 47900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Rotom - Hidden Power - TM10
  (479, 47900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Rotom - Sunny Day - TM11
  (479, 47900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Rotom - Light Screen - TM16
  (479, 47900, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 16),
  -- Rotom - Protect - TM17
  (479, 47900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Rotom - Rain Dance - TM18
  (479, 47900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Rotom - Frustration - TM21
  (479, 47900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Rotom - Thunderbolt - TM24
  (479, 47900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 20),
  -- Rotom - Thunder - TM25
  (479, 47900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 21),
  -- Rotom - Return - TM27
  (479, 47900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Rotom - Shadow Ball - TM30
  (479, 47900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Rotom - Double Team - TM32
  (479, 47900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Rotom - Reflect - TM33
  (479, 47900, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 25),
  -- Rotom - Shock Wave - TM34
  (479, 47900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 26),
  -- Rotom - Facade - TM42
  (479, 47900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Rotom - Secret Power - TM43
  (479, 47900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Rotom - Rest - TM44
  (479, 47900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Rotom - Thief - TM46
  (479, 47900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Rotom - Snatch - TM49
  (479, 47900, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 31),
  -- Rotom - Charge Beam - TM57
  (479, 47900, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 32),
  -- Rotom - Endure - TM58
  (479, 47900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Rotom - Will-O-Wisp - TM61
  (479, 47900, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 34),
  -- Rotom - Flash - TM70
  (479, 47900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Rotom - Thunder Wave - TM73
  (479, 47900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 36),
  -- Rotom - Psych Up - TM77
  (479, 47900, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 37),
  -- Rotom - Dark Pulse - TM79
  (479, 47900, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 38),
  -- Rotom - Sleep Talk - TM82
  (479, 47900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Rotom - Natural Gift - TM83
  (479, 47900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Rotom - Dream Eater - TM85
  (479, 47900, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 41),
  -- Rotom - Swagger - TM87
  (479, 47900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Rotom - Substitute - TM90
  (479, 47900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Rotom - Swift - Tutor
  (479, 47900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Rotom - Snore - Tutor
  (479, 47900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Rotom - Spite - Tutor
  (479, 47900, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Rotom - Mud-Slap - Tutor
  (479, 47900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Rotom - Uproar - Tutor
  (479, 47900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Rotom - Trick - Tutor
  (479, 47900, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Rotom - Signal Beam - Tutor
  (479, 47900, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Rotom - Sucker Punch - Tutor
  (479, 47900, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Rotom - Ominous Wind - Tutor
  (479, 47900, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Uxie - Confusion - Level 1
  (480, 48000, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Uxie - Rest - Level 1
  (480, 48000, 156, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Uxie - Imprison - Level 6
  (480, 48000, 286, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Uxie - Endure - Level 16
  (480, 48000, 203, 9, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Uxie - Swift - Level 21
  (480, 48000, 129, 9, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Uxie - Yawn - Level 31
  (480, 48000, 281, 9, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Uxie - Future Sight - Level 36
  (480, 48000, 248, 9, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Uxie - Amnesia - Level 46
  (480, 48000, 133, 9, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Uxie - Extrasensory - Level 51
  (480, 48000, 326, 9, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Uxie - Flail - Level 61
  (480, 48000, 175, 9, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Uxie - Natural Gift - Level 66
  (480, 48000, 363, 9, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Uxie - Memento - Level 76
  (480, 48000, 262, 9, NULL, 1, 76, NULL, NULL, NULL, 12),
  -- Uxie - Water Pulse - TM03
  (480, 48000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Uxie - Calm Mind - TM04
  (480, 48000, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Uxie - Toxic - TM06
  (480, 48000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Uxie - Hidden Power - TM10
  (480, 48000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Uxie - Sunny Day - TM11
  (480, 48000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Uxie - Hyper Beam - TM15
  (480, 48000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 18),
  -- Uxie - Light Screen - TM16
  (480, 48000, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 19),
  -- Uxie - Protect - TM17
  (480, 48000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Uxie - Rain Dance - TM18
  (480, 48000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Uxie - Giga Drain - TM19
  (480, 48000, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 22),
  -- Uxie - Safeguard - TM20
  (480, 48000, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 23),
  -- Uxie - Frustration - TM21
  (480, 48000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Uxie - Solar Beam - TM22
  (480, 48000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Uxie - Iron Tail - TM23
  (480, 48000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Uxie - Thunderbolt - TM24
  (480, 48000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Uxie - Thunder - TM25
  (480, 48000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Uxie - Return - TM27
  (480, 48000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Uxie - Psychic - TM29
  (480, 48000, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 30),
  -- Uxie - Shadow Ball - TM30
  (480, 48000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Uxie - Double Team - TM32
  (480, 48000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Uxie - Reflect - TM33
  (480, 48000, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 33),
  -- Uxie - Shock Wave - TM34
  (480, 48000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Uxie - Sandstorm - TM37
  (480, 48000, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 35),
  -- Uxie - Facade - TM42
  (480, 48000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Uxie - Secret Power - TM43
  (480, 48000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Uxie - Rest - TM44
  (480, 48000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Uxie - Skill Swap - TM48
  (480, 48000, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 39),
  -- Uxie - Energy Ball - TM53
  (480, 48000, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 40),
  -- Uxie - Fling - TM56
  (480, 48000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 41),
  -- Uxie - Charge Beam - TM57
  (480, 48000, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 42),
  -- Uxie - Endure - TM58
  (480, 48000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Uxie - Recycle - TM67
  (480, 48000, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 44),
  -- Uxie - Giga Impact - TM68
  (480, 48000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Uxie - Flash - TM70
  (480, 48000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 46),
  -- Uxie - Thunder Wave - TM73
  (480, 48000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 47),
  -- Uxie - Stealth Rock - TM76
  (480, 48000, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 48),
  -- Uxie - Psych Up - TM77
  (480, 48000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 49),
  -- Uxie - Sleep Talk - TM82
  (480, 48000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 50),
  -- Uxie - Natural Gift - TM83
  (480, 48000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 51),
  -- Uxie - Dream Eater - TM85
  (480, 48000, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 52),
  -- Uxie - Grass Knot - TM86
  (480, 48000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 53),
  -- Uxie - Swagger - TM87
  (480, 48000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Uxie - U-turn - TM89
  (480, 48000, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 55),
  -- Uxie - Substitute - TM90
  (480, 48000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 56),
  -- Uxie - Trick Room - TM92
  (480, 48000, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 57),
  -- Uxie - Fire Punch - Tutor
  (480, 48000, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Uxie - Ice Punch - Tutor
  (480, 48000, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Uxie - Thunder Punch - Tutor
  (480, 48000, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Uxie - Swift - Tutor
  (480, 48000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Uxie - Snore - Tutor
  (480, 48000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Uxie - Mud-Slap - Tutor
  (480, 48000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Uxie - Helping Hand - Tutor
  (480, 48000, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Uxie - Trick - Tutor
  (480, 48000, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Uxie - Knock Off - Tutor
  (480, 48000, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Uxie - Signal Beam - Tutor
  (480, 48000, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Uxie - Zen Headbutt - Tutor
  (480, 48000, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Mesprit - Confusion - Level 1
  (481, 48100, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mesprit - Rest - Level 1
  (481, 48100, 156, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mesprit - Imprison - Level 6
  (481, 48100, 286, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Mesprit - Protect - Level 16
  (481, 48100, 182, 9, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Mesprit - Swift - Level 21
  (481, 48100, 129, 9, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mesprit - Lucky Chant - Level 31
  (481, 48100, 381, 9, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Mesprit - Future Sight - Level 36
  (481, 48100, 248, 9, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Mesprit - Charm - Level 46
  (481, 48100, 204, 9, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Mesprit - Extrasensory - Level 51
  (481, 48100, 326, 9, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Mesprit - Copycat - Level 61
  (481, 48100, 383, 9, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Mesprit - Natural Gift - Level 66
  (481, 48100, 363, 9, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Mesprit - Healing Wish - Level 76
  (481, 48100, 361, 9, NULL, 1, 76, NULL, NULL, NULL, 12),
  -- Mesprit - Water Pulse - TM03
  (481, 48100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Mesprit - Calm Mind - TM04
  (481, 48100, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Mesprit - Toxic - TM06
  (481, 48100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Mesprit - Hidden Power - TM10
  (481, 48100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Mesprit - Sunny Day - TM11
  (481, 48100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Mesprit - Ice Beam - TM13
  (481, 48100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Mesprit - Blizzard - TM14
  (481, 48100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Mesprit - Hyper Beam - TM15
  (481, 48100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Mesprit - Light Screen - TM16
  (481, 48100, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 21),
  -- Mesprit - Protect - TM17
  (481, 48100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Mesprit - Rain Dance - TM18
  (481, 48100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Mesprit - Safeguard - TM20
  (481, 48100, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 24),
  -- Mesprit - Frustration - TM21
  (481, 48100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Mesprit - Iron Tail - TM23
  (481, 48100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Mesprit - Thunderbolt - TM24
  (481, 48100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Mesprit - Thunder - TM25
  (481, 48100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Mesprit - Return - TM27
  (481, 48100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Mesprit - Psychic - TM29
  (481, 48100, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 30),
  -- Mesprit - Shadow Ball - TM30
  (481, 48100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Mesprit - Double Team - TM32
  (481, 48100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Mesprit - Reflect - TM33
  (481, 48100, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 33),
  -- Mesprit - Shock Wave - TM34
  (481, 48100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Mesprit - Sandstorm - TM37
  (481, 48100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 35),
  -- Mesprit - Facade - TM42
  (481, 48100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Mesprit - Secret Power - TM43
  (481, 48100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Mesprit - Rest - TM44
  (481, 48100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Mesprit - Skill Swap - TM48
  (481, 48100, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 39),
  -- Mesprit - Energy Ball - TM53
  (481, 48100, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 40),
  -- Mesprit - Fling - TM56
  (481, 48100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 41),
  -- Mesprit - Charge Beam - TM57
  (481, 48100, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 42),
  -- Mesprit - Endure - TM58
  (481, 48100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Mesprit - Recycle - TM67
  (481, 48100, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 44),
  -- Mesprit - Giga Impact - TM68
  (481, 48100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Mesprit - Flash - TM70
  (481, 48100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 46),
  -- Mesprit - Thunder Wave - TM73
  (481, 48100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 47),
  -- Mesprit - Stealth Rock - TM76
  (481, 48100, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 48),
  -- Mesprit - Psych Up - TM77
  (481, 48100, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 49),
  -- Mesprit - Sleep Talk - TM82
  (481, 48100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 50),
  -- Mesprit - Natural Gift - TM83
  (481, 48100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 51),
  -- Mesprit - Dream Eater - TM85
  (481, 48100, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 52),
  -- Mesprit - Grass Knot - TM86
  (481, 48100, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 53),
  -- Mesprit - Swagger - TM87
  (481, 48100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Mesprit - U-turn - TM89
  (481, 48100, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 55),
  -- Mesprit - Substitute - TM90
  (481, 48100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 56),
  -- Mesprit - Trick Room - TM92
  (481, 48100, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 57),
  -- Mesprit - Fire Punch - Tutor
  (481, 48100, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Mesprit - Ice Punch - Tutor
  (481, 48100, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Mesprit - Thunder Punch - Tutor
  (481, 48100, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Mesprit - Swift - Tutor
  (481, 48100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Mesprit - Snore - Tutor
  (481, 48100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Mesprit - Mud-Slap - Tutor
  (481, 48100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Mesprit - Helping Hand - Tutor
  (481, 48100, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Mesprit - Trick - Tutor
  (481, 48100, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Mesprit - Knock Off - Tutor
  (481, 48100, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Mesprit - Signal Beam - Tutor
  (481, 48100, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Mesprit - Zen Headbutt - Tutor
  (481, 48100, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Azelf - Confusion - Level 1
  (482, 48200, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azelf - Rest - Level 1
  (482, 48200, 156, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azelf - Imprison - Level 6
  (482, 48200, 286, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Azelf - Detect - Level 16
  (482, 48200, 197, 9, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Azelf - Swift - Level 21
  (482, 48200, 129, 9, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Azelf - Uproar - Level 31
  (482, 48200, 253, 9, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Azelf - Future Sight - Level 36
  (482, 48200, 248, 9, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Azelf - Nasty Plot - Level 46
  (482, 48200, 417, 9, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Azelf - Extrasensory - Level 51
  (482, 48200, 326, 9, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Azelf - Last Resort - Level 61
  (482, 48200, 387, 9, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Azelf - Natural Gift - Level 66
  (482, 48200, 363, 9, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Azelf - Explosion - Level 76
  (482, 48200, 153, 9, NULL, 1, 76, NULL, NULL, NULL, 12),
  -- Azelf - Water Pulse - TM03
  (482, 48200, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Azelf - Calm Mind - TM04
  (482, 48200, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Azelf - Toxic - TM06
  (482, 48200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Azelf - Hidden Power - TM10
  (482, 48200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Azelf - Sunny Day - TM11
  (482, 48200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Azelf - Taunt - TM12
  (482, 48200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 18),
  -- Azelf - Hyper Beam - TM15
  (482, 48200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Azelf - Light Screen - TM16
  (482, 48200, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 20),
  -- Azelf - Protect - TM17
  (482, 48200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Azelf - Rain Dance - TM18
  (482, 48200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Azelf - Safeguard - TM20
  (482, 48200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 23),
  -- Azelf - Frustration - TM21
  (482, 48200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Azelf - Iron Tail - TM23
  (482, 48200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Azelf - Thunderbolt - TM24
  (482, 48200, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Azelf - Thunder - TM25
  (482, 48200, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 27),
  -- Azelf - Return - TM27
  (482, 48200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Azelf - Psychic - TM29
  (482, 48200, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 29),
  -- Azelf - Shadow Ball - TM30
  (482, 48200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Azelf - Double Team - TM32
  (482, 48200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Azelf - Reflect - TM33
  (482, 48200, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 32),
  -- Azelf - Shock Wave - TM34
  (482, 48200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Azelf - Flamethrower - TM35
  (482, 48200, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 34),
  -- Azelf - Sandstorm - TM37
  (482, 48200, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 35),
  -- Azelf - Fire Blast - TM38
  (482, 48200, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 36),
  -- Azelf - Torment - TM41
  (482, 48200, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 37),
  -- Azelf - Facade - TM42
  (482, 48200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Azelf - Secret Power - TM43
  (482, 48200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Azelf - Rest - TM44
  (482, 48200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Azelf - Skill Swap - TM48
  (482, 48200, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 41),
  -- Azelf - Energy Ball - TM53
  (482, 48200, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 42),
  -- Azelf - Fling - TM56
  (482, 48200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 43),
  -- Azelf - Charge Beam - TM57
  (482, 48200, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 44),
  -- Azelf - Endure - TM58
  (482, 48200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 45),
  -- Azelf - Explosion - TM64
  (482, 48200, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 46),
  -- Azelf - Payback - TM66
  (482, 48200, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 47),
  -- Azelf - Recycle - TM67
  (482, 48200, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 48),
  -- Azelf - Giga Impact - TM68
  (482, 48200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 49),
  -- Azelf - Flash - TM70
  (482, 48200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 50),
  -- Azelf - Thunder Wave - TM73
  (482, 48200, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 51),
  -- Azelf - Stealth Rock - TM76
  (482, 48200, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 52),
  -- Azelf - Psych Up - TM77
  (482, 48200, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 53),
  -- Azelf - Sleep Talk - TM82
  (482, 48200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 54),
  -- Azelf - Natural Gift - TM83
  (482, 48200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 55),
  -- Azelf - Dream Eater - TM85
  (482, 48200, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 56),
  -- Azelf - Grass Knot - TM86
  (482, 48200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 57),
  -- Azelf - Swagger - TM87
  (482, 48200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 58),
  -- Azelf - U-turn - TM89
  (482, 48200, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 59),
  -- Azelf - Substitute - TM90
  (482, 48200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 60),
  -- Azelf - Trick Room - TM92
  (482, 48200, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 61),
  -- Azelf - Fire Punch - Tutor
  (482, 48200, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Azelf - Ice Punch - Tutor
  (482, 48200, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Azelf - Thunder Punch - Tutor
  (482, 48200, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Azelf - Swift - Tutor
  (482, 48200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Azelf - Snore - Tutor
  (482, 48200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Azelf - Mud-Slap - Tutor
  (482, 48200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Azelf - Uproar - Tutor
  (482, 48200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Azelf - Helping Hand - Tutor
  (482, 48200, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Azelf - Trick - Tutor
  (482, 48200, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Azelf - Knock Off - Tutor
  (482, 48200, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Azelf - Signal Beam - Tutor
  (482, 48200, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Azelf - Last Resort - Tutor
  (482, 48200, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Azelf - Zen Headbutt - Tutor
  (482, 48200, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Dialga - Scary Face - Level 1
  (483, 48300, 184, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dialga - Dragon Breath - Level 1
  (483, 48300, 225, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dialga - Metal Claw - Level 10
  (483, 48300, 232, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Dialga - Ancient Power - Level 20
  (483, 48300, 246, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Dialga - Dragon Claw - Level 30
  (483, 48300, 337, 9, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Dialga - Roar of Time - Level 40
  (483, 48300, 459, 9, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Dialga - Heal Block - Level 50
  (483, 48300, 377, 9, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Dialga - Earth Power - Level 60
  (483, 48300, 414, 9, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Dialga - Slash - Level 70
  (483, 48300, 163, 9, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Dialga - Flash Cannon - Level 80
  (483, 48300, 430, 9, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Dialga - Aura Sphere - Level 90
  (483, 48300, 396, 9, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Dialga - Dragon Claw - TM02
  (483, 48300, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 12),
  -- Dialga - Roar - TM05
  (483, 48300, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 13),
  -- Dialga - Toxic - TM06
  (483, 48300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Dialga - Bulk Up - TM08
  (483, 48300, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 15),
  -- Dialga - Hidden Power - TM10
  (483, 48300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Dialga - Sunny Day - TM11
  (483, 48300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Dialga - Ice Beam - TM13
  (483, 48300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Dialga - Blizzard - TM14
  (483, 48300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Dialga - Hyper Beam - TM15
  (483, 48300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Dialga - Protect - TM17
  (483, 48300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Dialga - Rain Dance - TM18
  (483, 48300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Dialga - Safeguard - TM20
  (483, 48300, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 23),
  -- Dialga - Frustration - TM21
  (483, 48300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Dialga - Iron Tail - TM23
  (483, 48300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Dialga - Thunderbolt - TM24
  (483, 48300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Dialga - Thunder - TM25
  (483, 48300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 27),
  -- Dialga - Earthquake - TM26
  (483, 48300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Dialga - Return - TM27
  (483, 48300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Dialga - Brick Break - TM31
  (483, 48300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 30),
  -- Dialga - Double Team - TM32
  (483, 48300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Dialga - Shock Wave - TM34
  (483, 48300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 32),
  -- Dialga - Flamethrower - TM35
  (483, 48300, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 33),
  -- Dialga - Sandstorm - TM37
  (483, 48300, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 34),
  -- Dialga - Fire Blast - TM38
  (483, 48300, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 35),
  -- Dialga - Rock Tomb - TM39
  (483, 48300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Dialga - Aerial Ace - TM40
  (483, 48300, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 37),
  -- Dialga - Facade - TM42
  (483, 48300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Dialga - Secret Power - TM43
  (483, 48300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Dialga - Rest - TM44
  (483, 48300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Dialga - Overheat - TM50
  (483, 48300, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 41),
  -- Dialga - Endure - TM58
  (483, 48300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Dialga - Dragon Pulse - TM59
  (483, 48300, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 43),
  -- Dialga - Shadow Claw - TM65
  (483, 48300, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 44),
  -- Dialga - Giga Impact - TM68
  (483, 48300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Dialga - Flash - TM70
  (483, 48300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 46),
  -- Dialga - Stone Edge - TM71
  (483, 48300, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 47),
  -- Dialga - Thunder Wave - TM73
  (483, 48300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 48),
  -- Dialga - Stealth Rock - TM76
  (483, 48300, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 49),
  -- Dialga - Psych Up - TM77
  (483, 48300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 50),
  -- Dialga - Rock Slide - TM80
  (483, 48300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 51),
  -- Dialga - Sleep Talk - TM82
  (483, 48300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 52),
  -- Dialga - Natural Gift - TM83
  (483, 48300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 53),
  -- Dialga - Swagger - TM87
  (483, 48300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Dialga - Substitute - TM90
  (483, 48300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 55),
  -- Dialga - Flash Cannon - TM91
  (483, 48300, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 56),
  -- Dialga - Trick Room - TM92
  (483, 48300, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 57),
  -- Dialga - Cut - HM01
  (483, 48300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 58),
  -- Dialga - Strength - HM04
  (483, 48300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 59),
  -- Dialga - Rock Smash - HM06
  (483, 48300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 60),
  -- Dialga - Swift - Tutor
  (483, 48300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Dialga - Snore - Tutor
  (483, 48300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Dialga - Mud-Slap - Tutor
  (483, 48300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Dialga - Outrage - Tutor
  (483, 48300, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Dialga - Fury Cutter - Tutor
  (483, 48300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Dialga - Twister - Tutor
  (483, 48300, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Dialga - Ancient Power - Tutor
  (483, 48300, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Dialga - Iron Defense - Tutor
  (483, 48300, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Dialga - Magnet Rise - Tutor
  (483, 48300, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Dialga - Earth Power - Tutor
  (483, 48300, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Dialga - Draco Meteor - Tutor
  (483, 48300, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Dialga - Iron Head - Tutor
  (483, 48300, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Palkia - Scary Face - Level 1
  (484, 48400, 184, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palkia - Dragon Breath - Level 1
  (484, 48400, 225, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palkia - Water Pulse - Level 10
  (484, 48400, 352, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Palkia - Ancient Power - Level 20
  (484, 48400, 246, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Palkia - Dragon Claw - Level 30
  (484, 48400, 337, 9, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Palkia - Spacial Rend - Level 40
  (484, 48400, 460, 9, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Palkia - Heal Block - Level 50
  (484, 48400, 377, 9, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Palkia - Earth Power - Level 60
  (484, 48400, 414, 9, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Palkia - Slash - Level 70
  (484, 48400, 163, 9, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Palkia - Aqua Tail - Level 80
  (484, 48400, 401, 9, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Palkia - Aura Sphere - Level 90
  (484, 48400, 396, 9, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Palkia - Focus Punch - TM01
  (484, 48400, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 12),
  -- Palkia - Dragon Claw - TM02
  (484, 48400, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 13),
  -- Palkia - Water Pulse - TM03
  (484, 48400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Palkia - Roar - TM05
  (484, 48400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Palkia - Toxic - TM06
  (484, 48400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Palkia - Hail - TM07
  (484, 48400, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 17),
  -- Palkia - Bulk Up - TM08
  (484, 48400, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 18),
  -- Palkia - Hidden Power - TM10
  (484, 48400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Palkia - Sunny Day - TM11
  (484, 48400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Palkia - Ice Beam - TM13
  (484, 48400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Palkia - Blizzard - TM14
  (484, 48400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Palkia - Hyper Beam - TM15
  (484, 48400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Palkia - Protect - TM17
  (484, 48400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Palkia - Rain Dance - TM18
  (484, 48400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Palkia - Safeguard - TM20
  (484, 48400, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 26),
  -- Palkia - Frustration - TM21
  (484, 48400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Palkia - Thunderbolt - TM24
  (484, 48400, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 28),
  -- Palkia - Thunder - TM25
  (484, 48400, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 29),
  -- Palkia - Earthquake - TM26
  (484, 48400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Palkia - Return - TM27
  (484, 48400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Palkia - Brick Break - TM31
  (484, 48400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Palkia - Double Team - TM32
  (484, 48400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Palkia - Shock Wave - TM34
  (484, 48400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Palkia - Flamethrower - TM35
  (484, 48400, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 35),
  -- Palkia - Sandstorm - TM37
  (484, 48400, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 36),
  -- Palkia - Fire Blast - TM38
  (484, 48400, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 37),
  -- Palkia - Rock Tomb - TM39
  (484, 48400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 38),
  -- Palkia - Aerial Ace - TM40
  (484, 48400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 39),
  -- Palkia - Facade - TM42
  (484, 48400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 40),
  -- Palkia - Secret Power - TM43
  (484, 48400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 41),
  -- Palkia - Rest - TM44
  (484, 48400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 42),
  -- Palkia - Focus Blast - TM52
  (484, 48400, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 43),
  -- Palkia - Brine - TM55
  (484, 48400, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 44),
  -- Palkia - Fling - TM56
  (484, 48400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 45),
  -- Palkia - Endure - TM58
  (484, 48400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 46),
  -- Palkia - Dragon Pulse - TM59
  (484, 48400, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 47),
  -- Palkia - Shadow Claw - TM65
  (484, 48400, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 48),
  -- Palkia - Giga Impact - TM68
  (484, 48400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 49),
  -- Palkia - Stone Edge - TM71
  (484, 48400, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 50),
  -- Palkia - Avalanche - TM72
  (484, 48400, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 51),
  -- Palkia - Thunder Wave - TM73
  (484, 48400, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 52),
  -- Palkia - Psych Up - TM77
  (484, 48400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 53),
  -- Palkia - Rock Slide - TM80
  (484, 48400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 54),
  -- Palkia - Sleep Talk - TM82
  (484, 48400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 55),
  -- Palkia - Natural Gift - TM83
  (484, 48400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 56),
  -- Palkia - Swagger - TM87
  (484, 48400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 57),
  -- Palkia - Substitute - TM90
  (484, 48400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 58),
  -- Palkia - Trick Room - TM92
  (484, 48400, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 59),
  -- Palkia - Cut - HM01
  (484, 48400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 60),
  -- Palkia - Surf - HM03
  (484, 48400, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 61),
  -- Palkia - Strength - HM04
  (484, 48400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 62),
  -- Palkia - Defog - HM05
  (484, 48400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 63),
  -- Palkia - Rock Smash - HM06
  (484, 48400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 64),
  -- Palkia - Swift - Tutor
  (484, 48400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Palkia - Snore - Tutor
  (484, 48400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Palkia - Mud-Slap - Tutor
  (484, 48400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Palkia - Outrage - Tutor
  (484, 48400, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Palkia - Fury Cutter - Tutor
  (484, 48400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Palkia - Twister - Tutor
  (484, 48400, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Palkia - Ancient Power - Tutor
  (484, 48400, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Palkia - Dive - Tutor
  (484, 48400, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Palkia - Aqua Tail - Tutor
  (484, 48400, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Palkia - Earth Power - Tutor
  (484, 48400, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Palkia - Draco Meteor - Tutor
  (484, 48400, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Heatran - Ancient Power - Level 1
  (485, 48500, 246, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatran - Leer - Level 9
  (485, 48500, 43, 9, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Heatran - Fire Fang - Level 17
  (485, 48500, 424, 9, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Heatran - Metal Sound - Level 25
  (485, 48500, 319, 9, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Heatran - Crunch - Level 33
  (485, 48500, 242, 9, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Heatran - Scary Face - Level 41
  (485, 48500, 184, 9, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Heatran - Lava Plume - Level 49
  (485, 48500, 436, 9, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Heatran - Fire Spin - Level 57
  (485, 48500, 83, 9, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Heatran - Iron Head - Level 65
  (485, 48500, 442, 9, NULL, 1, 65, NULL, NULL, NULL, 9),
  -- Heatran - Earth Power - Level 73
  (485, 48500, 414, 9, NULL, 1, 73, NULL, NULL, NULL, 10),
  -- Heatran - Heat Wave - Level 81
  (485, 48500, 257, 9, NULL, 1, 81, NULL, NULL, NULL, 11),
  -- Heatran - Stone Edge - Level 88
  (485, 48500, 444, 9, NULL, 1, 88, NULL, NULL, NULL, 12),
  -- Heatran - Magma Storm - Level 96
  (485, 48500, 463, 9, NULL, 1, 96, NULL, NULL, NULL, 13),
  -- Heatran - Roar - TM05
  (485, 48500, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 14),
  -- Heatran - Toxic - TM06
  (485, 48500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Heatran - Hidden Power - TM10
  (485, 48500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Heatran - Sunny Day - TM11
  (485, 48500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Heatran - Taunt - TM12
  (485, 48500, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 18),
  -- Heatran - Hyper Beam - TM15
  (485, 48500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Heatran - Protect - TM17
  (485, 48500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Heatran - Frustration - TM21
  (485, 48500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Heatran - Solar Beam - TM22
  (485, 48500, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 22),
  -- Heatran - Earthquake - TM26
  (485, 48500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 23),
  -- Heatran - Return - TM27
  (485, 48500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Heatran - Dig - TM28
  (485, 48500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 25),
  -- Heatran - Double Team - TM32
  (485, 48500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Heatran - Flamethrower - TM35
  (485, 48500, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 27),
  -- Heatran - Fire Blast - TM38
  (485, 48500, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 28),
  -- Heatran - Rock Tomb - TM39
  (485, 48500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Heatran - Torment - TM41
  (485, 48500, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 30),
  -- Heatran - Facade - TM42
  (485, 48500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Heatran - Secret Power - TM43
  (485, 48500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Heatran - Rest - TM44
  (485, 48500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Heatran - Attract - TM45
  (485, 48500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Heatran - Overheat - TM50
  (485, 48500, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 35),
  -- Heatran - Endure - TM58
  (485, 48500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Heatran - Dragon Pulse - TM59
  (485, 48500, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 37),
  -- Heatran - Will-O-Wisp - TM61
  (485, 48500, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 38),
  -- Heatran - Explosion - TM64
  (485, 48500, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 39),
  -- Heatran - Payback - TM66
  (485, 48500, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 40),
  -- Heatran - Giga Impact - TM68
  (485, 48500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Heatran - Stone Edge - TM71
  (485, 48500, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 42),
  -- Heatran - Stealth Rock - TM76
  (485, 48500, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 43),
  -- Heatran - Captivate - TM78
  (485, 48500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Heatran - Dark Pulse - TM79
  (485, 48500, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 45),
  -- Heatran - Rock Slide - TM80
  (485, 48500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 46),
  -- Heatran - Sleep Talk - TM82
  (485, 48500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Heatran - Natural Gift - TM83
  (485, 48500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Heatran - Swagger - TM87
  (485, 48500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Heatran - Substitute - TM90
  (485, 48500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Heatran - Flash Cannon - TM91
  (485, 48500, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 51),
  -- Heatran - Strength - HM04
  (485, 48500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 52),
  -- Heatran - Rock Smash - HM06
  (485, 48500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Heatran - Rock Climb - HM08
  (485, 48500, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 54),
  -- Heatran - Snore - Tutor
  (485, 48500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Heatran - Mud-Slap - Tutor
  (485, 48500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Heatran - Ancient Power - Tutor
  (485, 48500, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Heatran - Uproar - Tutor
  (485, 48500, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Heatran - Heat Wave - Tutor
  (485, 48500, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Heatran - Iron Defense - Tutor
  (485, 48500, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Heatran - Earth Power - Tutor
  (485, 48500, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Heatran - Iron Head - Tutor
  (485, 48500, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Regigigas - Fire Punch - Level 1
  (486, 48600, 7, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regigigas - Ice Punch - Level 1
  (486, 48600, 8, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regigigas - Thunder Punch - Level 1
  (486, 48600, 9, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Regigigas - Confuse Ray - Level 1
  (486, 48600, 109, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Regigigas - Dizzy Punch - Level 1
  (486, 48600, 146, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Regigigas - Foresight - Level 1
  (486, 48600, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Regigigas - Knock Off - Level 1
  (486, 48600, 282, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Regigigas - Revenge - Level 25
  (486, 48600, 279, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Regigigas - Zen Headbutt - Level 50
  (486, 48600, 428, 9, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Regigigas - Crush Grip - Level 75
  (486, 48600, 462, 9, NULL, 1, 75, NULL, NULL, NULL, 10),
  -- Regigigas - Giga Impact - Level 100
  (486, 48600, 416, 9, NULL, 1, 100, NULL, NULL, NULL, 11),
  -- Regigigas - Focus Punch - TM01
  (486, 48600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 12),
  -- Regigigas - Toxic - TM06
  (486, 48600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Regigigas - Hidden Power - TM10
  (486, 48600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Regigigas - Sunny Day - TM11
  (486, 48600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Regigigas - Hyper Beam - TM15
  (486, 48600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 16),
  -- Regigigas - Rain Dance - TM18
  (486, 48600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 17),
  -- Regigigas - Safeguard - TM20
  (486, 48600, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 18),
  -- Regigigas - Frustration - TM21
  (486, 48600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Regigigas - Thunderbolt - TM24
  (486, 48600, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 20),
  -- Regigigas - Thunder - TM25
  (486, 48600, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 21),
  -- Regigigas - Earthquake - TM26
  (486, 48600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 22),
  -- Regigigas - Return - TM27
  (486, 48600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Regigigas - Brick Break - TM31
  (486, 48600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 24),
  -- Regigigas - Double Team - TM32
  (486, 48600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Regigigas - Shock Wave - TM34
  (486, 48600, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 26),
  -- Regigigas - Rock Tomb - TM39
  (486, 48600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 27),
  -- Regigigas - Aerial Ace - TM40
  (486, 48600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 28),
  -- Regigigas - Facade - TM42
  (486, 48600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Regigigas - Secret Power - TM43
  (486, 48600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Regigigas - Focus Blast - TM52
  (486, 48600, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 31),
  -- Regigigas - Fling - TM56
  (486, 48600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 32),
  -- Regigigas - Endure - TM58
  (486, 48600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Regigigas - Drain Punch - TM60
  (486, 48600, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 34),
  -- Regigigas - Giga Impact - TM68
  (486, 48600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 35),
  -- Regigigas - Rock Polish - TM69
  (486, 48600, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 36),
  -- Regigigas - Stone Edge - TM71
  (486, 48600, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 37),
  -- Regigigas - Avalanche - TM72
  (486, 48600, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 38),
  -- Regigigas - Thunder Wave - TM73
  (486, 48600, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 39),
  -- Regigigas - Psych Up - TM77
  (486, 48600, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 40),
  -- Regigigas - Rock Slide - TM80
  (486, 48600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 41),
  -- Regigigas - Sleep Talk - TM82
  (486, 48600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Regigigas - Natural Gift - TM83
  (486, 48600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Regigigas - Swagger - TM87
  (486, 48600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Regigigas - Substitute - TM90
  (486, 48600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Regigigas - Strength - HM04
  (486, 48600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Regigigas - Rock Smash - HM06
  (486, 48600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 47),
  -- Regigigas - Rock Climb - HM08
  (486, 48600, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 48),
  -- Regigigas - Fire Punch - Tutor
  (486, 48600, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Regigigas - Ice Punch - Tutor
  (486, 48600, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Regigigas - Thunder Punch - Tutor
  (486, 48600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Regigigas - Snore - Tutor
  (486, 48600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Regigigas - Mud-Slap - Tutor
  (486, 48600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Regigigas - Icy Wind - Tutor
  (486, 48600, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Regigigas - Ancient Power - Tutor
  (486, 48600, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Regigigas - Superpower - Tutor
  (486, 48600, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Regigigas - Earth Power - Tutor
  (486, 48600, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Regigigas - Zen Headbutt - Tutor
  (486, 48600, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Regigigas - Iron Head - Tutor
  (486, 48600, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Giratina - Scary Face - Level 1
  (487, 48700, 184, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina - Dragon Breath - Level 1
  (487, 48700, 225, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina - Ominous Wind - Level 10
  (487, 48700, 466, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Giratina - Ancient Power - Level 20
  (487, 48700, 246, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Giratina - Dragon Claw - Level 30
  (487, 48700, 337, 9, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Giratina - Shadow Force - Level 40
  (487, 48700, 467, 9, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Giratina - Heal Block - Level 50
  (487, 48700, 377, 9, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Giratina - Earth Power - Level 60
  (487, 48700, 414, 9, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Giratina - Slash - Level 70
  (487, 48700, 163, 9, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Giratina - Shadow Claw - Level 80
  (487, 48700, 421, 9, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Giratina - Aura Sphere - Level 90
  (487, 48700, 396, 9, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Giratina - Dragon Claw - TM02
  (487, 48700, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 12),
  -- Giratina - Calm Mind - TM04
  (487, 48700, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 13),
  -- Giratina - Roar - TM05
  (487, 48700, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 14),
  -- Giratina - Toxic - TM06
  (487, 48700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Giratina - Hidden Power - TM10
  (487, 48700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Giratina - Sunny Day - TM11
  (487, 48700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Giratina - Hyper Beam - TM15
  (487, 48700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 18),
  -- Giratina - Protect - TM17
  (487, 48700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Giratina - Rain Dance - TM18
  (487, 48700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Giratina - Safeguard - TM20
  (487, 48700, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 21),
  -- Giratina - Frustration - TM21
  (487, 48700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Giratina - Iron Tail - TM23
  (487, 48700, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Giratina - Thunderbolt - TM24
  (487, 48700, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 24),
  -- Giratina - Thunder - TM25
  (487, 48700, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 25),
  -- Giratina - Earthquake - TM26
  (487, 48700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 26),
  -- Giratina - Return - TM27
  (487, 48700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Giratina - Psychic - TM29
  (487, 48700, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 28),
  -- Giratina - Shadow Ball - TM30
  (487, 48700, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Giratina - Double Team - TM32
  (487, 48700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Giratina - Shock Wave - TM34
  (487, 48700, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 31),
  -- Giratina - Aerial Ace - TM40
  (487, 48700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 32),
  -- Giratina - Facade - TM42
  (487, 48700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Giratina - Secret Power - TM43
  (487, 48700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Giratina - Rest - TM44
  (487, 48700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Giratina - Steel Wing - TM47
  (487, 48700, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 36),
  -- Giratina - Energy Ball - TM53
  (487, 48700, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 37),
  -- Giratina - Charge Beam - TM57
  (487, 48700, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 38),
  -- Giratina - Endure - TM58
  (487, 48700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Giratina - Dragon Pulse - TM59
  (487, 48700, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 40),
  -- Giratina - Will-O-Wisp - TM61
  (487, 48700, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 41),
  -- Giratina - Silver Wind - TM62
  (487, 48700, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 42),
  -- Giratina - Shadow Claw - TM65
  (487, 48700, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 43),
  -- Giratina - Payback - TM66
  (487, 48700, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 44),
  -- Giratina - Giga Impact - TM68
  (487, 48700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Giratina - Stone Edge - TM71
  (487, 48700, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 46),
  -- Giratina - Thunder Wave - TM73
  (487, 48700, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 47),
  -- Giratina - Psych Up - TM77
  (487, 48700, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 48),
  -- Giratina - Dark Pulse - TM79
  (487, 48700, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 49),
  -- Giratina - Sleep Talk - TM82
  (487, 48700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 50),
  -- Giratina - Natural Gift - TM83
  (487, 48700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 51),
  -- Giratina - Dream Eater - TM85
  (487, 48700, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 52),
  -- Giratina - Swagger - TM87
  (487, 48700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 53),
  -- Giratina - Substitute - TM90
  (487, 48700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 54),
  -- Giratina - Cut - HM01
  (487, 48700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 55),
  -- Giratina - Fly - HM02
  (487, 48700, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 56),
  -- Giratina - Strength - HM04
  (487, 48700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 57),
  -- Giratina - Defog - HM05
  (487, 48700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 58),
  -- Giratina - Rock Smash - HM06
  (487, 48700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 59),
  -- Giratina - Rock Climb - HM08
  (487, 48700, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 60),
  -- Giratina - Swift - Tutor
  (487, 48700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Giratina - Snore - Tutor
  (487, 48700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Giratina - Spite - Tutor
  (487, 48700, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Giratina - Mud-Slap - Tutor
  (487, 48700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Giratina - Icy Wind - Tutor
  (487, 48700, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Giratina - Outrage - Tutor
  (487, 48700, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Giratina - Fury Cutter - Tutor
  (487, 48700, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Giratina - Twister - Tutor
  (487, 48700, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Giratina - Ancient Power - Tutor
  (487, 48700, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Giratina - Air Cutter - Tutor
  (487, 48700, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Giratina - Aqua Tail - Tutor
  (487, 48700, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Giratina - Earth Power - Tutor
  (487, 48700, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Giratina - Draco Meteor - Tutor
  (487, 48700, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Giratina - Iron Head - Tutor
  (487, 48700, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Giratina - Ominous Wind - Tutor
  (487, 48700, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Cresselia - Confusion - Level 1
  (488, 48800, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cresselia - Double Team - Level 1
  (488, 48800, 104, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cresselia - Safeguard - Level 11
  (488, 48800, 219, 9, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Cresselia - Mist - Level 20
  (488, 48800, 54, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Cresselia - Aurora Beam - Level 29
  (488, 48800, 62, 9, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Cresselia - Future Sight - Level 38
  (488, 48800, 248, 9, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Cresselia - Slash - Level 47
  (488, 48800, 163, 9, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Cresselia - Moonlight - Level 57
  (488, 48800, 236, 9, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Cresselia - Psycho Cut - Level 66
  (488, 48800, 427, 9, NULL, 1, 66, NULL, NULL, NULL, 9),
  -- Cresselia - Psycho Shift - Level 75
  (488, 48800, 375, 9, NULL, 1, 75, NULL, NULL, NULL, 10),
  -- Cresselia - Lunar Dance - Level 84
  (488, 48800, 461, 9, NULL, 1, 84, NULL, NULL, NULL, 11),
  -- Cresselia - Psychic - Level 93
  (488, 48800, 94, 9, NULL, 1, 93, NULL, NULL, NULL, 12),
  -- Cresselia - Calm Mind - TM04
  (488, 48800, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 13),
  -- Cresselia - Toxic - TM06
  (488, 48800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Cresselia - Hidden Power - TM10
  (488, 48800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Cresselia - Sunny Day - TM11
  (488, 48800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Cresselia - Ice Beam - TM13
  (488, 48800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Cresselia - Hyper Beam - TM15
  (488, 48800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 18),
  -- Cresselia - Light Screen - TM16
  (488, 48800, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 19),
  -- Cresselia - Protect - TM17
  (488, 48800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Cresselia - Rain Dance - TM18
  (488, 48800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Cresselia - Safeguard - TM20
  (488, 48800, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 22),
  -- Cresselia - Frustration - TM21
  (488, 48800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Cresselia - Solar Beam - TM22
  (488, 48800, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Cresselia - Return - TM27
  (488, 48800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Cresselia - Psychic - TM29
  (488, 48800, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 26),
  -- Cresselia - Shadow Ball - TM30
  (488, 48800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Cresselia - Double Team - TM32
  (488, 48800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Cresselia - Reflect - TM33
  (488, 48800, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 29),
  -- Cresselia - Facade - TM42
  (488, 48800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Cresselia - Secret Power - TM43
  (488, 48800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Cresselia - Rest - TM44
  (488, 48800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Cresselia - Attract - TM45
  (488, 48800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Cresselia - Skill Swap - TM48
  (488, 48800, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 34),
  -- Cresselia - Energy Ball - TM53
  (488, 48800, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 35),
  -- Cresselia - Charge Beam - TM57
  (488, 48800, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 36),
  -- Cresselia - Endure - TM58
  (488, 48800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Cresselia - Recycle - TM67
  (488, 48800, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 38),
  -- Cresselia - Giga Impact - TM68
  (488, 48800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 39),
  -- Cresselia - Flash - TM70
  (488, 48800, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 40),
  -- Cresselia - Thunder Wave - TM73
  (488, 48800, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 41),
  -- Cresselia - Psych Up - TM77
  (488, 48800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 42),
  -- Cresselia - Captivate - TM78
  (488, 48800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Cresselia - Sleep Talk - TM82
  (488, 48800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Cresselia - Natural Gift - TM83
  (488, 48800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Cresselia - Dream Eater - TM85
  (488, 48800, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 46),
  -- Cresselia - Grass Knot - TM86
  (488, 48800, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 47),
  -- Cresselia - Swagger - TM87
  (488, 48800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 48),
  -- Cresselia - Substitute - TM90
  (488, 48800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Cresselia - Trick Room - TM92
  (488, 48800, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 50),
  -- Cresselia - Swift - Tutor
  (488, 48800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Cresselia - Snore - Tutor
  (488, 48800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Cresselia - Mud-Slap - Tutor
  (488, 48800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Cresselia - Icy Wind - Tutor
  (488, 48800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Cresselia - Fury Cutter - Tutor
  (488, 48800, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Cresselia - Helping Hand - Tutor
  (488, 48800, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Cresselia - Trick - Tutor
  (488, 48800, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Cresselia - Signal Beam - Tutor
  (488, 48800, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Cresselia - Zen Headbutt - Tutor
  (488, 48800, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Phione - Bubble - Level 1
  (489, 48900, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phione - Water Sport - Level 1
  (489, 48900, 346, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phione - Charm - Level 9
  (489, 48900, 204, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Phione - Supersonic - Level 16
  (489, 48900, 48, 9, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Phione - Bubble Beam - Level 24
  (489, 48900, 61, 9, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Phione - Acid Armor - Level 31
  (489, 48900, 151, 9, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Phione - Whirlpool - Level 39
  (489, 48900, 250, 9, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Phione - Water Pulse - Level 46
  (489, 48900, 352, 9, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Phione - Aqua Ring - Level 54
  (489, 48900, 392, 9, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Phione - Dive - Level 61
  (489, 48900, 291, 9, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Phione - Rain Dance - Level 69
  (489, 48900, 240, 9, NULL, 1, 69, NULL, NULL, NULL, 11),
  -- Phione - Water Pulse - TM03
  (489, 48900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 12),
  -- Phione - Toxic - TM06
  (489, 48900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Phione - Hail - TM07
  (489, 48900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 14),
  -- Phione - Hidden Power - TM10
  (489, 48900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Phione - Ice Beam - TM13
  (489, 48900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 16),
  -- Phione - Blizzard - TM14
  (489, 48900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 17),
  -- Phione - Protect - TM17
  (489, 48900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Phione - Rain Dance - TM18
  (489, 48900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Phione - Safeguard - TM20
  (489, 48900, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 20),
  -- Phione - Frustration - TM21
  (489, 48900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Phione - Return - TM27
  (489, 48900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Phione - Double Team - TM32
  (489, 48900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Phione - Facade - TM42
  (489, 48900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Phione - Secret Power - TM43
  (489, 48900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Phione - Rest - TM44
  (489, 48900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Phione - Brine - TM55
  (489, 48900, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 27),
  -- Phione - Fling - TM56
  (489, 48900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 28),
  -- Phione - Endure - TM58
  (489, 48900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 29),
  -- Phione - Psych Up - TM77
  (489, 48900, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 30),
  -- Phione - Sleep Talk - TM82
  (489, 48900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 31),
  -- Phione - Natural Gift - TM83
  (489, 48900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 32),
  -- Phione - Grass Knot - TM86
  (489, 48900, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 33),
  -- Phione - Swagger - TM87
  (489, 48900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 34),
  -- Phione - U-turn - TM89
  (489, 48900, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 35),
  -- Phione - Substitute - TM90
  (489, 48900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 36),
  -- Phione - Surf - HM03
  (489, 48900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 37),
  -- Phione - Defog - HM05
  (489, 48900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 38),
  -- Phione - Waterfall - HM07
  (489, 48900, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 39),
  -- Phione - Swift - Tutor
  (489, 48900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 40),
  -- Phione - Snore - Tutor
  (489, 48900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 41),
  -- Phione - Mud-Slap - Tutor
  (489, 48900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Phione - Icy Wind - Tutor
  (489, 48900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Phione - Ancient Power - Tutor
  (489, 48900, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Phione - Uproar - Tutor
  (489, 48900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Phione - Helping Hand - Tutor
  (489, 48900, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Phione - Knock Off - Tutor
  (489, 48900, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Phione - Dive - Tutor
  (489, 48900, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Phione - Signal Beam - Tutor
  (489, 48900, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Phione - Bounce - Tutor
  (489, 48900, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Phione - Last Resort - Tutor
  (489, 48900, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Manaphy - Bubble - Level 1
  (490, 49000, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manaphy - Tail Glow - Level 1
  (490, 49000, 294, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manaphy - Water Sport - Level 1
  (490, 49000, 346, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manaphy - Charm - Level 9
  (490, 49000, 204, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Manaphy - Supersonic - Level 16
  (490, 49000, 48, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Manaphy - Bubble Beam - Level 24
  (490, 49000, 61, 9, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Manaphy - Acid Armor - Level 31
  (490, 49000, 151, 9, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Manaphy - Whirlpool - Level 39
  (490, 49000, 250, 9, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Manaphy - Water Pulse - Level 46
  (490, 49000, 352, 9, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Manaphy - Aqua Ring - Level 54
  (490, 49000, 392, 9, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Manaphy - Dive - Level 61
  (490, 49000, 291, 9, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Manaphy - Rain Dance - Level 69
  (490, 49000, 240, 9, NULL, 1, 69, NULL, NULL, NULL, 12),
  -- Manaphy - Heart Swap - Level 76
  (490, 49000, 391, 9, NULL, 1, 76, NULL, NULL, NULL, 13),
  -- Manaphy - Water Pulse - TM03
  (490, 49000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Manaphy - Calm Mind - TM04
  (490, 49000, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 15),
  -- Manaphy - Toxic - TM06
  (490, 49000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Manaphy - Hail - TM07
  (490, 49000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 17),
  -- Manaphy - Hidden Power - TM10
  (490, 49000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Manaphy - Ice Beam - TM13
  (490, 49000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Manaphy - Blizzard - TM14
  (490, 49000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Manaphy - Hyper Beam - TM15
  (490, 49000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Manaphy - Light Screen - TM16
  (490, 49000, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 22),
  -- Manaphy - Protect - TM17
  (490, 49000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Manaphy - Rain Dance - TM18
  (490, 49000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Manaphy - Safeguard - TM20
  (490, 49000, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 25),
  -- Manaphy - Frustration - TM21
  (490, 49000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Manaphy - Return - TM27
  (490, 49000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Manaphy - Psychic - TM29
  (490, 49000, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 28),
  -- Manaphy - Shadow Ball - TM30
  (490, 49000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Manaphy - Double Team - TM32
  (490, 49000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Manaphy - Reflect - TM33
  (490, 49000, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 31),
  -- Manaphy - Facade - TM42
  (490, 49000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Manaphy - Secret Power - TM43
  (490, 49000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Manaphy - Rest - TM44
  (490, 49000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Manaphy - Skill Swap - TM48
  (490, 49000, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 35),
  -- Manaphy - Energy Ball - TM53
  (490, 49000, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 36),
  -- Manaphy - Brine - TM55
  (490, 49000, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 37),
  -- Manaphy - Fling - TM56
  (490, 49000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 38),
  -- Manaphy - Endure - TM58
  (490, 49000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Manaphy - Giga Impact - TM68
  (490, 49000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 40),
  -- Manaphy - Flash - TM70
  (490, 49000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 41),
  -- Manaphy - Psych Up - TM77
  (490, 49000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 42),
  -- Manaphy - Sleep Talk - TM82
  (490, 49000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Manaphy - Natural Gift - TM83
  (490, 49000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Manaphy - Grass Knot - TM86
  (490, 49000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 45),
  -- Manaphy - Swagger - TM87
  (490, 49000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Manaphy - U-turn - TM89
  (490, 49000, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 47),
  -- Manaphy - Substitute - TM90
  (490, 49000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Manaphy - Surf - HM03
  (490, 49000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 49),
  -- Manaphy - Defog - HM05
  (490, 49000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 50),
  -- Manaphy - Waterfall - HM07
  (490, 49000, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 51),
  -- Manaphy - Swift - Tutor
  (490, 49000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Manaphy - Snore - Tutor
  (490, 49000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Manaphy - Mud-Slap - Tutor
  (490, 49000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Manaphy - Icy Wind - Tutor
  (490, 49000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Manaphy - Ancient Power - Tutor
  (490, 49000, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Manaphy - Uproar - Tutor
  (490, 49000, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Manaphy - Helping Hand - Tutor
  (490, 49000, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Manaphy - Knock Off - Tutor
  (490, 49000, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Manaphy - Dive - Tutor
  (490, 49000, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Manaphy - Signal Beam - Tutor
  (490, 49000, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Manaphy - Bounce - Tutor
  (490, 49000, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Manaphy - Last Resort - Tutor
  (490, 49000, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Darkrai - Disable - Level 1
  (491, 49100, 50, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darkrai - Ominous Wind - Level 1
  (491, 49100, 466, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darkrai - Quick Attack - Level 11
  (491, 49100, 98, 9, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Darkrai - Hypnosis - Level 20
  (491, 49100, 95, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Darkrai - Feint Attack - Level 29
  (491, 49100, 185, 9, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Darkrai - Nightmare - Level 38
  (491, 49100, 171, 9, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Darkrai - Double Team - Level 47
  (491, 49100, 104, 9, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Darkrai - Haze - Level 57
  (491, 49100, 114, 9, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Darkrai - Dark Void - Level 66
  (491, 49100, 464, 9, NULL, 1, 66, NULL, NULL, NULL, 9),
  -- Darkrai - Nasty Plot - Level 75
  (491, 49100, 417, 9, NULL, 1, 75, NULL, NULL, NULL, 10),
  -- Darkrai - Dream Eater - Level 84
  (491, 49100, 138, 9, NULL, 1, 84, NULL, NULL, NULL, 11),
  -- Darkrai - Dark Pulse - Level 93
  (491, 49100, 399, 9, NULL, 1, 93, NULL, NULL, NULL, 12),
  -- Darkrai - Focus Punch - TM01
  (491, 49100, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 13),
  -- Darkrai - Calm Mind - TM04
  (491, 49100, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Darkrai - Toxic - TM06
  (491, 49100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Darkrai - Hidden Power - TM10
  (491, 49100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Darkrai - Sunny Day - TM11
  (491, 49100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Darkrai - Taunt - TM12
  (491, 49100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 18),
  -- Darkrai - Ice Beam - TM13
  (491, 49100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Darkrai - Blizzard - TM14
  (491, 49100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Darkrai - Hyper Beam - TM15
  (491, 49100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Darkrai - Protect - TM17
  (491, 49100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Darkrai - Rain Dance - TM18
  (491, 49100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Darkrai - Frustration - TM21
  (491, 49100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Darkrai - Thunderbolt - TM24
  (491, 49100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 25),
  -- Darkrai - Thunder - TM25
  (491, 49100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 26),
  -- Darkrai - Return - TM27
  (491, 49100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Darkrai - Psychic - TM29
  (491, 49100, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 28),
  -- Darkrai - Shadow Ball - TM30
  (491, 49100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Darkrai - Brick Break - TM31
  (491, 49100, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 30),
  -- Darkrai - Double Team - TM32
  (491, 49100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Darkrai - Shock Wave - TM34
  (491, 49100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 32),
  -- Darkrai - Sludge Bomb - TM36
  (491, 49100, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 33),
  -- Darkrai - Rock Tomb - TM39
  (491, 49100, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Darkrai - Aerial Ace - TM40
  (491, 49100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 35),
  -- Darkrai - Torment - TM41
  (491, 49100, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 36),
  -- Darkrai - Facade - TM42
  (491, 49100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Darkrai - Secret Power - TM43
  (491, 49100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Darkrai - Rest - TM44
  (491, 49100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Darkrai - Thief - TM46
  (491, 49100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 40),
  -- Darkrai - Snatch - TM49
  (491, 49100, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 41),
  -- Darkrai - Focus Blast - TM52
  (491, 49100, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 42),
  -- Darkrai - Fling - TM56
  (491, 49100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 43),
  -- Darkrai - Charge Beam - TM57
  (491, 49100, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 44),
  -- Darkrai - Endure - TM58
  (491, 49100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 45),
  -- Darkrai - Drain Punch - TM60
  (491, 49100, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 46),
  -- Darkrai - Will-O-Wisp - TM61
  (491, 49100, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 47),
  -- Darkrai - Embargo - TM63
  (491, 49100, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 48),
  -- Darkrai - Shadow Claw - TM65
  (491, 49100, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 49),
  -- Darkrai - Payback - TM66
  (491, 49100, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 50),
  -- Darkrai - Giga Impact - TM68
  (491, 49100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 51),
  -- Darkrai - Flash - TM70
  (491, 49100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 52),
  -- Darkrai - Thunder Wave - TM73
  (491, 49100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 53),
  -- Darkrai - Swords Dance - TM75
  (491, 49100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 54),
  -- Darkrai - Psych Up - TM77
  (491, 49100, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 55),
  -- Darkrai - Dark Pulse - TM79
  (491, 49100, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 56),
  -- Darkrai - Rock Slide - TM80
  (491, 49100, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 57),
  -- Darkrai - X-Scissor - TM81
  (491, 49100, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 58),
  -- Darkrai - Sleep Talk - TM82
  (491, 49100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 59),
  -- Darkrai - Natural Gift - TM83
  (491, 49100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 60),
  -- Darkrai - Poison Jab - TM84
  (491, 49100, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 61),
  -- Darkrai - Dream Eater - TM85
  (491, 49100, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 62),
  -- Darkrai - Swagger - TM87
  (491, 49100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 63),
  -- Darkrai - Substitute - TM90
  (491, 49100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 64),
  -- Darkrai - Cut - HM01
  (491, 49100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 65),
  -- Darkrai - Strength - HM04
  (491, 49100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 66),
  -- Darkrai - Rock Smash - HM06
  (491, 49100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 67),
  -- Darkrai - Rock Climb - HM08
  (491, 49100, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 68),
  -- Darkrai - Swift - Tutor
  (491, 49100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Darkrai - Snore - Tutor
  (491, 49100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Darkrai - Spite - Tutor
  (491, 49100, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Darkrai - Mud-Slap - Tutor
  (491, 49100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Darkrai - Icy Wind - Tutor
  (491, 49100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Darkrai - Trick - Tutor
  (491, 49100, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Darkrai - Knock Off - Tutor
  (491, 49100, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Darkrai - Last Resort - Tutor
  (491, 49100, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Darkrai - Sucker Punch - Tutor
  (491, 49100, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Darkrai - Ominous Wind - Tutor
  (491, 49100, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Shaymin - Growth - Level 1
  (492, 49200, 74, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin - Magical Leaf - Level 10
  (492, 49200, 345, 9, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin - Leech Seed - Level 19
  (492, 49200, 73, 9, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin - Synthesis - Level 28
  (492, 49200, 235, 9, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin - Sweet Scent - Level 37
  (492, 49200, 230, 9, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin - Natural Gift - Level 46
  (492, 49200, 363, 9, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin - Worry Seed - Level 55
  (492, 49200, 388, 9, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin - Aromatherapy - Level 64
  (492, 49200, 312, 9, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin - Energy Ball - Level 73
  (492, 49200, 412, 9, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin - Sweet Kiss - Level 82
  (492, 49200, 186, 9, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin - Healing Wish - Level 91
  (492, 49200, 361, 9, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin - Seed Flare - Level 100
  (492, 49200, 465, 9, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin - Toxic - TM06
  (492, 49200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Shaymin - Bullet Seed - TM09
  (492, 49200, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 14),
  -- Shaymin - Hidden Power - TM10
  (492, 49200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Shaymin - Sunny Day - TM11
  (492, 49200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Shaymin - Hyper Beam - TM15
  (492, 49200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 17),
  -- Shaymin - Protect - TM17
  (492, 49200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Shaymin - Giga Drain - TM19
  (492, 49200, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 19),
  -- Shaymin - Safeguard - TM20
  (492, 49200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 20),
  -- Shaymin - Frustration - TM21
  (492, 49200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Shaymin - Solar Beam - TM22
  (492, 49200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 22),
  -- Shaymin - Return - TM27
  (492, 49200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Shaymin - Psychic - TM29
  (492, 49200, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 24),
  -- Shaymin - Double Team - TM32
  (492, 49200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Shaymin - Facade - TM42
  (492, 49200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Shaymin - Secret Power - TM43
  (492, 49200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Shaymin - Rest - TM44
  (492, 49200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Shaymin - Energy Ball - TM53
  (492, 49200, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 29),
  -- Shaymin - Endure - TM58
  (492, 49200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 30),
  -- Shaymin - Giga Impact - TM68
  (492, 49200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 31),
  -- Shaymin - Flash - TM70
  (492, 49200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 32),
  -- Shaymin - Swords Dance - TM75
  (492, 49200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 33),
  -- Shaymin - Psych Up - TM77
  (492, 49200, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 34),
  -- Shaymin - Sleep Talk - TM82
  (492, 49200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Shaymin - Natural Gift - TM83
  (492, 49200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Shaymin - Grass Knot - TM86
  (492, 49200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 37),
  -- Shaymin - Swagger - TM87
  (492, 49200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Shaymin - Substitute - TM90
  (492, 49200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Shaymin - Swift - Tutor
  (492, 49200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 40),
  -- Shaymin - Snore - Tutor
  (492, 49200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 41),
  -- Shaymin - Mud-Slap - Tutor
  (492, 49200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Shaymin - Synthesis - Tutor
  (492, 49200, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Shaymin - Endeavor - Tutor
  (492, 49200, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Shaymin - Last Resort - Tutor
  (492, 49200, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Shaymin - Seed Bomb - Tutor
  (492, 49200, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Shaymin - Earth Power - Tutor
  (492, 49200, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Shaymin - Zen Headbutt - Tutor
  (492, 49200, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Arceus - Seismic Toss - Level 1
  (493, 49300, 69, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus - Cosmic Power - Level 1
  (493, 49300, 322, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arceus - Natural Gift - Level 1
  (493, 49300, 363, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arceus - Punishment - Level 1
  (493, 49300, 386, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arceus - Gravity - Level 10
  (493, 49300, 356, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Arceus - Earth Power - Level 20
  (493, 49300, 414, 9, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Arceus - Hyper Voice - Level 30
  (493, 49300, 304, 9, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Arceus - Extreme Speed - Level 40
  (493, 49300, 245, 9, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Arceus - Refresh - Level 50
  (493, 49300, 287, 9, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Arceus - Future Sight - Level 60
  (493, 49300, 248, 9, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Arceus - Recover - Level 70
  (493, 49300, 105, 9, NULL, 1, 70, NULL, NULL, NULL, 11),
  -- Arceus - Hyper Beam - Level 80
  (493, 49300, 63, 9, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Arceus - Perish Song - Level 90
  (493, 49300, 195, 9, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Arceus - Judgment - Level 100
  (493, 49300, 449, 9, NULL, 1, 100, NULL, NULL, NULL, 14),
  -- Arceus - Dragon Claw - TM02
  (493, 49300, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 15),
  -- Arceus - Water Pulse - TM03
  (493, 49300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Arceus - Calm Mind - TM04
  (493, 49300, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 17),
  -- Arceus - Roar - TM05
  (493, 49300, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Arceus - Toxic - TM06
  (493, 49300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Arceus - Hail - TM07
  (493, 49300, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 20),
  -- Arceus - Bullet Seed - TM09
  (493, 49300, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 21),
  -- Arceus - Hidden Power - TM10
  (493, 49300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Arceus - Sunny Day - TM11
  (493, 49300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 23),
  -- Arceus - Ice Beam - TM13
  (493, 49300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 24),
  -- Arceus - Blizzard - TM14
  (493, 49300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 25),
  -- Arceus - Hyper Beam - TM15
  (493, 49300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 26),
  -- Arceus - Light Screen - TM16
  (493, 49300, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 27),
  -- Arceus - Protect - TM17
  (493, 49300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 28),
  -- Arceus - Rain Dance - TM18
  (493, 49300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 29),
  -- Arceus - Giga Drain - TM19
  (493, 49300, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 30),
  -- Arceus - Safeguard - TM20
  (493, 49300, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 31),
  -- Arceus - Frustration - TM21
  (493, 49300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 32),
  -- Arceus - Solar Beam - TM22
  (493, 49300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 33),
  -- Arceus - Iron Tail - TM23
  (493, 49300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 34),
  -- Arceus - Thunderbolt - TM24
  (493, 49300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 35),
  -- Arceus - Thunder - TM25
  (493, 49300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 36),
  -- Arceus - Earthquake - TM26
  (493, 49300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 37),
  -- Arceus - Return - TM27
  (493, 49300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 38),
  -- Arceus - Psychic - TM29
  (493, 49300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 39),
  -- Arceus - Shadow Ball - TM30
  (493, 49300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 40),
  -- Arceus - Brick Break - TM31
  (493, 49300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 41),
  -- Arceus - Double Team - TM32
  (493, 49300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 42),
  -- Arceus - Reflect - TM33
  (493, 49300, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 43),
  -- Arceus - Shock Wave - TM34
  (493, 49300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 44),
  -- Arceus - Flamethrower - TM35
  (493, 49300, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 45),
  -- Arceus - Sludge Bomb - TM36
  (493, 49300, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 46),
  -- Arceus - Sandstorm - TM37
  (493, 49300, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 47),
  -- Arceus - Fire Blast - TM38
  (493, 49300, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 48),
  -- Arceus - Rock Tomb - TM39
  (493, 49300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 49),
  -- Arceus - Aerial Ace - TM40
  (493, 49300, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 50),
  -- Arceus - Facade - TM42
  (493, 49300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 51),
  -- Arceus - Secret Power - TM43
  (493, 49300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 52),
  -- Arceus - Rest - TM44
  (493, 49300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 53),
  -- Arceus - Overheat - TM50
  (493, 49300, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 54),
  -- Arceus - Focus Blast - TM52
  (493, 49300, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 55),
  -- Arceus - Energy Ball - TM53
  (493, 49300, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 56),
  -- Arceus - Brine - TM55
  (493, 49300, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 57),
  -- Arceus - Charge Beam - TM57
  (493, 49300, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 58),
  -- Arceus - Endure - TM58
  (493, 49300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 59),
  -- Arceus - Dragon Pulse - TM59
  (493, 49300, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 60),
  -- Arceus - Will-O-Wisp - TM61
  (493, 49300, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 61),
  -- Arceus - Silver Wind - TM62
  (493, 49300, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 62),
  -- Arceus - Shadow Claw - TM65
  (493, 49300, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 63),
  -- Arceus - Payback - TM66
  (493, 49300, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 64),
  -- Arceus - Recycle - TM67
  (493, 49300, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 65),
  -- Arceus - Giga Impact - TM68
  (493, 49300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 66),
  -- Arceus - Flash - TM70
  (493, 49300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 67),
  -- Arceus - Stone Edge - TM71
  (493, 49300, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 68),
  -- Arceus - Avalanche - TM72
  (493, 49300, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 69),
  -- Arceus - Thunder Wave - TM73
  (493, 49300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 70),
  -- Arceus - Swords Dance - TM75
  (493, 49300, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 71),
  -- Arceus - Stealth Rock - TM76
  (493, 49300, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 72),
  -- Arceus - Psych Up - TM77
  (493, 49300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 73),
  -- Arceus - Dark Pulse - TM79
  (493, 49300, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 74),
  -- Arceus - Rock Slide - TM80
  (493, 49300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 75),
  -- Arceus - X-Scissor - TM81
  (493, 49300, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 76),
  -- Arceus - Sleep Talk - TM82
  (493, 49300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 77),
  -- Arceus - Natural Gift - TM83
  (493, 49300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 78),
  -- Arceus - Poison Jab - TM84
  (493, 49300, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 79),
  -- Arceus - Dream Eater - TM85
  (493, 49300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 80),
  -- Arceus - Grass Knot - TM86
  (493, 49300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 81),
  -- Arceus - Swagger - TM87
  (493, 49300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 82),
  -- Arceus - Substitute - TM90
  (493, 49300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 83),
  -- Arceus - Flash Cannon - TM91
  (493, 49300, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 84),
  -- Arceus - Trick Room - TM92
  (493, 49300, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 85),
  -- Arceus - Cut - HM01
  (493, 49300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 86),
  -- Arceus - Fly - HM02
  (493, 49300, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 87),
  -- Arceus - Surf - HM03
  (493, 49300, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 88),
  -- Arceus - Strength - HM04
  (493, 49300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 89),
  -- Arceus - Defog - HM05
  (493, 49300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 90),
  -- Arceus - Rock Smash - HM06
  (493, 49300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 91),
  -- Arceus - Waterfall - HM07
  (493, 49300, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 92),
  -- Arceus - Rock Climb - HM08
  (493, 49300, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 93),
  -- Arceus - Swift - Tutor
  (493, 49300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 94),
  -- Arceus - Snore - Tutor
  (493, 49300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 95),
  -- Arceus - Mud-Slap - Tutor
  (493, 49300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 96),
  -- Arceus - Icy Wind - Tutor
  (493, 49300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 97),
  -- Arceus - Outrage - Tutor
  (493, 49300, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 98),
  -- Arceus - Fury Cutter - Tutor
  (493, 49300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 99),
  -- Arceus - Twister - Tutor
  (493, 49300, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 100),
  -- Arceus - Ancient Power - Tutor
  (493, 49300, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 101),
  -- Arceus - Heat Wave - Tutor
  (493, 49300, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 102),
  -- Arceus - Trick - Tutor
  (493, 49300, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 103),
  -- Arceus - Dive - Tutor
  (493, 49300, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 104),
  -- Arceus - Signal Beam - Tutor
  (493, 49300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 105),
  -- Arceus - Iron Defense - Tutor
  (493, 49300, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 106),
  -- Arceus - Last Resort - Tutor
  (493, 49300, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 107),
  -- Arceus - Aqua Tail - Tutor
  (493, 49300, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 108),
  -- Arceus - Earth Power - Tutor
  (493, 49300, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 109),
  -- Arceus - Zen Headbutt - Tutor
  (493, 49300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 110),
  -- Arceus - Draco Meteor - Tutor
  (493, 49300, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 111),
  -- Arceus - Iron Head - Tutor
  (493, 49300, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 112),
  -- Arceus - Ominous Wind - Tutor
  (493, 49300, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 113);
